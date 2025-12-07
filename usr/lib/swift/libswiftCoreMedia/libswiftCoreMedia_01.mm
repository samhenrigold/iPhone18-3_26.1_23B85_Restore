void (*CMReadySampleBuffer<>.content.modify(id **a1))(void ***a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for CMSampleBufferRef.DynamicContent(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  CMSampleBufferRef.DynamicContent.init(from:)(*v1, v4);
  return CMReadySampleBuffer<>.content.modify;
}

{
  *a1 = v1;
  v3 = *(*(type metadata accessor for CMSampleDataReference(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  CMSampleDataReference.init(from:)(*v1, v4);
  return CMReadySampleBuffer<>.content.modify;
}

void CMReadySampleBuffer<>.content.modify(void ***a1, char a2)
{
  if (a2)
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = *a1;
    outlined init with copy of CMSampleBufferRef.DynamicContent(v3, v4, type metadata accessor for CMSampleBufferRef.DynamicContent);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v7 = *v5;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v8 = v7;
      v9 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v8);

      v7 = v9;
      *v5 = v9;
    }

    CMSampleBufferRef.DynamicContent.embed(into:)(v7);
    outlined destroy of CMSampleBufferRef.DynamicContent(v4, type metadata accessor for CMSampleBufferRef.DynamicContent);
  }

  else
  {
    v10 = *a1;
    v11 = swift_isUniquelyReferenced_nonNull();
    v12 = *v10;
    if ((v11 & 1) == 0)
    {
      v13 = v12;
      v14 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v13);

      v12 = v14;
      *v10 = v14;
    }

    v4 = a1[1];
    v3 = a1[2];
    CMSampleBufferRef.DynamicContent.embed(into:)(v12);
  }

  outlined destroy of CMSampleBufferRef.DynamicContent(v3, type metadata accessor for CMSampleBufferRef.DynamicContent);
  free(v3);

  free(v4);
}

{
  if (a2)
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = *a1;
    outlined init with copy of CMSampleDataReference(v3, v4, type metadata accessor for CMSampleDataReference);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v7 = *v5;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v8 = v7;
      v9 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v8);

      v7 = v9;
      *v5 = v9;
    }

    CMSampleDataReference.embed(into:)(v7);
    outlined destroy of CMSampleDataReference(v4, type metadata accessor for CMSampleDataReference);
  }

  else
  {
    v10 = *a1;
    v11 = swift_isUniquelyReferenced_nonNull();
    v12 = *v10;
    if ((v11 & 1) == 0)
    {
      v13 = v12;
      v14 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v13);

      v12 = v14;
      *v10 = v14;
    }

    v4 = a1[1];
    v3 = a1[2];
    CMSampleDataReference.embed(into:)(v12);
  }

  outlined destroy of CMSampleDataReference(v3, type metadata accessor for CMSampleDataReference);
  free(v3);

  free(v4);
}

uint64_t CMReadySampleBuffer<>.init(unsafeMarkerOnlySampleBuffer:)@<X0>(opaqueCMSampleBuffer *a1@<X0>, opaqueCMSampleBuffer **a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v4 >= 2)
  {
    goto LABEL_3;
  }

  while (1)
  {
    do
    {
      __break(1u);
LABEL_3:
      if (v4 > 3)
      {
        goto LABEL_7;
      }
    }

    while (v4 == 3);
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_7:
    if (v4 == 4)
    {
      break;
    }

    if (v4 != 5)
    {
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      CMSampleBufferHasDataFailed(a1, &statusOut);
      __break(1u);
    }
  }

  if (!CMSampleBufferIsValid(a1))
  {
    goto LABEL_13;
  }

  statusOut = noErr.getter();
  result = CMSampleBufferDataIsReady(a1);
  if (!result)
  {
    goto LABEL_14;
  }

  *a2 = a1;
  return result;
}

void CMReadySampleBuffer<>.init(_:)(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v4 < 2 || v4 == 3)
  {

LABEL_7:
    v3 = 0;
LABEL_8:
    *a2 = v3;
    return;
  }

  if (v4 == 4)
  {
    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v6 = v4;

    if (v6 != 5)
    {
      __break(1u);
      goto LABEL_13;
    }

    goto LABEL_7;
  }

LABEL_13:
  __break(1u);
}

{
  v3 = *a1;
  v4 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v4 == 1)
  {
    goto LABEL_6;
  }

  if (!v4)
  {

LABEL_5:
    v3 = 0;
LABEL_6:
    *a2 = v3;
    return;
  }

  v5 = v4;

  if ((v5 - 3) < 3)
  {
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    __break(1u);
  }

  __break(1u);
}

{
  v3 = *a1;
  v4 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v4 && (v5 = v4, v3, v3 = 0, v5 != 1) && (v5 - 3) >= 3)
  {
    if (v5 == 2)
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    *a2 = v3;
  }
}

{
  v3 = *a1;
  v4 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v4 < 2)
  {

LABEL_3:
    v3 = 0;
LABEL_4:
    *a2 = v3;
    return;
  }

  if (v4 == 3)
  {
    goto LABEL_4;
  }

  if (v4 != 2)
  {
    v5 = v4;

    if (v5 - 6 >= 0xFFFFFFFE)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t CMReadySampleBuffer<>.init(markerAt:duration:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = a5;
  v29 = a3;
  v30 = a7;
  v10 = a2;
  v12 = HIDWORD(a2);
  v13 = HIDWORD(a5);
  v14 = type metadata accessor for CMSampleBufferRef.Initializer(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v28 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v23 = MEMORY[0x277CC0898];
  v24 = *MEMORY[0x277CC0898];
  v25 = *(MEMORY[0x277CC0898] + 16);
  v31 = 0;
  *v22 = a4;
  *(v22 + 2) = v8;
  *(v22 + 3) = v13;
  *(v22 + 2) = a6;
  *(v22 + 3) = a1;
  *(v22 + 8) = v10;
  *(v22 + 9) = v12;
  *(v22 + 5) = v29;
  *(v22 + 6) = v24;
  *(v22 + 7) = *(v23 + 8);
  *(v22 + 8) = v25;
  v22[72] = 0;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of CMSampleBufferRef.DynamicContent(v22, v20, type metadata accessor for CMSampleBufferRef.Initializer);
  outlined init with copy of CMSampleBufferRef.DynamicContent(v20, v17, type metadata accessor for CMSampleBufferRef.Initializer);
  inited = _s9CoreMedia29_CMSampleBufferInitTrampolinePAAEyxSo0cD3RefaAAE11InitializerOcfCAE_Tt1g5(v17);
  outlined destroy of CMSampleBufferRef.DynamicContent(v20, type metadata accessor for CMSampleBufferRef.Initializer);
  result = outlined destroy of CMSampleBufferRef.DynamicContent(v22, type metadata accessor for CMSampleBufferRef.Initializer);
  *v30 = inited;
  return result;
}

uint64_t key path setter for CMReadySampleBuffer<>.markerTimeStamp : CMReadySampleBuffer<Never>(uint64_t *a1, id *a2)
{
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v3 = *a2;
    v4 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v3);

    *a2 = v4;
  }

  return FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();
}

uint64_t CMReadySampleBuffer<>.markerTimeStamp.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v4 = *v3;
    v5 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v4);

    *v3 = v5;
  }

  return FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();
}

void (*CMReadySampleBuffer<>.markerTimeStamp.modify(void *a1))(id ***a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *v1;
  v4[1] = *v1;
  CMSampleBufferGetPresentationTimeStamp((v4 + 11), v5);
  return CMReadySampleBuffer<>.markerTimeStamp.modify;
}

void CMReadySampleBuffer<>.markerTimeStamp.modify(id ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[11];
  v4 = (*a1)[12];
  v5 = (*a1)[13];
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v6 = *v2;
    v7 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v6);
    v8 = *v1;

    *v8 = v7;
  }

  *(v1 + 1) = v9;
  v1[4] = v10;
  v1[5] = v3;
  v1[6] = v4;
  v1[7] = v5;
  *(v1 + 4) = v11;
  v1[10] = v12;
  FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();

  free(v1);
}

uint64_t CMReadySampleBuffer<>.duration.getter()
{
  return CMReadySampleBuffer<>.markerTimeStamp.getter(MEMORY[0x277CC0018]);
}

{
  return CMReadySampleBuffer<>.markerTimeStamp.getter(MEMORY[0x277CC0018]);
}

{
  return CMReadySampleBuffer<>.markerTimeStamp.getter(MEMORY[0x277CC0018]);
}

uint64_t key path setter for CMReadySampleBuffer<>.duration : CMReadySampleBuffer<Never>(uint64_t *a1, id *a2)
{
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v3 = *a2;
    v4 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v3);

    *a2 = v4;
  }

  return FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();
}

uint64_t CMReadySampleBuffer<>.duration.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v4 = *v3;
    v5 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v4);

    *v3 = v5;
  }

  return FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();
}

{
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v4 = *v3;
    v5 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v4);

    *v3 = v5;
  }

  return FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();
}

{
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v4 = *v3;
    v5 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v4);

    *v3 = v5;
  }

  return FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();
}

void (*CMReadySampleBuffer<>.duration.modify(void *a1))(id ***a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *v1;
  v4[1] = *v1;
  CMSampleBufferGetDuration((v4 + 11), v5);
  return CMReadySampleBuffer<>.duration.modify;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *v1;
  v4[1] = *v1;
  CMSampleBufferGetDuration((v4 + 11), v5);
  return CMReadySampleBuffer<>.duration.modify;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *v1;
  v4[1] = *v1;
  CMSampleBufferGetDuration((v4 + 11), v5);
  return CMReadySampleBuffer<>.duration.modify;
}

void CMReadySampleBuffer<>.duration.modify(id ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[11];
  v4 = (*a1)[12];
  v5 = (*a1)[13];
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v6 = *v2;
    v7 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v6);
    v8 = *v1;

    *v8 = v7;
  }

  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  *(v1 + 5) = v9;
  *(v1 + 7) = v10;
  *(v1 + 9) = v11;
  FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();

  free(v1);
}

uint64_t type metadata accessor for CMSampleBufferRef.DynamicContent(uint64_t a1)
{
  result = type metadata singleton initialization cache for CMSampleBufferRef.DynamicContent;
  if (!type metadata singleton initialization cache for CMSampleBufferRef.DynamicContent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of CMSampleBufferRef.DynamicContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CMSampleBufferRef.ContentType and conformance CMSampleBufferRef.ContentType()
{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.ContentType and conformance CMSampleBufferRef.ContentType;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.ContentType and conformance CMSampleBufferRef.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.ContentType and conformance CMSampleBufferRef.ContentType);
  }

  return result;
}

double keypath_get_3Tm@<D0>(void *a1@<X0>, void (*a2)(void *__return_ptr, void)@<X3>, uint64_t a3@<X8>)
{
  a2(v6, *a1);
  v4 = v6[2];
  result = *&v6[1];
  *a3 = v6[0];
  *(a3 + 8) = result;
  *(a3 + 16) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CMSampleBufferRef.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CMSampleBufferRef.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CMSampleBufferRef.DynamicContent(uint64_t a1)
{
  type metadata accessor for CMSampleDataReference(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CVReadOnlyPixelBuffer();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [CMTaggedDynamicBuffer]();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [CMTaggedDynamicBuffer]()
{
  if (!lazy cache variable for type metadata for [CMTaggedDynamicBuffer])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CMTaggedDynamicBuffer]);
    }
  }
}

uint64_t outlined destroy of CMSampleBufferRef.DynamicContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo11CVBufferRefaABIeggo_A2Bs5Error_pIegTgrzo_TR@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall CVReadOnlyPixelBuffer.embed(into:)(CMSampleBufferRef into)
{
  v1 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v1 > 0)
  {
    if (v1 == 1)
    {
      MEMORY[0x28223BE20](v1);
      _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();
      return;
    }

    if ((v1 - 3) >= 3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!v1)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    if (v1 == 2)
    {
      __break(1u);
    }
  }

  __break(1u);
}

uint64_t CMReadySampleBuffer<>.init(unsafeWithPixelBuffer:)@<X0>(opaqueCMSampleBuffer *a1@<X0>, opaqueCMSampleBuffer **a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = CMSampleBufferGetFormatDescription(a1);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v5 <= 0)
  {
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v5 != 1)
  {
    if ((v5 - 3) >= 3)
    {
LABEL_11:
      if (v5 != 2)
      {
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        CMSampleBufferHasDataFailed(a1, &statusOut);
        __break(1u);
      }

      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!CMSampleBufferIsValid(a1))
  {
    goto LABEL_13;
  }

  statusOut = noErr.getter();
  result = CMSampleBufferDataIsReady(a1);
  if (!result)
  {
    goto LABEL_16;
  }

  *a2 = a1;
  return result;
}

uint64_t CMReadySampleBuffer<>.init(pixelBuffer:formatDescription:presentationTimeStamp:duration:)@<X0>(uint64_t a1@<X0>, CFTypeRef inited@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v33 = a5;
  v34 = a6;
  v32 = a3;
  v15 = type metadata accessor for CMSampleBufferRef.Initializer(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v29 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v29 - v22);
  if (!inited)
  {
    v30 = a8;
    v31 = a9;
    KeyPath = swift_getKeyPath();
    v29 = &v29;
    v25 = MEMORY[0x28223BE20](KeyPath);
    *(&v29 - 2) = partial apply for implicit closure #1 in _CMFormatDescriptionInitTrampoline.init(pixelBuffer:);
    *(&v29 - 1) = v25;
    type metadata accessor for CVBufferRef(0);

    _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();

    inited = _s9CoreMedia34_CMFormatDescriptionInitTrampolinePAAE11imageBufferxSo11CVBufferRefa_tKcfCSo0cdJ0a_Tt1g5(v35);

    a8 = v30;
    a9 = v31;
  }

  *v23 = a1;
  v23[1] = inited;
  v23[2] = v32;
  v23[3] = a4;
  v26 = v34;
  v23[4] = v33;
  v23[5] = v26;
  v23[6] = a7;
  v23[7] = a8;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of CMSampleBufferRef.Initializer(v23, v21);
  outlined init with copy of CMSampleBufferRef.Initializer(v21, v18);
  v27 = _s9CoreMedia29_CMSampleBufferInitTrampolinePAAEyxSo0cD3RefaAAE11InitializerOcfCAE_Tt1g5(v18);
  outlined destroy of CMSampleBufferRef.Initializer(v21);
  result = outlined destroy of CMSampleBufferRef.Initializer(v23);
  *a9 = v27;
  return result;
}

CVImageBufferRef CMReadySampleBuffer<>.content.getter()
{
  v1 = *v0;
  result = CMSampleBufferGetImageBuffer(v1);
  if (result)
  {
    type metadata accessor for CVReadOnlyPixelBuffer();
    v3 = dispatch thunk of CVReadOnlyPixelBuffer.__allocating_init(unsafeBuffer:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void key path getter for CMReadySampleBuffer<>.content : CMReadySampleBuffer<CVReadOnlyPixelBuffer>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (CMSampleBufferGetImageBuffer(v3))
  {
    type metadata accessor for CVReadOnlyPixelBuffer();
    v4 = dispatch thunk of CVReadOnlyPixelBuffer.__allocating_init(unsafeBuffer:)();

    *a2 = v4;
  }

  else
  {
    __break(1u);
  }
}

void key path setter for CMReadySampleBuffer<>.content : CMReadySampleBuffer<CVReadOnlyPixelBuffer>(uint64_t a1, void **a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v4 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v5 = v4;
    v6 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v5);

    v4 = v6;
    *a2 = v6;
  }

  CVReadOnlyPixelBuffer.embed(into:)(v4);
}

CVImageBufferRef CMReadySampleBuffer<>.content.modify(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *v1;
  result = CMSampleBufferGetImageBuffer(v3);
  if (result)
  {
    type metadata accessor for CVReadOnlyPixelBuffer();
    v5 = dispatch thunk of CVReadOnlyPixelBuffer.__allocating_init(unsafeBuffer:)();

    *a1 = v5;
    return CMReadySampleBuffer<>.content.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CMReadySampleBuffer<>.content.modify(void *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v4 = *v2;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v5 = v4;
      v6 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v5);

      v4 = v6;
      *v2 = v6;
    }

    CVReadOnlyPixelBuffer.embed(into:)(v4);
  }

  else
  {
    v7 = swift_isUniquelyReferenced_nonNull();
    v8 = *v2;
    if ((v7 & 1) == 0)
    {
      v9 = v8;
      v10 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v9);

      v8 = v10;
      *v2 = v10;
    }

    CVReadOnlyPixelBuffer.embed(into:)(v8);
  }
}

uint64_t CMReadySampleBuffer<>.presentationTimeStamp.getter()
{
  return CMReadySampleBuffer<>.markerTimeStamp.getter(MEMORY[0x277CC0040]);
}

{
  return CMReadySampleBuffer<>.markerTimeStamp.getter(MEMORY[0x277CC0040]);
}

uint64_t CMReadySampleBuffer<>.presentationTimeStamp.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v4 = *v3;
    v5 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v4);

    *v3 = v5;
  }

  return FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();
}

{
  FigSampleBufferGetFirstSampleTimingsForSwiftOverlay();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v4 = *v3;
    v5 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v4);

    *v3 = v5;
  }

  return FigSampleBufferSetFirstSampleTimingsForSwiftOverlay();
}

void (*CMReadySampleBuffer<>.presentationTimeStamp.modify(void *a1))(id ***a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *v1;
  v4[1] = *v1;
  CMSampleBufferGetPresentationTimeStamp((v4 + 11), v5);
  return CMReadySampleBuffer<>.markerTimeStamp.modify;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *v1;
  v4[1] = *v1;
  CMSampleBufferGetPresentationTimeStamp((v4 + 11), v5);
  return CMReadySampleBuffer<>.markerTimeStamp.modify;
}

void CMReadySampleBuffer<>.sampleAttachments.getter()
{
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo17CMSampleBufferRefa8CMObjectRtzrlE22firstSampleAttachmentsAgAE0kL0VvgAlGYTXEfU_();
}

{
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo17CMSampleBufferRefa8CMObjectRtzrlE22firstSampleAttachmentsAgAE0kL0VvgAlGYTXEfU_();
}

void key path setter for CMReadySampleBuffer<>.sampleAttachments : CMReadySampleBuffer<CVReadOnlyPixelBuffer>(void *a1, id *a2)
{

  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v3 = *a2;
    v4 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v3);

    *a2 = v4;
  }

  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  FigSampleBufferSetSingleSampleAttachments();
}

void CMReadySampleBuffer<>.sampleAttachments.setter(uint64_t *a1)
{
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v2 = *v1;
    v3 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v2);

    *v1 = v3;
  }

  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  FigSampleBufferSetSingleSampleAttachments();
}

{
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v2 = *v1;
    v3 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v2);

    *v1 = v3;
  }

  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  FigSampleBufferSetSingleSampleAttachments();
}

uint64_t (*CMReadySampleBuffer<>.sampleAttachments.modify(void *a1))()
{
  a1[1] = v1;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo17CMSampleBufferRefa8CMObjectRtzrlE22firstSampleAttachmentsAgAE0kL0VvgAlGYTXEfU_();
  a1[2] = 0;
  return CMReadySampleBuffer<>.sampleAttachments.modify;
}

void CMReadySampleBuffer<>.sampleAttachments.modify(void *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {

    if (swift_isUniquelyReferenced_nonNull())
    {
LABEL_5:
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      FigSampleBufferSetSingleSampleAttachments();

      return;
    }

    v4 = a1[2];
    v5 = *v3;
    v6 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v5);
    if (!v4)
    {
      v7 = v6;

      *v3 = v7;
      goto LABEL_5;
    }

LABEL_14:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v9 = a1[2];
    v10 = *v3;
    v11 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v10);
    if (v9)
    {
      goto LABEL_14;
    }

    v12 = v11;

    *v3 = v12;
  }

  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  FigSampleBufferSetSingleSampleAttachments();
}

CFTypeRef _s9CoreMedia34_CMFormatDescriptionInitTrampolinePAAE11imageBufferxSo11CVBufferRefa_tKcfCSo0cdJ0a_Tt1g5(CVImageBufferRef imageBuffer)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], imageBuffer, v6);
  result = noErr.getter();
  if (v2 != result)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v5 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
    swift_willThrow();

    return v2;
  }

  if (v6[0])
  {
    v4 = v6[0];
    v2 = _swiftInitForCMTimebase(v4);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for implicit closure #1 in _CMFormatDescriptionInitTrampoline.init(pixelBuffer:)(void *a1)
{
  return implicit closure #1 in _CMFormatDescriptionInitTrampoline.init(pixelBuffer:)(a1, v1);
}

{
  return implicit closure #1 in closure #4 in CMSampleBufferRef.Initializer.create(_:)(a1, v1);
}

uint64_t _sSo11CVBufferRefaABIeggo_A2Bs5Error_pIegTgrzo_TRTA_0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t outlined destroy of CMSampleBufferRef.Initializer(uint64_t a1)
{
  v2 = type metadata accessor for CMSampleBufferRef.Initializer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CMMutableDataBlockBuffer.MemoryPool.__allocating_init(ageOutDuration:)(double a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SdtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SdtGMR);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CC0580];
  *(inited + 16) = xmmword_22E0EF920;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = a1;
  v6 = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SdTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, Double)(inited + 32);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = CMMemoryPoolCreate(isa);

  *(v2 + 16) = v8;
  return v2;
}

