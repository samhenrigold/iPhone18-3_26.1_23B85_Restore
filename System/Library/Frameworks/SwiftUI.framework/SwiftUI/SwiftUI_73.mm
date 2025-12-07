uint64_t getter of modifierNeedsUpdate #1 in ChildEnvironment.updateValue()(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v22 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v35 - v18;
  v21 = *(v20 + 16);
  v38 = v22;
  v21(v19, v22, TupleTypeMetadata2, v17);
  LODWORD(v22) = v19[*(TupleTypeMetadata2 + 48)];
  v23 = *(v6 + 8);
  v23(v19, a3);
  if (v22 == 1)
  {
    v25 = *(type metadata accessor for ChildEnvironment(0, a3, a4, v24) + 40);
    if (!(*(v6 + 48))(v39 + v25, 1, a3))
    {
      v26 = v39 + v25;
      v27 = v35;
      (*(v6 + 16))(v35, v26, a3);
      v22 = *(a4 + 32);
      v22(a3, a4);
      v23(v27, a3);
      v28 = v37;
      (*(v37 + 32))(v15, v12, AssociatedTypeWitness);
      v29 = v36;
      v30 = (v22)(a3, a4);
      MEMORY[0x1EEE9AC00](v30);
      *(&v35 - 4) = AssociatedTypeWitness;
      *(&v35 - 3) = v29;
      *(&v35 - 4) = 3;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, partial apply for closure #1 in compareValues<A>(_:_:options:), (&v35 - 6), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v31);
      v32 = *(v28 + 8);
      v32(v15, AssociatedTypeWitness);
      v33 = v40;
      v32(v29, AssociatedTypeWitness);
      LOBYTE(v22) = v33 ^ 1;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22 & 1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ChildEnvironment<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t type metadata completion function for ChildEnvironment(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 <= 7 && v10 == 0 && ((-9 - v8) | v8) - v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = v14 + v8 + 4;
    v17 = v15 + v8 + 4;
    if ((*(v5 + 48))(v17 & ~v8, 1, v4))
    {
      memcpy((v16 & ~v8), (v17 & ~v8), v9);
    }

    else
    {
      (*(v6 + 16))(v16 & ~v8, v17 & ~v8, v4);
      (*(v6 + 56))(v16 & ~v8, 0, 1, v4);
    }
  }

  else
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  return v3;
}

uint64_t destroy for ChildEnvironment(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 4;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

_DWORD *initializeWithCopy for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  if ((*(v7 + 48))(v10 & ~v8, 1, v6))
  {
    if (*(v7 + 84))
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = *(v7 + 64) + 1;
    }

    memcpy((v9 & ~v8), (v10 & ~v8), v11);
  }

  else
  {
    (*(v7 + 16))(v9 & ~v8, v10 & ~v8, v6);
    (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
  }

  return a1;
}

_DWORD *assignWithCopy for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  v11 = *(v7 + 48);
  v12 = v11(v9 & ~v8, 1, v6);
  v13 = v11(v10 & ~v8, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9 & ~v8, v10 & ~v8, v6);
      (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
      return a1;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9 & ~v8, v10 & ~v8, v6);
      return a1;
    }

    v17 = *(v7 + 8);
    v16 = v7 + 8;
    v17(v9 & ~v8, v6);
    v14 = *(v16 + 76);
    v15 = *(v16 + 56);
  }

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  memcpy((v9 & ~v8), (v10 & ~v8), v18);
  return a1;
}

_DWORD *initializeWithTake for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  if ((*(v7 + 48))(v10 & ~v8, 1, v6))
  {
    if (*(v7 + 84))
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = *(v7 + 64) + 1;
    }

    memcpy((v9 & ~v8), (v10 & ~v8), v11);
  }

  else
  {
    (*(v7 + 32))(v9 & ~v8, v10 & ~v8, v6);
    (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
  }

  return a1;
}

_DWORD *assignWithTake for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  v11 = *(v7 + 48);
  v12 = v11(v9 & ~v8, 1, v6);
  v13 = v11(v10 & ~v8, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9 & ~v8, v10 & ~v8, v6);
      (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
      return a1;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9 & ~v8, v10 & ~v8, v6);
      return a1;
    }

    v17 = *(v7 + 8);
    v16 = v7 + 8;
    v17(v9 & ~v8, v6);
    v14 = *(v16 + 76);
    v15 = *(v16 + 56);
  }

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  memcpy((v9 & ~v8), (v10 & ~v8), v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for ChildEnvironment(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 8) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 4) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ChildEnvironment(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 8) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

unint64_t specialized ChildEnvironment.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(22);

  swift_getAssociatedTypeWitness();
  v2 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v2);

  return 0xD000000000000014;
}

uint64_t type metadata accessor for DragDropDefaultPreviewResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for DragDropDefaultPreviewResponder;
  if (!type metadata singleton initialization cache for DragDropDefaultPreviewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DragDropDefaultPreviewResponder.previewParameters.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  [v3 _setPreviewMode_];
  UIViewSnapshotResponder.contentPath.getter(&v13);
  v5 = v17;
  if (v17 != 255)
  {
    v7 = v15;
    v6 = v16;
    v9 = v13;
    v8 = v14;
    v18[0] = v13;
    v18[1] = v14;
    v18[2] = v15;
    v18[3] = v16;
    v19 = v17;
    type metadata accessor for UIBezierPath();
    outlined init with copy of Path?(&v13, v12);
    outlined copy of Path.Storage(v9, v8, v7, v6, v5);
    v10 = UIBezierPath.init(_:)(v18);
    [v3 setVisiblePath_];

    outlined destroy of Path?(&v13);
    outlined destroy of Path?(&v13);
  }

  return v3;
}

double DragDropDefaultPreviewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata completion function for CustomPreviewResponder(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void CustomPreviewResponder.preview.didset(uint64_t a1)
{
  v2 = v1;
  v4 = (*v2 + class metadata base offset for CustomPreviewResponder);
  v5 = *v4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v14 = *&v2[v4[3]];
  if (v14)
  {
    v15 = v4[2];
    swift_beginAccess();
    (*(v7 + 16))(v9, &v2[v15], v6);
    v16 = *(v10 + 48);
    if (v16(v9, 1, v5) == 1)
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v10 + 32))(v13, v9, v5);
      if (v16(a1, 1, v5) != 1)
      {
        v17 = v14;
        specialized _UIHostingView.rootView.setter(v13);
      }

      (*(v10 + 8))(v13, v5);
    }
  }
}

void *CustomPreviewResponder.previewHost.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2 + class metadata base offset for CustomPreviewResponder;
  v4 = *(v2 + class metadata base offset for CustomPreviewResponder);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = *(v3 + 24);
  v10 = *&v1[v9];
  if (v10)
  {
    v11 = *&v1[v9];
LABEL_5:
    v21 = v10;
    return v11;
  }

  v12 = *(v3 + 16);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v12], v5);
  v13 = *(v4 - 8);
  result = (*(v13 + 48))(v8, 1, v4);
  if (result != 1)
  {
    type metadata accessor for _UIHostingView(0, v4, *(v2 + class metadata base offset for CustomPreviewResponder + 8), v15);
    v19 = specialized _UIHostingView.__allocating_init(rootView:)(v8, v16, v17, v18);
    (*(v13 + 8))(v8, v4);
    _UIHostingView.safeAreaRegions.setter(0);
    v20 = *&v1[v9];
    *&v1[v9] = v19;
    v11 = v19;

    v10 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double CustomPreviewResponder.previewSize.getter()
{
  v1 = *v0;
  v2 = CustomPreviewResponder.previewHost.getter();
  v4 = type metadata accessor for _UIHostingView(0, *(v1 + class metadata base offset for CustomPreviewResponder), *(v1 + class metadata base offset for CustomPreviewResponder + 8), v3);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v4);
  *&v5 = *&ViewRendererHost.idealSize()();

  return v5;
}

UIDragPreviewParameters __swiftcall CustomPreviewResponder.prepareHostForPreview()()
{
  v1 = DragDropDefaultPreviewResponder.previewParameters.getter();
  static Update.ensure<A>(_:)();
  return v1;
}

void closure #1 in CustomPreviewResponder.prepareHostForPreview()(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = CustomPreviewResponder.previewHost.getter();
  v5 = CustomPreviewResponder.previewSize.getter();
  [v4 setFrame_];

  v7 = CustomPreviewResponder.previewHost.getter();
  *&v14[0] = 0;
  BYTE8(v14[0]) = 1;
  v9 = type metadata accessor for _UIHostingView(0, *(v3 + class metadata base offset for CustomPreviewResponder), *(v3 + class metadata base offset for CustomPreviewResponder + 8), v8);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v9);
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();

  v10 = CustomPreviewResponder.previewHost.getter();
  _UIHostingView.viewGraph.getter(v10);

  v11 = ViewGraph.responderNode.getter();

  if (v11)
  {
    type metadata accessor for ViewResponder();
    if (swift_dynamicCastClass())
    {
      v17 = 0u;
      v18 = 0u;
      v19 = 6;
      *&v20 = 2;
      hostingViewCoordinateSpace.getter();
      v16 = 1;
      dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();
      outlined destroy of CoordinateSpace(v14);
      v20 = v17;
      v21 = v18;
      v22 = v19;
      if (Path.isEmpty.getter())
      {
      }

      else
      {
        type metadata accessor for UIBezierPath();
        v14[0] = v20;
        v14[1] = v21;
        v15 = v22;
        outlined init with copy of Path.Storage(v14, v13);
        v12 = UIBezierPath.init(_:)(&v20);
        [a2 setVisiblePath_];
      }

      outlined destroy of Path(&v20);
    }

    else
    {
    }
  }
}

void *CustomPreviewResponder.makePreview()@<X0>(uint64_t a1@<X8>)
{
  isa = CustomPreviewResponder.prepareHostForPreview()().super.super.isa;
  result = CustomPreviewResponder.previewHost.getter();
  *a1 = result;
  *(a1 + 8) = isa;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t CustomPreviewResponder.init(inputs:space:displayList:)(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = *v3;
  v6 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v6;
  v11[4] = *(a1 + 64);
  v12 = *(a1 + 80);
  v7 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v7;
  v8 = *a2;
  (*(*(*(v5 + class metadata base offset for CustomPreviewResponder) - 8) + 56))(v3 + *(v5 + class metadata base offset for CustomPreviewResponder + 16), 1, 1);
  *(v3 + *(*v3 + class metadata base offset for CustomPreviewResponder + 24)) = 0;
  *(v3 + 296) = 0;
  v3[38] = 0;
  *(v3 + 78) = 0;
  *(v3 + 316) = 2;
  v10 = v8;
  return UIViewSnapshotResponder.init(inputs:space:displayList:)(v11, &v10, a3 | ((HIDWORD(a3) & 1) << 32));
}

void CustomPreviewResponder.__ivar_destroyer()
{
  v1 = *(*v0 + class metadata base offset for CustomPreviewResponder + 16);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *&v0[*(*v0 + class metadata base offset for CustomPreviewResponder + 24)];
}

char *CustomPreviewResponder.deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();
  v1 = *(*v0 + class metadata base offset for CustomPreviewResponder + 16);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return v0;
}

Swift::Void __swiftcall CustomPreviewDropResponder.prepareForPreview(contentTypes:defaultPreview:)(Swift::OpaquePointer contentTypes, SwiftUI::DefaultDragDropPreview_optional defaultPreview)
{
  v3 = *defaultPreview.value.base.super.super.isa;
  *(v2 + *(*v2 + class metadata base offset for CustomPreviewDropResponder + 16)) = contentTypes._rawValue;

  v4 = *(*v2 + class metadata base offset for CustomPreviewDropResponder + 24);
  v6 = *(v2 + v4);
  *(v2 + v4) = v3;
  v5 = v3;
}

void CustomPreviewDropResponder.makePreview()(uint64_t a1@<X8>)
{
  v3 = (*v1 + class metadata base offset for CustomPreviewDropResponder);
  v4 = *v3;
  v5 = type metadata accessor for Optional();
  *&v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v8 = type metadata accessor for DropPreview(255, v4, v3[1], v7);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v17 = *(v1 + v3[2]);
  v18 = 0uLL;
  if (!v17)
  {
    v31 = 0;
    v30.super.super.isa = 0;
    v32 = 0;
    goto LABEL_9;
  }

  v38 = a1;
  v19 = v1 + v3[4];
  v20 = *v19;
  if (!*v19)
  {
    (*(v14 + 56))(v12, 1, 1, v8, 0);
    goto LABEL_8;
  }

  v34 = v1;
  v35 = v5;
  v21 = *(v19 + 1);
  v22 = *(v1 + v3[3]);
  v40 = v22;
  v23 = v14;

  outlined copy of AppIntentExecutor?(v20, v21);
  v24 = v22;
  v20(v17, &v40);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v20, v21);

  if ((*(v23 + 48))(v12, 1, v8) == 1)
  {
LABEL_8:
    (*(v10 + 8))(v12, v9);
    v31 = 0;
    v30.super.super.isa = 0;
    v32 = 0;
    a1 = v38;
    v18 = 0uLL;
    goto LABEL_9;
  }

  v25 = v23;
  (*(v23 + 32))(v16, v12, v8);
  v26 = *(*v34 + class metadata base offset for CustomPreviewResponder + 24);
  v27 = *(v34 + v26);
  *(v34 + v26) = 0;

  v28 = v36;
  DropPreview.view()(v8, v29, v36);
  specialized CustomPreviewResponder.preview.setter(v28);
  (*(v37 + 8))(v28, v35);
  v30.super.super.isa = CustomPreviewResponder.prepareHostForPreview()().super.super.isa;
  v31 = CustomPreviewResponder.previewHost.getter();
  v39 = 1;
  a1 = v38;
  if (v31)
  {
    v37 = *&v16[*(v8 + 40)];
    (*(v25 + 8))(v16, v8);
    v18 = v37;
    v39 = 0;
    v32 = 0;
  }

  else
  {
    (*(v25 + 8))(v16, v8);
    v18 = 0uLL;
    v32 = v39;
  }

LABEL_9:
  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v18;
  *(a1 + 32) = v32;
}

uint64_t CustomPreviewDropResponder.init(inputs:space:displayList:)(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v4 = *a2;
  *(v3 + *(*v3 + class metadata base offset for CustomPreviewDropResponder + 16)) = 0;
  *(v3 + *(*v3 + class metadata base offset for CustomPreviewDropResponder + 24)) = 0;
  v5 = (v3 + *(*v3 + class metadata base offset for CustomPreviewDropResponder + 32));
  *v5 = 0;
  v5[1] = 0;
  v7 = v4;
  return CustomPreviewResponder.init(inputs:space:displayList:)(a1, &v7, a3 | ((HIDWORD(a3) & 1) << 32));
}

uint64_t CustomPreviewDropResponder.__ivar_destroyer()
{

  v1 = (v0 + *(*v0 + class metadata base offset for CustomPreviewDropResponder + 32));
  v2 = *v1;
  v3 = v1[1];

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2, v3);
}

char *CustomPreviewDropResponder.deinit()
{
  v0 = CustomPreviewResponder.deinit();

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&v0[*(*v0 + class metadata base offset for CustomPreviewDropResponder + 32)], *&v0[*(*v0 + class metadata base offset for CustomPreviewDropResponder + 32) + 8]);
  return v0;
}

double CustomPreviewResponder.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  swift_deallocClassInstance();
  return result;
}

uint64_t specialized CustomPreviewResponder.preview.setter(uint64_t a1)
{
  v3 = *v1 + class metadata base offset for CustomPreviewResponder;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 16);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  CustomPreviewResponder.preview.didset(v7);
  return (*(v5 + 8))(v7, v4);
}

unint64_t type metadata accessor for UIBezierPath()
{
  result = lazy cache variable for type metadata for UIBezierPath;
  if (!lazy cache variable for type metadata for UIBezierPath)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIBezierPath);
  }

  return result;
}

uint64_t outlined init with copy of Path?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Path?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Path?()
{
  if (!lazy cache variable for type metadata for Path?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Path?);
    }
  }
}

uint64_t outlined destroy of Path?(uint64_t a1)
{
  type metadata accessor for Path?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void protocol witness for PickerContent.body.getter in conformance _OnHoverPickerContent<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _OnHoverPickerContent<A>, a1);

  PrimitivePickerContent.body.getter(a1);
}

uint64_t sub_18C349BF4()
{
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

void protocol witness for PickerContent.body.getter in conformance _DisabledPickerContent<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _DisabledPickerContent<A>, a1);

  PrimitivePickerContent.body.getter(a1);
}

uint64_t PickerContent<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return NestedDynamicProperties.init(wrappedValue:)(v6, a1, a2);
}

uint64_t _PickerContentBodyAdaptor.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for NestedDynamicProperties(0, v6, a2, a3);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v4, v8);
  return (*(*(v6 - 8) + 32))(a4, v10, v6);
}

uint64_t _PickerContentBodyAdaptor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = *(a1 + 16);
  v23 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v22 - v5;
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  _PickerContentBodyAdaptor.content.getter(a1, v18, v19, v9);
  (*(v23 + 64))(v3);
  (*(v24 + 8))(v9, v3);
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v25 + 8))(v6, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v12 + 8);
  v20(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v17, v11);
}

uint64_t PickerBuilder.ContentWithFooter.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = a1[4];
  type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>, MEMORY[0x1E6980698], MEMORY[0x1E6980690], MEMORY[0x1E697FDB8]);
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v33 - v7;
  v8 = a1[3];
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v15 = v34;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v33 - v19;
  PickerBuilder.Content.content.getter(a1, v20, v21, v12);
  (*(v13 + 56))(v8, v13);
  (*(v9 + 8))(v12, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v36 = *(v15 + 8);
  v36(v17, AssociatedTypeWitness);
  v22 = a1[7];
  v23 = v37;
  View._untagged()();
  IsAuxiliaryContentTrait = lazy protocol witness table accessor for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>();
  v50[0] = v22;
  v50[1] = IsAuxiliaryContentTrait;
  v25 = v40;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v40, v50);
  v27 = v38;
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = v41;
  v29 = *(v41 + 8);
  v29(v23, v25);
  (*(v34 + 16))(v17, v43, AssociatedTypeWitness);
  v48 = 1;
  v49[0] = v17;
  v49[1] = &v48;
  (*(v28 + 16))(v23, v27, v25);
  v49[2] = v23;
  v47[0] = AssociatedTypeWitness;
  type metadata accessor for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(0);
  v47[1] = v30;
  v47[2] = v25;
  v44 = AssociatedConformanceWitness;
  v45 = lazy protocol witness table accessor for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>();
  v46 = WitnessTable;
  static ViewBuilder.buildBlock<each A>(_:)(v49, 3uLL, v47);
  v29(v27, v25);
  v31 = v36;
  v36(v43, AssociatedTypeWitness);
  v29(v23, v25);
  return v31(v17, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>, MEMORY[0x1E6980698], MEMORY[0x1E6980690], MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>)
  {
    type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>, MEMORY[0x1E6980698], MEMORY[0x1E6980690], MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for Divider;
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t PickerBuilder.ContentWithFooter.init(content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  NestedDynamicProperties.init(wrappedValue:)(a1, a4, a9);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v17 = type metadata accessor for PickerBuilder.ContentWithFooter(0, v19);
  return (*(*(a5 - 8) + 32))(a9 + *(v17 + 68), a2, a5);
}

uint64_t _ConditionalContent<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v25 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = a2;
  v28 = swift_getAssociatedTypeWitness();
  v29 = AssociatedTypeWitness;
  v12 = type metadata accessor for _ConditionalContent.Storage();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _ConditionalContent.Storage();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v25 - v21;
  (*(v23 + 16))(&v25 - v21, v27, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v22, v4);
    (*(v26 + 56))(v4);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v9);
    (*(v25 + 56))(v9);
    (*(v15 + 8))(v18, v9);
  }

  swift_storeEnumTagMultiPayload();
  swift_checkMetadataState();
  swift_checkMetadataState();
  return _ConditionalContent.init(__storage:)(v14, v30);
}

