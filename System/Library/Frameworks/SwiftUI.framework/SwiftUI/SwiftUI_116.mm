void type metadata accessor for (offset: Int, element: PlatformItemList.Item)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: PlatformItemList.Item)?)
  {
    type metadata accessor for (offset: Int, element: PlatformItemList.Item)(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (offset: Int, element: PlatformItemList.Item)?);
    }
  }
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroupStyleConfiguration.Content, StyleContextWriter<ControlGroupStyleContext>>, _PreferenceTransformModifier<PlatformItemList.Key>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, MenuStyleModifier<PlatformItemListMenuStyle>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSi6offset_7SwiftUI16PlatformItemListV0E0V7elementtWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI5ImageVAAE8ResolvedVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_3(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroupStyleConfiguration.Content, StyleContextWriter<ControlGroupStyleContext>>, _PreferenceTransformModifier<PlatformItemList.Key>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, MenuStyleModifier<PlatformItemListMenuStyle>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ViewThatFits._tree.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _VariadicView.Tree();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ViewThatFits._tree.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _VariadicView.Tree();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t _ViewInputs.requestedViewThatFitsRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();

  PropertyList.subscript.getter();

  return v1;
}

Swift::Void __swiftcall SizeFittingState.invalidate()()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(v1 + 56) + 48 * (v8 | (v7 << 6));
    v10 = *v9;
    v11 = *(v9 + 40);

    v12 = v10;
    AGSubgraphRef.willInvalidate(isInserted:)(v11);
    AGSubgraphInvalidate();
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t SizeFittingState.deinit()
{
  v1 = *(v0 + 72);
  v4[2] = *(v0 + 56);
  v4[3] = v1;
  v4[4] = *(v0 + 88);
  v5 = *(v0 + 104);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  return v0;
}

double SizeFittingState.__deallocating_deinit()
{
  v1 = *(v0 + 72);
  v4[2] = *(v0 + 56);
  v4[3] = v1;
  v4[4] = *(v0 + 88);
  v5 = *(v0 + 104);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  swift_deallocClassInstance();
  return result;
}

double protocol witness for StatefulRule.updateValue() in conformance SizeFittingMux()
{
  AGGraphGetValue();
  ViewSize.proposal.getter();
  v3 = v0;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  v7 = v11;

  SizeFittingState.applyChildren(selectLast:to:)(1, partial apply for closure #1 in SizeFittingMux.updateValue(), &v2);

  return result;
}

double closure #1 in SizeFittingLayoutComputer.Engine.spacing()(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;

  SizeFittingState.applyChildren(selectLast:to:)(0, partial apply for closure #1 in closure #1 in SizeFittingLayoutComputer.Engine.spacing(), v3);

  return result;
}

uint64_t closure #1 in closure #1 in SizeFittingLayoutComputer.Engine.spacing()(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((_ViewOutputs.layoutComputer.getter() & 0x100000000) != 0)
  {
    static LayoutComputer.defaultValue.getter();
  }

  else
  {
    AGGraphGetValue();
  }

  LayoutComputer.spacing()();

  *a3 = v5;

  return 1;
}

uint64_t _GraphInputs.requestedViewThatFitsRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t (*_ViewInputs.requestedViewThatFitsRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _ViewInputs.requestedViewThatFitsRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedViewThatFitsRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _GraphInputs.requestedViewThatFitsRepresentation.modify;
}

void _ViewInputs.requestedViewThatFitsRepresentation.modify(_OWORD **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  PropertyList.subscript.setter();

  free(v1);
}

uint64_t getEnumTagSinglePayload for ViewThatFits(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 1) & ~v6);
  }

  v8 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 1) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for ViewThatFits(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 1) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 1] & ~v8;

  v18(v19);
}

uint64_t assignWithCopy for SizeFittingState.Child(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for SizeFittingState.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for SizeFittingState.Child(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for SizeFittingState.Child(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12_ViewList_IDV9CanonicalVAH16SizeFittingStateC5ChildVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i5UI12_kl5_IDV9n6V_AI16opq2C5R4VTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlPIsgnndzo_Tf1nc_n03_s7i4UI16opq42C13applyChildren10selectLast2toySb_SbAA12_k25OutputsV_SbtXEtFSbAA01_K7l5_IDV9n9V3key_AC5R16V5valuet_tXEfU0_ANTf1nnc_n(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v23 = a2;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 64);
    v10 = (v7 + 63) >> 6;

    v24 = 0;
    v11 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v15 = v12 | (v11 << 6);
      v16 = (*(a3 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = (*(a3 + 56) + 48 * v15);
      v19 = *v16;
      v20 = *(v18 + 25);
      v21 = v18[1];
      v26 = *v18;
      *v27 = v21;
      *&v27[9] = v20;
      v28[0] = v19;
      v28[1] = v17;
      *(v30 + 9) = v20;
      v29 = v26;
      v30[0] = *v27;
      if ((v20 >> 56) == *(v31 + 144))
      {
        outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v28, v25);
        outlined destroy of SizeFittingState.Child(&v26);

        *&a1[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_21;
        }

        ++v24;
      }

      else
      {
        v22 = v27[24];
        outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v28, v25);
        outlined init with copy of SizeFittingState.Child(&v26, v25);
        AGSubgraphRef.willInvalidate(isInserted:)(v22);
        AGSubgraphInvalidate();
        outlined destroy of SizeFittingState.Child(&v26);
        outlined destroy of SizeFittingState.Child(&v26);
      }
    }

    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, v23, v24, a3);

        return;
      }

      v14 = *(a3 + 64 + 8 * v11);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t assignWithCopy for SizeFittingLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 128) = v10;
  return a1;
}

uint64_t assignWithTake for SizeFittingLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 128) = v5;
  return a1;
}

uint64_t getEnumTagSinglePayload for SizeFittingLayoutComputer.Engine(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t storeEnumTagSinglePayload for SizeFittingLayoutComputer.Engine(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void EnvironmentValues.tabViewSearchActivation.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabSearchActivation> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabSearchActivation> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

double View.tabViewSearchActivation(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void key path getter for EnvironmentValues.tabViewSearchActivation : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabSearchActivation> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabSearchActivation> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.tabViewSearchActivation : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabSearchActivation> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

Swift::Int TabSearchActivation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TabSearchActivation and conformance TabSearchActivation()
{
  result = lazy protocol witness table cache variable for type TabSearchActivation and conformance TabSearchActivation;
  if (!lazy protocol witness table cache variable for type TabSearchActivation and conformance TabSearchActivation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabSearchActivation, &type metadata for TabSearchActivation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabSearchActivation and conformance TabSearchActivation);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TabSearchActivation>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabSearchActivation>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabSearchActivation>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TabSearchActivation.Role and conformance TabSearchActivation.Role()
{
  result = lazy protocol witness table cache variable for type TabSearchActivation.Role and conformance TabSearchActivation.Role;
  if (!lazy protocol witness table cache variable for type TabSearchActivation.Role and conformance TabSearchActivation.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabSearchActivation.Role, &type metadata for TabSearchActivation.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabSearchActivation.Role and conformance TabSearchActivation.Role);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSearchActivation>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabSearchActivation> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for ControlGroupStyle.makeBody(configuration:) in conformance HorizontalStackControlGroupStyle@<X0>(uint64_t a2@<X8>)
{
  result = static VerticalAlignment.center.getter();
  *a2 = result;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<ControlGroupStyleConfiguration.Content> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Content> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Content> and conformance HStack<A>)
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Content>();
    result = swift_getWitnessTable(MEMORY[0x1E69817F8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Content> and conformance HStack<A>);
  }

  return result;
}

void type metadata accessor for HStack<ControlGroupStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for HStack<ControlGroupStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<ControlGroupStyleConfiguration.Content>);
    }
  }
}

void _ScrollViewGestureProvider.scrollableDirections(proxy:)(_BYTE *a1@<X8>)
{
  _ScrollViewGestureProvider.scrollableDirections(proxy:)(a1);
}

{
  ScrollViewNode.scrollableDirections(includeAlwaysBounceOptions:)(1, a1);
}

void _s7SwiftUI26_ScrollViewGestureProviderPAAE07defaultE4Mask5proxyAA0eH0VAA01_cD5ProxyV_tFAA05EmptyeF033_879701AB0B33C0E6A45CED7EDB8864D2LLV_Tt0B5(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 146);
  if (v2 > 0x3F || (v2) && ((*(a1 + 146) << 16) & 0xC00000) == 0x400000 && *(*(a1 + 136) + 16) < 2uLL)
  {
    __break(1u);
  }
}

void _ScrollViewGestureProvider.gesture(proxy:)(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 2);
  v11 = *a1;
  v4 = v11;
  v12 = v5;
  (*(a2 + 8))(&v13, &v11);
  v6 = v13;
  swift_beginAccess();
  v7 = 10.0;
  if (((*(v4 + 146) << 16) & 0xC00000) != 0x400000)
  {
LABEL_7:
    *a3 = v7;
    *(a3 + 8) = v6;
    return;
  }

  v8 = *(v4 + 136);
  if (*(v8 + 16) >= 2uLL)
  {
    v9 = fabs(*(v8 + 48));
    v10 = fabs(*(v8 + 136));
    if (v9 <= v10)
    {
      v9 = v10;
    }

    if (v9 > 7.5)
    {
      v7 = 0.0;
    }

    goto LABEL_7;
  }

  __break(1u);
}

double _ScrollViewConfig.contentOffset.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return outlined copy of _ScrollViewConfig.ContentOffset(v2, v3, v4, v5, v6);
}

__n128 _ScrollViewConfig.contentOffset.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  outlined consume of _ScrollViewConfig.ContentOffset(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

void _ScrollViewConfig.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t _ScrollViewConfig.gestureProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));

  return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v1 + 88);
}

void _ScrollViewConfig.indicatorInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

double _ScrollViewConfig.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0x3FEFEF9DB22D0E56;
  *(a1 + 80) = 0;
  *(a1 + 112) = &type metadata for EmptyGestureProvider;
  *(a1 + 120) = &protocol witness table for EmptyGestureProvider;
  *(a1 + 128) = 16843008;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

double default argument 1 of _ScrollView.init(contentProvider:config:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0x3FEFEF9DB22D0E56;
  *(a1 + 80) = 0;
  *(a1 + 112) = &type metadata for EmptyGestureProvider;
  *(a1 + 120) = &protocol witness table for EmptyGestureProvider;
  *(a1 + 128) = 16843008;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

__n128 _ScrollView.init(contentProvider:config:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for _ScrollView(0, a3, a4, v9) + 36);
  v11 = *(a2 + 144);
  *(v10 + 128) = *(a2 + 128);
  *(v10 + 144) = v11;
  *(v10 + 160) = *(a2 + 160);
  v12 = *(a2 + 80);
  *(v10 + 64) = *(a2 + 64);
  *(v10 + 80) = v12;
  v13 = *(a2 + 112);
  *(v10 + 96) = *(a2 + 96);
  *(v10 + 112) = v13;
  v14 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v14;
  result = *(a2 + 48);
  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = result;
  return result;
}

uint64_t _ScrollView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = *(a1 + 24);
  *(v8 + 16) = *(a1 + 16);
  *(v8 + 24) = v9;
  (*(v4 + 32))(v8 + v7, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  type metadata accessor for _ClipEffect<Rectangle>(255);
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
  v18[0] = AssociatedConformanceWitness;
  v18[1] = v13;
  v14 = MEMORY[0x1E697E858];
  v17[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v18);
  v17[1] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable(v14, v11, v17);
  result = GeometryReader.init(content:)();
  *a2 = result;
  a2[1] = v16;
  return result;
}

uint64_t content #1 <A>(geom:) in _ScrollView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v49 = a2;
  v45 = a5;
  v43 = type metadata accessor for _ScrollView.Main(0, a3, a4, a4);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v36 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v36 - v10;
  type metadata accessor for _ClipEffect<Rectangle>(255);
  v44 = type metadata accessor for ModifiedContent();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v36 - v11;
  v13 = type metadata accessor for _ScrollView(0, a3, a4, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = a1[1];
  v51 = *a1;
  v52 = v20;
  v53 = a1[2];
  v54 = *(a1 + 12);
  v21 = *(v14 + 16);
  v21(&v36 - v18, v49, v13);
  GeometryProxy.safeAreaInsets.getter();
  v48 = v22;
  v49 = v23;
  v46 = v24;
  v47 = v25;
  if ((EdgeInsets.isEmpty.getter() & 1) == 0)
  {
    v26 = &v19[*(v13 + 36)];
    *&v27.f64[0] = v48;
    *&v27.f64[1] = v49;
    *(v26 + 40) = vaddq_f64(v27, *(v26 + 40));
    *&v28.f64[0] = v46;
    *&v28.f64[1] = v47;
    *(v26 + 56) = vaddq_f64(v28, *(v26 + 56));
    *(v26 + 136) = vaddq_f64(v27, *(v26 + 136));
    *(v26 + 152) = vaddq_f64(v28, *(v26 + 152));
  }

  v21(v16, v19, v13);
  v29 = v38;
  (*(v14 + 32))(v38, v16, v13);
  v30 = v37;
  (*(a4 + 48))(v29, a3, a4);
  (*(v41 + 8))(v29, v43);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v39;
  View.clipped(antialiased:)();
  (*(v40 + 8))(v30, AssociatedTypeWitness);
  v33 = lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
  v50[0] = AssociatedConformanceWitness;
  v50[1] = v33;
  v34 = v44;
  swift_getWitnessTable(MEMORY[0x1E697E858], v44, v50);
  View.padding(_:)();
  (*(v42 + 8))(v32, v34);
  return (*(v14 + 8))(v19, v13);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _ScrollView<A>.Main(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>.Main, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

double View._scrollable(stretchChildrenToMaxHeight:horizontal:vertical:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v34 = a3;
  v35 = a1;
  v36 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _AligningContentProvider(0, v12, v13, v12);
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  (*(v9 + 16))(v11, v6, a4, v19);
  v23 = v14[9];
  v22 = v14[10];
  (*(v9 + 32))(v21, v11, a4);
  v21[v23] = a2;
  v24 = v35;
  v21[v22] = v34;
  v21[v14[11]] = v24;
  (*(v15 + 16))(v17, v21, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _AligningContentProvider<A>, v14);
  v39 = 0u;
  v40 = 0u;
  LOBYTE(v41[0]) = 0;
  memset(v41 + 8, 0, 32);
  memset(&v37[4], 0, 32);
  (*(v15 + 8))(v21, v14);
  v26 = v36;
  (*(v15 + 32))(v36, v17, v14);
  v28 = v26 + *(type metadata accessor for _ScrollView(0, v14, WitnessTable, v27) + 36);
  v29 = v41[1];
  *(v28 + 32) = v41[0];
  *(v28 + 48) = v29;
  v30 = v40;
  *v28 = v39;
  *(v28 + 16) = v30;
  *(v28 + 82) = *v38;
  *(v28 + 96) = *&v38[14];
  *(v28 + 128) = 16843008;
  result = *v37;
  v32 = *&v37[16];
  *(v28 + 132) = *v37;
  *(v28 + 64) = *&v41[2];
  *(v28 + 72) = 0x3FEFEF9DB22D0E56;
  *(v28 + 80) = 0;
  *(v28 + 112) = &type metadata for EmptyGestureProvider;
  *(v28 + 120) = &protocol witness table for EmptyGestureProvider;
  *(v28 + 148) = v32;
  *(v28 + 164) = *&v37[32];
  return result;
}

uint64_t _AligningContentProvider.init(content:horizontal:vertical:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for _AligningContentProvider(0, a4, a5, a4);
  v13 = v12[9];
  v14 = v12[10];
  result = (*(*(a4 - 8) + 32))(a6, a1, a4);
  *(a6 + v13) = a2;
  *(a6 + v14) = a3;
  *(a6 + v12[11]) = 0;
  return result;
}

uint64_t _AligningContentProvider.scrollableContent.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(a1 + 40));
  v6 = *(v4 + *(a1 + 44));
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v11[0] = *(v4 + *(a1 + 36));
  v11[1] = v5;
  v11[2] = v6;
  v9 = type metadata accessor for _AligningContentProvider.AligningContentProviderLayout(0, v7, v8, a4);
  return MEMORY[0x18D00A570](v11, v7, v9, v8);
}

uint64_t _AligningContentProvider.AligningContentProviderLayout.sizeThatFits(in:context:child:)(unint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v18 = *(a2 + 8);
  v12 = *(v3 + 2);
  v27 = *a1;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  static _ProposedSize.unspecified.getter();
  v19 = v23;
  LOBYTE(v20) = v24;
  v21 = v25;
  v22 = v26;
  if ((MEMORY[0x18D004850](&v27, &v19) & 1) == 0)
  {
    v19 = __PAIR64__(v10, v9);
    v20 = v11;
    _ProposedSize.init(width:height:)();
    v23 = v27;
    LOBYTE(v24) = v28;
    v25 = v29;
    v26 = v30;
    LayoutProxy.size(in:)();
  }

  v27 = v4;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  _ProposedSize.width.getter();
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  _ProposedSize.height.getter();
  _ProposedSize.init(width:height:)();
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  if (v12)
  {
    v23 = v27;
    LOBYTE(v24) = v28;
    v25 = v29;
    v26 = v30;
    _ProposedSize.width.getter();
    _ProposedSize.init(width:height:)();
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
  }

  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v23 = v8;
  v24 = v18;
  v19 = __PAIR64__(v10, v9);
  v20 = v11;
  return _AlignmentLayout.sizeThatFits(in:context:child:)();
}

void (*protocol witness for Animatable.animatableData.modify in conformance _AligningContentProvider<A>.AligningContentProviderLayout(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _AligningContentProvider<A>.AligningContentProviderLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _AligningContentProvider<A>.AligningContentProviderLayout, a5);

  return MEMORY[0x1EEDDD778](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _AligningContentProvider<A>.AligningContentProviderLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _AligningContentProvider<A>.AligningContentProviderLayout, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t partial apply for content #1 <A>(geom:) in _ScrollView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for _ScrollView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return content #1 <A>(geom:) in _ScrollView.body.getter(a1, v9, v6, v7, a3);
}

void type metadata accessor for _ClipEffect<Rectangle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ClipEffect<Rectangle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v1 = type metadata accessor for _ClipEffect();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ClipEffect<Rectangle>);
    }
  }
}

_UNKNOWN **base witness table accessor for View in _ScrollView<A>.Main()
{
  return &protocol witness table for _ScrollView<A>.Main;
}

{
  return &protocol witness table for _ScrollView<A>.Main;
}

uint64_t associated type witness table accessor for _ScrollableContentProvider.ScrollableContent : View in _AligningContentProvider<A>(uint64_t a1, uint64_t a2)
{
  v3[0] = *(a2 + 24);
  v3[1] = &protocol witness table for _AligningContentProvider<A>.AligningContentProviderLayout;
  return swift_getWitnessTable(MEMORY[0x1E697E858], a1, v3);
}

uint64_t destroy for _ScrollViewConfig(uint64_t a1)
{
  outlined consume of _ScrollViewConfig.ContentOffset(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));

  return __swift_destroy_boxed_opaque_existential_1((a1 + 88));
}

uint64_t initializeWithCopy for _ScrollViewConfig(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v9 = *(a2 + 112);
  *(a1 + 112) = v9;
  (**(v9 - 8))(a1 + 88, a2 + 88);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithCopy for _ScrollViewConfig(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  outlined consume of _ScrollViewConfig.ContentOffset(v9, v10, v11, v12, v13);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  __swift_assign_boxed_opaque_existential_1((a1 + 88), (a2 + 88));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 130) = *(a2 + 130);
  *(a1 + 131) = *(a2 + 131);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t assignWithTake for _ScrollViewConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v4;
  outlined consume of _ScrollViewConfig.ContentOffset(v5, v6, v7, v8, v9);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  __swift_destroy_boxed_opaque_existential_1((a1 + 88));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 130) = *(a2 + 130);
  *(a1 + 131) = *(a2 + 131);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ScrollViewConfig(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _ScrollViewConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _ScrollViewConfig.ContentOffset(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for _ScrollViewConfig.ContentOffset(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  outlined consume of _ScrollViewConfig.ContentOffset(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for _ScrollViewConfig.ContentOffset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  outlined consume of _ScrollViewConfig.ContentOffset(v4, v6, v5, v7, v8);
  return a1;
}

uint64_t type metadata completion function for _ScrollView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _AligningContentProvider(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _AligningContentProvider(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 3) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    v11 = v3 + v5;
    *v11 = *(a2 + v5);
    v11[1] = *(a2 + v5 + 1);
    v11[2] = *(a2 + v5 + 2);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t initializeWithCopy for _AligningContentProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  return a1;
}

uint64_t assignWithCopy for _AligningContentProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  return a1;
}

uint64_t initializeWithTake for _AligningContentProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  return a1;
}

uint64_t assignWithTake for _AligningContentProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  return a1;
}

uint64_t getEnumTagSinglePayload for _AligningContentProvider(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = v6 + 3;
  v10 = 8 * (v6 + 3);
  if (v6 != 0 && v6 < 0xFFFFFFFD)
  {
    goto LABEL_8;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_26;
      }

LABEL_8:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

LABEL_15:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6 + 2);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for _AligningContentProvider(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 3;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8 + 2) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 3);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -3)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

