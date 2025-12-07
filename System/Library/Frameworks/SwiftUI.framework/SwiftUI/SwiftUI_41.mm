id static UIViewPlatformViewDefinition.getRBLayer(drawingView:)(uint64_t a1)
{
  type metadata accessor for RBDrawingView();
  swift_unknownObjectRetain();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = [v1 layer];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v2;
}

char *static UIViewPlatformViewDefinition.makeDrawingView(options:)(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = a1[2];
  v5 = *(a1 + 12);
  if ((v4 & 1) != 0 && [objc_opt_self() isSupported])
  {
    v6 = type metadata accessor for RBDrawingView();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtC7SwiftUI13RBDrawingView__state;
    PlatformDrawableContent.init()();
    LOBYTE(v44) = 3;
    v45 = 0;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    AtomicBox.init(wrappedValue:)();
    *&v7[v8] = v40;
    v9 = &v7[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options];
    *v9 = v1;
    v9[4] = v2;
    v9[5] = v3;
    *(v9 + 2) = v4;
    v9[12] = v5;
    v35.receiver = v7;
    v35.super_class = v6;
    v10 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v11 = v10 + OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options;
    v12 = (*(v10 + OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options + 8) >> 1) & 1;
    v13 = v10;
    [v13 setOpaque_];
    v14 = *(v11 + 2);
    v15 = *(v11 + 2);
    v16 = v11[12];
    LODWORD(v36) = *v11;
    WORD2(v36) = v14;
    DWORD2(v36) = v15;
    BYTE12(v36) = v16;
    v17 = [v13 layer];
    PlatformDrawableOptions.update(rbLayer:)();

    *(v13 + OBJC_IVAR____TtC7SwiftUI13RenderBoxView_rendersFirstFrameAsynchronously) = (v11[8] & 0x10) != 0;
    v18 = &lazy protocol witness table cache variable for type RBDrawingView and conformance RBDrawingView;
    v19 = type metadata accessor for RBDrawingView;
    v20 = &protocol conformance descriptor for RBDrawingView;
  }

  else
  {
    v21 = type metadata accessor for CGDrawingView();
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options];
    *v23 = v1;
    v23[4] = v2;
    v23[5] = v3;
    *(v23 + 2) = v4;
    v23[12] = v5;
    v46.receiver = v22;
    v46.super_class = v21;
    v24 = objc_msgSendSuper2(&v46, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v25 = v24 + OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options;
    v26 = (*(v24 + OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options + 8) >> 1) & 1;
    v13 = v24;
    [v13 setOpaque_];
    v27 = [v13 layer];
    v28 = *(v25 + 2);
    v29 = *(v25 + 2);
    v30 = v25[12];
    LODWORD(v36) = *v25;
    WORD2(v36) = v28;
    DWORD2(v36) = v29;
    BYTE12(v36) = v30;
    v31 = PlatformDrawableOptions.caLayerContentsFormat.getter();
    [v27 setContentsFormat_];

    v18 = &lazy protocol witness table cache variable for type CGDrawingView and conformance CGDrawingView;
    v19 = type metadata accessor for CGDrawingView;
    v20 = &protocol conformance descriptor for CGDrawingView;
  }

  lazy protocol witness table accessor for type CGDrawingView and conformance CGDrawingView(v18, v19, v20);
  v32 = v13;
  [v32 setContentMode_];
  [v32 setAutoresizesSubviews_];
  [v32 _setFocusInteractionEnabled_];
  v33 = [v32 layer];
  [v33 setAnchorPoint_];

  return v32;
}

id RenderBoxView.init(frame:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6[OBJC_IVAR____TtC7SwiftUI13RenderBoxView_rendersFirstFrameAsynchronously] = 0;
  v14.receiver = v6;
  v14.super_class = type metadata accessor for RenderBoxView();
  v11 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a3, a4, a5, a6);
  v12 = [v11 layer];
  [v12 setDelegate_];
  [v12 setOpaque_];

  return v11;
}

void _ArchivedViewStates.state(at:)(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*v2)
  {
    goto LABEL_34;
  }

  v5 = v2;
  v8 = type metadata accessor for _ArchivedViewStates(0);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v32 = v2 + *(v8 + 20);
  if (*(*(v32 + 1) + 16) <= a1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30 = v8;

  v9 = ArchiveReader.subscript.getter();
  v11 = v10;
  outlined copy of Data._Representation(v9, v10);
  ProtobufDecoder.init(_:)();
  makeUserInfo #1 (_:) in _ArchivedViewStates.state(at:)(&v42, v4, v2);
  v33 = 0;
  DisplayList.init()();
  v12 = 0;
  v13 = v34;
  v14 = v35;
  v31 = v36;
  v15 = v38;
  if (v38 >= v39)
  {
    v17 = v34;
    goto LABEL_28;
  }

  while (2)
  {
    v28 = v13;
    while (1)
    {
      v16 = v40;
      if (v40)
      {
        if (v15 < v41)
        {
          goto LABEL_12;
        }

        if (v41 < v15)
        {
          goto LABEL_25;
        }

        v40 = 0;
      }

      v16 = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
        goto LABEL_24;
      }

      if (v16 < 8)
      {
LABEL_25:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();

        outlined consume of Data._Representation(v9, v11);

        goto LABEL_26;
      }

LABEL_12:
      if (v16 >> 3 == 2)
      {
        break;
      }

      if (v16 >> 3 == 1)
      {
        v43 = v16;
        type metadata accessor for CGSize(0);
        ProtobufDecoder.messageField<A>(_:)();
        if (v3)
        {
          goto LABEL_24;
        }

        v12 = v33;
        v15 = v38;
        if (v38 >= v39)
        {
LABEL_27:
          v17 = v28;
          goto LABEL_28;
        }
      }

      else
      {
        v33 = v16;
        ProtobufDecoder.skipField(_:)();
        if (v3)
        {
          goto LABEL_24;
        }

        v15 = v38;
        if (v38 >= v39)
        {
          goto LABEL_27;
        }
      }
    }

    v43 = v16;
    ProtobufDecoder.messageField<A>(_:)();
    if (v3)
    {
LABEL_24:

      outlined consume of Data._Representation(v9, v11);
LABEL_26:

      return;
    }

    v17 = v33;
    v14 = 0;
    v31 = 0;

    v15 = v38;
    v13 = v33;
    v3 = 0;
    if (v38 < v39)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v27 = v17;
  v29 = v14;
  v18 = v9;
  v19 = v11;
  if (*(*(v32 + 6) + 16) <= a1)
  {
    v26 = 0;
    v21 = 0xF000000000000000;
  }

  else
  {
    v26 = ArchiveReader.subscript.getter();
    v21 = v20;
  }

  v22 = type metadata accessor for _ArchivedView(0);
  ArchivedViewCore.Metadata.archiveID.getter();

  outlined consume of Data._Representation(v18, v19);

  v23 = *(v5 + *(v30 + 24));
  v24 = v22[7];
  *(a2 + v24) = 0;
  *(a2 + v22[8]) = 0x40000000;
  v25 = a2 + v22[9];
  *v25 = xmmword_18CD77CA0;
  *a2 = v12;
  *(a2 + 8) = 0;
  *(a2 + 16) = v27;
  *(a2 + 24) = v29;
  *(a2 + 28) = v31;
  *(a2 + 32) = a1;

  *(a2 + v24) = v23;
  outlined consume of Data?(*v25, *(v25 + 8));
  *v25 = v26;
  *(v25 + 8) = v21;
}

double protocol witness for _UIHostingViewable._rendererConfiguration.setter in conformance <> UIHostingController<A>(uint64_t *a1)
{
  v2 = *(v1 + direct field offset for UIHostingController.host);
  static Update.locked<A>(_:)();

  return result;
}

void protocol witness for _UIHostingViewable._rendererConfiguration.getter in conformance <> UIHostingController<A>()
{
  v1 = *(v0 + direct field offset for UIHostingController.host);
  static Update.locked<A>(_:)();
}

uint64_t lazy protocol witness table accessor for type CGDrawingView and conformance CGDrawingView(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void destroy for WidgetAuxiliaryViewMetadata.Graphic(void **a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *a1;
  }

  else
  {

    v4 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    v5 = *(v4 + 20);
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 8))(a1 + v5, v6);
    }

    v7 = a1 + *(v4 + 48);
    v8 = *v7;
    v9 = *(v7 + 2) | (v7[12] << 32);
    v10 = v7[13];

    outlined consume of ContentTransition.Storage(v8, v9, v10);
  }
}

uint64_t outlined consume of ContentTransition.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

char *initializeWithCopy for WidgetAuxiliaryViewMetadata.Graphic(char *a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a2;
    *a1 = *a2;
    v6 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    v9 = v8[5];
    v10 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v9], (a2 + v9), *(*(v10 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 16))(&a1[v9], a2 + v9, v11);
      swift_storeEnumTagMultiPayload();
    }

    v12 = v8[6];
    v13 = &a1[v12];
    v14 = a2 + v12;
    *v13 = *v14;
    v13[4] = *(v14 + 4);
    a1[v8[7]] = *(a2 + v8[7]);
    *&a1[v8[8]] = *(a2 + v8[8]);
    v15 = v8[9];
    v16 = &a1[v15];
    v17 = a2 + v15;
    *v16 = *v17;
    v16[16] = *(v17 + 16);
    a1[v8[10]] = *(a2 + v8[10]);
    *&a1[v8[11]] = *(a2 + v8[11]);
    v18 = v8[12];
    v19 = &a1[v18];
    v20 = a2 + v18;
    v21 = *(a2 + v18);
    v22 = *(v20 + 12);
    v23 = *(v20 + 8);
    v24 = *(v20 + 13);

    outlined copy of ContentTransition.Storage(v21, v23 | (v22 << 32), v24);
    *v19 = v21;
    v19[12] = v22;
    *(v19 + 2) = v23;
    v19[13] = v24;
    v19[14] = *(v20 + 14);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t specialized static WidgetAuxiliaryViewMetadata.Graphic.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v23 - v11);
  type metadata accessor for (WidgetAuxiliaryViewMetadata.Graphic, WidgetAuxiliaryViewMetadata.Graphic)(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 56);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v15, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a2, &v15[v17], type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v15, v9, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    v18 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *&v15[v17];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v20 = static NSObject.== infix(_:_:)();

LABEL_9:
      v21 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic;
      goto LABEL_10;
    }
  }

  else
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v15, v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(&v15[v17], v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
      v20 = specialized static WidgetAuxiliaryViewMetadata.Graphic.Named.== infix(_:_:)(v12, v6);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
      goto LABEL_9;
    }

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  }

  v20 = 0;
  v21 = type metadata accessor for (WidgetAuxiliaryViewMetadata.Graphic, WidgetAuxiliaryViewMetadata.Graphic);
LABEL_10:
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v15, v21);
  return v20 & 1;
}

void type metadata accessor for (WidgetAuxiliaryViewMetadata?, WidgetAuxiliaryViewMetadata?)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static WidgetAuxiliaryViewMetadata.Graphic.Named.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    if (specialized static WidgetAuxiliaryViewMetadata.Graphic.Named.Location.== infix(_:_:)(a1 + v5[5], a2 + v5[5]))
    {
      v6 = v5[6];
      v7 = (a1 + v6);
      v8 = *(a1 + v6 + 4);
      v9 = (a2 + v6);
      v10 = *(a2 + v6 + 4);
      if (v8)
      {
        if (!v10)
        {
          return v10 & 1;
        }
      }

      else
      {
        if (*v7 != *v9)
        {
          LOBYTE(v10) = 1;
        }

        if (v10)
        {
          goto LABEL_14;
        }
      }

      if (*(a1 + v5[7]) == *(a2 + v5[7]))
      {
        v12 = v5[8];
        v13 = *(a1 + v12);
        v14 = *(a2 + v12);
        if (v13)
        {
          if (!v14 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV8ResolvedV_Tt1g5(v13, v14) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else if (v14)
        {
          goto LABEL_14;
        }

        v15 = v5[9];
        v16 = (a1 + v15);
        v17 = *(a1 + v15 + 16);
        v18 = a2 + v15;
        if (v17)
        {
          if ((v18[16] & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v18[16])
          {
            goto LABEL_14;
          }

          v20 = *v18;
          v19 = *(v18 + 1);
          v21 = v16[1];
          v22 = COERCE_FLOAT(*v16) == *&v20 && COERCE_FLOAT(HIDWORD(*v16)) == *(&v20 + 1);
          v23 = v22 && *&v21 == *&v19;
          if (!v23 || *(&v21 + 1) != *(&v19 + 1))
          {
            goto LABEL_14;
          }
        }

        v25 = v5[10];
        v26 = *(a1 + v25);
        v27 = *(a2 + v25);
        if (v26 == 8)
        {
          if (v27 != 8)
          {
            goto LABEL_14;
          }
        }

        else if (v26 != v27)
        {
          goto LABEL_14;
        }

        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV_Tt1g5(*(a1 + v5[11]), *(a2 + v5[11])))
        {
          v28 = v5[12];
          v29 = a1 + v28;
          v30 = *(a1 + v28);
          v31 = *(a1 + v28 + 12);
          v32 = *(a1 + v28 + 8);
          v33 = *(a1 + v28 + 14);
          v34 = a2 + v28;
          v35 = *v34;
          v36 = v34[12];
          v37 = *(v34 + 2);
          v38 = v37 | (v36 << 32);
          v39 = v34[14];
          v40 = v29[13];
          v41 = v34[13];
          v47 = v30;
          v49 = v31;
          v48 = v32;
          v50 = v40;
          v43 = v35;
          v45 = v36;
          v44 = v37;
          v46 = v41;
          outlined copy of ContentTransition.Storage(v30, v32 | (v31 << 32), v40);
          v42.n128_f64[0] = outlined copy of ContentTransition.Storage(v35, v38, v41);
          LOBYTE(v35) = specialized static ContentTransition.Storage.== infix(_:_:)(&v47, &v43, v42);
          outlined consume of ContentTransition.Storage(v43, v44 | (v45 << 32), v46);
          outlined consume of ContentTransition.Storage(v47, v48 | (v49 << 32), v50);
          LOBYTE(v10) = v35 & (v33 ^ v39 ^ 1);
          return v10 & 1;
        }
      }
    }
  }

LABEL_14:
  LOBYTE(v10) = 0;
  return v10 & 1;
}

uint64_t specialized static WidgetAuxiliaryViewMetadata.Graphic.Named.Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for URL();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  type metadata accessor for (WidgetAuxiliaryViewMetadata.Graphic.Named.Location, WidgetAuxiliaryViewMetadata.Graphic.Named.Location)(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 56);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v15, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a2, &v15[v17], type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v15, v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = v24;
      (*(v4 + 32))(v6, &v15[v17], v24);
      v19 = static URL.== infix(_:_:)();
      v21 = *(v4 + 8);
      v21(v6, v20);
      v21(v12, v20);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v15, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
      return v19 & 1;
    }

    (*(v4 + 8))(v12, v24);
    goto LABEL_6;
  }

  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v15, v9, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v15, type metadata accessor for (WidgetAuxiliaryViewMetadata.Graphic.Named.Location, WidgetAuxiliaryViewMetadata.Graphic.Named.Location));
    v19 = 0;
    return v19 & 1;
  }

  v18 = *v9 ^ v15[v17];
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v15, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  v19 = v18 ^ 1;
  return v19 & 1;
}

uint64_t outlined destroy of ResolvableTextSegmentAttribute.Value?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v23 = v2;
  v24 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v19 = *v5;
    *v20 = v8;
    *&v20[13] = *(v5 + 29);
    v9 = v6[1];
    v21 = *v6;
    v22[0] = v9;
    *(v22 + 13) = *(v6 + 29);
    v16 = v19;
    v17 = *v20;
    v18 = *&v20[8];
    v13 = v21;
    v14 = v9;
    v15 = WORD4(v9);
    outlined init with copy of _SymbolEffect(&v19, v12);
    outlined init with copy of _SymbolEffect(&v21, v12);
    outlined init with copy of _SymbolEffect(&v19, v12);
    outlined init with copy of _SymbolEffect(&v21, v12);
    v10 = specialized static _SymbolEffect.Storage.== infix(_:_:)(&v16, &v13);
    outlined consume of _SymbolEffect.Storage(v13, *(&v13 + 1), v14, v15);
    outlined consume of _SymbolEffect.Storage(v16, *(&v16 + 1), v17, v18);
    outlined destroy of _SymbolEffect(&v21);
    outlined destroy of _SymbolEffect(&v19);
    if ((v10 & 1) == 0 || *&v20[12] != *(v22 + 3))
    {
      return 0;
    }

    if (v20[20])
    {
      if ((BYTE4(v22[1]) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((BYTE4(v22[1]) & 1) != 0 || *&v20[16] != *&v22[1])
    {
      return 0;
    }

    if (v20[28])
    {
      if ((BYTE12(v22[1]) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((BYTE12(v22[1]) & 1) != 0 || *&v20[24] != *(&v22[1] + 2))
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 3;
    v5 += 3;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV8ResolvedV_Tt1g5(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vminv_u16(vmovn_s32(vceqq_f32(v6, v7)));
    if ((v8 & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8 & 1;
}

uint64_t specialized static ContentTransition.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(a1 + 8) | (*(a1 + 12) << 32);
  v5 = *(a1 + 13);
  v6 = *a2;
  v7 = *(a2 + 8) | (*(a2 + 12) << 32);
  v8 = *(a2 + 13);
  if (!*(a1 + 13))
  {
    if (!*(a2 + 13))
    {
      v10 = HIBYTE(*(a1 + 8));
      outlined consume of ContentTransition.Storage(*a1, v4, 0);
      outlined consume of ContentTransition.Storage(v6, v7, 0);
      v15 = v3;
      BYTE2(v16) = BYTE2(v4);
      LOWORD(v16) = v4;
      HIBYTE(v16) = v10;
      v17 = BYTE4(v4);
      v12 = v6;
      BYTE2(v13) = BYTE2(v7);
      LOWORD(v13) = v7;
      HIBYTE(v13) = BYTE3(v7);
      v14 = BYTE4(v7);
      v9 = specialized static ContentTransition.NamedTransition.== infix(_:_:)(&v15, &v12);
      return v9 & 1;
    }

    goto LABEL_12;
  }

  if (v5 == 1)
  {
    if (v8 == 1)
    {
      v15 = *a1;
      v16 = v4;
      v17 = BYTE4(v4);
      v12 = v6;
      v13 = v7;
      v14 = BYTE4(v7);
      v9 = specialized static ContentTransition.CustomTransition.== infix(_:_:)(&v15, &v12);
      outlined copy of ContentTransition.Storage(v3, v4, 1);
      outlined copy of ContentTransition.Storage(v6, v7, 1);
      outlined consume of ContentTransition.Storage(v3, v4, 1);
      outlined consume of ContentTransition.Storage(v6, v7, 1);
      return v9 & 1;
    }

LABEL_12:
    outlined copy of ContentTransition.Storage(v6, v7, v8);
    outlined consume of ContentTransition.Storage(v3, v4, v5);
    outlined consume of ContentTransition.Storage(v6, v7, v8);
    v9 = 0;
    return v9 & 1;
  }

  if (v8 != 2)
  {
    goto LABEL_12;
  }

  outlined consume of ContentTransition.Storage(*a1, v4, 2);
  outlined consume of ContentTransition.Storage(v6, v7, 2);
  if (*&v4 == *&v7)
  {
    v9 = (v3 == v6) & (BYTE4(v3) ^ ((v6 & 0x100000000) == 0));
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t destroy for WidgetAuxiliaryViewMetadata.Graphic.Named(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
  }

  v6 = a1 + *(a2 + 48);
  v7 = *v6;
  v8 = *(v6 + 8) | (*(v6 + 12) << 32);
  v9 = *(v6 + 13);

  return outlined consume of ContentTransition.Storage(v7, v8, v9);
}

void *initializeWithCopy for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

uint64_t destroy for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void UIHostingController._rendererConfiguration.getter()
{
  v1 = *(v0 + direct field offset for UIHostingController.host);
  _UIHostingView._rendererConfiguration.getter();
}

void (*UIHostingController._rendererConfiguration.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  UIHostingController._rendererConfiguration.getter();
  return UIHostingController._rendererConfiguration.modify;
}

void closure #1 in _UIHostingView._rendererConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = _UIHostingView.base.getter();
  v3 = UIHostingViewBase.viewGraph.getter();

  v4 = *(v3 + 96);

  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = *(v4 + 48);

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
}

void UIHostingController._rendererConfiguration.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 24);
  v6[0] = **a1;
  v6[1] = v3;
  v6[2] = v4;
  v7 = v5;
  if (a2)
  {

    UIHostingController._rendererConfiguration.setter(v6);
  }

  else
  {
    UIHostingController._rendererConfiguration.setter(v6);
  }

  free(v2);
}

void UIHostingController._rendererConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(v1 + direct field offset for UIHostingController.host);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = v3;
  v8 = v4;
  v6 = v5;
  _UIHostingView._rendererConfiguration.setter(v7);
}

void closure #1 in _UIHostingView._rendererConfiguration.setter(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = _UIHostingView.base.getter();
  UIHostingViewBase.viewGraph.getter();

  DisplayList.ViewRenderer.configuration.setter();
}

double _UIHostingView._rendererConfiguration.setter(uint64_t *a1)
{
  static Update.locked<A>(_:)();

  return result;
}

double outlined copy of ContentTransition.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

void type metadata completion function for DisplayList.HostedViewState.Key(uint64_t a1)
{
  _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t BorderlessButtonStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivablePlaceholder and conformance ArchivablePlaceholder()
{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivablePlaceholder, &type metadata for ArchivablePlaceholder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivablePlaceholder, &type metadata for ArchivablePlaceholder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivablePlaceholder, &type metadata for ArchivablePlaceholder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivablePlaceholder, &type metadata for ArchivablePlaceholder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivablePlaceholder, &type metadata for ArchivablePlaceholder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ArchivablePlaceholder()
{
  lazy protocol witness table accessor for type ArchivablePlaceholder and conformance ArchivablePlaceholder();
  static RendererLeafView.makeLeafView(view:inputs:)();
  lazy protocol witness table accessor for type ArchivablePlaceholder and conformance ArchivablePlaceholder();
  return static LeafViewLayout.makeLeafLayout(_:view:inputs:)();
}

uint64_t initializeWithCopy for DisplayList.HostedViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v6;
  *(a1 + 120) = *(a2 + 120);
  v7 = v3;

  return a1;
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation4UUIDVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of DisplayList.ArchiveIDs?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation4UUIDVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of DisplayList.ArchiveIDs?(uint64_t a1, uint64_t a2)
{
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v253 = a3;
  v256 = a2;
  v8 = type metadata accessor for DisplayList.ArchiveIDs();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v222 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720]);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v229 = &v222 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v242 = &v222 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v238 = &v222 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v237 = &v222 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v230 = &v222 - v23;
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], v12);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v232 = &v222 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v222 - v27;
  v233 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  MEMORY[0x1EEE9AC00](v233);
  MEMORY[0x1EEE9AC00](v29);
  v231 = (&v222 - v31);
  v32 = *(a1 + 4);
  v33 = *a1;
  v246 = *a1;
  if ((v32 & 2) == 0)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      if (v34 == 1)
      {
        v252 = 0;
        v35 = 0;
      }

      else
      {
        v210 = 0;
        v211 = 0;
        v35 = v34 & 0x7FFFFFFFFFFFFFFELL;
        v212 = (v246 + 144);
        v213 = v34 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v214 = *(v212 - 10);
          v216 = *v212;
          v212 += 20;
          v215 = v216;
          if (v214 > v210)
          {
            v210 = v214;
          }

          if (v215 > v211)
          {
            v211 = v215;
          }

          v213 -= 2;
        }

        while (v213);
        if (v210 <= v211)
        {
          v210 = v211;
        }

        v252 = v210;
        if (v34 == v35)
        {
          goto LABEL_135;
        }
      }

      v217 = v34 - v35;
      v218 = (v246 + 80 * v35 + 64);
      do
      {
        v220 = *v218;
        v218 += 10;
        v219 = v220;
        v221 = v252;
        if (v220 > v252)
        {
          v221 = v219;
        }

        v252 = v221;
        --v217;
      }

      while (v217);
    }

    else
    {
      v252 = 0;
    }