uint64_t CMMutableDataBlockBuffer.MemoryPool.init(ageOutDuration:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SdtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SdtGMR);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CC0580];
  *(inited + 16) = xmmword_22E0EF920;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = a1;
  v6 = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SdTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, Double)(inited + 32);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = CMMemoryPoolCreate(isa);

  *(v1 + 16) = v8;
  return v1;
}

uint64_t CMMutableDataBlockBuffer.MemoryPool.makeBlockBuffer(count:)()
{
  BlockBufferWithOptions = CMMemoryPoolCreateBlockBufferWithOptions();
  if (BlockBufferWithOptions == noErr.getter())
  {
    __break(1u);
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v3 initWithDomain:*MEMORY[0x277CCA590] code:BlockBufferWithOptions userInfo:0];
  swift_willThrow();

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void CMMutableDataBlockBuffer.MemoryPool.makeBlockBuffer(copying:)(unsigned int *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
    v4 = 16 * v2;
    v5 = a1 + 3;
    while (1)
    {
      v6 = *v5;
      v5 += 4;
      v7 = v6 + (v6 & 0xF);
      if (__CFADD__(v6, v6 & 0xF))
      {
        break;
      }

      v8 = __OFADD__(v3, v7);
      v3 += v7;
      if (v8)
      {
        goto LABEL_9;
      }

      v4 -= 16;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

LABEL_6:
  BlockBufferWithOptions = CMMemoryPoolCreateBlockBufferWithOptions();
  if (BlockBufferWithOptions == noErr.getter())
  {
    goto LABEL_10;
  }

  v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v11 = [v10 initWithDomain:*MEMORY[0x277CCA590] code:BlockBufferWithOptions userInfo:0];
  swift_willThrow();

  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v12 initWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

uint64_t CMMutableDataBlockBuffer.MemoryPool.makeBlockBuffer(count:options:)()
{
  BlockBufferWithOptions = CMMemoryPoolCreateBlockBufferWithOptions();
  if (BlockBufferWithOptions == noErr.getter())
  {
    __break(1u);
  }

  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v4 initWithDomain:*MEMORY[0x277CCA590] code:BlockBufferWithOptions userInfo:0];
  swift_willThrow();

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t CMMutableDataBlockBuffer.MemoryPool.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t outlined destroy of (CFStringRef, Double)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_SdtMd, &_sSo11CFStringRefa_SdtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CMMutableDataBlockBuffer.MemoryPool.AllocationOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE015withUnsafeBlockG0yqd__qd__AGKYTXEKRi_d__lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a1;
  v6[6] = a2;
  return (*(a5 + 24))(_sSo16CMBlockBufferRefaqd__s5Error_pIgTgrzo_ABqd__sAC_pIegTnrzo_9CoreMedia16ConcurrentAccessO7WrapperRzAB8CMObjectRtzRi_d__r__lTRTA, v6, a4, a3);
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE32withContiguousStorageIfAvailable2in_qd__SgSnySiGSg_qd__SWKYTXEtKlF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  if (a3)
  {
    KeyPath = swift_getKeyPath();
    ConcurrentAccess.Wrapper.subscript.getter(KeyPath, a5, a7);

    v14 = v20;
  }

  else
  {
    v14 = a2 - a1;
    if (__OFSUB__(a2, a1))
    {
      __break(1u);
    }
  }

  if (v14 < 1)
  {
    v17 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    (*(a7 + 24))(&v20, _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE32withContiguousStorageIfAvailable2in_qd__SgSnySiGSg_qd__SWKYTXEtKlFs5Int32VAGYTXEfU_TA);
    v15 = v20;
    v16 = noErr.getter();
    v17 = 1;
    if (v15 == v16 && v21 >= v14 && v22)
    {
      result = a4(v22, v22 + v14);
      if (v8)
      {
        return result;
      }

      v17 = 0;
    }
  }

  return (*(*(a6 - 8) + 56))(a8, v17, 1, a6);
}

uint64_t ConcurrentAccess.Wrapper<>.count.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  ConcurrentAccess.Wrapper.subscript.getter(KeyPath, a1, a2);

  return v6;
}

uint64_t ConcurrentAccess.Wrapper<>.withContiguousStorageIfAvailableNonSending<A>(_:)@<X0>(uint64_t (*a1)(void, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *(a4 + 24);
  (v10)(v18, _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE12isContiguousSbvgSbAGYTXEfU_, 0, MEMORY[0x277D839B0], a2);
  if (LOBYTE(v18[0]) != 1)
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  KeyPath = swift_getKeyPath();
  ConcurrentAccess.Wrapper.subscript.getter(KeyPath, a2, a4);

  if (v18[0])
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v18[0] = 0;
  v17 = 0;
  MEMORY[0x28223BE20](v12);
  v10(&v16, _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE42withContiguousStorageIfAvailableNonSendingyqd__Sgqd__SRys5UInt8VGKXEKlFs5Int32VAGYTXEfU_TA);
  v13 = v16;
  if (v13 != noErr.getter() || !v18[0])
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  result = a1(v18[0], v17);
  if (!v5)
  {
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }

  return result;
}

OpaqueCMBlockBuffer *UnsafePointer<A>.copy(using:)(OpaqueCMBlockBuffer *a1, OpaqueCMBlockBuffer *a2)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  v7 = (a2 + 8);
  v6 = *a2;
  v8 = 16 * v6;
  if (!v6)
  {
    if (DataLength)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_30;
    }

LABEL_14:
    inited = _s9CoreMedia28_CMBlockBufferInitTrampolinePAAE8capacity5flagsxSi_So0cD3RefaAAE5FlagsVtKcfCAG_Tt2B5(v6, 0);
    if (v2)
    {
      return a2;
    }

    a2 = inited;
    v19 = 0;
    while (1)
    {
      if (!v8)
      {
        return a2;
      }

      v20 = v7[1];
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_38;
      }

      if (v21 < v19)
      {
        goto LABEL_39;
      }

      if (v19 < 0)
      {
        goto LABEL_40;
      }

      v22 = *(v7 + 1);
      if (CMBlockBufferGetDataLength(a1) < v21)
      {
        goto LABEL_41;
      }

      if (!v22)
      {
        break;
      }

      v23 = a1;
      v24 = CMBlockBufferReplaceDataBytes(v22, v23, v19, v20);
      if (v24 != noErr.getter())
      {
        v30 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v31 = *MEMORY[0x277CCA590];
        v32 = v24;
LABEL_33:
        [v30 initWithDomain:v31 code:v32 userInfo:0];
        swift_willThrow();
        goto LABEL_34;
      }

      appended = CMBlockBufferAppendBufferReference(a2, v23, v19, v20, 0);
      if (appended != noErr.getter())
      {
        v30 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v31 = *MEMORY[0x277CCA590];
        v32 = appended;
        goto LABEL_33;
      }

      v26 = v20 + (v20 & 0xF);
      if (__CFADD__(v20, v20 & 0xF))
      {
        goto LABEL_42;
      }

      v7 += 4;
      v14 = __OFADD__(v19, v26);
      v19 += v26;
      v8 -= 16;
      if (v14)
      {
        __break(1u);
        return a2;
      }
    }

    v27 = one-time initialization token for badPointerParameter;
    v28 = a1;
    if (v27 != -1)
    {
      goto LABEL_44;
    }

LABEL_30:
    v29 = static CMBlockBufferRef.Error.badPointerParameter;
    swift_willThrow();
    v29;
LABEL_34:

    return a2;
  }

  v9 = 0;
  v10 = (a2 + 12);
  v11 = 16 * v6;
  do
  {
    v12 = *v10;
    v10 += 4;
    v13 = v12 + (v12 & 0xF);
    if (__CFADD__(v12, v12 & 0xF))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v14 = __OFADD__(v9, v13);
    v9 += v13;
    if (v14)
    {
      goto LABEL_37;
    }

    v11 -= 16;
  }

  while (v11);
  if (DataLength != v9)
  {
    goto LABEL_43;
  }

  if (v6 != 1)
  {
    goto LABEL_14;
  }

  v15 = *(a2 + 2);
  if (v15)
  {
    v16 = v15 + *(a2 + 3);
  }

  else
  {
    v16 = 0;
  }

  specialized CMBlockBufferProtocol.replaceDataBytes(with:)(v15, v16);
  if (!v2)
  {
    return a1;
  }

  return a2;
}