id HostingScrollViewResponder.hitTestingHostView.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for HostingScrollView.PlatformContainer();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView);

      v4 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host];
      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void HostingScrollViewResponder.containsGlobalPoints(_:cacheKey:options:)(uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  if ((MEMORY[0x18D008A80]() & 1) == 0)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD69590;
    *(v7 + 32) = *(v4 + 256);
    swift_beginAccess();
    type metadata accessor for ContentResponderHelper<UIViewContentResponder>(0);

    ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)();
    swift_endAccess();

    return;
  }

  if (MEMORY[0x18D008A80]())
  {
    PlatformViewResponderBase.containsGlobalPoints(_:cacheKey:options:)();
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = 0.0;
  if (!Strong)
  {
    goto LABEL_8;
  }

  if (v6)
  {

    goto LABEL_10;
  }

  v10 = Strong;
  v11 = [Strong isUserInteractionEnabled];

  if (v11)
  {
LABEL_10:
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18CD69590;
    *(v13 + 32) = *(v4 + 256);
    swift_beginAccess();
    type metadata accessor for ContentResponderHelper<UIViewContentResponder>(0);

    ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)();
    swift_endAccess();

    v12 = v15;
    v9 = v16;

    if (v15 && (v6 & 2) == 0 && v16 <= 16.0)
    {
      v9 = 16.0;
    }

    goto LABEL_14;
  }

LABEL_8:
  v12 = 0;
LABEL_14:
  PlatformViewResponderBase.containsGlobalPoints(_:cacheKey:options:)();

  if (v9 <= v16)
  {
    v9 = v16;
  }

  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD69590;
  *(v14 + 32) = *(v4 + 256);
  *a4 = v15 | v12;
  *(a4 + 8) = v9;
  *(a4 + 16) = v14;
}

uint64_t HostingScrollViewResponder.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  type metadata accessor for ContentResponderHelper<UIViewContentResponder>(0);
  ContentResponderHelper.addContentPath(to:kind:in:observer:)();
  return swift_endAccess();
}

double HostingScrollViewResponder.__deallocating_deinit()
{
  PlatformUnaryViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

void (*vtable thunk for PlatformViewResponderBase.preferredFocusableView.modify dispatching to HostingScrollViewResponder.preferredFocusableView.modify(uint64_t a1))(uint64_t a1)
{
  swift_beginAccess();
  *(a1 + 24) = swift_unknownObjectWeakLoadStrong();
  return vtable thunk for PlatformViewResponderBase.preferredFocusableView.modify dispatching to HostingScrollViewResponder.preferredFocusableView.modify;
}

uint64_t Link.init(configuration:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LinkDestination.Configuration();
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  (*(v14 + 16))(a5, a2, a3, v11);
  outlined init with copy of LinkDestination(a1, v13, MEMORY[0x1E697E810]);
  type metadata accessor for Link(0, a3, a4, v15);
  LinkDestination.init(configuration:)();
  (*(v14 + 8))(a2, a3);
  return _s7SwiftUI15LinkDestinationV13ConfigurationVWOhTm_0(a1, MEMORY[0x1E697E810]);
}

uint64_t Link.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = *(a1 + 16);
  v36 = *(a1 + 24);
  v37 = v5;
  v6 = type metadata accessor for Button(255, v5, v36, a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v6);
  v8 = type metadata accessor for AccessibilityLinkModifier(0, v6, WitnessTable, v7);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v35 - v10;
  v11 = type metadata accessor for LinkDestination();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v35 - v16;
  v17 = type metadata accessor for ModifiedContent();
  v38 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v23 = *(a1 + 36);
  v24 = MEMORY[0x1E697E828];
  outlined init with copy of LinkDestination(v3 + v23, v14, MEMORY[0x1E697E828]);
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = swift_allocObject();
  outlined init with take of LinkDestination(v14, v26 + v25);
  v46 = v37;
  v47 = v36;
  v48 = v3;
  Button.init(action:label:)(partial apply for implicit closure #2 in implicit closure #1 in LinkButtonModifierBody.body(content:), v26, partial apply for closure #1 in Link.body.getter, v45, v37, v36, v44);
  outlined init with copy of LinkDestination(v3 + v23, v14, v24);
  v27 = v35;
  v28 = WitnessTable;
  AccessibilityLinkModifier.init(_:)(v14, v35);
  v29 = v41;
  v30 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLinkModifier<A>, v41);
  v49[0] = v28;
  v49[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v17, v49);
  v31 = v30;
  v32 = v44;
  View.accessibilityConfiguration<A>(_:)(v27, v6, v29, v28, v31);
  (*(v42 + 8))(v27, v29);
  (*(v39 + 8))(v32, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  v33 = *(v38 + 8);
  v33(v19, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v33)(v22, v17);
}

uint64_t outlined init with take of LinkDestination(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Link<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Link<A>, a3);

  return MEMORY[0x1EEDE2370](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance Link<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Link<A>, a3);

  return MEMORY[0x1EEDE2378](a1, a2, a3, WitnessTable);
}

uint64_t outlined init with copy of LinkDestination(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Link.archivedBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  type metadata accessor for Link<Text>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
  v38 = v4;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = type metadata accessor for Button(255, v6, v5, v7);
  type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier>(255);
  v36 = type metadata accessor for ModifiedContent();
  type metadata accessor for ArchivableLinkModifier(255);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for StaticIf();
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v36 - v12;
  v40 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v39 = &v36 - v17;
  v47 = v6;
  v48 = v5;
  v49 = v2;
  v44 = v6;
  v45 = v5;
  v46 = v2;
  v18 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v8);
  v20 = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v55[0] = WitnessTable;
  v55[1] = v20;
  v21 = MEMORY[0x1E697E858];
  v22 = swift_getWitnessTable(MEMORY[0x1E697E858], v36, v55);
  v23 = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier();
  v54[0] = v5;
  v54[1] = v23;
  v24 = swift_getWitnessTable(v21, v9, v54);
  v25 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl();
  v53[0] = v24;
  v53[1] = v25;
  v35 = swift_getWitnessTable(v21, v10, v53);
  v26 = v37;
  StaticIf<>.init(_:then:else:)();
  v52[0] = v18;
  v52[1] = v22;
  v52[2] = v35;
  v27 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v11, v52);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v29 = type metadata accessor for AccessibilityLinkModifier.Archived(0, v11, v27, v28);
  v30 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLinkModifier<A>.Archived, v29);
  v51[0] = v27;
  v51[1] = &protocol witness table for IgnoreViewRespondersModifier;
  v50[0] = swift_getWitnessTable(v21, v40, v51);
  v50[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v31 = swift_getWitnessTable(v21, v13, v50);
  View.accessibilityConfiguration<A>(_:)(v31, v11, v29, v27, v30);
  (*(v42 + 8))(v26, v11);
  v32 = v39;
  static ViewBuilder.buildExpression<A>(_:)();
  v33 = *(v41 + 8);
  v33(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v33)(v32, v13);
}

void type metadata accessor for Link<Text>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<DefaultButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>)
  {
    type metadata accessor for ButtonStylePredicate<DefaultButtonStyle>(255, &lazy cache variable for type metadata for WrappedButtonStyle<WidgetLinkButtonStyle>, lazy protocol witness table accessor for type WidgetLinkButtonStyle and conformance WidgetLinkButtonStyle, &type metadata for WidgetLinkButtonStyle, type metadata accessor for WrappedButtonStyle);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type WrappedButtonStyle<WidgetLinkButtonStyle> and conformance WrappedButtonStyle<A>();
    v6 = type metadata accessor for ButtonStyleModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>);
    }
  }
}

void type metadata accessor for ButtonStylePredicate<DefaultButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type WidgetLinkButtonStyle and conformance WidgetLinkButtonStyle()
{
  result = lazy protocol witness table cache variable for type WidgetLinkButtonStyle and conformance WidgetLinkButtonStyle;
  if (!lazy protocol witness table cache variable for type WidgetLinkButtonStyle and conformance WidgetLinkButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetLinkButtonStyle, &type metadata for WidgetLinkButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetLinkButtonStyle and conformance WidgetLinkButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WrappedButtonStyle<WidgetLinkButtonStyle> and conformance WrappedButtonStyle<A>()
{
  result = lazy protocol witness table cache variable for type WrappedButtonStyle<WidgetLinkButtonStyle> and conformance WrappedButtonStyle<A>;
  if (!lazy protocol witness table cache variable for type WrappedButtonStyle<WidgetLinkButtonStyle> and conformance WrappedButtonStyle<A>)
  {
    type metadata accessor for ButtonStylePredicate<DefaultButtonStyle>(255, &lazy cache variable for type metadata for WrappedButtonStyle<WidgetLinkButtonStyle>, lazy protocol witness table accessor for type WidgetLinkButtonStyle and conformance WidgetLinkButtonStyle, &type metadata for WidgetLinkButtonStyle, type metadata accessor for WrappedButtonStyle);
    result = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyle<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WrappedButtonStyle<WidgetLinkButtonStyle> and conformance WrappedButtonStyle<A>);
  }

  return result;
}

uint64_t closure #1 in Link.archivedBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = type metadata accessor for LinkDestination();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Button(0, a2, a3, v10);
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier>(255);
  v29 = v14;
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v23 = type metadata accessor for Link(0, a2, a3, v22);
  outlined init with copy of LinkDestination(a1 + *(v23 + 36), v9, MEMORY[0x1E697E828]);
  v32 = a2;
  v33 = a3;
  v34 = a1;
  Button.init(destination:label:)(v9, partial apply for closure #1 in closure #1 in Link.archivedBody.getter, a2, a3, v13);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v11);
  MEMORY[0x18D00A570](WitnessTable, v11, v29, WitnessTable);
  (*(v30 + 8))(v13, v11);
  v25 = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v35[0] = WitnessTable;
  v35[1] = v25;
  swift_getWitnessTable(MEMORY[0x1E697E858], v15, v35);
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v16 + 8);
  v26(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v21, v15);
}

uint64_t closure #1 in Link.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t closure #2 in Link.archivedBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v27 = type metadata accessor for ArchivableLinkModifier(0);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModifiedContent();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v19 = a1 + *(type metadata accessor for Link(0, a2, a3, v18) + 36);
  v20 = type metadata accessor for LinkDestination();
  outlined init with copy of LinkDestination(v19 + *(v20 + 24), v8, MEMORY[0x1E697E810]);
  MEMORY[0x18D00A570](v8, a2, v27, a3);
  _s7SwiftUI15LinkDestinationV13ConfigurationVWOhTm_0(v8, type metadata accessor for ArchivableLinkModifier);
  v21 = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier();
  v32[0] = a3;
  v32[1] = v21;
  v22 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v32);
  MEMORY[0x18D00A570](WitnessTable, v9, &type metadata for HandGestureShortcutInteractiveControl, WitnessTable);
  (*(v29 + 8))(v11, v9);
  v24 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl();
  v31[0] = WitnessTable;
  v31[1] = v24;
  swift_getWitnessTable(v22, v12, v31);
  static ViewBuilder.buildExpression<A>(_:)();
  v25 = *(v28 + 8);
  v25(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v25)(v17, v12);
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>();
    v5[1] = &protocol witness table for ButtonStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetLinkButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier()
{
  result = lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier;
  if (!lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier)
  {
    v3 = type metadata accessor for ArchivableLinkModifier(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableLinkModifier, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier);
  }

  return result;
}

uint64_t Link.init(destination:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v21 = a6;
  v22 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LinkDestination.Configuration();
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11, v16);
  v19 = LinkDestination.Configuration.init(url:isSensitive:)();
  a2(v19);
  Link.init(configuration:label:)(v18, v10, a3, v22, v21);
  return (*(v12 + 8))(a1, v11);
}

uint64_t Link<>.init(_:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  v29[1] = a6;
  v33 = a4;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v9 = type metadata accessor for LinkDestination.Configuration();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v29 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v29 - v21;
  v23 = *(v16 + 16);
  v23(v29 - v21, a5, v15, v20);
  (v23)(v18, v22, v15);
  LinkDestination.Configuration.init(url:isSensitive:)();
  *a7 = Text.init(_:tableName:bundle:comment:)();
  *(a7 + 8) = v24;
  *(a7 + 16) = v25 & 1;
  *(a7 + 24) = v26;
  outlined init with copy of LinkDestination(v14, v11, MEMORY[0x1E697E810]);
  type metadata accessor for Link<Text>(0, &lazy cache variable for type metadata for Link<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Link);
  LinkDestination.init(configuration:)();
  v27 = *(v16 + 8);
  v27(a5, v15);
  _s7SwiftUI15LinkDestinationV13ConfigurationVWOhTm_0(v14, MEMORY[0x1E697E810]);
  return (v27)(v22, v15);
}

uint64_t Link<>.init<A>(_:destination:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v29[1] = a5;
  v31 = a3;
  v32 = a4;
  v30 = a1;
  v8 = type metadata accessor for LinkDestination.Configuration();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v29 - v20;
  v22 = *(v15 + 16);
  (v22)(v29 - v20, a2, v14, v19);
  v22(v17, v21, v14);
  LinkDestination.Configuration.init(url:isSensitive:)();
  v23 = v30;
  v24 = v31;
  closure #1 in Link<>.init<A>(_:destination:)(v30, &v33);
  v25 = v34;
  v26 = v35;
  *a6 = v33;
  *(a6 + 16) = v25;
  *(a6 + 24) = v26;
  outlined init with copy of LinkDestination(v13, v10, MEMORY[0x1E697E810]);
  type metadata accessor for Link<Text>(0, &lazy cache variable for type metadata for Link<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Link);
  LinkDestination.init(configuration:)();
  v27 = *(v15 + 8);
  v27(a2, v14);
  _s7SwiftUI15LinkDestinationV13ConfigurationVWOhTm_0(v13, MEMORY[0x1E697E810]);
  v27(v21, v14);
  return (*(*(v24 - 8) + 8))(v23, v24);
}

uint64_t closure #1 in Link<>.init<A>(_:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Link<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for Link<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for Link(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LinkDestination();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Link(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v10 | 7 | *(v6 + 80);
  if (v11 != 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || *(*(v8 - 8) + 64) - ((-76 - v10) | v10) + (((v10 | 7) + v7) & ~(v10 | 7uLL)) > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    v33 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v36 = *(*(v8 - 8) + 64);
    v37 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v38 = a1;
    v15 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *(v16 + 34);
    v22 = *(v16 + 32);
    outlined copy of Environment<OpenURLAction>.Content(*v16, v18, v19, v20, v22, v21);
    *v15 = v17;
    *(v15 + 8) = v18;
    *(v15 + 16) = v19;
    *(v15 + 24) = v20;
    *(v15 + 32) = v22;
    *(v15 + 34) = v21;
    v23 = (v15 + 42) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v16 + 42) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = *(v24 + 34);
    v30 = *(v24 + 32);
    v31 = outlined copy of Environment<OpenURLAction>.Content(*v24, v26, v27, v28, v30, v29);
    *v23 = v25;
    *(v23 + 8) = v26;
    *(v23 + 16) = v27;
    *(v23 + 24) = v28;
    v32 = v23 + v10;
    *(v23 + 32) = v30;
    *(v23 + 34) = v29;
    v33 = v38;
    v34 = (v32 + 35) & ~v10;
    (*(v9 + 16))(v34, (v24 + v10 + 35) & ~v10, v37, v31);
    *(v34 + v36) = *(((v24 + v10 + 35) & ~v10) + v36);
  }

  return v33;
}

uint64_t destroy for Link(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56);
  v5 = type metadata accessor for URL();
  v12 = *(v5 - 8);
  v6 = *(v12 + 80);
  v7 = (v4 + a1 + (v6 | 7)) & ~(v6 | 7);
  outlined consume of Environment<OpenURLAction>.Content(*v7, *(v7 + 8), *(v7 + 0x10), *(v7 + 0x18), *(v7 + 0x20), *(v7 + 0x22));
  v8 = (v7 + 42) & 0xFFFFFFFFFFFFFFF8;
  v9.n128_f64[0] = outlined consume of Environment<OpenURLAction>.Content(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 34));
  v10 = *(v12 + 8);

  return v10((v6 + v8 + 35) & ~v6, v5, v9);
}

uint64_t initializeWithCopy for Link(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8) + 16;
  (*v4)();
  v6 = *(v4 + 48);
  v29 = type metadata accessor for URL();
  v7 = *(v29 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + v6;
  v10 = (v9 + a1) & ~(v8 | 7);
  v11 = (v9 + a2) & ~(v8 | 7);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 0x10);
  v15 = *(v11 + 0x18);
  v16 = *(v11 + 0x22);
  v17 = *(v11 + 0x20);
  outlined copy of Environment<OpenURLAction>.Content(*v11, v13, v14, v15, v17, v16);
  *v10 = v12;
  *(v10 + 8) = v13;
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  *(v10 + 32) = v17;
  *(v10 + 34) = v16;
  v18 = (v10 + 42) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v24 = *(v19 + 34);
  v25 = *(v19 + 32);
  v26 = outlined copy of Environment<OpenURLAction>.Content(*v19, v21, v22, v23, v25, v24);
  *v18 = v20;
  *(v18 + 8) = v21;
  *(v18 + 16) = v22;
  *(v18 + 24) = v23;
  *(v18 + 32) = v25;
  *(v18 + 34) = v24;
  (*(v7 + 16))((v8 + 35 + v18) & ~v8, (v8 + 35 + v19) & ~v8, v29, v26);
  *(*(v7 + 64) + ((v8 + 35 + v18) & ~v8)) = *(*(v7 + 64) + ((v8 + 35 + v19) & ~v8));
  return a1;
}

uint64_t assignWithCopy for Link(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8) + 24;
  (*v4)();
  v6 = *(v4 + 40);
  v41 = type metadata accessor for URL();
  v7 = *(v41 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + v6;
  v10 = (v9 + a1) & ~(v8 | 7);
  v11 = (v9 + a2) & ~(v8 | 7);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 0x10);
  v15 = *(v11 + 0x18);
  v16 = *(v11 + 0x22);
  v17 = *(v11 + 0x20);
  outlined copy of Environment<OpenURLAction>.Content(*v11, v13, v14, v15, v17, v16);
  v18 = *v10;
  v19 = *(v10 + 8);
  v20 = *(v10 + 16);
  v21 = *(v10 + 24);
  v22 = *(v10 + 34);
  *v10 = v12;
  *(v10 + 8) = v13;
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  v23 = *(v10 + 32);
  *(v10 + 32) = v17;
  *(v10 + 34) = v16;
  outlined consume of Environment<OpenURLAction>.Content(v18, v19, v20, v21, v23, v22);
  v24 = (v10 + 42) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v30 = *(v25 + 34);
  v31 = *(v25 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*v25, v27, v28, v29, v31, v30);
  v32 = *v24;
  v33 = *(v24 + 8);
  v34 = *(v24 + 16);
  v35 = *(v24 + 24);
  v36 = *(v24 + 34);
  *v24 = v26;
  *(v24 + 8) = v27;
  *(v24 + 16) = v28;
  *(v24 + 24) = v29;
  v37 = *(v24 + 32);
  *(v24 + 32) = v31;
  *(v24 + 34) = v30;
  v38 = outlined consume of Environment<OpenURLAction>.Content(v32, v33, v34, v35, v37, v36);
  (*(v7 + 24))((v8 + 35 + v24) & ~v8, (v8 + 35 + v25) & ~v8, v41, v38);
  *(*(v7 + 64) + ((v8 + 35 + v24) & ~v8)) = *(*(v7 + 64) + ((v8 + 35 + v25) & ~v8));
  return a1;
}

uint64_t initializeWithTake for Link(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  LODWORD(v10) = *(v12 + 0x1F);
  v13 = *(v12 + 16);
  *v11 = *v12;
  *(v11 + 16) = v13;
  *(v11 + 31) = v10;
  v14 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 42) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v11) = *(v15 + 31);
  v16 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v16;
  *(v14 + 31) = v11;
  v17 = (v9 + 35 + v14) & ~v9;
  v18 = (v9 + 35 + v15) & ~v9;
  v19 = v8 + 32;
  (*(v8 + 32))(v17, v18, v7);
  *(v17 + *(v19 + 32)) = *(v18 + *(v19 + 32));
  return a1;
}

uint64_t assignWithTake for Link(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a2) & ~(v9 | 7);
  v12 = *(v11 + 32);
  v13 = *(v11 + 34);
  v14 = (v10 + a1) & ~(v9 | 7);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 0x10);
  v18 = *(v14 + 0x18);
  v19 = *(v14 + 0x22);
  v20 = *(v11 + 16);
  *v14 = *v11;
  *(v14 + 16) = v20;
  v21 = *(v14 + 0x20);
  *(v14 + 32) = v12;
  *(v14 + 34) = v13;
  outlined consume of Environment<OpenURLAction>.Content(v15, v16, v17, v18, v21, v19);
  v22 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 32);
  v24 = *(v22 + 34);
  v25 = (v14 + 42) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v30 = *(v25 + 34);
  v31 = *(v22 + 16);
  *v25 = *v22;
  *(v25 + 16) = v31;
  v32 = *(v25 + 32);
  *(v25 + 32) = v23;
  *(v25 + 34) = v24;
  v33 = outlined consume of Environment<OpenURLAction>.Content(v26, v27, v28, v29, v32, v30);
  v34 = (v9 + 35 + v25) & ~v9;
  v35 = (v9 + 35 + v22) & ~v9;
  (*(v8 + 40))(v34, v35, v7, v33);
  *(*(v8 + 64) + v34) = *(*(v8 + 64) + v35);
  return a1;
}