LABEL_135:
    *a5 = v252;
    return;
  }

  v255 = a4;
  v36 = v9;
  v227 = v28;
  v228 = v30;

  DisplayList.init()();
  v37 = v257;
  v38 = WORD4(v257);
  v247 = a1;
  v39 = HIDWORD(v257);

  *v247 = v37;
  *(v247 + 4) = v38;
  *(v247 + 3) = v39;
  v244 = *(v33 + 16);
  if (!v244)
  {

    v252 = 0;
    goto LABEL_135;
  }

  v224 = a5;
  v225 = v14;
  v223 = v11;
  v252 = 0;
  v40 = 0;
  v243 = v33 + 32;
  v234 = (v36 + 48);
  v235 = v8;
  v226 = (v36 + 56);
  while (1)
  {
    v41 = (v243 + 80 * v40);
    v280[0] = *v41;
    v42 = v41[1];
    v43 = v41[2];
    v44 = v41[3];
    *&v282[12] = *(v41 + 60);
    v281 = v43;
    *v282 = v44;
    v280[1] = v42;
    v45 = v41[1];
    v278 = *v41;
    v279 = v45;
    v46 = *(&v281 + 1);
    v47 = v281;
    v49 = *(&v44 + 1);
    v48 = v44;
    v50 = *&v282[16];
    v51 = *&v282[24];
    LODWORD(v274) = *&v282[24];
    outlined init with copy of DisplayList.Item(v280, &v257);
    outlined init with copy of DisplayList.Item(v280, &v257);
    DisplayList.Index.enter(identity:)();
    v53 = v257;
    v54 = v50 >> 30;
    v248 = v258;
    v249 = v51;
    if (v50 >> 30 > 1)
    {
      break;
    }

    v250 = v48;
    if (v54)
    {
      v71 = HIDWORD(v48);
      *&v270 = v49;
      WORD4(v270) = v50;
      HIDWORD(v270) = HIDWORD(v50);
      v72 = v49;
      v73 = v242;
      _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v253, v242, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
      outlined copy of DisplayList.Item.Value(v46, v250, v74, v72, v50);

      outlined copy of DisplayList.Effect(v46, v250, SBYTE4(v48));

      v241 = v72;
      v251 = v50;
      v75 = v250;
      outlined consume of DisplayList.Item.Value(v46, v250, v72, v50);
      v245 = v40;
      switch(BYTE4(v75))
      {
        case 1u:
          v141 = swift_projectBox();
          outlined assign with copy of DisplayList.ArchiveIDs?(v141, v73);
          v70 = v46;
          v116 = v75;
          v239 = v75;
          v240 = 1;
          break;
        case 7u:
          v113 = *(v46 + 16);
          v114 = *(v46 + 24);
          v115 = *(v46 + 28);
          v116 = v75;
          LODWORD(v240) = *(v46 + 32);
          *&v257 = v113;
          WORD4(v257) = v114;
          HIDWORD(v257) = v115;
          v117 = MEMORY[0x1E697DC50];
          v118 = v238;
          _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v73, v238, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);

          v119 = v255;
          DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v257, v256, v118, v255, &v274);
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(v118, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v117, MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
          v120 = v274;
          v70 = swift_allocObject();
          v121 = WORD4(v257);
          v122 = HIDWORD(v257);
          *(v70 + 16) = v257;
          *(v70 + 24) = v121;
          v123 = v240;
          *(v70 + 28) = v122;
          *(v70 + 32) = v123;
          outlined consume of DisplayList.Effect(v46, v116, 7);
          if (v120 > v47)
          {
            v47 = v120;
          }

          v239 = 0;
          v240 = 7;
          v124 = v73;
          v125 = v119;
          v126 = v46;
          goto LABEL_75;
        case 0xDu:
          outlined init with copy of _Benchmark(v46 + 16, &v274);
          v76 = *v256;
          v77 = *v234;
          v78 = 1;
          if (!(*v234)(v73, 1, v235))
          {
            DisplayList.ArchiveIDs.uuid.getter();
            v78 = 0;
          }

          v79 = type metadata accessor for UUID();
          v80 = *(*(v79 - 8) + 56);
          v81 = v232;
          v80(v232, v78, 1, v79);
          v82 = *(v233 + 24);
          v83 = v79;
          v84 = v228;
          v80(v228 + v82, 1, 1, v83);
          *v84 = v76;
          outlined assign with take of UUID?(v81, v84 + v82);
          v85 = *(v254 + 104);
          v86 = *(v85 + 16);
          v236 = v46;
          if (v86 && (v87 = specialized __RawDictionaryStorage.find<A>(_:)(v84), (v88 & 1) != 0))
          {
            outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v85 + 56) + 184 * v87, &v257);
            if (*(&v259 + 1) && v266)
            {
              *&v268 = v266;
              DWORD2(v268) = DWORD2(v266);
              v89 = PreferencesOutputs.subscript.getter();
              outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v257, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
              if ((v89 & 0x100000000) == 0)
              {
                v90 = *(&v275 + 1);
                v91 = v255;
                v92 = v276;
                __swift_project_boxed_opaque_existential_1(&v274, *(&v275 + 1));
                (*(v92 + 24))(&v268, v90, v92);
                v93 = v268;
                v222 = v270;
                LODWORD(v239) = WORD4(v270);
                LODWORD(v240) = HIDWORD(v270);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v257 = v91;
                v95 = specialized __RawDictionaryStorage.find<A>(_:)(v93);
                v97 = v91[2];
                v98 = (v96 & 1) == 0;
                v99 = __OFADD__(v97, v98);
                v100 = v97 + v98;
                if (v99)
                {
                  goto LABEL_138;
                }

                v101 = v96;
                if (v91[3] >= v100)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_94;
                  }

                  v202 = v95;
                  specialized _NativeDictionary.copy()();
                  v95 = v202;
                  v125 = v257;
                  if ((v101 & 1) == 0)
                  {
                    goto LABEL_116;
                  }

LABEL_95:
                  v189 = v125[7] + 16 * v95;
                  *v189 = v222;
                  *(v189 + 8) = v239;
                  *(v189 + 12) = v240;
                }

                else
                {
                  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v100, isUniquelyReferenced_nonNull_native);
                  v95 = specialized __RawDictionaryStorage.find<A>(_:)(v93);
                  if ((v101 & 1) != (v102 & 1))
                  {
                    goto LABEL_140;
                  }

LABEL_94:
                  v125 = v257;
                  if (v101)
                  {
                    goto LABEL_95;
                  }

LABEL_116:
                  v125[(v95 >> 6) + 8] |= 1 << v95;
                  *(v125[6] + 4 * v95) = v93;
                  v203 = v125[7] + 16 * v95;
                  *v203 = v222;
                  *(v203 + 8) = v239;
                  *(v203 + 12) = v240;
                  v204 = v125[2];
                  v99 = __OFADD__(v204, 1);
                  v205 = v204 + 1;
                  if (v99)
                  {
                    goto LABEL_139;
                  }

                  v125[2] = v205;
                }

                Value = AGGraphGetValue();
                v207 = *Value;
                v208 = *(Value + 8);
                v209 = *(Value + 12);

                _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v228, type metadata accessor for DisplayList.HostedViewState.Key);
                *&v270 = v207;
                WORD4(v270) = v208;
                HIDWORD(v270) = v209;
LABEL_60:
                v142 = MEMORY[0x1E697DC50];
                v143 = v229;
                _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v242, v229, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
                v144 = v235;
                v145 = v77(v143, 1, v235);
                outlined destroy of DisplayList.HostedViewState.ViewInfo?(v143, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v142, MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
                if (v145 == 1)
                {
                  v70 = 0;
                  v146 = 20;
                }

                else
                {
                  v70 = swift_allocBox();
                  (*v226)(v163, 1, 1, v144);
                  v146 = 1;
                }

                v126 = v236;
                v240 = v146;
                __swift_destroy_boxed_opaque_existential_1(&v274);
                v116 = v250;
                outlined consume of DisplayList.Effect(v126, v250, 13);
                v239 = 0;
                v124 = v242;
LABEL_75:
                v164 = MEMORY[0x1E697DC50];
                v165 = v238;
                _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v124, v238, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
                DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v270, v256, v165, v125, &v257);

                outlined consume of DisplayList.Item.Value(v126, v116, v241, v251);
                v166 = MEMORY[0x1E69E6720];
                outlined destroy of DisplayList.HostedViewState.ViewInfo?(v165, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v164, MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
                v167 = v257;
                v168 = v270;
                v48 = v239 | (v240 << 32);
                v169 = WORD4(v270) | (HIDWORD(v270) << 32) | 0x40000000;
                outlined consume of DisplayList.Item.Value(0, 0, 0, 0xC0000000);
                if (v167 > v47)
                {
                  v47 = v167;
                }

                v50 = v169;
                v49 = v168;
                outlined destroy of DisplayList.HostedViewState.ViewInfo?(v242, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v164, v166, _s10Foundation4UUIDVSgMaTm_0);
                goto LABEL_78;
              }

LABEL_59:
              DisplayList.init()();
              _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v84, type metadata accessor for DisplayList.HostedViewState.Key);
              *&v270 = v257;
              WORD4(v270) = WORD4(v257);
              HIDWORD(v270) = HIDWORD(v257);
              v125 = v255;
              goto LABEL_60;
            }
          }

          else
          {
            v267 = 0;
            v265 = 0u;
            v266 = 0u;
            v263 = 0u;
            v264 = 0u;
            v261 = 0u;
            v262 = 0u;
            memset(v260, 0, sizeof(v260));
            v258 = 0u;
            v259 = 0u;
            v257 = 0u;
          }

          outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v257, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
          goto LABEL_59;
        default:
          v70 = v46;
          v239 = v75;
          v240 = v71;
          v116 = v75;
          break;
      }

      v124 = v73;
      v125 = v255;
      v126 = v46;
      goto LABEL_75;
    }

    v55 = v46 >> 60;
    v56 = v237;
    if (v46 >> 60 == 11)
    {
      v127 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v128 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v129 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v130 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v131 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v245 = v40;
      v132 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v133 = v49;
      v134 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      LODWORD(v251) = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v135 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      *&v257 = v127;
      WORD4(v257) = v128;
      HIDWORD(v257) = v129;
      v48 = v250;
      v136.n128_f64[0] = outlined copy of DisplayList.Item.Value(v46, v250, v52, v133, v50);
      outlined copy of DisplayList.Item.Value(v46, v48, v136, v133, v50);
      outlined copy of DisplayList.Content.Value(v46);

      outlined consume of DisplayList.Item.Value(v46, v48, v133, v50);
      outlined consume of DisplayList.Content.Value(v46);
      DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v257, v256, v253, v255, &v274);
      outlined consume of DisplayList.Item.Value(v46, v48, v133, v50);
      v137 = v274;
      v138 = swift_allocObject();
      v139 = WORD4(v257);
      v140 = HIDWORD(v257);
      *(v138 + 16) = v257;
      *(v138 + 24) = v139;
      *(v138 + 28) = v140;
      *(v138 + 32) = v130;
      *(v138 + 40) = v131;
      *(v138 + 48) = v132;
      v40 = v245;
      *(v138 + 52) = v134;
      *(v138 + 56) = v251;
      v70 = v138 | 0xB000000000000000;
      *(v138 + 60) = v135;
      outlined consume of DisplayList.Content.Value(0xE000000000000000);
      v48 = v48;
      outlined copy of DisplayList.Content.Value(v70);
      outlined consume of DisplayList.Item.Value(0, 0, 0, 0xC0000000);
      if (v137 > v47)
      {
        v47 = v137;
      }

      outlined consume of DisplayList.Content.Value(v70);
      outlined consume of DisplayList.Content.Value(v46);
      v49 = 0;
      v50 = 0;
      goto LABEL_79;
    }

    if (v55 == 13)
    {
      v245 = v40;
      v105 = *v256;
      v106 = v230;
      _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v253, v230, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
      v107 = *v234;
      v108 = (*v234)(v106, 1, v235);
      v109 = v250;
      v111.n128_f64[0] = outlined copy of DisplayList.Item.Value(v46, v250, v110, v49, v50);
      outlined copy of DisplayList.Item.Value(v46, v109, v111, v49, v50);
      outlined copy of DisplayList.Content.Value(v46);
      v241 = v49;
      v236 = v46;
      if (v108 == 1)
      {
        outlined destroy of DisplayList.HostedViewState.ViewInfo?(v106, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
        v112 = v227;
      }

      else
      {
        v112 = v227;
        DisplayList.ArchiveIDs.uuid.getter();
        _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v106, MEMORY[0x1E697DC50]);
        v108 = 0;
      }

      v147 = type metadata accessor for UUID();
      v148 = *(*(v147 - 8) + 56);
      v148(v112, v108, 1, v147);
      v149 = *(v233 + 24);
      v150 = v231;
      v148(v231 + v149, 1, 1, v147);
      *v150 = v105;
      outlined assign with take of UUID?(v112, v150 + v149);
      v151 = *(v254 + 104);
      if (*(v151 + 16) && (v152 = specialized __RawDictionaryStorage.find<A>(_:)(v150), (v153 & 1) != 0))
      {
        outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v151 + 56) + 184 * v152, &v257);
        v154 = v241;
        v155 = v236;
        if (*(&v259 + 1) && v266)
        {
          *&v274 = v266;
          DWORD2(v274) = DWORD2(v266);
          v156 = PreferencesOutputs.subscript.getter();
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v257, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
          if ((v156 & 0x100000000) == 0)
          {
            v157 = AGGraphGetValue();
            v158 = *v157;
            v159 = *(v157 + 8);
            v160 = *(v157 + 12);
            v161 = v235;
            if (v107(v253, 1, v235) == 1)
            {
              v70 = 0;
              v48 = 0x1400000000;
            }

            else
            {
              v70 = swift_allocBox();
              (*v226)(v185, 1, 1, v161);
              v48 = 0x100000000;
            }

            swift_bridgeObjectRetain_n();
            outlined consume of DisplayList.Item.Value(v236, v250, v241, v50);
            v186 = *(v158 + 16);
            if (v186)
            {
              if (v186 == 1)
              {
                v187 = 0;
                v188 = 0;
                goto LABEL_107;
              }

              v190 = 0;
              v191 = 0;
              v188 = v186 & 0x7FFFFFFFFFFFFFFELL;
              v192 = (v158 + 144);
              v193 = v186 & 0x7FFFFFFFFFFFFFFELL;
              do
              {
                v194 = *(v192 - 10);
                v196 = *v192;
                v192 += 20;
                v195 = v196;
                if (v194 > v190)
                {
                  v190 = v194;
                }

                if (v195 > v191)
                {
                  v191 = v195;
                }

                v193 -= 2;
              }

              while (v193);
              if (v190 <= v191)
              {
                v187 = v191;
              }

              else
              {
                v187 = v190;
              }

              if (v186 != v188)
              {
LABEL_107:
                v197 = v186 - v188;
                v198 = (v158 + 80 * v188 + 64);
                do
                {
                  v200 = *v198;
                  v198 += 10;
                  v199 = v200;
                  if (v200 > v187)
                  {
                    v187 = v199;
                  }

                  --v197;
                }

                while (v197);
              }
            }

            else
            {
              v187 = 0;
            }

            v184 = v159 | (v160 << 32) | 0x40000000;
            v201 = v236;
            outlined consume of DisplayList.Item.Value(v236, v250, v241, v50);

            if (v187 > v47)
            {
              v47 = v187;
            }

            _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v231, type metadata accessor for DisplayList.HostedViewState.Key);
            outlined consume of DisplayList.Content.Value(v201);
            outlined consume of DisplayList.Content.Value(v201);
LABEL_114:
            v49 = v158;
            v50 = v184;
LABEL_78:
            v40 = v245;
            goto LABEL_79;
          }

          v162 = v250;
          outlined consume of DisplayList.Item.Value(v155, v250, v154, v50);
LABEL_72:
          outlined consume of DisplayList.Item.Value(v155, v162, v154, v50);
          _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v150, type metadata accessor for DisplayList.HostedViewState.Key);
          outlined consume of DisplayList.Content.Value(v155);
          outlined consume of DisplayList.Content.Value(v155);
          v70 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 3221225472;
          goto LABEL_78;
        }
      }

      else
      {
        v267 = 0;
        v265 = 0u;
        v266 = 0u;
        v263 = 0u;
        v264 = 0u;
        v261 = 0u;
        v262 = 0u;
        memset(v260, 0, sizeof(v260));
        v258 = 0u;
        v259 = 0u;
        v257 = 0u;
        v154 = v241;
        v155 = v236;
      }

      v162 = v250;
      outlined consume of DisplayList.Item.Value(v155, v250, v154, v50);
      outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v257, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
      goto LABEL_72;
    }

    if (v55 == 14)
    {
      v57 = v255;
      if (v255[2] && (v58 = specialized __RawDictionaryStorage.find<A>(_:)(v46), (v59 & 1) != 0))
      {
        v245 = v40;
        v60 = v57[7] + 16 * v58;
        v61 = *v60;
        v62 = *(v60 + 8);
        LODWORD(v60) = *(v60 + 12);
        *&v257 = v61;
        WORD4(v257) = v62;
        HIDWORD(v257) = v60;
        _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v253, v56, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
        v63 = v235;
        if ((*v234)(v56, 1, v235) != 1)
        {
          v251 = MEMORY[0x1E697DC50];
          v174 = v56;
          v175 = v223;
          outlined init with take of DisplayList.ArchiveIDs(v174, v223, MEMORY[0x1E697DC50]);
          v176 = v238;
          outlined init with copy of DisplayList.HostedViewState.Key(v175, v238, MEMORY[0x1E697DC50]);
          v240 = *v226;
          v177.n128_f64[0] = (v240)(v176, 0, 1, v63);
          v178 = v250;
          v179.n128_f64[0] = outlined copy of DisplayList.Item.Value(v46, v250, v177, v49, v50);
          v180 = v49;
          outlined copy of DisplayList.Item.Value(v46, v178, v179, v49, v50);

          DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v257, v256, v176, v57, &v274);
          outlined consume of DisplayList.Item.Value(v46, v178, v49, v50);
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(v176, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
          v181 = v274;
          v70 = swift_allocBox();
          v183 = v182;
          outlined init with take of DisplayList.ArchiveIDs(v223, v182, v251);
          (v240)(v183, 0, 1, v235);
          v158 = v257;
          v184 = WORD4(v257) | (HIDWORD(v257) << 32) | 0x40000000;
          outlined consume of DisplayList.Item.Value(v46, v178, v180, v50);
          if (v181 > v47)
          {
            v47 = v181;
          }

          outlined consume of DisplayList.Content.Value(v46);
          v48 = 0x100000000;
          goto LABEL_114;
        }

        v65 = v250;
        outlined copy of DisplayList.Item.Value(v46, v250, v64, v49, v50);
        outlined destroy of DisplayList.HostedViewState.ViewInfo?(v56, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
        v40 = v245;
      }

      else
      {
        v65 = v250;
        outlined copy of DisplayList.Item.Value(v46, v250, v52, v49, v50);
      }

      outlined consume of DisplayList.Item.Value(v46, v65, v49, v50);
      outlined consume of DisplayList.Content.Value(v46);
      v70 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 3221225472;
    }

    else
    {
      v48 = v250;
      outlined copy of DisplayList.Item.Value(v46, v250, v52, v49, v50);
      outlined consume of DisplayList.Content.Value(v46);
      v70 = v46;
    }

LABEL_79:
    v251 = v50;
    v170 = v40 + 1;
    *&v276 = v47;
    *(&v276 + 1) = v70;
    *&v277[0] = v48;
    *(&v277[0] + 1) = v49;
    *&v277[1] = v50;
    v171 = v49;
    v172 = v249;
    DWORD2(v277[1]) = v249;
    v272 = v276;
    v273[0] = v277[0];
    *(v273 + 12) = *(v277 + 12);
    v274 = v278;
    v275 = v279;
    v270 = v278;
    v271 = v279;
    outlined init with copy of DisplayList.Item(&v274, &v268);
    DisplayList.append(_:)();
    v259 = v272;
    v260[0] = v273[0];
    *(v260 + 12) = *(v273 + 12);
    v257 = v270;
    v258 = v271;
    outlined destroy of DisplayList.Item(&v257);
    v173 = v252;
    if (v47 > v252)
    {
      v173 = v47;
    }

    v252 = v173;
    v268 = v53;
    v269 = v248;
    DisplayList.Index.leave(index:)();
    outlined destroy of DisplayList.Item(v280);
    v270 = v278;
    v271 = v279;
    *&v272 = v47;
    *(&v272 + 1) = v70;
    *&v273[0] = v48;
    ++v40;
    *(&v273[0] + 1) = v171;
    *&v273[1] = v251;
    DWORD2(v273[1]) = v172;
    outlined destroy of DisplayList.Item(&v270);
    if (v170 == v244)
    {

      a5 = v224;
      goto LABEL_135;
    }

    if (v170 >= *(v246 + 16))
    {
      goto LABEL_137;
    }
  }

  if (v54 != 2)
  {
    v70 = v46;
    goto LABEL_79;
  }

  v250 = v48;
  v66 = *(v46 + 16);
  if (!v66)
  {

    v70 = v46;
    v103 = v250;
LABEL_42:
    outlined consume of DisplayList.Item.Value(v46, v103, v49, v50);
    v48 = 0;
    v49 = 0;
    v50 = 0x80000000;
    goto LABEL_79;
  }

  v245 = v40;
  v67 = v50;
  v50 = v49;
  v251 = v67;
  outlined copy of DisplayList.Item.Value(v46, v250, v52, v49, v67);

  v68 = 0;
  v69 = 56;
  v70 = v46;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
    }

    if (v68 >= *(v70 + 16))
    {
      break;
    }

    ++v68;
    DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)((v70 + v69), v256, v253, v255, &v257);
    if (v257 > v47)
    {
      v47 = v257;
    }

    v69 += 40;
    if (v66 == v68)
    {
      v103 = v250;
      v49 = v50;
      v104 = v50;
      LODWORD(v50) = v251;
      outlined consume of DisplayList.Item.Value(v46, v250, v104, v251);
      v40 = v245;
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_18C0699B8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0699F0()
{

  return swift_deallocObject();
}

double outlined copy of DisplayList.Item.Value(unint64_t a1, unint64_t a2, __n128 a3, uint64_t a4, unsigned int a5)
{
  v6 = a5 >> 30;
  if (a5 >> 30 > 1)
  {
    if (v6 != 2)
    {
      return result;
    }
  }

  else
  {
    if (!v6)
    {

      return outlined copy of DisplayList.Content.Value(a1);
    }

    outlined copy of DisplayList.Effect(a1, a2, SBYTE4(a2));
  }

  return result;
}

void outlined copy of DisplayList.Effect(uint64_t a1, char a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:

      break;
    case 5:
      outlined copy of GraphicsBlendMode(a1, a2 & 1);
      break;
    default:
      return;
  }
}

void outlined consume of DisplayList.Item.Value(unint64_t result, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4 >> 30;
  if (a4 >> 30 > 1)
  {
    if (v5 != 2)
    {
      return;
    }
  }

  else
  {
    if (!v5)
    {

      outlined consume of DisplayList.Content.Value(result);
      return;
    }

    outlined consume of DisplayList.Effect(result, a2, SBYTE4(a2));
  }
}

void outlined consume of DisplayList.Effect(uint64_t a1, char a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:

      break;
    case 5:
      outlined consume of GraphicsBlendMode(a1, a2 & 1);
      break;
    default:
      return;
  }
}