uint64_t ConcurrentAccess.Wrapper<>.replace(range:with:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (a4)
  {
    v11 = a5 - a4;
    if (a5 - a4 >= 1)
    {
      v12 = result;
      v13 = a2;
      v14 = ConcurrentAccess.Wrapper<>.count.getter(a6, a7);
      a2 = v13;
      v15 = v14;
      result = v12;
      if (v15 == v11)
      {
LABEL_15:
        v21 = MEMORY[0x28223BE20](result);
        return _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE013withExclusiveD02to_qd__SnySiGSg_qd__AA0fG8Protocol_pKYTXEtKlF(v21, v22, a3 & 1);
      }

      __break(1u);
LABEL_6:
      v16 = a2 - result;
      if (__OFSUB__(a2, result))
      {
        __break(1u);
      }

      else
      {
        if (v16 < 1)
        {
          return result;
        }

        v17 = a5 - a4;
        if (!a4)
        {
          v17 = 0;
        }

        if (v16 == v17)
        {
          v18 = result;
          v19 = a2;
          result = ConcurrentAccess.Wrapper<>.count.getter(a6, a7);
          if ((result & 0x8000000000000000) == 0)
          {
            v20 = result;
            result = v18;
            if (v18 == v19 || (v18 & 0x8000000000000000) == 0 && v20 >= v19)
            {
              goto LABEL_15;
            }

LABEL_20:
            __break(1u);
            return result;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t ConcurrentAccess.Wrapper<>.replace<A>(range:with:)(unsigned int (*a1)(char *, uint64_t, uint64_t), unsigned int (*a2)(char *, uint64_t, uint64_t), int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a7;
  v44 = a4;
  v45 = a5;
  LODWORD(AssociatedConformanceWitness) = a3;
  v42 = a2;
  swift_getAssociatedTypeWitness();
  v11 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v39 - v13;
  v15 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v39 - v16;
  v18 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v18);
  v39[1] = v39 - v19;
  v40 = v20;
  v41 = v11;
  v49 = swift_getAssociatedTypeWitness();
  result = MEMORY[0x28223BE20](v49);
  v48 = v39 - v23;
  if (AssociatedConformanceWitness)
  {
    v24 = v22;
    result = dispatch thunk of Collection.count.getter();
    if (result >= 1)
    {
      v39[0] = v24;
      v25 = ConcurrentAccess.Wrapper<>.count.getter(v45, v46);
      if (v25 != dispatch thunk of Collection.count.getter())
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      a1 = 0;
LABEL_14:
      v51 = a1;
      v44 = a8;
      dispatch thunk of DataProtocol.regions.getter();
      dispatch thunk of Sequence.makeIterator()();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      v32 = *(v50 + 48);
      v41 = v50 + 48;
      v42 = v32;
      if (v32(v17, 1, AssociatedTypeWitness) != 1)
      {
        v40 = *(v50 + 32);
        v50 += 32;
        v33 = (v50 - 24);
        while (1)
        {
          v34 = v40(v14, v17, AssociatedTypeWitness);
          MEMORY[0x28223BE20](v34);
          v35 = v46;
          v39[-6] = v45;
          v39[-5] = a6;
          v36 = a6;
          v37 = v44;
          v39[-4] = v35;
          v39[-3] = v37;
          v39[-2] = v47;
          v39[-1] = &v51;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
          a6 = v36;
          swift_getAssociatedConformanceWitness();
          v38 = dispatch thunk of Collection.count.getter();
          (*v33)(v14, AssociatedTypeWitness);
          if (__OFADD__(v51, v38))
          {
            break;
          }

          v51 = (v51 + v38);
          dispatch thunk of IteratorProtocol.next()();
          if (v42(v17, 1, AssociatedTypeWitness) == 1)
          {
            return (*(v39[0] + 8))(v48, v49);
          }
        }

        __break(1u);
        goto LABEL_21;
      }

      return (*(v39[0] + 8))(v48, v49);
    }
  }

  else
  {
    v26 = v42 - a1;
    if (__OFSUB__(v42, a1))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v39[0] = v22;
    if (v26 >= 1)
    {
      if (v26 == dispatch thunk of Collection.count.getter())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22E0EF920;
        v28 = ConcurrentAccess.Wrapper<>.count.getter(v45, v46);
        if ((v28 & 0x8000000000000000) == 0)
        {
          *(inited + 40) = v28;
          v29 = (inited + 40);
          *(inited + 32) = 0;
          v30 = *(inited + 16) + 1;
          while (--v30)
          {
            v31 = v29;
            v29 += 2;
            if (*(v31 - 1) == a1 && *v31 == v42)
            {
              swift_setDeallocating();
              goto LABEL_14;
            }
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        result = swift_setDeallocating();
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  return result;
}

CFTypeRef protocol witness for ConcurrentAccess.CloneForCopyOnWrite.init(cloneForCopyOnWrite:) in conformance CMBlockBufferRef(void *a1)
{
  result = FigBlockBufferCloneForSwiftOverlay();
  if (result)
  {
    v3 = result;
    v4 = _swiftInitForCMTimebase(result);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE12isContiguousSbvgSbAGYTXEfU_@<X0>(CMBlockBufferRef *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  result = CMBlockBufferIsEmpty(*a1);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    DataLength = CMBlockBufferGetDataLength(v3);
    result = CMBlockBufferIsRangeContiguous(v3, 0, DataLength);
    v5 = result != 0;
  }

  *a2 = v5;
  return result;
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE9subBlocksSayAgAE8SubBlockVGvgs5Int32VAGYTXEfU_AOSvSg_SitXEfU_(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *a4;
  if (a1)
  {
    v9 = a2 + a1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v10;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *a3 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
    *a3 = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = (v10 + 24 * v13);
  v14[4] = v8;
  v14[5] = a1;
  v14[6] = v9;
  if (__OFADD__(*a4, a2))
  {
    __break(1u);
  }

  else
  {
    *a4 += a2;

    return noErr.getter();
  }

  return result;
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE013withExclusiveD02to_qd__SnySiGSg_qd__AA0fG8Protocol_pKYTXEtKlF(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x28223BE20](a1);
    v17 = v3;
    v18 = v4;
    v19 = v6;
    v20 = v5;
    v21 = v7;
    return (*(v6 + 32))(_s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE013withExclusiveD02to_qd__SnySiGSg_qd__AA0fG8Protocol_pKYTXEtKlFqd__AGzKYTXEfU0_TA);
  }

  else
  {
    v9 = MEMORY[0x28223BE20](a1);
    v16[2] = v10;
    v16[3] = v11;
    v17 = v13;
    v18 = v12;
    v19 = v14;
    v20 = v9;
    v21 = v15;
    return (*(v13 + 32))(_s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE013withExclusiveD02to_qd__SnySiGSg_qd__AA0fG8Protocol_pKYTXEtKlFqd__AGzKYTXEfU_TA, v16, v11, v10, v13);
  }
}

OpaqueCMBlockBuffer **_s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE013withExclusiveD02to_qd__SnySiGSg_qd__AA0fG8Protocol_pKYTXEtKlFqd__AGzKYTXEfU_(OpaqueCMBlockBuffer **result, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *result;
  v10[3] = &type metadata for CMBlockBufferRef.Slice;
  v10[4] = &protocol witness table for CMBlockBufferRef.Slice;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    result = CMBlockBufferGetDataLength(v5);
    if (result >= a5)
    {
      v10[0] = v5;
      v10[1] = a4;
      v10[2] = a5;
      v9 = v5;
      a2(v10);
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE013withExclusiveD02to_qd__SnySiGSg_qd__AA0fG8Protocol_pKYTXEtKlFqd__AGzKYTXEfU0_(void **a1, void (*a2)(void *))
{
  v3 = *a1;
  type metadata accessor for CMBlockBufferRef(0);
  v7[3] = v4;
  v7[4] = &protocol witness table for CMBlockBufferRef;
  v7[0] = v3;
  v5 = v3;
  a2(v7);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE7replace5range4withySnySiGSg_SWtFyAA0fG8Protocol_pYTXEfU_(void *a1, const void *a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = CMBlockBufferProtocol.replaceDataBytes(with:)(a2, a3, v6, v7);
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in ConcurrentAccess.Wrapper<>.replace<A>(range:with:)(uint64_t a1, uint64_t a2)
{
  result = **(v2 + 56);
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= result)
  {
    return ConcurrentAccess.Wrapper<>.replace(range:with:)(result, v6, 0, a1, a2, *(v2 + 16), *(v2 + 32));
  }

  __break(1u);
  return result;
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE42withContiguousStorageIfAvailableNonSendingyqd__Sgqd__SRys5UInt8VGKXEKlFs5Int32VAGYTXEfU_TA@<X0>(CMBlockBufferRef *a1@<X0>, _DWORD *a2@<X8>)
{
  result = CMBlockBufferGetDataPointer(*a1, 0, *(v2 + 16), 0, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE32withContiguousStorageIfAvailable2in_qd__SgSnySiGSg_qd__SWKYTXEtKlFs5Int32VAGYTXEfU_TA@<X0>(CMBlockBufferRef *a1@<X0>, _DWORD *a2@<X8>)
{
  result = CMBlockBufferGetDataPointer(*a1, *(v2 + 16), *(v2 + 24), 0, *(v2 + 32));
  *a2 = result;
  return result;
}

id _CMSimpleQueueInitTrampoline.init(capacity:)(uint64_t a1)
{
  if (a1 == a1)
  {
    v5[4] = MEMORY[0x28223BE20](a1);
    return _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSimpleQueueInitTrampoline.init(capacity:), v5, v4, *(v3 + 8));
  }

  else
  {
    if (one-time initialization token for parameterOutOfRange != -1)
    {
      swift_once();
    }

    v1 = static CMSimpleQueueRef.Error.parameterOutOfRange;
    swift_willThrow();
    return v1;
  }
}

void one-time initialization function for requiredParameterMissing(uint64_t a1)
{
  one-time initialization function for missingRequiredParameter(a1, -12771, &static CMSimpleQueueRef.Error.requiredParameterMissing);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12731, &static CMSampleBufferRef.Error.requiredParameterMissing);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12761, &static CMBufferQueueRef.Error.requiredParameterMissing);
}

void one-time initialization function for queueIsFull(uint64_t a1)
{
  one-time initialization function for missingRequiredParameter(a1, -12773, &static CMSimpleQueueRef.Error.queueIsFull);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12764, &static CMBufferQueueRef.Error.queueIsFull);
}

uint64_t CMSimpleQueueRef.enqueue(_:)(void *element)
{
  v2 = CMSimpleQueueEnqueue(v1, element);
  result = noErr.getter();
  if (v2 != result)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v4 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMSimpleQueueRef.reset()()
{
  v1 = CMSimpleQueueReset(v0);
  if (v1 != noErr.getter())
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v2 initWithDomain:*MEMORY[0x277CCA590] code:v1 userInfo:0];
    swift_willThrow();
  }
}

uint64_t CMSimpleQueueRef.fullness.getter()
{
  result = CMSimpleQueueGetCapacity(v0);
  if (result)
  {
    CMSimpleQueueGetCount(v0);
    return CMSimpleQueueGetCapacity(v0);
  }

  return result;
}

uint64_t TypedCFDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a2 + 56) + 32 * v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs8Sendable_pGMd, &_sSDySSs8Sendable_pGMR);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance TypedCFDictionary(void **a1)
{
  v2 = *a1;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  v2;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

NSDictionary protocol witness for RawRepresentable.rawValue.getter in conformance TypedCFDictionary@<X0>(NSDictionary *a1@<X8>)
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  result.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a1->super.isa = result.super.isa;
  return result;
}

uint64_t protocol witness for ExpressibleByDictionaryLiteral.init(dictionaryLiteral:) in conformance TypedCFDictionary@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, 1, &v6);

  *a2 = v6;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TypedCFDictionary(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16) == 0) == (*(*a2 + 16) != 0))
  {
    return 0;
  }

  type metadata accessor for CFDictionaryRef(0);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3 = Dictionary._bridgeToObjectiveC()().super.isa;
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
  v4 = static _CFObject.== infix(_:_:)();

  return v4 & 1;
}

uint64_t protocol witness for TypedCFDictionaryRepresentable.init(rawCFValue:) in conformance CGSize@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = CGSize.init(dictionaryRepresentation:)(isa);
  *a2 = *&v7.is_nil;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  LOBYTE(result) = v7.is_nil;
  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall CMSampleDataReference.embed(into:)(CMSampleBufferRef into)
{
  v2 = v1;
  if (one-time initialization token for sampleReferenceURL != -1)
  {
    swift_once();
  }

  v4 = static CMSampleBufferRef.AttachmentKey.sampleReferenceURL;
  v5 = type metadata accessor for URL();
  v20 = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v2, v5);
  v21 = 1;
  v18 = v4;
  type metadata accessor for CMSampleBufferRef(0);
  v8 = v7;
  v16 = v7;
  v17 = &protocol witness table for CMSampleBufferRef;
  v15[0] = into;
  v9 = v4;
  v10 = into;
  CMAttachmentBearerAttachments.subscript.setter(v19, &v18);
  outlined destroy of CMAttachmentBearerAttachments(v15);
  if (one-time initialization token for sampleReferenceByteOffset != -1)
  {
    swift_once();
  }

  v11 = static CMSampleBufferRef.AttachmentKey.sampleReferenceByteOffset;
  v12 = *(v2 + *(type metadata accessor for CMSampleDataReference(0) + 20));
  v20 = MEMORY[0x277D83B88];
  v18 = v11;
  v19[0] = v12;
  v21 = 1;
  v16 = v8;
  v17 = &protocol witness table for CMSampleBufferRef;
  v15[0] = v10;
  v13 = v10;
  v14 = v11;
  CMAttachmentBearerAttachments.subscript.setter(v19, &v18);
  outlined destroy of CMAttachmentBearerAttachments(v15);
}

uint64_t CMSampleDataReference.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "tR");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  if (one-time initialization token for sampleReferenceURL != -1)
  {
    swift_once();
  }

  v14 = static CMSampleBufferRef.AttachmentKey.sampleReferenceURL;
  type metadata accessor for CMSampleBufferRef(0);
  v16 = v15;
  v36 = v15;
  v37 = &protocol witness table for CMSampleBufferRef;
  v35[0] = a1;
  *&v30 = v14;
  v17 = v14;
  v18 = a1;
  CMAttachmentBearerAttachments.subscript.getter(&v30, v33);

  outlined destroy of CMAttachmentBearerAttachments(v35);
  if (v34 == 255)
  {
    outlined destroy of CMAttachmentBearerAttachments.Value?(v33, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
    v38 = 0u;
    v39 = 0u;
    outlined destroy of CMAttachmentBearerAttachments.Value?(&v38, &_sypSgMd, "lR");
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  else
  {
    v26 = a2;
    outlined init with copy of CMAttachmentBearerAttachments.Value(v33, &v30);
    outlined destroy of CMAttachmentBearerAttachments.Value?(v33, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
    v27 = v30;
    v28 = v31;
    v29 = v32;
    outlined init with take of Any(&v27, &v38);
    v19 = swift_dynamicCast();
    (*(v8 + 56))(v6, v19 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v20 = *(v8 + 32);
      v20(v13, v6, v7);
      (*(v8 + 16))(v11, v13, v7);
      if (one-time initialization token for sampleReferenceByteOffset != -1)
      {
        swift_once();
      }

      v36 = v16;
      v37 = &protocol witness table for CMSampleBufferRef;
      v35[0] = v18;
      *&v30 = static CMSampleBufferRef.AttachmentKey.sampleReferenceByteOffset;
      v21 = static CMSampleBufferRef.AttachmentKey.sampleReferenceByteOffset;
      CMAttachmentBearerAttachments.subscript.getter(&v30, v33);

      (*(v8 + 8))(v13, v7);
      outlined destroy of CMAttachmentBearerAttachments(v35);
      if (v34 == 255)
      {
        outlined destroy of CMAttachmentBearerAttachments.Value?(v33, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
        v38 = 0u;
        v39 = 0u;
        outlined destroy of CMAttachmentBearerAttachments.Value?(&v38, &_sypSgMd, "lR");
      }

      else
      {
        outlined init with copy of CMAttachmentBearerAttachments.Value(v33, &v30);
        outlined destroy of CMAttachmentBearerAttachments.Value?(v33, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
        v27 = v30;
        v28 = v31;
        v29 = v32;
        outlined init with take of Any(&v27, &v38);
        if (swift_dynamicCast())
        {
          v22 = v35[0];
LABEL_12:
          v23 = v26;
          v20(v26, v11, v7);
          result = type metadata accessor for CMSampleDataReference(0);
          *&v23[*(result + 20)] = v22;
          return result;
        }
      }

      v22 = 0;
      goto LABEL_12;
    }
  }

  result = outlined destroy of CMAttachmentBearerAttachments.Value?(v6, &_s10Foundation3URLVSgMd, "tR");
  __break(1u);
  return result;
}

uint64_t CMSampleDataReference.containerLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CMSampleDataReference.containerLocation.setter(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for CMSampleDataReference(uint64_t a1)
{
  result = type metadata singleton initialization cache for CMSampleDataReference;
  if (!type metadata singleton initialization cache for CMSampleDataReference)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CMSampleDataReference.byteOffset.setter(uint64_t a1)
{
  result = type metadata accessor for CMSampleDataReference(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t CMSampleDataReference.init(containerLocation:byteOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for CMSampleDataReference(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL static CMSampleDataReference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CMSampleDataReference(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t CMSampleDataReference.hash(into:)(uint64_t a1)
{
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for CMSampleDataReference(0);
  return MEMORY[0x2318E2D50](*(v1 + *(v2 + 20)));
}

Swift::Int CMSampleDataReference.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for CMSampleDataReference(0);
  MEMORY[0x2318E2D50](*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMSampleDataReference(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x2318E2D50](*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CMSampleDataReference(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x2318E2D50](*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMSampleDataReference(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x2318E2D50](*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t CMReadySampleBuffer<>.init(unsafeSampleDataReferenceBuffer:)@<X0>(opaqueCMSampleBuffer *a1@<X0>, opaqueCMSampleBuffer **a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v4 < 2 || v4 - 3 < 2)
  {
    __break(1u);
  }

  if (v4 != 5)
  {
    if (v4 == 2)
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  if (!CMSampleBufferIsValid(a1))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    CMSampleBufferHasDataFailed(a1, &statusOut);
    __break(1u);
  }

  statusOut = noErr.getter();
  result = CMSampleBufferDataIsReady(a1);
  if (!result)
  {
    goto LABEL_12;
  }

  *a2 = a1;
  return result;
}

uint64_t CMReadySampleBuffer<>.init(sampleDataReference:formatDescription:sampleProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v25 = a2;
  v26 = a4;
  v24 = type metadata accessor for CMSampleBufferRef.Initializer(0);
  v6 = MEMORY[0x28223BE20](v24);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v21[-v12];
  v14 = *a3;
  v15 = a3[4];
  v23 = a3[3];
  v22 = *(a3 + 40);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia21CMSampleDataReferenceV7content_So22CMFormatDescriptionRefa6formatSo0c6BufferI0aAAE26SamplePropertiesCollectionV06sampleM0tMd, &_s9CoreMedia21CMSampleDataReferenceV7content_So22CMFormatDescriptionRefa6formatSo0c6BufferI0aAAE26SamplePropertiesCollectionV06sampleM0tMR);
  v17 = *(v16 + 48);
  v18 = &v13[*(v16 + 64)];
  outlined init with copy of CMSampleDataReference(a1, v13, type metadata accessor for CMSampleDataReference);
  *&v13[v17] = v25;
  *v18 = v14;
  *(v18 + 8) = *(a3 + 1);
  *(v18 + 3) = v23;
  *(v18 + 4) = v15;
  v18[40] = v22;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of CMSampleDataReference(v13, v11, type metadata accessor for CMSampleBufferRef.Initializer);
  outlined init with copy of CMSampleDataReference(v11, v8, type metadata accessor for CMSampleBufferRef.Initializer);
  inited = _s9CoreMedia29_CMSampleBufferInitTrampolinePAAEyxSo0cD3RefaAAE11InitializerOcfCAE_Tt1g5(v8);
  outlined destroy of CMSampleDataReference(a1, type metadata accessor for CMSampleDataReference);
  outlined destroy of CMSampleDataReference(v11, type metadata accessor for CMSampleBufferRef.Initializer);
  result = outlined destroy of CMSampleDataReference(v13, type metadata accessor for CMSampleBufferRef.Initializer);
  *v26 = inited;
  return result;
}

uint64_t CMReadySampleBuffer<>.content.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;

  return CMSampleDataReference.init(from:)(v3, a1);
}

uint64_t key path setter for CMReadySampleBuffer<>.content : CMReadySampleBuffer<CMSampleDataReference>(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for CMSampleDataReference(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CMSampleDataReference(a1, v6, type metadata accessor for CMSampleDataReference);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v8 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v9 = v8;
    v10 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v9);

    v8 = v10;
    *a2 = v10;
  }

  CMSampleDataReference.embed(into:)(v8);
  return outlined destroy of CMSampleDataReference(v6, type metadata accessor for CMSampleDataReference);
}

uint64_t outlined init with copy of CMSampleDataReference(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CMSampleDataReference(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for CMSampleDataReference(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
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

uint64_t outlined destroy of CMAttachmentBearerAttachments.Value?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void __swiftcall CMTimeRange.init(start:end:)(__C::CMTimeRange *__return_ptr retstr, CMTime start, CMTime end)
{
  v5 = end;
  starta = start;
  CMTimeRangeFromTimeToTime(&v7, &starta, &v5);
  v4 = *&v7.start.epoch;
  *&retstr->start.value = *&v7.start.value;
  *&retstr->start.epoch = v4;
  *&retstr->duration.timescale = *&v7.duration.timescale;
}

BOOL CMTimeRange.isValid.getter()
{
  if ((*(v0 + 12) & 1) == 0)
  {
    return 0;
  }

  if ((*(v0 + 36) & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + 40))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + 24) < 0;
  }

  return !v2;
}

uint64_t CMTimeRange.isIndefinite.getter()
{
  v1 = *(v0 + 12);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v3 = *(v0 + 36);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (v3 >> 4) & 1;
  if ((v1 & 0x10) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (*(v0 + 24) < 0)
  {
    v5 = 0;
  }

  if (*(v0 + 40))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

BOOL CMTimeRange.isEmpty.getter()
{
  if ((*(v0 + 12) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  v2 = *(v0 + 36);
  if ((v2 & 1) != 0 && !*(v0 + 40))
  {
    v3 = *(v0 + 24);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = *(v0 + 32);
      v5 = *MEMORY[0x277CC08F0];
      v6.epoch = *(MEMORY[0x277CC08F0] + 16);
      time1.value = v3;
      time1.timescale = v4;
      time1.flags = v2;
      time1.epoch = 0;
      v6.value = v5;
      *&v6.timescale = *(MEMORY[0x277CC08F0] + 8);
      return CMTimeCompare(&time1, &v6) == 0;
    }
  }

  return result;
}

CMTimeValue CMTimeRange.end.getter()
{
  v1 = v0[1];
  *&range.start.value = *v0;
  *&range.start.epoch = v1;
  *&range.duration.timescale = v0[2];
  CMTimeRangeGetEnd(&v3, &range);
  return v3.value;
}

Swift::Bool __swiftcall CMTimeRange.containsTime(_:)(CMTime a1)
{
  v2 = v1[1];
  *&range.start.value = *v1;
  *&range.start.epoch = v2;
  *&range.duration.timescale = v1[2];
  time = a1;
  return CMTimeRangeContainsTime(&range, &time) != 0;
}

Swift::Bool __swiftcall CMTimeRange.containsTimeRange(_:)(__C::CMTimeRange *a1)
{
  v2 = *&a1->start.epoch;
  *&v7.start.value = *&a1->start.value;
  *&v7.start.epoch = v2;
  v3 = *v1;
  v4 = v1[1];
  *&v7.duration.timescale = *&a1->duration.timescale;
  *&range.start.value = v3;
  v5 = v1[2];
  *&range.start.epoch = v4;
  *&range.duration.timescale = v5;
  return CMTimeRangeContainsTimeRange(&range, &v7) != 0;
}

Swift::Bool __swiftcall CMTIMERANGE_IS_VALID(_:)(__C::CMTimeRange *a1)
{
  if ((a1->start.flags & 1) == 0)
  {
    return 0;
  }

  if ((a1->duration.flags & 1) == 0)
  {
    return 0;
  }

  if (a1->duration.epoch)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1->duration.value < 0;
  }

  return !v2;
}

Swift::Bool __swiftcall CMTIMERANGE_IS_INVALID(_:)(__C::CMTimeRange *a1)
{
  if ((a1->start.flags & 1) == 0)
  {
    return 1;
  }

  if ((a1->duration.flags & 1) == 0)
  {
    return 1;
  }

  return a1->duration.epoch || a1->duration.value < 0;
}

Swift::Bool __swiftcall CMTIMERANGE_IS_INDEFINITE(_:)(__C::CMTimeRange *a1)
{
  flags = a1->start.flags;
  if ((flags & 1) == 0)
  {
    return 0;
  }

  v3 = a1->duration.flags;
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (v3 >> 4) & 1;
  if ((flags & 0x10) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a1->duration.value < 0)
  {
    v5 = 0;
  }

  return !a1->duration.epoch && v5;
}

Swift::Bool __swiftcall CMTIMERANGE_IS_EMPTY(_:)(__C::CMTimeRange *a1)
{
  if ((a1->start.flags & 1) == 0)
  {
    return 0;
  }

  result = 0;
  flags = a1->duration.flags;
  if ((flags & 1) != 0 && !a1->duration.epoch)
  {
    value = a1->duration.value;
    if ((value & 0x8000000000000000) == 0)
    {
      v11 = v1;
      v12 = v2;
      timescale = a1->duration.timescale;
      v8 = *MEMORY[0x277CC08F0];
      v9.epoch = *(MEMORY[0x277CC08F0] + 16);
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = 0;
      v9.value = v8;
      *&v9.timescale = *(MEMORY[0x277CC08F0] + 8);
      return CMTimeCompare(&time1, &v9) == 0;
    }
  }

  return result;
}

BOOL static CMTimeRange.== infix(_:_:)(__int128 *a1, _OWORD *a2)
{
  v2 = a2[1];
  *&v7.start.value = *a2;
  *&v7.start.epoch = v2;
  v3 = *a1;
  v4 = a1[1];
  *&v7.duration.timescale = a2[2];
  *&range1.start.value = v3;
  v5 = a1[2];
  *&range1.start.epoch = v4;
  *&range1.duration.timescale = v5;
  return CMTimeRangeEqual(&range1, &v7) != 0;
}

BOOL static CMTimeRange.!= infix(_:_:)(__int128 *a1, _OWORD *a2)
{
  v2 = a2[1];
  *&v7.start.value = *a2;
  *&v7.start.epoch = v2;
  v3 = *a1;
  v4 = a1[1];
  *&v7.duration.timescale = a2[2];
  *&range1.start.value = v3;
  v5 = a1[2];
  *&range1.start.epoch = v4;
  *&range1.duration.timescale = v5;
  return CMTimeRangeEqual(&range1, &v7) == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CMTimeRange(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *&range1.start.value = *a1;
  *&range1.start.epoch = v2;
  *&range1.duration.timescale = a1[2];
  v3 = a2[1];
  *&v5.start.value = *a2;
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a2[2];
  return CMTimeRangeEqual(&range1, &v5) != 0;
}

void CMTimeRange.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 12);
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  Hasher._combine(_:)(v2 & 0xFFFFFFFD);
  if ((v2 & 0x1D) == 1)
  {
    v5 = v1;
    if (v3)
    {
      v6 = v1;
      v7 = v3;
      while (v6 != 0x8000000000000000 || v7 != -1)
      {
        v9 = v6 % v7;
        v5 = v7;
        v6 = v7;
        v7 = v9;
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_9:
    if (v5)
    {
      if (v1 == 0x8000000000000000 && v5 == -1)
      {
        goto LABEL_30;
      }

      v1 /= v5;
      v3 /= v5;
    }

    MEMORY[0x2318E2D80](v1);
    MEMORY[0x2318E2D80](v3);
    MEMORY[0x2318E2D80](v4);
  }

  v10 = *(v0 + 24);
  v11 = *(v0 + 36);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  Hasher._combine(_:)(v11 & 0xFFFFFFFD);
  if ((v11 & 0x1D) == 1)
  {
    v14 = v10;
    if (v12)
    {
      v15 = v10;
      v16 = v12;
      while (v15 != 0x8000000000000000 || v16 != -1)
      {
        v18 = v15 % v16;
        v14 = v16;
        v15 = v16;
        v16 = v18;
        if (!v18)
        {
          goto LABEL_22;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_22:
    if (v14)
    {
      if (v10 == 0x8000000000000000 && v14 == -1)
      {
        goto LABEL_31;
      }

      v10 /= v14;
      v12 /= v14;
    }

    MEMORY[0x2318E2D80](v10);
    MEMORY[0x2318E2D80](v12);
    MEMORY[0x2318E2D80](v13);
  }
}

Swift::Int CMTimeRange.hashValue.getter()
{
  Hasher.init(_seed:)();
  CMTimeRange.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMTimeRange()
{
  Hasher.init(_seed:)();
  CMTimeRange.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMTimeRange(uint64_t a1)
{
  Hasher.init(_seed:)();
  CMTimeRange.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CMTimeRange and conformance CMTimeRange()
{
  result = lazy protocol witness table cache variable for type CMTimeRange and conformance CMTimeRange;
  if (!lazy protocol witness table cache variable for type CMTimeRange and conformance CMTimeRange)
  {
    type metadata accessor for CMTimeRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMTimeRange and conformance CMTimeRange);
  }

  return result;
}

Swift::Void __swiftcall CMReadOnlyDataBlockBuffer.embed(into:)(CMSampleBufferRef into)
{
  v1 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v1 > 0)
  {
    if (v1 != 1 && (v1 - 3) >= 3)
    {
      if (v1 == 2)
      {
        __break(1u);
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  if (v1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  FigSampleBufferSetPayloadForSwiftOverlay();
}

uint64_t CMReadySampleBuffer<>.init(unsafeWithDataBuffer:)@<X0>(opaqueCMSampleBuffer *a1@<X0>, opaqueCMSampleBuffer **a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = CMSampleBufferGetFormatDescription(a1);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v5 > 0)
  {
    if (v5 != 1 && (v5 - 3) >= 3)
    {
      if (v5 == 2)
      {
        __break(1u);
        goto LABEL_12;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      CMSampleBufferHasDataFailed(a1, &statusOut);
      __break(1u);
    }

    __break(1u);
  }

  if (v5)
  {
    goto LABEL_13;
  }

  if (!CMSampleBufferIsValid(a1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  statusOut = noErr.getter();
  result = CMSampleBufferDataIsReady(a1);
  if (!result)
  {
    goto LABEL_15;
  }

  *a2 = a1;
  return result;
}

uint64_t CMReadySampleBuffer<>.init(dataBuffer:formatDescription:sampleProperties:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for CMSampleBufferRef.Initializer(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = *a3;
  v18 = a3[3];
  v19 = a3[4];
  LOBYTE(v15) = *(a3 + 40);
  *v16 = *a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = v17;
  *(v16 + 24) = *(a3 + 1);
  *(v16 + 5) = v18;
  *(v16 + 6) = v19;
  v16[56] = v15;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of CMSampleBufferRef.Initializer(v16, v14);
  outlined init with copy of CMSampleBufferRef.Initializer(v14, v11);
  inited = _s9CoreMedia29_CMSampleBufferInitTrampolinePAAEyxSo0cD3RefaAAE11InitializerOcfCAE_Tt1g5(v11);
  outlined destroy of CMSampleBufferRef.Initializer(v14);
  result = outlined destroy of CMSampleBufferRef.Initializer(v16);
  *a4 = inited;
  return result;
}

uint64_t CMReadySampleBuffer<>.init(audioDataBuffer:formatDescription:sampleCount:presentationTimeStamp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = a5;
  v26 = a7;
  v13 = HIDWORD(a5);
  v14 = type metadata accessor for CMSampleBufferRef.Initializer(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v25 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v25 - v21;
  *v22 = *a1;
  *(v22 + 1) = a2;
  *(v22 + 2) = a3;
  *(v22 + 3) = a4;
  *(v22 + 8) = v8;
  *(v22 + 9) = v13;
  *(v22 + 5) = a6;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of CMSampleBufferRef.Initializer(v22, v20);
  outlined init with copy of CMSampleBufferRef.Initializer(v20, v17);
  inited = _s9CoreMedia29_CMSampleBufferInitTrampolinePAAEyxSo0cD3RefaAAE11InitializerOcfCAE_Tt1g5(v17);
  outlined destroy of CMSampleBufferRef.Initializer(v20);
  result = outlined destroy of CMSampleBufferRef.Initializer(v22);
  *v26 = inited;
  return result;
}

uint64_t CMReadySampleBuffer<>.init(compressedAudioDataBuffer:formatDescription:presentationTimeStamp:packetDescriptions:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = a4;
  v26 = a7;
  v13 = HIDWORD(a4);
  v14 = type metadata accessor for CMSampleBufferRef.Initializer(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v25 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v25 - v21;
  *v22 = *a1;
  *(v22 + 1) = a2;
  *(v22 + 2) = a3;
  *(v22 + 6) = v9;
  *(v22 + 7) = v13;
  *(v22 + 4) = a5;
  *(v22 + 5) = a6;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of CMSampleBufferRef.Initializer(v22, v20);
  outlined init with copy of CMSampleBufferRef.Initializer(v20, v17);
  inited = _s9CoreMedia29_CMSampleBufferInitTrampolinePAAEyxSo0cD3RefaAAE11InitializerOcfCAE_Tt1g5(v17);
  outlined destroy of CMSampleBufferRef.Initializer(v20);
  result = outlined destroy of CMSampleBufferRef.Initializer(v22);
  *v26 = inited;
  return result;
}

void CMReadySampleBuffer<>.content.getter(OpaqueCMBlockBuffer **a1@<X8>)
{
  v4 = *v1;
  v5 = CMSampleBufferGetDataBuffer(v4);
  if (v5)
  {
    v6 = v5;
    if (CMBlockBufferIsEmpty(v5) || (v2 = CMBlockBufferAssureBlockMemory(v6), v2 == noErr.getter()))
    {

      *a1 = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v7 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

void key path setter for CMReadySampleBuffer<>.content : CMReadySampleBuffer<CMReadOnlyDataBlockBuffer>(uint64_t a1, void **a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v4 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v5 = v4;
    v6 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v5);

    v4 = v6;
    *a2 = v6;
  }

  CMReadOnlyDataBlockBuffer.embed(into:)(v4);
}

void CMReadySampleBuffer<>.content.setter(id *a1)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v3 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v4 = v3;
    v5 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v4);

    v3 = v5;
    *v1 = v5;
  }

  CMReadOnlyDataBlockBuffer.embed(into:)(v3);
}

void (*CMReadySampleBuffer<>.content.modify(OpaqueCMBlockBuffer **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v4 = *v1;
  v5 = CMSampleBufferGetDataBuffer(v4);
  if (v5)
  {
    v6 = v5;
    if (CMBlockBufferIsEmpty(v5) || (v2 = CMBlockBufferAssureBlockMemory(v6), v2 == noErr.getter()))
    {

      *a1 = v6;
      return CMReadySampleBuffer<>.content.modify;
    }
  }

  else
  {
    __break(1u);
  }

  v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v8 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void CMReadySampleBuffer<>.content.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v11 = *a1;
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v4 = *v2;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v5 = v4;
      v6 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v5);

      v4 = v6;
      *v2 = v6;
    }

    CMReadOnlyDataBlockBuffer.embed(into:)(v4);
  }

  else
  {
    v11 = *a1;
    v7 = swift_isUniquelyReferenced_nonNull();
    v8 = *v2;
    if ((v7 & 1) == 0)
    {
      v9 = v8;
      v10 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v9);

      v8 = v10;
      *v2 = v10;
    }

    CMReadOnlyDataBlockBuffer.embed(into:)(v8);
  }
}

uint64_t _s9CoreMedia19CMReadySampleBufferVA2A019CMReadOnlyDataBlockE0VRszrlE29audioStreamPacketDescriptionsSaySo05AudiokL11DescriptionVGSgvgAJSo08CMSampleE3RefaYTXEfU_@<X0>(opaqueCMSampleBuffer *a1@<X0>, uint64_t *a2@<X8>)
{
  packetDescriptionsPointerOut[1] = *MEMORY[0x277D85DE8];
  packetDescriptionsSizeOut = 0;
  packetDescriptionsPointerOut[0] = 0;
  AudioStreamPacketDescriptionsPtr = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(a1, packetDescriptionsPointerOut, &packetDescriptionsSizeOut);
  result = noErr.getter();
  if (AudioStreamPacketDescriptionsPtr != result)
  {
    goto LABEL_6;
  }

  v5 = packetDescriptionsSizeOut;
  if (packetDescriptionsSizeOut < 1)
  {
    goto LABEL_6;
  }

  v6 = packetDescriptionsPointerOut[0];
  if (!packetDescriptionsPointerOut[0])
  {
    goto LABEL_6;
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo28AudioStreamPacketDescriptionV_Tt1g5(packetDescriptionsSizeOut, 0);
  result = specialized UnsafeBufferPointer._copyContents(initializing:)(v7 + 4, v5, v6, v5);
  if (v8 != v5)
  {
    __break(1u);
LABEL_6:
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t CMReadySampleBuffer<>.copyPCMData(fromRange:into:)(uint64_t frameOffset, uint64_t a2, AudioBufferList *bufferList)
{
  if (frameOffset != frameOffset)
  {
    goto LABEL_4;
  }

  v5 = a2 - frameOffset;
  if (__OFSUB__(a2, frameOffset))
  {
    __break(1u);
    return frameOffset;
  }

  if (v5 == v5)
  {
    v6 = CMSampleBufferCopyPCMDataIntoAudioBufferList(*v3, frameOffset, v5, bufferList);
  }

  else
  {
LABEL_4:
    v6 = -12734;
  }

  frameOffset = noErr.getter();
  if (v6 != frameOffset)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v7 initWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
    return swift_willThrow();
  }

  return frameOffset;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = MEMORY[0x277D84F90];
  if (a1)
  {
    v7 = a2 - a1;
    if (a2 != a1)
    {
      v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(a2 - a1, 0);
      result = a4(&v11, (v10 + 4), v7, a1, a2, a3);
      if (result == v7)
      {
        return v10;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void specialized Collection._copyToContiguousArray()(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 < a2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 == a3)
  {

    return;
  }

  if (a2 >= a3)
  {
    goto LABEL_9;
  }

  if ((a2 - a3) < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo08CMSampleC3Refa9CoreMediaE30PerSampleAttachmentsDictionaryV_Tt1g5(a3 - a2, 0);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v9, v7 + 4, v3, a1, a2, a3);

  if (v8 != v3)
  {
LABEL_11:
    __break(1u);
  }
}

void _CMSampleBufferInitTrampoline.init(copying:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(copying:), v4, a2, *(a3 + 8));
}

CMFormatDescriptionRef CMSampleBufferRef.formatDescription.getter()
{
  FormatDescription = CMSampleBufferGetFormatDescription(v0);

  return FormatDescription;
}

uint64_t CMSampleBufferRef.dataReadiness.getter@<X0>(uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  statusOut = noErr.getter();
  result = CMSampleBufferDataIsReady(v2);
  if (result)
  {
    v5 = 1;
    v6 = 1;
  }

  else
  {
    result = CMSampleBufferHasDataFailed(v2, &statusOut);
    v6 = result == 0;
    v5 = statusOut;
    if (!result)
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMSampleBufferRef.setOutputPresentationTimeStamp(_:)(CMTime a1)
{
  outputPresentationTimeStamp = a1;
  v2 = CMSampleBufferSetOutputPresentationTimeStamp(v1, &outputPresentationTimeStamp);
  if (v2 != noErr.getter())
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v3 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
    swift_willThrow();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CMSampleBufferRef, @unowned Int) -> (@unowned Int32)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

CVImageBufferRef CMSampleBufferRef.imageBuffer.getter()
{
  ImageBuffer = CMSampleBufferGetImageBuffer(v0);

  return ImageBuffer;
}

double CMAttachmentBearerAttachments.subscript.getter@<D0>(const __CFString **a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  attachmentModeOut = 0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v6 = CMGetAttachment(v5, v4, &attachmentModeOut);
  swift_unknownObjectRelease();
  if (v6)
  {
    if (!attachmentModeOut)
    {
      v7 = 0;
      ObjectType = swift_getObjectType();
      *&v13 = v6;
      goto LABEL_6;
    }

    if (attachmentModeOut == 1)
    {
      ObjectType = swift_getObjectType();
      *&v13 = v6;
      v7 = 1;
LABEL_6:
      outlined init with take of Any(&v13, v11);
      v12 = v7;
      *(a2 + 32) = v7;
      result = *v11;
      v9 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v9;
      return result;
    }

    swift_unknownObjectRelease();
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = -1;
  return result;
}

uint64_t CMAttachmentBearerAttachments.subscript.setter(uint64_t a1, __CFString **a2)
{
  v3 = v2;
  v5 = *a2;
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, &v24, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
  if (v26 == 255)
  {
    outlined destroy of CMAttachmentBearerAttachments.Value?(&v24, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
    outlined init with copy of CMAttachmentBearerAttachments(v3, &v24);
    v14 = *(&v25 + 1);
    v15 = __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    v16 = *(v14 - 8);
    MEMORY[0x28223BE20](v15);
    v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v14);
    CMRemoveAttachment(v19, v5);
    swift_unknownObjectRelease();

    return outlined destroy of CMAttachmentBearerAttachments.Value?(a1, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
  }

  else
  {
    v27[0] = v24;
    v27[1] = v25;
    v28 = v26;
    outlined init with copy of CMAttachmentBearerAttachments(v3, &v24);
    v6 = *(&v25 + 1);
    v7 = __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    outlined init with copy of CMAttachmentBearerAttachments.Value(v27, v20);
    outlined init with take of Any(v20, &v22);
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    outlined init with copy of CMAttachmentBearerAttachments.Value(v27, v20);
    LODWORD(v10) = v21;
    outlined destroy of CMAttachmentBearerAttachments.Value(v20);
    CMSetAttachment(v11, v5, v12, v10);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    outlined destroy of CMAttachmentBearerAttachments.Value?(a1, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
    outlined destroy of CMAttachmentBearerAttachments.Value(v27);
    return __swift_destroy_boxed_opaque_existential_1(&v22);
  }
}

CMBlockBufferRef CMSampleBufferRef.dataBuffer.getter()
{
  DataBuffer = CMSampleBufferGetDataBuffer(v0);

  return DataBuffer;
}

void _CMSampleBufferInitTrampoline.init(dataBuffer:formatDescription:numSamples:sampleTimings:sampleSizes:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(dataBuffer:formatDescription:numSamples:sampleTimings:sampleSizes:), v9, a6, *(a7 + 8));
}

void _CMSampleBufferInitTrampoline.init(dataBuffer:dataReady:formatDescription:numSamples:sampleTimings:sampleSizes:makeDataReadyHandler:)(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(dataBuffer:dataReady:formatDescription:numSamples:sampleTimings:sampleSizes:makeDataReadyHandler:), v12, a9, *(a10 + 8));
}

uint64_t closure #1 in _CMSampleBufferInitTrampoline.init(dataBuffer:dataReady:formatDescription:numSamples:sampleTimings:sampleSizes:makeDataReadyHandler:)(CMSampleBufferRef *a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, char a5, const opaqueCMFormatDescription *a6, CMItemCount a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a2 + 16);
  sampleSizeArray = (a3 + 32);
  v14 = *(a3 + 16);
  v15 = *MEMORY[0x277CBECE8];
  aBlock[4] = a8;
  aBlock[5] = a9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMSampleBufferRef) -> (@unowned Int32);
  aBlock[3] = &block_descriptor_84;
  v16 = _Block_copy(aBlock);

  DataReadyHandler = CMSampleBufferCreateWithMakeDataReadyHandler(v15, a4, a5 & 1, a6, a7, v12, (a2 + 32), v14, sampleSizeArray, a1, v16);
  _Block_release(v16);
  return DataReadyHandler;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CMSampleBufferRef) -> (@unowned Int32)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void _CMSampleBufferInitTrampoline.init(dataBuffer:formatDescription:numSamples:presentationTimeStamp:packetDescriptions:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 16);
  if (v10)
  {
    v11 = v10 == a3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v33 = v8;
    v34 = v9;
    v14 = MEMORY[0x28223BE20](a1);
    v24[2] = v15;
    v25 = v16;
    v26 = v14;
    v27 = a2;
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(dataBuffer:formatDescription:numSamples:presentationTimeStamp:packetDescriptions:), v24, v23, *(v22 + 8));
    if (v7)
    {
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void _CMSampleBufferInitTrampoline.init(dataBuffer:dataReady:formatDescription:numSamples:presentationTimeStamp:packetDescriptions:makeDataReadyHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(a8 + 16);
  if (v13)
  {
    v14 = v13 == a4;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v41 = v11;
    v42 = v12;
    v17 = MEMORY[0x28223BE20](a1);
    v29[2] = v18;
    v30 = v19;
    v31 = v17;
    v32 = v20 & 1;
    v33 = a3;
    v34 = v21;
    v35 = v22;
    v36 = v23;
    v37 = v24;
    v38 = v25;
    v39 = v26;
    v40 = a10;
    _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(dataBuffer:dataReady:formatDescription:numSamples:presentationTimeStamp:packetDescriptions:makeDataReadyHandler:), v29, v28, *(v27 + 8));
    if (v10)
    {
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in _CMSampleBufferInitTrampoline.init(dataBuffer:dataReady:formatDescription:numSamples:presentationTimeStamp:packetDescriptions:makeDataReadyHandler:)(CMSampleBufferRef *a1, const AudioStreamPacketDescription *a2, char a3, OpaqueCMBlockBuffer *a4, char a5, const opaqueCMFormatDescription *a6, CMItemCount a7, CMTimeValue a8, uint64_t a9, CMTimeEpoch a10, uint64_t a11, uint64_t a12)
{
  v14 = a2 + 2;
  v15 = *MEMORY[0x277CBECE8];
  v27 = a11;
  v28 = a12;
  aBlock.value = MEMORY[0x277D85DD0];
  *&aBlock.timescale = 1107296256;
  aBlock.epoch = thunk for @escaping @callee_guaranteed (@guaranteed CMSampleBufferRef) -> (@unowned Int32);
  v26 = &block_descriptor_81;
  makeDataReadyHandler = _Block_copy(&aBlock);

  aBlock.value = a8;
  *&aBlock.timescale = a9;
  aBlock.epoch = a10;
  if (a3)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  DataReadyHandler = CMAudioSampleBufferCreateWithPacketDescriptionsAndMakeDataReadyHandler(v15, a4, a5 & 1, a6, a7, &aBlock, v17, a1, makeDataReadyHandler);
  _Block_release(makeDataReadyHandler);
  return DataReadyHandler;
}

void _CMSampleBufferInitTrampoline.init(imageBuffer:formatDescription:sampleTiming:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v7;
  v10 = *(a3 + 64);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v12 = a1;
  v13 = a2;
  v14 = v9;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(imageBuffer:formatDescription:sampleTiming:), v11, a4, *(a5 + 8));
}

void _CMSampleBufferInitTrampoline.init(taggedBuffers:presentationTimeStamp:duration:formatDescription:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v10 = a6;
  v13 = a3;
  v15 = HIDWORD(a3);
  v16 = HIDWORD(a6);
  v17 = Array<A>.taggedBufferGroup.getter(a1);

  v21 = v17;
  v22 = a2;
  v23 = v13;
  v24 = v15;
  v25 = a4;
  v26 = a5;
  v27 = v10;
  v28 = v16;
  v29 = a7;
  v30 = a8;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(taggedBuffers:presentationTimeStamp:duration:formatDescription:), v20, a9, *(a10 + 8));
}

void _CMSampleBufferInitTrampoline.init(imageBuffer:dataReady:formatDescription:sampleTiming:makeDataReadyHandler:)(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = *(a4 + 48);
  v12[2] = *(a4 + 32);
  v12[3] = v10;
  v13 = *(a4 + 64);
  v11 = *(a4 + 16);
  v12[0] = *a4;
  v12[1] = v11;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = v12;
  v19 = a5;
  v20 = a6;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(imageBuffer:dataReady:formatDescription:sampleTiming:makeDataReadyHandler:), v14, a7, *(a8 + 8));
}

uint64_t closure #1 in _CMSampleBufferInitTrampoline.init(imageBuffer:dataReady:formatDescription:sampleTiming:makeDataReadyHandler:)(CMSampleBufferRef *a1, __CVBuffer *a2, char a3, const opaqueCMFormatDescription *a4, const CMSampleTimingInfo *a5, uint64_t a6, uint64_t a7)
{
  v12 = *MEMORY[0x277CBECE8];
  v16[4] = a6;
  v16[5] = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMSampleBufferRef) -> (@unowned Int32);
  v16[3] = &block_descriptor_78;
  v13 = _Block_copy(v16);

  DataReadyHandler = CMSampleBufferCreateForImageBufferWithMakeDataReadyHandler(v12, a2, a3 & 1, a4, a5, a1, v13);
  _Block_release(v13);
  return DataReadyHandler;
}

uint64_t partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(dataBuffer:formatDescription:numSamples:presentationTimeStamp:packetDescriptions:)(CMSampleBufferRef *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 72);
  v7 = *(v1 + 16) + 32;
  v8 = *MEMORY[0x277CBECE8];
  presentationTimeStamp.value = *(v1 + 56);
  *&presentationTimeStamp.timescale = *(v1 + 64);
  presentationTimeStamp.epoch = v6;
  if (v2)
  {
    packetDescriptions = 0;
  }

  else
  {
    packetDescriptions = v7;
  }

  return CMAudioSampleBufferCreateWithPacketDescriptions(v8, v3, 1u, 0, 0, v4, v5, &presentationTimeStamp, packetDescriptions, a1);
}

uint64_t partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(taggedBuffers:presentationTimeStamp:duration:formatDescription:)(CMSampleBufferRef *sBufOut)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[9];
  v8 = *MEMORY[0x277CBECE8];
  v10.epoch = v1[8];
  sbufPTS.value = v4;
  *&sbufPTS.timescale = v1[4];
  sbufPTS.epoch = v5;
  v10.value = v6;
  *&v10.timescale = v1[7];
  return CMSampleBufferCreateForTaggedBufferGroup(v8, v3, &sbufPTS, &v10, v7, sBufOut);
}

uint64_t _CMSampleBufferInitTrampoline.init(copying:withNewTiming:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[3] = a1;
  v6[2] = a2;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(copying:withNewTiming:), v6, a3, *(a4 + 8));
}

void _CMSampleBufferInitTrampoline.init(copying:forRange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(copying:forRange:), v6, a4, *(a5 + 8));
}

CMSampleBufferRef *partial apply for closure #1 in _CMSampleBufferInitTrampoline.init(copying:forRange:)(CMSampleBufferRef *sampleBufferOut)
{
  v2.location = *(v1 + 24);
  v3 = *(v1 + 32);
  if (__OFSUB__(v3, v2.location))
  {
    __break(1u);
  }

  else
  {
    v2.length = v3 - v2.location;
    return CMSampleBufferCopySampleBufferForRange(*MEMORY[0x277CBECE8], *(v1 + 16), v2, sampleBufferOut);
  }

  return sampleBufferOut;
}

CMItemCount CMSampleBufferRef.taggedBuffers.getter()
{
  v1 = CMSampleBufferGetTaggedBufferGroup(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v2);

  return v3;
}

uint64_t CMSampleBufferRef.setDataBuffer(fromAudioBufferList:blockBufferMemoryAllocator:flags:)(AudioBufferList *bufferList, CFAllocatorRef blockBufferBlockAllocator, uint32_t *a3)
{
  v4 = CMSampleBufferSetDataBufferFromAudioBufferList(v3, *MEMORY[0x277CBECE8], blockBufferBlockAllocator, *a3, bufferList);
  result = noErr.getter();
  if (v4 != result)
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t CMSampleBufferRef.withAudioBufferList<A>(blockBufferMemoryAllocator:flags:body:)(const __CFAllocator *a1, uint32_t *a2, void (*a3)(char *))
{
  v18 = a3;
  blockBufferOut[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for UnsafeMutableAudioBufferListPointer();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  bufferListSizeNeededOut = 0;
  AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v3, &bufferListSizeNeededOut, 0, 0, 0, 0, v10, 0);
  if (AudioBufferListWithRetainedBlockBuffer != noErr.getter())
  {
    v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v15 initWithDomain:*MEMORY[0x277CCA590] code:AudioBufferListWithRetainedBlockBuffer userInfo:0];
    return swift_willThrow();
  }

  v12 = swift_slowAlloc();
  blockBufferOut[0] = 0;
  v13 = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v3, 0, v12, bufferListSizeNeededOut, *MEMORY[0x277CBECE8], a1, v10, blockBufferOut);
  if (v13 == noErr.getter())
  {
    result = UnsafeMutableAudioBufferListPointer.init(_:)();
    if (!blockBufferOut[0])
    {
      __break(1u);
      return result;
    }

    v18(v9);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v16 initWithDomain:*MEMORY[0x277CCA590] code:v13 userInfo:0];
    swift_willThrow();
  }

  return MEMORY[0x2318E42E0](v12, -1, -1);
}

AudioStreamPacketDescription *CMSampleBufferRef.audioStreamPacketDescriptions()()
{
  v1 = v0;
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  AudioStreamPacketDescriptions = CMSampleBufferGetAudioStreamPacketDescriptions(v0, 0, 0, v9);
  if (AudioStreamPacketDescriptions != noErr.getter())
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v5 initWithDomain:*MEMORY[0x277CCA590] code:AudioStreamPacketDescriptions userInfo:0];
    swift_willThrow();
    return AudioStreamPacketDescriptions;
  }

  v3 = v9[0] + 15;
  if ((v9[0] & 0x8000000000000000) == 0)
  {
    v3 = v9[0];
  }

  if (v9[0] < -15)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9[0] <= 15)
  {
    AudioStreamPacketDescriptions = MEMORY[0x277D84F90];
    v4 = *(MEMORY[0x277D84F90] + 16);
  }

  else
  {
    v4 = v3 >> 4;
    type metadata accessor for AudioStreamPacketDescription(0);
    AudioStreamPacketDescriptions = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(AudioStreamPacketDescriptions + 16) = v4;
    bzero((AudioStreamPacketDescriptions + 32), 16 * v4);
  }

  if (v4 >> 59)
  {
LABEL_14:
    __break(1u);
  }

  v6 = CMSampleBufferGetAudioStreamPacketDescriptions(v1, 16 * v4, (AudioStreamPacketDescriptions + 32), 0);
  if (v6 != noErr.getter())
  {
    v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v7 initWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
    swift_willThrow();
  }

  return AudioStreamPacketDescriptions;
}

uint64_t CMSampleBufferRef.withUnsafeAudioStreamPacketDescriptions<A>(_:)(uint64_t (*a1)(AudioStreamPacketDescription *, uint64_t))
{
  packetDescriptionsPointerOut[1] = *MEMORY[0x277D85DE8];
  packetDescriptionsSizeOut = 0;
  packetDescriptionsPointerOut[0] = 0;
  AudioStreamPacketDescriptionsPtr = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(v1, packetDescriptionsPointerOut, &packetDescriptionsSizeOut);
  if (AudioStreamPacketDescriptionsPtr == noErr.getter())
  {
    return a1(packetDescriptionsPointerOut[0], packetDescriptionsSizeOut / 16);
  }

  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v5 initWithDomain:*MEMORY[0x277CCA590] code:AudioStreamPacketDescriptionsPtr userInfo:0];
  return swift_willThrow();
}

uint64_t CMSampleBufferRef.copyPCMData(fromRange:into:)(uint64_t frameOffset, uint64_t a2, AudioBufferList *bufferList)
{
  if (frameOffset != frameOffset)
  {
    goto LABEL_4;
  }

  v5 = a2 - frameOffset;
  if (__OFSUB__(a2, frameOffset))
  {
    __break(1u);
    return frameOffset;
  }

  if (v5 != v5)
  {
LABEL_4:
    if (one-time initialization token for sampleIndexOutOfRange != -1)
    {
      swift_once();
    }

    v6 = static CMSampleBufferRef.Error.sampleIndexOutOfRange;
    return swift_willThrow();
  }

  v7 = CMSampleBufferCopyPCMDataIntoAudioBufferList(v3, frameOffset, v5, bufferList);
  frameOffset = noErr.getter();
  if (v7 != frameOffset)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v8 initWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
    return swift_willThrow();
  }

  return frameOffset;
}

uint64_t static CMSampleBufferRef.DataReadiness.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void CMSampleBufferRef.DataReadiness.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    MEMORY[0x2318E2D50](v1 != 0);
  }

  else
  {
    MEMORY[0x2318E2D50](2);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int CMSampleBufferRef.DataReadiness.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    MEMORY[0x2318E2D50](v1 != 0);
  }

  else
  {
    MEMORY[0x2318E2D50](2);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMSampleBufferRef.DataReadiness()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    MEMORY[0x2318E2D50](v1 != 0);
  }

  else
  {
    MEMORY[0x2318E2D50](2);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CMSampleBufferRef.DataReadiness()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    MEMORY[0x2318E2D50](v1 != 0);
  }

  else
  {
    MEMORY[0x2318E2D50](2);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMSampleBufferRef.DataReadiness(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    MEMORY[0x2318E2D50](v2 != 0);
  }

  else
  {
    MEMORY[0x2318E2D50](2);
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CMSampleBufferRef.DataReadiness(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t CMSampleBufferRef.setDataReadiness(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = noErr.getter();
  if (v3 == 1)
  {
    if (!v2)
    {
      __break(1u);
      return result;
    }

    v5 = CMSampleBufferSetDataReady(v1);
  }

  else
  {
    v5 = CMSampleBufferSetDataFailed(v1, v2);
  }

  v6 = v5;
  result = noErr.getter();
  if (v6 != result)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v7 initWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMSampleBufferRef.makeDataReady()()
{
  DataReady = CMSampleBufferMakeDataReady(v0);
  if (DataReady != noErr.getter())
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v2 initWithDomain:*MEMORY[0x277CCA590] code:DataReady userInfo:0];
    swift_willThrow();
  }
}

uint64_t CMSampleBufferRef.setDataBuffer(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a2(v2, a1);
  result = noErr.getter();
  if (v3 != result)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v5 initWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMSampleBufferRef.invalidate()()
{
  v1 = CMSampleBufferInvalidate(v0);
  if (one-time initialization token for tlsKey != -1)
  {
    swift_once();
  }

  v2 = static BoxedError.tlsKey;
  v3 = pthread_getspecific(static BoxedError.tlsKey);
  if (v3)
  {
    v4 = v3;
    pthread_setspecific(v2, 0);
    v5 = v4[2];
  }

  else
  {
    if (v1 == noErr.getter())
    {
      return;
    }

    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:v1 userInfo:0];
  }

  swift_willThrow();
}

uint64_t CMSampleBufferRef.setInvalidateHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v10[4] = partial apply for closure #1 in closure #1 in CMSampleBufferRef.setInvalidateHandler(_:);
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMSampleBufferRef) -> ();
  v10[3] = &block_descriptor_1;
  v6 = _Block_copy(v10);

  v7 = CMSampleBufferSetInvalidateHandler(v2, v6);
  _Block_release(v6);
  result = noErr.getter();
  if (v7 != result)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v9 initWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CMSampleBufferRef) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t CMSampleBufferRef.sampleTimingInfos()(uint64_t (*a1)(uint64_t, uint64_t, __int128 *, void *))
{
  v27[1] = *MEMORY[0x277D85DE8];
  v27[0] = 0;
  v20 = *(MEMORY[0x277CC0918] + 48);
  v21 = *(MEMORY[0x277CC0918] + 32);
  v24 = v21;
  v25 = v20;
  v3 = *(MEMORY[0x277CC0918] + 64);
  v26 = v3;
  v18 = *MEMORY[0x277CC0918];
  v19 = *(MEMORY[0x277CC0918] + 16);
  v22 = *MEMORY[0x277CC0918];
  v23 = v19;
  v4 = a1(v1, 1, &v22, v27);
  if (v4 == -12736)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v4;
  if (v4 == noErr.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
    result = swift_allocObject();
    v7 = v24;
    v8 = v25;
    v9 = v22;
    *(result + 48) = v23;
    *(result + 64) = v7;
    *(result + 80) = v8;
    *(result + 96) = v26;
    *(result + 16) = xmmword_22E0EF920;
    *(result + 32) = v9;
  }

  else
  {
    if (v6 == -12737)
    {
      v6 = noErr.getter();
    }

    if (v6 == noErr.getter())
    {
      v10 = v27[0];
      if ((v27[0] & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      if (v27[0])
      {
        type metadata accessor for CMSampleTimingInfo(0);
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v11 + 16) = v10;
        v12 = 32;
        do
        {
          v13 = v11 + v12;
          *(v13 + 32) = v21;
          *(v13 + 48) = v20;
          *(v13 + 64) = v3;
          v12 += 72;
          *v13 = v18;
          *(v13 + 16) = v19;
          --v10;
        }

        while (v10);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      v15 = v11;
      v16 = a1(v1, *(v11 + 16), (v11 + 32), 0);
      if (v16 == noErr.getter())
      {
        return v15;
      }

      else
      {
        v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        [v17 initWithDomain:*MEMORY[0x277CCA590] code:v16 userInfo:0];
        swift_willThrow();
      }
    }

    else
    {
      v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      [v14 initWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
      return swift_willThrow();
    }
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMSampleBufferRef.sampleTimingInfo(at:)(__C::CMSampleTimingInfo *__return_ptr retstr, Swift::Int at)
{
  v3 = v2;
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(MEMORY[0x277CC0918] + 48);
  *&v11.presentationTimeStamp.timescale = *(MEMORY[0x277CC0918] + 32);
  *&v11.decodeTimeStamp.value = v5;
  v11.decodeTimeStamp.epoch = *(MEMORY[0x277CC0918] + 64);
  v6 = *(MEMORY[0x277CC0918] + 16);
  *&v11.duration.value = *MEMORY[0x277CC0918];
  *&v11.duration.epoch = v6;
  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(v3, at, &v11);
  if (SampleTimingInfo == noErr.getter())
  {
    v8 = *&v11.decodeTimeStamp.value;
    *&retstr->presentationTimeStamp.timescale = *&v11.presentationTimeStamp.timescale;
    *&retstr->decodeTimeStamp.value = v8;
    retstr->decodeTimeStamp.epoch = v11.decodeTimeStamp.epoch;
    v9 = *&v11.duration.epoch;
    *&retstr->duration.value = *&v11.duration.value;
    *&retstr->duration.epoch = v9;
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v10 initWithDomain:*MEMORY[0x277CCA590] code:SampleTimingInfo userInfo:0];
    swift_willThrow();
  }
}

uint64_t CMSampleBufferRef.sampleSizes()()
{
  v1 = v0;
  sizeArrayEntriesNeededOut[1] = *MEMORY[0x277D85DE8];
  sizeArrayOut = 0;
  sizeArrayEntriesNeededOut[0] = 0;
  SampleSizeArray = CMSampleBufferGetSampleSizeArray(v0, 1, &sizeArrayOut, sizeArrayEntriesNeededOut);
  v3 = MEMORY[0x277D84F90];
  if (SampleSizeArray != -12736)
  {
    v4 = SampleSizeArray;
    if (SampleSizeArray == noErr.getter())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_22E0EF920;
      *(v3 + 32) = sizeArrayOut;
    }

    else
    {
      if (v4 == -12737)
      {
        v4 = noErr.getter();
      }

      if (v4 == noErr.getter())
      {
        v5 = sizeArrayEntriesNeededOut[0];
        if (sizeArrayEntriesNeededOut[0] < 0)
        {
          __break(1u);
        }

        if (sizeArrayEntriesNeededOut[0])
        {
          v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v3 + 16) = v5;
          bzero((v3 + 32), 8 * v5);
        }

        else
        {
          v5 = *(v3 + 16);
        }

        v7 = CMSampleBufferGetSampleSizeArray(v1, v5, (v3 + 32), 0);
        if (v7 != noErr.getter())
        {
          v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          [v8 initWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
          swift_willThrow();
        }
      }

      else
      {
        v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        [v6 initWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:0];
        swift_willThrow();
      }
    }
  }

  return v3;
}

uint64_t CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v5;
  if (v7)
  {
LABEL_9:
    v13 = v1[2];
    v19 = (v7 - 1) & v7;
    v14 = __clz(__rbit64(v7)) | (v8 << 6);
    v15 = *(*(v4 + 48) + 8 * v14);
    outlined init with copy of Any(*(v4 + 56) + 32 * v14, v20);
    *a1 = v15;
    outlined init with take of Any(v20, (a1 + 8));
    v16 = v15;
    v17 = *v1;
LABEL_10:
    outlined copy of [A : B].Iterator._Variant<A, B>(v4);
    result = outlined consume of [CMSampleBufferRef.PerSampleAttachmentsDictionary.Key : Any].Iterator._Variant(v17);
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v13;
    v1[3] = v8;
    v1[4] = v19;
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    v12 = v1[3];
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v19 = 0;
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        v13 = v6;
        v17 = v4;
        v8 = v11;
        goto LABEL_10;
      }

      v7 = *(v3 + 8 * v8);
      ++v12;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void CMSampleBufferRef.PerSampleAttachmentsDictionary.makeIterator()(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = CMSampleBufferGetSampleAttachmentsArray(*v1, 0);
  if (v4)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v3);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      lazy protocol witness table accessor for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key();
      v6;
      static Dictionary._forceBridgeFromObjectiveC(_:result:)();
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v7 = -1;
    v8 = MEMORY[0x277D84F98] + 64;
    v9 = -1 << *(MEMORY[0x277D84F98] + 32);
    if (-v9 < 64)
    {
      v7 = ~(-1 << -v9);
    }

    v10 = v7 & *(MEMORY[0x277D84F98] + 64);
    *a1 = MEMORY[0x277D84F98];
    a1[1] = v8;
    a1[2] = ~v9;
    a1[3] = 0;
    a1[4] = v10;
  }
}

void CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.getter(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 8);
  v6 = CMSampleBufferGetSampleAttachmentsArray(*v2, 0);
  if (v6)
  {
    v7 = v6;
    v8 = v4;
    v13 = v7;
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v5);
    if (ValueAtIndex)
    {
      v10 = ValueAtIndex;
      Value = CFDictionaryGetValue(v10, v8);
      if (Value)
      {
        v12 = Value;
        swift_unknownObjectRetain();
        *(a2 + 24) = swift_getObjectType();

        *a2 = v12;
      }

      else
      {
        *a2 = 0u;
        *(a2 + 16) = 0u;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

void key path getter for CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript(_:) : CMSampleBufferRef.PerSampleAttachmentsDictionary(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v7[1] = *a1;
  v7[2] = v4;
  v7[0] = v5;
  v6 = v5;
  CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.getter(v7, a3);
}

void key path setter for CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript(_:) : CMSampleBufferRef.PerSampleAttachmentsDictionary(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, v6, &_sypSgMd, "lR");
  v5 = v3;
  v4 = v3;
  CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.setter(v6, &v5);
}

void CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.setter(uint64_t a1, id *a2)
{
  v4 = *v2;
  v5 = *a2;
  v6 = CMSampleBufferGetSampleAttachmentsArray(v4, 1u);
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  ValueAtIndex = CFArrayGetValueAtIndex(v6, *(v2 + 8));
  if (!ValueAtIndex)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v9 = ValueAtIndex;

  v10 = v9;
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, &v14, &_sypSgMd, "lR");
  if (v15)
  {
    outlined init with take of Any(&v14, &v16);
    __swift_project_boxed_opaque_existential_1(&v16, v17);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    CFDictionarySetValue(v10, v5, v11);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    outlined destroy of CMAttachmentBearerAttachments.Value?(&v14, &_sypSgMd, "lR");
    v12 = v10;
    CFDictionaryRemoveValue(v12, v5);
  }

  v13 = v5;
  outlined destroy of CMAttachmentBearerAttachments.Value?(a1, &_sypSgMd, "lR");
}

void (*CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.modify(uint64_t *a1, void **a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 64) = v2;
  *(v5 + 72) = v7;
  v8 = *(v2 + 8);
  v11[1] = *v2;
  v11[2] = v8;
  v11[0] = v7;
  v9 = v7;
  CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.getter(v11, v6);

  return CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.modify;
}

void CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[9];
    outlined init with copy of CMAttachmentBearerAttachments.Value?(*a1, (v2 + 4), &_sypSgMd, "lR");
    v4 = v3;
    CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.setter((v2 + 4), &v4);
    outlined destroy of CMAttachmentBearerAttachments.Value?(v2, &_sypSgMd, "lR");
  }

  else
  {
    v4 = v2[9];
    CMSampleBufferRef.PerSampleAttachmentsDictionary.subscript.setter(v2, &v4);
  }

  free(v2);
}

void protocol witness for Sequence.makeIterator() in conformance CMSampleBufferRef.PerSampleAttachmentsDictionary(void *a1@<X8>)
{
  CMSampleBufferRef.PerSampleAttachmentsDictionary.makeIterator()(a1);
  v2 = *v1;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CMSampleBufferRef.PerSampleAttachmentsDictionary()
{
  v1 = *v0;
  specialized _copySequenceToContiguousArray<A>(_:)(*v0, *(v0 + 8));
  v3 = v2;

  return v3;
}

Swift::Int __swiftcall CMSampleBufferRef.SampleAttachmentsArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

id CMSampleBufferRef.SampleAttachmentsArray.subscript.getter@<X0>(void *a1@<X0>, void **a2@<X8>)
{
  v3 = *v2;
  *a2 = *v2;
  a2[1] = a1;
  return v3;
}

void (*CMSampleBufferRef.SampleAttachmentsArray.subscript.modify(void **a1, void *a2))(id *a1)
{
  v3 = *v2;
  *a1 = *v2;
  a1[1] = a2;
  v4 = v3;
  return CMSampleBufferRef.SampleAttachmentsArray.subscript.modify;
}

void (*protocol witness for Collection.subscript.read in conformance CMSampleBufferRef.SampleAttachmentsArray(void **a1, void **a2))(id *a1)
{
  v3 = *a2;
  v4 = *v2;
  *a1 = *v2;
  a1[1] = v3;
  v5 = v4;
  return protocol witness for Collection.subscript.read in conformance CMSampleBufferRef.SampleAttachmentsArray;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance CMSampleBufferRef.SampleAttachmentsArray@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *result;
  if (*result < v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result[1];
  if (v4 >= v6)
  {
    v7 = *v2;
    a2[2] = *v2;
    a2[3] = v3;
    a2[4] = v4;
    *a2 = v5;
    a2[1] = v6;
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

id protocol witness for Collection.indices.getter in conformance CMSampleBufferRef.SampleAttachmentsArray@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance CMSampleBufferRef.SampleAttachmentsArray@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance CMSampleBufferRef.SampleAttachmentsArray@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance CMSampleBufferRef.SampleAttachmentsArray(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance CMSampleBufferRef.SampleAttachmentsArray@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance CMSampleBufferRef.SampleAttachmentsArray(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance CMSampleBufferRef.SampleAttachmentsArray@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = result.n128_u64[0];
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance CMSampleBufferRef.SampleAttachmentsArray()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  result = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(v1, v2);
  v5 = v1 - v2;
  if (!v5)
  {
    return 0;
  }

  if (v5 < 0 == v4)
  {
    goto LABEL_9;
  }

  if (v5 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

CMItemCount CMSampleBufferRef.sampleAttachments.getter@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = 0;
  result = CMSampleBufferGetNumSamples(v1);
  a1[2] = result;
  return result;
}

void key path setter for CMSampleBufferRef.sampleAttachments : CMSampleBufferRef(id *a1, void **a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = v2;
  CMSampleBufferGetNumSamples(v4);
}

void (*CMSampleBufferRef.sampleAttachments.modify(void *a1))(id *a1)
{
  *a1 = v1;
  a1[1] = 0;
  a1[2] = CMSampleBufferGetNumSamples(v1);
  return protocol witness for Collection.subscript.read in conformance CMSampleBufferRef.SampleAttachmentsArray;
}

void CMSampleBufferRef.sampleAttachments.setter(id *a1)
{
  v3 = v1;
  CMSampleBufferGetNumSamples(v3);
}

CMSampleBufferRef_optional __swiftcall CMSampleBufferRef.SingleSampleBuffers.Iterator.next()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    if (v1 < 0)
    {
      v5 = *v0;
    }

    else
    {
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    result.value = MEMORY[0x2318E2C00](v5);
  }

  else
  {
    result.value = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result.value)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    result.value = MEMORY[0x2318E2A60](v0[1], v1);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result.value = *(v1 + 8 * v3 + 32);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
LABEL_9:
      v0[1] = v4;
      return result;
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

id protocol witness for IteratorProtocol.next() in conformance CMSampleBufferRef.SingleSampleBuffers.Iterator@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*v1 >> 62)
  {
    if (v3 < 0)
    {
      v7 = *v1;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x2318E2C00](v7);
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[1];
  if (v5 == result)
  {
    result = 0;
LABEL_10:
    *a1 = result;
    return result;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2318E2A60](v1[1], v3);
    v6 = (v5 + 1);
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 8 * v5 + 32);
    v6 = (v5 + 1);
    if (!__OFADD__(v5, 1))
    {
LABEL_9:
      v1[1] = v6;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t CMSampleBufferRef.SingleSampleBuffers.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance CMSampleBufferRef.SingleSampleBuffers()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t CMSampleBufferRef.singleSampleBuffers()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v12 = MEMORY[0x277D84F90];
  NumSamples = CMSampleBufferGetNumSamples(v1);
  specialized Array.reserveCapacity(_:)(NumSamples);
  v5 = swift_allocObject();
  *(v5 + 16) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in closure #1 in CMSampleBufferRef.singleSampleBuffers();
  *(v6 + 24) = v5;
  aBlock[4] = _sSo17CMSampleBufferRefaSis5Int32VIggyd_ABSiADIeggyd_TRTA_0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMSampleBufferRef, @unowned Int) -> (@unowned Int32);
  aBlock[3] = &block_descriptor_10;
  v7 = _Block_copy(aBlock);

  v8 = CMSampleBufferCallBlockForEachSample(v2, v7);
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    result = noErr.getter();
    if (v8 == result)
    {
      *a1 = v12;
    }

    else
    {
      v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      [v10 initWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
      swift_willThrow();
    }
  }

  return result;
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v3 < 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x2318E2C00](v5);
    goto LABEL_12;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_12:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
  }

  *v1 = v3;
  return result;
}

uint64_t closure #1 in closure #1 in CMSampleBufferRef.singleSampleBuffers()(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  MEMORY[0x2318E2880]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return noErr.getter();
}

void key path getter for CMAttachmentBearerAttachments.subscript(_:) : CMAttachmentBearerAttachments(__CFString **a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = v4;
  CMAttachmentBearerAttachments.subscript.getter(&v4, a2);
}

uint64_t key path setter for CMAttachmentBearerAttachments.subscript(_:) : CMAttachmentBearerAttachments(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v3 = *a3;
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, v7, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
  v6 = v3;
  v4 = v3;
  return CMAttachmentBearerAttachments.subscript.setter(v7, &v6);
}

void (*CMAttachmentBearerAttachments.subscript.modify(uint64_t *a1, __CFString **a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 80) = v2;
  *(v5 + 88) = v7;
  v10 = v7;
  v8 = v7;
  CMAttachmentBearerAttachments.subscript.getter(&v10, v6);

  return CMAttachmentBearerAttachments.subscript.modify;
}

id static CMSampleBufferRef.PerSampleAttachmentsDictionary.Key.notSync.getter@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

BOOL static CMSampleTimingInfo.== infix(_:_:)(CMTimeValue *a1, CMTimeValue *a2)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = *a2;
  v14.epoch = a2[2];
  time1.value = v4;
  *&time1.timescale = a1[1];
  time1.epoch = v5;
  v14.value = v6;
  *&v14.timescale = a2[1];
  if (CMTimeCompare(&time1, &v14))
  {
    return 0;
  }

  v7 = a1[6];
  v8 = a1[8];
  v9 = a2[6];
  v14.epoch = a2[8];
  time1.value = v7;
  *&time1.timescale = a1[7];
  time1.epoch = v8;
  v14.value = v9;
  *&v14.timescale = a2[7];
  if (CMTimeCompare(&time1, &v14))
  {
    return 0;
  }

  v11 = a1[3];
  v12 = a1[5];
  v13 = a2[3];
  v14.epoch = a2[5];
  time1.value = v11;
  *&time1.timescale = a1[4];
  time1.epoch = v12;
  v14.value = v13;
  *&v14.timescale = a2[4];
  return CMTimeCompare(&time1, &v14) == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CMSampleTimingInfo(CMTimeValue *a1, CMTimeValue *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = *a2;
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  v15 = a2[7];
  v16 = a2[8];
  v18.epoch = a2[2];
  time1.value = v2;
  *&time1.timescale = a1[1];
  time1.epoch = v3;
  v18.value = v10;
  *&v18.timescale = a2[1];
  if (CMTimeCompare(&time1, &v18))
  {
    return 0;
  }

  v18.epoch = v16;
  time1.value = v7;
  *&time1.timescale = v8;
  time1.epoch = v9;
  v18.value = v14;
  *&v18.timescale = v15;
  if (CMTimeCompare(&time1, &v18))
  {
    return 0;
  }

  v18.epoch = v13;
  time1.value = v4;
  *&time1.timescale = v5;
  time1.epoch = v6;
  v18.value = v11;
  *&v18.timescale = v12;
  return CMTimeCompare(&time1, &v18) == 0;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key()
{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Key and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags()
{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.Flags and conformance CMSampleBufferRef.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMSampleBufferRef.DataReadiness and conformance CMSampleBufferRef.DataReadiness()
{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.DataReadiness and conformance CMSampleBufferRef.DataReadiness;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.DataReadiness and conformance CMSampleBufferRef.DataReadiness)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.DataReadiness and conformance CMSampleBufferRef.DataReadiness);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator()
{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator and conformance CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMSampleBufferRef.SampleAttachmentsArray and conformance CMSampleBufferRef.SampleAttachmentsArray()
{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.SampleAttachmentsArray and conformance CMSampleBufferRef.SampleAttachmentsArray;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.SampleAttachmentsArray and conformance CMSampleBufferRef.SampleAttachmentsArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.SampleAttachmentsArray and conformance CMSampleBufferRef.SampleAttachmentsArray);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMSampleBufferRef.SingleSampleBuffers.Iterator and conformance CMSampleBufferRef.SingleSampleBuffers.Iterator()
{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.SingleSampleBuffers.Iterator and conformance CMSampleBufferRef.SingleSampleBuffers.Iterator;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.SingleSampleBuffers.Iterator and conformance CMSampleBufferRef.SingleSampleBuffers.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.SingleSampleBuffers.Iterator and conformance CMSampleBufferRef.SingleSampleBuffers.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey()
{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.AttachmentKey and conformance CMSampleBufferRef.AttachmentKey);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CMSampleBufferRef.PerSampleAttachmentsDictionary.Key(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey()
{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey;
  if (!lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMSampleBufferRef.NotificationKey and conformance CMSampleBufferRef.NotificationKey);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CMSampleBufferRef.DataReadiness(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CMSampleBufferRef.DataReadiness(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t getEnumTag for CMSampleBufferRef.DataReadiness(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for CMSampleBufferRef.DataReadiness(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CMSampleBufferRef.PerSampleAttachmentsDictionary.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CMSampleBufferRef.SampleAttachmentsArray(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CMSampleBufferRef.SampleAttachmentsArray(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CMSampleBufferRef.PerSampleAttachmentsDictionary(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for CMSampleBufferRef.PerSampleAttachmentsDictionary(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CMTagCategory(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  result = MEMORY[0x2318E2DB0](a1, &v4);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4;
    *(a2 + 4) = 0;
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CMTagCategory(uint64_t a1, uint64_t a2)
{
  result = static UInt32._conditionallyBridgeFromObjectiveC(_:result:)();
  if ((result & 1) == 0)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

void CMTag.rawTagValue.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t CMTag.__allocating_init(rawCategory:rawTagValue:)(int a1, uint64_t *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  v6 = *(a2 + 8);
  *(result + 16) = a1;
  *(result + 24) = v5;
  *(result + 32) = v6;
  return result;
}

uint64_t CMTag.init(rawCategory:rawTagValue:)(int a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  return v2;
}

uint64_t CMTag.value<A>(onlyIfMatching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 16) == *(a1 + 32))
  {
    v4 = *a1;
    v5 = *(v3 + 32);
    v8 = *(v3 + 24);
    v9 = v5;
    return v4(&v8, a2);
  }

  else
  {
    v7 = *(*(a2 - 8) + 56);

    return v7(a3, 1, 1, a2);
  }
}

uint64_t CMTypedTag.Category.value(for:)(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *v1;
  v5 = *a1;
  v6 = v2;
  return v3(&v5);
}

uint64_t CMTag.description.getter()
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      v7 = CMTagMakeWithOSTypeValue(v2, v3);
      value = v7.value;
      v4 = *&v7.category;
    }

    else
    {
      v9 = CMTagMakeWithFlagsValue(v2, v3);
      value = v9.value;
      v4 = *&v9.category;
    }
  }

  else if (*(v0 + 32))
  {
    v8 = CMTagMakeWithFloat64Value(v2, *(v0 + 24));
    value = v8.value;
    v4 = *&v8.category;
  }

  else
  {
    v6 = CMTagMakeWithSInt64Value(v2, v3);
    value = v6.value;
    v4 = *&v6.category;
  }

  v10 = value;
  *&v14.category = v4;
  v14.value = v10;
  v11 = CMTagCopyDescription(v1, v14);
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return 0x2064696C61766E49;
}

uint64_t CMTypedTag.Category.init(rawCategory:valueForTagValue:tagValueForValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = result;
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  return result;
}

uint64_t CMTypedTag.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = *(v1 + 48);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t CMTypedTag.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *(v1 + 40);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);

  v13 = v9;
  v14 = v10;
  v8(&v13);

  v11 = *(v3 - 8);
  if ((*(v11 + 48))(v7, 1, v3) != 1)
  {
    return (*(v11 + 32))(a1, v7, v3);
  }

  (*(v5 + 8))(v7, v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CMTypedTag.__allocating_init(category:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized CMTypedTag.__allocating_init(category:value:)(a1, a2, a3, a4);
  (*(*(*(v4 + 128) - 8) + 8))(a2);
  return v6;
}

uint64_t CMTypedTag.init(category:value:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = specialized CMTypedTag.init(category:value:)(a1, a2);
  (*(*(*(v4 + 128) - 8) + 8))(a2);
  return v5;
}

uint64_t CMTypedTag.__ivar_destroyer()
{
}

uint64_t CMTypedTag.deinit()
{

  return v0;
}

uint64_t CMTypedTag.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 76, 7);
}

void static CMTypedTag.Category.mediaType.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1835297121;
}

void static CMTypedTag.Category.mediaSubType.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1836283234;
}

void static CMTypedTag.Category.trackID.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1953653099;
}

void static CMTypedTag.Category.channelID.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1986226286;
}

void static CMTypedTag.Category.videoLayerID.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1986814329;
}

void static CMTypedTag.Category.pixelFormat.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1885960294;
}

void static CMTypedTag.Category.packingType.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1885430635;
}

void static CMTypedTag.Category.projectionType.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1886547818;
}

void static CMTypedTag.Category.stereoView.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1702454643;
}

void static CMTypedTag.Category.stereoViewInterpretation.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1702455664;
}

uint64_t static CMTag.mediaType(_:)(unsigned int *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia10CMTypedTagCySo22CMFormatDescriptionRefaAAE0B4TypeVGMd, &_s9CoreMedia10CMTypedTagCySo22CMFormatDescriptionRefaAAE0B4TypeVGMR);
  result = swift_allocObject();
  *(result + 40) = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 48) = 0;
  *(result + 56) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 64) = 0;
  *(result + 72) = 1835297121;
  *(result + 16) = 1835297121;
  *(result + 24) = v1;
  *(result + 32) = 2;
  return result;
}

uint64_t static CMTag.mediaSubType(_:)(unsigned int *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia10CMTypedTagCySo22CMFormatDescriptionRefaAAE0B7SubTypeVGMd, &_s9CoreMedia10CMTypedTagCySo22CMFormatDescriptionRefaAAE0B7SubTypeVGMR);
  result = swift_allocObject();
  *(result + 40) = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 48) = 0;
  *(result + 56) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 64) = 0;
  *(result + 72) = 1836283234;
  *(result + 16) = 1836283234;
  *(result + 24) = v1;
  *(result + 32) = 2;
  return result;
}

uint64_t static CMTag.trackID(_:)(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia10CMTypedTagCys5Int32VGMd, &_s9CoreMedia10CMTypedTagCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 40) = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 48) = 0;
  *(result + 56) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 64) = 0;
  *(result + 72) = 1953653099;
  *(result + 16) = 1953653099;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

uint64_t static CMTag.channelID(_:)(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia10CMTypedTagCys5Int64VGMd, &_s9CoreMedia10CMTypedTagCys5Int64VGMR);
  result = swift_allocObject();
  *(result + 40) = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 48) = 0;
  *(result + 56) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 64) = 0;
  *(result + 72) = a2;
  *(result + 16) = a2;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

uint64_t static CMTag.pixelFormat(_:)(unsigned int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia10CMTypedTagCys6UInt32VGMd, &_s9CoreMedia10CMTypedTagCys6UInt32VGMR);
  result = swift_allocObject();
  *(result + 40) = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 48) = 0;
  *(result + 56) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 64) = 0;
  *(result + 72) = 1885960294;
  *(result + 16) = 1885960294;
  *(result + 24) = a1;
  *(result + 32) = 2;
  return result;
}

uint64_t static CMTag.packingType(_:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia10CMTypedTagCySo13CMPackingTypeVGMd, &_s9CoreMedia10CMTypedTagCySo13CMPackingTypeVGMR);
  result = swift_allocObject();
  *(result + 40) = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 48) = 0;
  *(result + 56) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 64) = 0;
  *(result + 72) = 1885430635;
  if (HIDWORD(a1))
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = 1885430635;
    *(result + 24) = a1;
    *(result + 32) = 2;
  }

  return result;
}

uint64_t static CMTag.projectionType(_:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia10CMTypedTagCySo16CMProjectionTypeVGMd, &_s9CoreMedia10CMTypedTagCySo16CMProjectionTypeVGMR);
  result = swift_allocObject();
  *(result + 40) = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 48) = 0;
  *(result + 56) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 64) = 0;
  *(result + 72) = 1886547818;
  if (HIDWORD(a1))
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = 1886547818;
    *(result + 24) = a1;
    *(result + 32) = 2;
  }

  return result;
}