{
  v30 = a3;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v25 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = a2;
  v28 = swift_getAssociatedTypeWitness();
  v29 = AssociatedTypeWitness;
  v12 = type metadata accessor for _ConditionalContent.Storage();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _ConditionalContent.Storage();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v25 - v21;
  (*(v23 + 16))(&v25 - v21, v27, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v22, v4);
    (*(v26 + 56))(v4);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v9);
    (*(v25 + 56))(v9);
    (*(v15 + 8))(v18, v9);
  }

  swift_storeEnumTagMultiPayload();
  swift_checkMetadataState();
  swift_checkMetadataState();
  return _ConditionalContent.init(__storage:)(v14, v30);
}

void _ConditionalContent<>.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a1, v4);
  specialized PickerContent.bodyError()(a1);
}

{
  v4[0] = a2;
  v4[1] = a3;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a1, v4);
  specialized TabContent.bodyError()(a1);
}

double Optional<A>._identifiedView.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[4] = *(a1 + 16);
  v7[5] = a2;
  v7[2] = a2;
  v7[3] = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in Optional<A>._identifiedView.getter, v7, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v5, a3);

  return result;
}

void Optional<A>.body.getter(uint64_t a1, uint64_t a2)
{
  Optional<A>.body.getter(a1, a2, "P:\n");
}

{
  Optional<A>.body.getter(a1, a2, "@j\t");
}

uint64_t ForEach<>.init<A>(_:id:content:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[1] = a6;
  v17[2] = a8;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v13);
  v17[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v12 + 8))(a1, a5);
}

{
  v17[1] = a6;
  v17[2] = a8;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v13);
  v17[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v12 + 8))(a1, a5);
}

{
  return ForEach<>.init<A>(_:id:liftedContent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v17[1] = a6;
  v17[2] = a8;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v13);
  v17[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v12 + 8))(a1, a5);
}

uint64_t ForEach<>._identifiedView.getter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a1, v4);
  v12 = *(a1 + 16);
  v14 = v12;
  v15 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v13;
  v17 = a2;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  v10 = v13;
  *(v9 + 16) = v12;
  *(v9 + 32) = v10;
  *(v9 + 48) = a2;
  *(v9 + 56) = KeyPath;
  swift_getAssociatedTypeWitness();
  return ForEach.init<A>(_:transform:)();
}

{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a1, v4);
  v12 = *(a1 + 16);
  v14 = v12;
  v15 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v13;
  v17 = a2;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  v10 = v13;
  *(v9 + 16) = v12;
  *(v9 + 32) = v10;
  *(v9 + 48) = a2;
  *(v9 + 56) = KeyPath;
  swift_getAssociatedTypeWitness();
  return ForEach.init<A>(_:transform:)();
}

void ForEach<>.body.getter(uint64_t a1, uint64_t a2)
{
  Optional<A>.body.getter(a1, a2, "(:\n");
}

{
  Optional<A>.body.getter(a1, a2, protocol conformance descriptor for <> ForEach<A, B, C>);
}

uint64_t ForEach<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v22[2] = a2;
  v22[3] = a3;
  v22[1] = a9;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20, v18);
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a7;
  v22[8] = a8;
  v22[9] = a10;
  v22[10] = a11;
  v22[11] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v17 + 8))(a1, a4);
}

{
  v22[2] = a2;
  v22[3] = a3;
  v22[1] = a9;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20, v18);
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a7;
  v22[8] = a8;
  v22[9] = a10;
  v22[10] = a11;
  v22[11] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v17 + 8))(a1, a4);
}

{
  v27 = a2;
  v28 = a3;
  v26[1] = a9;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a10;
  v35 = a11;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ForEach<>.init<A>(_:id:content:)(v20, KeyPath, v27, v28, a4, a6, v24, a8, AssociatedConformanceWitness);
  return (*(v17 + 8))(a1, a4);
}

double ForEach<>.init<A>(_:content:)@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a3;
  v14[6] = a4;
  type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  *a8 = v16;
  *(a8 + 16) = v17;
  result = *&v18;
  *(a8 + 32) = v18;
  *(a8 + 48) = v19;
  return result;
}

{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a3;
  v14[6] = a4;
  type metadata accessor for Range<Int>();
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  *a8 = v16;
  *(a8 + 16) = v17;
  result = *&v18;
  *(a8 + 32) = v18;
  *(a8 + 48) = v19;
  return result;
}

{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a3;
  v14[6] = a4;
  _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_0(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, MEMORY[0x1E69E66E8]);
  ForEach.init(_:idGenerator:content:)();
  *a8 = v16;
  *(a8 + 16) = v17;
  result = *&v18;
  *(a8 + 32) = v18;
  *(a8 + 48) = v19;
  return result;
}

uint64_t Group<A>.init<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  return Group.init(_content:)();
}

{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  return Group.init(_content:)();
}

{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  return Group.init(_content:)();
}

{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  return Group.init(_content:)();
}

uint64_t Group<A>._identifiedView.getter(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 56))(*(a1 + 16));
}

{
  return (*(a2 + 56))(*(a1 + 16));
}

void Group<A>.body.getter(uint64_t a1, uint64_t a2)
{
  Optional<A>.body.getter(a1, a2, protocol conformance descriptor for <A> Group<A>);
}

{
  Optional<A>.body.getter(a1, a2, protocol conformance descriptor for <A> Group<A>);
}

void Optional<A>.body.getter(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = a2;
  swift_getWitnessTable(a3, a1, &v4);
  specialized PickerContent.bodyError()(a1);
}

{
  v4 = a2;
  swift_getWitnessTable(a3, a1, &v4);
  specialized TabContent.bodyError()(a1);
}

double Section<>._identifiedView.getter@<D0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  v7 = a1[3];
  v10 = a1[2];
  v11 = a1[4];
  swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  mapSection<A, B, C, D>(_:transform:)(v5, partial apply for implicit closure #1 in Section<>._identifiedView.getter, v10, v7, AssociatedTypeWitness, v11, x8_0);

  return result;
}

uint64_t mapSection<A, B, C, D>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a2;
  v27 = a7;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a1, v23, v19);
  v24 = type metadata accessor for Section(0, a3, a4, a6);
  v26(a1 + *(v24 + 44));
  (*(v12 + 16))(v14, a1 + *(v24 + 48), a6);
  return Section.init(header:content:footer:)(v21, v17, v14, a3, a5, a6, v27);
}

void Section<>.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, a1, v5);
  specialized PickerContent.bodyError()(a1);
}

uint64_t Section<>.init<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8(v5);
  return Section.init(header:content:footer:)(v9, v7, v10, MEMORY[0x1E6981E70], a2, MEMORY[0x1E6981E70], a3);
}

uint64_t Section<>.init<A>(content:header:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14(v11);
  a1(v15);
  return Section.init(header:content:footer:)(v13, v9, v16, a2, a3, MEMORY[0x1E6981E70], a4);
}

uint64_t Section<>.init<A, B>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v14 + 16))(v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v16);
  v24[0] = Text.init<A>(_:)();
  v24[1] = v19;
  v25 = v20 & 1;
  v26 = v21;
  a2(v24[0], v19, v20, v21);
  (*(v14 + 8))(a1, a4);
  return Section.init(header:content:footer:)(v24, v12, v22, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981E70], a6);
}

uint64_t Section<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = Text.init(_:tableName:bundle:comment:)();
  v15[1] = v9;
  v16 = v10 & 1;
  v17 = v11;
  a2();
  return Section.init(header:content:footer:)(v15, v8, v12, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981E70], a4);
}

uint64_t _TuplePickerContent._identifiedView.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TupleView();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t _TuplePickerContent.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  TupleView.init(_:)();
  return (*(v5 + 8))(a1, a3);
}

void protocol witness for PickerContent.body.getter in conformance _TuplePickerContent<A, B>(uint64_t a1)
{
  swift_getWitnessTable("P:\n", a1);

  PrimitivePickerContent.body.getter(a1);
}

void protocol witness for PickerContent.body.getter in conformance _KeyboardShortcutPickerContent<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _KeyboardShortcutPickerContent<A>, a1);

  PrimitivePickerContent.body.getter(a1);
}

void specialized PickerContent.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(31);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD43120);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t associated type witness table accessor for View.Body : View in _PickerContentBodyAdaptor<A>(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for PickerContent._IdentifiedView : View in <> _ConditionalContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = swift_getAssociatedConformanceWitness();
  v5[1] = swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable(MEMORY[0x1E697F968], a1, v5);
}

uint64_t associated type witness table accessor for PickerContent.Body : PickerContent in <> Section<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 24);
  v5 = vextq_s8(*(a3 - 16), *(a3 - 16), 8uLL);
  v6 = v3;
  return swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, a1, &v5);
}

uint64_t instantiation function for generic protocol witness table for _TuplePickerContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable("|9\n");
  *(a1 + 8) = result;
  return result;
}

uint64_t default associated conformance accessor for PickerContent.PickerContent.SelectionValue: Hashable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t type metadata completion function for PickerBuilder.ContentWithFooter(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PickerBuilder.ContentWithFooter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t destroy for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 32) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithCopy for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t initializeWithTake for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithTake for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for PickerBuilder.ContentWithFooter(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

void storeEnumTagSinglePayload for PickerBuilder.ContentWithFooter(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 32) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(v8 + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v19 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
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
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v21 = v17 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v13] = v18;
              }

              else
              {
                *&a1[v13] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v13] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v13] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 >= v9)
  {
    if (v7 >= a2)
    {
      v27 = *(v6 + 56);

      v27();
    }

    else
    {
      if (v10 <= 3)
      {
        v24 = ~(-1 << (8 * v10));
      }

      else
      {
        v24 = -1;
      }

      if (v10)
      {
        v25 = v24 & (~v7 + a2);
        if (v10 <= 3)
        {
          v26 = v10;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v10);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *a1 = v25;
            a1[2] = BYTE2(v25);
          }

          else
          {
            *a1 = v25;
          }
        }

        else if (v26 == 1)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v25;
        }
      }
    }
  }

  else
  {
    v22 = *(v8 + 56);
    v23 = &a1[v10 + v11] & ~v11;

    v22(v23);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for PickerBuilder.Content(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 24) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1, a2);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for PickerBuilder.Content(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for PickerBuilder.Content(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t assignWithTake for OnTestViewModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  return a1;
}

double static AddSupportedPPTTestsModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  v15 = a2[2];
  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  v18 = *(a2 + 60);
  v19 = *(a2 + 76);
  v16 = v6;
  v17 = v7;
  a3(&v11);
  *&v13 = v6;
  DWORD2(v13) = v7;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    *&v13 = v11;
    DWORD2(v13) = LODWORD(v12);
    v8 = PreferencesOutputs.subscript.getter();
    if ((v8 & 0x100000000) != 0)
    {
      v9 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v9 = v8;
    }

    *&v13 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v9);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v13) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a4 = v11;
  result = v12;
  a4[1] = v12;
  return result;
}

void AddSupportedPPTTestsModifier.AddTestCases.value.getter(unint64_t a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E698D3F8];
  type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]);
  if (v2 == v1)
  {
    AGGraphGetValue();
  }

  else
  {
    AGGraphGetValue();

    AGGraphGetValue();

    specialized Array.append<A>(contentsOf:)(v3);
  }
}

char *OnTestViewModifier.AddTestCase.value.getter(unint64_t a1)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]);
    v1 = *AGGraphGetValue();
  }

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
  }

  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  if (v6 >= v5 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v1);
  }

  *(v1 + 2) = v6 + 1;
  v7 = &v1[16 * v6];
  *(v7 + 4) = v4;
  *(v7 + 5) = v3;
  return v1;
}

char *protocol witness for Rule.value.getter in conformance OnTestViewModifier.AddTestCase@<X0>(char **a1@<X8>)
{
  result = OnTestViewModifier.AddTestCase.value.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases()
{
  result = lazy protocol witness table cache variable for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases;
  if (!lazy protocol witness table cache variable for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AddSupportedPPTTestsModifier.AddTestCases, &unk_1EFFA8558, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases);
  }

  return result;
}

uint64_t CustomizableToolbarContent.matchedTransitionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  return ToolbarContent.modifier<A>(_:)(v6, a3, &type metadata for TransitionIdentifierModifier, x8_0);
}

uint64_t ToolbarContent.matchedTransitionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  return ToolbarContent.modifier<A>(_:)(v6, a3, &type metadata for TransitionIdentifierModifier, x8_0);
}

uint64_t get_witness_table_7SwiftUI26CustomizableToolbarContentRzlAA0d8ModifiedE0VyxAA28TransitionIdentifierModifier33_5409D4EE01DEAAB6F8A168297879F491LLVGAaBHPxAaBHD1__AgA0deI0HPyHCHCTm(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v6 = type metadata accessor for ToolbarModifiedContent(255, *a1, &type metadata for TransitionIdentifierModifier, a4);
  v8[0] = v5;
  v8[1] = &protocol witness table for TransitionIdentifierModifier;
  return swift_getWitnessTable(a2, v6, v8);
}

uint64_t static TransitionIdentifierModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

double TransitionIdentifierModifier.ChildEnvironment.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double specialized implicit closure #1 in _GraphInputs.toolbarTransitionIdentifier.getter@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransitionIdentifierModifier.ChildEnvironment, &unk_1EFFA8798, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment);
  }

  return result;
}

uint64_t AnyDynamicItem.makeView<A>(uniqueId:container:inputs:adaptor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v9;
  v12[4] = *(a3 + 64);
  v13 = *(a3 + 80);
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  return (*(*a5 + 112))(a1, a2, v12, a8, a8, a9, a7);
}

uint64_t *makeStorage<A, B>(content:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v33 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v10;
  StorageVisitor1 = type metadata accessor for MakeStorageVisitor1(0, v11, v10, v11);
  v28 = *(StorageVisitor1 - 8);
  MEMORY[0x1EEE9AC00](StorageVisitor1);
  v14 = &v28 - v13;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = *(v15 + 16);
  v31 = a1;
  v21(&v28 - v22, a1, a3, v20);
  if (swift_dynamicCast())
  {
    v23 = v32;
    (*(v8 + 16))(v32, v33, a4);
    (*(v8 + 32))(v14, v23, a4);
    *&v14[*(StorageVisitor1 + 36)] = 0;
    swift_getWitnessTable(protocol conformance descriptor for MakeStorageVisitor1<A>, StorageVisitor1);
    result = AnyView.visitContent<A>(_:)();
    v25 = *&v14[*(StorageVisitor1 + 36)];
    if (v25)
    {
      v26 = *(v28 + 8);

      v26(v14, StorageVisitor1);

      return v25;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v34[0] = a3;
    v34[1] = a4;
    v34[2] = v29;
    v34[3] = v30;
    type metadata accessor for IdentifiedItemStorage(0, v34);
    (v21)(v18, v31, a3);
    v27 = v32;
    (*(v8 + 16))(v32, v33, a4);
    swift_allocObject();
    return IdentifiedItemStorage.init(content:identifier:)(v18, v27);
  }

  return result;
}

uint64_t AnyDynamicItem.matchesIdentity(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a1 || ((*(*a4 + 104))() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = (*(*a4 + 80))();
    if (v7 == (*(*a1 + 80))())
    {
      v8 = (*(*a4 + 88))(v11);
      (*(*a1 + 88))(v10, v8);
      v6 = MEMORY[0x18D00E7E0](v11, v10);
      outlined destroy of AnyHashable(v10);
      outlined destroy of AnyHashable(v11);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

BOOL protocol witness for DynamicContainerItem.canBeReused(by:) in conformance AnyDynamicItem(uint64_t *a1)
{
  v2 = *a1;
  v3 = (*(**v1 + 80))();
  return v3 == (*(*v2 + 80))();
}

uint64_t type metadata completion function for IdentifiedItemStorage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *IdentifiedItemStorage.init(content:identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  (*(*(*(*v2 + 136) - 8) + 32))(v2 + *(*v2 + 168), a1);
  (*(*(*(v4 + 144) - 8) + 32))(v2 + *(*v2 + 176), a2);
  return v2;
}

uint64_t IdentifiedItemStorage.matchesIdentity(of:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

uint64_t IdentifiedItemStorage.makeView<A>(uniqueId:container:inputs:adaptor:)(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = *v6;
  v8 = *(a3 + 48);
  *&v23[9] = *(a3 + 32);
  *&v23[11] = v8;
  *&v23[13] = *(a3 + 64);
  v24 = *(a3 + 80);
  v9 = *(a3 + 16);
  *&v23[5] = *a3;
  *&v23[7] = v9;
  v10 = *(v7 + 136);
  v11 = *(v7 + 152);
  v23[0] = __PAIR64__(a1, a2);
  memset(&v23[1], 0, 32);
  v21[0] = *v23;
  v21[1] = *&v23[2];
  v22 = 0;
  v17 = v10;
  v20[0] = v10;
  v20[1] = a5;
  v20[2] = v11;
  v20[3] = a6;
  v12 = type metadata accessor for AnyDynamicChild(0, v20);
  v18 = v12;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyDynamicChild<A, B>, v12);
  v13 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v21, closure #1 in Attribute.init<A>(_:)partial apply, v16, v12, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  (*(*(v12 - 8) + 8))(v23, v12);
  _GraphValue.init(_:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t IdentifiedItemStorage.__ivar_destroyer()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 168));
  v2 = *(*(*(v1 + 144) - 8) + 8);
  v3 = v0 + *(*v0 + 176);

  return v2(v3);
}

uint64_t *IdentifiedItemStorage.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 168));
  (*(*(*(v1 + 144) - 8) + 8))(v0 + *(*v0 + 176));
  return v0;
}