void type metadata accessor for DisplayList.HostedViewState.ViewInfo?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of DisplayList.HostedViewState.ViewInfo?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.HostedViewState.ViewInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t outlined init with take of DisplayList.ArchiveIDs(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double outlined copy of DisplayList.Content.Value(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      break;
    default:
      return result;
  }

  return result;
}

double outlined consume of DisplayList.Content.Value(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined init with copy of DisplayList.HostedViewState.Key(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DisplayList.HostedViewState.Key(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI31AnyNavigationLinkPresentedValueVSg_ADtWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithCopy for DisplayList.HostedViewState.ViewInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  (**(v4 - 8))(a1 + 16, a2 + 16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v5;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v6 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v6;
  v8 = *(a2 + 152);
  v7 = *(a2 + 160);
  *(a1 + 152) = v8;
  *(a1 + 160) = v7;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);

  v9 = v8;

  return a1;
}

double destroy for DisplayList.HostedViewState.ViewInfo(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + 16));

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ArchivableFactory(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    *((v10 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UUID?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*a1);
  Hasher._combine(_:)(a1[1]);
  v9 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  outlined init with copy of UUID?(a1 + *(v9 + 24), v8, type metadata accessor for UUID?);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  v10 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(_DWORD *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UUID?(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (UUID?, UUID?)(0, v9);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  MEMORY[0x1EEE9AC00](v51);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = -1 << *(v2 + 32);
  v19 = a2 & ~v18;
  v45 = v2 + 64;
  if ((*(v2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v50 = v5;
    v20 = ~v18;
    v21 = *a1;
    v22 = *(v15 + 72);
    v40 = (v6 + 32);
    v43 = (v6 + 8);
    v44 = v11;
    v23 = (v6 + 48);
    v24 = v45;
    v47 = ~v18;
    v48 = v2;
    v46 = v21;
    v49 = v22;
    do
    {
      outlined init with copy of UUID?(*(v2 + 48) + v22 * v19, v17, type metadata accessor for DisplayList.HostedViewState.Key);
      if (*v17 == v21 && v17[1] == a1[1])
      {
        v25 = a1;
        v26 = *(v51 + 24);
        v27 = *(v52 + 48);
        v28 = v23;
        outlined init with copy of UUID?(v17 + v26, v14, type metadata accessor for UUID?);
        v29 = v25 + v26;
        a1 = v25;
        outlined init with copy of UUID?(v29, &v14[v27], type metadata accessor for UUID?);
        v30 = *v23;
        v31 = v50;
        if ((*v28)(v14, 1, v50) == 1)
        {
          outlined destroy of DisplayList.HostedViewState.Key(v17, type metadata accessor for DisplayList.HostedViewState.Key);
          v32 = v30(&v14[v27], 1, v31);
          v23 = v28;
          v22 = v49;
          if (v32 == 1)
          {
            outlined destroy of DisplayList.HostedViewState.Key(v14, type metadata accessor for UUID?);
            return v19;
          }

          goto LABEL_12;
        }

        v33 = v44;
        outlined init with copy of UUID?(v14, v44, type metadata accessor for UUID?);
        v34 = v30(&v14[v27], 1, v31);
        v23 = v28;
        if (v34 == 1)
        {
          outlined destroy of DisplayList.HostedViewState.Key(v17, type metadata accessor for DisplayList.HostedViewState.Key);
          (*v43)(v33, v31);
          v24 = v45;
          v22 = v49;
LABEL_12:
          outlined destroy of DisplayList.HostedViewState.Key(v14, type metadata accessor for (UUID?, UUID?));
          v20 = v47;
          v2 = v48;
          v21 = v46;
          goto LABEL_4;
        }

        v35 = v41;
        (*v40)(v41, &v14[v27], v31);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *v43;
        v37 = v35;
        v23 = v28;
        (*v43)(v37, v31);
        outlined destroy of DisplayList.HostedViewState.Key(v17, type metadata accessor for DisplayList.HostedViewState.Key);
        v36(v33, v31);
        a1 = v25;
        outlined destroy of DisplayList.HostedViewState.Key(v14, type metadata accessor for UUID?);
        v20 = v47;
        v2 = v48;
        v24 = v45;
        v21 = v46;
        v22 = v49;
        if (v42)
        {
          return v19;
        }
      }

      else
      {
        outlined destroy of DisplayList.HostedViewState.Key(v17, type metadata accessor for DisplayList.HostedViewState.Key);
      }

LABEL_4:
      v19 = (v19 + 1) & v20;
    }

    while (((*(v24 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  return v19;
}

void type metadata accessor for (UUID?, UUID?)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (UUID?, UUID?))
  {
    type metadata accessor for UUID?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UUID?, UUID?));
    }
  }
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t destroy for DisplayList.HostedViewState(uint64_t a1)
{
}

void type metadata accessor for _EnvironmentKeyWritingModifier<AppIntentExecutor?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AppIntentExecutor?>)
  {
    type metadata accessor for AppIntentExecutor?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AppIntentExecutor?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AppIntentExecutor?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for _ArchivedView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[6];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[9];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(v12 + 8);

  if (v13 >> 60 == 15)
  {
    *v11 = *v12;
  }

  else
  {
    v14 = *v12;
    outlined copy of Data._Representation(v14, v13);
    *v11 = v14;
    *(v11 + 8) = v13;
  }

  return a1;
}

double destroy for _ArchivedView(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v7 = (a1 + *(a2 + 36));
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    v9 = *v7;

    return outlined consume of Data._Representation(v9, v8);
  }

  return result;
}

void outlined copy of PlatformDrawableContent?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    outlined copy of PlatformDrawableContent.Storage(a1, a2, a3, a4, a5, a6);
  }
}

void protocol witness for PlatformDrawable.options.getter in conformance CGDrawingView(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 12);
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v3;
}

void protocol witness for PlatformDrawable.setContentsScale(_:) in conformance CGDrawingView(double a1)
{
  v3 = [v1 layer];
  [v3 setContentsScale_];
}

uint64_t specialized RBDrawingView.update(content:required:)(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 != 255)
  {
    v6 = *(a1 + 24);
    v5 = *(a1 + 32);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = *a1;
    v22 = *&v2[OBJC_IVAR____TtC7SwiftUI13RBDrawingView__state];
    outlined copy of PlatformDrawableContent?(v9, v8, v7, v6, v5, v4);
    outlined copy of PlatformDrawableContent?(v9, v8, v7, v6, v5, v4);

    type metadata accessor for AtomicBox<RBDrawingView.State>();
    v10 = AtomicBox.wrappedValue.modify();
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    *v11 = v9;
    *(v11 + 8) = v8;
    *(v11 + 16) = v7;
    *(v11 + 24) = v6;
    *(v11 + 32) = v5;
    v17 = *(v11 + 40);
    *(v11 + 40) = v4;
    v18 = outlined consume of PlatformDrawableContent.Storage(v12, v13, v14, v15, v16, v17);
    v10(v21, 0, v18);
    outlined consume of PlatformDrawableContent?(v9, v8, v7, v6, v5, v4);
  }

  v19 = [v3 layer];
  [v19 setNeedsDisplay];

  return 1;
}

void type metadata accessor for AtomicBox<RBDrawingView.State>()
{
  if (!lazy cache variable for type metadata for AtomicBox<RBDrawingView.State>)
  {
    v0 = type metadata accessor for AtomicBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AtomicBox<RBDrawingView.State>);
    }
  }
}

double outlined consume of PlatformDrawableContent?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return outlined consume of PlatformDrawableContent.Storage(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

void type metadata accessor for CGFloat?()
{
  if (!lazy cache variable for type metadata for CGFloat?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CGFloat?);
    }
  }
}

void type metadata accessor for AppIntentExecutor?()
{
  if (!lazy cache variable for type metadata for AppIntentExecutor?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AppIntentExecutor?);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat?>)
  {
    type metadata accessor for CGFloat?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArchivableFactory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = v12;
  *(&v40 + 1) = v13;
  v41 = v14;
  v42 = v15;
  v16 = type metadata accessor for ArchivableFactory.CodingKeys(255, &v40);
  swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>.CodingKeys, v16);
  v17 = type metadata accessor for KeyedDecodingContainer();
  v34 = *(v17 - 8);
  v35 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v37 = a2;
  *&v40 = a2;
  *(&v40 + 1) = a3;
  v33 = a3;
  v41 = a4;
  v42 = a5;
  v20 = type metadata accessor for ArchivableFactory(0, &v40);
  v30 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v19;
  v23 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v22;
  v25 = v32;
  LOBYTE(v40) = 0;
  v26 = v37;
  v27 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 32))(v24, v38, v26);
  v43 = 1;
  lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v24[*(v20 + 52)] = v40;
  type metadata accessor for CGSize(0);
  v43 = 2;
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 8))(v36, v27);
  *&v24[*(v20 + 56)] = v40;
  v28 = v30;
  (*(v30 + 16))(v31, v24, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v28 + 8))(v24, v20);
}

uint64_t ArchivableFactory.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7265696669646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x797469746E656469;
  }

  return 1702521203;
}

unint64_t lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity()
{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FD78], MEMORY[0x1E697FD60], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FD70], MEMORY[0x1E697FD60], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FD68], MEMORY[0x1E697FD60], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }

  return result;
}

uint64_t initializeWithCopy for ArchivableFactory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  *((v7 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableFactory(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for ArchivableFactory(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t ArchivableLinkModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for LinkDestination.Configuration();
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys, &unk_1EFFCCFB0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ArchivableLinkModifier(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys();
  v12 = v20;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v13 = v18;
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type LinkDestination.Configuration and conformance LinkDestination.Configuration, MEMORY[0x1E697E810], MEMORY[0x1E697E820]);
    v14 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v8, v6);
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(v14, v11, MEMORY[0x1E697E810]);
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(v11, v17, type metadata accessor for ArchivableLinkModifier);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableLinkModifier.CodingKeys, &unk_1EFFCCFB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableLinkModifier.CodingKeys, &unk_1EFFCCFB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableLinkModifier.CodingKeys, &unk_1EFFCCFB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableLinkModifier.CodingKeys, &unk_1EFFCCFB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for WidgetAuxiliaryViewMetadata.Graphic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ArchivableLinkModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for WidgetAuxiliaryViewMetadata(uint64_t a1)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL?(319);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for WidgetAuxiliaryViewMetadata.Graphic.Named(uint64_t a1)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for WidgetAuxiliaryViewMetadata.Progress(uint64_t a1)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for WidgetAuxiliaryViewMetadata.Progress.Kind(uint64_t a1)
{
  v2[4] = &unk_18CDCB818;
  type metadata accessor for ClosedRange<Date>(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v2[5] = v2;
    swift_initEnumMetadataMultiPayload();
  }
}

uint64_t static _ArchivableViewModifier.registerDecoder()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v5 = a1;
  v6 = *(a2 + 8);
  v7 = v2;
  v3 = type metadata accessor for ArchivableFactory(0, &v5);
  swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>, v3);
  swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>, v3);
  return static ViewDecoders.registerDecodableFactoryType<A, B>(_:forType:)();
}

uint64_t type metadata completion function for ArchivableFactory(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static _ArchivableView.registerDecoder()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ArchivableFactory(0, a1, a2, a4);
  swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>, v4);
  swift_getWitnessTable("Ax\vb\b\t\t", v4);

  return static ViewDecoders.registerDecodableFactoryType<A, B>(_:forType:)();
}

uint64_t type metadata completion function for _ArchivedViewStates(uint64_t a1)
{
  result = type metadata accessor for ArchivedViewCore.Metadata();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier()
{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableToggleAppIntentModifier, &type metadata for ArchivableToggleAppIntentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableToggleAppIntentModifier, &type metadata for ArchivableToggleAppIntentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableToggleAppIntentModifier, &type metadata for ArchivableToggleAppIntentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier);
  }

  return result;
}