uint64_t static CMTag.stereoView(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia10CMTypedTagCySo22CMStereoViewComponentsVGMd, &_s9CoreMedia10CMTypedTagCySo22CMStereoViewComponentsVGMR);
  result = swift_allocObject();
  *(result + 40) = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 48) = 0;
  *(result + 56) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 64) = 0;
  *(result + 72) = 1702454643;
  *(result + 16) = 1702454643;
  *(result + 24) = a1;
  *(result + 32) = 3;
  return result;
}

uint64_t static CMTag.stereoViewInterpretation(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia10CMTypedTagCySo33CMStereoViewInterpretationOptionsVGMd, &_s9CoreMedia10CMTypedTagCySo33CMStereoViewInterpretationOptionsVGMR);
  result = swift_allocObject();
  *(result + 40) = closure #1 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 48) = 0;
  *(result + 56) = closure #2 in CMTypedTag.Category<>.init(rawCategory:);
  *(result + 64) = 0;
  *(result + 72) = 1702455664;
  *(result + 16) = 1702455664;
  *(result + 24) = a1;
  *(result + 32) = 3;
  return result;
}

uint64_t closure #1 in CMTypedTag.Category<>.init(rawCategory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (*(result + 8))
  {
    LODWORD(v3) = 0;
LABEL_5:
    *a2 = v3;
    *(a2 + 4) = v2 != 0;
    return result;
  }

  v3 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