uint64_t type metadata completion function for IdentifiedTransitionStorage(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t *IdentifiedTransitionStorage.init(content:identifier:transition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  (*(*(*(*v3 + 136) - 8) + 32))(v3 + *(*v3 + 184), a1);
  (*(*(*(v6 + 144) - 8) + 32))(v3 + *(*v3 + 192), a2);
  (*(*(*(v6 + 152) - 8) + 32))(v3 + *(*v3 + 200), a3);
  return v3;
}

uint64_t IdentifiedTransitionStorage.contentType.getter()
{
  type metadata accessor for ApplyTransitionModifier();

  return type metadata accessor for ModifiedContent();
}

uint64_t IdentifiedTransitionStorage.matchesIdentity(of:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

uint64_t IdentifiedTransitionStorage.makeView<A>(uniqueId:container:inputs:adaptor:)(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 48);
  *&v29[9] = *(a3 + 32);
  *&v29[11] = v11;
  *&v29[13] = *(a3 + 64);
  v12 = *(a3 + 16);
  *&v29[5] = *a3;
  v13 = *v6;
  v30 = *(a3 + 80);
  *&v29[7] = v12;
  v14 = type metadata accessor for ApplyTransitionModifier();
  v15 = type metadata accessor for ModifiedContent();
  v28[0] = *(v13 + 160);
  v28[1] = swift_getWitnessTable(MEMORY[0x1E6980140], v14);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v28);
  v29[0] = __PAIR64__(a1, a2);
  memset(&v29[1], 0, 32);
  v26[0] = *v29;
  v26[1] = *&v29[2];
  v27 = 0;
  v22 = v15;
  v25[0] = v15;
  v25[1] = a5;
  v25[2] = WitnessTable;
  v25[3] = a6;
  v17 = type metadata accessor for AnyDynamicChild(0, v25);
  v23 = v17;
  v24 = swift_getWitnessTable(protocol conformance descriptor for AnyDynamicChild<A, B>, v17);
  v18 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v21, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  (*(*(v17 - 8) + 8))(v29, v17);
  _GraphValue.init(_:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t IdentifiedTransitionStorage.visitContent<A>(_:phase:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v19 = a3;
  v17[3] = a2;
  v6 = *v4;
  v7 = type metadata accessor for ApplyTransitionModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  v12 = *(v6 + 160);
  Transition.apply<A>(content:phase:)();
  v13 = *(a4 + 8);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6980140], v7);
  v20[0] = v12;
  v20[1] = WitnessTable;
  v15 = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v20);
  v13(v11, v8, v15, v19, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t IdentifiedTransitionStorage.__ivar_destroyer()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 184));
  (*(*(*(v1 + 144) - 8) + 8))(v0 + *(*v0 + 192));
  v2 = *(*(*(v1 + 152) - 8) + 8);
  v3 = v0 + *(*v0 + 200);

  return v2(v3);
}

uint64_t *IdentifiedTransitionStorage.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 184));
  (*(*(*(v1 + 144) - 8) + 8))(v0 + *(*v0 + 192));
  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 200));
  return v0;
}

double IdentifiedItemStorage.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  swift_deallocClassInstance();
  return result;
}

void MakeStorageVisitor1.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = makeStorage<A, B>(content:identifier:)(a1, v4, a3, *(a2 + 16), a4);
  v7 = *(a2 + 36);

  *(v4 + v7) = v6;
}

double AnyDynamicChild.info.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  v6 = *(Value + 44);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 44) = v6;

  return result;
}

void AnyDynamicChild.updateValue()(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v4;
  v30 = *(v1 + 32);
  AnyDynamicChild.info.getter(&v25);
  v5 = v26;

  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(SDWORD1(v29[0])), (v7 & 1) == 0))
  {

    return;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  AnyDynamicChild.info.getter(&v25);
  v9 = v25;
  v10 = v27;

  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v9 + 8 * v8 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_19;
  }

  v11 = MEMORY[0x18D00E9C0](v8, v9);
LABEL_7:

  swift_beginAccess();
  v10 = *(v11 + 84);

  if (v10 != 3)
  {
    AnyDynamicChild.info.getter(&v25);
    v9 = v25;

    if ((v9 & 0xC000000000000001) == 0)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_22:
        __break(1u);
        return;
      }

LABEL_12:

      v12 = a1[3];
      v13 = a1[5];
      FocusStoreLocation.id.getter();

      DynamicContainer._ItemInfo.item.getter();

      v14 = v25;
      v15 = v26;
      v16 = v27;
      v17 = v28;
      v18 = *(*(a1 - 1) + 8);

      v18(v29, a1);
      v2[1] = v14;
      v2[2] = v15;
      v2[3] = v16;
      v2[4] = v17;
      CurrentAttribute = AGGraphGetCurrentAttribute();
      if (CurrentAttribute != *MEMORY[0x1E698D3F8])
      {
        v20 = a1[2];
        v21 = a1[4];
        v24 = CurrentAttribute;
        v25 = v20;
        v26 = v12;
        v27 = v21;
        v28 = v13;
        updated = type metadata accessor for AnyDynamicChild.UpdateVisitor(0, &v25);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyDynamicChild<A, B>.UpdateVisitor, updated);
        (*(*v14 + 120))(&v24, v10, updated, WitnessTable);

        return;
      }

      goto LABEL_21;
    }

LABEL_19:
    MEMORY[0x18D00E9C0](v8, v9);
    goto LABEL_12;
  }
}

uint64_t AnyDynamicChild.matchesIdentifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v14 = *(v4 + 8);
  if (v14)
  {
    (*(*v14 + 88))(v20, v11);
    AnyHashable.base.getter();
    outlined destroy of AnyHashable(v20);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  type metadata accessor for Any?();
  v15 = swift_dynamicCast();
  v16 = (*(*(a3 - 8) + 56))(v13, v15 ^ 1u, 1, a3);
  MEMORY[0x1EEE9AC00](v16);
  v17 = *(a2 + 32);
  *&v20[-8] = *(a2 + 16);
  v20[-6] = a3;
  *&v20[-5] = v17;
  v20[-3] = a4;
  v20[-2] = a1;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AnyDynamicChild.matchesIdentifier<A>(_:), &v20[-10], MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v18, v20);
  (*(v10 + 8))(v13, v9);
  return v20[0] & 1;
}

uint64_t initializeWithCopy for AnyDynamicChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for AnyDynamicChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for AnyDynamicChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyDynamicChild(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AnyDynamicChild(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for MakeStorageVisitor1(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MakeStorageVisitor1(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for MakeStorageVisitor1(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t initializeWithCopy for AnyDynamicItem(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = a2[3];

  return a1;
}

uint64_t *assignWithCopy for AnyDynamicItem(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[1] = v4;
  a1[3] = a2[3];
  return a1;
}

uint64_t *assignWithTake for AnyDynamicItem(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];
  return a1;
}

uint64_t partial apply for closure #1 in AnyDynamicChild.matchesIdentifier<A>(_:)@<X0>(_BYTE *a2@<X8>)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for SegmentedControlStyle.body(configuration:) in conformance AnySegmentedControlStyle@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t StyleBox.body(configuration:)(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v3 + 24))(a1, v4, v3, v6);
  swift_getAssociatedConformanceWitness();
  return AnyView.init<A>(_:)();
}

double View.focusedValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v11[1] = a5;
  KeyPath = swift_getKeyPath();
  v11[0] = a1;
  View.focusedValue<A>(_:_:)(KeyPath, v11, a2, a4);

  return result;
}

void *CubicGradientProvider.resolve(in:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 16);
  if (!a3)
  {
    v7 = *(a2 + 16);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_23:
    result = default argument 1 of ResolvedGradient.init(stops:colorSpace:headroom:)();
    *a5 = MEMORY[0x1E69E7CC0];
    *(a5 + 8) = v21;
    *(a5 + 12) = 0;
    *(a5 + 16) = 1;
    return result;
  }

  if (*(a3 + 16) <= v6)
  {
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = *(a3 + 16);
  }

  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_6:
  v20 = *a1;
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0, MEMORY[0x1E69E7CC0]);
  v9 = 0;
  v10 = 0.0;
  v11 = 1;
  do
  {
    if (v9 >= v6)
    {
      v12 = NAN;
    }

    else
    {
      v21 = v20;

      dispatch thunk of AnyColorBox.resolveHDR(in:)();
      v12 = v23;
    }

    ResolvedGradient.Stop.init(color:location:interpolation:)();
    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    ++v9;
    *(v8 + 2) = v14 + 1;
    v15 = &v8[48 * v14];
    *(v15 + 57) = *&v22[9];
    *(v15 + 2) = v21;
    *(v15 + 3) = *v22;
    if (v11)
    {
      v16 = v12;
    }

    else
    {
      v16 = v10;
    }

    v17 = v10;
    if (v10 <= v12)
    {
      v17 = v12;
    }

    if (v11)
    {
      v10 = v16;
    }

    else
    {
      v10 = v17;
    }

    v11 = 0;
  }

  while (v7 != v9);
  result = default argument 1 of ResolvedGradient.init(stops:colorSpace:headroom:)();
  *a5 = v8;
  *(a5 + 8) = v21;
  *(a5 + 12) = v10;
  *(a5 + 16) = 0;
  return result;
}

void CubicGradientProvider.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  MEMORY[0x18D00F6F0](v8);
  if (v8)
  {
    v9 = a2 + 32;
    do
    {
      v9 += 8;

      dispatch thunk of AnyColorBox.hash(into:)();

      --v8;
    }

    while (v8);
  }

  if (a3)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, a3);
    if (!a4)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (!a4)
    {
      return;
    }
  }

  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = (a4 + 44);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v12));
      if (v13 == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v13;
      }

      Hasher._combine(_:)(LODWORD(v16));
      if (v14 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v14;
      }

      Hasher._combine(_:)(LODWORD(v17));
      if (v15 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v15;
      }

      Hasher._combine(_:)(LODWORD(v18));
      v11 += 4;
      --v10;
    }

    while (v10);
  }
}

uint64_t protocol witness for GradientProvider.tag.getter in conformance CubicGradientProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Gradient.ProviderTag.SwiftUIPlatformTag(0);
  result = swift_allocObject();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CubicGradientProvider()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  CubicGradientProvider.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CubicGradientProvider(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  CubicGradientProvider.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t specialized CodableByProxy.serialize(to:)(void *a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  CubicGradientProvider.codingProxy.getter(a2, a3, a4);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  lazy protocol witness table accessor for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance CubicGradientProvider@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t specialized static CodableByProxy.deserialize(from:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v2 = specialized static CubicGradientProvider.unwrap(codingProxy:)(v4, v5, v6);

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return v2;
}

void closure #1 in PlatformViewCoordinator.weakDispatchUpdate.getter(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    static Update.dispatchImmediately<A>(reason:_:)();
  }

  else
  {
    a1();
  }
}

id PlatformViewCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformViewCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SharingPickerSource.id.getter()
{
  v1 = *(v0 + 112);
  v35[6] = *(v0 + 96);
  v35[7] = v1;
  v36 = *(v0 + 128);
  v2 = *(v0 + 48);
  v35[2] = *(v0 + 32);
  v35[3] = v2;
  v3 = *(v0 + 80);
  v35[4] = *(v0 + 64);
  v35[5] = v3;
  v4 = *(v0 + 16);
  v35[0] = *v0;
  v35[1] = v4;
  v5 = _s7SwiftUI19SharingPickerSourceOWOg(v35);
  v6 = destructiveProjectEnumData for BridgedPresentation.ContentHost(v35);
  if (v5 == 1)
  {
    return *(v6 + 24);
  }

  v8 = *(v6 + 80);
  v41 = *(v6 + 64);
  v42 = v8;
  v9 = *(v6 + 112);
  v43 = *(v6 + 96);
  v44 = v9;
  v10 = *(v6 + 16);
  v37 = *v6;
  v38 = v10;
  v11 = *(v6 + 48);
  v39 = *(v6 + 32);
  v40 = v11;
  v24 = v41;
  v25 = v8;
  v26 = v43;
  v27 = v9;
  v20 = v37;
  v21 = v10;
  v22 = v39;
  v23 = v11;
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for Binding<AnyIdentifiableShareConfiguration?>, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v28);
  if (*(&v32 + 1) == 1)
  {
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    outlined destroy of SharingPickerHostModifier.Model?(&v13, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
    return 0;
  }

  else
  {
    v12 = v28;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    outlined destroy of SharingPickerHostModifier.Model?(&v13, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
    return v12;
  }
}

uint64_t View.sharingPickerModifier(source:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[7];
  v17 = a1[6];
  v18 = v6;
  *&v19 = *(a1 + 16);
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v8 = a1[5];
  v15 = a1[4];
  v16 = v8;
  v9 = a1[1];
  v11 = *a1;
  v12 = v9;
  *(&v19 + 1) = static Anchor.Source<A>.bounds.getter();
  outlined init with copy of SharingPickerSource(a1, v20);
  MEMORY[0x18D00A570](&v11, a2, &type metadata for SharingActivityPickerModifier, a3);
  v20[6] = v17;
  v20[7] = v18;
  v20[8] = v19;
  v20[2] = v13;
  v20[3] = v14;
  v20[4] = v15;
  v20[5] = v16;
  v20[0] = v11;
  v20[1] = v12;
  return outlined destroy of SharingActivityPickerModifier(v20);
}

uint64_t View.sharingPicker<A, B, C, D>(isPresented:link:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  specialized AnyIdentifiableShareConfiguration.init<A, B, C, D>(_:)(a4, a6, a7, a8, a9, a11, a12, a13, v27 + 8, a14, a15);
  *&v26 = a1;
  *(&v26 + 1) = a2;
  LOBYTE(v27[0]) = a3;
  v35 = v27[5];
  v36 = v27[6];
  v37 = v28;
  v31 = v27[1];
  v32 = v27[2];
  v33 = v27[3];
  v34 = v27[4];
  v29 = v26;
  v30 = v27[0];
  _s7SwiftUI19SharingPickerSourceOWOi0_(&v29);
  v24[6] = v35;
  v24[7] = v36;
  v25 = v37;
  v24[2] = v31;
  v24[3] = v32;
  v24[4] = v33;
  v24[5] = v34;
  v24[0] = v29;
  v24[1] = v30;
  View.sharingPickerModifier(source:)(v24, a5, a10);
  return outlined destroy of StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(&v26, type metadata accessor for (Binding<Bool>, AnyIdentifiableShareConfiguration));
}

uint64_t View.sharingPicker<A, B, C>(isPresented:item:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20)
{
  v54 = a9;
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v41 = a4;
  v51 = a3;
  v49 = a1;
  v50 = a2;
  v44 = a10;
  v43 = a11;
  v42 = a12;
  v55 = a13;
  v53 = a15;
  v38 = a14;
  v40 = a19;
  v52 = a18;
  v39 = *(&a17 + 1);
  v61 = a17;
  v62 = a20;
  v20 = type metadata accessor for SharePreview(0, &v61);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v41, a16, v25);
  (*(v21 + 16))(v23, v38, v20);
  v36 = v23;
  v30 = v45;
  v29 = v46;
  v32 = v47;
  v31 = v48;
  v34 = v43;
  v33 = v44;
  LOBYTE(v23) = v42;
  AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)(v27, v45, v46, v47, v48, v44, v43, v42, v58, v55, v36, a16, a17, v39, v40, a20, *(&a20 + 1));
  *(&v60[3] + 7) = v58[3];
  *(&v60[4] + 7) = v58[4];
  *(&v60[5] + 7) = v58[5];
  *(&v60[6] + 7) = v59;
  *(v60 + 7) = v58[0];
  *(&v60[1] + 7) = v58[1];
  *(&v60[2] + 7) = v58[2];
  *&v57[57] = v60[3];
  *&v57[73] = v60[4];
  *&v57[89] = v60[5];
  *&v57[104] = *(&v60[5] + 15);
  *&v57[25] = v60[1];
  *&v57[41] = v60[2];
  *&v56 = 0;
  *(&v56 + 1) = v49;
  *v57 = v50;
  v57[8] = v51;
  *&v57[9] = v60[0];
  outlined copy of Text?(v30, v29, v32, v31);
  outlined copy of Text?(v33, v34, v23, v55);

  MEMORY[0x18D00A570](&v56, v53, &unk_1EFFA8E08, v52);
  v67 = *&v57[80];
  v68 = *&v57[96];
  v69 = *&v57[112];
  v63 = *&v57[16];
  v64 = *&v57[32];
  v65 = *&v57[48];
  v66 = *&v57[64];
  v61 = v56;
  v62 = *v57;
  return outlined destroy of UnidentifiedSharingPickerModifier(&v61);
}

uint64_t View.sharingPicker(isPresented:item:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a9;
  *(&v27 + 1) = a7;
  v28 = a8;
  *&v27 = a6;
  v26 = a3;
  v24 = a1;
  v25 = a2;
  v29 = a13;
  v30 = a14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a4, v16, v18);
  type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  *(v21 + 56) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
  (*(v17 + 32))(boxed_opaque_existential_1, v20, v16);
  *&v32 = 0;
  *(&v32 + 1) = v24;
  *&v33 = v25;
  BYTE8(v33) = v26;
  *(&v33 + 9) = *v41;
  HIDWORD(v33) = *&v41[3];
  v34 = v21;
  v35 = 0uLL;
  LOBYTE(v36) = 0;
  *(&v36 + 1) = a5;
  v37 = v27;
  *&v38 = v28;
  *(&v38 + 1) = a10;
  v39 = a11;
  v40 = a12;
  outlined copy of Text?(a5, v27, SBYTE8(v27), v28);
  outlined copy of Text?(a10, a11, SBYTE8(a11), a12);

  MEMORY[0x18D00A570](&v32, v29, &unk_1EFFA8E08, v30);
  v42[6] = v38;
  v42[7] = v39;
  v43 = v40;
  v42[2] = v34;
  v42[3] = v35;
  v42[4] = v36;
  v42[5] = v37;
  v42[0] = v32;
  v42[1] = v33;
  return outlined destroy of UnidentifiedSharingPickerModifier(v42);
}

unint64_t lazy protocol witness table accessor for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier()
{
  result = lazy protocol witness table cache variable for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier;
  if (!lazy protocol witness table cache variable for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnidentifiedSharingPickerModifier, &unk_1EFFA8E08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier);
  }

  return result;
}