uint64_t getEnumTagSinglePayload for Link(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 | 7;
  v15 = (v11 | 7) + *(v6 + 64);
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v16 = *(*(v8 - 8) + 64) + ((v11 + 75) & ~v11) + (v15 & ~v14) + 1;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if (v7 >= v12)
      {
        v25 = *(v6 + 48);

        return v25(a1, v7, v5);
      }

      else if (v10 > 0xFE)
      {
        v26 = *(v9 + 48);

        return v26((v11 + ((((a1 + v15) & ~v14) + 42) & 0xFFFFFFFFFFFFFFF8) + 35) & ~v11);
      }

      else
      {
        v24 = *(((a1 + v15) & ~v14) + 0x22);
        if (v24 > 1)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for Link(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = (v12 | 7) + *(v8 + 64);
  v16 = *(v10 + 64) + ((v12 + 75) & ~v12) + 1;
  v17 = (v15 & ~(v12 | 7)) + v16;
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_60:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v18)
  {
    goto LABEL_33;
  }

  a1[v17] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 >= v13)
  {
    v28 = *(v30 + 56);

    v28(a1, a2, v9, v7);
  }

  else
  {
    v24 = (&a1[v15] & ~(v12 | 7));
    if (v13 >= a2)
    {
      if (v11 > 0xFE)
      {
        v29 = *(v10 + 56);

        v29((v12 + ((v24 + 42) & 0xFFFFFFFFFFFFFFF8) + 35) & ~v12, a2);
      }

      else if (a2 > 0xFE)
      {
        *(v24 + 2) = 0;
        *(v24 + 3) = 0;
        v24[34] = 0;
        *(v24 + 16) = 0;
        *v24 = (a2 - 255);
        *(v24 + 1) = 0;
      }

      else
      {
        v24[34] = -a2;
      }
    }

    else
    {
      if (v16 <= 3)
      {
        v25 = ~(-1 << (8 * v16));
      }

      else
      {
        v25 = -1;
      }

      if (v16)
      {
        v26 = v25 & (~v13 + a2);
        if (v16 <= 3)
        {
          v27 = v16;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v16);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }
  }
}

uint64_t View.inspector<A>(isPresented:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(double)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v38 = a7;
  v33 = a5;
  v34 = a4;
  v10 = a3;
  v35 = a2;
  v39 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InspectorModifier(0, v15, a9, v14);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  v20 = type metadata accessor for ModifiedContent();
  v21 = *(v20 - 8);
  v36 = v20;
  v37 = v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v32 - v23;
  v34(v22);
  v25 = v35;
  InspectorModifier.init(inspectorContent:isPresented:)(v13, a1, v35, v10, a6, a9, v19);

  v26 = v38;
  MEMORY[0x18D00A570](v19, v33, v16, v38);
  (*(v17 + 8))(v19, v16);
  KeyPath = swift_getKeyPath();
  v41[0] = a1;
  v41[1] = v25;
  v42 = v10;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for InspectorModifier<A>, v16);
  v40[0] = v26;
  v40[1] = WitnessTable;
  v29 = v36;
  v30 = swift_getWitnessTable(MEMORY[0x1E697E858], v36, v40);
  View.focusedSceneValue<A>(_:_:)(KeyPath, v41, v29, v30, v39);

  return (*(v37 + 8))(v24, v29);
}

uint64_t key path getter for FocusedValues.inspectorPresented : FocusedValues@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s7SwiftUI13FocusedValuesVy5ValueQzSgxmcAA0cE3KeyRzluigAC02__F19_inspectorPresented33_99A27EE781A9E770B3F233F8317BD81DLLV_Tt0B5(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for FocusedValues.inspectorPresented : FocusedValues(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  outlined copy of Binding<Int>?(*a1, v2);
  return FocusedValues.inspectorPresented.setter(v1, v2, v3);
}

uint64_t FocusedValues.inspectorPresented.setter(uint64_t result, uint64_t a2, char a3)
{
  if (a2)
  {
    if ((*(v3 + 8) & 2) != 0)
    {
      if (one-time initialization token for scene == -1)
      {
LABEL_6:
        type metadata accessor for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>(0, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented>, &type metadata for FocusedValues.__Key_inspectorPresented, &protocol witness table for FocusedValues.__Key_inspectorPresented, type metadata accessor for FocusedValuePropertyKey);
        lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>();

        return PropertyList.subscript.setter();
      }
    }

    else if (one-time initialization token for view == -1)
    {
      goto LABEL_6;
    }

    swift_once();
    goto LABEL_6;
  }

  return v4;
}

uint64_t View.inspector<A>(behavior:isPresented:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v39 = a2;
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v40 = a3;
  v44 = a9;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v17;
  v36 = v17[1];
  v37 = v18;
  HIDWORD(v35) = *(v17 + 16);
  (*(v13 + 16))(v16, v11, v19, v15);
  v20 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v21 = (v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v20 + v14 + 55) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v38;
  *(v24 + 2) = a7;
  *(v24 + 3) = v25;
  *(v24 + 4) = a10;
  *(v24 + 5) = a11;
  (*(v13 + 32))(&v24[v20], v16, a7);
  v26 = &v24[v21];
  v27 = v40;
  *v26 = v39;
  *(v26 + 1) = v27;
  v26[16] = v41;
  v28 = &v24[v22];
  v29 = v36;
  *v28 = v37;
  *(v28 + 1) = v29;
  v28[16] = BYTE4(v35);
  v30 = &v24[v23];
  v31 = v43;
  *v30 = v42;
  v30[1] = v31;
  type metadata accessor for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>(255, &lazy cache variable for type metadata for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>, &type metadata for InspectorStorage.PreferenceKey, &protocol witness table for InspectorStorage.PreferenceKey, type metadata accessor for IdentifiedPreferenceTransformModifier);
  v32 = type metadata accessor for ModifiedContent();
  v45[0] = a10;
  v45[1] = &protocol witness table for IdentifiedPreferenceTransformModifier<A>;

  result = swift_getWitnessTable(MEMORY[0x1E697E858], v32, v45);
  v34 = v44;
  *v44 = partial apply for closure #1 in View.inspector<A>(behavior:isPresented:content:);
  v34[1] = v24;
  return result;
}

uint64_t closure #1 in View.inspector<A>(behavior:isPresented:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v44 = a8;
  v45 = a7;
  v46 = a2;
  v43 = a6;
  v42 = a5;
  v47 = a9;
  v40 = a4;
  v41 = a11;
  v38 = a15;
  v39 = a10;
  v35 = a14;
  v37 = a13;
  type metadata accessor for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>(255, &lazy cache variable for type metadata for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>, &type metadata for InspectorStorage.PreferenceKey, &protocol witness table for InspectorStorage.PreferenceKey, type metadata accessor for IdentifiedPreferenceTransformModifier);
  v36 = a12;
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  v25 = *a1;
  v24 = a1[1];
  v26 = swift_allocObject();
  v28 = v37;
  v27 = v38;
  *(v26 + 16) = a12;
  *(v26 + 24) = v28;
  *(v26 + 32) = a14;
  *(v26 + 40) = v27;
  v29 = v40;
  v30 = v41;
  *(v26 + 48) = a3;
  *(v26 + 56) = v29;
  *(v26 + 64) = v42;
  v31 = v45;
  *(v26 + 72) = v43;
  *(v26 + 80) = v31;
  *(v26 + 88) = v44;
  *(v26 + 96) = v39;
  *(v26 + 104) = v30;
  *(v26 + 112) = v25;
  *(v26 + 120) = v24;

  v32 = v35;
  View.transformIdentifiedPreference<A>(_:transform:)(&type metadata for InspectorStorage.PreferenceKey, partial apply for closure #1 in closure #1 in View.inspector<A>(behavior:isPresented:content:), v26, v36, &type metadata for InspectorStorage.PreferenceKey, v35, &protocol witness table for InspectorStorage.PreferenceKey);

  v48[0] = v32;
  v48[1] = &protocol witness table for IdentifiedPreferenceTransformModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v17, v48);
  static ViewBuilder.buildExpression<A>(_:)();
  v33 = *(v18 + 8);
  v33(v20, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v33)(v23, v17);
}

uint64_t partial apply for closure #1 in View.inspector<A>(behavior:isPresented:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*(v2[2] - 8) + 80) + 48) & ~*(*(v2[2] - 8) + 80);
  v4 = v3 + *(*(v2[2] - 8) + 64);
  return closure #1 in View.inspector<A>(behavior:isPresented:content:)(a1, v2 + v3, *(v2 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 16), a2, *(v2 + ((v4 + 55) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v4 + 55) & 0xFFFFFFFFFFFFFFF8) + 8), v2[2], v2[3], v2[4], v2[5]);
}

unint64_t closure #1 in closure #1 in View.inspector<A>(behavior:isPresented:content:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v27 = *a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v28);
  v19 = v28;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v21 = type metadata accessor for LazyView(0, a14, a16, v20);

  swift_getWitnessTable(protocol conformance descriptor for LazyView<A>, v21);
  v22 = AnyView.init<A>(_:)();
  v32[0] = a3;
  v32[1] = a4;
  v33 = a5;
  v34 = v19;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v41 = v22;
  v42 = 0;
  v43 = a11;
  v44 = a12;

  return specialized Dictionary.subscript.setter(v32, v27);
}

double View.inspector<A, B>(behavior:presenting:content:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**x8_0)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a9)
{
  v15 = *(a1 + 16);
  v27 = *a1;
  v28 = v15;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a3;
  v25 = a4;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.inspector<A, B>(behavior:presenting:content:), v18, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v16, &v26);
  View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)(&v27, 0, 0, 0, a2, 0, v26, a5, x8_0, a6, a8);

  return result;
}

uint64_t closure #1 in View.inspector<A, B>(behavior:presenting:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6(v5);
  result = AnyView.init<A>(_:)();
  *a4 = result;
  return result;
}

uint64_t partial apply for closure #1 in View.inspector<A, B>(behavior:presenting:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return closure #1 in View.inspector<A, B>(behavior:presenting:content:)(a1, a2);
}

{
  return partial apply for closure #1 in View.inspector<A, B>(behavior:presenting:content:)(a1, a2);
}

{
  return closure #1 in View.inspector<A, B>(behavior:presenting:content:)(a1, a2, *(v2 + 56));
}

uint64_t View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v50 = a7;
  v51 = a6;
  v49 = a4;
  v47 = a2;
  v48 = a3;
  v52 = a9;
  v54 = a11;
  v46 = a10;
  v16 = type metadata accessor for Optional();
  v42 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  v53 = a8;
  v21 = *(a8 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v44 = a1[1];
  v45 = v26;
  v43 = *(a1 + 16);
  (*(v21 + 16))(v25, v12, v24);
  (*(v17 + 16))(v20, a5, v16);
  v27 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v28 = (v22 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v17 + 80) + v28 + 17) & ~*(v17 + 80);
  v41 = (v29 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v46;
  *(v31 + 2) = v53;
  *(v31 + 3) = v32;
  *(v31 + 4) = v54;
  (*(v21 + 32))(&v31[v27], v25);
  v33 = &v31[v28];
  v34 = v47;
  v35 = v48;
  *v33 = v47;
  *(v33 + 1) = v35;
  v33[16] = v49;
  (*(v17 + 32))(&v31[v29], v20, v42);
  v36 = &v31[v41];
  v37 = v44;
  *v36 = v45;
  *(v36 + 1) = v37;
  v36[16] = v43;
  *&v31[v30] = v50;
  *&v31[(v30 + 15) & 0xFFFFFFFFFFFFFFF8] = v51;
  outlined copy of Binding<Int>?(v34, v35);
  type metadata accessor for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>(255, &lazy cache variable for type metadata for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>, &type metadata for InspectorStorage.PreferenceKey, &protocol witness table for InspectorStorage.PreferenceKey, type metadata accessor for IdentifiedPreferenceTransformModifier);
  v38 = type metadata accessor for ModifiedContent();
  v55[0] = v54;
  v55[1] = &protocol witness table for IdentifiedPreferenceTransformModifier<A>;

  result = swift_getWitnessTable(MEMORY[0x1E697E858], v38, v55);
  v40 = v52;
  *v52 = partial apply for closure #1 in View.inspector<A>(behavior:isPresented:presenting:placeholder:content:);
  v40[1] = v31;
  return result;
}

double View.inspector<A, B>(behavior:presenting:content:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *(a1 + 16);
  v29 = *a1;
  v30 = v16;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a3;
  v27 = a4;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.inspector<A, B>(behavior:presenting:content:), v19, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v17, &v28);
  View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)(&v29, 0, 0, 0, a2, 0, v28, a5, a9, a6, a8);

  return result;
}

double View.inspector<A, B>(behavior:isPresented:presenting:content:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = *(a1 + 16);
  v33 = *a1;
  v34 = v20;
  v24 = a8;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a6;
  v31 = a7;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.inspector<A, B>(behavior:isPresented:presenting:content:), v23, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v21, &v32);
  View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)(&v33, a2, a3, a4 & 1, a5, 0, v32, a8, a9, a10, a12);

  return result;
}

uint64_t closure #1 in View.inspector<A, B>(behavior:presenting:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6(v5);
  result = AnyView.init<A>(_:)();
  *a3 = result;
  return result;
}

double View.inspector<A, B, C>(behavior:presenting:placeholder:content:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(a1 + 16);
  v45 = *a1;
  v46 = v16;
  v43[0] = a3;
  v43[1] = a4;
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  swift_getFunctionTypeMetadata0();
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.inspector<A, B, C>(behavior:presenting:placeholder:content:), v35, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v17, &v44);
  v18 = v44;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a14;
  v33 = a5;
  v34 = a6;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in View.inspector<A, B, C>(behavior:presenting:placeholder:content:), v25, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v19, v43);
  View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)(&v45, 0, 0, 0, a2, v18, v43[0], a7, a9, a8, a12);

  return result;
}

uint64_t closure #1 in View.inspector<A, B, C>(behavior:presenting:placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*v6)(v5);
  result = AnyView.init<A>(_:)();
  *a4 = result;
  return result;
}

uint64_t partial apply for closure #2 in View.inspector<A, B, C>(behavior:presenting:placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for closure #2 in View.inspector<A, B, C>(behavior:presenting:placeholder:content:)(a1, a2);
}

{
  return closure #1 in View.inspector<A, B>(behavior:presenting:content:)(a1, a2, *(v2 + 56));
}

double View.inspector<A, B, C>(behavior:isPresented:presenting:placeholder:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t (**a7)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  MEMORY[0x1EEE9AC00](a1);
  v16 = *(v15 + 16);
  v38 = *v15;
  v39 = v16;
  v17();
  v18 = AnyView.init<A>(_:)();
  v28 = a9;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v35 = a6;
  v36 = a8;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.inspector<A, B, C>(behavior:isPresented:presenting:placeholder:content:), v27, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v19, &v37);
  View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)(&v38, a2, a3, a4 & 1, a5, v18, v37, a9, a7, a10, a13);

  return result;
}

double View.inspectorAnchor<A>(matching:anchor:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = a7;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for CGRect(0);

  Anchor.Source.init<A>(_:)();
  (*(v12 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a5;
  *(v15 + 5) = a6;
  (*(v12 + 32))(&v15[v14], &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  type metadata accessor for CGRect?(0);
  View.transformAnchorPreference<A, B>(key:value:transform:)();

  return result;
}

uint64_t closure #1 in View.inspectorAnchor<A>(matching:anchor:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  AnyHashable.init<A>(_:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v13, isUniquelyReferenced_nonNull_native);
  result = outlined destroy of AnyHashable(v13);
  *a1 = v12;
  return result;
}

uint64_t getEnumTagSinglePayload for InspectorBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for InspectorBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<InspectorColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<InspectorColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<InspectorColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<InspectorColumnWidth.TraitKey>, &type metadata for InspectorColumnWidth.TraitKey, &protocol witness table for InspectorColumnWidth.TraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<InspectorColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd_0_r_0_lAA17EnvironmentReaderVyAA15ModifiedContentVyxAA37IdentifiedPreferenceTransformModifierVyAA16InspectorStorageV0I3KeyVGGGAaBHPyHCTm(uint64_t a1)
{
  v1 = *(a1 + 24);
  type metadata accessor for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>(255, &lazy cache variable for type metadata for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>, &type metadata for InspectorStorage.PreferenceKey, &protocol witness table for InspectorStorage.PreferenceKey, type metadata accessor for IdentifiedPreferenceTransformModifier);
  v2 = type metadata accessor for ModifiedContent();
  v5[0] = v1;
  v5[1] = &protocol witness table for IdentifiedPreferenceTransformModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v2, v5);
  v3 = type metadata accessor for EnvironmentReader();
  return swift_getWitnessTable(MEMORY[0x1E697ED40], v3);
}

void type metadata accessor for _AnchorTransformModifier<CGRect?, InspectorAnchorPreferenceKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnchorTransformModifier<CGRect?, InspectorAnchorPreferenceKey>)
  {
    type metadata accessor for CGRect?(255);
    v1 = type metadata accessor for _AnchorTransformModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _AnchorTransformModifier<CGRect?, InspectorAnchorPreferenceKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _AnchorTransformModifier<CGRect?, InspectorAnchorPreferenceKey> and conformance _AnchorTransformModifier<A, B>()
{
  result = lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, InspectorAnchorPreferenceKey> and conformance _AnchorTransformModifier<A, B>;
  if (!lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, InspectorAnchorPreferenceKey> and conformance _AnchorTransformModifier<A, B>)
  {
    type metadata accessor for _AnchorTransformModifier<CGRect?, InspectorAnchorPreferenceKey>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980450], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, InspectorAnchorPreferenceKey> and conformance _AnchorTransformModifier<A, B>);
  }

  return result;
}

double destroy for InspectorStorage(void *a1)
{
  if (a1[1])
  {
  }

  if (a1[9])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 6);
  }

  return result;
}

uint64_t initializeWithCopy for InspectorStorage(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  v5 = a2[9];
  if (v5)
  {
    v6 = a2[10];
    *(a1 + 72) = v5;
    *(a1 + 80) = v6;
    (**(v5 - 8))(a1 + 48, a2 + 6);
  }

  else
  {
    v7 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v7;
    *(a1 + 80) = a2[10];
  }

  v8 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v8;
  v10 = a2[13];
  v9 = a2[14];
  *(a1 + 104) = v10;
  *(a1 + 112) = v9;

  return a1;
}

uint64_t assignWithCopy for InspectorStorage(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = a2[1];

      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      _s7SwiftUI7BindingVySbGWOhTm_0(a1, type metadata accessor for Binding<Bool>);
      v5 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v6;
  }

  *(a1 + 17) = *(a2 + 17);
  v7 = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  v8 = a2[9];
  if (*(a1 + 72))
  {
    v9 = (a1 + 48);
    if (v8)
    {
      __swift_assign_boxed_opaque_existential_1(v9, a2 + 6);
    }

    else
    {
      outlined destroy of AnyHashable(v9);
      v10 = a2[10];
      v11 = *(a2 + 4);
      *(a1 + 48) = *(a2 + 3);
      *(a1 + 64) = v11;
      *(a1 + 80) = v10;
    }
  }

  else if (v8)
  {
    *(a1 + 72) = v8;
    *(a1 + 80) = a2[10];
    (**(v8 - 8))(a1 + 48, a2 + 6);
  }

  else
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    *(a1 + 80) = a2[10];
    *(a1 + 48) = v12;
    *(a1 + 64) = v13;
  }

  *(a1 + 88) = a2[11];

  *(a1 + 96) = a2[12];

  *(a1 + 104) = a2[13];

  *(a1 + 112) = a2[14];

  return a1;
}

uint64_t assignWithTake for InspectorStorage(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = v4;

      goto LABEL_6;
    }

    _s7SwiftUI7BindingVySbGWOhTm_0(a1, type metadata accessor for Binding<Bool>);
  }

  *a1 = *a2;