int *closure #2 in CMTypedTag.Category<>.init(rawCategory:)@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t *closure #1 in CMTypedTag.Category<>.init(rawCategory:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (*(result + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  *a2 = v3;
  *(a2 + 8) = v2 != 0;
  return result;
}

void *closure #2 in CMTypedTag.Category<>.init(rawCategory:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t Sequence<>.filter<A>(matchingCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v7;
  v19 = *(a1 + 32);
  v8 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v8;
  v26 = *(a1 + 32);
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v25;
  v20 = Sequence.compactMap<A>(_:)();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = v18;
  v9 = type metadata accessor for Array();
  v12 = type metadata accessor for CMTypedTag(0, a3, v10, v11);
  WitnessTable = swift_getWitnessTable();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Sequence<>.filter<A>(matchingCategory:), v17, v9, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

  return v15;
}

uint64_t closure #1 in Sequence<>.filter<A>(matchingCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>, uint64_t a5@<X2>)
{
  type metadata accessor for CMTypedTag(0, a3, a5, a3);
  v9 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v9;
  v18 = *(a2 + 32);
  v12 = type metadata accessor for CMTypedTag.Category(0, a3, v10, v11);
  (*(*(v12 - 8) + 16))(v16, a2, v12);
  result = specialized CMTypedTag.__allocating_init(category:value:)(v17, a1, v13, v14);
  *a4 = result;
  return result;
}