uint64_t assignWithTake for SharingPickerHostModifier(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 112);
  if (*(a1 + 112) == 1)
  {
    goto LABEL_4;
  }

  v5 = (a2 + 112);
  v6 = *(a2 + 112);
  if (v6 != 1)
  {
    if (*(a1 + 72) == 1)
    {
LABEL_9:
      v13 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v13;
      *(a1 + 96) = *(a2 + 96);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
      v15 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v15;
      goto LABEL_10;
    }

    v12 = *(a2 + 72);
    if (v12 == 1)
    {
      outlined destroy of AnyIdentifiableShareConfiguration(a1);
      goto LABEL_9;
    }

    v18 = *(a2 + 32);
    v19 = *(a2 + 40);
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = *(a1 + 32);
    v24 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v24;
    *(a1 + 32) = v18;
    v25 = *(a1 + 40);
    *(a1 + 40) = v19;
    outlined consume of AnyShareConfiguration.Storage(v20, v21, v22, v23, v25);
    if (*(a1 + 72))
    {
      if (v12)
      {
        v26 = *(a2 + 64);
        v27 = *(a1 + 48);
        v28 = *(a1 + 56);
        v29 = *(a1 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v26;
        outlined consume of Text.Storage(v27, v28, v29);
        *(a1 + 72) = v12;

        goto LABEL_22;
      }

      outlined destroy of Text(a1 + 48);
    }

    v30 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v30;
LABEL_22:
    if (*(a1 + 104))
    {
      v31 = *(a2 + 104);
      if (v31)
      {
        v32 = *(a2 + 96);
        v33 = *(a1 + 80);
        v34 = *(a1 + 88);
        v35 = *(a1 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v32;
        outlined consume of Text.Storage(v33, v34, v35);
        *(a1 + 104) = v31;

        goto LABEL_10;
      }

      outlined destroy of Text(a1 + 80);
    }

    v36 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v36;
LABEL_10:
    if (*v4)
    {
      if (v6)
      {
        v16 = *(a2 + 120);
        *(a1 + 112) = v6;
        *(a1 + 120) = v16;

        goto LABEL_5;
      }
    }

    else if (v6)
    {
      v17 = *(a2 + 120);
      *(a1 + 112) = v6;
      *(a1 + 120) = v17;
      goto LABEL_5;
    }

    *v4 = *v5;
    goto LABEL_5;
  }

  outlined destroy of SharingPickerHostModifier.Model(a1);
LABEL_4:
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  v8 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v8;
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v10;
LABEL_5:
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t getEnumTagSinglePayload for SharingPickerHostModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
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

uint64_t storeEnumTagSinglePayload for SharingPickerHostModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

double destroy for SharingPickerHostModifier.Model(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 != 1)
  {
    outlined consume of AnyShareConfiguration.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
    if (v2)
    {
      outlined consume of Text.Storage(*(a1 + 48), *(a1 + 56), *(a1 + 64));
    }

    if (*(a1 + 104))
    {
      outlined consume of Text.Storage(*(a1 + 80), *(a1 + 88), *(a1 + 96));
    }
  }

  if (*(a1 + 112))
  {
  }

  return result;
}

uint64_t initializeWithCopy for SharingPickerHostModifier.Model(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  if (v4 == 1)
  {
    v5 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v5;
    *(a1 + 96) = *(a2 + 96);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    goto LABEL_8;
  }

  v8 = *(a2 + 8);
  *a1 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  outlined copy of AnyShareConfiguration.Storage(v8, v9, v10, v11, v12);
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  if (v4)
  {
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    v15 = *(a2 + 64);
    outlined copy of Text.Storage(v13, v14, v15);
    *(a1 + 48) = v13;
    *(a1 + 56) = v14;
    *(a1 + 64) = v15;
    *(a1 + 72) = v4;

    v16 = *(a2 + 104);
    if (v16)
    {
LABEL_5:
      v17 = *(a2 + 80);
      v18 = *(a2 + 88);
      v19 = *(a2 + 96);
      outlined copy of Text.Storage(v17, v18, v19);
      *(a1 + 80) = v17;
      *(a1 + 88) = v18;
      *(a1 + 96) = v19;
      *(a1 + 104) = v16;

      goto LABEL_8;
    }
  }

  else
  {
    v20 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v20;
    v16 = *(a2 + 104);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  v21 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v21;
LABEL_8:
  v22 = *(a2 + 112);
  if (v22)
  {
    v23 = *(a2 + 120);
    *(a1 + 112) = v22;
    *(a1 + 120) = v23;
  }

  else
  {
    *(a1 + 112) = *(a2 + 112);
  }

  return a1;
}

uint64_t assignWithCopy for SharingPickerHostModifier.Model(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 9);
  if (*(a1 + 72) == 1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      v6 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v6;
      *a1 = v5;
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v9;
      *(a1 + 48) = v7;
      *(a1 + 64) = v8;
      goto LABEL_24;
    }

    *a1 = *a2;
    v15 = *(a2 + 1);
    v16 = *(a2 + 2);
    v17 = *(a2 + 3);
    v18 = *(a2 + 4);
    v19 = *(a2 + 40);
    outlined copy of AnyShareConfiguration.Storage(v15, v16, v17, v18, v19);
    *(a1 + 8) = v15;
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    if (*(a2 + 9))
    {
      v20 = *(a2 + 6);
      v21 = *(a2 + 7);
      v22 = *(a2 + 64);
      outlined copy of Text.Storage(v20, v21, v22);
      *(a1 + 48) = v20;
      *(a1 + 56) = v21;
      *(a1 + 64) = v22;
      *(a1 + 72) = *(a2 + 9);

      if (*(a2 + 13))
      {
LABEL_8:
        v23 = *(a2 + 10);
        v24 = *(a2 + 11);
        v25 = *(a2 + 96);
        outlined copy of Text.Storage(v23, v24, v25);
        *(a1 + 80) = v23;
        *(a1 + 88) = v24;
        *(a1 + 96) = v25;
        *(a1 + 104) = *(a2 + 13);

        goto LABEL_24;
      }
    }

    else
    {
      v43 = a2[4];
      *(a1 + 48) = a2[3];
      *(a1 + 64) = v43;
      if (*(a2 + 13))
      {
        goto LABEL_8;
      }
    }

    goto LABEL_22;
  }

  if (v4 == 1)
  {
    outlined destroy of AnyIdentifiableShareConfiguration(a1);
    v11 = a2[1];
    v10 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v11;
    *(a1 + 32) = v10;
    v12 = a2[6];
    v14 = a2[3];
    v13 = a2[4];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v12;
    *(a1 + 48) = v14;
    *(a1 + 64) = v13;
    goto LABEL_24;
  }

  *a1 = *a2;
  v26 = *(a2 + 1);
  v27 = *(a2 + 2);
  v28 = *(a2 + 3);
  v29 = *(a2 + 4);
  v30 = *(a2 + 40);
  outlined copy of AnyShareConfiguration.Storage(v26, v27, v28, v29, v30);
  v31 = *(a1 + 8);
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  v34 = *(a1 + 32);
  *(a1 + 8) = v26;
  *(a1 + 16) = v27;
  *(a1 + 24) = v28;
  *(a1 + 32) = v29;
  v35 = *(a1 + 40);
  *(a1 + 40) = v30;
  outlined consume of AnyShareConfiguration.Storage(v31, v32, v33, v34, v35);
  v36 = *(a2 + 9);
  if (*(a1 + 72))
  {
    if (v36)
    {
      v37 = *(a2 + 6);
      v38 = *(a2 + 7);
      v39 = *(a2 + 64);
      outlined copy of Text.Storage(v37, v38, v39);
      v40 = *(a1 + 48);
      v41 = *(a1 + 56);
      v42 = *(a1 + 64);
      *(a1 + 48) = v37;
      *(a1 + 56) = v38;
      *(a1 + 64) = v39;
      outlined consume of Text.Storage(v40, v41, v42);
      *(a1 + 72) = *(a2 + 9);
    }

    else
    {
      outlined destroy of Text(a1 + 48);
      v47 = a2[4];
      *(a1 + 48) = a2[3];
      *(a1 + 64) = v47;
    }
  }

  else if (v36)
  {
    v44 = *(a2 + 6);
    v45 = *(a2 + 7);
    v46 = *(a2 + 64);
    outlined copy of Text.Storage(v44, v45, v46);
    *(a1 + 48) = v44;
    *(a1 + 56) = v45;
    *(a1 + 64) = v46;
    *(a1 + 72) = *(a2 + 9);
  }

  else
  {
    v48 = a2[4];
    *(a1 + 48) = a2[3];
    *(a1 + 64) = v48;
  }

  v49 = *(a2 + 13);
  if (!*(a1 + 104))
  {
    if (v49)
    {
      goto LABEL_8;
    }

LABEL_22:
    v56 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v56;
    goto LABEL_24;
  }

  if (v49)
  {
    v50 = *(a2 + 10);
    v51 = *(a2 + 11);
    v52 = *(a2 + 96);
    outlined copy of Text.Storage(v50, v51, v52);
    v53 = *(a1 + 80);
    v54 = *(a1 + 88);
    v55 = *(a1 + 96);
    *(a1 + 80) = v50;
    *(a1 + 88) = v51;
    *(a1 + 96) = v52;
    outlined consume of Text.Storage(v53, v54, v55);
    *(a1 + 104) = *(a2 + 13);
  }

  else
  {
    outlined destroy of Text(a1 + 80);
    v57 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v57;
  }

LABEL_24:
  v58 = *(a2 + 14);
  if (!*(a1 + 112))
  {
    if (v58)
    {
      v60 = *(a2 + 15);
      *(a1 + 112) = v58;
      *(a1 + 120) = v60;

      return a1;
    }

LABEL_30:
    *(a1 + 112) = a2[7];
    return a1;
  }

  if (!v58)
  {

    goto LABEL_30;
  }

  v59 = *(a2 + 15);
  *(a1 + 112) = v58;
  *(a1 + 120) = v59;

  return a1;
}

uint64_t assignWithTake for SharingPickerHostModifier.Model(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 72);
  if (v4 == 1)
  {
    outlined destroy of AnyIdentifiableShareConfiguration(a1);
LABEL_4:
    v5 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v5;
    *(a1 + 96) = *(a2 + 96);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    goto LABEL_5;
  }

  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  *(a1 + 32) = v11;
  v18 = *(a1 + 40);
  *(a1 + 40) = v12;
  outlined consume of AnyShareConfiguration.Storage(v13, v14, v15, v16, v18);
  if (!*(a1 + 72))
  {
LABEL_18:
    v24 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v24;
    if (!*(a1 + 104))
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!v4)
  {
    outlined destroy of Text(a1 + 48);
    goto LABEL_18;
  }

  v19 = *(a2 + 64);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v19;
  outlined consume of Text.Storage(v20, v21, v22);
  *(a1 + 72) = v4;

  if (!*(a1 + 104))
  {
    goto LABEL_22;
  }

LABEL_19:
  v25 = *(a2 + 104);
  if (v25)
  {
    v26 = *(a2 + 96);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = *(a1 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v26;
    outlined consume of Text.Storage(v27, v28, v29);
    *(a1 + 104) = v25;

    goto LABEL_5;
  }

  outlined destroy of Text(a1 + 80);
LABEL_22:
  v30 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v30;
LABEL_5:
  v8 = *(a2 + 112);
  if (!*(a1 + 112))
  {
    if (v8)
    {
      v10 = *(a2 + 120);
      *(a1 + 112) = v8;
      *(a1 + 120) = v10;
      return a1;
    }

LABEL_15:
    *(a1 + 112) = *(a2 + 112);
    return a1;
  }

  if (!v8)
  {

    goto LABEL_15;
  }

  v9 = *(a2 + 120);
  *(a1 + 112) = v8;
  *(a1 + 120) = v9;

  return a1;
}

uint64_t *assignWithCopy for PresentSharingPickerAction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v4 = a1 + 16;
  v5 = a1 + 2;
  v7 = a2 + 16;
  v6 = a2[16];
  v8 = a2 + 2;
  if (a1[16] != 1)
  {
    if (v6 == 1)
    {
      outlined destroy of SharingPickerHostModifier.Model((a1 + 2));
      v15 = *(a2 + 4);
      v17 = *v8;
      v16 = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v15;
      *v5 = v17;
      *(a1 + 2) = v16;
      v18 = *(a2 + 8);
      v20 = *(a2 + 5);
      v19 = *(a2 + 6);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 8) = v18;
      *(a1 + 5) = v20;
      *(a1 + 6) = v19;
      return a1;
    }

    v26 = a2[11];
    if (a1[11] == 1)
    {
      if (v26 == 1)
      {
        v27 = *v8;
        v28 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v28;
        *v5 = v27;
        v29 = *(a2 + 4);
        v30 = *(a2 + 5);
        v31 = *(a2 + 7);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = v31;
        *(a1 + 4) = v29;
        *(a1 + 5) = v30;
        goto LABEL_38;
      }

      a1[2] = a2[2];
      v48 = a2[3];
      v49 = a2[4];
      v50 = a2[5];
      v51 = a2[6];
      v52 = *(a2 + 56);
      outlined copy of AnyShareConfiguration.Storage(v48, v49, v50, v51, v52);
      a1[3] = v48;
      a1[4] = v49;
      a1[5] = v50;
      a1[6] = v51;
      *(a1 + 56) = v52;
      if (a2[11])
      {
        v53 = a2[8];
        v54 = a2[9];
        v55 = *(a2 + 80);
        outlined copy of Text.Storage(v53, v54, v55);
        a1[8] = v53;
        a1[9] = v54;
        *(a1 + 80) = v55;
        a1[11] = a2[11];

        if (a2[15])
        {
LABEL_18:
          v56 = a2[12];
          v57 = a2[13];
          v58 = *(a2 + 112);
          outlined copy of Text.Storage(v56, v57, v58);
          a1[12] = v56;
          a1[13] = v57;
          *(a1 + 112) = v58;
          a1[15] = a2[15];

          goto LABEL_38;
        }
      }

      else
      {
        v79 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v79;
        if (a2[15])
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (v26 == 1)
      {
        outlined destroy of AnyIdentifiableShareConfiguration((a1 + 2));
        v44 = *(a2 + 2);
        v43 = *(a2 + 3);
        *v5 = *v8;
        *(a1 + 2) = v44;
        *(a1 + 3) = v43;
        v45 = *(a2 + 7);
        v47 = *(a2 + 4);
        v46 = *(a2 + 5);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = v45;
        *(a1 + 4) = v47;
        *(a1 + 5) = v46;
        goto LABEL_38;
      }

      a1[2] = a2[2];
      v59 = a2[3];
      v60 = a2[4];
      v61 = a2[5];
      v62 = a2[6];
      v63 = *(a2 + 56);
      outlined copy of AnyShareConfiguration.Storage(v59, v60, v61, v62, v63);
      v64 = a1[3];
      v65 = a1[4];
      v66 = a1[5];
      v67 = a1[6];
      a1[3] = v59;
      a1[4] = v60;
      a1[5] = v61;
      a1[6] = v62;
      v68 = *(a1 + 56);
      *(a1 + 56) = v63;
      outlined consume of AnyShareConfiguration.Storage(v64, v65, v66, v67, v68);
      v69 = a2[11];
      if (a1[11])
      {
        if (v69)
        {
          v70 = a2[8];
          v71 = a2[9];
          v72 = *(a2 + 80);
          outlined copy of Text.Storage(v70, v71, v72);
          v73 = a1[8];
          v74 = a1[9];
          v75 = *(a1 + 80);
          a1[8] = v70;
          a1[9] = v71;
          *(a1 + 80) = v72;
          outlined consume of Text.Storage(v73, v74, v75);
          a1[11] = a2[11];
        }

        else
        {
          outlined destroy of Text((a1 + 8));
          v83 = *(a2 + 5);
          *(a1 + 4) = *(a2 + 4);
          *(a1 + 5) = v83;
        }
      }

      else if (v69)
      {
        v80 = a2[8];
        v81 = a2[9];
        v82 = *(a2 + 80);
        outlined copy of Text.Storage(v80, v81, v82);
        a1[8] = v80;
        a1[9] = v81;
        *(a1 + 80) = v82;
        a1[11] = a2[11];
      }

      else
      {
        v84 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v84;
      }

      v85 = a2[15];
      if (a1[15])
      {
        if (v85)
        {
          v86 = a2[12];
          v87 = a2[13];
          v88 = *(a2 + 112);
          outlined copy of Text.Storage(v86, v87, v88);
          v89 = a1[12];
          v90 = a1[13];
          v91 = *(a1 + 112);
          a1[12] = v86;
          a1[13] = v87;
          *(a1 + 112) = v88;
          outlined consume of Text.Storage(v89, v90, v91);
          a1[15] = a2[15];
        }

        else
        {
          outlined destroy of Text((a1 + 12));
          v93 = *(a2 + 7);
          *(a1 + 6) = *(a2 + 6);
          *(a1 + 7) = v93;
        }

LABEL_38:
        v78 = *v7;
        if (*v4)
        {
          if (v78)
          {
            v94 = a2[17];
            a1[16] = v78;
            a1[17] = v94;

            return a1;
          }
        }

        else if (v78)
        {
          goto LABEL_42;
        }

LABEL_44:
        *v4 = *v7;
        return a1;
      }

      if (v85)
      {
        goto LABEL_18;
      }
    }

    v92 = *(a2 + 7);
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 7) = v92;
    goto LABEL_38;
  }

  if (v6 != 1)
  {
    if (a2[11] == 1)
    {
      v21 = *v8;
      v22 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v22;
      *v5 = v21;
      v23 = *(a2 + 4);
      v24 = *(a2 + 5);
      v25 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v25;
      *(a1 + 4) = v23;
      *(a1 + 5) = v24;
      goto LABEL_24;
    }

    a1[2] = a2[2];
    v32 = a2[3];
    v33 = a2[4];
    v34 = a2[5];
    v35 = a2[6];
    v36 = *(a2 + 56);
    outlined copy of AnyShareConfiguration.Storage(v32, v33, v34, v35, v36);
    a1[3] = v32;
    a1[4] = v33;
    a1[5] = v34;
    a1[6] = v35;
    *(a1 + 56) = v36;
    if (a2[11])
    {
      v37 = a2[8];
      v38 = a2[9];
      v39 = *(a2 + 80);
      outlined copy of Text.Storage(v37, v38, v39);
      a1[8] = v37;
      a1[9] = v38;
      *(a1 + 80) = v39;
      a1[11] = a2[11];

      if (a2[15])
      {
LABEL_13:
        v40 = a2[12];
        v41 = a2[13];
        v42 = *(a2 + 112);
        outlined copy of Text.Storage(v40, v41, v42);
        a1[12] = v40;
        a1[13] = v41;
        *(a1 + 112) = v42;
        a1[15] = a2[15];

        goto LABEL_24;
      }
    }

    else
    {
      v76 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v76;
      if (a2[15])
      {
        goto LABEL_13;
      }
    }

    v77 = *(a2 + 7);
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 7) = v77;
LABEL_24:
    v78 = *v7;
    if (!*v7)
    {
      goto LABEL_44;
    }

LABEL_42:
    v95 = a2[17];
    a1[16] = v78;
    a1[17] = v95;

    return a1;
  }

  v9 = *v8;
  v10 = *(a2 + 2);
  v11 = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v11;
  *v5 = v9;
  *(a1 + 2) = v10;
  v12 = *(a2 + 5);
  v13 = *(a2 + 6);
  v14 = *(a2 + 8);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = v14;
  *(a1 + 5) = v12;
  *(a1 + 6) = v13;
  return a1;
}