LABEL_6:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  if (*(a1 + 72))
  {
    if (*(a2 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 48));
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 48);
    }
  }

  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for InspectorStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for InspectorStorage(uint64_t result, unsigned int a2, unsigned int a3)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t closure #1 in View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v70 = a7;
  v71 = a8;
  v60 = a6;
  v64 = a5;
  v62 = a3;
  v63 = a4;
  v57 = a2;
  v72 = a9;
  v68 = a11;
  v69 = a12;
  v67 = a10;
  v73 = a15;
  v58 = a14;
  v17 = type metadata accessor for Optional();
  v52 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v54 = &v51 - v20;
  v22 = *(a13 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v53 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>(255, &lazy cache variable for type metadata for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>, &type metadata for InspectorStorage.PreferenceKey, &protocol witness table for InspectorStorage.PreferenceKey, type metadata accessor for IdentifiedPreferenceTransformModifier);
  v25 = type metadata accessor for ModifiedContent();
  v26 = *(v25 - 8);
  v65 = v25;
  v66 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v59 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v61 = &v51 - v30;
  v31 = *a1;
  v55 = a1[1];
  v56 = v31;
  (*(v22 + 16))(&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a13, v29);
  v51 = v18;
  (*(v18 + 16))(v21, v60, v17);
  v32 = (*(v22 + 80) + 57) & ~*(v22 + 80);
  v33 = (v23 + *(v18 + 80) + v32) & ~*(v18 + 80);
  v60 = (v33 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v58;
  *(v36 + 16) = a13;
  *(v36 + 24) = v37;
  v39 = v62;
  v38 = v63;
  *(v36 + 32) = v73;
  *(v36 + 40) = v39;
  *(v36 + 48) = v38;
  *(v36 + 56) = v64;
  (*(v22 + 32))(v36 + v32, v53);
  (*(v51 + 32))(v36 + v33, v54, v52);
  v40 = v36 + v60;
  v41 = v71;
  *v40 = v70;
  *(v40 + 8) = v41;
  *(v40 + 16) = v67;
  v42 = v69;
  *(v36 + v34) = v68;
  *(v36 + v35) = v42;
  v43 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
  v44 = v55;
  *v43 = v56;
  v43[1] = v44;
  outlined copy of Binding<Int>?(v39, v38);

  v45 = v59;
  v46 = v73;
  View.transformIdentifiedPreference<A>(_:transform:)(&type metadata for InspectorStorage.PreferenceKey, partial apply for closure #1 in closure #1 in View.inspector<A>(behavior:isPresented:presenting:placeholder:content:), v36, a13, &type metadata for InspectorStorage.PreferenceKey, v73, &protocol witness table for InspectorStorage.PreferenceKey);

  v74[0] = v46;
  v74[1] = &protocol witness table for IdentifiedPreferenceTransformModifier<A>;
  v47 = v65;
  swift_getWitnessTable(MEMORY[0x1E697E858], v65, v74);
  v48 = v61;
  static ViewBuilder.buildExpression<A>(_:)();
  v49 = *(v66 + 8);
  v49(v45, v47);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v49)(v48, v47);
}

unint64_t closure #1 in closure #1 in View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *a2;
  v27 = 0u;
  v28 = 0u;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = specialized View.isPresentedValue<A>(data:isPresented:hasPlaceholder:)(a7, a3, a4, a5, 1, a15, a16) & 1;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v29 = 0;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  outlined copy of Binding<Int>?(v20, v21);

  return specialized Dictionary.subscript.setter(&v20, v19);
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance InspectorStorage.PreferenceKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  a2(&v13);
  v10 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  a7(v10, a6, 0, isUniquelyReferenced_nonNull_native, &v13);

  *a1 = v13;
  return result;
}

void specialized LazyMapSequence.Iterator.next()(uint64_t a1@<X8>)
{
  type metadata accessor for (key: UIMenuElement, value: CommandOperation)(0);
  v42 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandOperation(0);
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (key: UIMenuElement, value: CommandOperation)?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v39 - v13);
  v17 = *v1;
  v16 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v43 = v19;
  v44 = a1;
  if (v20)
  {
    v21 = v18;
LABEL_10:
    v25 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    v27 = *(*(v17 + 48) + 8 * v26);
    outlined init with copy of CommandOperation(*(v17 + 56) + *(v41 + 72) * v26, v8);
    v28 = v42;
    v29 = *(v42 + 48);
    *v15 = v27;
    v30 = v8;
    v31 = v28;
    _s7SwiftUI16CommandOperationVWObTm_0(v30, v15 + v29, type metadata accessor for CommandOperation);
    (*(v4 + 56))(v15, 0, 1, v31);
    v32 = v27;
    v24 = v21;
LABEL_11:
    *v1 = v17;
    v1[1] = v16;
    v1[2] = v43;
    v1[3] = v24;
    v1[4] = v25;
    v33 = v1[5];
    _s7SwiftUI16CommandOperationVWObTm_0(v15, v11, type metadata accessor for (key: UIMenuElement, value: CommandOperation)?);
    v34 = 1;
    v35 = (*(v4 + 48))(v11, 1, v31);
    v36 = v44;
    if (v35 != 1)
    {
      v37 = v40;
      _s7SwiftUI16CommandOperationVWObTm_0(v11, v40, type metadata accessor for (key: UIMenuElement, value: CommandOperation));
      v33(v37);
      _s7SwiftUI7BindingVySbGWOhTm_0(v37, type metadata accessor for (key: UIMenuElement, value: CommandOperation));
      v34 = 0;
    }

    type metadata accessor for (UIMenuElement, CommandOperation)(0);
    (*(*(v38 - 8) + 56))(v36, v34, 1, v38);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v31 = v42;
        (*(v4 + 56))(&v39 - v13, 1, 1, v42, v14);
        v25 = 0;
        goto LABEL_11;
      }

      v20 = *(v16 + 8 * v21);
      ++v18;
      if (v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

{
  type metadata accessor for (key: UUID, value: PlatformItemList)(0);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (key: UUID, value: PlatformItemList)?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42, v13);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    _s7SwiftUI16CommandOperationVWObTm_0(v14, v33, type metadata accessor for (key: UUID, value: PlatformItemList)?);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      _s7SwiftUI16CommandOperationVWObTm_0(v36, v39, type metadata accessor for (key: UUID, value: PlatformItemList));
      v34(v37);
      _s7SwiftUI7BindingVySbGWOhTm_0(v37, type metadata accessor for (key: UUID, value: PlatformItemList));
      v35 = 0;
    }

    type metadata accessor for (UUID, PlatformItemList)(0);
    (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v12, 1, 1, v44, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

{
  v3 = *(v1 + 288);
  v4 = *(v1 + 296);
  v5 = *(v1 + 304);
  if (v3 == *(v1 + 264))
  {
    v6 = *(v1 + 280);
    if (*(v1 + 304))
    {
      if ((*(v1 + 280) & 1) == 0)
      {
        v5 = 1;
        goto LABEL_9;
      }

LABEL_15:
      *(a1 + 80) = 0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 88) = -256;
      return;
    }

    if (v4 != *(v1 + 272))
    {
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }

    v5 = 0;
  }

LABEL_9:
  v7 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    specialized ShadowRowCollection.endIndex.getter();
    if (v7 == v8)
    {
      v9 = 0;
LABEL_14:
      *(v1 + 288) = v7;
      *(v1 + 296) = v9;
      *(v1 + 304) = v7 == v8;
      v10 = *(v1 + 312);
      v11[0] = v3;
      v11[1] = v4;
      v12 = v5;
      v10(v11);
      return;
    }

    if (v5)
    {
      goto LABEL_18;
    }

    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void specialized LazyMapSequence.Iterator.next()(_OWORD *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    outlined init with copy of AnyHashable(*(v4 + 48) + 40 * (__clz(__rbit64(v7)) | (v8 << 6)), &v20);
    v13 = *(&v21 + 1);
    v18 = v21;
    v19 = v20;
    v14 = v22;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    v15 = v13;

    if (v15)
    {
      v17 = v1[5];
      v20 = v19;
      v21 = v18;
      v22 = v14;
      v23 = v16;
      v17(&v20);
      _s7SwiftUI7BindingVySbGWOhTm_0(&v20, type metadata accessor for (key: AnyHashable, value: Anchor<CGRect?>));
    }

    else
    {
LABEL_13:
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
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
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void type metadata accessor for (key: AnyHashable, value: Anchor<CGRect?>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: AnyHashable, value: Anchor<CGRect?>))
  {
    type metadata accessor for CGRect?(255, &lazy cache variable for type metadata for Anchor<CGRect?>, type metadata accessor for CGRect?, MEMORY[0x1E6981798]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: AnyHashable, value: Anchor<CGRect?>));
    }
  }
}

unint64_t type metadata accessor for UIMenuElement()
{
  result = lazy cache variable for type metadata for UIMenuElement;
  if (!lazy cache variable for type metadata for UIMenuElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIMenuElement);
  }

  return result;
}

uint64_t outlined init with copy of CommandOperation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandOperation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = (*(*(v6 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (v9 + *(v10 + 80) + 17) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  return closure #1 in View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)(a1, v2 + v8, *(v2 + v9), *(v2 + v9 + 8), *(v2 + v9 + 16), v2 + v11, *(v2 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), a2, *(v2 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v12 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v12 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v6, v5, v7);
}

unint64_t partial apply for closure #1 in closure #1 in View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)(uint64_t a1, unsigned int *a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(*(v6 - 8) + 64);
  v9 = (*(*(v6 - 8) + 80) + 57) & ~*(*(v6 - 8) + 80);
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in View.inspector<A>(behavior:isPresented:presenting:placeholder:content:)(a1, a2, *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v9, v2 + v11, *(v2 + v13), *(v2 + v13 + 8), *(v2 + v13 + 16), *(v2 + v14), *(v2 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v6, v5, v7);
}

uint64_t specialized View.isPresentedValue<A>(data:isPresented:hasPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a5;
  if (a3)
  {
    v11 = a2;
    v12 = a3;
    v13 = a4 & 1;
    type metadata accessor for Binding<Bool>();
    MEMORY[0x18D00ACC0](&v10);
    v8 = v10 & v7;
  }

  else
  {
    v8 = ((*(*(a7 - 8) + 48))(a1, 1, a7, a4, a5, a6) != 1) | a5;
  }

  return v8 & 1;
}

void type metadata accessor for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>;
  if (!lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>)
  {
    type metadata accessor for IdentifiedPreferenceTransformModifier<InspectorStorage.PreferenceKey>(255, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented>, &type metadata for FocusedValues.__Key_inspectorPresented, &protocol witness table for FocusedValues.__Key_inspectorPresented, type metadata accessor for FocusedValuePropertyKey);
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValuePropertyKey<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>);
  }

  return result;
}

void type metadata accessor for (key: Selector, value: CommandAction)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: Selector, value: CommandAction))
  {
    type metadata accessor for CommandAction();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: Selector, value: CommandAction));
    }
  }
}

id UIScrollView.updateEdgeEffect(styles:hidden:disabled:layoutDirection:)(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v8 = *a4;
  v11 = 0;
  if (*(a1 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if ((v10 & 1) != 0 && *(*(a1 + 56) + v9) == 1)
    {
      v11 = 1;
    }
  }

  [v4 _setPocketStyle_forEdge_];
  if (*(a2 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v13 & 1) != 0))
  {
    v14 = *(*(a2 + 56) + v12);
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(1u);
  if (v16)
  {
    v17 = *(*(a1 + 56) + v15) == 1;
    goto LABEL_14;
  }

LABEL_13:
  v17 = 0;
LABEL_14:
  if (v8)
  {
    v18 = 8;
  }

  else
  {
    v18 = 2;
  }

  [v4 _setPocketStyle_forEdge_];
  if (*(a2 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(1u);
    if (v20)
    {
      if (*(*(a2 + 56) + v19))
      {
        v21 = v18;
      }

      else
      {
        v21 = 0;
      }

      v14 |= v21;
    }
  }

  v24 = 0;
  if (*(a1 + 16))
  {
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(2u);
    if ((v23 & 1) != 0 && *(*(a1 + 56) + v22) == 1)
    {
      v24 = 1;
    }
  }

  [v4 _setPocketStyle_forEdge_];
  if (*(a2 + 16))
  {
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(2u);
    if (v26)
    {
      if (*(*(a2 + 56) + v25))
      {
        v14 |= 4uLL;
      }
    }
  }

  v29 = *(a1 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(3u), (v28 & 1) != 0) && *(*(a1 + 56) + v27) == 1;
  if (v8)
  {
    v30 = 2;
  }

  else
  {
    v30 = 8;
  }

  [v4 _setPocketStyle_forEdge_];
  if (*(a2 + 16))
  {
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(3u);
    if (v32)
    {
      if ((*(*(a2 + 56) + v31) & ((v14 & v30) == 0)) != 0)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0;
      }

      v14 |= v33;
    }
  }

  if ([v4 _hiddenPocketEdges] != v14)
  {
    [v4 _setHiddenPocketEdges_];
  }

  result = [v4 _pocketsEnabled];
  if (((result ^ a3) & 1) == 0)
  {

    return [v4 _setPocketsEnabled_];
  }

  return result;
}

Swift::Void __swiftcall ScrollViewHelper.didLayoutSubviews()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest) == 1)
    {
      *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest) = 0;
      [Strong contentOffset];
      v4 = v3;
      v6 = v5;
      v9 = v3;
      v10 = v5;
      v11 = 1;
      memset(v7, 0, sizeof(v7));
      v8 = 1;
      ScrollViewHelper.updateTargetContentOffset(_:velocity:scrollGeometry:originalOffset:)(&v9, v7, 0, 0, 1, 0.0, 0.0);
      if (vabdd_f64(v9, v4) >= 0.01 || vabdd_f64(v10, v6) >= 0.01)
      {
        [v2 setContentOffset:0 animated:?];
      }
    }
  }

  ScrollViewHelper.retargetContentOffsetIfNeeded()();
}

Swift::Void __swiftcall ScrollViewHelper.willStartPanning()()
{
  v1 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates) = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong contentOffset];
    v8 = v7;
    v10 = v9;

    v11 = v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset;
    *v11 = v8;
    *(v11 + 8) = v10;
    *(v11 + 16) = 0;
  }

  *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 2;
  v12 = v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 66) = 0;
  *(v12 + 64) = 512;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
  v13 = *(v0 + v1);
  v3 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  if (v3)
  {
    goto LABEL_12;
  }

  *(v0 + v1) = v14;
  if (!v14 && *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate) != 2)
  {

    ScrollViewHelper.updateGraphState(isPreferred:)(0);
  }
}

Swift::Void __swiftcall ScrollViewHelper.mayEndPanning(velocity:targetOffset:)(CGPoint velocity, CGPoint *targetOffset)
{
  y = velocity.y;
  x = velocity.x;
  v6 = *targetOffset;
  v20 = 1;
  v17 = v6;
  memset(v18, 0, sizeof(v18));
  v19 = 1;
  ScrollViewHelper.updateTargetContentOffset(_:velocity:scrollGeometry:originalOffset:)(&targetOffset->x, v18, 0, 0, 1, velocity.x, velocity.y);
  v7 = v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset;
  if (*(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset + 16))
  {
    v8 = targetOffset;
  }

  else
  {
    v8 = (v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset);
  }

  v10 = v8->x;
  v9 = v8->y;
  v11 = *targetOffset;
  v12 = targetOffset->x - v8->x;
  v13 = targetOffset->y - v9;
  v14 = (v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange);
  *v14 = v12;
  v14[1] = v13;
  v15 = (v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastVelocity);
  *v15 = x;
  v15[1] = y;
  LOBYTE(v15) = *(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) == 3;
  v16 = v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
  *(v16 + 16) = v11;
  *v16 = v17;
  *(v16 + 32) = x;
  *(v16 + 40) = y;
  *(v16 + 48) = v10;
  *(v16 + 56) = v9;
  *(v16 + 64) = 0;
  *(v16 + 65) = v15;
  *(v16 + 66) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
}

uint64_t ScrollViewHelper.updateTargetContentOffset(_:velocity:scrollGeometry:originalOffset:)(double *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7)
{
  v8 = v7;
  v13 = *(a2 + 112);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    [result adjustedContentInset];
    v17 = v16;
    v19 = v18;
    v66 = v21;
    v67 = v20;
    if (v13)
    {
      v22 = *(v8 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastEnvironment + 8);
      *&v93 = *(v8 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastEnvironment);
      *(&v93 + 1) = v22;

      UIScrollView.scrollGeometry(env:)();
    }

    else
    {
      v23 = a2[5];
      v90 = a2[4];
      v91 = v23;
      v92 = a2[6];
      v24 = a2[1];
      v86 = *a2;
      v87 = v24;
      v25 = a2[3];
      v88 = a2[2];
      v89 = v25;
    }

    v69 = v17;
    v83 = v90;
    v84 = v91;
    v85 = v92;
    v79 = v86;
    v80 = v87;
    v81 = v88;
    v82 = v89;
    v26 = v8 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
    swift_beginAccess();
    v68 = v26;
    v65 = *(v26 + 81);
    if (v65 == 1)
    {
      ScrollGeometry.contentSize.getter();
      ScrollGeometry.containerSize.getter();
      v97 = v90;
      v98 = v91;
      v99 = v92;
      v93 = v86;
      v94 = v87;
      v95 = v88;
      v96 = v89;
      ScrollGeometry.contentSize.getter();
      v76[0] = v90;
      v76[1] = v91;
      v76[2] = v92;
      v72 = v86;
      v73 = v87;
      v74 = v88;
      v75 = v89;
      ScrollGeometry.containerSize.getter();
    }

    v97 = v90;
    v98 = v91;
    v99 = v92;
    v93 = v86;
    v94 = v87;
    v95 = v88;
    v96 = v89;
    ScrollGeometry.containerSize.getter();
    ScrollTarget.init(rect:anchor:)();
    v27 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes;
    v28 = *(v8 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes);
    v29 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options;
    v30 = 4;
    if ((*(v8 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options) & 1) != 0 && *(v8 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes))
    {
      v30 = *(v68 + 80);
    }

    EnvironmentValues.init()();
    v72 = v86;
    v73 = v87;
    v74 = v88;
    LOBYTE(v75) = v89;
    *(&v75 + 1) = a6;
    *v76 = a7;
    *(&v76[3] + 8) = v89;
    *(&v76[4] + 8) = v90;
    *(&v76[5] + 8) = v91;
    *(&v76[6] + 8) = v92;
    *(v76 + 8) = v86;
    *(&v76[1] + 8) = v87;
    *(&v76[2] + 8) = v88;
    BYTE8(v76[7]) = v28;
    BYTE9(v76[7]) = v30;
    *&v77 = MEMORY[0x1E69E7CC0];
    *(&v77 + 1) = MEMORY[0x1E69E7CC0];
    EnvironmentValues.init()();

    v78 = v93;
    v103 = v76[6];
    v104 = v76[7];
    v99 = v76[2];
    v100 = v76[3];
    v101 = v76[4];
    v102 = v76[5];
    v95 = v88;
    v96 = v75;
    v97 = v76[0];
    v98 = v76[1];
    v93 = v86;
    v94 = v87;
    v105 = v77;
    v106 = v78;
    ScrollGeometry.containerSize.getter();
    ScrollTarget.init(rect:anchor:)();
    if ((*(v8 + v29) & 1) != 0 && *(v8 + v27))
    {
      v31 = outlined init with copy of ScrollEnvironmentProperties?(v68 + 8, &v72, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior);
      if (*(&v73 + 1))
      {
        v70[2] = v74;
        v70[3] = v75;
        v71 = *&v76[0];
        v70[0] = v72;
        v70[1] = v73;
        MEMORY[0x1EEE9AC00](v31);
        static Update.ensure<A>(_:)();
        ScrollTarget.rect.getter();
        v33 = v32;
        v35 = v34;
        if (v65)
        {
          v76[0] = v83;
          v76[1] = v84;
          v76[2] = v85;
          v72 = v79;
          v73 = v80;
          v74 = v81;
          v75 = v82;
          ScrollGeometry.contentSize.getter();
          v33 = v36 - (v33 + ScrollGeometry.containerSize.getter());
        }

        v37 = byte_1EFF8CFF8;
        v76[0] = v83;
        v76[1] = v84;
        v76[2] = v85;
        v72 = v79;
        v73 = v80;
        v74 = v81;
        v75 = v82;
        ScrollGeometry.contentSize.getter();
        v39 = v38;
        v41 = v40;
        v76[0] = v83;
        v76[1] = v84;
        v76[2] = v85;
        v72 = v79;
        v73 = v80;
        v74 = v81;
        v75 = v82;
        v42 = ScrollGeometry.containerSize.getter();
        if (v37)
        {
          v44 = v41;
        }

        else
        {
          v44 = v39;
        }

        if (v37)
        {
          v45 = v17 + v67;
        }

        else
        {
          v45 = v19 + v66;
        }

        v46 = v45 + v44;
        if (v37)
        {
          v47 = v35;
        }

        else
        {
          v47 = v33;
        }

        if (v37)
        {
          v42 = v43;
        }

        v48 = v46 - v42;
        v49 = -v45;
        if (v48 > 0.0)
        {
          if (v47 >= v49)
          {
            v49 = v47;
          }

          if (v48 >= v49)
          {
            v48 = v49;
          }

LABEL_37:
          if (!v37)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (v47 >= v49)
        {
          v48 = v47;
          if (v47 <= 0.0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v48 = -v45;
          if (v45 >= 0.0)
          {
            goto LABEL_37;
          }
        }

        v48 = 0.0;
        if ((v37 & 1) == 0)
        {
LABEL_39:
          v50 = byte_1EFF8CFF9;
          v76[0] = v83;
          v76[1] = v84;
          v76[2] = v85;
          v72 = v79;
          v73 = v80;
          v74 = v81;
          v75 = v82;
          ScrollGeometry.contentSize.getter();
          v52 = v51;
          v54 = v53;
          v76[0] = v83;
          v76[1] = v84;
          v76[2] = v85;
          v72 = v79;
          v73 = v80;
          v74 = v81;
          v75 = v82;
          v55 = ScrollGeometry.containerSize.getter();
          if (v50)
          {
            v57 = v54;
          }

          else
          {
            v57 = v52;
          }

          if (v50)
          {
            v58 = v17 + v67;
          }

          else
          {
            v58 = v19 + v66;
          }

          v59 = v58 + v57;
          if (v50)
          {
            v60 = v35;
          }

          else
          {
            v60 = v48;
          }

          if (v50)
          {
            v55 = v56;
          }

          v61 = v59 - v55;
          v62 = -v58;
          if (v61 > 0.0)
          {
            if (v60 >= v62)
            {
              v62 = v60;
            }

            v60 = v61;
            v63 = v15;
            v64 = v69;
            if (v61 >= v62)
            {
              v60 = v62;
            }

LABEL_57:
            if (!v50)
            {
LABEL_59:

              outlined destroy of ScrollTargetBehaviorContext(&v93);
              *a1 = v60 - v19;
              a1[1] = v35 - v64;
              outlined destroy of AccessibilityRelationshipScope.Key(v70);
              return 1;
            }

LABEL_58:
            v35 = v60;
            v60 = v48;
            goto LABEL_59;
          }

          v63 = v15;
          v64 = v69;
          if (v60 >= v62)
          {
            if (v60 <= 0.0)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v60 = -v58;
            if (v58 >= 0.0)
            {
              goto LABEL_57;
            }
          }

          v60 = 0.0;
          if ((v50 & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

LABEL_38:
        v35 = v48;
        v48 = v33;
        goto LABEL_39;
      }

      outlined destroy of ScrollTargetBehaviorContext(&v93);
    }

    else
    {

      outlined destroy of ScrollTargetBehaviorContext(&v93);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      *&v76[0] = 0;
    }

    outlined destroy of ScrollEnvironmentProperties?(&v72, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720], type metadata accessor for ScrollEnvironmentProperties?);
    return 0;
  }

  return result;
}

Swift::Void __swiftcall ScrollViewHelper.didEndPanning(willDecelerate:)(Swift::Bool willDecelerate)
{
  if (willDecelerate)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = v2;
  if (willDecelerate)
  {
    ScrollViewHelper.updateGraphState(isPreferred:)(0);
    v3 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange;
    v4 = 0.0;
    v5 = 0.0;
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange) != 0.0)
    {
      v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange) / fabs(*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange));
    }

    v6 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias;
    *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias) = v5;
    v7 = *(v3 + 8);
    if (v7 != 0.0)
    {
      v4 = v7 / fabs(v7);
    }

    *(v6 + 8) = v4;
  }

  else
  {
    v8 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 66) = 0;
    *(v8 + 64) = 512;
    ScrollViewHelper.updateGraphState(isPreferred:)(0);
    v9 = (v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias);
    *v9 = 0;
    v9[1] = 0;
  }

  v10 = (v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastVelocity);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange);
  *v11 = 0;
  v11[1] = 0;
  v12 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
}