uint64_t Sequence<>.firstValue<A>(matchingCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LazySequence();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v12 = *(a1 + 32);
  MEMORY[0x2318E2840](a2, a4);
  WitnessTable = swift_getWitnessTable();
  v14 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v14;
  v19 = v12;
  v17[2] = v8;
  v17[3] = a3;
  v17[4] = WitnessTable;
  v17[5] = v18;
  v15 = Sequence.compactMap<A>(_:)();
  (*(v9 + 8))(v11, v8);
  v17[0] = v15;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
}

uint64_t Sequence<>.first<A>(matchingCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LazySequence();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = *(a1 + 32);
  MEMORY[0x2318E2840](a2, a4);
  v13 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v13;
  v21 = v12;
  WitnessTable = swift_getWitnessTable();
  v15 = Sequence<>.filter<A>(matchingCategory:)(v20, v8, a3, WitnessTable);
  (*(v9 + 8))(v11, v8);
  *&v20[0] = v15;
  type metadata accessor for CMTypedTag(255, a3, v16, v17);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  return v19[1];
}

BOOL specialized static CMTag.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    v7 = LODWORD(v2) == LODWORD(v3);
    if (v4 != 2)
    {
      v7 = 0;
    }

    v9 = v4 == 3 && *&v2 == *&v3;
    if (*(a1 + 8) == 2)
    {
      return v7;
    }

    else
    {
      return v9;
    }
  }

  else if (*(a1 + 8))
  {
    return v4 == 1 && v2 == v3;
  }

  else
  {
    return !*(a2 + 8) && *&v2 == *&v3;
  }
}

BOOL specialized static CMTag.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v10 = CMTagMakeWithOSTypeValue(v4, v5);
      value = v10.value;
      v7 = *&v10.category;
    }

    else
    {
      v12 = CMTagMakeWithFlagsValue(v4, v5);
      value = v12.value;
      v7 = *&v12.category;
    }
  }

  else if (v6)
  {
    v11 = CMTagMakeWithFloat64Value(v4, *&v5);
    value = v11.value;
    v7 = *&v11.category;
  }

  else
  {
    v9 = CMTagMakeWithSInt64Value(v4, v5);
    value = v9.value;
    v7 = *&v9.category;
  }

  v13 = v7;
  v14 = value;
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  if (*(a2 + 32) > 1u)
  {
    if (*(a2 + 32) == 2)
    {
      v20 = CMTagMakeWithOSTypeValue(v15, v16);
      v18 = v20.value;
      v17 = *&v20.category;
    }

    else
    {
      v22 = CMTagMakeWithFlagsValue(v15, v16);
      v18 = v22.value;
      v17 = *&v22.category;
    }
  }

  else if (*(a2 + 32))
  {
    v21 = CMTagMakeWithFloat64Value(v15, *(a2 + 24));
    v18 = v21.value;
    v17 = *&v21.category;
  }

  else
  {
    v19 = CMTagMakeWithSInt64Value(v15, v16);
    v18 = v19.value;
    v17 = *&v19.category;
  }

  *&v25.category = v17;
  v25.value = v18;
  *&v24.category = v13;
  v24.value = v14;
  return CMTagEqualToTag(v24, v25) != 0;
}

uint64_t specialized CMTypedTag.init(category:value:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *(v3 + 40) = *a1;
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 72) = v6;
  v4(&v10, a2);
  v7 = v10;
  v8 = v11;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  *(v3 + 32) = v8;
  return v3;
}

uint64_t specialized CMTypedTag.__allocating_init(category:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CMTypedTag(0, *(v4 + 128), a3, a4);
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(v7 + 40) = *a1;
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 72) = v10;
  v8(&v14, a2);
  v11 = v14;
  v12 = v15;
  *(v7 + 16) = v10;
  *(v7 + 24) = v11;
  *(v7 + 32) = v12;
  return v7;
}

uint64_t instantiation function for generic protocol witness table for CMTagCategory(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CMTagCategory and conformance CMTagCategory(&lazy protocol witness table cache variable for type CMTagCategory and conformance CMTagCategory, &protocol conformance descriptor for CMTagCategory);
  result = lazy protocol witness table accessor for type CMTagCategory and conformance CMTagCategory(&lazy protocol witness table cache variable for type CMTagCategory and conformance CMTagCategory, &protocol conformance descriptor for CMTagCategory);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CMTagCategory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CMTagCategory and conformance CMTagCategory(&lazy protocol witness table cache variable for type CMTagCategory and conformance CMTagCategory, &protocol conformance descriptor for CMTagCategory);
  a1[2] = lazy protocol witness table accessor for type CMTagCategory and conformance CMTagCategory(&lazy protocol witness table cache variable for type CMTagCategory and conformance CMTagCategory, &protocol conformance descriptor for CMTagCategory);
  result = lazy protocol witness table accessor for type CMTagCategory and conformance CMTagCategory(&lazy protocol witness table cache variable for type CMTagCategory and conformance CMTagCategory, &protocol conformance descriptor for CMTagCategory);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CMTagCategory and conformance CMTagCategory(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CMTagCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CMTag.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CMTag.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t type metadata instantiation function for CMTypedTag.Category(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CMTypedTag.Category(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for CMTypedTag.Category(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in Sequence<>.compactMap<A>(toValuesMatchingCategory:)(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *a1;
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  v8 = *(v3 + 32);
  return (*(*v4 + 112))(v7, v2);
}

void Array<A>.embed(into:)(uint64_t a1, uint64_t a2)
{
  v3 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v3 >= 2)
  {
    goto LABEL_3;
  }

  while (1)
  {
    __break(1u);
LABEL_3:
    if (v3 == 3)
    {
      break;
    }

    if (v3 - 4 >= 2)
    {
      if (v3 != 2)
      {
        __break(1u);
        return;
      }

      __break(1u);
      break;
    }
  }

  v4 = Array<A>.taggedBufferGroup.getter(a2);
  FigSampleBufferSetPayloadForSwiftOverlay();
}

uint64_t CMReadySampleBuffer<>.init(unsafeWithTaggedBuffers:)@<X0>(opaqueCMSampleBuffer *a1@<X0>, opaqueCMSampleBuffer **a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = CMSampleBufferGetFormatDescription(a1);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v5 >= 2)
  {
    goto LABEL_4;
  }

  do
  {
    __break(1u);
LABEL_4:
    if (v5 == 3)
    {
      goto LABEL_8;
    }
  }

  while (v5 - 4 < 2);
  if (v5 != 2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    CMSampleBufferHasDataFailed(a1, &statusOut);
    __break(1u);
  }

  __break(1u);
LABEL_8:
  if (!CMSampleBufferIsValid(a1))
  {
    __break(1u);
    goto LABEL_12;
  }

  statusOut = noErr.getter();
  result = CMSampleBufferDataIsReady(a1);
  if (!result)
  {
    goto LABEL_14;
  }

  *a2 = a1;
  return result;
}

uint64_t CMReadySampleBuffer<>.init(taggedBuffers:formatDescription:presentationTimeStamp:duration:)@<X0>(uint64_t a1@<X0>, uint64_t inited@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v15 = type metadata accessor for CMSampleBufferRef.Initializer(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v28 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v28 - v22;
  if (!inited)
  {

    inited = _s9CoreMedia34_CMFormatDescriptionInitTrampolinePAAE13taggedBuffers10extensionsxSayAA21CMTaggedDynamicBufferVG_So0cD3RefaAAE10ExtensionsVSgtcfCAJ_Tt2B5(v24, 0);
  }

  v31 = 0;
  *v23 = a1;
  *(v23 + 1) = inited;
  *(v23 + 2) = a3;
  *(v23 + 3) = a4;
  *(v23 + 4) = a5;
  *(v23 + 5) = a6;
  v25 = v29;
  *(v23 + 6) = v28;
  *(v23 + 7) = v25;
  v23[64] = 0;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of CMSampleBufferRef.Initializer(v23, v21);
  outlined init with copy of CMSampleBufferRef.Initializer(v21, v18);
  v26 = _s9CoreMedia29_CMSampleBufferInitTrampolinePAAEyxSo0cD3RefaAAE11InitializerOcfCAE_Tt1g5(v18);
  outlined destroy of CMSampleBufferRef.Initializer(v21);
  result = outlined destroy of CMSampleBufferRef.Initializer(v23);
  *v30 = v26;
  return result;
}

uint64_t _s9CoreMedia34_CMFormatDescriptionInitTrampolinePAAE13taggedBuffers10extensionsxSayAA21CMTaggedDynamicBufferVG_So0cD3RefaAAE10ExtensionsVSgtcfCAJ_Tt2B5(uint64_t a1, uint64_t a2)
{
  v3 = Array<A>.taggedBufferGroup.getter(a1);
  if (a2)
  {
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();

    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = CMTaggedBufferGroupFormatDescriptionCreateForTaggedBufferGroupWithExtensions();

  if (v5 == noErr.getter())
  {
    __break(1u);
  }

  v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v6 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  swift_willThrow();

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t CMReadySampleBuffer<>.content.getter()
{
  v1 = *v0;

  return specialized Array<A>.init(from:)(v1);
}

void key path setter for CMReadySampleBuffer<>.content : CMReadySampleBuffer<[CMTaggedDynamicBuffer]>(uint64_t *a1, void **a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v5 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v6 = v5;
    v7 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v6);

    v5 = v7;
    *a2 = v7;
  }

  Array<A>.embed(into:)(v5, v3);
}

uint64_t (*CMReadySampleBuffer<>.content.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = specialized Array<A>.init(from:)(*v1);
  return CMReadySampleBuffer<>.content.modify;
}

uint64_t CMReadySampleBuffer<>.content.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v5 = *v3;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v6 = v5;
      v7 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v6);

      v5 = v7;
      *v3 = v7;
    }

    Array<A>.embed(into:)(v5, v2);
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull();
    v9 = *v3;
    if ((v8 & 1) == 0)
    {
      v10 = v9;
      v11 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v10);

      v9 = v11;
      *v3 = v11;
    }

    Array<A>.embed(into:)(v9, v2);
  }
}