uint64_t *assignWithTake for PresentSharingPickerAction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v4 = a1 + 16;
  v5 = a1 + 2;
  v6 = a2[16];
  v7 = a2 + 2;
  if (a1[16] == 1)
  {
    goto LABEL_4;
  }

  if (v6 != 1)
  {
    if (a1[11] == 1)
    {
LABEL_9:
      v14 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v14;
      *(a1 + 7) = *(a2 + 7);
      v15 = *(a2 + 2);
      *v5 = *v7;
      *(a1 + 2) = v15;
      v16 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v16;
      goto LABEL_10;
    }

    v13 = a2[11];
    if (v13 == 1)
    {
      outlined destroy of AnyIdentifiableShareConfiguration((a1 + 2));
      goto LABEL_9;
    }

    v19 = a2[6];
    v20 = *(a2 + 56);
    v21 = a1[3];
    v22 = a1[4];
    v23 = a1[5];
    v24 = a1[6];
    v25 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v25;
    a1[6] = v19;
    v26 = *(a1 + 56);
    *(a1 + 56) = v20;
    outlined consume of AnyShareConfiguration.Storage(v21, v22, v23, v24, v26);
    if (a1[11])
    {
      if (v13)
      {
        v27 = *(a2 + 80);
        v28 = a1[8];
        v29 = a1[9];
        v30 = *(a1 + 80);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 80) = v27;
        outlined consume of Text.Storage(v28, v29, v30);
        a1[11] = v13;

        goto LABEL_22;
      }

      outlined destroy of Text((a1 + 8));
    }

    v31 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v31;
LABEL_22:
    if (a1[15])
    {
      v32 = a2[15];
      if (v32)
      {
        v33 = *(a2 + 112);
        v34 = a1[12];
        v35 = a1[13];
        v36 = *(a1 + 112);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 112) = v33;
        outlined consume of Text.Storage(v34, v35, v36);
        a1[15] = v32;

        goto LABEL_10;
      }

      outlined destroy of Text((a1 + 12));
    }

    v37 = *(a2 + 7);
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 7) = v37;
LABEL_10:
    if (*v4)
    {
      if (v6)
      {
        v17 = a2[17];
        a1[16] = v6;
        a1[17] = v17;

        return a1;
      }
    }

    else if (v6)
    {
      v18 = a2[17];
      a1[16] = v6;
      a1[17] = v18;
      return a1;
    }

    *v4 = *(a2 + 8);
    return a1;
  }

  outlined destroy of SharingPickerHostModifier.Model((a1 + 2));
LABEL_4:
  v8 = *(a2 + 6);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = v8;
  v9 = *(a2 + 8);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = v9;
  v10 = *(a2 + 2);
  *v5 = *v7;
  *(a1 + 2) = v10;
  v11 = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v11;
  return a1;
}

void destroy for UnidentifiedSharingPickerModifier(uint64_t a1)
{

  outlined consume of AnyShareConfiguration.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (*(a1 + 96))
  {
    outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  }

  if (*(a1 + 128))
  {
    outlined consume of Text.Storage(*(a1 + 104), *(a1 + 112), *(a1 + 120));
  }
}

uint64_t initializeWithCopy for UnidentifiedSharingPickerModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);

  outlined copy of AnyShareConfiguration.Storage(v5, v6, v7, v8, v9);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  v10 = *(a2 + 96);
  if (!v10)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    v14 = *(a2 + 128);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    return a1;
  }

  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  outlined copy of Text.Storage(v11, v12, v13);
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v10;

  v14 = *(a2 + 128);
  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  outlined copy of Text.Storage(v15, v16, v17);
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = v17;
  *(a1 + 128) = v14;

  return a1;
}

uint64_t assignWithCopy for UnidentifiedSharingPickerModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  outlined copy of AnyShareConfiguration.Storage(v4, v5, v6, v7, v8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  v13 = *(a1 + 64);
  *(a1 + 64) = v8;
  outlined consume of AnyShareConfiguration.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v14)
    {
      v15 = *(a2 + 72);
      v16 = *(a2 + 80);
      v17 = *(a2 + 88);
      outlined copy of Text.Storage(v15, v16, v17);
      v18 = *(a1 + 72);
      v19 = *(a1 + 80);
      v20 = *(a1 + 88);
      *(a1 + 72) = v15;
      *(a1 + 80) = v16;
      *(a1 + 88) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of Text(a1 + 72);
      v24 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v24;
    }
  }

  else if (v14)
  {
    v21 = *(a2 + 72);
    v22 = *(a2 + 80);
    v23 = *(a2 + 88);
    outlined copy of Text.Storage(v21, v22, v23);
    *(a1 + 72) = v21;
    *(a1 + 80) = v22;
    *(a1 + 88) = v23;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v25 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v25;
  }

  v26 = *(a2 + 128);
  if (*(a1 + 128))
  {
    if (v26)
    {
      v27 = *(a2 + 104);
      v28 = *(a2 + 112);
      v29 = *(a2 + 120);
      outlined copy of Text.Storage(v27, v28, v29);
      v30 = *(a1 + 104);
      v31 = *(a1 + 112);
      v32 = *(a1 + 120);
      *(a1 + 104) = v27;
      *(a1 + 112) = v28;
      *(a1 + 120) = v29;
      outlined consume of Text.Storage(v30, v31, v32);
      *(a1 + 128) = *(a2 + 128);
    }

    else
    {
      outlined destroy of Text(a1 + 104);
      v36 = *(a2 + 120);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = v36;
    }
  }

  else if (v26)
  {
    v33 = *(a2 + 104);
    v34 = *(a2 + 112);
    v35 = *(a2 + 120);
    outlined copy of Text.Storage(v33, v34, v35);
    *(a1 + 104) = v33;
    *(a1 + 112) = v34;
    *(a1 + 120) = v35;
    *(a1 + 128) = *(a2 + 128);
  }

  else
  {
    v37 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v37;
  }

  return a1;
}

uint64_t assignWithTake for UnidentifiedSharingPickerModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v10;
  v11 = *(a1 + 64);
  *(a1 + 64) = v5;
  outlined consume of AnyShareConfiguration.Storage(v6, v7, v8, v9, v11);
  if (*(a1 + 96))
  {
    v12 = *(a2 + 96);
    if (v12)
    {
      v13 = *(a2 + 88);
      v14 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = *(a1 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 96) = v12;

      if (!*(a1 + 128))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1 + 72);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  if (!*(a1 + 128))
  {
LABEL_10:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    return a1;
  }

LABEL_7:
  v17 = *(a2 + 128);
  if (!v17)
  {
    outlined destroy of Text(a1 + 104);
    goto LABEL_10;
  }

  v18 = *(a2 + 120);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  v21 = *(a1 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v18;
  outlined consume of Text.Storage(v19, v20, v21);
  *(a1 + 128) = v17;

  return a1;
}

uint64_t getEnumTagSinglePayload for UnidentifiedSharingPickerModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnidentifiedSharingPickerModifier(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 EnvironmentValues.presentSharingPicker.getter@<Q0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentSharingPickerKey>, &type metadata for PresentSharingPickerKey, &protocol witness table for PresentSharingPickerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentSharingPickerKey>, &type metadata for PresentSharingPickerKey, &protocol witness table for PresentSharingPickerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  a1[6] = v10;
  a1[7] = v11;
  a1[8] = v12;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  result = v5;
  *a1 = v4;
  a1[1] = v5;
  return result;
}

__n128 protocol witness for ViewModifier.body(content:) in conformance UnidentifiedSharingPickerModifier@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 112);
  v20[4] = *(v1 + 96);
  v20[5] = v6;
  v21 = *(v1 + 128);
  v7 = *(v1 + 48);
  v20[0] = *(v1 + 32);
  v20[1] = v7;
  v8 = *(v1 + 80);
  v20[2] = *(v1 + 64);
  v20[3] = v8;

  v9 = Namespace.wrappedValue.getter();
  v10 = *(v1 + 112);
  v28 = *(v1 + 96);
  v29 = v10;
  v30 = *(v1 + 128);
  v11 = *(v1 + 48);
  v24 = *(v1 + 32);
  v25 = v11;
  v12 = *(v1 + 64);
  v27 = *(v1 + 80);
  v26 = v12;
  *&v22 = v3;
  *(&v22 + 1) = v4;
  v23.n128_u8[0] = v5;
  v23.n128_u64[1] = v9;
  _s7SwiftUI19SharingPickerSourceOWOi0_(&v22);
  outlined init with copy of AnyShareConfiguration(v20, v19);
  v13 = static Anchor.Source<A>.bounds.getter();
  v14 = v29;
  *(a1 + 96) = v28;
  *(a1 + 112) = v14;
  v15 = v30;
  v16 = v25;
  *(a1 + 32) = v24;
  *(a1 + 48) = v16;
  v17 = v27;
  *(a1 + 64) = v26;
  *(a1 + 80) = v17;
  result = v23;
  *a1 = v22;
  *(a1 + 16) = result;
  *(a1 + 128) = v15;
  *(a1 + 136) = v13;
  return result;
}

uint64_t closure #1 in SharingPickerHostModifier.body(content:)(uint64_t a1, unsigned __int8 *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = a3[7];
  v16 = a3[6];
  v17 = v4;
  v18 = *(a3 + 16);
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for State<SharingPickerHostModifier.Model?>, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v5 = v14;
  v15[0] = v7;
  v15[1] = v8;
  v15[5] = v12;
  v16 = v13;
  v15[3] = v10;
  v15[4] = v11;
  v15[2] = v9;
  v17 = v14;
  if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v15) == 1)
  {
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = v22;
  }

  else
  {
    if (v14)
    {
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v7 = v19;
      v8 = v20;
      v9 = v21;
      v10 = v22;

      outlined destroy of SharingPickerHostModifier.Model?(&v7, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
      (v5)(v3);
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, *(&v5 + 1));
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = v22;
    *&v14 = 0;
  }

  *(&v14 + 1) = *(&v5 + 1);
  return outlined destroy of SharingPickerHostModifier.Model?(&v7, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
}

uint64_t protocol witness for Projection.get(base:) in conformance ToBool@<X0>(_OWORD *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[5];
  v11 = a1[4];
  v12 = v3;
  v4 = a1[7];
  v13 = a1[6];
  v14 = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  result = _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v10);
  v9 = result != 1 && *(&v11 + 1) != 1;
  *a2 = v9;
  return result;
}

void protocol witness for Projection.set(base:newValue:) in conformance ToBool(_OWORD *a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = a1[5];
    v11[4] = a1[4];
    v11[5] = v3;
    v4 = a1[7];
    v11[6] = a1[6];
    v11[7] = v4;
    v5 = a1[1];
    v11[0] = *a1;
    v11[1] = v5;
    v6 = a1[3];
    v11[2] = a1[2];
    v11[3] = v6;
    outlined destroy of SharingPickerHostModifier.Model?(v11, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
    _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(v12);
    v7 = v12[5];
    a1[4] = v12[4];
    a1[5] = v7;
    v8 = v12[7];
    a1[6] = v12[6];
    a1[7] = v8;
    v9 = v12[1];
    *a1 = v12[0];
    a1[1] = v9;
    v10 = v12[3];
    a1[2] = v12[2];
    a1[3] = v10;
  }
}

uint64_t protocol witness for Projection.get(base:) in conformance ToConfiguration@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v20 = a1[4];
  v21 = v3;
  v4 = a1[7];
  v22 = a1[6];
  v23 = v4;
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  v6 = a1[3];
  v18 = a1[2];
  v19 = v6;
  result = _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(&v16);
  if (result == 1)
  {
    v8 = xmmword_18CD633F0;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    result = outlined init with copy of AnyIdentifiableShareConfiguration?(&v16, &v15);
    v9 = v16;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    v8 = v20;
    v13 = v21;
    v14 = v22;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v8;
  a2[5] = v13;
  a2[6] = v14;
  return result;
}

__n128 protocol witness for Projection.set(base:newValue:) in conformance ToConfiguration(__n128 *a1, __n128 *a2)
{
  v3 = a2[5];
  v24 = a2[4];
  v25 = v3;
  v26 = a2[6];
  v4 = a2[1];
  v20 = *a2;
  v21 = v4;
  v5 = a2[3];
  v22 = a2[2];
  v23 = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  v27[2] = a1[2];
  v27[3] = v8;
  v27[0] = v6;
  v27[1] = v7;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[7];
  v27[6] = a1[6];
  v27[7] = v11;
  v27[4] = v9;
  v27[5] = v10;
  if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v27) != 1)
  {
    v13 = a1[5];
    v19[4] = a1[4];
    v19[5] = v13;
    v19[6] = a1[6];
    v14 = a1[1];
    v19[0] = *a1;
    v19[1] = v14;
    v15 = a1[3];
    v19[2] = a1[2];
    v19[3] = v15;
    outlined init with copy of AnyIdentifiableShareConfiguration?(&v20, &v18);
    outlined destroy of SharingPickerHostModifier.Model?(v19, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
    v16 = v25;
    a1[4] = v24;
    a1[5] = v16;
    a1[6] = v26;
    v17 = v21;
    *a1 = v20;
    a1[1] = v17;
    result = v23;
    a1[2] = v22;
    a1[3] = result;
  }

  return result;
}

uint64_t outlined init with copy of AnyIdentifiableShareConfiguration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (Binding<Bool>, AnyIdentifiableShareConfiguration)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Binding<Bool>, AnyIdentifiableShareConfiguration))
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Binding<Bool>, AnyIdentifiableShareConfiguration));
    }
  }
}

uint64_t assignWithCopy for SharingPickerSource(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v26 = a2[9];
  v27 = a2[10];
  v28 = a2[11];
  v29 = a2[12];
  v30 = a2[13];
  v31 = a2[14];
  v32 = a2[15];
  v33 = a2[16];
  outlined copy of SharingPickerSource(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v26, v27, v28, v29, v30, v31, v32, v33);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  v24 = *(a1 + 128);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  *(a1 + 128) = v33;
  outlined consume of SharingPickerSource(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24);
  return a1;
}

uint64_t assignWithTake for SharingPickerSource(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  v16 = *(a1 + 128);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  v20 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v20;
  *(a1 + 128) = v3;
  outlined consume of SharingPickerSource(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharingPickerSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 136))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SharingPickerSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<UnidentifiedSharingPickerModifier>, lazy protocol witness table accessor for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier, &unk_1EFFA8E08);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = &protocol witness table for SharingActivityPickerModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<UnidentifiedSharingPickerModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<UnidentifiedSharingPickerModifier>, lazy protocol witness table accessor for type UnidentifiedSharingPickerModifier and conformance UnidentifiedSharingPickerModifier, &unk_1EFFA8E08, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<UnidentifiedSharingPickerModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata completion function for ReferenceFileDocumentCreationStrategy(uint64_t a1)
{
  type metadata accessor for UTType?(319, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void *FileDocumentCreationStrategy.init(contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v32 = a5;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v31 = type metadata accessor for UUID();
  v9 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FileDocumentCreationStrategy(0, a4, a5, v12);
  v14 = v13[9];
  v30 = v14;
  v15 = type metadata accessor for UTType();
  (*(*(v15 - 8) + 56))(&a6[v14], 1, 1, v15);
  v33 = &a6[v13[10]];
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v37 = 0x3A49557466697753;
  v38 = 0xE800000000000000;
  v16 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v16);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD43500);
  v18 = v37;
  v17 = v38;
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v9 + 8))(v11, v31);
  v37 = v18;
  v38 = v17;

  MEMORY[0x18D00C9B0](v19, v21);

  v22 = v38;
  *a6 = v37;
  *(a6 + 1) = v22;
  v23 = v34;
  outlined assign with copy of UTType?(v34, &a6[v30]);
  v24 = v32;
  v25 = (*(v32 + 16))(a4);
  outlined destroy of URL?(v23, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  *&a6[v13[11]] = v25;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = v24;
  v27 = v36;
  result[4] = v35;
  result[5] = v27;
  v28 = v33;
  *v33 = &async function pointer to partial apply for closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:);
  *(v28 + 1) = result;
  return result;
}

uint64_t closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for Optional();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = *(a4 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:), 0, 0);
}

uint64_t closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  v7 = *(v4 + 24);
  *(v4 + 104) = **(v4 + 16);
  type metadata accessor for FileDocumentBox(0, v5, v6, a4);
  *(v4 + 112) = swift_dynamicCastClassUnconditional();
  swift_unknownObjectRetain();
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v4 + 120) = v8;
  *v8 = v4;
  v8[1] = closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:);
  v9 = *(v4 + 80);

  return v11(v9);
}

uint64_t closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:)()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  else
  {
    v2 = closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0 + 11;
  v2 = v0[11];
  v3 = v0[10];
  v5 = v0 + 5;
  v4 = v0[5];
  v6 = (*(v2 + 48))(v3, 1, v4);
  v7 = v0[12];
  if (v6 == 1)
  {
    v1 = v0 + 8;
    v5 = v0 + 7;
    v8 = v3;
  }

  else
  {
    v10 = v0[8];
    v9 = v0[9];
    v15 = v0[7];
    (*(v2 + 32))(v7, v3, v4);
    (*(v2 + 16))(v9, v7, v4);
    (*(v2 + 56))(v9, 0, 1, v4);
    specialized FileDocumentBox.base.setter(v9);
    (*(v10 + 8))(v9, v15);
    v8 = v0[12];
  }

  v11 = *v5;
  v12 = *v1;
  swift_unknownObjectRelease();
  (*(v12 + 8))(v8, v11);

  v13 = v0[1];

  return v13();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for DocumentCreationStrategy.newDocumentProvider.getter in conformance FileDocumentCreationStrategy<A>(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  outlined copy of AppIntentExecutor?(*v2, v2[1]);
  return v3;
}

uint64_t ReferenceFileDocumentCreationStrategy.__allocating_init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(a1, a2, a3);
  return v6;
}

void *ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v30 = *v3;
  v5 = v30;
  v31 = type metadata accessor for UUID();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = direct field offset for ReferenceFileDocumentCreationStrategy.preferredContentType;
  v32 = direct field offset for ReferenceFileDocumentCreationStrategy.preferredContentType;
  v10 = type metadata accessor for UTType();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  v11 = (v4 + direct field offset for ReferenceFileDocumentCreationStrategy.newDocumentProvider);
  *v11 = 0;
  v11[1] = 0;
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v36 = 0x3A49557466697753;
  v37 = 0xE800000000000000;
  v12 = *(v5 + 80);
  v13 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v13);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD43500);
  v14 = v36;
  v15 = v37;
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v6 + 8))(v8, v31);
  v36 = v14;
  v37 = v15;

  MEMORY[0x18D00C9B0](v16, v18);

  v19 = v37;
  v4[2] = v36;
  v4[3] = v19;
  v20 = v32;
  swift_beginAccess();
  v21 = v33;
  outlined assign with copy of UTType?(v33, v4 + v20);
  swift_endAccess();
  v22 = *(v30 + 88);
  v23 = (*(v22 + 32))(v12, v22);
  outlined destroy of URL?(v21, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  *(v4 + direct field offset for ReferenceFileDocumentCreationStrategy.allowedContentTypes) = v23;
  v24 = swift_allocObject();
  v24[2] = v12;
  v24[3] = v22;
  v25 = v35;
  v24[4] = v34;
  v24[5] = v25;
  v27 = *v11;
  v26 = v11[1];
  *v11 = &async function pointer to partial apply for closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:);
  v11[1] = v24;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27, v26);
  return v4;
}