void *UIScrollView.scrollGeometry(env:)()
{
  [v2 adjustedContentInset];
  v4 = v3;
  EnvironmentValues.pixelLength.getter();
  [v2 contentOffset];
  [v2 frame];
  EnvironmentValues.layoutDirection.getter();
  [v2 contentSize];
  return ScrollGeometry.init(contentOffset:contentSize:contentInsets:containerSize:)();
}

Swift::Void __swiftcall ScrollViewHelper.requestTargetContentOffsetUpdate()()
{
  if (!*(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) && (*(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong setNeedsLayout];
    }
  }
}

void ScrollViewHelper.updateScrollBehaviorState(canRetarget:)(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v28 = Strong;
  if ([Strong isTracking])
  {

    return;
  }

  v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates;
  v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates) = v7;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options) & 1) == 0 || !*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes))
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
LABEL_15:
    outlined destroy of ScrollEnvironmentProperties?(&v32, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720], type metadata accessor for ScrollEnvironmentProperties?);
    v12 = *(v1 + v4);
    v6 = __OFSUB__(v12, 1);
    v13 = v12 - 1;
    if (!v6)
    {
      *(v1 + v4) = v13;
      if (v13 || *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate) == 2)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_40;
  }

  v8 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties?(v8 + 8, &v32, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior);
  if (!*(&v33 + 1))
  {
    goto LABEL_15;
  }

  v37[2] = v34;
  v37[3] = v35;
  v38 = v36;
  v9 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase;
  v10 = *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase);
  v37[0] = v32;
  v37[1] = v33;
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition) == 1)
  {
    if (((v10 != 3) & ResolvedScrollBehavior.containsLazyScrollableCollection.getter()) != 0 || (a1 & 1) == 0)
    {
LABEL_24:
      outlined destroy of AccessibilityRelationshipScope.Key(v37);
      v15 = *(v1 + v4);
      v6 = __OFSUB__(v15, 1);
      v16 = v15 - 1;
      if (!v6)
      {
        *(v1 + v4) = v16;
        v14 = v28;
        if (v16 || *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate) == 2)
        {
          goto LABEL_20;
        }

LABEL_18:
        ScrollViewHelper.updateGraphState(isPreferred:)(0);
LABEL_19:
        v14 = v28;
LABEL_20:

        return;
      }

      goto LABEL_41;
    }

    v11 = *(v1 + v9);
  }

  else
  {
    v11 = v10;
    if ((a1 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v11 == 4)
  {
    goto LABEL_24;
  }

  v17 = *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags);
  if ((v17 & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags) = v17 | 1;
  }

  memset(v29, 0, sizeof(v29));
  v31 = 0;
  v30 = 512;
  if (v10 == 3 && (v18 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState, *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 65) << 8 != 512) || (specialized getter of defaultTargetOffsetState #1 in ScrollViewHelper.updateScrollBehaviorState(canRetarget:)(&v32, v28, v29, v10 == 3), v19 = BYTE2(v36), v20 = v36, v18 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState, v21 = v36 & 0xFF00, v22 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState, v23 = v33, *v22 = v32, *(v22 + 16) = v23, v24 = v35, *(v22 + 32) = v34, *(v22 + 48) = v24, *(v22 + 66) = v19, *(v22 + 64) = v20, v21 != 512))
  {
    *(v1 + v18 + 66) = 1;
  }

  v25 = *(v1 + v4);
  v6 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  if (v6)
  {
    goto LABEL_42;
  }

  *(v1 + v4) = v26;
  v27 = v28;
  if (!v26 && *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate) != 2)
  {
    ScrollViewHelper.updateGraphState(isPreferred:)(0);
    v27 = v28;
  }

  [v27 setNeedsLayout];

  outlined destroy of AccessibilityRelationshipScope.Key(v37);
}

void specialized getter of defaultTargetOffsetState #1 in ScrollViewHelper.updateScrollBehaviorState(canRetarget:)(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t a3@<X0>, char a4@<W3>)
{
  v6 = *(a3 + 64);
  v7 = v6 | (*(a3 + 66) << 16);
  if ((v6 & 0xFF00) == 0x200)
  {
    [a2 contentOffset];
    v11 = v10;
    v13 = v12;
    [a2 contentOffset];
    v15 = v14;
    v17 = v16;
    v18 = ScrollViewHelper.velocityBias.getter();
    v20 = v19;
    LOBYTE(v7) = 1;
    LOBYTE(v21) = a4 & 1;
    swift_beginAccess();
    LOBYTE(v22) = 0;
    *a3 = v11;
    *(a3 + 8) = v13;
    *(a3 + 16) = v15;
    *(a3 + 24) = v17;
    *(a3 + 32) = v18;
    *(a3 + 40) = v20;
    v23 = 0uLL;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 1;
    *(a3 + 65) = a4 & 1;
    *(a3 + 66) = 0;
  }

  else
  {
    v23 = *(a3 + 48);
    v18 = *(a3 + 32);
    v20 = *(a3 + 40);
    v15 = *(a3 + 16);
    v17 = *(a3 + 24);
    v21 = v7 >> 8;
    v22 = HIWORD(v7);
    v11 = *a3;
    v13 = *(a3 + 8);
  }

  *a1 = v11;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v17;
  *(a1 + 4) = v18;
  a1[5] = v20;
  *(a1 + 3) = v23;
  *(a1 + 64) = v7;
  *(a1 + 65) = v21;
  *(a1 + 66) = v22;
}

double ScrollViewHelper.velocityBias.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = 0.0;
  if (Strong)
  {
    v3 = Strong;
    [Strong _effectiveHorizontalVelocity];
    v5 = v4;

    if (v5 == 0.0)
    {
      v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias);
    }

    else
    {
      v2 = v5 / fabs(v5);
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 _effectiveVerticalVelocity];
  }

  return v2;
}

id UIScrollView.alignToContentInsets()()
{
  result = [v0 window];
  if (result)
  {

    v2 = [v0 traitCollection];
    [v2 displayScale];
    v4 = v3;

    v5 = 1.0 / v4;
    [v0 adjustedContentInset];
    EdgeInsets.originOffset.getter();
    if (v5 == 1.0)
    {
      v8 = round(v6);
      v9 = round(v7);
    }

    else
    {
      v8 = v5 * round(v6 / v5);
      v9 = v5 * round(v7 / v5);
    }

    v10 = -v8;
    v11 = -v9;

    return [v0 setContentOffset:0 animated:{v10, v11}];
  }

  return result;
}

id UIScrollView.updatePagingProperties(properties:)()
{
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  if ([v0 isPagingEnabled])
  {
    [v0 adjustedContentInset];
    v2 = -v6;
    v1 = -v5;
    v9 = v5 + v7;
    if (v6 == v8)
    {
      v4 = v8 * 0.5 - (v6 + v8);
    }

    else
    {
      v4 = -(v6 + v8);
    }

    if (v5 == v7)
    {
      v3 = v7 * 0.5 - v9;
    }

    else
    {
      v3 = -v9;
    }
  }

  [v0 _pagingOrigin];
  if (v2 != v11 || v1 != v10)
  {
    [v0 _setPagingOrigin_];
  }

  result = [v0 _interpageSpacing];
  if (v4 != v15 || v3 != v14)
  {

    return [v0 _setInterpageSpacing_];
  }

  return result;
}

void ScrollViewHelper.prefetch(until:)(uint64_t a1)
{
  ScrollPrefetchState.init(deadline:)();
  if (Axis.Set.contains(_:)())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong _effectiveHorizontalVelocity];
      v5 = v4;

      if (v5 == 0.0)
      {
        v6 = *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias);
        v7 = v6 < 0.0;
        if (v6 == 0.0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v8 = v5 / fabs(v5);
        v7 = v8 < 0.0;
        if (v8 == 0.0)
        {
          goto LABEL_12;
        }
      }

      if (v7)
      {
        v9 = 2;
      }

      else
      {
        v9 = 8;
      }

      if ((v18 & v9) == 0)
      {
        v18 |= v9;
      }
    }
  }

LABEL_12:
  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10;
  [v10 _effectiveVerticalVelocity];
  v13 = v12;

  if (v13 == 0.0)
  {
    v14 = *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias + 8);
    v15 = v14 < 0.0;
    if (v14 == 0.0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = v13 / fabs(v13);
    v15 = v16 < 0.0;
    if (v16 == 0.0)
    {
      goto LABEL_23;
    }
  }

  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = 4;
  }

  if ((v18 & v17) == 0)
  {
    v18 |= v17;
  }

LABEL_23:
  if (v18)
  {
    ScrollPrefetchState.commit(to:)();
  }
}

uint64_t getEnumTagSinglePayload for ScrollViewHelper.TargetOffsetState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 67))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewHelper.TargetOffsetState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options()
{
  result = lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options;
  if (!lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHelper.Options, &type metadata for ScrollViewHelper.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options;
  if (!lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHelper.Options, &type metadata for ScrollViewHelper.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options;
  if (!lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHelper.Options, &type metadata for ScrollViewHelper.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options;
  if (!lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHelper.Options, &type metadata for ScrollViewHelper.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHelper.Options and conformance ScrollViewHelper.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags()
{
  result = lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags;
  if (!lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHelper.UpdateFlags, &type metadata for ScrollViewHelper.UpdateFlags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags;
  if (!lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHelper.UpdateFlags, &type metadata for ScrollViewHelper.UpdateFlags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags;
  if (!lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHelper.UpdateFlags, &type metadata for ScrollViewHelper.UpdateFlags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags;
  if (!lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHelper.UpdateFlags, &type metadata for ScrollViewHelper.UpdateFlags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHelper.UpdateFlags and conformance ScrollViewHelper.UpdateFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewHelper.PendingUpdate and conformance ScrollViewHelper.PendingUpdate()
{
  result = lazy protocol witness table cache variable for type ScrollViewHelper.PendingUpdate and conformance ScrollViewHelper.PendingUpdate;
  if (!lazy protocol witness table cache variable for type ScrollViewHelper.PendingUpdate and conformance ScrollViewHelper.PendingUpdate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHelper.PendingUpdate, &unk_1EFFD3D08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHelper.PendingUpdate and conformance ScrollViewHelper.PendingUpdate);
  }

  return result;
}

double ScrollViewHelperDelegate.makeLayoutState()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0xF000000000000000;
  *(a1 + 104) = 0;
  return result;
}

void specialized UIScrollView.updateIndicatorInsets(margins:axes:properties:safeArea:accessoryPlacementInsets:)(__int128 *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 traitCollection];
  [v8 displayScale];

  static EdgeInsets.zero.getter();
  static Edge.Set.all.getter();
  v9 = MEMORY[0x18D007050](&v42);
  v10 = a1[9];
  v42 = a1[8];
  v43 = v10;
  v12 = a1[8];
  v11 = a1[9];
  v44[0] = a1[10];
  *(v44 + 9) = *(a1 + 169);
  v40[0] = v12;
  v40[1] = v11;
  v41[0] = a1[10];
  *(v41 + 9) = *(a1 + 169);
  MEMORY[0x18D007000](v39, v9);
  if (MEMORY[0x18D006FC0](v40, v39))
  {
    v13 = a1[1];
    v42 = *a1;
    v43 = v13;
    v44[0] = a1[2];
    *(v44 + 9) = *(a1 + 41);
  }

  OptionalEdgeInsets.in(edges:)();
  EdgeInsets.adding(_:)();
  v18 = v14;
  v19 = v16;
  if (*(a3 + 81))
  {
    v20 = v15;
  }

  else
  {
    v20 = v17;
  }

  if (*(a3 + 81))
  {
    v21 = v17;
  }

  else
  {
    v21 = v15;
  }

  v22 = MEMORY[0x1E69DDCE0];
  if ((a2 & 1) == 0 || (v23 = *MEMORY[0x1E69DDCE0], v14 == *MEMORY[0x1E69DDCE0]) && (v24 = *(MEMORY[0x1E69DDCE0] + 8), v21 == v24) && (v25 = *(MEMORY[0x1E69DDCE0] + 16), v16 == v25) && (v26 = *(MEMORY[0x1E69DDCE0] + 24), v20 == v26) && ([v4 horizontalScrollIndicatorInsets], v30 == v23) && v27 == v24 && v28 == v25 && v29 == v26)
  {
    if ((a2 & 2) == 0)
    {
      return;
    }
  }

  else
  {
    [v4 setHorizontalScrollIndicatorInsets_];
    if ((a2 & 2) == 0)
    {
      return;
    }
  }

  v31 = *v22;
  if (v18 != *v22 || (v32 = v22[1], v21 != v32) || (v33 = v22[2], v19 != v33) || (v34 = v22[3], v20 != v34) || ([v4 verticalScrollIndicatorInsets], v38 != v31) || v35 != v32 || v36 != v33 || v37 != v34)
  {

    [v4 setVerticalScrollIndicatorInsets_];
  }
}

uint64_t partial apply for closure #1 in ScrollViewHelper.updateTargetContentOffset(_:velocity:scrollGeometry:originalOffset:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v2[11];
  v11[10] = v2[10];
  v11[11] = v3;
  v4 = v2[13];
  v11[12] = v2[12];
  v11[13] = v4;
  v5 = v2[7];
  v11[6] = v2[6];
  v11[7] = v5;
  v6 = v2[9];
  v11[8] = v2[8];
  v11[9] = v6;
  v7 = v2[3];
  v11[2] = v2[2];
  v11[3] = v7;
  v8 = v2[5];
  v11[4] = v2[4];
  v11[5] = v8;
  v9 = v2[1];
  v11[0] = *v2;
  v11[1] = v9;
  return ResolvedScrollBehavior.updateTarget(_:context:)(v1, v11);
}

void specialized ScrollViewHelper.didChangeScrollContentBackground(from:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_scrollContentBackground + 8);

    static Semantics.v7.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      if (v2 == 1)
      {
        v3 = [objc_opt_self() systemBackgroundColor];
        [v4 setBackgroundColor_];
      }

      else
      {
        [v4 setBackgroundColor_];
      }
    }
  }
}

void *static Text.AlignmentStrategy.EnvironmentKey.read(from:)@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for UITraitResolvesNaturalAlignmentWithBaseWritingDirection();
  result = UITraitCollection.subscript.getter();
  v3 = v4;
  if (v4 != 2)
  {
    v3 = v4 & 1;
  }

  *a1 = v3;
  return result;
}

uint64_t static Text.AlignmentStrategy.EnvironmentKey.write(to:value:)(uint64_t a1, unsigned __int8 *a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  type metadata accessor for UITraitResolvesNaturalAlignmentWithBaseWritingDirection();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

void *protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance Text.AlignmentStrategy.EnvironmentKey@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for UITraitResolvesNaturalAlignmentWithBaseWritingDirection();
  result = UITraitCollection.subscript.getter();
  v3 = v4;
  if (v4 != 2)
  {
    v3 = v4 & 1;
  }

  *a1 = v3;
  return result;
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.write(to:value:) in conformance Text.AlignmentStrategy.EnvironmentKey(uint64_t a1, unsigned __int8 *a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  type metadata accessor for UITraitResolvesNaturalAlignmentWithBaseWritingDirection();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t ToolbarBridge.toolbarInputContentDidChange(_:context:)(uint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x1E69E7CD0];
  v15 = 0;
  outlined init with copy of Toolbar.UpdateContext(a2, v13);
  swift_beginAccess();
  EnvironmentValues.horizontalSizeClass.getter();
  v13[80] = v12;
  EnvironmentValues.verticalSizeClass.getter();
  swift_endAccess();
  v13[81] = v12;
  outlined init with copy of Toolbar.UpdateContext(v13, v11);
  v7 = v2;
  v8 = a1;
  v9 = v13;
  v10 = &v14;
  static ToolbarStrategy.withUpdater<A>(_:_:body:)(v2, v11, partial apply for closure #1 in ToolbarBridge.toolbarInputContentDidChange(_:context:), &v6);
  outlined destroy of Toolbar.UpdateContext(v11);
  v4 = v14;
  outlined destroy of Toolbar.UpdateContext(v13);
  return v4;
}

Swift::Void __swiftcall ToolbarBridge.resetPlatform()()
{
  v1 = type metadata accessor for Toolbar.PlatformVended(0);
  v2 = (v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 1) = v5;
  *(v4 + 2) = v6;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  *(v4 + 6) = v6;
  v7 = v2[13];
  v8 = type metadata accessor for ToolbarStorage.Item(0);
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  *&v4[v2[14]] = 0;
  v9 = v2[15];
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  v10 = direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  outlined assign with take of Toolbar.PlatformVended(v4, v0 + v10, type metadata accessor for Toolbar.PlatformVended);
  swift_endAccess();
}

void ToolbarBridge<>.platformDelegate.getter()
{
  v1 = direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = [objc_allocWithZone(type metadata accessor for ToolbarPlatformDelegate()) init];
  v4 = *(v0 + v1);
  *(v0 + v1) = v3;

  v5 = *(v0 + v1);
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC7SwiftUI23ToolbarPlatformDelegate_provider + 8) = &protocol witness table for <> ToolbarBridge<A>;
    swift_unknownObjectWeakAssign();
    v6 = *(v0 + v1);
    if (v6)
    {
      v7 = v6;
LABEL_5:
      v8 = v2;
      return;
    }
  }

  __break(1u);
}

uint64_t closure #1 in ToolbarBridge.update(environment:context:)(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = a4;
  v15 = BYTE6(a4);
  v14 = WORD2(a4);
  v9 = *a2;
  v10 = *MEMORY[0x1E69E7D40];
  outlined init with copy of Toolbar.UpdateContext(a5, v12);
  ToolbarBridge.updateStorage(newStorage:barContext:updateContext:strategy:)(a3, &v13, v12, a1);
  outlined destroy of Toolbar.UpdateContext(v12);
  *a6 = (*(*((v10 & v9) + 0x58) + 96))(*((v10 & v9) + 0x50));
}

uint64_t closure #1 in ToolbarBridge.toolbarInputContentDidChange(_:context:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E7D40] & *a2;
  result = ToolbarBridge.allowsUpdates.getter();
  if (result)
  {
    v33 = type metadata accessor for ToolbarContentDescription(0);
    v12 = a3 + *(v33 + 24);
    v13 = *(v12 + 48);
    v14 = *(v12 + 16);
    v37 = *(v12 + 32);
    v38 = v13;
    v15 = *(v12 + 16);
    v36[0] = *v12;
    v16 = v36[0];
    v36[1] = v15;
    v17 = a2 + direct field offset for ToolbarBridge.lastInputToolbarStorage;
    v18 = *(a2 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 48);
    v40[2] = *(a2 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 32);
    v40[3] = v18;
    v19 = *(a2 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 16);
    v40[0] = *(a2 + direct field offset for ToolbarBridge.lastInputToolbarStorage);
    v40[1] = v19;
    v20 = *(v12 + 48);
    *(v17 + 2) = v37;
    *(v17 + 3) = v20;
    v39 = *(v12 + 64);
    v41 = *(v17 + 8);
    *(v17 + 8) = *(v12 + 64);
    *v17 = v16;
    *(v17 + 1) = v14;
    v21 = MEMORY[0x1E69E6720];
    outlined init with copy of Toolbar.UpdateContext?(v36, v34, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
    outlined destroy of Toolbar.UpdateContext?(v40, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, v21, type metadata accessor for Toolbar.UpdateContext?);
    ToolbarBridge.toolbarStorage.getter(v42);
    if (v43)
    {
      v45[0] = v42[0];
      v45[1] = v42[1];
      v45[2] = v42[2];
      v46 = v43;
      v47 = v44;
      v22 = *(a2 + direct field offset for ToolbarBridge.lastBarContext) | ((*(a2 + direct field offset for ToolbarBridge.lastBarContext + 4) | (*(a2 + direct field offset for ToolbarBridge.lastBarContext + 6) << 16)) << 32);
      if (*(a2 + direct field offset for ToolbarBridge.lastBarContext) == 2)
      {
        LOBYTE(v23) = 0;
        LOBYTE(v24) = 0;
        LOBYTE(v25) = 0;
        LOBYTE(v26) = 0;
        LOBYTE(v27) = *(&v45[0] + 1) != 0;
        LOBYTE(v28) = 1;
        LOBYTE(v29) = 1;
      }

      else
      {
        v23 = (v22 >> 8) & 1;
        v24 = (v22 >> 16) & 1;
        v25 = (v22 >> 24) & 1;
        v28 = HIDWORD(v22);
        v29 = v22 >> 40;
        v27 = *(a2 + direct field offset for ToolbarBridge.lastBarContext) & 1;
        v26 = HIWORD(v22) & 1;
      }

      v35[0] = v27;
      v35[1] = v23;
      v35[2] = v24;
      v35[3] = v25;
      v35[4] = v28;
      v35[5] = v29;
      v35[6] = v26;
      outlined init with copy of Toolbar.UpdateContext(a4, v34);
      ToolbarBridge.updateStorage(newStorage:barContext:updateContext:strategy:)(v45, v35, v34, a1);
      outlined destroy of Toolbar.UpdateContext(v34);
      v30 = (*(*(v10 + 88) + 96))(*(v10 + 80));
      outlined destroy of Toolbar.UpdateContext?(v42, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
      *a5 = v30;

      *(a5 + 8) = (*(v12 + 48) != 0) & *(v12 + 40);
    }

    v31 = *(v33 + 20);
    v32 = direct field offset for ToolbarBridge.lastInputNavigationProperties;
    swift_beginAccess();
    outlined assign with copy of ToolbarStorage.NavigationProperties?(a3 + v31, a2 + v32, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties);
    swift_endAccess();
    result = (*(*(v10 + 88) + 112))(*(v10 + 80));
    *(a5 + 11) = result;
  }

  return result;
}

id ToolbarPlatformDelegate.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ToolbarPlatformDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized ToolbarStrategy.makeContent(entry:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(a1, v11, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v11, type metadata accessor for ToolbarStorage.Entry.Kind);
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(a1, v8, type metadata accessor for ToolbarStorage.Entry.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v8, type metadata accessor for ToolbarStorage.Entry.Kind);
    if (EnumCaseMultiPayload == 3)
    {
      return 0x686372616573;
    }

    else
    {
      MEMORY[0x18D009810](0xD000000000000014, 0x800000018CD4EDE0);
      return 0;
    }
  }

  else
  {
    outlined init with take of ToolbarStorage.Item(v11, v14, type metadata accessor for ToolbarStorage.Item);
    outlined init with take of ToolbarStorage.Item(v14, v17, type metadata accessor for ToolbarStorage.Item);
    if (*(v17 + 5))
    {
      v20 = *(v17 + 4);

      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Item);
      return v20;
    }

    else
    {
      UUID.init()();
      v21 = UUID.uuidString.getter();
      (*(v3 + 8))(v5, v2);
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Item);
      return v21;
    }
  }
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v55 = a5;
  v53 = type metadata accessor for ToolbarStorage.Entry(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_74;
  }

  v21 = (a2 - a1) / v19;
  v59 = a1;
  v58 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v23 < 1)
    {
      v33 = a4 + v23;
    }

    else
    {
      v31 = -v19;
      v32 = a4 + v23;
      v33 = a4 + v23;
      v51 = v31;
      while (2)
      {
        while (1)
        {
          v48 = v33;
          v34 = a2;
          v35 = a2 + v31;
          v50 = a2;
          while (1)
          {
            if (v34 <= a1)
            {
              v59 = v34;
              v57 = v48;
              goto LABEL_71;
            }

            v36 = a3;
            v49 = v33;
            v37 = v32 + v31;
            outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v32 + v31, v52, type metadata accessor for ToolbarStorage.Entry);
            outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v35, v54, type metadata accessor for ToolbarStorage.Entry);
            ToolbarStorage.Entry.id.getter(v56);
            v38 = v55;
            if (*(v55 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v40 & 1) != 0) && (v41 = *(*(v38 + 56) + 8 * v39), outlined destroy of ToolbarStorage.Entry.ID(v56), ToolbarStorage.Entry.id.getter(v56), *(v38 + 16)) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v43 & 1) != 0))
            {
              v44 = *(*(v38 + 56) + 8 * v42);
              outlined destroy of ToolbarStorage.Entry.ID(v56);
              v45 = v41 < v44;
            }

            else
            {
              outlined destroy of ToolbarStorage.Entry.ID(v56);
              v45 = 0;
            }

            a3 = v36 + v51;
            outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v54, type metadata accessor for ToolbarStorage.Entry);
            outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v52, type metadata accessor for ToolbarStorage.Entry);
            if (v45)
            {
              break;
            }

            v33 = v37;
            if (v36 < v32 || a3 >= v32)
            {
              swift_arrayInitWithTakeFrontToBack();
              v31 = v51;
            }

            else
            {
              v31 = v51;
              if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v32 = v37;
            v34 = v50;
            if (v37 <= a4)
            {
              a2 = v50;
              goto LABEL_70;
            }
          }

          if (v36 < v50 || a3 >= v50)
          {
            break;
          }

          v46 = v36 == v50;
          a2 = v35;
          v33 = v49;
          v31 = v51;
          if (!v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v32 <= a4)
          {
            goto LABEL_70;
          }
        }

        a2 = v35;
        swift_arrayInitWithTakeFrontToBack();
        v33 = v49;
        v31 = v51;
        if (v32 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v59 = a2;
    v57 = v33;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v22;
    v57 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      while (1)
      {
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(a2, v17, type metadata accessor for ToolbarStorage.Entry);
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(a4, v14, type metadata accessor for ToolbarStorage.Entry);
        ToolbarStorage.Entry.id.getter(v56);
        v25 = v55;
        if (!*(v55 + 16))
        {
          break;
        }

        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
        if ((v27 & 1) == 0)
        {
          break;
        }

        v52 = *(*(v25 + 56) + 8 * v26);
        outlined destroy of ToolbarStorage.Entry.ID(v56);
        ToolbarStorage.Entry.id.getter(v56);
        if (!*(v25 + 16))
        {
          break;
        }

        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
        if ((v29 & 1) == 0)
        {
          break;
        }

        v30 = *(*(v25 + 56) + 8 * v28);
        outlined destroy of ToolbarStorage.Entry.ID(v56);
        outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v14, type metadata accessor for ToolbarStorage.Entry);
        outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
        if (v52 >= v30)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
LABEL_36:
        a1 += v19;
        v59 = a1;
        if (a4 >= v54 || a2 >= a3)
        {
          goto LABEL_71;
        }
      }

      outlined destroy of ToolbarStorage.Entry.ID(v56);
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v14, type metadata accessor for ToolbarStorage.Entry);
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
LABEL_30:
      if (a1 < a4 || a1 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v58 = a4 + v19;
      a4 += v19;
      goto LABEL_36;
    }
  }