void type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base()
{
  result = lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base;
  if (!lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableLinearProgressView.Base, &type metadata for ArchivableLinearProgressView.Base, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base;
  if (!lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base)
  {
    result = swift_getWitnessTable("u\v\nbLu\b", &type metadata for ArchivableLinearProgressView.Base, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ArchivableLinearProgressView.Base(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ClosedRange<Date>(319);
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t lazy protocol witness table accessor for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for TimelineProgressView<A>.ArchivableTimelineProgressView(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView);
  a1[2] = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView, a2);
  result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView, a2);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing()
{
  result = lazy protocol witness table cache variable for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing;
  if (!lazy protocol witness table cache variable for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CircularPercentageGaugeRing, &type metadata for CircularPercentageGaugeRing, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing;
  if (!lazy protocol witness table cache variable for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CircularPercentageGaugeRing, &type metadata for CircularPercentageGaugeRing, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CircularPercentageGaugeRing(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter, &type metadata for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter, &type metadata for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter, &type metadata for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base()
{
  result = lazy protocol witness table cache variable for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base;
  if (!lazy protocol witness table cache variable for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedCircularPlaybackProgressView.Base, &type metadata for ResolvedCircularPlaybackProgressView.Base, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base;
  if (!lazy protocol witness table cache variable for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedCircularPlaybackProgressView.Base, &type metadata for ResolvedCircularPlaybackProgressView.Base, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ResolvedCircularPlaybackProgressView.Base(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier()
{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableButtonAppIntentModifier, &type metadata for ArchivableButtonAppIntentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableButtonAppIntentModifier, &type metadata for ArchivableButtonAppIntentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableButtonAppIntentModifier, &type metadata for ArchivableButtonAppIntentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier);
  }

  return result;
}

uint64_t type metadata completion function for ArchivablePlaybackButtonViewModifier(uint64_t a1)
{
  result = type metadata accessor for PlaybackButton.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for PlaybackButton.Configuration(uint64_t a1)
{
  type metadata accessor for ClosedRange<Date>?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlaybackButton.State(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t type metadata completion function for PlaybackButton.State(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier()
{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAccessibilityActionModifier, &type metadata for ArchivableAccessibilityActionModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAccessibilityActionModifier, &type metadata for ArchivableAccessibilityActionModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAccessibilityActionModifier, &type metadata for ArchivableAccessibilityActionModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier()
{
  result = lazy protocol witness table cache variable for type InvalidatableContentModifier and conformance InvalidatableContentModifier;
  if (!lazy protocol witness table cache variable for type InvalidatableContentModifier and conformance InvalidatableContentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvalidatableContentModifier, &type metadata for InvalidatableContentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvalidatableContentModifier and conformance InvalidatableContentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvalidatableContentModifier and conformance InvalidatableContentModifier;
  if (!lazy protocol witness table cache variable for type InvalidatableContentModifier and conformance InvalidatableContentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvalidatableContentModifier, &type metadata for InvalidatableContentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvalidatableContentModifier and conformance InvalidatableContentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvalidatableContentModifier and conformance InvalidatableContentModifier;
  if (!lazy protocol witness table cache variable for type InvalidatableContentModifier and conformance InvalidatableContentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvalidatableContentModifier, &type metadata for InvalidatableContentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvalidatableContentModifier and conformance InvalidatableContentModifier);
  }

  return result;
}

void DisplayList.HostedViews.Preference.value.getter(void (**a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v28 - v6;
  v7 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *AGGraphGetValue();
  swift_beginAccess();
  v12 = *(v11 + 120);
  v13 = *(a3 + 16);

  v38 = a2;
  v13(a2, a3);
  v14 = *AGGraphGetValue();
  swift_beginAccess();
  v15 = *(v14 + 128);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v37 = a3;
    v30 = (v35 + 2);
    v31 = a3 + 24;
    v28 = (v35 + 4);
    v29 = (v35 + 1);

    v18 = 0;
    v32 = v16 - 1;
    LODWORD(v35) = 1;
LABEL_3:
    v19 = v18;
    while (v19 < *(v15 + 16))
    {
      outlined init with copy of DisplayList.HostedViewState.Key(v17 + *(v8 + 72) * v19, v10, type metadata accessor for DisplayList.HostedViewState.Key);
      if (*(v12 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v21 & 1) != 0))
      {
        outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v12 + 56) + 184 * v20, v39);
        _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v10, type metadata accessor for DisplayList.HostedViewState.Key);
        v42[8] = v39[8];
        v42[9] = v39[9];
        v43 = v40;
        v44 = v41;
        v42[4] = v39[4];
        v42[5] = v39[5];
        v42[6] = v39[6];
        v42[7] = v39[7];
        v42[0] = v39[0];
        v42[1] = v39[1];
        v42[2] = v39[2];
        v42[3] = v39[3];
        if (v40)
        {
          *&v39[0] = v43;
          DWORD2(v39[0]) = DWORD2(v43);
          v22 = PreferencesOutputs.subscript.getter();
          LOBYTE(v39[0]) = BYTE4(v22) & 1;
          if ((v22 & 0x100000000) == 0)
          {
            if (v35)
            {
              v23 = AssociatedTypeWitness;
              Value = AGGraphGetValue();
              (*v30)(v34, Value, v23);
              (*v29)(v36, v23);
              (*v28)(v36, v34, v23);
            }

            else
            {
              v35 = &v28;
              v25 = MEMORY[0x1EEE9AC00](v22);
              v26 = v37;
              *(&v28 - 4) = v38;
              *(&v28 - 3) = v26;
              *(&v28 - 4) = v27;
              (*(v26 + 24))(v36, partial apply for closure #1 in DisplayList.HostedViews.Preference.value.getter, v25);
            }

            v18 = v19 + 1;
            outlined destroy of DisplayList.HostedViewState.ViewInfo(v42);
            LODWORD(v35) = 0;
            if (v32 == v19)
            {
LABEL_16:

              goto LABEL_17;
            }

            goto LABEL_3;
          }
        }

        outlined destroy of DisplayList.HostedViewState.ViewInfo(v42);
      }

      else
      {
        _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v10, type metadata accessor for DisplayList.HostedViewState.Key);
      }

      if (v16 == ++v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

uint64_t closure #1 in DisplayList.HostedViews.Preference.value.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a4, Value, AssociatedTypeWitness);
}

double RBDrawingView.draw(inDisplayList:)(uint64_t a1)
{
  [v1 bounds];

  return specialized RBDrawingView.draw(in:size:)(a1);
}

double specialized RBDrawingView.draw(in:size:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7SwiftUI13RBDrawingView__state;
  *&v8[0] = *&v1[OBJC_IVAR____TtC7SwiftUI13RBDrawingView__state];
  type metadata accessor for AtomicBox<RBDrawingView.State>();

  AtomicBox.access<A>(_:)();

  *&v8[0] = *&v1[v2];
  AtomicBox.wrappedValue.getter();
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = v7;
  outlined copy of PlatformDrawableContent.Storage(v4, *(&v4 + 1), v5, *(&v5 + 1), v6, BYTE8(v6));
  outlined destroy of RBDrawingView.State(v8);
  [v1 bounds];
  PlatformDrawableContent.draw(in:size:state:)();
  outlined consume of PlatformDrawableContent.Storage(v4, *(&v4 + 1), v5, *(&v5 + 1), v6, BYTE8(v6));

  AtomicBox.access<A>(_:)();

  return result;
}

uint64_t partial apply for closure #2 in RBDrawingView.draw(in:size:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 48);
  v4 = *(result + 56);
  v5 = *(v2 + 8);
  *(result + 48) = *v2;
  *(result + 56) = v5;
  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t RenderBoxLayer.needsSynchronousUpdate.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v4, sel_needsSynchronousUpdate);
  if (result)
  {
    v2 = [v0 delegate];
    if (v2)
    {
      if (v2[OBJC_IVAR____TtC7SwiftUI13RenderBoxView_rendersFirstFrameAsynchronously] == 1)
      {
        v3 = [v0 hasBeenCommitted];
      }

      else
      {
        v3 = 1;
      }

      swift_unknownObjectRelease();
      return v3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ArchivableLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for LinkDestination.Configuration();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  return a1;
}

uint64_t destroy for ArchivableLinkModifier(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ComplicationIdiomModifier()
{
  AnyInterfaceIdiom.init<A>(_:)();
  return PropertyList.subscript.setter();
}

{
  return protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ComplicationIdiomModifier();
}

unint64_t lazy protocol witness table accessor for type _ViewInputs.EnvironmentTransform and conformance _ViewInputs.EnvironmentTransform()
{
  result = lazy protocol witness table cache variable for type _ViewInputs.EnvironmentTransform and conformance _ViewInputs.EnvironmentTransform;
  if (!lazy protocol witness table cache variable for type _ViewInputs.EnvironmentTransform and conformance _ViewInputs.EnvironmentTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ViewInputs.EnvironmentTransform, &type metadata for _ViewInputs.EnvironmentTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewInputs.EnvironmentTransform and conformance _ViewInputs.EnvironmentTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.HostedViews.Preference<ArchivedViewStatesKey> and conformance DisplayList.HostedViews.Preference<A>()
{
  result = lazy protocol witness table cache variable for type DisplayList.HostedViews.Preference<ArchivedViewStatesKey> and conformance DisplayList.HostedViews.Preference<A>;
  if (!lazy protocol witness table cache variable for type DisplayList.HostedViews.Preference<ArchivedViewStatesKey> and conformance DisplayList.HostedViews.Preference<A>)
  {
    type metadata accessor for DisplayList.HostedViews.Preference<ArchivedViewStatesKey>(255, &lazy cache variable for type metadata for DisplayList.HostedViews.Preference<ArchivedViewStatesKey>, &type metadata for ArchivedViewStatesKey, &protocol witness table for ArchivedViewStatesKey, type metadata accessor for DisplayList.HostedViews.Preference);
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayList.HostedViews.Preference<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.HostedViews.Preference<ArchivedViewStatesKey> and conformance DisplayList.HostedViews.Preference<A>);
  }

  return result;
}

void type metadata accessor for DisplayList.HostedViews.Preference<ArchivedViewStatesKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type DisplayList.HostedViews.ResponderFilter and conformance DisplayList.HostedViews.ResponderFilter()
{
  result = lazy protocol witness table cache variable for type DisplayList.HostedViews.ResponderFilter and conformance DisplayList.HostedViews.ResponderFilter;
  if (!lazy protocol witness table cache variable for type DisplayList.HostedViews.ResponderFilter and conformance DisplayList.HostedViews.ResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayList.HostedViews.ResponderFilter, &type metadata for DisplayList.HostedViews.ResponderFilter, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.HostedViews.ResponderFilter and conformance DisplayList.HostedViews.ResponderFilter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivedLayoutComputer and conformance ArchivedLayoutComputer()
{
  result = lazy protocol witness table cache variable for type ArchivedLayoutComputer and conformance ArchivedLayoutComputer;
  if (!lazy protocol witness table cache variable for type ArchivedLayoutComputer and conformance ArchivedLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedLayoutComputer, &unk_1EFFC5E18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedLayoutComputer and conformance ArchivedLayoutComputer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedLayoutComputer and conformance ArchivedLayoutComputer;
  if (!lazy protocol witness table cache variable for type ArchivedLayoutComputer and conformance ArchivedLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedLayoutComputer, &unk_1EFFC5E18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedLayoutComputer and conformance ArchivedLayoutComputer);
  }

  return result;
}

double AccessibilityNode.scheduleNotifyForAttachmentAddition(of:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 56) & 1) == 0 && (*(a1 + 41) & 0x40) != 0)
  {
    v16 = 4;
    AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v16, aBlock);
    if (LOBYTE(aBlock[0]) != 3)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
          v14 = static OS_dispatch_queue.main.getter();
          v11 = swift_allocObject();
          *(v11 + 16) = 0;
          *(v11 + 24) = 0;
          aBlock[4] = _s7SwiftUI17AccessibilityNodeC35scheduleNotifyForAttachmentAddition33_2F6327E72581B7F866C81F7546545BE82ofyAA0cH0V_tFyyScMYccfU_TA_0;
          aBlock[5] = v11;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_82_0;
          v12 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v13 = v14;
          MEMORY[0x18D00DA20](0, v10, v5, v12);
          swift_unknownObjectRelease();
          _Block_release(v12);

          (*(v3 + 8))(v5, v2);
          (*(v7 + 8))(v10, v6);
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_18C06E9B4()
{

  return swift_deallocObject();
}

double destroy for AccessibilityAttachmentStorage(uint64_t a1)
{

  v2 = *(a1 + 88);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  }

LABEL_5:
  if (*(a1 + 240) != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.HostedViewState.InheritedState(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v4;
  v5 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v5;

  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ComplicationIdiomModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

unint64_t lazy protocol witness table accessor for type ArchivedDisplayList and conformance ArchivedDisplayList()
{
  result = lazy protocol witness table cache variable for type ArchivedDisplayList and conformance ArchivedDisplayList;
  if (!lazy protocol witness table cache variable for type ArchivedDisplayList and conformance ArchivedDisplayList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedDisplayList, &unk_1EFF88D80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedDisplayList and conformance ArchivedDisplayList);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ArchivedDisplayList(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = *(a2 + 4);

  return a1;
}

void type metadata accessor for MutableBox<DisplayList.HostedViewState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type InterpolatableArchiveContent.Init and conformance InterpolatableArchiveContent.Init()
{
  result = lazy protocol witness table cache variable for type InterpolatableArchiveContent.Init and conformance InterpolatableArchiveContent.Init;
  if (!lazy protocol witness table cache variable for type InterpolatableArchiveContent.Init and conformance InterpolatableArchiveContent.Init)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InterpolatableArchiveContent.Init, &unk_1EFFC5CF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InterpolatableArchiveContent.Init and conformance InterpolatableArchiveContent.Init);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityAttachmentStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v15 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v15;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 308) = *(a2 + 308);

  v16 = v15;

  return a1;
}

uint64_t outlined assign with copy of AccessibilityAttachment?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ArchivedAccessibilityAttachment and conformance ArchivedAccessibilityAttachment()
{
  result = lazy protocol witness table cache variable for type ArchivedAccessibilityAttachment and conformance ArchivedAccessibilityAttachment;
  if (!lazy protocol witness table cache variable for type ArchivedAccessibilityAttachment and conformance ArchivedAccessibilityAttachment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedAccessibilityAttachment, &unk_1EFFC5E98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedAccessibilityAttachment and conformance ArchivedAccessibilityAttachment);
  }

  return result;
}

void specialized makePreference #1 <A>(key:) in static _ArchivedView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4 != &type metadata for AccessibilityNodesKey && a4 != MEMORY[0x1E697DC60] && a4 != MEMORY[0x1E697F318] && a4 != &type metadata for ArchivedViewStatesKey)
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v17[0] = v10;
    MEMORY[0x1EEE9AC00](v10);
    v14[2] = swift_getAssociatedTypeWitness();
    v15 = type metadata accessor for DisplayList.HostedViews.Preference(0, a4, a5, v11);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisplayList.HostedViews.Preference<A>, v15);
    v12 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v14, v15, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
    swift_beginAccess();
    PreferencesOutputs.appendPreference<A>(key:value:)();
    swift_endAccess();
  }
}

Swift::Bool __swiftcall DisplayList.HostedViewState.update()()
{
  v1 = v0;
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  Value = AGGraphGetValue();
  v7 = v6 | ((*(Value + 8) & 2u) >> 1);
  if (v6 & 1 | ((*(Value + 8) & 2) != 0))
  {
    v8 = *Value;
    v9 = *(Value + 8);
    v10 = *(Value + 12);
    ++*(v0 + 120);

    v11 = (v0 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v13 + 16));
      if ((v9 & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11DisplayListVAFE15HostedViewStateV3KeyV_Tt1g5(0, *(v13 + 24) >> 1);

      *v11 = v14;
      if ((v9 & 2) == 0)
      {
LABEL_7:

        DisplayList.HostedViewState.reclaim()();
        return v7 & 1;
      }
    }

    DisplayList.Index.init()();
    v15 = AGGraphGetValue();
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v28 = *(v15 + 32);
    v29 = v18;
    swift_beginAccess();

    v19 = AGGraphGetValue();
    v20 = v10;
    v21 = *v19;
    v22 = v19[1];
    *&v39 = v16;
    *(&v39 + 1) = v17;
    v40 = v29;
    v41 = v28;
    *&v42 = v21;
    *(&v42 + 1) = v22;
    v36 = v8;
    v37 = v9;
    v38 = v20;
    v23 = type metadata accessor for DisplayList.ArchiveIDs();
    (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
    v24 = *(v1 + 64);
    v32 = *(v1 + 48);
    v33 = v24;
    v34 = *(v1 + 80);
    v35 = *(v1 + 96);
    v25 = *(v1 + 32);
    v30 = *(v1 + 16);
    v31 = v25;

    _ViewInputs.position.getter();
    type metadata accessor for CGPoint(0);
    v26 = AGGraphGetValue();
    DisplayList.HostedViewState.updateViews(in:index:archive:position:state:)(&v36, &v43, v4, &v39, *v26, v26[1]);
    outlined destroy of DisplayList.HostedViewState.ViewInfo?(v4, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
    v44[0] = v39;
    v44[1] = v40;
    v44[2] = v41;
    v44[3] = v42;
    outlined destroy of DisplayList.HostedViewState.InheritedState(v44);
    goto LABEL_7;
  }

  return v7 & 1;
}

uint64_t ArchivedDisplayList.updateValue()()
{
  v1 = v0;
  v48 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _ArchivedView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DisplayList.ArchiveIDs();
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DisplayList.Version.init(forUpdate:)();
  v28 = v44;
  Value = AGGraphGetValue();
  (*(v6 + 16))(v8, Value + v2[6], v5);
  v13 = *(AGGraphGetValue() + v2[7]);
  if (v13)
  {
    v29 = v13;
    v14 = v13;
  }

  else
  {
    _DisplayList_StableIdentityMap.init()();
    v14 = v29;
  }

  *&v44 = v14;

  DisplayList.ArchiveIDs.init(uuid:stableIDs:)();
  v15 = *v1;
  v16 = AGGraphGetValue();
  outlined init with copy of _ArchivedView(v16, v4, type metadata accessor for _ArchivedView);
  v17 = *&v4[v2[8]];
  outlined destroy of _ArchivedView(v4, type metadata accessor for _ArchivedView);
  swift_beginAccess();
  *(v15 + 16) = v17;
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720]);
  v18 = swift_allocBox();
  v20 = v19;
  outlined init with copy of _ArchivedView(v11, v19, MEMORY[0x1E697DC50]);
  (*(v9 + 56))(v20, 0, 1, v27);
  v21 = AGGraphGetValue();
  v22 = *(v21 + 16);
  v23 = *(v21 + 24) | (*(v21 + 28) << 32) | 0x40000000;
  *&v44 = v18;
  *(&v44 + 1) = 0x100000000;
  *&v45 = v22;
  *(&v45 + 1) = v23;

  v24 = AGGraphGetValue();
  v25 = v24[1];
  v40 = *v24;
  v41 = v25;
  MEMORY[0x18D00B390]();
  LODWORD(v33) = *(v1 + 2);
  *&v40 = v28;
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v44) = 0;
  DisplayList.Item.canonicalize(options:)();
  DisplayList.UnaryInterpolatorGroup.apply(to:)();
  v42 = v38;
  v43[0] = v39[0];
  *(v43 + 12) = *(v39 + 12);
  v40 = v36;
  v41 = v37;
  v46 = v38;
  v47[0] = v39[0];
  *(v47 + 12) = *(v39 + 12);
  v44 = v36;
  v45 = v37;
  outlined init with copy of DisplayList.Item(&v40, &v33);
  DisplayList.init(_:)();
  v30 = v33;
  v31 = v34;
  v32 = v35;
  AGGraphSetOutputValue();
  v46 = v38;
  v47[0] = v39[0];
  *(v47 + 12) = *(v39 + 12);
  v44 = v36;
  v45 = v37;
  outlined destroy of DisplayList.Item(&v44);
  outlined destroy of _ArchivedView(v11, MEMORY[0x1E697DC50]);
}

uint64_t assignWithCopy for _ArchivedView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[6];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v8 = a3[9];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = *(a2 + v8 + 8);
  if (*(a1 + v8 + 8) >> 60 != 15)
  {
    if (v11 >> 60 != 15)
    {
      v13 = *v10;
      outlined copy of Data._Representation(v13, v11);
      v14 = *v9;
      v15 = v9[1];
      *v9 = v13;
      v9[1] = v11;
      outlined consume of Data._Representation(v14, v15);
      return a1;
    }

    outlined destroy of Data(v9);
    goto LABEL_6;
  }

  if (v11 >> 60 == 15)
  {
LABEL_6:
    *v9 = *v10;
    return a1;
  }

  v12 = *v10;
  outlined copy of Data._Representation(v12, v11);
  *v9 = v12;
  v9[1] = v11;
  return a1;
}

uint64_t outlined init with copy of _ArchivedView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for Anchor<CGRect?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<(Color, Color)?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void static _ArchivedView._makeView(view:inputs:)(unsigned int *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v46 = *a1;
  v4 = a2[3];
  v71 = a2[2];
  v72 = v4;
  v73 = a2[4];
  v74 = *(a2 + 20);
  v5 = a2[1];
  v69 = *a2;
  v70 = v5;
  _ViewOutputs.init()();
  type metadata accessor for DisplayList.UnaryInterpolatorGroup();
  swift_allocObject();
  v49 = DisplayList.UnaryInterpolatorGroup.init()();
  v6 = v72;
  v7 = DWORD2(v72);
  v8 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v47 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *v68 = v71;
  *&v68[16] = v72;
  *&v68[32] = v73;
  *&v68[48] = v74;
  v66 = v69;
  v67 = v70;
  v45 = a3;
  outlined init with copy of _ViewInputs(&v69, &v63);
  if (v8)
  {
    PreferenceKeys.add(_:)();
  }

  *v65 = v71;
  *&v65[16] = v72;
  *&v65[32] = v73;
  *&v65[48] = v74;
  v63 = v69;
  v64 = v70;
  _ViewInputs.animatedPosition()();
  _ViewInputs.containerPosition.setter();
  _DisplayList_Identity.init()();
  v9 = v63;
  *v65 = v71;
  *&v65[16] = v72;
  *&v65[32] = v73;
  *&v65[48] = v74;
  v63 = v69;
  v64 = v70;
  LODWORD(v57) = v9;
  _ViewInputs.pushIdentity(_:)();
  v63 = v66;
  v10 = v67;
  v11 = *&v68[4];
  *&v65[8] = *&v68[8];
  *&v65[24] = *&v68[24];
  *&v65[36] = *&v68[36];
  v64 = v67;
  *v65 = *v68;
  *&v65[4] = *&v68[4];
  swift_beginAccess();

  v12 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  *&v63 = v49;
  *(&v63 + 1) = __PAIR64__(v46, v9);
  LODWORD(v64) = v12;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ArchivedDisplayList and conformance ArchivedDisplayList();
  v13 = Attribute.init<A>(body:value:flags:update:)();

  AGGraphGetFlags();
  AGGraphSetFlags();
  *&v68[4] = v11 | 0x10;
  LODWORD(v63) = *(v10 + 16);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _ViewInputs.EnvironmentTransform and conformance _ViewInputs.EnvironmentTransform();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  *v65 = *v68;
  *&v65[16] = *&v68[16];
  *&v65[32] = *&v68[32];
  *&v65[48] = *&v68[48];
  v63 = v66;
  v64 = v67;
  v14 = AGSubgraphGetCurrent();
  if (!v14)
  {
    __break(1u);
  }

  v15 = v14;
  v16 = *MEMORY[0x1E698D3F8];
  type metadata accessor for MutableBox<DisplayList.HostedViewState>(0, &lazy cache variable for type metadata for MutableBox<DisplayList.HostedViewState>, &type metadata for DisplayList.HostedViewState, MEMORY[0x1E697DAC0]);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 20) = v13;
  *(v17 + 24) = v15;
  v18 = *&v65[16];
  *(v17 + 64) = *v65;
  *(v17 + 80) = v18;
  *(v17 + 96) = *&v65[32];
  *(v17 + 112) = *&v65[48];
  v19 = v64;
  *(v17 + 32) = v63;
  *(v17 + 48) = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *(v17 + 120) = MEMORY[0x1E69E7CC8];
  *(v17 + 128) = v20;
  *(v17 + 136) = 0;
  *&v51 = v17;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v63, &v57);
  lazy protocol witness table accessor for type DisplayList.HostedViews and conformance DisplayList.HostedViews();
  v21 = Attribute.init<A>(body:value:flags:update:)();

  v22 = 0;
  if ((v8 | v47))
  {
    LODWORD(v57) = v21;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type DisplayList.HostedViews.SplicedDisplayList and conformance DisplayList.HostedViews.SplicedDisplayList();
    v22 = Attribute.init<A>(body:value:flags:update:)();
    if (v8)
    {
      LOBYTE(v57) = 0;
      PreferencesOutputs.subscript.setter();
      LODWORD(v57) = v21;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for MutableBox<DisplayList.HostedViewState>(0, &lazy cache variable for type metadata for [ArchivedViewState], &type metadata for ArchivedViewState, MEMORY[0x1E69E62F8]);
      type metadata accessor for DisplayList.HostedViews.Preference<ArchivedViewStatesKey>(0, &lazy cache variable for type metadata for DisplayList.HostedViews.Preference<ArchivedViewStatesKey>, &type metadata for ArchivedViewStatesKey, &protocol witness table for ArchivedViewStatesKey, type metadata accessor for DisplayList.HostedViews.Preference);
      lazy protocol witness table accessor for type DisplayList.HostedViews.Preference<ArchivedViewStatesKey> and conformance DisplayList.HostedViews.Preference<A>();
      *&v57 = __PAIR64__(Attribute.init<A>(body:value:flags:update:)(), v46);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for InterpolatableArchiveContent(0);
      lazy protocol witness table accessor for type InterpolatableArchiveContent.Init and conformance InterpolatableArchiveContent.Init();
      Attribute.init<A>(body:value:flags:update:)();
      v59 = v71;
      v60 = v72;
      v61 = v73;
      v62 = v74;
      v57 = v69;
      v58 = v70;
      lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type InterpolatableArchiveContent and conformance InterpolatableArchiveContent, type metadata accessor for InterpolatableArchiveContent, protocol conformance descriptor for InterpolatableArchiveContent);
      _ViewOutputs.applyInterpolatorGroup<A>(_:content:inputs:animatesSize:defersRender:)();
    }
  }

  v44 = v22;
  *&v57 = v6;
  DWORD2(v57) = v7;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v57 = v69;
    v58 = v70;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v57 = v69;
    v58 = v70;
    v24 = _ViewInputs.animatedPosition()();
    v25 = HIDWORD(v72);
    type metadata accessor for DisplayList.HostedViewResponder(0);
    v26 = swift_allocObject();
    v26[28] = 0;
    v26[29] = 0;
    v26[27] = 0;
    outlined init with copy of _ViewInputs(&v69, &v57);
    ViewTransform.init()();
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v57 = v69;
    v58 = v70;
    v27 = DefaultLayoutViewResponder.init(inputs:)();
    *&v57 = __PAIR64__(v23, v21);
    *(&v57 + 1) = __PAIR64__(v25, v24);
    *&v58 = v27;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type DisplayList.HostedViews.ResponderFilter and conformance DisplayList.HostedViews.ResponderFilter();
    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v57) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v28 = DWORD2(v70);
  if ((BYTE4(v71) & 2) != 0)
  {
    LODWORD(v57) = v46;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ArchivedLayoutComputer and conformance ArchivedLayoutComputer();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v57) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  if ((v47 & 1) == 0)
  {
    goto LABEL_15;
  }

  v48 = v28;
  v59 = v71;
  v60 = v72;
  v61 = v73;
  v62 = v74;
  v57 = v69;
  v58 = v70;
  v29 = _ViewInputs.accessibilityEnabled.getter();
  v30 = _ViewInputs.animatedPosition()();
  v53 = v71;
  v54 = v72;
  v55 = v73;
  v56 = v74;
  v51 = v69;
  v52 = v70;
  swift_beginAccess();
  v31 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
LABEL_23:
    __break(1u);
    return;
  }

  swift_getObjectType();
  v33 = swift_conformsToProtocol2();
  if (!v33)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v34 = v33;
  v35 = HIDWORD(v72);
  type metadata accessor for DisplayList.AccessibilityUpdater();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + 48) = MEMORY[0x1E69E7CC8];
  *(v36 + 56) = 0;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakAssign();
  DisplayList.AccessibilityUpdater.createRoot()();
  swift_unknownObjectRelease();
  *&v51 = __PAIR64__(v29, v44);
  *(&v51 + 1) = __PAIR64__(v30, v48);
  LODWORD(v52) = v31;
  *(&v52 + 4) = v35;
  *&v53 = v36;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ArchivedAccessibilityAttachment and conformance ArchivedAccessibilityAttachment();
  Attribute.init<A>(body:value:flags:update:)();

  LOBYTE(v51) = 0;
  PreferencesOutputs.subscript.setter();
LABEL_15:
  v37 = *(v6 + 16);
  if (v37)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v38 = -v37;
    v39 = 1;
    do
    {
      v40 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v42 = *v41;
      v43 = *(v41 + 8);
      v40(&v57, 0);
      specialized makePreference #1 <A>(key:) in static _ArchivedView._makeView(view:inputs:)(v42, v21, v50, v42, v43);
      ++v39;
    }

    while (v38 + v39 != 1);
  }

  else
  {
  }

  v59 = *v68;
  v60 = *&v68[16];
  v61 = *&v68[32];
  v62 = *&v68[48];
  v57 = v66;
  v58 = v67;
  outlined destroy of _ViewInputs(&v57);
  swift_beginAccess();
  *v45 = v50[0];
  v45[1] = v50[1];
}

unint64_t lazy protocol witness table accessor for type DisplayList.HostedViews and conformance DisplayList.HostedViews()
{
  result = lazy protocol witness table cache variable for type DisplayList.HostedViews and conformance DisplayList.HostedViews;
  if (!lazy protocol witness table cache variable for type DisplayList.HostedViews and conformance DisplayList.HostedViews)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayList.HostedViews, &type metadata for DisplayList.HostedViews, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.HostedViews and conformance DisplayList.HostedViews);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.HostedViews.SplicedDisplayList and conformance DisplayList.HostedViews.SplicedDisplayList()
{
  result = lazy protocol witness table cache variable for type DisplayList.HostedViews.SplicedDisplayList and conformance DisplayList.HostedViews.SplicedDisplayList;
  if (!lazy protocol witness table cache variable for type DisplayList.HostedViews.SplicedDisplayList and conformance DisplayList.HostedViews.SplicedDisplayList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayList.HostedViews.SplicedDisplayList, &type metadata for DisplayList.HostedViews.SplicedDisplayList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.HostedViews.SplicedDisplayList and conformance DisplayList.HostedViews.SplicedDisplayList);
  }

  return result;
}

uint64_t sub_18C0710C0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void DisplayList.AccessibilityUpdater.createRoot()()
{
  v1 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 32);
    v3 = objc_allocWithZone(type metadata accessor for AccessibilityNode());
    v4 = swift_unknownObjectRetain();
    v5 = specialized AccessibilityNode.init(viewRendererHost:isFromDisplayList:)(v4, v2, 1);
    swift_unknownObjectRelease();
    AccessibilityProperties.init()();
    v21 = 0x200000002;
    v22 = 0;
    static AccessibilityAttachment.properties(_:)();
    AccessibilityNode.scheduleNotifyForAttachmentAddition(of:)(v19);
    outlined init with copy of AccessibilityAttachment(v19, v14);
    v15 = 0;
    v17 = 0;
    v18 = -1;
    v16 = 0;
    outlined init with copy of AccessibilityAttachmentStorage(v14, __src);
    v6 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v7 = *&v5[v6];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v5[v6] = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      *&v5[v6] = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    memcpy(&v7[320 * v10 + 32], __src, 0x13DuLL);
    *&v5[v6] = v7;
    swift_endAccess();
    swift_unknownObjectRelease();
    outlined destroy of AccessibilityAttachmentStorage(v14);
    outlined destroy of AccessibilityAttachment(v19);
    outlined destroy of AccessibilityProperties(v20);
    memset(__src, 0, 296);
    v11 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
    swift_beginAccess();
    outlined assign with copy of AccessibilityAttachment?(__src, &v5[v11]);
    swift_endAccess();
    outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    v5[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
    v12 = *(v1 + 40);
    *(v1 + 40) = v5;
  }
}

id specialized AccessibilityNode.init(viewRendererHost:isFromDisplayList:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  UniqueID.init()();
  *&v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_version] = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_viewRendererHost];
  *&v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_viewRendererHost + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_source];
  *v9 = 0;
  v9[4] = 1;
  v10 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_isFromDisplayList;
  v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_isFromDisplayList] = 0;
  v11 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment;
  EnvironmentValues.init()();
  v12 = *&v4[v11];
  if (one-time initialization token for configuredForPlatform != -1)
  {
    swift_once();
  }

  if (!v12)
  {
    if (!static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!static EnvironmentValues.configuredForPlatform || v12 != static EnvironmentValues.configuredForPlatform)
  {
LABEL_8:
    if (*&v4[v11])
    {
      EnvironmentValues._configureForPlatform(traitCollection:)(0);
    }

    else
    {

      EnvironmentValues.plist.setter();
    }
  }

LABEL_11:
  *&v4[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage] = v7;
  v13 = &v4[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  *(v13 + 5) = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 7) = 0u;
  *(v13 + 8) = 0u;
  *(v13 + 9) = 0u;
  *(v13 + 10) = 0u;
  *(v13 + 11) = 0u;
  *(v13 + 12) = 0u;
  *(v13 + 13) = 0u;
  *(v13 + 14) = 0u;
  *(v13 + 15) = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 17) = 0u;
  *(v13 + 36) = 0;
  v4[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
  v14 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformRotorStorage;
  *&v4[v14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So26UIAccessibilityCustomRotorCTt0g5Tf4g_n(v7);
  v4[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedIsPlaceholderOrIgnored] = 2;
  *&v4[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope] = 0;
  *(v8 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v4[v10] = a3 & 1;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AccessibilityNode();
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So26UIAccessibilityCustomRotorCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, UIAccessibilityCustomRotor>(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

Swift::Void __swiftcall DisplayList.HostedViews.updateValue()()
{
  v63 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  v3 = CurrentAttribute;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 64);
  v47[2] = *(v1 + 48);
  v47[3] = v6;
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  *(v48 + 12) = *(v1 + 124);
  v47[5] = v8;
  v48[0] = v9;
  v47[4] = v7;
  v47[0] = v4;
  v47[1] = v5;
  v10 = *(v1 + 20);
  v11 = *(v1 + 36);
  v12 = *(v1 + 68);
  v51 = *(v1 + 52);
  v52 = v12;
  v49 = v10;
  v50 = v11;
  v13 = *(v1 + 84);
  v14 = *(v1 + 100);
  v15 = *(v1 + 116);
  v56 = *(v1 + 132);
  v54 = v14;
  v55 = v15;
  v53 = v13;
  v16 = *(v1 + 16);
  v17 = *(v1 + 32);
  v18 = *(v1 + 64);
  v57[2] = *(v1 + 48);
  v57[3] = v18;
  v57[0] = v16;
  v57[1] = v17;
  v19 = *(v1 + 80);
  v20 = *(v1 + 96);
  v21 = *(v1 + 112);
  *(v58 + 12) = *(v1 + 124);
  v57[5] = v20;
  v58[0] = v21;
  v57[4] = v19;
  *(v1 + 16) = v3;
  v22 = v49;
  v23 = v50;
  v24 = v51;
  *(v1 + 68) = v52;
  *(v1 + 52) = v24;
  *(v1 + 36) = v23;
  *(v1 + 20) = v22;
  v25 = v53;
  v26 = v54;
  v27 = v55;
  *(v1 + 132) = v56;
  *(v1 + 116) = v27;
  *(v1 + 100) = v26;
  *(v1 + 84) = v25;
  outlined init with copy of DisplayList.HostedViewState(v47, v61);
  outlined destroy of DisplayList.HostedViewState(v57);
  v28 = *(v1 + 16);
  v29 = *(v1 + 32);
  v30 = *(v1 + 64);
  v59[2] = *(v1 + 48);
  v59[3] = v30;
  v31 = *(v1 + 80);
  v32 = *(v1 + 96);
  v33 = *(v1 + 112);
  *(v60 + 12) = *(v1 + 124);
  v59[5] = v32;
  v60[0] = v33;
  v59[4] = v31;
  v59[0] = v28;
  v59[1] = v29;
  v42 = *(v1 + 48);
  v43 = *(v1 + 64);
  v40 = *(v1 + 16);
  v41 = *(v1 + 32);
  *&v46[12] = *(v1 + 124);
  v45 = *(v1 + 96);
  *v46 = *(v1 + 112);
  v44 = *(v1 + 80);
  outlined init with copy of DisplayList.HostedViewState(v59, v61);
  LOBYTE(v3) = DisplayList.HostedViewState.update()();
  v34 = *(v1 + 16);
  v35 = *(v1 + 32);
  v36 = *(v1 + 64);
  v61[2] = *(v1 + 48);
  v61[3] = v36;
  v37 = *(v1 + 80);
  v38 = *(v1 + 96);
  v39 = *(v1 + 112);
  *&v62[12] = *(v1 + 124);
  v61[5] = v38;
  *v62 = v39;
  v61[4] = v37;
  v61[0] = v34;
  v61[1] = v35;
  *(v1 + 16) = v40;
  *(v1 + 32) = v41;
  *(v1 + 48) = v42;
  *(v1 + 64) = v43;
  *(v1 + 124) = *&v46[12];
  *(v1 + 96) = v45;
  *(v1 + 112) = *v46;
  *(v1 + 80) = v44;
  outlined destroy of DisplayList.HostedViewState(v61);
  if ((v3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }
}

uint64_t outlined destroy of _ArchivedView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ArchivedLayoutComputer.updateValue()()
{
  type metadata accessor for _ArchivedView(0);
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = *(Value + 8);
  v4 = *Value == *(v0 + 8) && v3 == *(v0 + 16);
  if (!v4 || (result = AGGraphGetOutputValue()) == 0)
  {
    lazy protocol witness table accessor for type ArchivedLayoutComputer and conformance ArchivedLayoutComputer();
    lazy protocol witness table accessor for type ArchivedLayoutComputer.Engine and conformance ArchivedLayoutComputer.Engine();
    result = StatefulRule<>.update<A>(to:)();
    *(v0 + 8) = v2;
    *(v0 + 16) = v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivedLayoutComputer.Engine and conformance ArchivedLayoutComputer.Engine()
{
  result = lazy protocol witness table cache variable for type ArchivedLayoutComputer.Engine and conformance ArchivedLayoutComputer.Engine;
  if (!lazy protocol witness table cache variable for type ArchivedLayoutComputer.Engine and conformance ArchivedLayoutComputer.Engine)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedLayoutComputer.Engine, &unk_1EFFC5F78, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedLayoutComputer.Engine and conformance ArchivedLayoutComputer.Engine);
  }

  return result;
}

void DisplayList.HostedViewState.updateViews(in:index:archive:position:state:)(_WORD *a1, uint64_t *a2, uint64_t a3, __int128 *a4, double a5, double a6)
{
  v7 = v6;
  v14 = MEMORY[0x1E69E6720];
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v186 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v171 - v21;
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], v14);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v176 = &v171 - v27;
  v177 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v180 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v179 = (&v171 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v178 = &v171 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v188 = (&v171 - v34);
  if ((a1[4] & 2) == 0)
  {
    return;
  }

  v35 = *a1;
  v194 = *(*a1 + 16);
  if (!v194)
  {
    return;
  }

  v172 = v25;
  v174 = v22;
  v193 = v35 + 32;

  v37 = 0;
  v181 = a3;
  v187 = v19;
  v192 = v7;
  v38 = v36;
  v190 = v36;
  do
  {
    v39 = (v193 + 80 * v37);
    v220 = *v39;
    v40 = v39[1];
    v41 = v39[2];
    v42 = v39[3];
    *&v223[12] = *(v39 + 60);
    v222 = v41;
    *v223 = v42;
    v221 = v40;
    LODWORD(v199) = *&v223[24];
    outlined init with copy of DisplayList.Item(&v220, &v211);
    DisplayList.Index.enter(identity:)();
    v196 = v211;
    v195 = v212;
    v213 = v222;
    v214[0] = *v223;
    *(v214 + 12) = *&v223[12];
    v211 = v220;
    v212 = v221;
    DisplayList.Item.frame.getter();
    v45 = v43 + a5;
    v46 = v44 + a6;
    v47 = *(&v222 + 1);
    v48 = *&v223[16];
    v49 = *&v223[16] >> 30;
    if (*&v223[16] >> 30 <= 1u)
    {
      if (!v49)
      {
        if (*(&v222 + 1) >> 60 != 13)
        {
          if (*(&v222 + 1) >> 60 == 11)
          {
            v50 = *((*(&v222 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v51 = *((*(&v222 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            *&v211 = *((*(&v222 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            WORD4(v211) = v50;
            HIDWORD(v211) = v51;
            DisplayList.HostedViewState.updateViews(in:index:archive:position:state:)(&v211, a2, a3, a4, v43 + a5, v44 + a6);
          }

          goto LABEL_78;
        }

        outlined init with copy of _Benchmark((*(&v222 + 1) & 0xFFFFFFFFFFFFFFFLL) + 16, v197);
        v66 = *a2;
        v67 = v174;
        _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(a3, v174, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
        v68 = type metadata accessor for DisplayList.ArchiveIDs();
        if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
        {
          outlined init with copy of DisplayList.Item(&v220, &v211);
          outlined init with copy of DisplayList.Item(&v220, &v211);
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(v67, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
          v69 = 1;
          v70 = v176;
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v220, &v211);
          outlined init with copy of DisplayList.Item(&v220, &v211);
          v70 = v176;
          DisplayList.ArchiveIDs.uuid.getter();
          _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v67, MEMORY[0x1E697DC50]);
          v69 = 0;
        }

        v87 = type metadata accessor for UUID();
        v88 = *(*(v87 - 8) + 56);
        v88(v70, v69, 1, v87);
        v89 = *(v177 + 24);
        v90 = v188;
        v88(v188 + v89, 1, 1, v87);
        *v90 = v66;
        outlined assign with take of UUID?(v70, v90 + v89);
        v91 = v192;
        v92 = *(v192 + 80);
        v227[4] = *(v192 + 64);
        v227[5] = v92;
        v228[0] = *(v192 + 96);
        *(v228 + 12) = *(v192 + 108);
        v93 = *(v192 + 16);
        v227[0] = *v192;
        v227[1] = v93;
        v94 = *(v192 + 48);
        v227[2] = *(v192 + 32);
        v227[3] = v94;
        v95 = *a4;
        v96 = a4[1];
        v97 = a4[3];
        v201 = a4[2];
        v202 = v97;
        v199 = v95;
        v200 = v96;
        outlined init with copy of DisplayList.HostedViewState(v227, &v211);
        outlined init with copy of DisplayList.HostedViewState.InheritedState(&v199, &v211);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = *(v91 + 104);
        *&v211 = v99;
        v101 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
        v102 = v99[2];
        v103 = (v100 & 1) == 0;
        v104 = v102 + v103;
        if (__OFADD__(v102, v103))
        {
          goto LABEL_87;
        }

        v105 = v100;
        if (v99[3] < v104)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v104, isUniquelyReferenced_nonNull_native);
          v99 = v211;
          v106 = specialized __RawDictionaryStorage.find<A>(_:)(v188);
          v7 = v192;
          if ((v105 & 1) != (v107 & 1))
          {
            goto LABEL_91;
          }

          v101 = v106;
          *(v192 + 104) = v99;
          if (v105)
          {
            goto LABEL_44;
          }

LABEL_42:
          *&v211 = 0;
          DWORD2(v211) = 0;
          *(&v213 + 1) = MEMORY[0x1E697E9A0];
          *&v214[0] = MEMORY[0x1E697E998];
          static ViewSize.zero.getter();
          ViewTransform.init()();
          EnvironmentValues.init()();
          *(&v219[1] + 8) = 0u;
          *(v219 + 8) = 0u;
          v99[(v101 >> 6) + 8] |= 1 << v101;
          outlined init with copy of DisplayList.HostedViewState.Key(v188, v99[6] + *(v180 + 72) * v101, type metadata accessor for DisplayList.HostedViewState.Key);
          v109 = v99[7] + 184 * v101;
          *v109 = v211;
          *(v109 + 16) = v212;
          *(v109 + 32) = v213;
          *(v109 + 48) = v214[0];
          *(v109 + 112) = v217;
          *(v109 + 96) = v216;
          *(v109 + 80) = v215;
          *(v109 + 64) = v214[1];
          *(v109 + 176) = *&v219[2];
          *(v109 + 160) = v219[1];
          *(v109 + 144) = v219[0];
          *(v109 + 128) = v218;
          v110 = v99[2];
          v111 = __OFADD__(v110, 1);
          v112 = v110 + 1;
          if (v111)
          {
            goto LABEL_89;
          }

          v99[2] = v112;
          goto LABEL_44;
        }

        v7 = v192;
        if (isUniquelyReferenced_nonNull_native)
        {
          *(v192 + 104) = v99;
          if ((v100 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v99 = v211;
          *(v7 + 104) = v211;
          if ((v105 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

LABEL_44:
        v113 = v99[7] + 184 * v101;
        if (!*(v113 + 152))
        {
          v114 = AGSubgraphGetGraph();
          v115 = AGSubgraphCreate();

          AGSubgraphAddChild();
          v116 = *(v113 + 152);
          *(v113 + 152) = v115;
          v117 = v115;

          AGGraphClearUpdate();
          v118 = AGSubgraphGetCurrent();
          AGSubgraphSetCurrent();
          closure #1 in DisplayList.HostedViewState.updateView(_:key:factory:item:position:state:)(v227, v188, v113);
          AGSubgraphSetCurrent();

          AGGraphSetUpdate();
          LOBYTE(v211) = 17;
          *(swift_allocObject() + 16) = v117;
          v119 = v117;
          static Update.enqueueAction(reason:_:)();
        }

        v191 = *&v228[1];
        v120 = v199;
        v189 = *(&v202 + 1);
        v185 = v202;
        v183 = v201;
        v184 = v200;
        *v113 = v222;
        *(v113 + 8) = DWORD2(v228[1]);
        __swift_assign_boxed_opaque_existential_1((v113 + 16), v197);
        v213 = v222;
        v214[0] = *v223;
        *(v214 + 12) = *&v223[12];
        v211 = v220;
        v212 = v221;
        DisplayList.Item.frame.getter();
        static ViewSize.fixed(_:)();
        v121 = v210;
        *(v113 + 56) = v209;
        *(v113 + 72) = v121;
        v122 = v113 + 88;
        *v122 = v120;
        v123 = v183;
        *(v122 + 16) = v184;
        *(v122 + 32) = v123;

        ViewTransform.resetPosition(_:)(__PAIR128__(*&v46, *&v45));
        v124 = v189;
        *(v122 + 48) = v185;
        *(v122 + 56) = v124;

        v125 = v191;

        outlined destroy of DisplayList.HostedViewState(v227);
        outlined destroy of DisplayList.HostedViewState.InheritedState(&v199);
        outlined init with copy of DisplayList.HostedViewState.Key(v188, v178, type metadata accessor for DisplayList.HostedViewState.Key);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125[2] + 1, 1, v125);
        }

        a3 = v181;
        v38 = v190;
        v127 = v125[2];
        v126 = v125[3];
        v128 = v125;
        if (v127 >= v126 >> 1)
        {
          v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v125);
        }

        outlined destroy of DisplayList.Item(&v220);
        __swift_destroy_boxed_opaque_existential_1(v197);
        v128[2] = v127 + 1;
        outlined init with take of DisplayList.ArchiveIDs(v178, v128 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v127, type metadata accessor for DisplayList.HostedViewState.Key);
        *(v7 + 112) = v128;
        _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v188, type metadata accessor for DisplayList.HostedViewState.Key);
        outlined destroy of DisplayList.Item(&v220);
        v19 = v187;
        goto LABEL_78;
      }

      v191 = *&v223[8];
      v57 = v223[4];
      _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(a3, v19, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
      if (v57 <= 8)
      {
        if (v57 == 1)
        {
          v86 = swift_projectBox();
          outlined init with copy of DisplayList.Item(&v220, &v211);
          v65 = v191;

          outlined assign with copy of DisplayList.ArchiveIDs?(v86, v19);
        }

        else
        {
          if (v57 != 7)
          {
LABEL_37:
            outlined init with copy of DisplayList.Item(&v220, &v211);
            v65 = v191;

            goto LABEL_38;
          }

          v62 = *(v47 + 24);
          v63 = *(v47 + 28);
          *&v199 = *(v47 + 16);
          WORD4(v199) = v62;
          HIDWORD(v199) = v63;
          v189 = MEMORY[0x1E697DC50];
          v64 = v186;
          _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v19, v186, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
          outlined init with copy of DisplayList.Item(&v220, &v211);
          v65 = v191;

          DisplayList.HostedViewState.updateViews(in:index:archive:position:state:)(&v199, a2, v64, a4, v45, v46);
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(v64, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v189, MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
        }

LABEL_38:
        v185 = 0;
        *&v184 = 0;
        v85 = 0uLL;
        v183 = 0u;
        v189 = 1;
        goto LABEL_39;
      }

      if (v57 != 9)
      {
        if (v57 == 12)
        {
          v185 = *(v47 + 16);
          v77 = *(v47 + 28);
          v78 = *(v47 + 24);
          v189 = v78 | (v77 << 32);
          v79 = *(v47 + 30);
          v80 = *(v47 + 31);
          *&v184 = *(v47 + 32);
          v81 = *(v47 + 40);
          v83 = *(a4 + 6);
          v82 = *(a4 + 7);
          v84 = *(v47 + 29);
          *&v199 = v185;
          BYTE12(v199) = v77;
          DWORD2(v199) = v78;
          BYTE13(v199) = v84;
          BYTE14(v199) = v79;
          HIBYTE(v199) = v80;
          *&v200 = v184;
          DWORD2(v200) = v81;
          outlined init with copy of DisplayList.Item(&v220, &v211);
          v65 = v191;

          outlined copy of ContentTransition.Storage(v185, v189, v84);
          v185 = v82;

          v189 = v83;

          EnvironmentValues.contentTransitionState.setter();
          *&v184 = 0;
          v85 = 0uLL;
          v183 = 0u;
LABEL_39:
          v108 = 1;
          v182 = v85;
LABEL_73:
          *&v211 = v65;
          WORD4(v211) = v48;
          HIDWORD(v211) = HIDWORD(v48);
          v165 = MEMORY[0x1E697DC50];
          v166 = v186;
          _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v19, v186, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
          DisplayList.HostedViewState.updateViews(in:index:archive:position:state:)(&v211, a2, v166, a4, v45, v46);
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(v166, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v165, MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
          outlined destroy of DisplayList.Item(&v220);

          if (v108 != 1)
          {

            v167 = v184;
            *a4 = v108;
            *(a4 + 1) = v167;
            v168 = v182;
            a4[1] = v183;
            a4[2] = v168;
          }

          v169 = v189;
          v38 = v190;
          if (v189 != 1)
          {

            v170 = v185;
            *(a4 + 6) = v169;
            *(a4 + 7) = v170;
          }

          v19 = v187;
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(v187, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
          a3 = v181;
          v7 = v192;
          goto LABEL_78;
        }

        if (v57 == 13)
        {
          outlined init with copy of _Benchmark(v47 + 16, v197);
          v58 = *a2;
          v59 = type metadata accessor for DisplayList.ArchiveIDs();
          if ((*(*(v59 - 8) + 48))(v19, 1, v59))
          {
            v60 = type metadata accessor for UUID();
            v61 = v172;
            (*(*(v60 - 8) + 56))(v172, 1, 1, v60);
            outlined init with copy of DisplayList.Item(&v220, &v211);
          }

          else
          {
            outlined init with copy of DisplayList.Item(&v220, &v211);

            v61 = v172;
            DisplayList.ArchiveIDs.uuid.getter();
            v60 = type metadata accessor for UUID();
            (*(*(v60 - 8) + 56))(v61, 0, 1, v60);
          }

          v129 = *(v177 + 24);
          type metadata accessor for UUID();
          v130 = v179;
          (*(*(v60 - 8) + 56))(v179 + v129, 1, 1, v60);
          *v130 = v58;
          outlined assign with take of UUID?(v61, v130 + v129);
          v131 = *(v7 + 80);
          v230[4] = *(v7 + 64);
          v230[5] = v131;
          v231[0] = *(v7 + 96);
          *(v231 + 12) = *(v7 + 108);
          v132 = *(v7 + 16);
          v230[0] = *v7;
          v230[1] = v132;
          v133 = *(v7 + 48);
          v230[2] = *(v7 + 32);
          v230[3] = v133;
          v134 = *a4;
          v135 = a4[1];
          v136 = a4[3];
          v201 = a4[2];
          v202 = v136;
          v199 = v134;
          v200 = v135;
          outlined init with copy of DisplayList.HostedViewState(v230, &v211);
          outlined init with copy of DisplayList.HostedViewState.InheritedState(&v199, &v211);
          v137 = swift_isUniquelyReferenced_nonNull_native();
          *&v211 = *(v7 + 104);
          v138 = v211;
          v140 = specialized __RawDictionaryStorage.find<A>(_:)(v130);
          v141 = v138[2];
          v142 = (v139 & 1) == 0;
          v143 = v141 + v142;
          if (__OFADD__(v141, v142))
          {
            goto LABEL_88;
          }

          v144 = v139;
          if (v138[3] < v143)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v143, v137);
            v138 = v211;
            v145 = specialized __RawDictionaryStorage.find<A>(_:)(v179);
            if ((v144 & 1) != (v146 & 1))
            {
              goto LABEL_91;
            }

            v140 = v145;
            *(v7 + 104) = v138;
            if (v144)
            {
              goto LABEL_62;
            }

LABEL_60:
            *&v211 = 0;
            DWORD2(v211) = 0;
            *(&v213 + 1) = MEMORY[0x1E697E9A0];
            *&v214[0] = MEMORY[0x1E697E998];
            static ViewSize.zero.getter();
            ViewTransform.init()();
            EnvironmentValues.init()();
            *(&v219[1] + 8) = 0u;
            *(v219 + 8) = 0u;
            v138[(v140 >> 6) + 8] |= 1 << v140;
            outlined init with copy of DisplayList.HostedViewState.Key(v179, v138[6] + *(v180 + 72) * v140, type metadata accessor for DisplayList.HostedViewState.Key);
            v147 = v138[7] + 184 * v140;
            *v147 = v211;
            *(v147 + 16) = v212;
            *(v147 + 32) = v213;
            *(v147 + 48) = v214[0];
            *(v147 + 112) = v217;
            *(v147 + 96) = v216;
            *(v147 + 80) = v215;
            *(v147 + 64) = v214[1];
            *(v147 + 176) = *&v219[2];
            *(v147 + 160) = v219[1];
            *(v147 + 144) = v219[0];
            *(v147 + 128) = v218;
            v148 = v138[2];
            v111 = __OFADD__(v148, 1);
            v149 = v148 + 1;
            if (v111)
            {
              goto LABEL_90;
            }

            v138[2] = v149;
            goto LABEL_62;
          }

          if (v137)
          {
            *(v7 + 104) = v138;
            if ((v139 & 1) == 0)
            {
              goto LABEL_60;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v138 = v211;
            *(v7 + 104) = v211;
            if ((v144 & 1) == 0)
            {
              goto LABEL_60;
            }
          }

LABEL_62:
          v150 = v138[7] + 184 * v140;
          if (!*(v150 + 152))
          {
            v151 = AGSubgraphGetGraph();
            v152 = AGSubgraphCreate();

            AGSubgraphAddChild();
            v153 = *(v150 + 152);
            *(v150 + 152) = v152;
            v154 = v152;

            AGGraphClearUpdate();
            v155 = AGSubgraphGetCurrent();
            AGSubgraphSetCurrent();
            closure #1 in DisplayList.HostedViewState.updateView(_:key:factory:item:position:state:)(v230, v179, v150);
            AGSubgraphSetCurrent();

            AGGraphSetUpdate();
            LOBYTE(v211) = 17;
            *(swift_allocObject() + 16) = v154;
            v156 = v154;
            static Update.enqueueAction(reason:_:)();
          }

          v189 = *&v231[1];
          v157 = *(&v199 + 1);
          *&v183 = v199;
          v185 = *(&v202 + 1);
          *&v184 = v202;
          v182 = v200;
          v173 = v201;
          *v150 = v222;
          *(v150 + 8) = DWORD2(v231[1]);
          __swift_assign_boxed_opaque_existential_1((v150 + 16), v197);
          v213 = v222;
          v214[0] = *v223;
          *(v214 + 12) = *&v223[12];
          v211 = v220;
          v212 = v221;
          DisplayList.Item.frame.getter();
          static ViewSize.fixed(_:)();
          v158 = v210;
          *(v150 + 56) = v209;
          *(v150 + 72) = v158;
          v159 = v150 + 88;
          *v159 = v183;
          *(v159 + 8) = v157;
          v160 = v173;
          *(v159 + 16) = v182;
          *(v159 + 32) = v160;

          ViewTransform.resetPosition(_:)(__PAIR128__(*&v46, *&v45));
          v161 = v185;
          *(v159 + 48) = v184;
          *(v159 + 56) = v161;

          v162 = v189;

          outlined destroy of DisplayList.HostedViewState(v230);
          outlined destroy of DisplayList.HostedViewState.InheritedState(&v199);
          outlined init with copy of DisplayList.HostedViewState.Key(v179, v175, type metadata accessor for DisplayList.HostedViewState.Key);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v162[2] + 1, 1, v162);
          }

          v164 = v162[2];
          v163 = v162[3];
          if (v164 >= v163 >> 1)
          {
            v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v163 > 1), v164 + 1, 1, v162);
          }

          __swift_destroy_boxed_opaque_existential_1(v197);
          v162[2] = v164 + 1;
          outlined init with take of DisplayList.ArchiveIDs(v175, v162 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v164, type metadata accessor for DisplayList.HostedViewState.Key);
          *(v7 + 112) = v162;
          _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v179, type metadata accessor for DisplayList.HostedViewState.Key);
          v185 = 0;
          *&v184 = 0;
          v182 = 0u;
          v183 = 0u;
          v189 = 1;
          v108 = 1;
          v19 = v187;
          v65 = v191;
          goto LABEL_73;
        }

        goto LABEL_37;
      }

      v71 = *(v47 + 64);
      v206 = *(v47 + 48);
      v207 = v71;
      v208 = *(v47 + 80);
      v72 = *(v47 + 32);
      v204 = *(v47 + 16);
      v205 = v72;
      v73 = *(v47 + 88);
      v74 = *a4;
      v75 = *(a4 + 1);
      v76 = a4[1];
      v182 = a4[2];
      v183 = v76;
      outlined init with copy of DisplayList.Item(&v220, &v211);

      v65 = v191;

      *&v173 = v74;

      ViewTransform.resetPosition(_:)(__PAIR128__(*&v46, *&v45));
      v213 = v206;
      v214[0] = v207;
      *&v214[1] = v208;
      v211 = v204;
      v212 = v205;
      BYTE8(v214[1]) = v73;
      DisplayList.Transform.affineTransform.getter();
      *&v184 = v75;
      if (v225)
      {
        if (v73 > 1)
        {
          if (v73 != 2)
          {
            v197[2] = v206;
            v197[3] = v207;
            v198 = v208;
            v197[0] = v204;
            v197[1] = v205;
            _Rotation3DEffect.Data.transform.getter();
            goto LABEL_71;
          }
        }

        else if (v73)
        {
          v201 = v206;
          v202 = v207;
          v203 = v208;
          v199 = v204;
          v200 = v205;
LABEL_71:
          v228[4] = v201;
          v228[5] = v202;
          v229 = v203;
          v228[3] = v200;
          v228[2] = v199;
          ViewTransform.appendProjectionTransform(_:inverse:)();
        }
      }

      else
      {
        v226 = v224;
        ViewTransform.appendAffineTransform(_:inverse:)(&v226, 1);
      }

      v185 = 0;
      v45 = 0.0;
      v46 = 0.0;
      v189 = 1;
      v19 = v187;
      v108 = v173;
      goto LABEL_73;
    }

    if (v49 == 2)
    {
      v52 = *(*(&v222 + 1) + 16);
      if (v52)
      {
        outlined init with copy of DisplayList.Item(&v220, &v211);
        v53 = (v47 + 68);
        do
        {
          v54 = *(v53 - 3);
          v55 = *(v53 - 2);
          v56 = *v53;
          v53 += 10;
          *&v211 = v54;
          WORD4(v211) = v55;
          HIDWORD(v211) = v56;
          DisplayList.HostedViewState.updateViews(in:index:archive:position:state:)(&v211, a2, a3, a4, v45, v46);
          --v52;
        }

        while (v52);
        outlined destroy of DisplayList.Item(&v220);
        v38 = v190;
      }
    }

LABEL_78:
    ++v37;
    v211 = v196;
    LOBYTE(v212) = v195;
    DisplayList.Index.leave(index:)();
    outlined destroy of DisplayList.Item(&v220);
    if (v37 == v194)
    {

      return;
    }
  }

  while (v37 < *(v38 + 16));
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_18C073258()
{

  return swift_deallocObject();
}

char *initializeWithCopy for InterpolatableArchiveContent(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  *&a1[v8] = *&a2[v8];

  return a1;
}

uint64_t destroy for InterpolatableArchiveContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
}

void type metadata accessor for _DictionaryStorage<DisplayList.HostedViewState.Key, DisplayList.HostedViewState.ViewInfo>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<DisplayList.HostedViewState.Key, DisplayList.HostedViewState.ViewInfo>)
  {
    type metadata accessor for DisplayList.HostedViewState.Key(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type DisplayList.HostedViewState.Key and conformance DisplayList.HostedViewState.Key, type metadata accessor for DisplayList.HostedViewState.Key, protocol conformance descriptor for DisplayList.HostedViewState.Key);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.HostedViewState.Key, DisplayList.HostedViewState.ViewInfo>);
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _ArchivedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    return static UUID.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata completion function for InterpolatableArchiveContent(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for (Color, Color)()
{
  if (!lazy cache variable for type metadata for (Color, Color))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Color, Color));
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DisplayList.HostedViews.Preference<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DisplayList.HostedViews.Preference<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.HostedViewState.Child and conformance DisplayList.HostedViewState.Child()
{
  result = lazy protocol witness table cache variable for type DisplayList.HostedViewState.Child and conformance DisplayList.HostedViewState.Child;
  if (!lazy protocol witness table cache variable for type DisplayList.HostedViewState.Child and conformance DisplayList.HostedViewState.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayList.HostedViewState.Child, &unk_1EFFB9770, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.HostedViewState.Child and conformance DisplayList.HostedViewState.Child);
  }

  return result;
}

double destroy for DisplayList.HostedViewState.InheritedState(void *a1)
{

  return result;
}

uint64_t outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for Anchor<CGRect?>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined init with copy of TabSidebarCustomization(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TabSidebarCustomization(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void DisplayList.HostedViewState.reclaim()()
{
  if (*(*(v0 + 104) + 16))
  {

    specialized _NativeDictionary.filter(_:)(v1, v0);
    v3 = v2;
    swift_bridgeObjectRelease_n();
    *(v0 + 104) = v3;
    v4 = *(v0 + 112);
    if (*(v4 + 16) < *(v4 + 24) >> 3)
    {
      v5 = MEMORY[0x1E69E7CC0];
      specialized Array.append<A>(contentsOf:)(v4);
      *(v0 + 112) = v5;
    }
  }
}

void specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI11DisplayListVAHE15HostedViewStateV3KeyVAL0N4InfoVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI11kl6VAIE15mno2V3p7V_AM0M4Q4VTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnPIsgnndzo_Tf1nc_n03_s7iykl6VAAE15mno54V7reclaim33_A20DF47D739D7FD0278716FD8B020A7BLLyyFSbAE3p11V3key_AE0F4Q15V5valuet_tXEfU_ALTf1nnc_n(v9, v6, v4, a2);
      MEMORY[0x18D0110E0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

{
  v3 = a1;
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v7 = v21 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_version;
    while (v12)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v9 << 6);
LABEL_12:
      if (*(*(*(v3 + 56) + 16 * v16) + v14) == a2)
      {
        *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_16:
          specialized _NativeDictionary.extractDictionary(using:count:)(v7, v5, v8, v3);
          return;
        }
      }
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_16;
      }

      v18 = *(v3 + 64 + 8 * v9);
      ++v17;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v9 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI11DisplayListV5IndexV2IDVAjHE20AccessibilityUpdaterC10CacheValue33_F67A5B088801B75514018BB348F773CDLLVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI11kl2V5m12V2IDV_AkIE20op3C10q8Value33_stuvwX8CDLLVTG5ATxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnSIsgnndzo_Tf1nc_n03_s7i4UI11kl6VAAE20op87C6update4list4size9transform15geometryChangedSbAC_So6CGSizeVAA13ViewTransformVSbtFSbAC5m14V2IDV3key_AE10q8Value33_stuvwX19CDLLV5valuet_tXEfU_AJ7VersionVTf1nnc_n(v20, v5, v3, a2);
  MEMORY[0x18D0110E0](v20, -1, -1);
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v51 = a4;
  v45[0] = a2;
  v46 = a1;
  type metadata accessor for (key: DisplayList.HostedViewState.Key, value: DisplayList.HostedViewState.ViewInfo)(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = v45 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v57 = v45 - v13;
  v14 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v17 = 0;
  v52 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v48 = (v21 + 63) >> 6;
  while (v23)
  {
    v24 = __clz(__rbit64(v23));
    v53 = (v23 - 1) & v23;
LABEL_12:
    v27 = v24 | (v17 << 6);
    v28 = v52;
    outlined init with copy of DisplayList.HostedViewState.Key(v52[6] + *(v49 + 72) * v27, v16, type metadata accessor for DisplayList.HostedViewState.Key);
    v29 = v27;
    outlined init with copy of DisplayList.HostedViewState.ViewInfo(v28[7] + 184 * v27, v56);
    v30 = v16;
    v31 = v57;
    outlined init with copy of DisplayList.HostedViewState.Key(v16, v57, type metadata accessor for DisplayList.HostedViewState.Key);
    outlined init with copy of DisplayList.HostedViewState.ViewInfo(v56, v31 + *(v6 + 48));
    v32 = v6;
    v33 = v50;
    outlined init with copy of DisplayList.HostedViewState.Key(v31, v50, type metadata accessor for (key: DisplayList.HostedViewState.Key, value: DisplayList.HostedViewState.ViewInfo));
    v34 = v33 + *(v32 + 48);
    v35 = *(v34 + 8);
    outlined destroy of DisplayList.HostedViewState.ViewInfo(v34);
    LODWORD(v28) = *(v51 + 120);
    _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v33, type metadata accessor for DisplayList.HostedViewState.Key);
    if (v35 == v28)
    {
      _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v31, type metadata accessor for (key: DisplayList.HostedViewState.Key, value: DisplayList.HostedViewState.ViewInfo));
      outlined destroy of DisplayList.HostedViewState.ViewInfo(v56);
      _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v30, type metadata accessor for DisplayList.HostedViewState.Key);
      *(v46 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v44 = __OFADD__(v47++, 1);
      v6 = v32;
      v16 = v30;
      v23 = v53;
      if (v44)
      {
        __break(1u);
LABEL_20:
        specialized _NativeDictionary.extractDictionary(using:count:)(v46, v45[0], v47, v52);
        return;
      }
    }

    else
    {
      v36 = v54;
      outlined init with copy of DisplayList.HostedViewState.Key(v31, v54, type metadata accessor for (key: DisplayList.HostedViewState.Key, value: DisplayList.HostedViewState.ViewInfo));
      v37 = v36 + *(v32 + 48);
      v38 = *(v37 + 152);
      v39 = v38;
      outlined destroy of DisplayList.HostedViewState.ViewInfo(v37);
      v6 = v32;
      if (v38)
      {
        AGSubgraphRef.willRemove()();
      }

      _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v54, type metadata accessor for DisplayList.HostedViewState.Key);
      v40 = v55;
      outlined init with copy of DisplayList.HostedViewState.Key(v57, v55, type metadata accessor for (key: DisplayList.HostedViewState.Key, value: DisplayList.HostedViewState.ViewInfo));
      v41 = v40 + *(v32 + 48);
      v42 = *(v41 + 152);
      v43 = v42;
      outlined destroy of DisplayList.HostedViewState.ViewInfo(v41);
      v16 = v30;
      if (v42)
      {
        AGSubgraphInvalidate();
      }

      _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v57, type metadata accessor for (key: DisplayList.HostedViewState.Key, value: DisplayList.HostedViewState.ViewInfo));
      _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v55, type metadata accessor for DisplayList.HostedViewState.Key);
      outlined destroy of DisplayList.HostedViewState.ViewInfo(v56);
      _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v30, type metadata accessor for DisplayList.HostedViewState.Key);
      v23 = v53;
    }
  }

  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v48)
    {
      goto LABEL_20;
    }

    v26 = v19[v17];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v53 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void type metadata accessor for (key: DisplayList.HostedViewState.Key, value: DisplayList.HostedViewState.ViewInfo)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: DisplayList.HostedViewState.Key, value: DisplayList.HostedViewState.ViewInfo))
  {
    type metadata accessor for DisplayList.HostedViewState.Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: DisplayList.HostedViewState.Key, value: DisplayList.HostedViewState.ViewInfo));
    }
  }
}

void specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v23 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  if (a3)
  {
    if (a4[2] == a3)
    {
    }

    else
    {
      type metadata accessor for _DictionaryStorage<DisplayList.HostedViewState.Key, DisplayList.HostedViewState.ViewInfo>(0);
      v22 = static _DictionaryStorage.allocate(capacity:)();
      if (a2 < 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = *a1;
      }

      v14 = 0;
      while (v13)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_16:
        v18 = v15 | (v14 << 6);
        outlined init with copy of TabViewCustomization(a4[6] + *(v24 + 72) * v18, v12, type metadata accessor for DisplayList.HostedViewState.Key);
        outlined init with copy of DisplayList.HostedViewState.ViewInfo(a4[7] + 184 * v18, v27);
        v19 = v23;
        outlined init with take of TabViewCustomization(v12, v23, type metadata accessor for DisplayList.HostedViewState.Key);
        v25[8] = v27[8];
        v25[9] = v27[9];
        v25[10] = v27[10];
        v26 = v28;
        v25[4] = v27[4];
        v25[5] = v27[5];
        v25[6] = v27[6];
        v25[7] = v27[7];
        v25[0] = v27[0];
        v25[1] = v27[1];
        v25[2] = v27[2];
        v25[3] = v27[3];
        specialized _NativeDictionary._unsafeInsertNew(key:value:)(v19, v25, v22);
        if (__OFSUB__(a3--, 1))
        {
          goto LABEL_20;
        }

        if (!a3)
        {
          return;
        }
      }

      v16 = v14;
      while (1)
      {
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v14 >= a2)
        {
          return;
        }

        v17 = a1[v14];
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }
}