uint64_t closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:), 0, 0);
}

uint64_t closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  v7 = *(v4 + 24);
  *(v4 + 56) = **(v4 + 16);
  type metadata accessor for ReferenceFileDocumentBox(0, v5, v6, a4);
  *(v4 + 64) = swift_dynamicCastClassUnconditional();
  swift_unknownObjectRetain();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v4 + 72) = v8;
  *v8 = v4;
  v8[1] = closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:);

  return v10();
}

uint64_t closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  else
  {
    v4 = closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)()
{
  if (*(v0 + 80))
  {
    v1 = swift_unknownObjectRetain();
    specialized ReferenceFileDocumentBox.base.setter(v1);
    swift_unknownObjectRelease_n();
  }

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ReferenceFileDocumentCreationStrategy.deinit()
{

  outlined destroy of URL?(v0 + direct field offset for ReferenceFileDocumentCreationStrategy.preferredContentType, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + direct field offset for ReferenceFileDocumentCreationStrategy.newDocumentProvider), *(v0 + direct field offset for ReferenceFileDocumentCreationStrategy.newDocumentProvider + 8));

  return v0;
}

double ReferenceFileDocumentCreationStrategy.__deallocating_deinit()
{
  ReferenceFileDocumentCreationStrategy.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for DocumentCreationStrategy.id.getter in conformance ReferenceFileDocumentCreationStrategy<A>()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t protocol witness for DocumentCreationStrategy.preferredContentType.getter in conformance ReferenceFileDocumentCreationStrategy<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for ReferenceFileDocumentCreationStrategy.preferredContentType;
  swift_beginAccess();
  return outlined init with copy of UTType?(v3 + v4, a1, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
}

uint64_t protocol witness for DocumentCreationStrategy.newDocumentProvider.getter in conformance ReferenceFileDocumentCreationStrategy<A>()
{
  v1 = (*v0 + direct field offset for ReferenceFileDocumentCreationStrategy.newDocumentProvider);
  v2 = *v1;
  outlined copy of AppIntentExecutor?(*v1, v1[1]);
  return v2;
}

double protocol witness for Identifiable.id.getter in conformance ReferenceFileDocumentCreationStrategy<A>@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t closure #1 in static URLDocumentCreationStrategy.defaultDocumentProvider(contentType:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for UTType();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in static URLDocumentCreationStrategy.defaultDocumentProvider(contentType:), 0, 0);
}

uint64_t closure #1 in static URLDocumentCreationStrategy.defaultDocumentProvider(contentType:)()
{
  v1 = v0[13];
  v2 = v0[14];
  v42 = v0[12];
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v44._object = 0x800000018CD43470;
  v5.value._countAndFlagsBits = 0x746E656D75636F44;
  v6._countAndFlagsBits = 0x64656C7469746E55;
  v6._object = 0xE800000000000000;
  v5.value._object = 0xE900000000000073;
  v7._countAndFlagsBits = 0x64656C7469746E55;
  v7._object = 0xE800000000000000;
  v44._countAndFlagsBits = 0xD00000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v44);

  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  v10 = [v9 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:conformingTo:)();

  v11 = [v8 defaultManager];
  static UTType.package.getter();
  v12 = UTType.conforms(to:)();
  (*(v1 + 8))(v2, v42);
  if (v12)
  {
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    v0[7] = 0;
    v16 = [v11 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v0 + 7];

    v17 = v0[7];
    v18 = v0[18];
    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[15];
    if (v16)
    {
      v22 = v17;
    }

    else
    {
      v37 = v17;
      v38 = _convertNSErrorToError(_:)();

      swift_willThrow();
      _StringGuts.grow(_:)(47);
      v0[5] = 0;
      v0[6] = 0xE000000000000000;
      MEMORY[0x18D00C9B0](0xD00000000000002DLL, 0x800000018CD434B0);
      v0[8] = v38;
      type metadata accessor for Error();
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x18D009810](v0[5], v0[6]);
    }

    v39 = *(v19 + 8);
    v39(v20, v21);
    v39(v18, v21);
  }

  else
  {
    v23 = URL.path.getter();
    v24 = MEMORY[0x18D00C850](v23);

    v25 = [v11 createFileAtPath:v24 contents:0 attributes:0];

    if ((v25 & 1) == 0)
    {
      _StringGuts.grow(_:)(33);

      v26 = URL.path.getter();
      MEMORY[0x18D00C9B0](v26);

      MEMORY[0x18D009810](0xD00000000000001FLL, 0x800000018CD43490);
    }

    v27 = v0[16];
    v28 = v0[17];
    v29 = v0[15];
    v30 = v0[9];

    v31 = *(v27 + 8);
    v31(v28, v29);
    v32 = *v30;
    if (object_getClass(*v30) == _TtC7SwiftUI14URLDocumentBox && v32)
    {
      if (object_getClass(v32) != _TtC7SwiftUI14URLDocumentBox)
      {
        __break(1u);
      }

      v33 = v0[15];
      v34 = v0[16];
      v35 = v0[11];
      (*(v34 + 32))(v35, v0[18], v33);
      (*(v34 + 56))(v35, 0, 1, v33);
      v36 = OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base;
      swift_beginAccess();
      outlined assign with take of URL?(v35, v32 + v36);
      swift_endAccess();
    }

    else
    {
      v31(v0[18], v0[15]);
    }
  }

  v40 = v0[1];

  return v40();
}

uint64_t URLDocumentCreationStrategy.init(contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v37 = a1;
  v5 = type metadata accessor for UTType();
  v34 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1E69E8450];
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v32 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URLDocumentCreationStrategy(0);
  v15 = *(v14 + 20);
  (*(v6 + 56))(&a4[v15], 1, 1, v5);
  v41 = v14;
  v16 = &a4[*(v14 + 24)];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000018CD434E0;
  MEMORY[0x18D00C9B0](v17, v19);
  v20 = v37;

  v21 = v43;
  *a4 = v42;
  *(a4 + 1) = v21;
  v38 = a4;
  v22 = &a4[v15];
  v24 = v34;
  v23 = v35;
  outlined assign with copy of UTType?(v20, v22);
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 16) = v39;
  *(v25 + 24) = v26;
  *v16 = &async function pointer to partial apply for closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:);
  *(v16 + 1) = v25;
  outlined init with copy of UTType?(v20, v23, &lazy cache variable for type metadata for UTType?, v36);
  if ((*(v6 + 48))(v23, 1, v24) == 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v28 = *(v6 + 32);
    v29 = v33;
    v28(v33, v23, v24);
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
    v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_18CD63400;
    v28((v27 + v30), v29, v24);
  }

  result = outlined destroy of URL?(v20, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  *(v38 + *(v41 + 28)) = v27;
  return result;
}

uint64_t closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:), 0, 0);
}

__objc2_class *closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)()
{
  v1 = v0[5];
  v2 = *v1;
  v0[13] = *v1;
  if (object_getClass(v2) != _TtC7SwiftUI14URLDocumentBox || v2 == 0)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    result = object_getClass(v2);
    if (result == _TtC7SwiftUI14URLDocumentBox)
    {
      v6 = v0[6];
      swift_unknownObjectRetain();
      v9 = (v6 + *v6);
      v7 = swift_task_alloc();
      v0[14] = v7;
      *v7 = v0;
      v7[1] = closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:);
      v8 = v0[9];

      return v9(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  else
  {
    v2 = closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    outlined destroy of URL?(v3, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[8];
    v7 = *(v2 + 32);
    v7(v5, v3, v1);
    v7(v6, v5, v1);
    (*(v2 + 56))(v6, 0, 1, v1);
    v8 = OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base;
    swift_beginAccess();
    outlined assign with take of URL?(v6, v4 + v8);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  v9 = v0[1];

  return v9();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ContentTypeDocumentCreationStrategy.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a1;
  v22 = type metadata accessor for UUID();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentTypeDocumentCreationStrategy(0);
  v7 = *(v6 + 20);
  v8 = v6;
  v27 = v6;
  v9 = type metadata accessor for UTType();
  v25 = *(v9 - 8);
  v26 = v9 - 8;
  v10 = v25;
  v23 = *(v25 + 56);
  v23(&a2[v7], 1, 1, v9);
  v24 = &a2[*(v8 + 24)];
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v3 + 8))(v5, v22);
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000018CD434E0;
  MEMORY[0x18D00C9B0](v11, v13);

  v14 = v30;
  *a2 = v29;
  *(a2 + 1) = v14;
  v15 = MEMORY[0x1E69E8450];
  outlined destroy of URL?(&a2[v7], &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  v16 = v28;
  (*(v10 + 16))(&a2[v7], v28, v9);
  v23(&a2[v7], 0, 1, v9);
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, v15, MEMORY[0x1E69E6F90]);
  v17 = v24;
  *v24 = 0;
  *(v17 + 1) = 0;
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18CD63400;
  result = (*(v10 + 32))(v19 + v18, v16, v9);
  *&a2[*(v27 + 28)] = v19;
  return result;
}

uint64_t DefaultDocumentCreationStrategy.init()@<X0>(char *a1@<X8>)
{
  v18 = type metadata accessor for UUID();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DefaultDocumentCreationStrategy(0);
  v6 = v5[5];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v16 = *(v8 + 56);
  v17 = v8 + 56;
  v16(&a1[v6], 1, 1, v7);
  v9 = &a1[v5[6]];
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v2 + 8))(v4, v18);
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000018CD434E0;
  MEMORY[0x18D00C9B0](v10, v12);

  v13 = v20;
  *a1 = v19;
  *(a1 + 1) = v13;
  outlined destroy of URL?(&a1[v6], &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  result = (v16)(&a1[v6], 1, 1, v7);
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a1[v5[7]] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t protocol witness for DocumentCreationStrategy.newDocumentProvider.getter in conformance URLDocumentCreationStrategy(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  outlined copy of AppIntentExecutor?(*v2, v2[1]);
  return v3;
}

double URLDocumentBox.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);

  swift_deallocClassInstance();
  return result;
}

void type metadata completion function for URLDocumentBox(uint64_t a1)
{
  type metadata accessor for UTType?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for FileDocumentCreationStrategy(uint64_t a1)
{
  type metadata accessor for UTType?(319, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeBufferWithCopyOfBuffer for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[9];
    v9 = type metadata accessor for UTType();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v14 = a3[10];
    v15 = &v4[v14];
    v16 = &a2[v14];
    if (*v16)
    {
      v17 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v17;
    }

    else
    {
      *v15 = *v16;
    }

    *&v4[a3[11]] = *&a2[a3[11]];
  }

  return v4;
}

uint64_t destroy for FileDocumentCreationStrategy(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 36);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  if (*(a1 + *(a2 + 40)))
  {
  }
}

char *initializeWithCopy for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[9];
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(&a2[v7], 1, v8))
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v12 = a3[10];
  v13 = &a1[v12];
  v14 = &a2[v12];
  if (*v14)
  {
    v15 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v15;
  }

  else
  {
    *v13 = *v14;
  }

  *&a1[a3[11]] = *&a2[a3[11]];

  return a1;
}

char *assignWithCopy for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[9];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
LABEL_7:
  v13 = a3[10];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *&a1[v13];
  v17 = *&a2[v13];
  if (!v16)
  {
    if (v17)
    {
      v19 = *(v15 + 1);
      *v14 = v17;
      *(v14 + 1) = v19;

      goto LABEL_14;
    }

LABEL_13:
    *v14 = *v15;
    goto LABEL_14;
  }

  if (!v17)
  {
    outlined destroy of AsyncNewDocumentProvider(v14);
    goto LABEL_13;
  }

  v18 = *(v15 + 1);
  *v14 = v17;
  *(v14 + 1) = v18;

LABEL_14:
  *&a1[a3[11]] = *&a2[a3[11]];

  return a1;
}

char *initializeWithTake for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[9];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  *&a1[v10] = *&a2[v10];
  return a1;
}

char *assignWithTake for FileDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[9];
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = a3[10];
  v15 = &a1[v14];
  v16 = &a2[v14];
  if (!*&a1[v14])
  {
LABEL_11:
    *v15 = *v16;
    goto LABEL_12;
  }

  if (!*v16)
  {
    outlined destroy of AsyncNewDocumentProvider(v15);
    goto LABEL_11;
  }

  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;

LABEL_12:
  *&a1[a3[11]] = *&a2[a3[11]];

  return a1;
}

char *initializeBufferWithCopyOfBuffer for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = type metadata accessor for UTType();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v14 = a3[6];
    v15 = &v4[v14];
    v16 = &a2[v14];
    if (*v16)
    {
      v17 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v17;
    }

    else
    {
      *v15 = *v16;
    }

    *&v4[a3[7]] = *&a2[a3[7]];
  }

  return v4;
}

char *initializeWithCopy for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(&a2[v7], 1, v8))
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v12 = a3[6];
  v13 = &a1[v12];
  v14 = &a2[v12];
  if (*v14)
  {
    v15 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v15;
  }

  else
  {
    *v13 = *v14;
  }

  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

char *assignWithCopy for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
LABEL_7:
  v13 = a3[6];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *&a1[v13];
  v17 = *&a2[v13];
  if (!v16)
  {
    if (v17)
    {
      v19 = *(v15 + 1);
      *v14 = v17;
      *(v14 + 1) = v19;

      goto LABEL_14;
    }

LABEL_13:
    *v14 = *v15;
    goto LABEL_14;
  }

  if (!v17)
  {
    outlined destroy of AsyncNewDocumentProvider(v14);
    goto LABEL_13;
  }

  v18 = *(v15 + 1);
  *v14 = v17;
  *(v14 + 1) = v18;

LABEL_14:
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

char *initializeWithTake for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v10] = *&a2[v10];
  return a1;
}

char *assignWithTake for URLDocumentCreationStrategy(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = a3[6];
  v15 = &a1[v14];
  v16 = &a2[v14];
  if (!*&a1[v14])
  {
LABEL_11:
    *v15 = *v16;
    goto LABEL_12;
  }

  if (!*v16)
  {
    outlined destroy of AsyncNewDocumentProvider(v15);
    goto LABEL_11;
  }

  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;

LABEL_12:
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

void type metadata completion function for URLDocumentCreationStrategy(uint64_t a1)
{
  type metadata accessor for UTType?(319, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t destroy for URLDocumentCreationStrategy(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  if (*(a1 + *(a2 + 24)))
  {
  }
}

uint64_t protocol witness for DocumentBaseBox.base.getter in conformance URLDocumentBox@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base;
  swift_beginAccess();
  return outlined init with copy of UTType?(v1 + v3, a1, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
}

uint64_t protocol witness for DocumentBaseBox.base.setter in conformance URLDocumentBox(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI14URLDocumentBox_base;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t instantiation function for generic protocol witness table for URLDocumentCreationStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy(&lazy protocol witness table cache variable for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy, type metadata accessor for URLDocumentCreationStrategy, protocol conformance descriptor for URLDocumentCreationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ReferenceFileDocumentCreationStrategy<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ReferenceFileDocumentCreationStrategy<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FileDocumentCreationStrategy<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for FileDocumentCreationStrategy<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ContentTypeDocumentCreationStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy(&lazy protocol witness table cache variable for type ContentTypeDocumentCreationStrategy and conformance ContentTypeDocumentCreationStrategy, type metadata accessor for ContentTypeDocumentCreationStrategy, protocol conformance descriptor for ContentTypeDocumentCreationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t instantiation function for generic protocol witness table for DefaultDocumentCreationStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy(&lazy protocol witness table cache variable for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy, type metadata accessor for DefaultDocumentCreationStrategy, protocol conformance descriptor for DefaultDocumentCreationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of UTType?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for UTType?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of UTType?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in URLDocumentCreationStrategy.init(contentType:prepareDocument:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in ReferenceFileDocumentCreationStrategy.init(contentType:prepareDocument:)(a1, v7, v6, v4, v5);
}

uint64_t partial apply for closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in FileDocumentCreationStrategy.init(contentType:prepareDocument:)(a1, v7, v6, v4, v5);
}

uint64_t GestureState.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  GestureState.init(wrappedValue:resetTransaction:)(v9, 0, a2, a3);
  return (*(v6 + 8))(a1, a2);
}

double Gesture.updating<A>(_:body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v9 = v8;
  v25 = a2;
  v26 = a6;
  v15 = type metadata accessor for GestureState(0, a5, a3, a4);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v9, a4, v20);
  (*(v16 + 16))(v18, a1, v15);
  GestureStateGesture.init(base:state:body:)(v22, v18, v25, a3, a4, a5, v26, x8_0);

  return result;
}

uint64_t GestureState.init(wrappedValue:resetTransaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  State.init(wrappedValue:)();
  v11 = *(v8 + 32);
  v11(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  v11((v13 + v12), &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  result = type metadata accessor for GestureState(0, a3, v14, v15);
  v17 = (a4 + *(result + 28));
  *v17 = partial apply for closure #1 in GestureState.init(wrappedValue:resetTransaction:);
  v17[1] = v13;
  return result;
}

uint64_t closure #1 in GestureState.init(wrappedValue:resetTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Binding();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  Binding.transaction(_:)();
  specialized Binding.wrappedValue.setter(a3);
  return (*(v6 + 8))(v8, v5);
}

uint64_t GestureState.init(wrappedValue:reset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v12);
  State.init(wrappedValue:)();
  v14 = *(v10 + 32);
  v14(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a2;
  *(v16 + 4) = a3;
  v14(v16 + v15, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  result = type metadata accessor for GestureState(0, a4, v17, v18);
  v20 = (a5 + *(result + 28));
  *v20 = partial apply for closure #1 in GestureState.init(wrappedValue:reset:);
  v20[1] = v16;
  return result;
}

uint64_t closure #1 in GestureState.init(wrappedValue:reset:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Binding();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v13 + 16))(&v18 - v15, a1, v12, v14);
  MEMORY[0x18D00ACC0](v12);
  a2(v11, v16);
  (*(v9 + 8))(v11, a5);
  specialized Binding.wrappedValue.setter(a4);
  return (*(v13 + 8))(v16, v12);
}

void *GestureState.wrappedValue.getter()
{
  type metadata accessor for State();

  return State.wrappedValue.getter();
}

uint64_t GestureState<A>.init(resetTransaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ExpressibleByNilLiteral.init(nilLiteral:)();
  return GestureState.init(wrappedValue:resetTransaction:)(v7, a1, a2, a3);
}

uint64_t GestureState<A>.init(reset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ExpressibleByNilLiteral.init(nilLiteral:)();
  return GestureState.init(wrappedValue:reset:)(v9, a1, a2, a3, a4);
}

uint64_t GestureStateGesture.init(base:state:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v15 = type metadata accessor for GestureStateGesture(0, a5, a6, a7);
  v16 = *(v15 + 44);
  v19 = type metadata accessor for GestureState(0, a6, v17, v18);
  result = (*(*(v19 - 8) + 32))(a8 + v16, a2, v19);
  v21 = (a8 + *(v15 + 48));
  *v21 = a3;
  v21[1] = a4;
  return result;
}

uint64_t GestureStateGesture.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 44);
  v7 = type metadata accessor for GestureState(0, *(a1 + 24), a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t GestureStateGesture.state.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 44);
  v7 = type metadata accessor for GestureState(0, *(a2 + 24), a3, a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

double key path getter for GestureStateGesture.body : <A, B>GestureStateGesture<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 24);
  v6 = *(a2 + a3 - 16);
  v7 = *(a2 + a3 - 8);
  v8 = (a1 + *(type metadata accessor for GestureStateGesture(0, v5, v6, v7) + 48));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 4) = v7;
  *(v11 + 5) = v10;
  *(v11 + 6) = v9;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Gesture.Value, @inout B, @inout Transaction) -> ();
  a4[1] = v11;

  return result;
}

void key path setter for GestureStateGesture.body : <A, B>GestureStateGesture<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 2) = v5;
  *(v10 + 3) = v6;
  *(v10 + 4) = v7;
  *(v10 + 5) = v9;
  *(v10 + 6) = v8;
  v11 = (a2 + *(type metadata accessor for GestureStateGesture(0, v5, v6, v7) + 48));

  *v11 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Gesture.Value, @inout B, @inout Transaction) -> (@out ());
  v11[1] = v10;
}