LABEL_71:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v59, &v58, &v57);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v28 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28, v8);
  }

  v23 = v6;
  *v6 = v28;
  v9 = v28 + 16;
  v10 = *(v28 + 2);
  if (v10 < 2)
  {
LABEL_10:

    *v23 = v28;
    return 1;
  }

  else
  {
    v24 = (v28 + 16);
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v28[16 * v10];
      v6 = *v12;
      v13 = &v9[16 * v10];
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = *(*(type metadata accessor for ToolbarStorage.Entry(0) - 8) + 72);
      v17 = v11 + v16 * v6;
      v18 = v11 + v16 * v14;
      v19 = v11 + v16 * v15;

      specialized _merge<A>(low:mid:high:buffer:by:)(v17, v18, v19, a2, a4);

      if (v5)
      {
        *v23 = v28;

        return 1;
      }

      if (v15 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v28 + 16;
      v20 = *v24;
      if (v10 - 2 >= *v24)
      {
        goto LABEL_14;
      }

      *v12 = v6;
      *(v12 + 1) = v15;
      v21 = v20 - v10;
      if (v20 < v10)
      {
        goto LABEL_15;
      }

      v10 = v20 - 1;
      memmove(v13, v13 + 16, 16 * v21);
      *v24 = v10;
      if (v10 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v23 = v28;
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v211 = a1;
  v220 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v217 = (&v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v228 = &v205 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v212 = (&v205 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v213 = &v205 - v14;
  v15 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v229 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v214 = &v205 - v18;
  v19 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v230 = (&v205 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v244 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v244);
  v22 = (&v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v234 = (&v205 - v24);
  v242 = type metadata accessor for ToolbarStorage.Entry(0);
  v225 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v216 = &v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v241 = &v205 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v205 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v245 = &v205 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v237 = &v205 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v235 = &v205 - v36;
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  v263 = MEMORY[0x1E69E7CC0];
  v232 = a3;
  v41 = a3[1];
  if (v41 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_159:
    v201 = *v211;
    if (!*v211)
    {
      goto LABEL_189;
    }

    v202 = v201;
    v203 = v236;
    specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v263, v202, v232, a5);
    v236 = v203;

    goto LABEL_161;
  }

  v206 = &v205 - v39;
  v207 = v40;
  v218 = 0x800000018CD4EDC0;
  swift_bridgeObjectRetain_n();
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v227 = "swiftui-fixed-spacer";
  v226 = "@UIActivityViewController8@?0";
  v210 = a4;
  v238 = a5;
  v233 = v22;
  v243 = v30;
  while (1)
  {
    if (v42 + 1 >= v41)
    {
      v41 = v42 + 1;
      goto LABEL_59;
    }

    v209 = v43;
    v44 = *v232;
    v45 = *(v225 + 72);
    v46 = *v232 + v45 * (v42 + 1);
    v47 = v206;
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v46, v206, type metadata accessor for ToolbarStorage.Entry);
    v239 = v44;
    v48 = v44 + v45 * v42;
    v49 = v42;
    v50 = v207;
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v48, v207, type metadata accessor for ToolbarStorage.Entry);
    v51 = v236;
    LODWORD(v240) = closure #1 in Array<A>.sort(priorities:)(v47, v50, a5);
    v236 = v51;
    if (v51)
    {
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v50, type metadata accessor for ToolbarStorage.Entry);
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v47, type metadata accessor for ToolbarStorage.Entry);
LABEL_161:
      swift_bridgeObjectRelease_n();
    }

    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v50, type metadata accessor for ToolbarStorage.Entry);
    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v47, type metadata accessor for ToolbarStorage.Entry);
    v208 = v49;
    v52 = v49 + 2;
    v53 = v239 + v45 * (v49 + 2);
    v231 = v41;
    while (v41 != v52)
    {
      v54 = v235;
      outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v53, v235, type metadata accessor for ToolbarStorage.Entry);
      outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v46, v237, type metadata accessor for ToolbarStorage.Entry);
      outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v54, v234, type metadata accessor for ToolbarStorage.Entry.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v67 = v214;
          outlined init with take of ToolbarStorage.Item(v234, v214, type metadata accessor for ToolbarStorage.GroupItem);
          v68 = *(v67 + 152);
          if (!*(v68 + 16))
          {
            goto LABEL_179;
          }

          v69 = v213;
          outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v68 + ((*(v219 + 80) + 32) & ~*(v219 + 80)), v213, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
          v70 = v212;
          outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v69, v212, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v71 = v70[3];
            v253 = v70[2];
            v254 = v71;
            v255 = v70[4];
            v72 = *v70;
            v252 = v70[1];
            v251 = v72;
            _ViewList_ID.init(implicitID:)();
            v73 = *(&v248 + 1);
            v74 = v248;
            if (v251)
            {
              v75 = 0xD000000000000017;
            }

            else
            {
              v75 = 0xD000000000000014;
            }

            v76 = v227;
            if (!v251)
            {
              v76 = v226;
            }

            v77 = v76 | 0x8000000000000000;
            outlined destroy of ToolbarStorage.SpacerItem(&v251);
            v78 = 0;
            v79 = 0;
          }

          else
          {
            v80 = v230;
            outlined init with take of ToolbarStorage.Item(v70, v230, type metadata accessor for ToolbarStorage.Item);
            v74 = *v80;
            v73 = v80[1];
            v79 = v80[2];
            v78 = v80[3];
            v81 = v80[4];
            v77 = v80[5];

            v82 = v80;
            v75 = v81;
            outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v82, type metadata accessor for ToolbarStorage.Item);
          }

          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v213, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
          *&v251 = v74;
          *(&v251 + 1) = v73;
          *&v252 = v79;
          *(&v252 + 1) = v78;
          *&v253 = v75;
          *(&v253 + 1) = v77;
          lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

          AnyHashable.init<A>(_:)();

          v83 = v214;
          outlined init with copy of ToolbarItemPlacement.Role(v214 + 80, &v259);
          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v83, type metadata accessor for ToolbarStorage.GroupItem);
          a5 = v238;
          v30 = v243;
          v41 = v231;
          if (!*(v238 + 16))
          {
LABEL_40:
            outlined destroy of ToolbarStorage.Entry.ID(&v256);
            v90 = 0;
            goto LABEL_41;
          }
        }

        else
        {
          v57 = v230;
          outlined init with take of ToolbarStorage.Item(v234, v230, type metadata accessor for ToolbarStorage.Item);
          v58 = *(v57 + 8);
          v59 = *(v57 + 32);
          v60 = *(v57 + 40);
          *&v251 = *v57;
          *(&v251 + 1) = v58;
          v252 = *(v57 + 16);
          *&v253 = v59;
          *(&v253 + 1) = v60;
          lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

          v30 = v243;

          AnyHashable.init<A>(_:)();
          outlined init with copy of ToolbarItemPlacement.Role(v57 + 112, &v259);
          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v57, type metadata accessor for ToolbarStorage.Item);
          if (!*(a5 + 16))
          {
            goto LABEL_40;
          }
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v61 = v234[1];
        v251 = *v234;
        v62 = v234[2];
        v63 = v234[3];
        v252 = v61;
        v253 = v62;
        v64 = v234[4];
        v254 = v63;
        v255 = v64;
        if (v251)
        {
          v65 = 0xD000000000000017;
        }

        else
        {
          v65 = 0xD000000000000014;
        }

        v66 = v227;
        if (!v251)
        {
          v66 = v226;
        }

        v246 = v65;
        v247 = v66 | 0x8000000000000000;
        AnyHashable.init<A>(_:)();
        outlined init with copy of ToolbarItemPlacement.Role(&v251 + 8, &v259);
        outlined destroy of ToolbarStorage.SpacerItem(&v251);
        v256 = v248;
        v257 = v249;
        v258 = v250;
        if (!*(a5 + 16))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          *&v251 = 0x2D69757466697773;
          v56 = 0xEE00686372616573;
        }

        else
        {
          *&v251 = 0xD000000000000010;
          v56 = v218;
        }

        *(&v251 + 1) = v56;
        AnyHashable.init<A>(_:)();
        v261 = 0;
        v260 = 0u;
        v259 = 0u;
        v262 = -1;
        if (!*(a5 + 16))
        {
          goto LABEL_40;
        }
      }

      v84 = specialized __RawDictionaryStorage.find<A>(_:)(&v256);
      if ((v85 & 1) == 0)
      {
        goto LABEL_40;
      }

      v86 = *(*(a5 + 56) + 8 * v84);
      outlined destroy of ToolbarStorage.Entry.ID(&v256);
      ToolbarStorage.Entry.id.getter(&v256);
      if (!*(a5 + 16))
      {
        goto LABEL_40;
      }

      v87 = specialized __RawDictionaryStorage.find<A>(_:)(&v256);
      if ((v88 & 1) == 0)
      {
        goto LABEL_40;
      }

      v89 = *(*(a5 + 56) + 8 * v87);
      outlined destroy of ToolbarStorage.Entry.ID(&v256);
      v90 = v86 < v89;
LABEL_41:
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v237, type metadata accessor for ToolbarStorage.Entry);
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v235, type metadata accessor for ToolbarStorage.Entry);
      ++v52;
      v53 += v45;
      v46 += v45;
      if ((v240 ^ v90))
      {
        v41 = v52 - 1;
        break;
      }
    }

    a4 = v210;
    v43 = v209;
    v42 = v208;
    if ((v240 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (v41 < v208)
    {
      goto LABEL_184;
    }

    if (v208 >= v41)
    {
LABEL_57:
      v22 = v233;
      goto LABEL_59;
    }

    v91 = v45 * (v41 - 1);
    v92 = v41 * v45;
    v231 = v41;
    v93 = v41;
    v94 = v208;
    v95 = v208 * v45;
    do
    {
      if (v94 != --v93)
      {
        v96 = *v232;
        if (!*v232)
        {
          goto LABEL_187;
        }

        outlined init with take of ToolbarStorage.Item(v96 + v95, v216, type metadata accessor for ToolbarStorage.Entry);
        if (v95 < v91 || v96 + v95 >= (v96 + v92))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v95 != v91)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        outlined init with take of ToolbarStorage.Item(v216, v96 + v91, type metadata accessor for ToolbarStorage.Entry);
        v30 = v243;
      }

      ++v94;
      v91 -= v45;
      v92 -= v45;
      v95 += v45;
    }

    while (v94 < v93);
    a4 = v210;
    v22 = v233;
    v43 = v209;
    v41 = v231;
    v42 = v208;
LABEL_59:
    v97 = v232[1];
    if (v41 >= v97)
    {
      goto LABEL_107;
    }

    if (__OFSUB__(v41, v42))
    {
      goto LABEL_181;
    }

    if (v41 - v42 >= a4)
    {
      goto LABEL_107;
    }

    if (__OFADD__(v42, a4))
    {
      goto LABEL_182;
    }

    if (v42 + a4 < v97)
    {
      v97 = v42 + a4;
    }

    if (v97 < v42)
    {
      break;
    }

    if (v41 == v97)
    {
      goto LABEL_107;
    }

    v221 = v97;
    v209 = v43;
    v98 = *v232;
    v99 = *(v225 + 72);
    v100 = *v232 + v99 * (v41 - 1);
    v239 = -v99;
    v208 = v42;
    v101 = v42 - v41;
    v240 = v98;
    v215 = v99;
    v102 = v98 + v41 * v99;
    while (2)
    {
      v231 = v41;
      v222 = v102;
      v223 = v101;
      v103 = v101;
      v224 = v100;
      while (2)
      {
        v104 = v245;
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v102, v245, type metadata accessor for ToolbarStorage.Entry);
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v100, v30, type metadata accessor for ToolbarStorage.Entry);
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v104, v22, type metadata accessor for ToolbarStorage.Entry.Kind);
        v105 = swift_getEnumCaseMultiPayload();
        if (v105 > 1)
        {
          if (v105 == 2)
          {
            v111 = v22[1];
            v251 = *v22;
            v112 = v22[2];
            v113 = v22[3];
            v252 = v111;
            v253 = v112;
            v114 = v22[4];
            v254 = v113;
            v255 = v114;
            if (v251)
            {
              v115 = 0xD000000000000017;
            }

            else
            {
              v115 = 0xD000000000000014;
            }

            v116 = v227;
            if (!v251)
            {
              v116 = v226;
            }

            v246 = v115;
            v247 = v116 | 0x8000000000000000;
            AnyHashable.init<A>(_:)();
            outlined init with copy of ToolbarItemPlacement.Role(&v251 + 8, &v259);
            outlined destroy of ToolbarStorage.SpacerItem(&v251);
            v256 = v248;
            v257 = v249;
            v258 = v250;
            if (!*(a5 + 16))
            {
              break;
            }
          }

          else
          {
            if (v105 == 3)
            {
              *&v251 = 0x2D69757466697773;
              v106 = 0xEE00686372616573;
            }

            else
            {
              *&v251 = 0xD000000000000010;
              v106 = v218;
            }

            *(&v251 + 1) = v106;
            AnyHashable.init<A>(_:)();
            v261 = 0;
            v260 = 0u;
            v259 = 0u;
            v262 = -1;
            if (!*(a5 + 16))
            {
              break;
            }
          }

          goto LABEL_98;
        }

        if (!v105)
        {
          v107 = v230;
          outlined init with take of ToolbarStorage.Item(v22, v230, type metadata accessor for ToolbarStorage.Item);
          v108 = *(v107 + 8);
          v109 = *(v107 + 32);
          v110 = *(v107 + 40);
          *&v251 = *v107;
          *(&v251 + 1) = v108;
          v252 = *(v107 + 16);
          *&v253 = v109;
          *(&v253 + 1) = v110;
          lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

          v30 = v243;

          AnyHashable.init<A>(_:)();
          outlined init with copy of ToolbarItemPlacement.Role(v107 + 112, &v259);
          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v107, type metadata accessor for ToolbarStorage.Item);
          if (!*(a5 + 16))
          {
            break;
          }

          goto LABEL_98;
        }

        v117 = v229;
        outlined init with take of ToolbarStorage.Item(v22, v229, type metadata accessor for ToolbarStorage.GroupItem);
        v118 = *(v117 + 152);
        if (!*(v118 + 16))
        {
          goto LABEL_167;
        }

        v119 = v228;
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v118 + ((*(v219 + 80) + 32) & ~*(v219 + 80)), v228, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        v120 = v217;
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v119, v217, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v121 = v120[3];
          v253 = v120[2];
          v254 = v121;
          v255 = v120[4];
          v122 = *v120;
          v252 = v120[1];
          v251 = v122;
          _ViewList_ID.init(implicitID:)();
          v123 = *(&v248 + 1);
          v124 = v248;
          if (v251)
          {
            v125 = 0xD000000000000017;
          }

          else
          {
            v125 = 0xD000000000000014;
          }

          v126 = v227;
          if (!v251)
          {
            v126 = v226;
          }

          v127 = v126 | 0x8000000000000000;
          outlined destroy of ToolbarStorage.SpacerItem(&v251);
          v128 = 0;
          v129 = 0;
        }

        else
        {
          v130 = v230;
          outlined init with take of ToolbarStorage.Item(v120, v230, type metadata accessor for ToolbarStorage.Item);
          v124 = *v130;
          v123 = v130[1];
          v128 = v130[2];
          v129 = v130[3];
          v125 = v130[4];
          v127 = v130[5];

          v131 = v130;
          a5 = v238;
          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v131, type metadata accessor for ToolbarStorage.Item);
        }

        outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v228, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        *&v251 = v124;
        *(&v251 + 1) = v123;
        *&v252 = v128;
        *(&v252 + 1) = v129;
        *&v253 = v125;
        *(&v253 + 1) = v127;
        lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

        AnyHashable.init<A>(_:)();

        v132 = v229;
        outlined init with copy of ToolbarItemPlacement.Role(v229 + 80, &v259);
        outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v132, type metadata accessor for ToolbarStorage.GroupItem);
        v22 = v233;
        v30 = v243;
        if (*(a5 + 16))
        {
LABEL_98:
          v133 = specialized __RawDictionaryStorage.find<A>(_:)(&v256);
          if ((v134 & 1) == 0)
          {
            break;
          }

          v135 = *(*(a5 + 56) + 8 * v133);
          outlined destroy of ToolbarStorage.Entry.ID(&v256);
          ToolbarStorage.Entry.id.getter(&v256);
          if (!*(a5 + 16))
          {
            break;
          }

          v136 = specialized __RawDictionaryStorage.find<A>(_:)(&v256);
          if ((v137 & 1) == 0)
          {
            break;
          }

          v138 = *(*(a5 + 56) + 8 * v136);
          outlined destroy of ToolbarStorage.Entry.ID(&v256);
          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v30, type metadata accessor for ToolbarStorage.Entry);
          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v245, type metadata accessor for ToolbarStorage.Entry);
          if (v135 >= v138)
          {
            goto LABEL_69;
          }

          if (!v240)
          {
            goto LABEL_185;
          }

          v139 = v241;
          outlined init with take of ToolbarStorage.Item(v102, v241, type metadata accessor for ToolbarStorage.Entry);
          swift_arrayInitWithTakeFrontToBack();
          outlined init with take of ToolbarStorage.Item(v139, v100, type metadata accessor for ToolbarStorage.Entry);
          v100 += v239;
          v102 += v239;
          if (__CFADD__(v103++, 1))
          {
            goto LABEL_69;
          }

          continue;
        }

        break;
      }

      outlined destroy of ToolbarStorage.Entry.ID(&v256);
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v30, type metadata accessor for ToolbarStorage.Entry);
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v245, type metadata accessor for ToolbarStorage.Entry);
LABEL_69:
      v41 = v231 + 1;
      v100 = v224 + v215;
      v101 = v223 - 1;
      v102 = v222 + v215;
      if (v231 + 1 != v221)
      {
        continue;
      }

      break;
    }

    v43 = v209;
    v42 = v208;
    v41 = v221;