double static _ArchivableViewModifier.makeArchivableView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(unint64_t *__return_ptr, uint64_t, _OWORD *)@<X2>, uint64_t a4@<X4>, double *a5@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[1];
  v55 = *a2;
  v56 = v9;
  v10 = a2[3];
  v57 = a2[2];
  v58 = v10;
  v59 = a2[4];
  v60 = *(a2 + 20);
  PropertyList.subscript.getter();
  if (v49)
  {
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v46 = v60;
    v41 = v55;
    v42 = v56;
    v51 = v57;
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v49 = v55;
    v50 = v56;
    outlined init with copy of _ViewInputs(&v55, v47);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
    v47[2] = v43;
    v47[3] = v44;
    v47[4] = v45;
    v48 = v46;
    v47[0] = v41;
    v47[1] = v42;
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v36[0] = v41;
    v36[1] = v42;
    v12 = outlined init with copy of _ViewInputs(v47, &v49);
    a3(&v29, v12, v36);
    v51 = v37;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    v49 = v36[0];
    v50 = v36[1];
    outlined destroy of _ViewInputs(&v49);
    *&v36[0] = v58;
    DWORD2(v36[0]) = DWORD2(v58);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      v27 = v36[0];
      v37 = v57;
      v38 = v58;
      v39 = v59;
      v40 = v60;
      v36[0] = v55;
      v36[1] = v56;
      LODWORD(v31) = v27;
      _ViewInputs.pushIdentity(_:)();
      v28 = v8;
      type metadata accessor for _GraphValue();
      v26 = _GraphValue.value.getter();
      v37 = v57;
      v38 = v58;
      v39 = v59;
      v40 = v60;
      v36[0] = v55;
      v36[1] = v56;
      v25 = _ViewInputs.animatedPosition()();
      v37 = v57;
      v38 = v58;
      v39 = v59;
      v40 = v60;
      v36[0] = v55;
      v36[1] = v56;
      swift_beginAccess();
      v13 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v37 = v57;
      v38 = v58;
      v39 = v59;
      v40 = v60;
      v36[0] = v55;
      v36[1] = v56;
      v14 = _ViewInputs.containerPosition.getter();
      v31 = v29;
      v32 = LODWORD(v30);
      v15 = PreferencesOutputs.subscript.getter();
      if ((v15 & 0x100000000) != 0)
      {
        v16 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v16 = v15;
      }

      v17 = PropertyList.subscript.getter();
      v31 = __PAIR64__(v26, v27);
      v32 = v25;
      v33 = v13;
      v34 = v14;
      v35 = v16;
      *&v18 = MEMORY[0x1EEE9AC00](v17);
      *&v36[0] = a4;
      *(v36 + 8) = v18;
      *(&v36[1] + 1) = v19;
      v23 = type metadata accessor for ArchivableDisplayList(0, v36);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArchivableDisplayList<A>, v23);
      type metadata accessor for Attribute<DisplayList>();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v31, closure #1 in Attribute.init<A>(_:)partial apply, &v22, v23, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
      LOBYTE(v36[0]) = 0;
      PreferencesOutputs.subscript.setter();
    }

    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v36[0] = v41;
    v36[1] = v42;
    outlined destroy of _ViewInputs(v36);
    *a5 = v29;
    result = v30;
    a5[1] = v30;
  }

  else
  {
    LODWORD(v47[0]) = v8;
    v51 = v57;
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v49 = v55;
    v50 = v56;
    static ViewModifier.makeView(modifier:inputs:body:)();
  }

  return result;
}

double closure #1 in DisplayList.HostedViewState.updateView(_:key:factory:item:position:state:)(int *a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  View = type metadata accessor for DisplayList.HostedViewState.FetchView(0);
  MEMORY[0x1EEE9AC00](View);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  if (*a1 == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  outlined init with copy of DisplayList.HostedViewState.Key(a2, v8 + *(View + 20), type metadata accessor for DisplayList.HostedViewState.Key);
  *v8 = v9;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(&lazy protocol witness table cache variable for type DisplayList.HostedViewState.FetchView and conformance DisplayList.HostedViewState.FetchView, type metadata accessor for DisplayList.HostedViewState.FetchView, protocol conformance descriptor for DisplayList.HostedViewState.FetchView);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v8, type metadata accessor for DisplayList.HostedViewState.FetchView);
  v11 = *(a1 + 4);
  v35 = *(a1 + 3);
  v36 = v11;
  v37 = *(a1 + 5);
  v38 = a1[24];
  v12 = *(a1 + 2);
  v33 = *(a1 + 1);
  v34 = v12;
  v13 = v12;
  v30 = v11;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v12;
  v29 = v35;
  swift_beginAccess();
  v14 = v13[3];
  v39[1] = v13[2];
  v39[2] = v14;
  v15 = v13[5];
  v39[3] = v13[4];
  v39[4] = v15;
  v39[0] = v13[1];
  type metadata accessor for DisplayList.HostedViewState.ViewInfo?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, MEMORY[0x1E697ECC0], MEMORY[0x1E697DAC0]);
  v16 = swift_allocObject();
  memmove((v16 + 16), v13 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(&v33, &v44);
  outlined init with copy of _ViewInputs(&v33, &v44);
  outlined init with copy of CachedEnvironment(v39, &v44);

  *&v28 = v16;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  ViewGraph.$zeroPoint.getter();

  _ViewInputs.position.setter();
  _ViewInputs.position.getter();
  _ViewInputs.containerPosition.setter();
  AGGraphCreateOffsetAttribute2();
  _ViewInputs.transform.setter();
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.environment.setter();
  AGGraphCreateOffsetAttribute2();
  _ViewInputs.size.setter();
  LODWORD(v44) = v10;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type DisplayList.HostedViewState.Child and conformance DisplayList.HostedViewState.Child();
  v20[3] = Attribute.init<A>(body:value:flags:update:)();
  v40[2] = v29;
  v40[3] = v30;
  v40[4] = v31;
  v41 = v32;
  v40[0] = v27;
  v40[1] = v28;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v44 = v27;
  v45 = v28;
  outlined init with copy of _ViewInputs(v40, v42);
  static View.makeDebuggableView(view:inputs:)();
  v42[2] = v46;
  v42[3] = v47;
  v42[4] = v48;
  v43 = v49;
  v42[0] = v44;
  v42[1] = v45;
  outlined destroy of _ViewInputs(v42);
  v17 = *(&v21 + 1);
  a3[20] = v21;
  a3[21] = v17;

  v23 = v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v21 = v33;
  v22 = v34;
  type metadata accessor for DefaultLayoutViewResponder();
  swift_allocObject();
  v18 = DefaultLayoutViewResponder.init(inputs:)();
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v44 = v27;
  v45 = v28;
  outlined destroy of _ViewInputs(&v44);
  a3[22] = v18;

  return result;
}

uint64_t ArchivableFactory.makeView()(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(a1 + 56);
  v10 = *(v2 + *(a1 + 52));
  v11 = *(v2 + v6);
  MEMORY[0x18D00A570](v2, &type metadata for ArchivablePlaceholder, v4, &protocol witness table for ArchivablePlaceholder);
  v7 = *(a1 + 40);
  v9[0] = &protocol witness table for ArchivablePlaceholder;
  v9[1] = v7;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v9);
  return AnyView.init<A>(_:)();
}

void specialized DisplayList.HostedViews.Preference.value.getter(uint64_t a1)
{
  v1 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *AGGraphGetValue();
  swift_beginAccess();
  v6 = *(v5 + 120);

  v7 = *AGGraphGetValue();
  swift_beginAccess();
  v8 = *(v7 + 128);
  v9 = *(v8 + 16);
  if (!v9)
  {

    return;
  }

  v10 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  v11 = 0;
  v29 = v9 - 1;
  v31 = MEMORY[0x1E69E7CC0];
  LODWORD(v30) = 1;
  while (2)
  {
    v12 = v11;
    while (1)
    {
      if (v12 >= *(v8 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      outlined init with copy of SearchToolbarItem(v10 + *(v2 + 72) * v12, v4, type metadata accessor for DisplayList.HostedViewState.Key);
      if (*(v6 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
        if (v14)
        {
          break;
        }
      }

      outlined destroy of PrimitiveAdaptableTabView.BodyContent(v4, type metadata accessor for DisplayList.HostedViewState.Key);
LABEL_5:
      if (v9 == ++v12)
      {
        goto LABEL_28;
      }
    }

    outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v6 + 56) + 184 * v13, v32);
    outlined destroy of PrimitiveAdaptableTabView.BodyContent(v4, type metadata accessor for DisplayList.HostedViewState.Key);
    v35[8] = v32[8];
    v35[9] = v32[9];
    v36 = v33;
    v37 = v34;
    v35[4] = v32[4];
    v35[5] = v32[5];
    v35[6] = v32[6];
    v35[7] = v32[7];
    v35[0] = v32[0];
    v35[1] = v32[1];
    v35[2] = v32[2];
    v35[3] = v32[3];
    if (!v33 || (*&v32[0] = v36, DWORD2(v32[0]) = DWORD2(v36), (PreferencesOutputs.subscript.getter() & 0x100000000) != 0))
    {
      outlined destroy of DisplayList.HostedViewState.ViewInfo(v35);
      goto LABEL_5;
    }

    type metadata accessor for [ContentScrollViewBox](0, &lazy cache variable for type metadata for [ArchivedViewState], &type metadata for ArchivedViewState, MEMORY[0x1E69E62F8]);
    v15 = *AGGraphGetValue();
    if (v30)
    {
      v16 = v15;

      v31 = v16;
      goto LABEL_27;
    }

    v17 = v31;
    v18 = *(v31 + 2);
    v30 = *(v15 + 16);
    v26 = v18;
    v27 = v18 + v30;
    if (__OFADD__(v18, v30))
    {
      goto LABEL_32;
    }

    v28 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v27 > *(v17 + 3) >> 1)
    {
      if (v26 <= v27)
      {
        v20 = v27;
      }

      else
      {
        v20 = v26;
      }

      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v17);
    }

    if (!*(v28 + 16))
    {

      if (!v30)
      {
LABEL_27:
        v11 = v12 + 1;
        outlined destroy of DisplayList.HostedViewState.ViewInfo(v35);
        LODWORD(v30) = 0;
        if (v29 != v12)
        {
          continue;
        }

LABEL_28:

        return;
      }

      goto LABEL_33;
    }

    break;
  }

  v21 = v31;
  if ((*(v31 + 3) >> 1) - *(v31 + 2) < v30)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  swift_arrayInitWithCopy();

  if (!v30)
  {
    goto LABEL_27;
  }

  v22 = *(v21 + 2);
  v23 = __OFADD__(v22, v30);
  v24 = v22 + v30;
  if (!v23)
  {
    *(v21 + 2) = v24;
    goto LABEL_27;
  }

LABEL_35:
  __break(1u);
}

uint64_t partial apply for closure #2 in DisplayList.HostedViewState.updateView(_:key:factory:item:position:state:)()
{
  v1 = *(v0 + 16);
  result = AGSubgraphIsValid();
  if (result)
  {

    return MEMORY[0x1EEDEEC28](v1, 1);
  }

  return result;
}

uint64_t assignWithCopy for DisplayList.HostedViewState.ViewInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  __swift_assign_boxed_opaque_existential_1((a1 + 16), (a2 + 16));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  v4 = *(a1 + 152);
  v5 = *(a2 + 152);
  *(a1 + 152) = v5;
  v6 = v5;

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);

  return a1;
}

uint64_t ArchivableFactory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v28 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArchivableFactory.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>.CodingKeys, v11);
  v30 = type metadata accessor for KeyedDecodingContainer();
  v26 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v13 = &v23 - v12;
  v27 = a3;
  v15 = type metadata accessor for ArchivableFactory(0, a2, a3, v14);
  v24 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v31 = v15;
    v19 = v26;
    v21 = v28;
    v20 = v29;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v13, v30);
    (*(v21 + 32))(v17, v20, a2);
    (*(v24 + 32))(v25, v17, v31);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t base witness table accessor for CustomDebugStringConvertible in ArchivableFactory<A>.CodingKeys(uint64_t a1)
{
  return swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>.CodingKeys, a1);
}