uint64_t GestureStateGesture.body.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

void GestureStateGesture.body.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 48));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t static GestureStateGesture._makeGesture(gesture:inputs:)(unsigned int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = a2[5];
  v9 = a2[3];
  v61 = a2[4];
  v62 = v8;
  v10 = a2[5];
  *v63 = a2[6];
  *&v63[12] = *(a2 + 108);
  v11 = a2[1];
  v58[0] = *a2;
  v58[1] = v11;
  v12 = a2[3];
  v14 = *a2;
  v13 = a2[1];
  v59 = a2[2];
  v60 = v12;
  v50 = v61;
  v51 = v10;
  v52 = a2[6];
  v46 = v14;
  v47 = v13;
  v25 = v63[24];
  v53 = *(a2 + 14);
  v48 = v59;
  v49 = v9;
  v15 = *&v63[24] | 0x20;
  v27 = *&v63[24] | 0x20;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  outlined init with copy of _GestureInputs(v58, &v39);
  type metadata accessor for GestureStateGesture(255, a3, a4, a5);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  *&v36[16] = v53;
  v35[5] = v51;
  *v36 = v52;
  v35[0] = v46;
  v35[1] = v47;
  v35[2] = v48;
  v35[3] = v49;
  v35[4] = v50;
  *&v36[24] = v15;
  v43 = v50;
  v44 = v51;
  *v45 = v52;
  *&v45[12] = *&v36[12];
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  outlined init with copy of _GestureInputs(v35, v37);
  static Gesture.makeDebuggableGesture(gesture:inputs:)();
  v37[4] = v43;
  v37[5] = v44;
  *v38 = *v45;
  *&v38[12] = *&v45[12];
  v37[0] = v39;
  v37[1] = v40;
  v37[2] = v41;
  v37[3] = v42;
  outlined destroy of _GestureInputs(v37);
  v16 = v54;
  v17 = DWORD1(v54);
  v18 = *(&v54 + 1);
  v19 = v55;
  v20 = _GraphValue.value.getter();
  *&v39 = __PAIR64__(v17, v16);
  *(&v39 + 1) = v18;
  LODWORD(v40) = v19;
  swift_getAssociatedTypeWitness();
  type metadata accessor for _GestureOutputs();
  *&v54 = __PAIR64__(_GestureOutputs.phase.getter(), v20);
  DWORD2(v54) = *&v63[16];
  BYTE12(v54) = (v25 & 0x10) != 0;
  LODWORD(v55) = 0;
  v57 = 0;
  v56 = 0;
  v39 = v54;
  v40 = v55;
  *&v41 = 0;
  v29 = type metadata accessor for GesturePhase();
  v21 = type metadata accessor for GestureStatePhase(0, a3, a4, a5);
  v30 = v21;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GestureStatePhase<A, B>, v21);
  v22 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v39, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v28, v21, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  (*(*(v21 - 8) + 8))(&v54, v21);
  AGGraphGetFlags();
  AGGraphSetFlags();
  _GestureOutputs.withPhase<A>(_:)();
  v43 = v50;
  v44 = v51;
  *v45 = v52;
  *&v45[16] = v53;
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  *&v45[24] = v27;
  outlined destroy of _GestureInputs(&v39);
}

uint64_t closure #1 in static GestureStateGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for GestureStateGesture(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t GestureStatePhase.gesture.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for GestureStateGesture(0, a1[2], a1[3], a1[4]);
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t GestureStatePhase.phase.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t GestureStatePhase.updateValue()(void *a1)
{
  v2 = v1;
  v106 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  v5 = a1[4];
  v98 = a1[3];
  v96 = type metadata accessor for GestureStateGesture(0, v4, v98, v5);
  v92 = *(v96 - 8);
  v6 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v91 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v73 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  v13 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v90 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v73 - v15;
  v93 = v16;
  v17 = type metadata accessor for GesturePhase();
  v100 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v73 - v21;
  swift_getWitnessTable(protocol conformance descriptor for GestureStatePhase<A, B>, a1, v20);
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v24 = *(v1 + 16);
    v104[0] = *v1;
    v104[1] = v24;
    v105 = *(v1 + 32);
    GestureStatePhase.phase.getter(v22);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        GestureStatePhase.resetPhase(mayDefer:)(0);
LABEL_14:
        v63 = v100;
        goto LABEL_15;
      }

      GestureStatePhase.resetPhase(mayDefer:)(1);
    }

    else if (EnumCaseMultiPayload)
    {
      v86 = v17;
      LODWORD(v85) = BYTE12(v104[0]);
      v26 = *(v95 + 32);
      v83 = v95 + 32;
      v82 = v26;
      v26(v94, v22, v93);
      AGGraphClearUpdate();
      v27 = v97;
      closure #1 in GestureStatePhase.updateValue()(v1, v4, v98, v5, v97);
      AGGraphSetUpdate();
      type metadata accessor for Binding();
      v87 = swift_allocBox();
      v84 = v28;
      v89 = v5;
      v29 = v96;
      v88 = *(v96 + 44);
      type metadata accessor for State();
      State.projectedValue.getter();
      v88 = v4;
      v30 = v92;
      v31 = *(v92 + 16);
      v77 = v92 + 16;
      v76 = v31;
      v31(v9, v27, v29);
      v32 = *(v30 + 80);
      v33 = (v32 + 40) & ~v32;
      v78 = v32;
      v81 = v32 | 7;
      v34 = swift_allocObject();
      v35 = v98;
      *(v34 + 2) = v88;
      *(v34 + 3) = v35;
      *(v34 + 4) = v89;
      v36 = *(v30 + 32);
      v80 = v30 + 32;
      v79 = v36;
      v36(&v34[v33], v9, v29);
      *&v34[(v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8] = v87;
      v37 = *(*(a1 - 1) + 8);

      v37(v104, a1);
      v38 = v98;
      *(v2 + 24) = partial apply for closure #2 in GestureStatePhase.updateValue();
      *(v2 + 32) = v34;
      v39 = swift_allocBox();
      v41 = v40;
      LOBYTE(v101) = 17;
      MEMORY[0x1EEE9AC00](v39);
      *(&v73 - 4) = v88;
      *(&v73 - 3) = v38;
      v42 = v84;
      *(&v73 - 2) = v89;
      *(&v73 - 1) = v42;
      static Update.dispatchImmediately<A>(reason:_:)();
      swift_beginAccess();
      Transaction.tracksVelocity.setter();
      swift_endAccess();
      if (v85)
      {
        v43 = v78;
        v74 = ~v78;
        type metadata accessor for GraphHost();
        v44 = MEMORY[0x18D00B7D0]();
        type metadata accessor for GestureGraph();
        v84 = v44;
        v75 = swift_dynamicCastClassUnconditional();
        v45 = v91;
        v46 = v96;
        v76(v91, v97, v96);
        v85 = v39;
        v47 = v95 + 16;
        v48 = v90;
        v49 = v93;
        (*(v95 + 16))(v90, v94, v93);
        v50 = (v43 + 56) & v74;
        v51 = *(v47 + 64);
        v52 = v85;
        v53 = (v50 + v6 + v51) & ~v51;
        v54 = swift_allocObject();
        v55 = v98;
        *(v54 + 2) = v88;
        *(v54 + 3) = v55;
        v56 = v87;
        *(v54 + 4) = v89;
        *(v54 + 5) = v56;
        *(v54 + 6) = v52;
        v79(&v54[v50], v45, v46);
        v82(&v54[v53], v48, v49);
        v57 = v75;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v58 = *(v57 + 200);
          ObjectType = swift_getObjectType();
          v60 = *(v58 + 8);

          v61 = ObjectType;
          v62 = v93;
          v60(partial apply for closure #4 in GestureStatePhase.updateValue(), v54, v61, v58);

          swift_unknownObjectRelease();
        }

        else
        {
          v62 = v49;
        }

        v17 = v86;
        (*(v95 + 8))(v94, v62);
        (*(v92 + 8))(v97, v46);
      }

      else
      {
        v64 = *(v97 + *(v96 + 48));
        swift_beginAccess();
        v65 = v94;
        v64(v94, v41, v42);
        swift_endAccess();
        LOBYTE(v101) = 17;
        v66 = swift_allocObject();
        v66[2] = v88;
        v66[3] = v38;
        v67 = v87;
        v66[4] = v89;
        v66[5] = v67;
        v66[6] = v39;

        static Update.enqueueAction(reason:_:)();

        (*(v95 + 8))(v65, v93);
        (*(v92 + 8))(v97, v96);

        v17 = v86;
      }

      goto LABEL_14;
    }

    v63 = v100;
    (*(v100 + 8))(v22, v17);
LABEL_15:
    v68 = *(v2 + 16);
    v101 = *v2;
    v102 = v68;
    v103 = *(v2 + 32);
    v69 = v99;
    v70 = GestureStatePhase.phase.getter(v99);
    v71 = MEMORY[0x1EEE9AC00](v70);
    *(&v73 - 2) = a1;
    *(&v73 - 1) = swift_getWitnessTable(protocol conformance descriptor for GestureStatePhase<A, B>, a1, v71);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v69, partial apply for closure #1 in StatefulRule.value.setter, (&v73 - 4), v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v72);
    return (*(v63 + 8))(v69, v17);
  }

  return result;
}

uint64_t closure #1 in GestureStatePhase.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v13 = *(a1 + 32);
  outlined copy of AppIntentExecutor?(*(&v9 + 1), v13);
  v10 = type metadata accessor for GestureStatePhase(0, a2, a3, a4);
  GestureStatePhase.gesture.getter(v10, a5);
  return (*(*(v10 - 1) + 8))(v12, v10);
}

uint64_t closure #2 in GestureStatePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Binding();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = swift_projectBox();
  v14 = a1 + *(type metadata accessor for GestureStateGesture(0, a3, a4, a5) + 44);
  v17 = *(v14 + *(type metadata accessor for GestureState(0, a4, v15, v16) + 28));
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v17(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #3 in GestureStatePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Binding();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  swift_beginAccess();
  (*(v5 + 16))(v7, a1, v4);
  MEMORY[0x18D00ACC0](v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #4 in GestureStatePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a3;
  v22 = a4;
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Binding();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v17 = swift_projectBox();
  v18 = swift_projectBox();
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  swift_beginAccess();
  (*(v10 + 16))(v12, v18, a6);
  v19 = type metadata accessor for GestureStateGesture(0, a5, a6, a7);
  (*(v21 + *(v19 + 48)))(v22, v12, v16);
  specialized Binding.wrappedValue.setter(v12);
  (*(v10 + 8))(v12, a6);
  return (*(v14 + 8))(v16, v13);
}

uint64_t closure #5 in GestureStatePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Binding();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  v12 = swift_projectBox();
  v13 = swift_projectBox();
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  swift_beginAccess();
  (*(v5 + 16))(v7, v13, a4);
  specialized Binding.wrappedValue.setter(v7);
  (*(v5 + 8))(v7, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t GestureStatePhase.resetPhase(mayDefer:)(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    if ((result & 1) != 0 && *(v1 + 12) == 1)
    {
      type metadata accessor for GraphHost();

      MEMORY[0x18D00B7D0](v4);
      type metadata accessor for GestureGraph();
      v5 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 200);
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v2, v3, ObjectType, v6);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2, v3);
        swift_unknownObjectRelease();
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2, v3);
      }
    }

    else
    {

      static Update.enqueueAction(reason:_:)();
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2, v3);
    }

    result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2, v3);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t static GestureStatePhase.willRemove(attribute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AGGraphGetAttributeInfo();
  type metadata accessor for GestureStatePhase(0, a2, a3, a4);
  return GestureStatePhase.resetPhase(mayDefer:)(0);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance GestureStatePhase<A, B>@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for GesturePhase();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t type metadata completion function for GestureState(uint64_t a1)
{
  result = type metadata accessor for State();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for GestureState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v4 + 80);
  if ((v7 & 0x1000F8) != 0 || ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    v3 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    v10 = v6 + 8;
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    v14 = ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v14[1] = v13;
  }

  return v3;
}

double destroy for GestureState(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for GestureState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a1 + v7 + 7;
  v9 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = v9[1];
  v12 = (v8 & 0xFFFFFFFFFFFFFFF8);
  *v12 = v10;
  v12[1] = v11;

  return a1;
}

uint64_t assignWithCopy for GestureState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t initializeWithTake for GestureState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *((a1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for GestureState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  *((a1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for GestureState(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v16) + 1;
}

void storeEnumTagSinglePayload for GestureState(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
    v15 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = a3 - v8;
    if (((v9 + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v15 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v19 = v9 + 8;
      if (v6 < 0x7FFFFFFF)
      {
        v22 = (&a1[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v22 = a2 & 0x7FFFFFFF;
          v22[1] = 0;
        }

        else
        {
          *v22 = a2 - 1;
        }
      }

      else if (v7 >= a2)
      {
        v23 = *(v5 + 56);

        v23();
      }

      else if (v9 != -8)
      {
        v20 = ~v7 + a2;
        v21 = a1;
        bzero(a1, v19);
        *v21 = v20;
      }

      return;
    }
  }

  if (((v9 + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v8 + a2;
    v18 = a1;
    bzero(a1, ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t type metadata completion function for GestureStateGesture(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for GestureState(319, *(a1 + 24), v3, v4);
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for GestureStateGesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v8 | *(v4 + 80);
  if ((v12 & 0x1000F8) != 0 || ((v5 + (v8 & 0xF8 | 7)) & ~(v8 & 0xF8 | 7)) + v11 + 16 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    v3 = (v14 + (((v12 & 0xF8 | 7u) + 16) & ~(v12 & 0xF8 | 7u)));
  }

  else
  {
    v15 = v10 + 8;
    (*(v4 + 16))(a1);
    v17 = v3 + v5 + 7;
    v18 = a2 + v5 + 7;
    (*(v7 + 16))(v17 & 0xFFFFFFFFFFFFFFF8, v18 & 0xFFFFFFFFFFFFFFF8, v6);
    *(((v17 | 7) + v9) & 0xFFFFFFFFFFFFFFF8) = *(((v18 | 7) + v9) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v15 + v17) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v15 + v18) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = ((v11 + v17) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v11 + v18) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    *v22 = *v23;
    v22[1] = v24;
  }

  return v3;
}

double destroy for GestureStateGesture(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 80) & 0xF8 | 7;
  (*(v5 + 8))((*(v4 + 56) + a1 + v6) & ~v6);

  return result;
}

uint64_t initializeWithCopy for GestureStateGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 48);
  v9 = v7 + 16;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  *((v14 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v14 &= 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 8 + v12);
  v16 = (v14 + 8 + v13);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = (v18 + v12);
  v20 = (v18 + v13);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t assignWithCopy for GestureStateGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 40);
  v9 = v7 + 24;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  *((v14 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v14 + v13) & 0xFFFFFFFFFFFFFFF8);

  v14 &= 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 8 + v12);
  v16 = (v14 + 8 + v13);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = (v18 + v12);
  v20 = (v18 + v13);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t initializeWithTake for GestureStateGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 32);
  v9 = v7 + 32;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  *((v14 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v14 &= 0xFFFFFFFFFFFFFFF8;
  *(v14 + 8 + v12) = *(v14 + 8 + v13);
  *(((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + v12) = *(((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + v13);
  return a1;
}

uint64_t assignWithTake for GestureStateGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 24);
  v9 = v7 + 40;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  *((v14 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v14 + v13) & 0xFFFFFFFFFFFFFFF8);

  v14 &= 0xFFFFFFFFFFFFFFF8;
  *(v14 + 8 + v12) = *(v14 + 8 + v13);

  *(((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + v12) = *(((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + v13);

  return a1;
}

uint64_t getEnumTagSinglePayload for GestureStateGesture(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v7 + 80) & 0xF8 | 7;
  v12 = *(*(*(a3 + 16) - 8) + 64) + v11;
  v13 = (*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + (v12 & ~v11) + 32;
  v15 = a2 - v10;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_30:
    if (v5 >= v9)
    {
      return (*(v4 + 48))(a1);
    }

    v24 = (a1 + v12) & ~v11;
    if (v8 >= 0x7FFFFFFF)
    {
      return (*(v7 + 48))(v24, v8, v6);
    }

    v25 = *(v13 + 8 + v24);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return v10 + (v23 | v22) + 1;
}

void storeEnumTagSinglePayload for GestureStateGesture(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v7 + 80) & 0xF8 | 7;
  v14 = v9 + v13;
  v15 = (*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v9 + v13) & ~v13) + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 16 + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v16 > 3)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    if (((v9 + v13) & ~v13) + ((v15 + 15) & 0xFFFFFFF8) + 16 != -16)
    {
      if (v16 <= 3)
      {
        v23 = 0;
      }

      else
      {
        v23 = ~v12 + a2;
      }

      v24 = a1;
      bzero(a1, v16);
      a1 = v24;
      *v24 = v23;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(a1 + v16) = v22;
      }

      else
      {
        *(a1 + v16) = v22;
      }
    }

    else if (v20)
    {
      *(a1 + v16) = v22;
    }

    return;
  }

  v17 = a3 - v12;
  if (v16 <= 3)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = a2 - v12;
  if (a2 > v12)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v16) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v20)
  {
    goto LABEL_41;
  }

  *(a1 + v16) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v6 >= v11)
  {
    v29 = *(v5 + 56);

    v29();
  }

  else
  {
    v25 = ((a1 + v14) & ~v13);
    if (v11 >= a2)
    {
      v30 = v15 + 8;
      if (v8 < 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = (v25 + v30);
          *v33 = a2 & 0x7FFFFFFF;
          v33[1] = 0;
        }

        else
        {
          *(v25 + v30) = a2 - 1;
        }
      }

      else if (v10 >= a2)
      {
        v31 = *(v7 + 56);
        v32 = (a1 + v14) & ~v13;

        v31(v32);
      }

      else if (v15 != -8)
      {
        v26 = ~v10 + a2;
        v27 = ((a1 + v14) & ~v13);
        v28 = v15 + 8;
        goto LABEL_46;
      }
    }

    else if (((v15 + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v26 = ~v11 + a2;
      v27 = ((a1 + v14) & ~v13);
      v28 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
LABEL_46:
      bzero(v27, v28);
      *v25 = v26;
    }
  }
}

__n128 initializeWithCopy for GestureStatePhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v2 = (a2 + 24);
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 32);
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
  }

  else
  {
    result = *v2;
    *(a1 + 24) = *v2;
  }

  return result;
}

uint64_t assignWithCopy for GestureStatePhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v3 = (a1 + 24);
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v7;

      return a1;
    }

LABEL_7:
    *v3 = *v5;
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;

  return a1;
}