LABEL_107:
    if (v41 < v42)
    {
      goto LABEL_180;
    }

    v221 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
    }

    v142 = *(v43 + 2);
    v141 = *(v43 + 3);
    v143 = v142 + 1;
    if (v142 >= v141 >> 1)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v141 > 1), v142 + 1, 1, v43);
    }

    *(v43 + 2) = v143;
    v144 = v43 + 32;
    v145 = &v43[16 * v142 + 32];
    v146 = v221;
    *v145 = v42;
    *(v145 + 1) = v146;
    v263 = v43;
    v240 = *v211;
    if (!v240)
    {
      goto LABEL_188;
    }

    if (v142)
    {
      v239 = (v43 + 32);
      while (1)
      {
        v147 = v143 - 1;
        if (v143 >= 4)
        {
          break;
        }

        if (v143 == 3)
        {
          v148 = *(v43 + 4);
          v149 = *(v43 + 5);
          v158 = __OFSUB__(v149, v148);
          v150 = v149 - v148;
          v151 = v158;
LABEL_128:
          if (v151)
          {
            goto LABEL_170;
          }

          v164 = &v43[16 * v143];
          v166 = *v164;
          v165 = *(v164 + 1);
          v167 = __OFSUB__(v165, v166);
          v168 = v165 - v166;
          v169 = v167;
          if (v167)
          {
            goto LABEL_173;
          }

          v170 = &v144[16 * v147];
          v172 = *v170;
          v171 = *(v170 + 1);
          v158 = __OFSUB__(v171, v172);
          v173 = v171 - v172;
          if (v158)
          {
            goto LABEL_176;
          }

          if (__OFADD__(v168, v173))
          {
            goto LABEL_177;
          }

          if (v168 + v173 >= v150)
          {
            if (v150 < v173)
            {
              v147 = v143 - 2;
            }

            goto LABEL_149;
          }

          goto LABEL_142;
        }

        v174 = &v43[16 * v143];
        v176 = *v174;
        v175 = *(v174 + 1);
        v158 = __OFSUB__(v175, v176);
        v168 = v175 - v176;
        v169 = v158;
LABEL_142:
        if (v169)
        {
          goto LABEL_172;
        }

        v177 = &v144[16 * v147];
        v179 = *v177;
        v178 = *(v177 + 1);
        v158 = __OFSUB__(v178, v179);
        v180 = v178 - v179;
        if (v158)
        {
          goto LABEL_175;
        }

        if (v180 < v168)
        {
          goto LABEL_3;
        }

LABEL_149:
        if (v147 - 1 >= v143)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v185 = *v232;
        if (!*v232)
        {
          goto LABEL_186;
        }

        v186 = v43;
        v187 = &v144[16 * v147 - 16];
        v188 = *v187;
        v189 = v147;
        v190 = &v144[16 * v147];
        v191 = *(v190 + 1);
        v192 = *(v225 + 72);
        v193 = v185 + v192 * *v187;
        v194 = v185 + v192 * *v190;
        v195 = v185 + v192 * v191;
        v196 = v238;

        v197 = v193;
        v198 = v236;
        specialized _merge<A>(low:mid:high:buffer:by:)(v197, v194, v195, v240, v196);
        v236 = v198;
        if (v198)
        {

          v263 = v186;
          goto LABEL_161;
        }

        if (v191 < v188)
        {
          goto LABEL_164;
        }

        v199 = *(v186 + 2);
        if (v189 > v199)
        {
          goto LABEL_165;
        }

        *v187 = v188;
        *(v187 + 1) = v191;
        if (v189 >= v199)
        {
          goto LABEL_166;
        }

        v143 = v199 - 1;
        memmove(v190, v190 + 16, 16 * (v199 - 1 - v189));
        v43 = v186;
        *(v186 + 2) = v199 - 1;
        v200 = v199 > 2;
        v22 = v233;
        v30 = v243;
        a5 = v238;
        v144 = v239;
        if (!v200)
        {
LABEL_3:
          v263 = v43;
          goto LABEL_4;
        }
      }

      v152 = &v144[16 * v143];
      v153 = *(v152 - 8);
      v154 = *(v152 - 7);
      v158 = __OFSUB__(v154, v153);
      v155 = v154 - v153;
      if (v158)
      {
        goto LABEL_168;
      }

      v157 = *(v152 - 6);
      v156 = *(v152 - 5);
      v158 = __OFSUB__(v156, v157);
      v150 = v156 - v157;
      v151 = v158;
      if (v158)
      {
        goto LABEL_169;
      }

      v159 = &v43[16 * v143];
      v161 = *v159;
      v160 = *(v159 + 1);
      v158 = __OFSUB__(v160, v161);
      v162 = v160 - v161;
      if (v158)
      {
        goto LABEL_171;
      }

      v158 = __OFADD__(v150, v162);
      v163 = v150 + v162;
      if (v158)
      {
        goto LABEL_174;
      }

      if (v163 >= v155)
      {
        v181 = &v144[16 * v147];
        v183 = *v181;
        v182 = *(v181 + 1);
        v158 = __OFSUB__(v182, v183);
        v184 = v182 - v183;
        if (v158)
        {
          goto LABEL_178;
        }

        if (v150 < v184)
        {
          v147 = v143 - 2;
        }

        goto LABEL_149;
      }

      goto LABEL_128;
    }

LABEL_4:
    v41 = v232[1];
    v42 = v221;
    a4 = v210;
    if (v221 >= v41)
    {
      goto LABEL_159;
    }
  }

LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_188:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_189:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void type metadata accessor for UIKitBarItemHost<BarItemView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>)
  {
    v2 = lazy protocol witness table accessor for type BarItemView and conformance BarItemView();
    v4 = type metadata accessor for UIKitBarItemHost(a1, &type metadata for BarItemView, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>);
    }
  }
}

uint64_t partial apply for closure #1 in ToolbarBridge.update(environment:context:)(uint64_t a1)
{
  v2 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!*(v1 + 35))
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!*(v1 + 34))
  {
    v4 = 0;
  }

  v5 = v3 | v4;
  v6 = 256;
  if (!*(v1 + 33))
  {
    v6 = 0;
  }

  return closure #1 in ToolbarBridge.update(environment:context:)(a1, *(v1 + 16), *(v1 + 24), v2 | (*(v1 + 37) << 40) | (*(v1 + 36) << 32) | v5 | v6 | *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t outlined assign with take of Toolbar.PlatformVended(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

Swift::Int _PagingViewConfig.Direction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t _PagingViewConfig.size.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

_BYTE *_PagingViewConfig.init(direction:size:margin:spacing:constrainedDeceleration:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a6;
  *(a5 + 32) = a7;
  *(a5 + 40) = a4;
  return result;
}

uint64_t _PagingView.page.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _PagingView.page.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

__n128 _PagingView.config.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 56);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  result = *(v3 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v6;
  return result;
}

__n128 _PagingView.config.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = v2 + *(a2 + 56);
  *v6 = *a1;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  result = *(a1 + 24);
  *(v6 + 24) = result;
  *(v6 + 40) = v5;
  return result;
}

double _PagingView.init(config:page:views:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = *a1;
  v26 = *(a1 + 1);
  v25 = a1[16];
  v12 = *(a1 + 3);
  v13 = *(a1 + 4);
  v14 = a1[40];
  v28[0] = a4;
  v28[1] = a5;
  v28[2] = a6;
  v28[3] = a7;
  v15 = type metadata accessor for _PagingView(0, v28);
  v16 = v15[13];
  swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Binding();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  v18 = (a8 + v15[16]);
  *v18 = 0;
  v18[1] = 0;
  v19 = *(a4 - 8);
  (*(v19 + 16))(a8, a3, a4);
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  (*(v21 + 24))(a8 + v16, a2, v20);
  v22 = a8 + v15[14];
  *v22 = v27;
  *(v22 + 8) = v26;
  *(v22 + 16) = v25;
  *(v22 + 24) = v12;
  *(v22 + 32) = v13;
  *(v22 + 40) = v14;
  v23 = a8 + v15[15];
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 72) = 0x3FEFEF9DB22D0E56;
  *(v23 + 80) = 0;
  *(v23 + 112) = &type metadata for EmptyGestureProvider;
  *(v23 + 120) = &protocol witness table for EmptyGestureProvider;
  (*(v19 + 8))(a3, a4);
  (*(v21 + 8))(a2, v20);
  *(v23 + 152) = 0u;
  *(v23 + 136) = 0u;
  *&result = 257;
  *(v23 + 128) = 257;
  return result;
}

uint64_t _PagingView.init(direction:page:views:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a6;
  v26 = a7;
  v24 = a8;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  v27[0] = *a1;
  v28 = 0;
  v29 = 1;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  (*(v17 + 16))(&v23 - v19, a2, v16, v18);
  (*(v13 + 16))(v15, a3, a4);
  v21 = _PagingView.init(config:page:views:)(v27, v20, v15, a4, a5, v25, v26, v24);
  (*(v13 + 8))(a3, a4, v21);
  return (*(v17 + 8))(a2, v16);
}

double _PagingView.$offset.getter(uint64_t a1)
{
  type metadata accessor for State<CGFloat>();
  State.projectedValue.getter();
  return v2;
}

double _PagingView.body.getter(void *a1)
{
  v2 = *(a1 - 1);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = a1[2];
  v8 = a1[3];
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  v9 = a1[4];
  v10 = a1[5];
  *(v6 + 4) = v9;
  *(v6 + 5) = v10;
  (*(v2 + 32))(&v6[v5], &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v11 = lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout();
  v21 = v7;
  v22 = &unk_1EFFD40F0;
  v23 = v8;
  v24 = v11;
  v25 = v9;
  v26 = v10;
  v12 = type metadata accessor for _ScrollableLayoutView(255, &v21);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollableLayoutView<A, B>, v12);
  v15 = type metadata accessor for _ScrollView(0, v12, WitnessTable, v14);
  swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>, v15);
  v19 = GeometryReader.init(content:)();
  v20 = v16;
  v17 = type metadata accessor for GeometryReader();
  swift_getWitnessTable(MEMORY[0x1E697E378], v17);
  static ViewBuilder.buildExpression<A>(_:)();

  v19 = v21;
  v20 = v22;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t closure #1 in _PagingView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25[1] = a6;
  *&v27 = a2;
  *(&v27 + 1) = &unk_1EFFD40F0;
  *&v28 = a3;
  *(&v28 + 1) = lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout();
  *&v29 = a4;
  *(&v29 + 1) = a5;
  v11 = type metadata accessor for _ScrollableLayoutView(255, &v27);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollableLayoutView<A, B>, v11);
  v14 = type metadata accessor for _ScrollView(0, v11, WitnessTable, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v25 - v19;
  v21 = a1[1];
  v27 = *a1;
  v28 = v21;
  v29 = a1[2];
  v30 = *(a1 + 12);
  GeometryProxy.size.getter();
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v22 = type metadata accessor for _PagingView(0, v26);
  _PagingView.body(size:)(v22, v17);
  swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v15 + 8);
  v23(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v23)(v20, v14);
}

uint64_t _PagingView.body(size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v6 = *(a1 + 16);
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  *&v10 = v6;
  *(&v10 + 1) = v9;
  v67 = *(v8 + 32);
  v71 = v67;
  v70 = v10;
  *&v62 = type metadata accessor for _PagingView.ToPageOffset(0, &v70);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v54 - v11;
  v64 = v9;
  v63 = v6;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v57 = type metadata accessor for Binding();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v54 - v12;
  v14 = type metadata accessor for Binding();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  outlined init with copy of _ScrollViewConfig(v4 + *(a1 + 60), &v70);
  CGSize.inset(by:)();
  v25 = v4 + *(a1 + 56);
  if (*(v25 + 16))
  {
    if (!*v25)
    {
      v23 = v24;
    }

    v26 = v23 - (*(v25 + 24) + *(v25 + 24));
  }

  else
  {
    v26 = *(v25 + 8);
  }

  (*(v16 + 16))(v18, v4 + *(a1 + 52), v15);
  v27 = (*(v19 + 48))(v18, 1, v14);
  v66 = *(&v67 + 1);
  if (v27 == 1)
  {
    (*(v16 + 8))(v18, v15);
    v28 = v64;
    v29 = v63;
    v30 = v4;
  }

  else
  {
    v31 = *(v19 + 32);
    v55 = v22;
    v31(v22, v18, v14);
    v54 = v4;
    v32 = _PagingView.$offset.getter(a1);
    *&v68 = v33;
    *(&v68 + 1) = v34;
    *v69 = v32;
    v35 = v13;
    Binding.zip<A>(with:)();

    v36 = v60;
    v29 = v63;
    (*(v58 + 16))(v60, v4, v63);
    v37 = *(v25 + 8);
    v38 = *(v25 + 16);
    v39 = *(v25 + 40);
    LOBYTE(v68) = *v25;
    *(&v68 + 1) = v37;
    LOBYTE(v69[0]) = v38;
    *(v69 + 8) = *(v25 + 24);
    BYTE8(v69[1]) = v39;
    v40 = v59;
    v28 = v64;
    _PagingView.ToPageOffset.init(views:config:itemSize:)(v36, &v68, v29, v64, v67, v66, v59, v26);
    v41 = v62;
    swift_getWitnessTable(protocol conformance descriptor for _PagingView<A>.ToPageOffset, v62);
    v42 = v57;
    Binding.projecting<A>(_:)();
    (*(v61 + 8))(v40, v41);
    v43 = v35;
    v30 = v54;
    (*(v56 + 8))(v43, v42);
    (*(v19 + 8))(v55, v14);
    v62 = v68;
    v44 = v69[0];
    outlined consume of _ScrollViewConfig.ContentOffset(v70, *(&v70 + 1), v71, *(&v71 + 1), v72);
    v70 = v62;
    v71 = v44;
    v72 = 1;
  }

  v45 = *v25;
  v46 = *(v25 + 40);
  *&v68 = v26;
  BYTE8(v68) = v45;
  v69[0] = *(v25 + 24);
  LOBYTE(v69[1]) = v46;
  v47 = lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout();
  v48 = v65;
  _ScrollableLayout.subscript.getter(v30, &unk_1EFFD40F0, v29, v47, v28, v67, v66, v65);
  *&v68 = v29;
  *(&v68 + 1) = &unk_1EFFD40F0;
  *&v69[0] = v28;
  *(&v69[0] + 1) = v47;
  v69[1] = v67;
  v49 = type metadata accessor for _ScrollableLayoutView(255, &v68);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollableLayoutView<A, B>, v49);
  v52 = type metadata accessor for _ScrollView(0, v49, WitnessTable, v51);
  return outlined assign with take of _ScrollViewConfig(&v70, v48 + *(v52 + 36));
}

int *_PagingView.ToPageOffset.init(views:config:itemSize:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = a2[16];
  v18 = *(a2 + 3);
  v19 = *(a2 + 4);
  v26 = a2[40];
  v20 = *(a3 - 8);
  (*(v20 + 16))(a7, a1);
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  result = type metadata accessor for _PagingView.ToPageOffset(0, v27);
  v22 = a7 + result[13];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(v22 + 40) = v26;
  *(a7 + result[14]) = a8;
  v23 = toPageOffsetGenerationCounter;
  *(a7 + result[15]) = toPageOffsetGenerationCounter;
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    toPageOffsetGenerationCounter = v25;
    return (*(v20 + 8))(a1, a3);
  }

  return result;
}

uint64_t _PagingView.ToPageOffset.get(base:)(uint64_t a1, uint64_t a2, double a3)
{
  v16 = *(a2 + 24);
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v16 - v13;
  (*(v7 + 16))(&v16 - v13, v17, AssociatedTypeWitness, v12);
  *&v14[*(TupleTypeMetadata2 + 48)] = a3;
  if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
  {
    LODWORD(v17) = *(v3 + *(a2 + 52));
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of RandomAccessCollection.distance(from:to:)();
    (*(v7 + 8))(v9, AssociatedTypeWitness);
  }

  return (*(v11 + 8))(v14, TupleTypeMetadata2);
}

uint64_t _PagingView.ToPageOffset.set(base:newValue:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  result = dispatch thunk of Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v16 = *(a2 + 56);
    v17 = (v4 + *(a2 + 52));
    v18 = *(v17 + 1);
    v19 = v17[16];
    v20 = v17[40];
    v33 = *v17;
    v34 = v18;
    v35 = v19;
    v36 = *(v17 + 24);
    v37 = v20;
    v21 = *(v4 + v16);
    v22 = dispatch thunk of Collection.count.getter();
    v23 = _PagingViewConfig.pageForContentOffset(_:itemSize:count:)(v22, a3, a4, v21);
    if (v25)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v24;
    }

    if (v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = v23;
    }

    v31 = v27;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v29 = v9;
    v30 = v32;
    *(v32 + *(TupleTypeMetadata2 + 48)) = v26;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    (*(v29 + 8))(v11, AssociatedTypeWitness);
    return (*(v29 + 40))(v30, v14, AssociatedTypeWitness);
  }

  return result;
}