void (*CMReadySampleBuffer<>.sampleAttachments.modify(void *a1))(void *a1, char a2)
{
  a1[1] = v1;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo17CMSampleBufferRefa8CMObjectRtzrlE22firstSampleAttachmentsAgAE0kL0VvgAlGYTXEfU_();
  a1[2] = 0;
  return CMReadySampleBuffer<>.sampleAttachments.modify;
}

uint64_t specialized Array<A>.init(from:)(opaqueCMSampleBuffer *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = CMSampleBufferGetTaggedBufferGroup(a1);
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = v2;
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(v3);

  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x277D84F90];
  }

  v18 = a1;
  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v20;
  v7 = (v4 + 48);
  do
  {
    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    if (*v7)
    {
      type metadata accessor for CVReadOnlyPixelBuffer();
      swift_allocObject();

      v10 = v9;
      v9 = CVReadOnlyPixelBuffer.init(unsafeBuffer:)();
      v11 = 0;
      goto LABEL_14;
    }

    swift_bridgeObjectRetain_n();
    v12 = v9;
    v13 = FigSampleBufferPayloadTypeForSwiftOverlay();
    if (!v13)
    {
      if (!CMSampleBufferIsValid(v12))
      {
        goto LABEL_21;
      }

      statusOut = noErr.getter();
      if (!CMSampleBufferDataIsReady(v12))
      {
        goto LABEL_23;
      }

      v11 = 2;
      goto LABEL_14;
    }

    if (v13 != 1)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      CMSampleBufferHasDataFailed(v12, &statusOut);
      __break(1u);
LABEL_24:
      CMSampleBufferHasDataFailed(v12, &statusOut);
      __break(1u);
LABEL_25:
      __break(1u);
    }

    if (!CMSampleBufferIsValid(v12))
    {
      goto LABEL_22;
    }

    statusOut = noErr.getter();
    if (!CMSampleBufferDataIsReady(v12))
    {
      goto LABEL_24;
    }

    v11 = 1;
LABEL_14:
    v20 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v6 = v20;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 24 * v15;
    *(v16 + 32) = v8;
    *(v16 + 40) = v9;
    *(v16 + 48) = v11;
    v7 += 24;
    --v5;
  }

  while (v5);

  return v6;
}

uint64_t CMBufferQueueRef.Handlers.getDecodeTimeStamp.getter()
{
  v1 = *v0;
  _syXlSo6CMTimeaIeggd_SgWOy_0(*v0, v0[1]);
  return v1;
}

uint64_t CMBufferQueueRef.Handlers.getPresentationTimeStamp.getter()
{
  v1 = *(v0 + 16);
  _syXlSo6CMTimeaIeggd_SgWOy_0(v1, *(v0 + 24));
  return v1;
}

uint64_t CMBufferQueueRef.Handlers.getDuration.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CMBufferQueueRef.Handlers.isDataReady.getter()
{
  v1 = *(v0 + 48);
  _syXlSo6CMTimeaIeggd_SgWOy_0(v1, *(v0 + 56));
  return v1;
}

uint64_t CMBufferQueueRef.Handlers.compare.getter()
{
  v1 = *(v0 + 64);
  _syXlSo6CMTimeaIeggd_SgWOy_0(v1, *(v0 + 72));
  return v1;
}

uint64_t CMBufferQueueRef.Handlers.dataBecameReadyNotification.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t CMBufferQueueRef.Handlers.getSize.getter()
{
  v1 = *(v0 + 96);
  _syXlSo6CMTimeaIeggd_SgWOy_0(v1, *(v0 + 104));
  return v1;
}

uint64_t CMBufferQueueRef.Handlers.Builder.dataBecameReadyNotification.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t CMBufferQueueRef.Handlers.Builder.getDecodeTimeStamp(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];

  result = _syXlSo6CMTimeaIeggd_SgWOe_0(v5, v6);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CMBufferQueueRef.Handlers.Builder.getPresentationTimeStamp(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  result = _syXlSo6CMTimeaIeggd_SgWOe_0(v5, v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CMBufferQueueRef.Handlers.Builder.getDuration(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);

  result = _syXlSo6CMTimeaIeggd_SgWOe_0(v5, v6);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CMBufferQueueRef.Handlers.Builder.isDataReady(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);

  result = _syXlSo6CMTimeaIeggd_SgWOe_0(v5, v6);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t CMBufferQueueRef.Handlers.Builder.compare(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);

  result = _syXlSo6CMTimeaIeggd_SgWOe_0(v5, v6);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t CMBufferQueueRef.Handlers.Builder.getSize(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);

  result = _syXlSo6CMTimeaIeggd_SgWOe_0(v5, v6);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t *CMBufferQueueRef.Handlers.Builder.build(handlers:)@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *result;
  v47 = result[1];
  v48 = result[3];
  v5 = result[4];
  v49 = result[7];
  v50 = result[9];
  v53 = result[10];
  v54 = result[2];
  v52 = result[11];
  v51 = result[13];
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v9 = v2[5];
  v10 = v2[6];
  v62 = v2[7];
  v66 = v2[8];
  v64 = v2[9];
  v72 = v2[10];
  v73 = v2[11];
  v68 = v2[12];
  v69 = v9;
  v70 = v2[4];
  v57 = result[12];
  v58 = v2[13];
  v55 = result[6];
  v56 = result[8];
  v59 = v2[3];
  if (v70)
  {
    v11 = result[4];
    v12 = v2[4];
    v13 = v9;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned CMTime)partial apply;
  }

  else
  {
    if (!v5)
    {
      __break(1u);
      return result;
    }

    v16 = result[5];
    v14 = swift_allocObject();
    v11 = v5;
    *(v14 + 16) = v5;
    *(v14 + 24) = v16;

    v15 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned CMTime);
  }

  v17 = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v14;
  v61 = v18;
  if (v7)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    *(v19 + 24) = v6;
LABEL_10:
    v20 = swift_allocObject();
    *(v20 + 16) = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned CMTime)partial apply;
    *(v20 + 24) = v19;
    _syXlSo6CMTimeaIeggd_SgWOy_0(v7, v6);
    v71 = thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out CMTime)partial apply;
    v21 = v11;
    goto LABEL_11;
  }

  v20 = 0;
  v21 = v11;
  v71 = 0;
  if (v11 && v4)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = v47;

    goto LABEL_10;
  }

LABEL_11:
  v22 = v10;
  if (v8)
  {
    v23 = swift_allocObject();
    v24 = v59;
    *(v23 + 16) = v8;
    *(v23 + 24) = v59;
    v25 = v64;
LABEL_16:
    v27 = swift_allocObject();
    *(v27 + 16) = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned CMTime)partial apply;
    *(v27 + 24) = v23;
    _syXlSo6CMTimeaIeggd_SgWOy_0(v8, v24);
    v26 = thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out CMTime)partial apply;
    goto LABEL_17;
  }

  v26 = 0;
  v25 = v64;
  v27 = 0;
  if (v21 && v54)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v54;
    *(v23 + 24) = v48;

    v24 = v59;
    goto LABEL_16;
  }

LABEL_17:
  v60 = v26;
  v65 = v27;
  if (v22)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v22;
    *(v28 + 24) = v62;
    v29 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool)partial apply;
LABEL_22:
    v32 = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = v32;
    *(v31 + 24) = v28;
    _syXlSo6CMTimeaIeggd_SgWOy_0(v22, v62);
    v30 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out Bool);
    goto LABEL_23;
  }

  v30 = 0;
  v31 = 0;
  if (v21 && v55)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v55;
    *(v28 + 24) = v49;

    v29 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
    goto LABEL_22;
  }

LABEL_23:
  if (v66)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v66;
    *(v33 + 24) = v25;
    v34 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject, @guaranteed Swift.AnyObject) -> (@unowned CFComparisonResult)partial apply;
LABEL_28:
    v37 = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = v37;
    *(v36 + 24) = v33;
    _syXlSo6CMTimeaIeggd_SgWOy_0(v66, v25);
    v35 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject, @in_guaranteed Swift.AnyObject) -> (@out CFComparisonResult);
    goto LABEL_29;
  }

  v35 = 0;
  v36 = 0;
  if (v21 && v56)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v56;
    *(v33 + 24) = v50;

    v34 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject, @guaranteed Swift.AnyObject) -> (@unowned CFComparisonResult);
    goto LABEL_28;
  }

LABEL_29:
  v67 = v20;
  v38 = v73;
  if (!v73)
  {
    if (!v21)
    {
      v72 = 0;
      v38 = 0;
      if (v68)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    v38 = v52;

    v72 = v53;
  }

  if (v68)
  {
LABEL_33:
    v63 = v35;
    v39 = v31;
    v40 = v30;
    v41 = swift_allocObject();
    v42 = v58;
    *(v41 + 16) = v68;
    *(v41 + 24) = v58;
    v43 = v68;
    v44 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Int)partial apply;
LABEL_38:
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v41;
    _syXlSo6CMTimeaIeggd_SgWOy_0(v43, v42);
    v45 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out Int);
    v30 = v40;
    v31 = v39;
    v35 = v63;
    goto LABEL_39;
  }

LABEL_35:
  v45 = 0;
  v46 = 0;
  if (v21 && v57)
  {
    v63 = v35;
    v39 = v31;
    v40 = v30;
    v41 = swift_allocObject();
    *(v41 + 16) = v57;
    *(v41 + 24) = v51;

    v43 = v68;
    v44 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Int);
    v42 = v58;
    goto LABEL_38;
  }

LABEL_39:
  *a2 = v71;
  a2[1] = v67;
  a2[2] = v60;
  a2[3] = v65;
  a2[4] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out CMTime);
  a2[5] = v61;
  a2[6] = v30;
  a2[7] = v31;
  a2[8] = v35;
  a2[9] = v36;
  a2[10] = v72;
  a2[11] = v38;
  a2[12] = v45;
  a2[13] = v46;
  _syXlSo6CMTimeaIeggd_SgWOy_0(v70, v69);
}

__n128 CMBufferQueueRef.Handlers.init(withHandlers:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  a1(&v14);
  v21[4] = v18;
  v21[5] = v19;
  v21[6] = v20;
  v21[0] = v14;
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  memset(v6, 0, sizeof(v6));
  outlined init with copy of CMBufferQueueRef.Handlers.Builder(v21, v24);
  CMBufferQueueRef.Handlers.Builder.build(handlers:)(v6, v24);
  v22[4] = v11;
  v22[5] = v12;
  v22[6] = v13;
  v22[0] = v7;
  v22[1] = v8;
  v22[2] = v9;
  v22[3] = v10;
  outlined destroy of CMBufferQueueRef.Handlers.Builder(v22);
  v23[4] = v18;
  v23[5] = v19;
  v23[6] = v20;
  v23[0] = v14;
  v23[1] = v15;
  v23[2] = v16;
  v23[3] = v17;
  outlined destroy of CMBufferQueueRef.Handlers.Builder(v23);
  v3 = v24[5];
  *(a2 + 64) = v24[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v24[6];
  v4 = v24[1];
  *a2 = v24[0];
  *(a2 + 16) = v4;
  result = v24[3];
  *(a2 + 32) = v24[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t CMBufferQueueRef.Handlers.withHandlers(_:)@<X0>(void (*a1)(__int128 *)@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = v2[5];
  v33 = v2[4];
  v34 = v4;
  v35 = v2[6];
  v5 = v2[1];
  v29 = *v2;
  v30 = v5;
  v6 = v2[3];
  v31 = v2[2];
  v32 = v6;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  a1(&v22);
  v36[4] = v26;
  v36[5] = v27;
  v36[6] = v28;
  v36[0] = v22;
  v36[1] = v23;
  v36[2] = v24;
  v36[3] = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v12 = v33;
  v13 = v34;
  v14 = v35;
  v8 = v29;
  v9 = v30;
  v10 = v31;
  v11 = v32;
  outlined init with copy of CMBufferQueueRef.Handlers.Builder(v36, v39);
  outlined init with copy of CMBufferQueueRef.Handlers(&v29, v39);
  CMBufferQueueRef.Handlers.Builder.build(handlers:)(&v8, a2);
  v37[4] = v12;
  v37[5] = v13;
  v37[6] = v14;
  v37[0] = v8;
  v37[1] = v9;
  v37[2] = v10;
  v37[3] = v11;
  outlined destroy of CMAttachmentBearerAttachments.Value?(v37, &_sSo16CMBufferQueueRefa9CoreMediaE8HandlersVSgMd, &_sSo16CMBufferQueueRefa9CoreMediaE8HandlersVSgMR);
  v38[4] = v19;
  v38[5] = v20;
  v38[6] = v21;
  v38[0] = v15;
  v38[1] = v16;
  v38[2] = v17;
  v38[3] = v18;
  outlined destroy of CMBufferQueueRef.Handlers.Builder(v38);
  v39[4] = v26;
  v39[5] = v27;
  v39[6] = v28;
  v39[0] = v22;
  v39[1] = v23;
  v39[2] = v24;
  v39[3] = v25;
  return outlined destroy of CMBufferQueueRef.Handlers.Builder(v39);
}

__n128 CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  closure #1 in CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:)(&v14, a1);
  v21[4] = v18;
  v21[5] = v19;
  v21[6] = v20;
  v21[0] = v14;
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  memset(v6, 0, sizeof(v6));
  outlined init with copy of CMBufferQueueRef.Handlers.Builder(v21, v24);
  CMBufferQueueRef.Handlers.Builder.build(handlers:)(v6, v24);
  v22[4] = v11;
  v22[5] = v12;
  v22[6] = v13;
  v22[0] = v7;
  v22[1] = v8;
  v22[2] = v9;
  v22[3] = v10;
  outlined destroy of CMBufferQueueRef.Handlers.Builder(v22);
  v23[4] = v18;
  v23[5] = v19;
  v23[6] = v20;
  v23[0] = v14;
  v23[1] = v15;
  v23[2] = v16;
  v23[3] = v17;
  outlined destroy of CMBufferQueueRef.Handlers.Builder(v23);
  v3 = v24[5];
  *(a2 + 64) = v24[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v24[6];
  v4 = v24[1];
  *a2 = v24[0];
  *(a2 + 16) = v4;
  result = v24[3];
  *(a2 + 32) = v24[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t closure #1 in CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:)(uint64_t *a1, __int128 *a2)
{
  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = *a2;
    *(v5 + 40) = a2[1];
    v7 = a2[3];
    *(v5 + 56) = a2[2];
    *(v5 + 72) = v7;
    *(v5 + 88) = *(a2 + 16);
    *(v5 + 24) = v6;
    _syXlSo6CMTimeaIeggd_SgWOe_0(*a1, a1[1]);
    *a1 = partial apply for closure #1 in closure #1 in CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:);
    a1[1] = v5;
  }

  v8 = *(a2 + 20);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = *a2;
    *(v9 + 40) = a2[1];
    v11 = a2[3];
    *(v9 + 56) = a2[2];
    *(v9 + 72) = v11;
    *(v9 + 88) = *(a2 + 16);
    *(v9 + 24) = v10;
    _syXlSo6CMTimeaIeggd_SgWOe_0(a1[2], a1[3]);
    a1[2] = partial apply for closure #2 in closure #1 in CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:);
    a1[3] = v9;
  }

  v12 = swift_allocObject();
  v13 = a2[3];
  *(v12 + 48) = a2[2];
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a2 + 16);
  v14 = a2[1];
  *(v12 + 16) = *a2;
  *(v12 + 32) = v14;
  result = _syXlSo6CMTimeaIeggd_SgWOe_0(a1[4], a1[5]);
  a1[4] = partial apply for closure #3 in closure #1 in CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:);
  a1[5] = v12;
  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v18 = *a2;
    *(v17 + 40) = a2[1];
    v19 = a2[3];
    *(v17 + 56) = a2[2];
    *(v17 + 72) = v19;
    *(v17 + 88) = *(a2 + 16);
    *(v17 + 24) = v18;
    result = _syXlSo6CMTimeaIeggd_SgWOe_0(a1[6], a1[7]);
    a1[6] = partial apply for closure #4 in closure #1 in CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:);
    a1[7] = v17;
  }

  v20 = *(a2 + 44);
  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = *a2;
    *(v21 + 40) = a2[1];
    v23 = a2[3];
    *(v21 + 56) = a2[2];
    *(v21 + 72) = v23;
    *(v21 + 88) = *(a2 + 16);
    *(v21 + 24) = v22;
    result = _syXlSo6CMTimeaIeggd_SgWOe_0(a1[8], a1[9]);
    a1[8] = partial apply for closure #5 in closure #1 in CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:);
    a1[9] = v21;
  }

  v24 = *(a2 + 52);
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    a1[10] = v26;
    a1[11] = v28;
  }

  v29 = *(a2 + 60);
  if (v29)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    v31 = *a2;
    *(v30 + 40) = a2[1];
    v32 = a2[3];
    *(v30 + 56) = a2[2];
    *(v30 + 72) = v32;
    *(v30 + 88) = *(a2 + 16);
    *(v30 + 24) = v31;
    result = _syXlSo6CMTimeaIeggd_SgWOe_0(a1[12], a1[13]);
    a1[12] = partial apply for closure #6 in closure #1 in CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:);
    a1[13] = v30;
  }

  return result;
}

uint64_t static CMBufferQueueRef.Handlers.unsortedSampleBuffers.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for unsortedSampleBuffers != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = xmmword_27DA53B58;
  v2 = unk_27DA53B68;
  v10[4] = xmmword_27DA53B58;
  v10[5] = unk_27DA53B68;
  v3 = xmmword_27DA53B78;
  v10[6] = xmmword_27DA53B78;
  v4 = unk_27DA53B28;
  v10[0] = static CMBufferQueueRef.Handlers.unsortedSampleBuffers;
  v10[1] = unk_27DA53B28;
  v6 = xmmword_27DA53B38;
  v5 = unk_27DA53B48;
  v10[2] = xmmword_27DA53B38;
  v10[3] = unk_27DA53B48;
  *a1 = static CMBufferQueueRef.Handlers.unsortedSampleBuffers;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  return outlined init with copy of CMBufferQueueRef.Handlers(v10, &v9);
}