{
  return swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>.CodingKeys, a1);
}

uint64_t base witness table accessor for CustomStringConvertible in ArchivableFactory<A>.CodingKeys(uint64_t a1)
{
  return swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>.CodingKeys, a1);
}

{
  return swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>.CodingKeys, a1);
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ArchivableLinkModifier@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(unint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static _ArchivableViewModifier.makeArchivableView(modifier:inputs:body:)(v4, v8, a3, a4);
}

double specialized static _ArchivableViewModifier.makeArchivableView(modifier:inputs:body:)@<D0>(unsigned int a1@<W0>, __int128 *a2@<X1>, void (*a3)(unint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  PropertyList.subscript.getter();
  if (v51)
  {
    v11 = a2[3];
    v12 = a2[1];
    v45 = a2[2];
    v46 = v11;
    v13 = a2[3];
    v47 = a2[4];
    v14 = a2[1];
    v43 = *a2;
    v44 = v14;
    v53 = v45;
    v54 = v13;
    v55 = a2[4];
    v48 = *(a2 + 20);
    v56 = *(a2 + 20);
    v51 = v43;
    v52 = v12;
    outlined init with copy of _ViewInputs(a2, v49);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v50 = v48;
    v49[0] = v43;
    v49[1] = v44;
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    v15 = outlined init with copy of _ViewInputs(v49, &v51);
    a3(&v30, v15, &v37);
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v51 = v37;
    v52 = v38;
    outlined destroy of _ViewInputs(&v51);
    *&v37 = *(a2 + 6);
    DWORD2(v37) = *(a2 + 14);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      v16 = v37;
      v17 = a2[3];
      v39 = a2[2];
      v40 = v17;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v18 = a2[1];
      v37 = *a2;
      v38 = v18;
      LODWORD(v32) = v16;
      _ViewInputs.pushIdentity(_:)();
      v19 = a2[3];
      v39 = a2[2];
      v40 = v19;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v20 = a2[1];
      v37 = *a2;
      v38 = v20;
      v21 = _ViewInputs.animatedPosition()();
      v22 = a2[3];
      v39 = a2[2];
      v40 = v22;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v23 = a2[1];
      v37 = *a2;
      v38 = v23;
      swift_beginAccess();
      v24 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v25 = a2[3];
      v39 = a2[2];
      v40 = v25;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v26 = a2[1];
      v37 = *a2;
      v38 = v26;
      v27 = _ViewInputs.containerPosition.getter();
      v32 = v30;
      v33 = LODWORD(v31);
      v28 = PreferencesOutputs.subscript.getter();
      if ((v28 & 0x100000000) != 0)
      {
        v29 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v29 = v28;
      }

      PropertyList.subscript.getter();
      v32 = __PAIR64__(a1, v16);
      v33 = v21;
      v34 = v24;
      v35 = v27;
      v36 = v29;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for ArchivableDisplayList<ArchivableLinkModifier>(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivableDisplayList<ArchivableLinkModifier> and conformance ArchivableDisplayList<A>, type metadata accessor for ArchivableDisplayList<ArchivableLinkModifier>, protocol conformance descriptor for ArchivableDisplayList<A>);
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v37) = 0;
      PreferencesOutputs.subscript.setter();
    }

    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    outlined destroy of _ViewInputs(&v37);
    *a4 = v30;
    result = v31;
    a4[1] = v31;
  }

  else
  {
    LODWORD(v49[0]) = a1;
    v8 = a2[3];
    v53 = a2[2];
    v54 = v8;
    v55 = a2[4];
    v56 = *(a2 + 20);
    v9 = a2[1];
    v51 = *a2;
    v52 = v9;
    type metadata accessor for ArchivableLinkModifier(0);
    lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier, protocol conformance descriptor for ArchivableLinkModifier);
    static ViewModifier.makeView(modifier:inputs:body:)();
  }

  return result;
}

{
  v57 = *MEMORY[0x1E69E9840];
  PropertyList.subscript.getter();
  if (v51)
  {
    v11 = a2[3];
    v12 = a2[1];
    v45 = a2[2];
    v46 = v11;
    v13 = a2[3];
    v47 = a2[4];
    v14 = a2[1];
    v43 = *a2;
    v44 = v14;
    v53 = v45;
    v54 = v13;
    v55 = a2[4];
    v48 = *(a2 + 20);
    v56 = *(a2 + 20);
    v51 = v43;
    v52 = v12;
    outlined init with copy of _ViewInputs(a2, v49);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v50 = v48;
    v49[0] = v43;
    v49[1] = v44;
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    v15 = outlined init with copy of _ViewInputs(v49, &v51);
    a3(&v30, v15, &v37);
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v51 = v37;
    v52 = v38;
    outlined destroy of _ViewInputs(&v51);
    *&v37 = *(a2 + 6);
    DWORD2(v37) = *(a2 + 14);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      v16 = v37;
      v17 = a2[3];
      v39 = a2[2];
      v40 = v17;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v18 = a2[1];
      v37 = *a2;
      v38 = v18;
      LODWORD(v32) = v16;
      _ViewInputs.pushIdentity(_:)();
      v19 = a2[3];
      v39 = a2[2];
      v40 = v19;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v20 = a2[1];
      v37 = *a2;
      v38 = v20;
      v21 = _ViewInputs.animatedPosition()();
      v22 = a2[3];
      v39 = a2[2];
      v40 = v22;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v23 = a2[1];
      v37 = *a2;
      v38 = v23;
      swift_beginAccess();
      v24 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v25 = a2[3];
      v39 = a2[2];
      v40 = v25;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v26 = a2[1];
      v37 = *a2;
      v38 = v26;
      v27 = _ViewInputs.containerPosition.getter();
      v32 = v30;
      v33 = LODWORD(v31);
      v28 = PreferencesOutputs.subscript.getter();
      if ((v28 & 0x100000000) != 0)
      {
        v29 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v29 = v28;
      }

      PropertyList.subscript.getter();
      v32 = __PAIR64__(a1, v16);
      v33 = v21;
      v34 = v24;
      v35 = v27;
      v36 = v29;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for ArchivableDisplayList<ArchivablePlaybackButtonViewModifier>(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivableDisplayList<ArchivablePlaybackButtonViewModifier> and conformance ArchivableDisplayList<A>, type metadata accessor for ArchivableDisplayList<ArchivablePlaybackButtonViewModifier>, protocol conformance descriptor for ArchivableDisplayList<A>);
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v37) = 0;
      PreferencesOutputs.subscript.setter();
    }

    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    outlined destroy of _ViewInputs(&v37);
    *a4 = v30;
    result = v31;
    a4[1] = v31;
  }

  else
  {
    LODWORD(v49[0]) = a1;
    v8 = a2[3];
    v53 = a2[2];
    v54 = v8;
    v55 = a2[4];
    v56 = *(a2 + 20);
    v9 = a2[1];
    v51 = *a2;
    v52 = v9;
    type metadata accessor for ArchivablePlaybackButtonViewModifier(0);
    lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier, protocol conformance descriptor for ArchivablePlaybackButtonViewModifier);
    static ViewModifier.makeView(modifier:inputs:body:)();
  }

  return result;
}

{
  v57 = *MEMORY[0x1E69E9840];
  PropertyList.subscript.getter();
  if (v51)
  {
    v11 = a2[3];
    v12 = a2[1];
    v45 = a2[2];
    v46 = v11;
    v13 = a2[3];
    v47 = a2[4];
    v14 = a2[1];
    v43 = *a2;
    v44 = v14;
    v53 = v45;
    v54 = v13;
    v55 = a2[4];
    v48 = *(a2 + 20);
    v56 = *(a2 + 20);
    v51 = v43;
    v52 = v12;
    outlined init with copy of _ViewInputs(a2, v49);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v50 = v48;
    v49[0] = v43;
    v49[1] = v44;
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    v15 = outlined init with copy of _ViewInputs(v49, &v51);
    a3(&v30, v15, &v37);
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v51 = v37;
    v52 = v38;
    outlined destroy of _ViewInputs(&v51);
    *&v37 = *(a2 + 6);
    DWORD2(v37) = *(a2 + 14);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      v16 = v37;
      v17 = a2[3];
      v39 = a2[2];
      v40 = v17;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v18 = a2[1];
      v37 = *a2;
      v38 = v18;
      LODWORD(v32) = v16;
      _ViewInputs.pushIdentity(_:)();
      v19 = a2[3];
      v39 = a2[2];
      v40 = v19;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v20 = a2[1];
      v37 = *a2;
      v38 = v20;
      v21 = _ViewInputs.animatedPosition()();
      v22 = a2[3];
      v39 = a2[2];
      v40 = v22;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v23 = a2[1];
      v37 = *a2;
      v38 = v23;
      swift_beginAccess();
      v24 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v25 = a2[3];
      v39 = a2[2];
      v40 = v25;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v26 = a2[1];
      v37 = *a2;
      v38 = v26;
      v27 = _ViewInputs.containerPosition.getter();
      v32 = v30;
      v33 = LODWORD(v31);
      v28 = PreferencesOutputs.subscript.getter();
      if ((v28 & 0x100000000) != 0)
      {
        v29 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v29 = v28;
      }

      PropertyList.subscript.getter();
      v32 = __PAIR64__(a1, v16);
      v33 = v21;
      v34 = v24;
      v35 = v27;
      v36 = v29;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for ArchivableDisplayList<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivableDisplayList<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance ArchivableDisplayList<A>, type metadata accessor for ArchivableDisplayList<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, protocol conformance descriptor for ArchivableDisplayList<A>);
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v37) = 0;
      PreferencesOutputs.subscript.setter();
    }

    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    outlined destroy of _ViewInputs(&v37);
    *a4 = v30;
    result = v31;
    a4[1] = v31;
  }

  else
  {
    LODWORD(v49[0]) = a1;
    v8 = a2[3];
    v53 = a2[2];
    v54 = v8;
    v55 = a2[4];
    v56 = *(a2 + 20);
    v9 = a2[1];
    v51 = *a2;
    v52 = v9;
    lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
    static ViewModifier.makeView(modifier:inputs:body:)();
  }

  return result;
}

{
  v57 = *MEMORY[0x1E69E9840];
  PropertyList.subscript.getter();
  if (v51)
  {
    v11 = a2[3];
    v12 = a2[1];
    v45 = a2[2];
    v46 = v11;
    v13 = a2[3];
    v47 = a2[4];
    v14 = a2[1];
    v43 = *a2;
    v44 = v14;
    v53 = v45;
    v54 = v13;
    v55 = a2[4];
    v48 = *(a2 + 20);
    v56 = *(a2 + 20);
    v51 = v43;
    v52 = v12;
    outlined init with copy of _ViewInputs(a2, v49);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v50 = v48;
    v49[0] = v43;
    v49[1] = v44;
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    v15 = outlined init with copy of _ViewInputs(v49, &v51);
    a3(&v30, v15, &v37);
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v51 = v37;
    v52 = v38;
    outlined destroy of _ViewInputs(&v51);
    *&v37 = *(a2 + 6);
    DWORD2(v37) = *(a2 + 14);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      v16 = v37;
      v17 = a2[3];
      v39 = a2[2];
      v40 = v17;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v18 = a2[1];
      v37 = *a2;
      v38 = v18;
      LODWORD(v32) = v16;
      _ViewInputs.pushIdentity(_:)();
      v19 = a2[3];
      v39 = a2[2];
      v40 = v19;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v20 = a2[1];
      v37 = *a2;
      v38 = v20;
      v21 = _ViewInputs.animatedPosition()();
      v22 = a2[3];
      v39 = a2[2];
      v40 = v22;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v23 = a2[1];
      v37 = *a2;
      v38 = v23;
      swift_beginAccess();
      v24 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v25 = a2[3];
      v39 = a2[2];
      v40 = v25;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v26 = a2[1];
      v37 = *a2;
      v38 = v26;
      v27 = _ViewInputs.containerPosition.getter();
      v32 = v30;
      v33 = LODWORD(v31);
      v28 = PreferencesOutputs.subscript.getter();
      if ((v28 & 0x100000000) != 0)
      {
        v29 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v29 = v28;
      }

      PropertyList.subscript.getter();
      v32 = __PAIR64__(a1, v16);
      v33 = v21;
      v34 = v24;
      v35 = v27;
      v36 = v29;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for ArchivableDisplayList<InvalidatableContentModifier>(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivableDisplayList<InvalidatableContentModifier> and conformance ArchivableDisplayList<A>, type metadata accessor for ArchivableDisplayList<InvalidatableContentModifier>, protocol conformance descriptor for ArchivableDisplayList<A>);
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v37) = 0;
      PreferencesOutputs.subscript.setter();
    }

    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    outlined destroy of _ViewInputs(&v37);
    *a4 = v30;
    result = v31;
    a4[1] = v31;
  }

  else
  {
    LODWORD(v49[0]) = a1;
    v8 = a2[3];
    v53 = a2[2];
    v54 = v8;
    v55 = a2[4];
    v56 = *(a2 + 20);
    v9 = a2[1];
    v51 = *a2;
    v52 = v9;
    lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
    static ViewModifier.makeView(modifier:inputs:body:)();
  }

  return result;
}

{
  v57 = *MEMORY[0x1E69E9840];
  PropertyList.subscript.getter();
  if (v51)
  {
    v11 = a2[3];
    v12 = a2[1];
    v45 = a2[2];
    v46 = v11;
    v13 = a2[3];
    v47 = a2[4];
    v14 = a2[1];
    v43 = *a2;
    v44 = v14;
    v53 = v45;
    v54 = v13;
    v55 = a2[4];
    v48 = *(a2 + 20);
    v56 = *(a2 + 20);
    v51 = v43;
    v52 = v12;
    outlined init with copy of _ViewInputs(a2, v49);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v50 = v48;
    v49[0] = v43;
    v49[1] = v44;
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    v15 = outlined init with copy of _ViewInputs(v49, &v51);
    a3(&v30, v15, &v37);
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v51 = v37;
    v52 = v38;
    outlined destroy of _ViewInputs(&v51);
    *&v37 = *(a2 + 6);
    DWORD2(v37) = *(a2 + 14);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      v16 = v37;
      v17 = a2[3];
      v39 = a2[2];
      v40 = v17;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v18 = a2[1];
      v37 = *a2;
      v38 = v18;
      LODWORD(v32) = v16;
      _ViewInputs.pushIdentity(_:)();
      v19 = a2[3];
      v39 = a2[2];
      v40 = v19;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v20 = a2[1];
      v37 = *a2;
      v38 = v20;
      v21 = _ViewInputs.animatedPosition()();
      v22 = a2[3];
      v39 = a2[2];
      v40 = v22;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v23 = a2[1];
      v37 = *a2;
      v38 = v23;
      swift_beginAccess();
      v24 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v25 = a2[3];
      v39 = a2[2];
      v40 = v25;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v26 = a2[1];
      v37 = *a2;
      v38 = v26;
      v27 = _ViewInputs.containerPosition.getter();
      v32 = v30;
      v33 = LODWORD(v31);
      v28 = PreferencesOutputs.subscript.getter();
      if ((v28 & 0x100000000) != 0)
      {
        v29 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v29 = v28;
      }

      PropertyList.subscript.getter();
      v32 = __PAIR64__(a1, v16);
      v33 = v21;
      v34 = v24;
      v35 = v27;
      v36 = v29;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for ArchivableDisplayList<ArchivableToggleAppIntentModifier>(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivableDisplayList<ArchivableToggleAppIntentModifier> and conformance ArchivableDisplayList<A>, type metadata accessor for ArchivableDisplayList<ArchivableToggleAppIntentModifier>, protocol conformance descriptor for ArchivableDisplayList<A>);
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v37) = 0;
      PreferencesOutputs.subscript.setter();
    }

    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    outlined destroy of _ViewInputs(&v37);
    *a4 = v30;
    result = v31;
    a4[1] = v31;
  }

  else
  {
    LODWORD(v49[0]) = a1;
    v8 = a2[3];
    v53 = a2[2];
    v54 = v8;
    v55 = a2[4];
    v56 = *(a2 + 20);
    v9 = a2[1];
    v51 = *a2;
    v52 = v9;
    lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
    static ViewModifier.makeView(modifier:inputs:body:)();
  }

  return result;
}

{
  v57 = *MEMORY[0x1E69E9840];
  PropertyList.subscript.getter();
  if (v51)
  {
    v11 = a2[3];
    v12 = a2[1];
    v45 = a2[2];
    v46 = v11;
    v13 = a2[3];
    v47 = a2[4];
    v14 = a2[1];
    v43 = *a2;
    v44 = v14;
    v53 = v45;
    v54 = v13;
    v55 = a2[4];
    v48 = *(a2 + 20);
    v56 = *(a2 + 20);
    v51 = v43;
    v52 = v12;
    outlined init with copy of _ViewInputs(a2, v49);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v50 = v48;
    v49[0] = v43;
    v49[1] = v44;
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    v15 = outlined init with copy of _ViewInputs(v49, &v51);
    a3(&v30, v15, &v37);
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v51 = v37;
    v52 = v38;
    outlined destroy of _ViewInputs(&v51);
    *&v37 = *(a2 + 6);
    DWORD2(v37) = *(a2 + 14);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      v16 = v37;
      v17 = a2[3];
      v39 = a2[2];
      v40 = v17;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v18 = a2[1];
      v37 = *a2;
      v38 = v18;
      LODWORD(v32) = v16;
      _ViewInputs.pushIdentity(_:)();
      v19 = a2[3];
      v39 = a2[2];
      v40 = v19;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v20 = a2[1];
      v37 = *a2;
      v38 = v20;
      v21 = _ViewInputs.animatedPosition()();
      v22 = a2[3];
      v39 = a2[2];
      v40 = v22;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v23 = a2[1];
      v37 = *a2;
      v38 = v23;
      swift_beginAccess();
      v24 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v25 = a2[3];
      v39 = a2[2];
      v40 = v25;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v26 = a2[1];
      v37 = *a2;
      v38 = v26;
      v27 = _ViewInputs.containerPosition.getter();
      v32 = v30;
      v33 = LODWORD(v31);
      v28 = PreferencesOutputs.subscript.getter();
      if ((v28 & 0x100000000) != 0)
      {
        v29 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v29 = v28;
      }

      PropertyList.subscript.getter();
      v32 = __PAIR64__(a1, v16);
      v33 = v21;
      v34 = v24;
      v35 = v27;
      v36 = v29;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for ArchivableDisplayList<ArchivableAccessibilityViewModifier>(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivableDisplayList<ArchivableAccessibilityViewModifier> and conformance ArchivableDisplayList<A>, type metadata accessor for ArchivableDisplayList<ArchivableAccessibilityViewModifier>, protocol conformance descriptor for ArchivableDisplayList<A>);
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v37) = 0;
      PreferencesOutputs.subscript.setter();
    }

    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    outlined destroy of _ViewInputs(&v37);
    *a4 = v30;
    result = v31;
    a4[1] = v31;
  }

  else
  {
    LODWORD(v49[0]) = a1;
    v8 = a2[3];
    v53 = a2[2];
    v54 = v8;
    v55 = a2[4];
    v56 = *(a2 + 20);
    v9 = a2[1];
    v51 = *a2;
    v52 = v9;
    lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier and conformance ArchivableAccessibilityViewModifier();
    static ViewModifier.makeView(modifier:inputs:body:)();
  }

  return result;
}

{
  v57 = *MEMORY[0x1E69E9840];
  PropertyList.subscript.getter();
  if (v51)
  {
    v11 = a2[3];
    v12 = a2[1];
    v45 = a2[2];
    v46 = v11;
    v13 = a2[3];
    v47 = a2[4];
    v14 = a2[1];
    v43 = *a2;
    v44 = v14;
    v53 = v45;
    v54 = v13;
    v55 = a2[4];
    v48 = *(a2 + 20);
    v56 = *(a2 + 20);
    v51 = v43;
    v52 = v12;
    outlined init with copy of _ViewInputs(a2, v49);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v50 = v48;
    v49[0] = v43;
    v49[1] = v44;
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    v15 = outlined init with copy of _ViewInputs(v49, &v51);
    a3(&v30, v15, &v37);
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v51 = v37;
    v52 = v38;
    outlined destroy of _ViewInputs(&v51);
    *&v37 = *(a2 + 6);
    DWORD2(v37) = *(a2 + 14);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      v16 = v37;
      v17 = a2[3];
      v39 = a2[2];
      v40 = v17;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v18 = a2[1];
      v37 = *a2;
      v38 = v18;
      LODWORD(v32) = v16;
      _ViewInputs.pushIdentity(_:)();
      v19 = a2[3];
      v39 = a2[2];
      v40 = v19;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v20 = a2[1];
      v37 = *a2;
      v38 = v20;
      v21 = _ViewInputs.animatedPosition()();
      v22 = a2[3];
      v39 = a2[2];
      v40 = v22;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v23 = a2[1];
      v37 = *a2;
      v38 = v23;
      swift_beginAccess();
      v24 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v25 = a2[3];
      v39 = a2[2];
      v40 = v25;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v26 = a2[1];
      v37 = *a2;
      v38 = v26;
      v27 = _ViewInputs.containerPosition.getter();
      v32 = v30;
      v33 = LODWORD(v31);
      v28 = PreferencesOutputs.subscript.getter();
      if ((v28 & 0x100000000) != 0)
      {
        v29 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v29 = v28;
      }

      PropertyList.subscript.getter();
      v32 = __PAIR64__(a1, v16);
      v33 = v21;
      v34 = v24;
      v35 = v27;
      v36 = v29;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for ArchivableDisplayList<ArchivableButtonAppIntentModifier>(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivableDisplayList<ArchivableButtonAppIntentModifier> and conformance ArchivableDisplayList<A>, type metadata accessor for ArchivableDisplayList<ArchivableButtonAppIntentModifier>, protocol conformance descriptor for ArchivableDisplayList<A>);
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v37) = 0;
      PreferencesOutputs.subscript.setter();
    }

    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    outlined destroy of _ViewInputs(&v37);
    *a4 = v30;
    result = v31;
    a4[1] = v31;
  }

  else
  {
    LODWORD(v49[0]) = a1;
    v8 = a2[3];
    v53 = a2[2];
    v54 = v8;
    v55 = a2[4];
    v56 = *(a2 + 20);
    v9 = a2[1];
    v51 = *a2;
    v52 = v9;
    lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
    static ViewModifier.makeView(modifier:inputs:body:)();
  }

  return result;
}