__n128 assignWithTake for GestureStatePhase(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v3 = (a1 + 24);
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v6;

      return result;
    }
  }

  else if (v4)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v7;
    return result;
  }

  result = *v5;
  *v3 = *v5;
  return result;
}

uint64_t partial apply for closure #2 in GestureStatePhase.updateValue()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for GestureStateGesture(0, v1, v2, v3) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in GestureStatePhase.updateValue()(v0 + v5, v6, v1, v2, v3);
}

uint64_t partial apply for closure #4 in GestureStatePhase.updateValue()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for GestureStateGesture(0, v1, v2, v3) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return closure #4 in GestureStatePhase.updateValue()(v8, v9, v0 + v5, v10, v1, v2, v3);
}

uint64_t specialized ModifiedContent<>.accessibilitySetValueAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  type metadata accessor for _ContiguousArrayStorage<AnyAccessibilityAction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  v10 = AccessibilityActionHandlerSeed++;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilitySetValueAction>>(0);
  *(v9 + 56) = v11;
  *(v9 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v12 = swift_allocObject();
  *(v9 + 32) = v12;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 2;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  *(v12 + 88) = partial apply for specialized closure #1 in ModifiedContent<>.accessibilityAction<A>(_:label:image:_:);
  *(v12 + 96) = v8;
  *(v12 + 104) = v10;
  *(v9 + 72) = 0;
  v22 = v4[9];
  swift_beginAccess();
  v21 = v9;

  outlined init with copy of AccessibilityAttachmentModifier(&v22, &v20);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

  AccessibilityProperties.subscript.getter();
  specialized Array.append<A>(contentsOf:)(v20);
  v20 = v21;
  AccessibilityProperties.subscript.setter();
  swift_endAccess();

  outlined destroy of AccessibilityAttachmentModifier(&v22);
  v13 = v4[7];
  a3[6] = v4[6];
  a3[7] = v13;
  v14 = v4[9];
  a3[8] = v4[8];
  a3[9] = v14;
  v15 = v4[3];
  a3[2] = v4[2];
  a3[3] = v15;
  v16 = v4[5];
  a3[4] = v4[4];
  a3[5] = v16;
  v17 = v4[1];
  *a3 = *v4;
  a3[1] = v17;
  return outlined init with copy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v4, v19);
}

void Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, double a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, __int128 *a13, uint64_t a14, uint64_t a15, double a16, double a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v181 = a8;
  *&v179 = a7;
  LODWORD(v165) = a6;
  v163 = a5;
  v162 = a4;
  v169 = a3;
  v170 = a2;
  v171 = a1;
  v178 = a21;
  *&v182 = a15;
  LODWORD(v180) = a12;
  v167 = a11;
  v168 = a10;
  v166 = a14;
  v156 = *(*(*(*(a22 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v154 = &v152 - v23;
  v24 = type metadata accessor for Optional();
  v174 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v152 - v25;
  v27 = *(a19 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v158 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a13;
  v160 = a13[1];
  v161 = v30;
  v172 = *&a17;
  v173 = a18;
  v183 = a17;
  v184 = a18;
  v176 = a20;
  v185 = a20;
  v186 = v178;
  v159 = type metadata accessor for Slider(0, &v183);
  v31 = (a9 + *(v159 + 96));
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = type metadata accessor for Binding();
  v164 = a22;
  v34 = type metadata accessor for Clamping(0, a19, a22, v33);
  swift_getWitnessTable(protocol conformance descriptor for Clamping<A>, v34);
  v157 = v32;
  Binding.projecting<A>(_:)();
  v35 = v184;
  v36 = v185;
  *a9 = v183;
  *(a9 + 1) = v35;
  v177 = a9;
  *(a9 + 2) = v36;
  v37 = *(v174 + 16);
  v175 = v24;
  v37(v26, v169, v24);
  v38 = *(v27 + 48);
  if (v38(v26, 1, a19) == 1)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    if (v38(v26, 1, a19) != 1)
    {
      (*(v174 + 8))(v26, v175);
    }
  }

  else
  {
    (*(v27 + 32))(v158, v26, a19);
  }

  lazy protocol witness table accessor for type Double and conformance Double();
  v39 = v164;
  BinaryFloatingPoint.init<A>(_:)();
  v40 = v176;
  v41 = v177;
  v177[3] = v183;
  v42 = v163;
  *(v41 + 4) = v162;
  *(v41 + 5) = v42;
  *(v41 + 48) = v165 & 1;
  v44 = v172;
  v43 = v173;
  v45 = v178;
  v46 = closure #1 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)(v170, v172, v173, a19);
  *(v41 + 10) = v46;
  MEMORY[0x1EEE9AC00](v46);
  *(&v152 - 6) = v44;
  *(&v152 - 5) = v43;
  *(&v152 - 4) = a19;
  *(&v152 - 3) = v40;
  *(&v152 - 2) = v45;
  *(&v152 - 1) = v39;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:), (&v152 - 8), MEMORY[0x1E69E73E0], MEMORY[0x1E69E63B0], v47, &v183);
  v165 = 0;
  v48 = v183;
  if (v184)
  {
    v48 = 0.1;
  }

  v49 = v159;
  v50 = *(v159 + 88);
  v41[9] = v48;
  v51 = v181;
  *(v41 + 7) = v179;
  v41[8] = v51;
  v52 = v49[20];
  v163 = *(v43 - 8);
  v53 = *(v163 + 16);
  v53(v41 + v52, v168, v43);
  v53(v41 + v49[21], v167, v43);
  *(v41 + v50) = v180 & 1;
  outlined consume of AccessibilityBoundedNumber?(*v31, v31[1], v31[2], v31[3]);
  v54 = v160;
  *v31 = v161;
  *(v31 + 1) = v54;
  v55 = v49[23];
  v162 = *(v44 - 8);
  v56 = (*(v162 + 16))(v41 + v55, v166, v44);
  if (v182)
  {
    v183 = *&v182;
    MEMORY[0x1EEE9AC00](v56);
    *(&v152 - 6) = v44;
    *(&v152 - 5) = v43;
    v57 = v176;
    *(&v152 - 4) = v58;
    *(&v152 - 3) = v57;
    *(&v152 - 2) = v178;
    *(&v152 - 1) = v39;
    v154 = v58;
    type metadata accessor for SliderMark(255, v58, v39, v59);
    v60 = type metadata accessor for Array();
    type metadata accessor for SliderTick<Double>(0, &lazy cache variable for type metadata for SliderMark<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderMark);
    v62 = v61;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v60);
    v64 = v60;
    v65 = v165;
    *&v67 = COERCE_DOUBLE(_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:), (&v152 - 8), v64, v62, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v66));

    v183 = *&v67;

    specialized MutableCollection<>.sort(by:)(&v183);
    if (v65)
    {
      goto LABEL_89;
    }

    v165 = 0;

    v68 = *(*&v183 + 16);
    v181 = v183;

    v69 = MEMORY[0x1E69E7CC0];
    if (v68)
    {
      v70 = 0.0;
      v159 = 0;
      v158 = 0;
      v156 = 0;
      v71 = 0;
      v72 = 0;
      AssociatedTypeWitness = (MEMORY[0x1E69E7CC0] + 32);
      *&v152 = v68 - 1;
      v180 = 1;
      v179 = xmmword_18CD63400;
      v73 = *&v181 + 64;
      v153 = *&v181 + 64;
      while (1)
      {
        *&v161 = v72;
        *&v160 = v69;
        v74 = (v73 + 40 * v71);
        while (1)
        {
          if (v71 >= *(*&v181 + 16))
          {
            __break(1u);
            goto LABEL_82;
          }

          v75 = *(v74 - 4);
          v76 = *(v74 - 3);
          v65 = *(v74 - 1);
          v77 = v71 + 1;
          v78 = *v74;
          v79 = v75;
          v80 = v76;
          *&v182 = *(v74 - 2);
          outlined copy of Text?(v75, v76, v182, v65);
          if (v180 == 1 || v78 != v70)
          {
            break;
          }

          v81 = static os_log_type_t.fault.getter();
          v82 = static Log.runtimeIssuesLog.getter();
          type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
          v83 = swift_allocObject();
          *(v83 + 16) = v179;
          *(v83 + 56) = MEMORY[0x1E69E63B0];
          *(v83 + 64) = MEMORY[0x1E69E6438];
          *(v83 + 32) = v78;
          os_log(_:dso:log:_:_:)(v81, &dword_18BD4A000, v82, "Multiple marks specified for value %f", v152);

          outlined consume of Text?(v79, v80, v182, v65);
          v74 += 5;
          v71 = v77;
          if (v68 == v77)
          {
            v98 = v156;
            v99 = v158;
            v100 = v159;
            v65 = v180;
            v69 = v160;
            v72 = v161;
            goto LABEL_41;
          }
        }

        outlined consume of SliderMark<Double>?(v156, v158, v159, v180);
        v84 = v161;
        if (!v161)
        {
          break;
        }

        outlined copy of Text?(v79, v80, v182, v65);
        v69 = v160;
LABEL_35:
        v94 = __OFSUB__(v84, 1);
        v72 = v84 - 1;
        v73 = v153;
        if (v94)
        {
          goto LABEL_83;
        }

        v70 = v78;
        v95 = AssociatedTypeWitness;
        *AssociatedTypeWitness = v79;
        v95[1] = v80;
        v96 = v182;
        v95[2] = v182;
        v95[3] = v65;
        *(v95 + 4) = v78;
        AssociatedTypeWitness = v95 + 5;
        v180 = v65;
        v159 = v96;
        v158 = v80;
        v156 = v79;
        v97 = *&v152 == v71++;
        v98 = v79;
        v99 = v80;
        v100 = v96;
        if (v97)
        {
          goto LABEL_41;
        }
      }

      v85 = v160;
      v86 = *(v160 + 24);
      if (((v86 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_87;
      }

      v87 = v86 & 0xFFFFFFFFFFFFFFFELL;
      if (v87 <= 1)
      {
        v88 = 1;
      }

      else
      {
        v88 = v87;
      }

      type metadata accessor for _ContiguousArrayStorage<SliderTick<Double>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SliderMark<Double>>, &lazy cache variable for type metadata for SliderMark<Double>, type metadata accessor for SliderMark);
      v89 = swift_allocObject();
      v90 = (_swift_stdlib_malloc_size_1(v89) - 32) / 40;
      v89[2] = v88;
      v89[3] = 2 * v90;
      v91 = v85[2];
      v92 = v85[3] >> 1;
      AssociatedTypeWitness = &v89[5 * v92 + 4];
      *&v161 = (v90 & 0x7FFFFFFFFFFFFFFFLL) - v92;
      if (!v91)
      {
        outlined copy of Text?(v79, v80, v182, v65);
LABEL_34:

        v69 = v89;
        v84 = v161;
        goto LABEL_35;
      }

      v180 = (v85 + 4);
      if (v89 < v85 || v89 + 4 >= &v85[5 * v92 + 4])
      {
        outlined copy of Text?(v79, v80, v182, v65);
      }

      else
      {
        outlined copy of Text?(v79, v80, v182, v65);
        if (v89 == v85)
        {
          goto LABEL_33;
        }
      }

      memmove(v89 + 4, v180, 40 * v92);
LABEL_33:
      *(v160 + 16) = 0;
      goto LABEL_34;
    }

    v72 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v65 = 1;
LABEL_41:

    outlined consume of SliderMark<Double>?(v98, v99, v100, v65);
    v101 = v69[3];
    v44 = v172;
    v43 = v173;
    v39 = v164;
    if (v101 >= 2)
    {
      v102 = v101 >> 1;
      v94 = __OFSUB__(v102, v72);
      v103 = v102 - v72;
      if (v94)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v69[2] = v103;
    }
  }

  else
  {
    v69 = 0;
  }

  *(v177 + 11) = v69;
  if (a16 == 0.0)
  {
    (*(v162 + 8))(v166, v44);
    v141 = *(v163 + 8);
    v141(v167, v43);
    v141(v168, v43);
    v142 = v175;
    v143 = *(v174 + 8);
    v143(v169, v175);
    v143(v170, v142);
    (*(*(v157 - 8) + 8))(v171);
    v114 = 0;
    goto LABEL_80;
  }

  v183 = a16;
  MEMORY[0x1EEE9AC00](v56);
  *(&v152 - 6) = v44;
  *(&v152 - 5) = v43;
  v104 = v176;
  *(&v152 - 4) = v105;
  *(&v152 - 3) = v104;
  *(&v152 - 2) = v178;
  *(&v152 - 1) = v39;
  type metadata accessor for SliderTick(255, v105, v39, v106);
  v107 = type metadata accessor for Array();
  type metadata accessor for SliderTick<Double>(0, &lazy cache variable for type metadata for SliderTick<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderTick);
  v109 = v108;
  v110 = swift_getWitnessTable(MEMORY[0x1E69E6340], v107);
  v65 = v165;
  *&v112 = COERCE_DOUBLE(_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:), (&v152 - 8), v107, v109, MEMORY[0x1E69E73E0], v110, MEMORY[0x1E69E7410], v111));

  v183 = *&v112;

  specialized MutableCollection<>.sort(by:)(&v183);
  if (!v65)
  {

    v65 = *&v183;
    v113 = *(*&v183 + 16);

    v114 = MEMORY[0x1E69E7CC0];
    if (v113)
    {
      v115 = 0.0;
      v116 = 0;
      v181 = 0.0;
      *&v179 = MEMORY[0x1E69E7CC0] + 32;
      v176 = v113 - 1;
      v117 = 1;
      v182 = xmmword_18CD63400;
      v118 = v65 + 40;
      v178 = v65 + 40;
LABEL_49:
      v180 = v114;
      v119 = (v118 + 16 * v116);
      while (v116 < *(v65 + 16))
      {
        v120 = *(v119 - 1);
        v121 = *v119;
        v122 = v116 + 1;

        if (v117 == 1 || v121 != v115)
        {
          outlined consume of ListItemTint?(v117);
          v126 = v181;
          if (v181 == 0.0)
          {
            v127 = v180;
            v128 = *(v180 + 24);
            if (((v128 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_88;
            }

            v129 = v128 & 0xFFFFFFFFFFFFFFFELL;
            if (v129 <= 1)
            {
              v130 = 1;
            }

            else
            {
              v130 = v129;
            }

            type metadata accessor for _ContiguousArrayStorage<SliderTick<Double>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SliderTick<Double>>, &lazy cache variable for type metadata for SliderTick<Double>, type metadata accessor for SliderTick);
            v131 = swift_allocObject();
            v132 = _swift_stdlib_malloc_size_1(v131);
            v133 = v132 - 32;
            if (v132 < 32)
            {
              v133 = v132 - 17;
            }

            v134 = v133 >> 4;
            *(v131 + 2) = v130;
            *(v131 + 3) = 2 * (v133 >> 4);
            v135 = v131 + 32;
            v136 = *(v127 + 16);
            v137 = *(v127 + 24) >> 1;
            *&v179 = &v131[16 * v137 + 32];
            *&v126 = (v134 & 0x7FFFFFFFFFFFFFFFLL) - v137;
            if (v136)
            {
              v138 = (v127 + 32);
              if (v131 != v127 || v135 >= &v138[16 * v137])
              {
                memmove(v135, v138, 16 * v137);
              }

              *(v127 + 16) = 0;
            }

            else
            {
            }

            v114 = v131;
          }

          else
          {

            v114 = v180;
          }

          v94 = __OFSUB__(*&v126, 1);
          *&v139 = *&v126 - 1;
          v118 = v178;
          if (v94)
          {
            goto LABEL_84;
          }

          v181 = v139;
          v115 = v121;
          v140 = v179;
          *v179 = v120;
          *(v140 + 8) = v121;
          *&v179 = v140 + 16;
          v117 = v120;
          v97 = v176 == v116++;
          if (v97)
          {
            goto LABEL_76;
          }

          goto LABEL_49;
        }

        v123 = static os_log_type_t.fault.getter();
        v124 = static Log.runtimeIssuesLog.getter();
        type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
        v125 = swift_allocObject();
        *(v125 + 16) = v182;
        *(v125 + 56) = MEMORY[0x1E69E63B0];
        *(v125 + 64) = MEMORY[0x1E69E6438];
        *(v125 + 32) = v121;
        os_log(_:dso:log:_:_:)(v123, &dword_18BD4A000, v124, "Multiple ticks specified for value %f", v152);

        v119 += 2;
        v116 = v122;
        if (v113 == v122)
        {
          v120 = v117;
          v114 = v180;
          goto LABEL_76;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v181 = 0.0;
    v120 = 1;
LABEL_76:

    outlined consume of ListItemTint?(v120);
    v144 = v114[3];
    v145 = v172;
    v146 = v173;
    if (v144 >= 2)
    {
      v147 = v144 >> 1;
      v94 = __OFSUB__(v147, *&v181);
      v148 = v147 - *&v181;
      if (v94)
      {
        goto LABEL_86;
      }

      v114[2] = v148;
    }

    (*(v162 + 8))(v166, v145);
    v149 = *(v163 + 8);
    v149(v167, v146);
    v149(v168, v146);
    v150 = v175;
    v151 = *(v174 + 8);
    v151(v169, v175);
    v151(v170, v150);
    (*(*(v157 - 8) + 8))(v171);
LABEL_80:
    *(v177 + 12) = v114;
    return;
  }

LABEL_89:

  __break(1u);
}