double one-time initialization function for unsortedSampleBuffers(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = a2(a1);
  v5 = *(v4 + 48);
  v8[2] = *(v4 + 32);
  v8[3] = v5;
  v9 = *(v4 + 64);
  v6 = *(v4 + 16);
  v8[0] = *v4;
  v8[1] = v6;
  *&result = CMBufferQueueRef.Handlers.init(withCMBufferCallbacks:)(v8, a3).n128_u64[0];
  return result;
}

uint64_t static CMBufferQueueRef.Handlers.outputPTSSortedSampleBuffers.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for outputPTSSortedSampleBuffers != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = xmmword_27DA53BC8;
  v2 = unk_27DA53BD8;
  v10[4] = xmmword_27DA53BC8;
  v10[5] = unk_27DA53BD8;
  v3 = xmmword_27DA53BE8;
  v10[6] = xmmword_27DA53BE8;
  v4 = unk_27DA53B98;
  v10[0] = static CMBufferQueueRef.Handlers.outputPTSSortedSampleBuffers;
  v10[1] = unk_27DA53B98;
  v6 = xmmword_27DA53BA8;
  v5 = unk_27DA53BB8;
  v10[2] = xmmword_27DA53BA8;
  v10[3] = unk_27DA53BB8;
  *a1 = static CMBufferQueueRef.Handlers.outputPTSSortedSampleBuffers;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  return outlined init with copy of CMBufferQueueRef.Handlers(v10, &v9);
}

uint64_t specialized CMBufferQueueRef.Handlers.withOpaquePointer<A>(_:)(uint64_t *a1, CMItemCount a2, CMBufferQueueRef *a3)
{
  if (*a1)
  {
    v4 = a1[1];
    v43 = *a1;
    v44 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1644167168;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned CMTime);
    v42 = &block_descriptor_95;
    v5 = _Block_copy(&aBlock);

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CMTimeayXlXBMd, &_sSo6CMTimeayXlXBMR);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v47 = 0;
    v48 = 0;
  }

  v46 = v5;
  v49 = v6;
  if (a1[2])
  {
    v7 = a1[3];
    v43 = a1[2];
    v44 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1644167168;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned CMTime);
    v42 = &block_descriptor_92;
    v8 = _Block_copy(&aBlock);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CMTimeayXlXBMd, &_sSo6CMTimeayXlXBMR);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v51 = 0;
    v52 = 0;
  }

  v50 = v8;
  v53 = v9;
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v43 = a1[4];
  v44 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1644167168;
  v41 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned CMTime);
  v42 = &block_descriptor_80;
  v13 = _Block_copy(&aBlock);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CMTimeayXlXBMd, &_sSo6CMTimeayXlXBMR);
  v54 = v13;

  if (v11)
  {
    v43 = v11;
    v44 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
    v42 = &block_descriptor_89;
    v14 = _Block_copy(&aBlock);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbyXlXBMd, &_sSbyXlXBMR);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v57 = 0;
    v58 = 0;
  }

  v56 = v14;
  v59 = v15;
  if (a1[8])
  {
    v16 = a1[9];
    v43 = a1[8];
    v44 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject, @guaranteed Swift.AnyObject) -> (@unowned CFComparisonResult);
    v42 = &block_descriptor_86;
    v17 = _Block_copy(&aBlock);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CFComparisonResultVyXl_yXltXBMd, &_sSo18CFComparisonResultVyXl_yXltXBMR);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v61 = 0;
    v62 = 0;
  }

  v60 = v17;
  v63 = v18;
  if (a1[11])
  {
    v19 = MEMORY[0x2318E2770](a1[10]);
    type metadata accessor for CFStringRef(0);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v65 = 0;
    v66 = 0;
  }

  v64 = v19;
  v67 = v20;
  if (a1[12])
  {
    v21 = a1[13];
    v43 = a1[12];
    v44 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Int);
    v42 = &block_descriptor_83;
    v22 = _Block_copy(&aBlock);

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiyXlXBMd, &_sSiyXlXBMR);
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v22;
  v71 = v23;
  v38 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
  v24 = 32;
  v25 = v38;
  do
  {
    outlined init with copy of Any?(&v45[v24], &aBlock);
    outlined init with copy of Any?(&aBlock, &v36);
    if (v37)
    {
      outlined init with take of Any(&v36, &v34);
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v26 = _bridgeAnythingToObjectiveC<A>(_:)();
      outlined destroy of CMAttachmentBearerAttachments.Value?(&aBlock, &_sypSgMd, "lR");
      __swift_destroy_boxed_opaque_existential_1(&v34);
    }

    else
    {
      outlined destroy of CMAttachmentBearerAttachments.Value?(&aBlock, &_sypSgMd, "lR");
      v26 = 0;
    }

    v38 = v25;
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v28 >= v27 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
      v25 = v38;
    }

    *(v25 + 16) = v28 + 1;
    *(v25 + 8 * v28 + 32) = v26;
    v24 += 32;
  }

  while (v24 != 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  swift_arrayDestroy();
  aBlock = &outlined read-only object #0 of specialized CMBufferQueueRef.Handlers.withOpaquePointer<A>(_:);
  specialized Array.append<A>(contentsOf:)(v25);
  v29 = aBlock;
  v30 = CMBufferQueueCreateWithHandlers(*MEMORY[0x277CBECE8], a2, (aBlock + 32), a3);
  $defer #1 <A>() in CMBufferQueueRef.Handlers.withOpaquePointer<A>(_:)(v29);

  return v30;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned CMTime)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v6 = v4(v5);
  v8 = v7;
  v10 = v9;

  result = swift_unknownObjectRelease();
  *a3 = v6;
  a3[1] = v8;
  a3[2] = v10;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject, @guaranteed Swift.AnyObject) -> (@unowned CFComparisonResult)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Int)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t $defer #1 <A>() in CMBufferQueueRef.Handlers.withOpaquePointer<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  v2 = v1 - 1;
  if (v1 != 1)
  {
    if (v1)
    {
      v3 = (result + 40);
      do
      {
        v4 = *v3++;
        result = v4;
        if (v4)
        {
          result = swift_unknownObjectRelease();
        }

        --v2;
      }

      while (v2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _CMBufferQueueInitTrampoline.init(capacity:handlers:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v8[2] = v9;
  v8[3] = a1;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMBufferQueueInitTrampoline.init(capacity:handlers:), v8, a3, *(a4 + 8));
  return outlined destroy of CMBufferQueueRef.Handlers(v9);
}

uint64_t CMBufferQueueRef.enqueue(_:)(CMBufferRef buf)
{
  v2 = CMBufferQueueEnqueue(v1, buf);
  if (one-time initialization token for tlsKey != -1)
  {
    swift_once();
  }

  v3 = static BoxedError.tlsKey;
  v4 = pthread_getspecific(static BoxedError.tlsKey);
  if (v4)
  {
    v5 = v4;
    pthread_setspecific(v3, 0);
    v6 = v5[2];
  }

  else
  {
    result = noErr.getter();
    if (v2 == result)
    {
      return result;
    }

    v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v8 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
  }

  return swift_willThrow();
}

uint64_t CMBufferQueueRef.markEndOfData()(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  result = noErr.getter();
  if (v2 != result)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v4 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t CMBufferQueueRef.reset(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = *MEMORY[0x277D85DE8];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = partial apply for thunk for @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@error @owned Error);
  v9[3] = v8;
  v9[4] = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in closure #1 in CMBufferQueueResetWithHandler(queue:execute:rescue:);
  *(v10 + 24) = v9;
  v18 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
  v19 = v10;

  v11 = MEMORY[0x2318E3110](v3, @objc callClosureFromRefconCMBuffer(_:_:), &v18);
  if (v11 == noErr.getter())
  {

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    swift_beginAccess();
    v13 = *v7;
    if (*v7)
    {
      swift_willThrow();
      v14 = v13;
    }
  }

  else
  {
    v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v16 initWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:{0, v18, v19}];
    swift_willThrow();

    v17 = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

CMBufferQueueTriggerToken CMBufferQueueRef.installTrigger(condition:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  triggerTokenOut[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  triggerTokenOut[0] = 0;
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (a2)
        {
          v35 = a2;
          v36 = a3;
          v33.value = MEMORY[0x277D85DD0];
          *&v33.timescale = 1107296256;
          v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
          v34 = &block_descriptor_36;
          v8 = _Block_copy(&v33);
        }

        else
        {
          v8 = 0;
        }

        v33.value = v4;
        *&v33.timescale = v5;
        v33.epoch = v6;
        v13 = v3;
        v14 = 2;
      }

      else
      {
        if (a2)
        {
          v35 = a2;
          v36 = a3;
          v33.value = MEMORY[0x277D85DD0];
          *&v33.timescale = 1107296256;
          v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
          v34 = &block_descriptor_33;
          v8 = _Block_copy(&v33);
        }

        else
        {
          v8 = 0;
        }

        v33.value = v4;
        *&v33.timescale = v5;
        v33.epoch = v6;
        v13 = v3;
        v14 = 3;
      }
    }

    else
    {
      if (a2)
      {
        v35 = a2;
        v36 = a3;
        v33.value = MEMORY[0x277D85DD0];
        *&v33.timescale = 1107296256;
        v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v34 = &block_descriptor_39;
        v8 = _Block_copy(&v33);
      }

      else
      {
        v8 = 0;
      }

      v33.value = v4;
      *&v33.timescale = v5;
      v33.epoch = v6;
      v13 = v3;
      v14 = 1;
    }

    goto LABEL_59;
  }

  if (v7 > 4)
  {
    if (v7 != 5)
    {
      v9 = v6 | v5;
      if (v6 | v5 | v4)
      {
        if (v4 != 1 || v9)
        {
          if (v4 != 2 || v9)
          {
            if (v4 != 3 || v9)
            {
              v27 = *MEMORY[0x277CC0898];
              v28 = *(MEMORY[0x277CC0898] + 8);
              v29 = *(MEMORY[0x277CC0898] + 16);
              if (a2)
              {
                v35 = a2;
                v36 = a3;
                v33.value = MEMORY[0x277D85DD0];
                *&v33.timescale = 1107296256;
                v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
                v34 = &block_descriptor_15;
                v8 = _Block_copy(&v33);
              }

              else
              {
                v8 = 0;
              }

              v33.value = v27;
              *&v33.timescale = v28;
              v33.epoch = v29;
              v13 = v3;
              v14 = 9;
            }

            else
            {
              v24 = *MEMORY[0x277CC0898];
              v25 = *(MEMORY[0x277CC0898] + 8);
              v26 = *(MEMORY[0x277CC0898] + 16);
              if (a2)
              {
                v35 = a2;
                v36 = a3;
                v33.value = MEMORY[0x277D85DD0];
                *&v33.timescale = 1107296256;
                v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
                v34 = &block_descriptor_18;
                v8 = _Block_copy(&v33);
              }

              else
              {
                v8 = 0;
              }

              v33.value = v24;
              *&v33.timescale = v25;
              v33.epoch = v26;
              v13 = v3;
              v14 = 8;
            }
          }

          else
          {
            v21 = *MEMORY[0x277CC0898];
            v22 = *(MEMORY[0x277CC0898] + 8);
            v23 = *(MEMORY[0x277CC0898] + 16);
            if (a2)
            {
              v35 = a2;
              v36 = a3;
              v33.value = MEMORY[0x277D85DD0];
              *&v33.timescale = 1107296256;
              v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
              v34 = &block_descriptor_21;
              v8 = _Block_copy(&v33);
            }

            else
            {
              v8 = 0;
            }

            v33.value = v21;
            *&v33.timescale = v22;
            v33.epoch = v23;
            v13 = v3;
            v14 = 7;
          }
        }

        else
        {
          v10 = *MEMORY[0x277CC0898];
          v11 = *(MEMORY[0x277CC0898] + 8);
          v12 = *(MEMORY[0x277CC0898] + 16);
          if (a2)
          {
            v35 = a2;
            v36 = a3;
            v33.value = MEMORY[0x277D85DD0];
            *&v33.timescale = 1107296256;
            v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
            v34 = &block_descriptor_24;
            v8 = _Block_copy(&v33);
          }

          else
          {
            v8 = 0;
          }

          v33.value = v10;
          *&v33.timescale = v11;
          v33.epoch = v12;
          v13 = v3;
          v14 = 6;
        }
      }

      else
      {
        v18 = *MEMORY[0x277CC0898];
        v19 = *(MEMORY[0x277CC0898] + 8);
        v20 = *(MEMORY[0x277CC0898] + 16);
        if (a2)
        {
          v35 = a2;
          v36 = a3;
          v33.value = MEMORY[0x277D85DD0];
          *&v33.timescale = 1107296256;
          v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
          v34 = &block_descriptor_27;
          v8 = _Block_copy(&v33);
        }

        else
        {
          v8 = 0;
        }

        v33.value = v18;
        *&v33.timescale = v19;
        v33.epoch = v20;
        v13 = v3;
        v14 = 5;
      }

      goto LABEL_59;
    }

    if (a2)
    {
      v35 = a2;
      v36 = a3;
      v33.value = MEMORY[0x277D85DD0];
      *&v33.timescale = 1107296256;
      v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
      v34 = &block_descriptor_2;
      v8 = _Block_copy(&v33);
    }

    else
    {
      v8 = 0;
    }

    v15 = v3;
    v16 = 11;
LABEL_36:
    v17 = CMBufferQueueInstallTriggerHandlerWithIntegerThreshold(v15, v16, v4, triggerTokenOut, v8);
    goto LABEL_60;
  }

  if (v7 != 3)
  {
    if (a2)
    {
      v35 = a2;
      v36 = a3;
      v33.value = MEMORY[0x277D85DD0];
      *&v33.timescale = 1107296256;
      v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
      v34 = &block_descriptor_12;
      v8 = _Block_copy(&v33);
    }

    else
    {
      v8 = 0;
    }

    v15 = v3;
    v16 = 10;
    goto LABEL_36;
  }

  if (a2)
  {
    v35 = a2;
    v36 = a3;
    v33.value = MEMORY[0x277D85DD0];
    *&v33.timescale = 1107296256;
    v33.epoch = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    v34 = &block_descriptor_30;
    v8 = _Block_copy(&v33);
  }

  else
  {
    v8 = 0;
  }

  v33.value = v4;
  *&v33.timescale = v5;
  v33.epoch = v6;
  v13 = v3;
  v14 = 4;
LABEL_59:
  v17 = CMBufferQueueInstallTriggerHandler(v13, v14, &v33, triggerTokenOut, v8);
LABEL_60:
  v30 = v17;
  _Block_release(v8);
  if (v30 == noErr.getter())
  {
    result = triggerTokenOut[0];
    if (triggerTokenOut[0])
    {
      return result;
    }

    __break(1u);
  }

  v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v32 initWithDomain:*MEMORY[0x277CCA590] code:v30 userInfo:0];
  return swift_willThrow();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMBufferQueueRef.removeTrigger(_:)(Swift::OpaquePointer a1)
{
  v2 = CMBufferQueueRemoveTrigger(v1, a1._rawValue);
  if (v2 != noErr.getter())
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v3 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
    swift_willThrow();
  }
}

uint64_t CMBufferQueueRef.Buffers.Iterator.next()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    if (v1 < 0)
    {
      v5 = *v0;
    }

    else
    {
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x2318E2C00](v5);
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2318E2A60](v0[1], v1);
    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = swift_unknownObjectRetain();
    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
LABEL_9:
      v0[1] = v4;
      return result;
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance CMBufferQueueRef.Buffers.Iterator@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 >> 62)
  {
    if (v3 < 0)
    {
      v7 = *v1;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x2318E2C00](v7);
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[1];
  if (v5 == result)
  {
    result = 0;
LABEL_10:
    *a1 = result;
    return result;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2318E2A60](v1[1], v3);
    v6 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = swift_unknownObjectRetain();
    v6 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
LABEL_9:
      v1[1] = v6;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t CMBufferQueueRef.Buffers.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance CMBufferQueueRef.Buffers()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t CMBufferQueueRef.buffers.getter@<X0>(void *a1@<X8>)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  BufferCount = CMBufferQueueGetBufferCount(v1);
  specialized Array.reserveCapacity(_:)(BufferCount);
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in CMBufferQueueRef.buffers.getter;
  *(v5 + 24) = v3;
  v8[0] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ()partial apply;
  v8[1] = v5;

  CMBufferQueueCallForEachBuffer(v1, @objc callAppendToArray #1 (buffer:refcon:) in CMBufferQueueRef.buffers.getter, v8);

  swift_beginAccess();
  v6 = *(v3 + 16);

  *a1 = v6;
  return result;
}

uint64_t closure #1 in CMBufferQueueRef.buffers.getter(uint64_t a1, uint64_t a2)
{
  v3 = swift_beginAccess();
  MEMORY[0x2318E2880](v3);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  swift_unknownObjectRetain();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t @objc callAppendToArray #1 (buffer:refcon:) in CMBufferQueueRef.buffers.getter(uint64_t a1, void (**a2)(uint64_t *))
{
  if (a2)
  {
    v2 = *a2;
    v5 = a1;
    swift_unknownObjectRetain();

    v2(&v5);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v3 = noErr.getter();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t CMBufferQueueRef.setValidationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[4] = partial apply for closure #1 in CMBufferQueueRef.setValidationHandler(_:);
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMBufferQueueRef, @guaranteed Swift.AnyObject) -> (@unowned Int32);
  v8[3] = &block_descriptor_52;
  v6 = _Block_copy(v8);

  LODWORD(a2) = CMBufferQueueSetValidationHandler(v2, v6);
  _Block_release(v6);
  result = noErr.getter();
  if (a2 != result)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in CMBufferQueueRef.setValidationHandler(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);

  return noErr.getter();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CMBufferQueueRef, @guaranteed Swift.AnyObject) -> (@unowned Int32)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v7 = v5(v6, a3);

  swift_unknownObjectRelease();
  return v7;
}

unint64_t lazy protocol witness table accessor for type CMBufferQueueRef.Buffers.Iterator and conformance CMBufferQueueRef.Buffers.Iterator()
{
  result = lazy protocol witness table cache variable for type CMBufferQueueRef.Buffers.Iterator and conformance CMBufferQueueRef.Buffers.Iterator;
  if (!lazy protocol witness table cache variable for type CMBufferQueueRef.Buffers.Iterator and conformance CMBufferQueueRef.Buffers.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMBufferQueueRef.Buffers.Iterator and conformance CMBufferQueueRef.Buffers.Iterator);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for CMBufferQueueRef.Handlers(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CMBufferQueueRef.Handlers(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for CMBufferQueueRef.Handlers.Builder(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CMBufferQueueRef.Handlers.Builder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CMBufferQueueRef.TriggerCondition(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CMBufferQueueRef.TriggerCondition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 25))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 24);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CMBufferQueueRef.TriggerCondition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t getEnumTag for CMBufferQueueRef.TriggerCondition(uint64_t a1)
{
  if (*(a1 + 24) <= 5u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t destructiveInjectEnumTag for CMBufferQueueRef.TriggerCondition(uint64_t result, unsigned int a2)
{
  v2 = a2 - 6;
  if (a2 >= 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 6;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v29 = v1 & 0xC000000000000001;
    v30 = v1;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x2318E2A60](v4, v1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          if (v1 < 0)
          {
            v27 = v1;
          }

          else
          {
            v27 = v1 & 0xFFFFFFFFFFFFFF8;
          }

          v2 = MEMORY[0x2318E2C00](v27);
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = (2 * (v17 >> 3)) | 1;
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 8 * v20)
          {
            memmove(v15 + 4, v21, 8 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 8 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v29;
        v1 = v30;
        v8 = v28;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7++ = v9;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:

  v24 = v3[3];
  if (v24 < 2)
  {
    return v3;
  }

  v25 = v24 >> 1;
  v22 = __OFSUB__(v25, v5);
  v26 = v25 - v5;
  if (!v22)
  {
    v3[2] = v26;
    return v3;
  }

  __break(1u);
  return result;
}

{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v30 = v1 & 0xC000000000000001;
    v31 = v1;
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x2318E2A60](v4, v1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          if (v1 < 0)
          {
            v28 = v1;
          }

          else
          {
            v28 = v1 & 0xFFFFFFFFFFFFFF8;
          }

          v2 = MEMORY[0x2318E2C00](v28);
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v9;
        v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 25;
        }

        v19 = v18 >> 3;
        v16[2] = v15;
        v16[3] = (2 * (v18 >> 3)) | 1;
        v20 = (v16 + 4);
        v21 = v3[3] >> 1;
        if (v3[2])
        {
          v22 = v3 + 4;
          if (v16 != v3 || v20 >= v22 + 8 * v21)
          {
            memmove(v16 + 4, v22, 8 * v21);
          }

          v3[2] = 0;
        }

        v7 = (v20 + 8 * v21);
        v5 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

        v3 = v16;
        v9 = v13;
        v2 = v12;
        v6 = v30;
        v1 = v31;
        v8 = v29;
      }

      v23 = __OFSUB__(v5--, 1);
      if (v23)
      {
        goto LABEL_33;
      }

      *v7++ = v9;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:

  v25 = v3[3];
  if (v25 < 2)
  {
    return v3;
  }

  v26 = v25 >> 1;
  v23 = __OFSUB__(v26, v5);
  v27 = v26 - v5;
  if (!v23)
  {
    v3[2] = v27;
    return v3;
  }

  __break(1u);
  return result;
}