{
  v57 = *MEMORY[0x1E69E9840];
  PropertyList.subscript.getter();
  if (v51)
  {
    v11 = a2[3];
    v12 = a2[1];
    v45 = a2[2];
    v46 = v11;
    v13 = a2[3];
    v47 = a2[4];
    v14 = a2[1];
    v43 = *a2;
    v44 = v14;
    v53 = v45;
    v54 = v13;
    v55 = a2[4];
    v48 = *(a2 + 20);
    v56 = *(a2 + 20);
    v51 = v43;
    v52 = v12;
    outlined init with copy of _ViewInputs(a2, v49);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v50 = v48;
    v49[0] = v43;
    v49[1] = v44;
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    v15 = outlined init with copy of _ViewInputs(v49, &v51);
    a3(&v30, v15, &v37);
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v51 = v37;
    v52 = v38;
    outlined destroy of _ViewInputs(&v51);
    *&v37 = *(a2 + 6);
    DWORD2(v37) = *(a2 + 14);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      v16 = v37;
      v17 = a2[3];
      v39 = a2[2];
      v40 = v17;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v18 = a2[1];
      v37 = *a2;
      v38 = v18;
      LODWORD(v32) = v16;
      _ViewInputs.pushIdentity(_:)();
      v19 = a2[3];
      v39 = a2[2];
      v40 = v19;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v20 = a2[1];
      v37 = *a2;
      v38 = v20;
      v21 = _ViewInputs.animatedPosition()();
      v22 = a2[3];
      v39 = a2[2];
      v40 = v22;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v23 = a2[1];
      v37 = *a2;
      v38 = v23;
      swift_beginAccess();
      v24 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v25 = a2[3];
      v39 = a2[2];
      v40 = v25;
      v41 = a2[4];
      v42 = *(a2 + 20);
      v26 = a2[1];
      v37 = *a2;
      v38 = v26;
      v27 = _ViewInputs.containerPosition.getter();
      v32 = v30;
      v33 = LODWORD(v31);
      v28 = PreferencesOutputs.subscript.getter();
      if ((v28 & 0x100000000) != 0)
      {
        v29 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v29 = v28;
      }

      PropertyList.subscript.getter();
      v32 = __PAIR64__(a1, v16);
      v33 = v21;
      v34 = v24;
      v35 = v27;
      v36 = v29;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for ArchivableDisplayList<ArchivableAccessibilityActionModifier>(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ArchivableDisplayList<ArchivableAccessibilityActionModifier> and conformance ArchivableDisplayList<A>, type metadata accessor for ArchivableDisplayList<ArchivableAccessibilityActionModifier>, protocol conformance descriptor for ArchivableDisplayList<A>);
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v37) = 0;
      PreferencesOutputs.subscript.setter();
    }

    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    outlined destroy of _ViewInputs(&v37);
    *a4 = v30;
    result = v31;
    a4[1] = v31;
  }

  else
  {
    LODWORD(v49[0]) = a1;
    v8 = a2[3];
    v53 = a2[2];
    v54 = v8;
    v55 = a2[4];
    v56 = *(a2 + 20);
    v9 = a2[1];
    v51 = *a2;
    v52 = v9;
    lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
    static ViewModifier.makeView(modifier:inputs:body:)();
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TemporalStateViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TemporalStateViewModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double static TemporalStateViewModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v10 = a2[3];
  v11 = a2[1];
  v59 = a2[2];
  v60 = v10;
  v12 = a2[3];
  v61 = a2[4];
  v13 = a2[1];
  v57 = *a2;
  v58 = v13;
  v14 = a2[3];
  v53 = a2[2];
  v54 = v14;
  v55 = a2[4];
  v15 = a2[1];
  v51 = *a2;
  v52 = v15;
  v67 = v59;
  v68 = v12;
  v69 = a2[4];
  v16 = *a1;
  v62 = *(a2 + 20);
  v56 = *(a2 + 20);
  v70 = *(a2 + 20);
  v65 = v51;
  v66 = v11;
  outlined init with copy of _ViewInputs(&v57, v63);
  _ViewInputs.animatedPosition()();
  _ViewInputs.containerPosition.setter();
  v63[2] = v53;
  v63[3] = v54;
  v63[4] = v55;
  v64 = v56;
  v63[0] = v51;
  v63[1] = v52;
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v45 = v51;
  v46 = v52;
  v17 = outlined init with copy of _ViewInputs(v63, &v65);
  a3(&v42, v17, &v45);
  v67 = v47;
  v68 = v48;
  v69 = v49;
  v70 = v50;
  v65 = v45;
  v66 = v46;
  outlined destroy of _ViewInputs(&v65);
  v18 = v60;
  v19 = DWORD2(v60);
  *&v45 = v60;
  DWORD2(v45) = DWORD2(v60);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v41 = a6;
    v44 = v16;
    type metadata accessor for TemporalStateViewModifier(255, a4, a5, v20);
    type metadata accessor for _GraphValue();
    v21 = _GraphValue.value.getter();
    *&v45 = v42;
    DWORD2(v45) = LODWORD(v43);
    v22 = PreferencesOutputs.subscript.getter();
    v23 = *MEMORY[0x1E698D3F8];
    if ((v22 & 0x100000000) != 0)
    {
      v24 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v24 = v22;
    }

    *&v45 = __PAIR64__(v24, v21);
    MEMORY[0x1EEE9AC00](v22);
    State = type metadata accessor for TemporalStateViewModifier.MakeState(0, a4, a5, v25);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TemporalStateViewModifier<A>.MakeState, State);
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for Attribute<TemporalState>, &unk_1EFF88F10, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v45, closure #1 in Attribute.init<A>(_:)partial apply, v38, State, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
    v28 = v44;
    *&v45 = v18;
    DWORD2(v45) = v19;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      *&v45 = v42;
      DWORD2(v45) = LODWORD(v43);
      v29 = PreferencesOutputs.subscript.getter();
      if ((v29 & 0x100000000) != 0)
      {
        v30 = v23;
      }

      else
      {
        v30 = v29;
      }

      *&v45 = __PAIR64__(v30, v28);
      DWORD2(v45) = HIDWORD(v58);
      MEMORY[0x1EEE9AC00](v29);
      v32 = type metadata accessor for TemporalStateViewModifier.AddState(0, a4, a5, v31);
      State = v32;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TemporalStateViewModifier<A>.AddState, v32);
      type metadata accessor for Attribute<[ArchivedViewState]>(0);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v45, closure #1 in Attribute.init<A>(_:)partial apply, v38, v32, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
      AGGraphSetFlags();
      LOBYTE(v45) = 0;
      PreferencesOutputs.subscript.setter();
    }

    _DisplayList_Identity.init()();
    v35 = v45;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v45 = v57;
    v46 = v58;
    v44 = v35;
    _ViewInputs.pushIdentity(_:)();
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v45 = v57;
    v46 = v58;
    swift_beginAccess();
    v36 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    PropertyList.subscript.getter();
    *&v45 = __PAIR64__(v28, v35);
    DWORD2(v45) = v36;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type TemporalStateDisplayList and conformance TemporalStateDisplayList();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v45) = 0;
    PreferencesOutputs.subscript.setter();
    a6 = v41;
  }

  v47 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v45 = v51;
  v46 = v52;
  outlined destroy of _ViewInputs(&v45);
  *a6 = v42;
  result = v43;
  a6[1] = v43;
  return result;
}

void type metadata accessor for Attribute<LayoutComputer>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for Attribute<[ArchivedViewState]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<[ArchivedViewState]>)
  {
    type metadata accessor for Attribute<LayoutComputer>(255, &lazy cache variable for type metadata for [ArchivedViewState], &type metadata for ArchivedViewState, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<[ArchivedViewState]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TemporalStateDisplayList and conformance TemporalStateDisplayList()
{
  result = lazy protocol witness table cache variable for type TemporalStateDisplayList and conformance TemporalStateDisplayList;
  if (!lazy protocol witness table cache variable for type TemporalStateDisplayList and conformance TemporalStateDisplayList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemporalStateDisplayList, &unk_1EFF88B40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalStateDisplayList and conformance TemporalStateDisplayList);
  }

  return result;
}

char *TemporalStateViewModifier.AddState.value.getter(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  TemporalStateViewModifier.AddState.childStates.getter(a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = *(Value + 16);
  v21 = *(Value + 32);
  v19 = v6;
  v20 = v7;
  v15 = *Value;
  v16 = *(Value + 16);
  v17 = *(Value + 32);
  outlined init with copy of TemporalState(&v19, v18);
  v19 = v15;
  v20 = v16;
  v21 = v17;
  outlined destroy of TemporalState(&v19);
  v8 = v19;
  v9 = v20;
  AGGraphGetValue();

  v10 = Transaction.animation.getter();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v12 = *(v4 + 2);
  v11 = *(v4 + 3);
  if (v12 >= v11 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
  }

  *(v4 + 2) = v12 + 1;
  v13 = &v4[32 * v12];
  *(v13 + 2) = v8;
  *(v13 + 12) = v9;
  *(v13 + 13) = v2;
  *(v13 + 7) = v10;
  return v4;
}

char *protocol witness for Rule.value.getter in conformance TemporalStateViewModifier<A>.AddState@<X0>(char **a1@<X8>)
{
  result = TemporalStateViewModifier.AddState.value.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

double TemporalStateViewModifier.AddState.childStates.getter(unint64_t a1)
{
  if (*MEMORY[0x1E698D3F8] != HIDWORD(a1))
  {
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ArchivedViewState], &type metadata for ArchivedViewState, MEMORY[0x1E69E62F8]);
    AGGraphGetValue();
  }

  return result;
}

double TemporalStateViewModifier.MakeState.value.getter@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TemporalStateViewModifier(0, v11, v12, v13);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - v15;
  TemporalStateViewModifier.MakeState.modifier.getter(a2, a3, v17, &v23 - v15);
  (*(v8 + 32))(v10, v16, a2);
  StrongHash.init<A>(of:)();
  v23 = v30;
  v18 = v31;
  TemporalStateViewModifier.MakeState.content.getter(a1, &v24);
  v19 = v24;
  if (v24)
  {
    v20 = v25;
    v21 = v26;
  }

  else
  {
    DisplayList.init()();
    v19 = v27;
    v20 = v28;
    v21 = v29;
  }

  result = *&v23;
  *a4 = v23;
  *(a4 + 16) = v18;
  *(a4 + 24) = v19;
  *(a4 + 32) = v20;
  *(a4 + 36) = v21;
  return result;
}

uint64_t TemporalStateViewModifier.MakeState.modifier.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for TemporalStateViewModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ArchivableLinkModifier()
{
  v1 = type metadata accessor for LinkDestination.Configuration();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  v7 = MEMORY[0x1E697E810];
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(v0, &v9 - v5, MEMORY[0x1E697E810]);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(v6, v3, v7);
  LinkDestination.init(configuration:)();
  return outlined destroy of LinkDestination.Configuration(v6, MEMORY[0x1E697E810]);
}

uint64_t initializeWithCopy for AccessibilityLinkModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 34);
  v9 = *(a2 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*a2, v5, v6, v7, v9, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 34) = v8;
  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v14 = *(a2 + 74);
  v15 = *(a2 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v10, v11, v12, v13, v15, v14);
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 74) = v14;
  v16 = *(type metadata accessor for LinkDestination() + 24);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 16))(v17, v18, v19);
  v20 = type metadata accessor for LinkDestination.Configuration();
  *(v17 + *(v20 + 20)) = v18[*(v20 + 20)];
  return a1;
}

double outlined copy of Environment<OpenURLAction>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    outlined copy of OpenURLAction.Handler(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
  }

  return result;
}

uint64_t destroy for AccessibilityLinkModifier(uint64_t a1)
{
  outlined consume of Environment<OpenURLAction>.Content(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 34));
  outlined consume of Environment<OpenURLAction>.Content(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 74));
  v2 = *(type metadata accessor for LinkDestination() + 24);
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

double outlined consume of Environment<OpenURLAction>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    outlined consume of OpenURLAction.Handler(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
  }

  return result;
}

void outlined copy of OpenURLAction.Handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {

    outlined copy of AppIntentExecutor?(a3, a4);
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance LinkButtonModifierBody@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkDestination();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x1E697E828]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, MEMORY[0x1E697E828]);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = partial apply for implicit closure #2 in implicit closure #1 in LinkButtonModifierBody.body(content:);
  *(a1 + 24) = v7;
  *(a1 + 32) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(a1 + 40) = 0;
  *(a1 + 48) = partial apply for closure #1 in LinkButtonModifierBody.body(content:);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 82) = 0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_18C077244()
{
  v1 = (type metadata accessor for LinkDestination() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
  outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
  v3 = v1[8];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void TemporalStateViewModifier.MakeState.content.getter(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v3 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *(Value + 12);
    *(a2 + 8) = *(Value + 8);
    *(a2 + 12) = v5;
  }

  *a2 = v3;
}

uint64_t initializeWithCopy for TemporalState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);

  return a1;
}

uint64_t outlined init with copy of TemporalState(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = *(a1 + 4);
  *a2 = v3;
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 32) = *(a1 + 16);
  *(a2 + 36) = *(a1 + 9);

  return a2;
}

uint64_t TemporalStateDisplayList.updateValue()(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  DisplayList.Version.init(forUpdate:)();
  v1 = swift_allocObject();
  Value = AGGraphGetValue();
  v3 = *(Value + 16);
  *(v1 + 16) = *Value;
  *(v1 + 32) = v3;
  AGGraphGetValue();

  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  DisplayList.Item.init(_:frame:identity:version:)();
  DisplayList.Item.canonicalize(options:)();
  v10[2] = v8;
  v11[0] = v9[0];
  *(v11 + 12) = *(v9 + 12);
  v10[0] = v6;
  v10[1] = v7;
  v14 = v8;
  v15[0] = v9[0];
  *(v15 + 12) = *(v9 + 12);
  v12 = v6;
  v13 = v7;
  outlined init with copy of DisplayList.Item(v10, &v5);
  DisplayList.init(_:)();
  AGGraphSetOutputValue();
  v14 = v8;
  v15[0] = v9[0];
  *(v15 + 12) = *(v9 + 12);
  v12 = v6;
  v13 = v7;
  outlined destroy of DisplayList.Item(&v12);
}

uint64_t specialized static ArchivedViewState.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0] && a1[1].i32[1] == a2[1].i32[1])
  {
    v5 = a2[1].i64[1];
    if (a1[1].i64[1])
    {
      if (v5)
      {

        v6 = static Animation.== infix(_:_:)();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t NavigationPath.withCollectionProxy(_:)(void (*a1)(uint64_t *))
{
  if (*(v1 + 24) == 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = *v1;

    a1(&v4);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance NavigationPath.CodableCollectionProxy@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = __CocoaSet.count.getter();
    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for DisplayList.HostedViewState.FetchView(uint64_t a1)
{
  result = type metadata accessor for DisplayList.HostedViewState.Key(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t base witness table accessor for AnyViewFactory in ArchivableFactory<A>(uint64_t a1)
{
  return swift_getWitnessTable(protocol conformance descriptor for ArchivableFactory<A>, a1);
}

{
  return swift_getWitnessTable("Ax\vb\b\t\t", a1);
}

uint64_t outlined init with copy of TabViewCustomization(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TabViewCustomization(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 specialized _NativeDictionary._unsafeInsertNew(key:value:)(Swift::UInt32 *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69695A8];
  type metadata accessor for SceneStorage<TabViewCustomization>(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*a1);
  Hasher._combine(_:)(a1[1]);
  v14 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  _s7SwiftUI7BindingVyAA20TabViewCustomizationVGSgWOcTm_0(a1 + *(v14 + 24), v13, &lazy cache variable for type metadata for UUID?, v10, v15);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  Hasher._finalize()();
  v16 = _HashTable.nextHole(atOrAfter:)();
  *(a3 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
  outlined init with take of TabViewCustomization(a1, a3[6] + *(*(v14 - 8) + 72) * v16, type metadata accessor for DisplayList.HostedViewState.Key);
  v17 = a3[7] + 184 * v16;
  v18 = *(a2 + 48);
  *(v17 + 32) = *(a2 + 32);
  *(v17 + 48) = v18;
  v19 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v19;
  v20 = *(a2 + 112);
  *(v17 + 96) = *(a2 + 96);
  *(v17 + 112) = v20;
  v21 = *(a2 + 80);
  *(v17 + 64) = *(a2 + 64);
  *(v17 + 80) = v21;
  *(v17 + 176) = *(a2 + 176);
  result = *(a2 + 144);
  v23 = *(a2 + 160);
  *(v17 + 144) = result;
  *(v17 + 160) = v23;
  *(v17 + 128) = *(a2 + 128);
  ++a3[2];
  return result;
}

uint64_t outlined init with copy of Binding<TabViewCustomization>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVyAA20TabViewCustomizationVGSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  type metadata accessor for SceneStorage<TabViewCustomization>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for SceneStorage<TabViewCustomization>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *assignWithCopy for InterpolatableArchiveContent(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  a1[a3[6]] = a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

uint64_t specialized InterpolatableContent<>.requiresTransition(to:)(void *a1)
{
  if (*v1 == *a1 && (v3 = type metadata accessor for InterpolatableArchiveContent(0), (static UUID.== infix(_:_:)() & 1) != 0) && *(v1 + *(v3 + 24)) == *(a1 + *(v3 + 24)))
  {
    _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17ArchivedViewStateV_Tt1g5(*(v1 + *(v3 + 28)), *(a1 + *(v3 + 28)));
    v4 = v6 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t InterpolatableArchiveContent.modifyTransition(state:to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for InterpolatableArchiveContent(0);
  result = static UUID.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v7 = *(v5 + 24);
    if (*(v2 + v7) != 1 || (*(a2 + v7) & 1) == 0)
    {
      result = outlined consume of ContentTransition.Storage(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *(a1 + 13));
      *a1 = 0x8000000002;
      *(a1 + 8) = 0x2000000;
      *(a1 + 12) = 3;
    }
  }

  return result;
}

double protocol witness for static InterpolatableContent.defaultTransition.getter in conformance InterpolatableArchiveContent@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultTransition != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static InterpolatableArchiveContent.defaultTransition;
  v3 = byte_1EAA04784;
  v4 = dword_1EAA04780;
  v5 = dword_1EAA04780 | (byte_1EAA04784 << 32);
  v6 = byte_1EAA04786;
  *a1 = static InterpolatableArchiveContent.defaultTransition;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = byte_1EAA04785;
  *(a1 + 13) = byte_1EAA04785;
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

void one-time initialization function for defaultTransition()
{
  static InterpolatableArchiveContent.defaultTransition = 0x8000000004;
  byte_1EAA04784 = 3;
  dword_1EAA04780 = 0x2000000;
  *&byte_1EAA04785 = 0;
}

uint64_t InterpolatableArchiveContent.defaultAnimation(to:)(uint64_t a1)
{
  v2 = v1;
  v26[1] = *MEMORY[0x1E69E9840];
  v26[0] = 0;
  v4 = *(type metadata accessor for InterpolatableArchiveContent(0) + 28);
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    v24 = *(a1 + v4);
    do
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
      }

      v9 = (v8 + 32 * v7);
      v10 = v9[1].i64[1];
      if (v10)
      {
        v25 = *v9;
        v11 = v9[1].i32[0];
        v12 = v9[1].u32[1];
        swift_retain_n();
        v13 = v2;
        v14 = specialized getter of oldIDs #1 in InterpolatableArchiveContent.defaultAnimation(to:)(v26, v2);
        if (!*(v14 + 16) || (Hasher.init(_seed:)(), Hasher.combine(bytes:)(), Hasher._combine(_:)(v12), v15 = Hasher._finalize()(), v16 = -1 << *(v14 + 32), v17 = v15 & ~v16, ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0))
        {
LABEL_17:

          goto LABEL_20;
        }

        v18 = ~v16;
        while (1)
        {
          v19 = (*(v14 + 48) + 24 * v17);
          v20 = v19[1].i32[0] == v11;
          if (vminv_u16(vmovn_s32(vceqq_s32(*v19, v25))))
          {
            v21 = v19[1].i32[1];
            if (v20 && v21 == v12)
            {
              break;
            }
          }

          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v2 = v13;
        v5 = v24;
      }

      ++v7;
    }

    while (v7 != v6);
    v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_20:

  return v10;
}

uint64_t type metadata completion function for _ArchivedView(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ArchivablePlaybackButtonViewModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for PlaybackButton.Configuration(0);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivablePlaybackButtonViewModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys, &unk_1EFF98B68, MEMORY[0x1E69E6F48]);
  v21 = v5;
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ArchivablePlaybackButtonViewModifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys();
  v22 = v7;
  v11 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v19;
  LOBYTE(v24) = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton.Configuration and conformance PlaybackButton.Configuration, type metadata accessor for PlaybackButton.Configuration, protocol conformance descriptor for PlaybackButton.Configuration);
  v13 = v20;
  v14 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of PlaybackButton.State(v13, v10, type metadata accessor for PlaybackButton.Configuration);
  v26 = 1;
  lazy protocol witness table accessor for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v25;
  v16 = &v10[v8[5]];
  *v16 = v24;
  v16[16] = v15;
  v26 = 2;
  lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10[v8[6]] = v24;
  v26 = 3;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v22, v14);
  *&v10[v8[7]] = v24;
  outlined init with copy of PlaybackButton.State(v10, v18, type metadata accessor for ArchivablePlaybackButtonViewModifier);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of PlaybackButton.State(v10, type metadata accessor for ArchivablePlaybackButtonViewModifier);
}

void type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivablePlaybackButtonViewModifier.CodingKeys, &unk_1EFF98B68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivablePlaybackButtonViewModifier.CodingKeys, &unk_1EFF98B68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivablePlaybackButtonViewModifier.CodingKeys, &unk_1EFF98B68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivablePlaybackButtonViewModifier.CodingKeys, &unk_1EFF98B68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivablePlaybackButtonViewModifier.CodingKeys()
{
  v1 = 0x72756769666E6F63;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x61657241706174;
  }

  if (*v0)
  {
    v1 = 0x656C797473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t PlaybackButton.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.Configuration.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys, &unk_1EFF98AD8, MEMORY[0x1E69E6F48]);
  v31 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for PlaybackButton.Configuration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys();
  v32 = v10;
  v15 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v16 = v29;
    v17 = v13;
    type metadata accessor for ClosedRange<Date>(0);
    LOBYTE(v35) = 0;
    _sSNy10Foundation4DateVGSNyxGSesSeRzrlWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, lazy protocol witness table accessor for type Date and conformance Date, MEMORY[0x1E69E5FC0]);
    v18 = v30;
    v19 = v31;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of PlaybackButton.State(v18, v17, type metadata accessor for ClosedRange<Date>?);
    LOBYTE(v35) = 1;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton.State and conformance PlaybackButton.State, type metadata accessor for PlaybackButton.State, protocol conformance descriptor for PlaybackButton.State);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of PlaybackButton.State(v5, v17 + v11[5], type metadata accessor for PlaybackButton.State);
    LOBYTE(v35) = 2;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = (v17 + v11[6]);
    *v21 = v20;
    v21[1] = v22;
    v39 = 3;
    lazy protocol witness table accessor for type PlaybackButton.Phase and conformance PlaybackButton.Phase();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v17 + v11[7]) = v35;
    LOBYTE(v35) = 4;
    *(v17 + v11[8]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v39 = 5;
    lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v17 + v11[9]) = v35;
    v39 = 6;
    lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v32, v19);
    v23 = v36;
    v24 = v38;
    v25 = v17 + v11[10];
    *v25 = v35;
    *(v25 + 16) = v23;
    *(v25 + 24) = v37;
    *(v25 + 40) = v24;
    outlined init with copy of PlaybackButton.State(v17, v28, type metadata accessor for PlaybackButton.Configuration);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return outlined destroy of PlaybackButton.State(v17, type metadata accessor for PlaybackButton.Configuration);
  }
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Configuration.CodingKeys, &unk_1EFF98AD8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Configuration.CodingKeys, &unk_1EFF98AD8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Configuration.CodingKeys, &unk_1EFF98AD8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Configuration.CodingKeys, &unk_1EFF98AD8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  return lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
}

{
  return lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClosedRange<Date>(255);
    v10 = v9;
    v11 = lazy protocol witness table accessor for type Date and conformance Date(a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable(a4, v10, &v11);
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClosedRange<Date>(255);
    v10 = v9;
    v11 = _s10Foundation4DateVACSLAAWlTm_1(a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable(a4, v10, &v11);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSNy10Foundation4DateVGSNyxGSesSeRzrlWlTm_0(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClosedRange<Date>(255);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlaybackButton.Configuration.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C61767265746E69;
  v3 = 0x6E656D6E67696C61;
  if (v1 != 5)
  {
    v3 = 0x6E6F69746361;
  }

  v4 = 0x6573616870;
  if (v1 != 3)
  {
    v4 = 0x6573736572507369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574617473;
  if (v1 != 1)
  {
    v5 = 0x6D496D6574737973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for PlaybackButton.Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}