uint64_t _PagingViewConfig.pageForContentOffset(_:itemSize:count:)(uint64_t result, double a2, double a3, double a4)
{
  if (a4 <= 0.0)
  {
    return 0;
  }

  if (!*v4)
  {
    a2 = a3;
  }

  v5 = floor(a2 / (*(v4 + 32) + a4) + 0.5);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(result, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if ((v5 & ~(v5 >> 63)) < result - 1)
  {
    return v5 & ~(v5 >> 63);
  }

  return --result;
}

BOOL static _PagingView.ToPageOffset.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v8 = type metadata accessor for _PagingView.ToPageOffset(0, v10);
  return *(a1 + *(v8 + 60)) == *(a2 + *(v8 + 60));
}

Swift::Int _PagingView.ToPageOffset.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](*(v1 + *(a1 + 60)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance _PagingView<A>.ToPageOffset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = _PagingView.ToPageOffset.get(base:)(a1, a2, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a3 = v8;
  a3[1] = v9;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _PagingView<A>.ToPageOffset(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  _PagingView.ToPageOffset.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

void PagingLayout.update(state:proxy:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v64 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(a2 + 64);
  if (!v7 || (v8 = v4 + v6, v4 + v6 == 0.0) || (v9 = *(a2 + 32), v10 = *(a2 + 40), v11 = *(a2 + 48), v12 = *(a2 + 56), v71.origin.x = v9, v71.origin.y = v10, v71.size.width = v11, v71.size.height = v12, CGRectIsEmpty(v71)))
  {
    v13 = *(MEMORY[0x1E695F040] + 16);
    *(a2 + 128) = *MEMORY[0x1E695F040];
    *(a2 + 144) = v13;
    if (!__OFSUB__(v7, 1))
    {
      v14 = v5 + v5 + v4 * v7 + v6 * (v7 - 1);
      if (v64)
      {
        *(a2 + 112) = v14;
      }

      else
      {
        *(a2 + 120) = v14;
      }

      return;
    }

    __break(1u);
    goto LABEL_54;
  }

  v63 = v10;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  if (v64)
  {
    MinX = CGRectGetMinX(*&v15);
    v20 = v9;
    v21 = MinX;
    v72.origin.y = v10;
    v22 = v20;
    v72.origin.x = v20;
    v72.size.width = v11;
    v72.size.height = v12;
    MaxX = CGRectGetMaxX(v72);
  }

  else
  {
    MinY = CGRectGetMinY(*&v15);
    v25 = v9;
    v21 = MinY;
    v73.origin.y = v10;
    v22 = v25;
    v73.origin.x = v25;
    v73.size.width = v11;
    v73.size.height = v12;
    MaxX = CGRectGetMaxY(v73);
  }

  if (v5 + v6 * -0.5 < 0.0)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v5 + v6 * -0.5;
  }

  v27 = floor((v21 - v26) / v8);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if ((v27 & ~(v27 >> 63)) >= v7)
  {
    v28 = v7;
  }

  else
  {
    v28 = v27 & ~(v27 >> 63);
  }

  v29 = ceil((MaxX - v26) / v8);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_57;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v30 = v29;
  if (v29 < 0)
  {
    if (v7 < 0)
    {
      v33 = v7;
      v34 = v28 < v7;
      if (v28 == v7)
      {
        goto LABEL_47;
      }

      goto LABEL_34;
    }

    v31 = 0;
    if (v28 <= 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v7 >= v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = v7;
    }

    if (v28 <= v30)
    {
LABEL_28:
      v32 = v28;
      v28 = v31;
      goto LABEL_32;
    }
  }

  v32 = v31;
LABEL_32:
  v33 = v28;
  v34 = v28 < v32;
  v28 = v32;
  if (v34)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v34 = v32 < v33;
  if (v32 != v33)
  {
LABEL_34:
    v60 = v26;
    v61 = v22;
    v62 = v12;
    if (!v34)
    {
      goto LABEL_62;
    }

    v35 = *(a2 + 16);
    v36 = *(a2 + 24);
    v37 = *(a2 + 72);
    v38 = *(a2 + 104);
    v58 = v33;
    v59 = v28;
    v39 = v33 - 1;
    while (1)
    {
      static UnitPoint.center.getter();
      _Placement.init(proposedSize:anchoring:at:)();
      v40 = v4 * 0.5 + v5 + v8 * v28;
      v41 = _Placement.anchorPosition.modify();
      if (v64)
      {
        *v42 = v40;
        v41(v65, 0);
        v43 = _Placement.anchorPosition.modify();
        *(v44 + 8) = v36 * 0.5;
        v43(v65, 0);
        _ProposedSize.width.setter();
      }

      else
      {
        *v42 = v35 * 0.5;
        v41(v65, 0);
        v45 = _Placement.anchorPosition.modify();
        *(v46 + 8) = v40;
        v45(v65, 0);
        _ProposedSize.height.setter();
      }

      v37(v65, v28);
      *&v66[8] = v67;
      *&v66[24] = v68;
      *&v66[40] = v69;
      *&v66[56] = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
      }

      v48 = *(v38 + 2);
      v47 = *(v38 + 3);
      if (v48 >= v47 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v38);
      }

      *(v38 + 2) = v48 + 1;
      v49 = &v38[104 * v48];
      v50 = v65[0];
      v51 = *v66;
      *(v49 + 3) = v65[1];
      *(v49 + 4) = v51;
      *(v49 + 2) = v50;
      v52 = *&v66[16];
      v53 = *&v66[32];
      v54 = *&v66[48];
      *(v49 + 16) = *&v66[64];
      *(v49 + 6) = v53;
      *(v49 + 7) = v54;
      *(v49 + 5) = v52;
      if (v39 == v28)
      {
        break;
      }

      ++v28;
    }

    *(a2 + 104) = v38;
    v26 = v60;
    v12 = v62;
    v22 = v61;
    v33 = v58;
    v28 = v59;
  }

LABEL_47:
  if (__OFSUB__(v7, 1))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v55 = v26 + v8 * v28;
  v56 = v26 + v8 * v33 - v55;
  *(a2 + 112) = *(a2 + 16);
  *(a2 + 128) = v22;
  *(a2 + 136) = v63;
  v57 = v5 + v5 + v4 * v7 + v6 * (v7 - 1);
  *(a2 + 144) = v11;
  *(a2 + 152) = v12;
  if (v64)
  {
    *(a2 + 112) = v57;
    *(a2 + 128) = v55;
    *(a2 + 144) = v56;
  }

  else
  {
    *(a2 + 120) = v57;
    *(a2 + 136) = v55;
    *(a2 + 152) = v56;
  }
}

double PagingLayout.decelerationTarget(contentOffset:originalContentOffset:velocity:size:)(double result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = *(v7 + 24);
  v9 = *(v7 + 16) + v8 * -0.5;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = result + a5 * -0.25;
  v11 = a3 - a7;
  if (a3 - a7 <= v10)
  {
    v11 = v10;
  }

  v12 = a3 + a7;
  if (v12 >= v11)
  {
    v12 = v11;
  }

  if (!*(v7 + 32))
  {
    v12 = v10;
  }

  v13 = (*v7 + v8) * round((v12 - v9) / (*v7 + v8));
  if (*(v7 + 8) == 1)
  {
    return v13;
  }

  return result;
}

uint64_t specialized static _PagingViewConfig.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a2 + 16);
  v7 = a2[3];
  v6 = a2[4];
  if (a1[2])
  {
    if (v4 != v7)
    {
      v5 = 0;
    }

    if (v5 != 1 || v3 != v6)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v4 != v7 || v3 != v6)
    {
      return 0;
    }
  }

  return *(a1 + 40) ^ *(a2 + 40) ^ 1u;
}

uint64_t partial apply for closure #1 in _PagingView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10[0] = v2[2];
  v5 = v10[0];
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  type metadata accessor for _PagingView(0, v10);

  return closure #1 in _PagingView.body.getter(a1, v5, v6, v7, v8, a2);
}

unint64_t lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout()
{
  result = lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout;
  if (!lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PagingLayout, &unk_1EFFD40F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout;
  if (!lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PagingLayout, &unk_1EFFD40F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PagingViewConfig.Direction and conformance _PagingViewConfig.Direction()
{
  result = lazy protocol witness table cache variable for type _PagingViewConfig.Direction and conformance _PagingViewConfig.Direction;
  if (!lazy protocol witness table cache variable for type _PagingViewConfig.Direction and conformance _PagingViewConfig.Direction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _PagingViewConfig.Direction, &type metadata for _PagingViewConfig.Direction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PagingViewConfig.Direction and conformance _PagingViewConfig.Direction);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _PagingViewConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[41])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _PagingViewConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for _PagingView(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Binding();
    v1 = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return v1;
}

uint64_t *initializeBufferWithCopyOfBuffer for _PagingView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = ((v11 + 16) & ~v11) + *(v9 + 64);
  v13 = ((((v12 + (((v11 | 7) + v7) & ~(v11 | 7)) + 55) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v11 | *(v6 + 80) & 0xF8;
  if (v14 <= 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && v13 <= 0x18)
  {
    v18 = AssociatedTypeWitness;
    (*(v6 + 16))(a1, a2, v5);
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      if ((*(v9 + 48))(v21 + 1, v10, v18))
      {
LABEL_14:
        memcpy(v19, v20, v12);
LABEL_17:
        v25 = ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        v26 = ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        v27 = *v26;
        v28 = v26[1];
        *(v25 + 25) = *(v26 + 25);
        *v25 = v27;
        v25[1] = v28;
        v29 = (v19 + v12 + 55) & 0xFFFFFFFFFFFFFFF8;
        v30 = (v20 + v12 + 55) & 0xFFFFFFFFFFFFFFF8;
        v31 = *v30;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        v34 = *(v30 + 24);
        v35 = *(v30 + 32);
        outlined copy of _ScrollViewConfig.ContentOffset(*v30, v32, v33, v34, v35);
        *v29 = v31;
        *(v29 + 8) = v32;
        *(v29 + 16) = v33;
        *(v29 + 24) = v34;
        *(v29 + 32) = v35;
        v36 = *(v30 + 40);
        *(v29 + 56) = *(v30 + 56);
        *(v29 + 40) = v36;
        *(v29 + 72) = *(v30 + 72);
        *(v29 + 80) = *(v30 + 80);
        *(v29 + 81) = *(v30 + 81);
        v37 = *(v30 + 112);
        *(v29 + 112) = v37;
        *(v29 + 120) = *(v30 + 120);
        (**(v37 - 8))(v29 + 88, v30 + 88);
        *(v29 + 128) = *(v30 + 128);
        *(v29 + 129) = *(v30 + 129);
        *(v29 + 130) = *(v30 + 130);
        *(v29 + 131) = *(v30 + 131);
        v38 = *(v30 + 136);
        *(v29 + 152) = *(v30 + 152);
        *(v29 + 136) = v38;
        v39 = ((v29 + 175) & 0xFFFFFFFFFFFFFFF8);
        v40 = ((v30 + 175) & 0xFFFFFFFFFFFFFFF8);
        *v39 = *v40;
        v39[1] = v40[1];
        goto LABEL_18;
      }
    }

    else
    {
      v22 = *v21;
      if (*v21 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      if (v22 != -1)
      {
        goto LABEL_14;
      }
    }

    *v19 = *v20;
    v23 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v21;
    v24 = *(v9 + 16);

    v24(v23 + 1, v21 + 1, v18);
    goto LABEL_17;
  }

  v17 = *a2;
  *a1 = *a2;
  a1 = (v17 + (((v14 | 7) + 16) & ~(v14 | 7)));
LABEL_18:

  return a1;
}

double destroy for _PagingView(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + (v7 | 7)) & ~(v7 | 7);
  v9 = ~v7;
  v10 = *(v6 + 64);
  v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v6 + 84) & 0x80000000) != 0)
  {
    if (!(*(v6 + 48))((v11 + v7 + 8) & v9))
    {
LABEL_5:

      (*(v6 + 8))((v11 + v7 + 8) & v9, AssociatedTypeWitness);
    }
  }

  else
  {
    v12 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 == -1)
    {
      goto LABEL_5;
    }
  }

  v13 = (v10 + ((v7 + 16) & v9) + v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of _ScrollViewConfig.ContentOffset(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
  __swift_destroy_boxed_opaque_existential_1((v13 + 88));

  return result;
}

uint64_t initializeWithCopy for _PagingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    v20 = v9 + 8;
    v21 = v19 + v9 + 8;
    v22 = v16 + v20;
    v23 = *(v8 + 16);

    v23(v21 & v13, v22 & v13, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v18 = v14 + v15;
  if (!(*(v8 + 48))((v16 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  v24 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  v27 = v25[1];
  *(v24 + 25) = *(v25 + 25);
  *v24 = v26;
  v24[1] = v27;
  v28 = (v11 + v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v12 + v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  v33 = *(v29 + 24);
  v34 = *(v29 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*v29, v31, v32, v33, v34);
  *v28 = v30;
  *(v28 + 8) = v31;
  *(v28 + 16) = v32;
  *(v28 + 24) = v33;
  *(v28 + 32) = v34;
  v35 = *(v29 + 40);
  *(v28 + 56) = *(v29 + 56);
  *(v28 + 40) = v35;
  *(v28 + 72) = *(v29 + 72);
  *(v28 + 80) = *(v29 + 80);
  *(v28 + 81) = *(v29 + 81);
  v36 = *(v29 + 112);
  *(v28 + 112) = v36;
  *(v28 + 120) = *(v29 + 120);
  (**(v36 - 8))(v28 + 88, v29 + 88);
  *(v28 + 128) = *(v29 + 128);
  *(v28 + 129) = *(v29 + 129);
  *(v28 + 130) = *(v29 + 130);
  *(v28 + 131) = *(v29 + 131);
  v37 = *(v29 + 136);
  *(v28 + 152) = *(v29 + 152);
  *(v28 + 136) = v37;
  v38 = ((v28 + 175) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v29 + 175) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;
  v38[1] = v39[1];

  return a1;
}

uint64_t assignWithCopy for _PagingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = *(v8 + 64);
  v15 = ((v9 + 16) & ~v9) + v14;
  v16 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v47 = ~v9;
  if ((v13 & 0x80000000) != 0)
  {
    v46 = ((v9 + 16) & ~v9) + v14;
    v20 = *(v8 + 48);
    v45 = v20((v16 + v9 + 8) & ~v9, v13, AssociatedTypeWitness);
    v17 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = v20((v17 + v9 + 8) & ~v9, v13, AssociatedTypeWitness);
    v15 = v46;
    if (!v45)
    {
LABEL_5:
      if (!v19)
      {
        *v11 = *v12;

        *v16 = *v17;

        (*(v8 + 24))((v16 + v9 + 8) & v47, (v17 + v9 + 8) & v47, AssociatedTypeWitness);
        goto LABEL_12;
      }

      (*(v8 + 8))((v16 + v9 + 8) & v47, AssociatedTypeWitness);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = *v17;
    if (*v17 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 + 1;
    if (*v16 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v19)
  {
    *v11 = *v12;
    *v16 = *v17;
    v21 = v9 + 8;
    v22 = v16 + v9 + 8;
    v23 = v15;
    v24 = v17 + v21;
    v25 = *(v8 + 16);

    v26 = v24 & v47;
    v15 = v23;
    v25(v22 & v47, v26, AssociatedTypeWitness);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v15);
LABEL_12:
  v27 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  v29 = *(v28 + 8);
  *(v27 + 16) = *(v28 + 16);
  *(v27 + 8) = v29;
  *(v27 + 24) = *(v28 + 24);
  *(v27 + 32) = *(v28 + 32);
  *(v27 + 40) = *(v28 + 40);
  v30 = (v11 + v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v12 + v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  v35 = *(v31 + 24);
  v36 = *(v31 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*v31, v33, v34, v35, v36);
  v37 = *v30;
  v38 = *(v30 + 8);
  v39 = *(v30 + 16);
  v40 = *(v30 + 24);
  v41 = *(v30 + 32);
  *v30 = v32;
  *(v30 + 8) = v33;
  *(v30 + 16) = v34;
  *(v30 + 24) = v35;
  *(v30 + 32) = v36;
  outlined consume of _ScrollViewConfig.ContentOffset(v37, v38, v39, v40, v41);
  *(v30 + 40) = *(v31 + 40);
  *(v30 + 48) = *(v31 + 48);
  *(v30 + 56) = *(v31 + 56);
  *(v30 + 64) = *(v31 + 64);
  *(v30 + 72) = *(v31 + 72);
  *(v30 + 80) = *(v31 + 80);
  *(v30 + 81) = *(v31 + 81);
  __swift_assign_boxed_opaque_existential_1((v30 + 88), (v31 + 88));
  *(v30 + 128) = *(v31 + 128);
  *(v30 + 129) = *(v31 + 129);
  *(v30 + 130) = *(v31 + 130);
  *(v30 + 131) = *(v31 + 131);
  *(v30 + 136) = *(v31 + 136);
  *(v30 + 144) = *(v31 + 144);
  *(v30 + 152) = *(v31 + 152);
  *(v30 + 160) = *(v31 + 160);
  v42 = ((v30 + 175) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v31 + 175) & 0xFFFFFFFFFFFFFFF8);
  *v42 = *v43;
  v42[1] = v43[1];

  return a1;
}

uint64_t initializeWithTake for _PagingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    (*(v8 + 32))((v19 + v9 + 8) & v13, (v16 + v9 + 8) & v13, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v18 = v14 + v15;
  if (!(*(v8 + 48))((v16 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  v20 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  v23 = v21[1];
  *(v20 + 25) = *(v21 + 25);
  *v20 = v22;
  v20[1] = v23;
  v24 = (v11 + v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v12 + v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 96);
  v28 = *(v25 + 48);
  v27 = *(v25 + 64);
  *(v24 + 80) = *(v25 + 80);
  *(v24 + 96) = v26;
  *(v24 + 48) = v28;
  *(v24 + 64) = v27;
  v30 = *(v25 + 128);
  v29 = *(v25 + 144);
  v31 = *(v25 + 112);
  *(v24 + 160) = *(v25 + 160);
  *(v24 + 128) = v30;
  *(v24 + 144) = v29;
  *(v24 + 112) = v31;
  v32 = *v25;
  v33 = *(v25 + 32);
  *(v24 + 16) = *(v25 + 16);
  *(v24 + 32) = v33;
  *v24 = v32;
  *((v24 + 175) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 175) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _PagingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = *(v8 + 64);
  v15 = ((v9 + 16) & ~v9) + v14;
  v16 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v42 = ~v9;
  if ((v13 & 0x80000000) != 0)
  {
    v41 = ((v9 + 16) & ~v9) + v14;
    v20 = *(v8 + 48);
    v21 = v20((v16 + v9 + 8) & ~v9, v13, AssociatedTypeWitness);
    v22 = v20;
    v40 = v21;
    v17 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = v22((v17 + v9 + 8) & ~v9, v13, AssociatedTypeWitness);
    v15 = v41;
    if (!v40)
    {
LABEL_5:
      if (!v19)
      {
        *v11 = *v12;

        *v16 = *v17;

        (*(v8 + 40))((v16 + v9 + 8) & v42, (v17 + v9 + 8) & v42, AssociatedTypeWitness);
        goto LABEL_12;
      }

      (*(v8 + 8))((v16 + v9 + 8) & v42, AssociatedTypeWitness);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = *v17;
    if (*v17 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 + 1;
    if (*v16 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v19)
  {
    *v11 = *v12;
    *v16 = *v17;
    (*(v8 + 32))((v16 + v9 + 8) & v42, (v17 + v9 + 8) & v42, AssociatedTypeWitness);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v15);
LABEL_12:
  v23 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  v25 = *(v24 + 8);
  *(v23 + 16) = *(v24 + 16);
  *(v23 + 8) = v25;
  *(v23 + 24) = *(v24 + 24);
  *(v23 + 32) = *(v24 + 32);
  *(v23 + 40) = *(v24 + 40);
  v26 = (v11 + v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v12 + v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 32);
  v29 = *v26;
  v30 = *(v26 + 8);
  v31 = *(v26 + 16);
  v32 = *(v26 + 24);
  v33 = *(v26 + 32);
  v34 = *(v27 + 16);
  *v26 = *v27;
  *(v26 + 16) = v34;
  *(v26 + 32) = v28;
  outlined consume of _ScrollViewConfig.ContentOffset(v29, v30, v31, v32, v33);
  *(v26 + 40) = *(v27 + 40);
  *(v26 + 48) = *(v27 + 48);
  *(v26 + 56) = *(v27 + 56);
  *(v26 + 64) = *(v27 + 64);
  *(v26 + 72) = *(v27 + 72);
  *(v26 + 80) = *(v27 + 80);
  *(v26 + 81) = *(v27 + 81);
  __swift_destroy_boxed_opaque_existential_1((v26 + 88));
  v35 = *(v27 + 88);
  v36 = *(v27 + 104);
  *(v26 + 120) = *(v27 + 120);
  *(v26 + 104) = v36;
  *(v26 + 88) = v35;
  *(v26 + 128) = *(v27 + 128);
  *(v26 + 129) = *(v27 + 129);
  *(v26 + 130) = *(v27 + 130);
  *(v26 + 131) = *(v27 + 131);
  *(v26 + 136) = *(v27 + 136);
  *(v26 + 144) = *(v27 + 144);
  *(v26 + 152) = *(v27 + 152);
  *(v26 + 160) = *(v27 + 160);
  v37 = ((v26 + 175) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v27 + 175) & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v38;
  v37[1] = v38[1];

  return a1;
}