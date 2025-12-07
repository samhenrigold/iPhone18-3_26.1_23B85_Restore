uint64_t initializeWithTake for ListRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 32);
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
    (*(v8 + 32))((v19 + v9 + 8) & v13, (v16 + v9 + 8) & v13, v7);
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
  v20 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  v24 = *(v21 + 48);
  *(v20 + 32) = *(v21 + 32);
  *(v20 + 48) = v24;
  *v20 = v22;
  *(v20 + 16) = v23;
  v25 = *(v21 + 64);
  v26 = *(v21 + 80);
  v27 = *(v21 + 96);
  *(v20 + 105) = *(v21 + 105);
  *(v20 + 80) = v26;
  *(v20 + 96) = v27;
  *(v20 + 64) = v25;
  *(v20 + 124) = *(v21 + 124);
  v28 = ((v20 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v29 = ((v21 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v28 = *v29;
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = *v31;
  *(v30 + 8) = *(v31 + 8);
  *v30 = v32;
  v33 = (v30 + 17) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v31 + 17) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  v36 = *(v34 + 16);
  *(v33 + 32) = *(v34 + 32);
  *v33 = v35;
  *(v33 + 16) = v36;
  return a1;
}

uint64_t assignWithTake for ListRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 24);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v15 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v41 = ~v9;
  if ((v13 & 0x80000000) == 0)
  {
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v15 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    *v11 = *v12;
    *v15 = *v16;
    (*(v8 + 32))((v15 + v9 + 8) & v41, (v16 + v9 + 8) & v41, v7);
    goto LABEL_12;
  }

  v19 = *(v8 + 48);
  v20 = v19((v15 + v9 + 8) & ~v9, v13, v7);
  v21 = v19;
  v40 = v20;
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = v21((v16 + v9 + 8) & ~v9, v13, v7);
  if (v40)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v18)
  {

    (*(v8 + 8))((v15 + v9 + 8) & v41, v7);
LABEL_9:
    memcpy(v11, v12, v14);
    goto LABEL_12;
  }

  *v11 = *v12;

  *v15 = *v16;

  (*(v8 + 40))((v15 + v9 + 8) & v41, (v16 + v9 + 8) & v41, v7);
LABEL_12:
  v22 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  v24 = *(v23 + 8);
  v25 = *(v23 + 24);
  *(v22 + 40) = *(v23 + 40);
  *(v22 + 24) = v25;
  *(v22 + 8) = v24;
  *(v22 + 42) = *(v23 + 42);
  *(v22 + 48) = *(v23 + 48);
  *(v22 + 56) = *(v23 + 56);
  v26 = *(v23 + 64);
  *(v22 + 72) = *(v23 + 72);
  *(v22 + 64) = v26;
  v27 = *(v23 + 80);
  *(v22 + 88) = *(v23 + 88);
  *(v22 + 80) = v27;
  v28 = *(v23 + 96);
  *(v22 + 104) = *(v23 + 104);
  *(v22 + 96) = v28;
  v29 = *(v23 + 112);
  *(v22 + 120) = *(v23 + 120);
  *(v22 + 112) = v29;
  *(v22 + 124) = *(v23 + 124);
  *(v22 + 128) = *(v23 + 128);
  v30 = ((v22 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v31 = ((v23 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v30 = *v31;
  v30[1] = v31[1];
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = *v33;
  *(v32 + 8) = *(v33 + 8);
  *v32 = v34;
  v35 = (v32 + 17) & 0xFFFFFFFFFFFFFFF8;
  if (*(v35 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v36 = (v33 + 17) & 0xFFFFFFFFFFFFFFF8;
  v37 = *v36;
  v38 = *(v36 + 16);
  *(v35 + 32) = *(v36 + 32);
  *v35 = v37;
  *(v35 + 16) = v38;
  return a1;
}

uint64_t getEnumTagSinglePayload for ListRepresentable(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  v13 = *(v8 + 80);
  if (v12 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v13 | 7;
  v16 = (v13 | 7) + *(*(v5 - 8) + 64);
  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v17 = ((((((*(*(*(a3 + 24) - 8) + 64) + ((v13 + 16) & ~v13) + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 150) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 40;
  v18 = a2 - v14;
  v19 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = v18 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v14 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v17);
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 >= v12)
  {
    v30 = *(v6 + 48);

    return v30(a1, v7, v5);
  }

  else
  {
    v27 = ((((a1 + v16) & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      v29 = (*(v9 + 48))((v27 + v13 + 8) & ~v13);
    }

    else
    {
      v28 = *v27;
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      v29 = v28 + 1;
    }

    if (v29 >= 2)
    {
      return v29 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for ListRepresentable(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  if (v11 - 1 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v11 - 1;
  }

  v14 = v10 | 7;
  v15 = ((v10 + 16) & ~v10) + *(v8 + 64);
  v16 = (v10 | 7) + *(*(v5 - 8) + 64);
  v17 = ((((((v15 + (v16 & ~(v10 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 150) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v13 >= a3)
  {
    v21 = 0;
    v22 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = a3 - v13;
    if (((((((v15 + (v16 & ~(v10 | 7)) + 7) & 0xFFFFFFF8) + 150) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v21)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v7 >= v12)
        {
          v30 = *(v6 + 56);

          v30();
        }

        else
        {
          v26 = (a1 + v16) & ~v14;
          if (v12 >= a2)
          {
            v31 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((v9 & 0x80000000) != 0)
            {
              v32 = *(v8 + 56);
              v33 = a2 + 1;

              v32((v31 + v10 + 8) & ~v10, v33);
            }

            else if (((a2 + 1) & 0x80000000) != 0)
            {
              *v31 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v31 = a2;
            }
          }

          else
          {
            if (v15 <= 3)
            {
              v27 = ~(-1 << (8 * v15));
            }

            else
            {
              v27 = -1;
            }

            if (v15)
            {
              v28 = v27 & (a2 - v11);
              if (v15 <= 3)
              {
                v29 = v15;
              }

              else
              {
                v29 = 4;
              }

              bzero(((a1 + v16) & ~v14), v15);
              if (v29 > 2)
              {
                if (v29 == 3)
                {
                  *v26 = v28;
                  *(v26 + 2) = BYTE2(v28);
                }

                else
                {
                  *v26 = v28;
                }
              }

              else if (v29 == 1)
              {
                *v26 = v28;
              }

              else
              {
                *v26 = v28;
              }
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((((((v15 + (v16 & ~(v10 | 7)) + 7) & 0xFFFFFFF8) + 150) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if (((((((v15 + (v16 & ~(v10 | 7)) + 7) & 0xFFFFFFF8) + 150) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v24 = ~v13 + a2;
    v25 = a1;
    bzero(a1, v17);
    a1 = v25;
    *v25 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v17) = v23;
    }

    else
    {
      *(a1 + v17) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v17) = v23;
  }
}

_DWORD *assignWithCopy for TableViewListCore.UpdateBridgedState(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

_DWORD *initializeWithTake for TableViewListCore.UpdateBridgedState(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  return a1;
}

_DWORD *assignWithTake for TableViewListCore.UpdateBridgedState(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t instantiation function for generic protocol witness table for ListRepresentable<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of BridgedListState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BridgedListState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized ListRepresentable.resetViewProvider(_:coordinator:destroy:)(uint64_t (*a1)(void))
{
  lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault();
  result = static UserDefaultKeyedFeature.isEnabled.getter();
  if ((result & 1) == 0)
  {
    return a1();
  }

  return result;
}

id specialized static ListRepresentable.dismantleViewProvider(_:coordinator:)(void *a1)
{
  v2 = [a1 refreshControl];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for UIKitRefreshControl();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      if (*&v4[OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask])
      {
        v5 = v4;

        MEMORY[0x18D00D010](v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

        v4 = v5;
      }

      [v4 endRefreshing];
    }
  }

  return [a1 setRefreshControl_];
}

void type metadata accessor for Attribute<UInt32>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for _UIHostingView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier();
    v6[0] = MEMORY[0x1E697D9E8];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined assign with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowSpacing>, &type metadata for ListRowSpacing, &protocol witness table for ListRowSpacing, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributedString.Runs.Index();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  type metadata accessor for AttributedString.Runs();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v11(v9, v3);
    v12 = type metadata accessor for AttributedString.Runs.Run();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v14 = dispatch thunk of Collection.subscript.read();
    v16 = v15;
    v17 = type metadata accessor for AttributedString.Runs.Run();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, v16, v17);
    v14(v19, 0);
    v11(v9, v3);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

{
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v7[4] == v7[0])
  {
    v2 = 1;
  }

  else
  {
    v3 = dispatch thunk of Collection.subscript.read();
    _s7SwiftUI16PlatformItemListV0D0VWOcTm_0(v4, a1, type metadata accessor for Range<AttributedString.Index>);
    v3(v7, 0);
    v2 = 0;
  }

  type metadata accessor for Range<AttributedString.Index>(0);
  return (*(*(v5 - 8) + 56))(a1, v2, 1, v5);
}

{
  outlined init with copy of TableColumnCollection.Backing(v1, v13);
  if ((v14 & 1) == 0)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v13, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 1;
    goto LABEL_6;
  }

  v3 = *(*&v13[0] + 16);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  TableColumnCollection.subscript.getter(0, a1);
  v4 = 0;
LABEL_6:
  v8 = type metadata accessor for TableColumnCollection.Entry(0);
  return (*(*(v8 - 8) + 56))(a1, v4, 1, v8);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 96) = -1;
  }

  else
  {
    result = specialized Dictionary.subscript.getter(v8, v4, *(a1 + 36), 0, a1);
    v6 = v8[3];
    *(a2 + 40) = v8[2];
    *(a2 + 56) = v6;
    *(a2 + 72) = v9[0];
    *(a2 + 81) = *(v9 + 9);
    v7 = v8[1];
    *(a2 + 8) = v8[0];
    *(a2 + 24) = v7;
  }

  *a2 = result;
  return result;
}

void specialized Collection.first.getter(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (a2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  AGGraphGetWeakValue();
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    v12 = *(MEMORY[0x1E69E7CC0] + 16);

    if (v12)
    {
      goto LABEL_6;
    }

LABEL_11:
    v13 = type metadata accessor for PlatformItemList.Item(0);
    v8 = *(*(v13 - 8) + 56);
    v11 = v13;
    v9 = a3;
    v10 = 1;
    goto LABEL_12;
  }

  if (!*(*WeakValue + 16))
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = AGGraphGetWeakValue();
  if (!v6)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v3 = *v6;
LABEL_8:

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

LABEL_9:
  v7 = type metadata accessor for PlatformItemList.Item(0);
  v14 = *(v7 - 8);
  _s7SwiftUI16PlatformItemListV0D0VWOcTm_0(v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a3, type metadata accessor for PlatformItemList.Item);

  v8 = *(v14 + 56);
  v9 = a3;
  v10 = 0;
  v11 = v7;
LABEL_12:

  v8(v9, v10, 1, v11);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = MEMORY[0x18D00E710](v7, v9, v10, v11);
    outlined consume of Set<UIOpenURLContext>.Index._Variant(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v9, v6 != 0);
  return v16;
}

void specialized Collection.first.getter(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = __CocoaSet.count.getter();
    a1 = v5;
    if (v6)
    {
LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18D00E9C0](0, a1);
        v3 = v4;
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v3 = *(a1 + 32);
      }

      (*(*v3 + 120))(&v7, v4);

      if (v8)
      {
        outlined init with take of Decodable & Encodable & Hashable(&v7, a2);
        return;
      }

      goto LABEL_13;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

char *specialized _UIHostingView.init(rootView:)()
{
  v1 = v0;
  v208 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UIHostingViewBase.Options();
  v177 = *(v3 - 8);
  v178 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v185 = &v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v184 = &v173 - v6;
  v7 = type metadata accessor for UIHostingViewBase.Configuration();
  v181 = *(v7 - 8);
  v182 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v176 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v183 = &v173 - v10;
  v11 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70)) = 0;
  v12 = *((*v11 & *v0) + 0x78);
  type metadata accessor for EventBindingManager();
  v13 = EventBindingManager.__allocating_init()();
  v179 = v12;
  *(v0 + v12) = v13;
  *(v0 + *((*v11 & *v0) + 0x80)) = 0;
  *(v0 + *((*v11 & *v0) + 0x88)) = 0;
  *(v0 + *((*v11 & *v0) + 0x90)) = 1;
  *(v0 + *((*v11 & *v0) + 0x98)) = 0;
  *(v0 + *((*v11 & *v0) + 0xA0)) = 0;
  v14 = v1 + *((*v11 & *v1) + 0xA8);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = v1 + *((*v11 & *v1) + 0xB0);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  *(v0 + *((*v11 & *v0) + 0xB8)) = 0;
  *(v0 + *((*v11 & *v0) + 0xC0)) = 0;
  *(v0 + *((*v11 & *v0) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + *((*v11 & *v0) + 0xD8)) = 0;
  v16 = v1 + *((*v11 & *v1) + 0xE8);
  *v16 = 0;
  v16[8] = 1;
  *(v0 + *((*v11 & *v0) + 0xF0)) = 0;
  *(v0 + *((*v11 & *v0) + 0xF8)) = 2;
  v17 = *((*v11 & *v0) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v19 = v18;
  v20 = objc_allocWithZone(v18);
  *(v20 + *((*v11 & *v20) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + *((*v11 & *v20) + 0x68)) = 0;
  *(v20 + *((*v11 & *v20) + 0x70)) = 0;
  *(v20 + *((*v11 & *v20) + 0x78)) = 0;
  EnvironmentValues.init()();
  v21 = v20 + *((*v11 & *v20) + 0x88);
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  *(v21 + 8) = 0u;
  *(v21 + 9) = 0u;
  *(v21 + 10) = 0u;
  *(v21 + 11) = 0u;
  *(v21 + 12) = 0u;
  *(v21 + 13) = 0u;
  *(v21 + 14) = 0u;
  *(v21 + 15) = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 34) = 0;
  *(v20 + *((*v11 & *v20) + 0x90)) = 0;
  *(v20 + *((*v11 & *v20) + 0x98)) = 1;
  v190.receiver = v20;
  v190.super_class = v19;
  *(v0 + v17) = objc_msgSendSuper2(&v190, sel_init);
  v22 = *((*v11 & *v0) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *(v25 + *((*v11 & *v25) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + *((*v11 & *v25) + 0x68)) = 0;
  *(v25 + *((*v11 & *v25) + 0x70)) = 0;
  *(v25 + *((*v11 & *v25) + 0x78)) = 0;
  EnvironmentValues.init()();
  v26 = v25 + *((*v11 & *v25) + 0x88);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 5) = 0u;
  *(v26 + 6) = 0u;
  *(v26 + 7) = 0u;
  *(v26 + 8) = 0u;
  *(v26 + 9) = 0u;
  *(v26 + 20) = 0;
  *(v25 + *((*v11 & *v25) + 0x90)) = 0;
  *(v25 + *((*v11 & *v25) + 0x98)) = 0;
  v189.receiver = v25;
  v189.super_class = v24;
  *(v1 + v22) = objc_msgSendSuper2(&v189, sel_init);
  *(v1 + *((*v11 & *v1) + 0x110)) = 1;
  v27 = *((*v11 & *v1) + 0x118);
  type metadata accessor for FocusBridge();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  swift_unknownObjectWeakInit();
  v29 = MEMORY[0x1E69E7CC0];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v28 + 48) = 0;
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  EnvironmentValues.init()();
  *(v28 + 120) = 0u;
  *(v28 + 104) = 0u;
  *(v28 + 88) = 0u;
  v173 = xmmword_18CD6A6D0;
  *(v28 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v28 + 160) = 0;
  *(v28 + 168) = 0;
  *(v28 + 176) = 1;
  *(v1 + v27) = v28;
  v31 = *((*v11 & *v1) + 0x120);
  *(v1 + v31) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v1 + *((*v11 & *v1) + 0x128)) = 0;
  v32 = *((*v11 & *v1) + 0x130);
  *(v1 + v32) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v33 = *((*v11 & *v1) + 0x138);
  *(v1 + v33) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v1 + *((*v11 & *v1) + 0x140)) = 0;
  *(v1 + *((*v11 & *v1) + 0x148)) = 0;
  v34 = *((*v11 & *v1) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v35 = swift_allocObject();
  *(v35 + 16) = 514;
  *(v35 + 24) = v29;
  *(v35 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + v34) = v35;
  swift_weakInit();
  *(v1 + *((*v11 & *v1) + 0x160)) = 0;
  v36 = *((*v11 & *v1) + 0x168);
  *(v1 + v36) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v37 = *((*v11 & *v1) + 0x170);
  *(v1 + v37) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v1 + *((*v11 & *v1) + 0x178)) = 0;
  *(v1 + *((*v11 & *v1) + 0x180)) = 0;
  v38 = *((*v11 & *v1) + 0x188);
  *(v1 + v38) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v39 = *((*v11 & *v1) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 20) = 0;
  *(v40 + 24) = 0;
  v174 = v39;
  *(v1 + v39) = v40;
  *(v1 + *((*v11 & *v1) + 0x198)) = 0;
  v41 = *((*v11 & *v1) + 0x1A0);
  *(v1 + v41) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v1 + *((*v11 & *v1) + 0x1A8)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1B0)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1B8)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v11 & *v1) + 0x1C8)) = 0;
  v42 = v1 + *((*v11 & *v1) + 0x1D0);
  *v42 = 0;
  v42[8] = 0;
  *(v42 + 1) = xmmword_18CD76350;
  v43 = swift_unknownObjectWeakInit();
  *(v1 + *((*v11 & *v1) + 0x1E0)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1E8)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1F0)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1F8)) = 0;
  *(v1 + *((*v11 & *v1) + 0x200)) = 0;
  MEMORY[0x18D00ABE0](v43);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v44 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v45 = *(ObjectType + 1384);
  v175 = ObjectType;
  v45(&v193, v44);
  v46 = v193;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v191) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v180 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v180 + 88);

  v48 = v183;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v185;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v184;
  specialized OptionSet<>.insert(_:)(v184, v50);
  v53 = v178;
  v54 = *(v177 + 8);
  v54(v50, v178);
  v54(v52, v53);
  v55 = v51(&v193, 0);
  v56 = v48;
  if (((*(v175 + 1408))(v55) & 1) == 0)
  {
    v57 = v185;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v177 = UIHostingViewBase.Configuration.options.modify();
    v58 = v184;
    specialized OptionSet<>.insert(_:)(v184, v57);
    v56 = v48;
    v54(v57, v53);
    v54(v58, v53);
    (v177)(&v193, 0);
  }

  (*(v181 + 16))(v176, v56, v182);
  v59 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v60 = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) = v60;

  *&v193 = specialized FocusViewGraph.init(graph:)(v62);
  *(&v193 + 1) = v63;
  LOWORD(v194) = v64 & 0x101;
  BYTE2(v194) = v65 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v193 = 0;
  WORD4(v193) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v66 = *MEMORY[0x1E698D3F8];
    v191 = 0uLL;
    *v192 = v66;
    memset(&v192[8], 0, 64);
    *&v192[72] = v173;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v196 = *&v192[32];
    v197 = *&v192[48];
    v198 = *&v192[64];
    v199 = *&v192[80];
    v193 = v191;
    v194 = *v192;
    v195 = *&v192[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v193);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.EnableVFDFeature, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v67, &v191);
  aBlock = v191;
  v205 = *v192;
  v206 = *&v192[16];
  v207 = *&v192[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v193 = aBlock;
  v194 = v205;
  v195 = v206;
  *&v196 = v207;
  outlined destroy of AccessibilityViewGraph(&v193);
  v68 = *(v1 + v174);
  v69 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v70 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v68;
  DWORD2(aBlock) = v70;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v71 = MEMORY[0x1E69E7CC0];
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v205 + 1) = &type metadata for HoverEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v72;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v71);
  *(&v205 + 1) = &type metadata for KeyEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v1 + *((*v61 & *v1) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v74);
  v75 = MEMORY[0x1E6981E70];
  v76 = MEMORY[0x1E6981E60];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
  v188.receiver = v1;
  v188.super_class = v77;
  v78 = objc_msgSendSuper2(&v188, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.HostViewGraph, v75, v76, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v79 = v78;
  ViewGraph.append<A>(feature:)();
  v80 = outlined destroy of _UIHostingView<EmptyView>.HostViewGraph(&aBlock);
  v184 = v78;
  (*((*v61 & *v79) + 0x5C0))(v80);
  v81 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v82 = aBlock;
  v185 = v47;
  if (aBlock != 1)
  {
    v83 = *(&aBlock + 1);
    v84 = v205;
    v85 = v206;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v86);
    }

    *&aBlock = v82;
    *(&aBlock + 1) = v83;
    v205 = v84;
    LOBYTE(v206) = v85 & 1;
    RepresentableContextValues.environment.getter();
    v202 = v203;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v82, v83, v84, *(&v84 + 1), v85);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v87 = v79;

  v88 = *&v87[*((*v61 & *v87) + 0x150)];
  v89 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>();
  *(v88 + 40) = v89;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v179 = *((*v61 & *v87) + 0x188);
  *(*&v87[v179] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v90 = *&v87[*((*v61 & *v87) + 0x100)];
  *(v90 + *((*v90 & *v61) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = *&v87[*((*v61 & *v87) + 0x108)];
  *(v91 + *((*v91 & *v61) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  v92 = GraphHost.addPreference<A>(_:)();
  v94 = specialized _UIHostingView.sheetBridge.getter(v92, v93);
  if (v94)
  {
    *&v94[direct field offset for SheetBridge.host + 8] = v89;
    v95 = v94;
    swift_unknownObjectWeakAssign();
  }

  v96 = *v61 & *v87;
  v97 = *&v87[*(v96 + 0x110)];
  if (v97)
  {
    v98 = *((*v97 & *v61) + 0x210);
    v99 = v97;
    v98(v185);
    outlined consume of SheetBridge<SheetPreference.Key>??(v97);
    v96 = *v61 & *v87;
  }

  v100 = *&v87[*(v96 + 280)];
  v101 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>();
  *(v100 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v100 + 40) = v101;
  swift_unknownObjectWeakAssign();

  v102 = FocusBridge.host.getter();
  if (v102)
  {
    v104 = v102;
    v105 = v103;
    v106 = swift_getObjectType();
    (*(*(*(v105 + 8) + 8) + 8))(v106);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v107 = *((*v61 & *v87) + 0x120);
  *(*&v87[v107] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v108 = *&v87[v107];
  v109 = &v108[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v110 = *(v109 + 1);
  v111 = swift_getObjectType();
  v112 = *(*(v110 + 16) + 8);
  v113 = v108;
  LOBYTE(v111) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v111, v112);
  swift_unknownObjectRelease();
  if (v111)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v87[*((*v61 & *v87) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v114 = v87;
  GraphHost.addPreference<A>(_:)();
  *(*&v114[*((*v61 & *v114) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v114[*((*v61 & *v114) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v115 = *((*v61 & *v114) + 0x168);
  *(*&v114[v115] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();

  v116 = *&v114[v115];
  v117 = &v116[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v118 = *(v117 + 1);
  v119 = swift_getObjectType();
  v120 = *(v118 + 8);
  v121 = *(v120 + 8);
  v122 = v116;
  v121(v119, v120);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v123 = [v114 traitCollection];

  v124 = [v123 userInterfaceIdiom];
  v125 = MEMORY[0x1E69E7D40];
  if (v124 == 1 || (v126 = [v114 traitCollection], v127 = objc_msgSend(v126, sel_userInterfaceIdiom), v126, v127 == 6))
  {
    v128 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v128[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v89;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v129 = *((*v125 & *v114) + 0x178);
    v130 = *&v114[v129];
    *&v114[v129] = v128;
  }

  v131 = *&v87[v179];
  v132 = &v131[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v134 = v182;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v135 = *(v132 + 1);
  v136 = swift_getObjectType();
  v137 = *(*(v135 + 16) + 8);
  v138 = v131;
  LOBYTE(v136) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v136, v137);
  swift_unknownObjectRelease();
  v139 = v185;
  if (v136)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v140 = *((*v125 & *v114) + 0x1A0);
  *(*&v114[v140] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v89;
  v141 = swift_unknownObjectWeakAssign();
  v142 = *&v114[v140];
  MEMORY[0x1EEE9AC00](v141);
  *(&v173 - 2) = v142;
  *(&v173 - 1) = v139;
  v143 = v114;
  v144 = v142;
  static Update.ensure<A>(_:)();

  v145 = MEMORY[0x1E69E7D40];
  v146 = *((*MEMORY[0x1E69E7D40] & *v143) + 0x78);
  v147 = *&v143[v146];
  v148 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v147 + 24) = v148;
  swift_unknownObjectWeakAssign();

  v149 = *&v143[v146];
  v150 = *((*v145 & *v143) + 0xE0);
  swift_beginAccess();
  *(v149 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v151 = *&v143[v150];
  v152 = *(v151 + 32);
  v153 = v183;

  if (v152)
  {
    [v143 addGestureRecognizer_];
  }

  [v143 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v154 = [v143 window];
    if (v154)
    {
      v155 = v154;
      v156 = [v154 rootViewController];

      if (v156)
      {
        v157 = [v156 viewIfLoaded];

        if (v157)
        {

          if (v157 == v143)
          {
            v200 = 0;
            v187[0] = 0;
            v158 = getpid();
            LODWORD(v179) = v158;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v186 = v158;
            v159 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v159);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v206 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v161;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_225;
            v162 = _Block_copy(&aBlock);

            v163 = String.utf8CString.getter();

            notify_register_dispatch((v163 + 32), &v200, v160, v162);

            _Block_release(v162);

            v153 = v183;
            v164 = static OS_dispatch_queue.main.getter();
            v165 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v166 = swift_allocObject();
            *(v166 + 16) = v179;
            *(v166 + 24) = v165;
            *&v206 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v166;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_232;
            v167 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v187, v164, v167);
            _Block_release(v167);

            v168 = &v143[*((*v145 & *v143) + 0xE8)];
            *v168 = v200 | (v187[0] << 32);
            v168[8] = 0;
          }
        }
      }
    }
  }

  v169 = [objc_opt_self() defaultCenter];
  [v169 addObserver:v143 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v170 = one-time initialization token for didUpdateListLayout;
  v171 = v143;
  if (v170 != -1)
  {
    swift_once();
  }

  [v169 addObserver:v171 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v201 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v200, v171);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v181 + 8))(v153, v134);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v181 + 8))(v153, v134);
  }

  static Update.end()();
  return v171;
}

void *specialized _UIHostingView.init(rootView:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v187) = a2;
  v210 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v181 = type metadata accessor for UIHostingViewBase.Options();
  v186 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v176 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v178 = &v173 - v8;
  v9 = type metadata accessor for UIHostingViewBase.Configuration();
  v183 = *(v9 - 8);
  v184 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v179 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v185 = &v173 - v12;
  v13 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70)) = 0;
  v14 = *((*v13 & *v2) + 0x78);
  type metadata accessor for EventBindingManager();
  v15 = EventBindingManager.__allocating_init()();
  v180 = v14;
  *(v2 + v14) = v15;
  *(v2 + *((*v13 & *v2) + 0x80)) = 0;
  *(v2 + *((*v13 & *v2) + 0x88)) = 0;
  *(v2 + *((*v13 & *v2) + 0x90)) = 1;
  *(v2 + *((*v13 & *v2) + 0x98)) = 0;
  *(v2 + *((*v13 & *v2) + 0xA0)) = 0;
  v16 = v3 + *((*v13 & *v3) + 0xA8);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = v3 + *((*v13 & *v3) + 0xB0);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  *(v2 + *((*v13 & *v2) + 0xB8)) = 0;
  *(v2 + *((*v13 & *v2) + 0xC0)) = 0;
  *(v2 + *((*v13 & *v2) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v13 & *v2) + 0xD8)) = 0;
  v18 = v3 + *((*v13 & *v3) + 0xE8);
  *v18 = 0;
  v18[8] = 1;
  *(v2 + *((*v13 & *v2) + 0xF0)) = 0;
  *(v2 + *((*v13 & *v2) + 0xF8)) = 2;
  v19 = *((*v13 & *v2) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *(v22 + *((*v13 & *v22) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + *((*v13 & *v22) + 0x68)) = 0;
  *(v22 + *((*v13 & *v22) + 0x70)) = 0;
  *(v22 + *((*v13 & *v22) + 0x78)) = 0;
  EnvironmentValues.init()();
  v23 = v22 + *((*v13 & *v22) + 0x88);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 4) = 0u;
  *(v23 + 5) = 0u;
  *(v23 + 6) = 0u;
  *(v23 + 7) = 0u;
  *(v23 + 8) = 0u;
  *(v23 + 9) = 0u;
  *(v23 + 10) = 0u;
  *(v23 + 11) = 0u;
  *(v23 + 12) = 0u;
  *(v23 + 13) = 0u;
  *(v23 + 14) = 0u;
  *(v23 + 15) = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 34) = 0;
  *(v22 + *((*v13 & *v22) + 0x90)) = 0;
  *(v22 + *((*v13 & *v22) + 0x98)) = 1;
  v192.receiver = v22;
  v192.super_class = v21;
  *(v2 + v19) = objc_msgSendSuper2(&v192, sel_init);
  v24 = *((*v13 & *v2) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v26 = v25;
  v27 = objc_allocWithZone(v25);
  *(v27 + *((*v13 & *v27) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + *((*v13 & *v27) + 0x68)) = 0;
  *(v27 + *((*v13 & *v27) + 0x70)) = 0;
  *(v27 + *((*v13 & *v27) + 0x78)) = 0;
  EnvironmentValues.init()();
  v28 = v27 + *((*v13 & *v27) + 0x88);
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *(v28 + 4) = 0u;
  *(v28 + 5) = 0u;
  *(v28 + 6) = 0u;
  *(v28 + 7) = 0u;
  *(v28 + 8) = 0u;
  *(v28 + 9) = 0u;
  *(v28 + 20) = 0;
  *(v27 + *((*v13 & *v27) + 0x90)) = 0;
  *(v27 + *((*v13 & *v27) + 0x98)) = 0;
  v191.receiver = v27;
  v191.super_class = v26;
  *(v3 + v24) = objc_msgSendSuper2(&v191, sel_init);
  *(v3 + *((*v13 & *v3) + 0x110)) = 1;
  v29 = *((*v13 & *v3) + 0x118);
  type metadata accessor for FocusBridge();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  swift_unknownObjectWeakInit();
  v31 = MEMORY[0x1E69E7CC0];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v30 + 48) = 0;
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  EnvironmentValues.init()();
  *(v30 + 120) = 0u;
  *(v30 + 104) = 0u;
  *(v30 + 88) = 0u;
  v173 = xmmword_18CD6A6D0;
  *(v30 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v30 + 160) = 0;
  *(v30 + 168) = 0;
  *(v30 + 176) = 1;
  *(v3 + v29) = v30;
  v33 = *((*v13 & *v3) + 0x120);
  *(v3 + v33) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x128)) = 0;
  v34 = *((*v13 & *v3) + 0x130);
  *(v3 + v34) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v35 = *((*v13 & *v3) + 0x138);
  *(v3 + v35) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x140)) = 0;
  *(v3 + *((*v13 & *v3) + 0x148)) = 0;
  v36 = *((*v13 & *v3) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v37 = swift_allocObject();
  *(v37 + 16) = 514;
  *(v37 + 24) = v31;
  *(v37 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v36) = v37;
  swift_weakInit();
  *(v3 + *((*v13 & *v3) + 0x160)) = 0;
  v38 = *((*v13 & *v3) + 0x168);
  *(v3 + v38) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v39 = *((*v13 & *v3) + 0x170);
  *(v3 + v39) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x178)) = 0;
  *(v3 + *((*v13 & *v3) + 0x180)) = 0;
  v40 = *((*v13 & *v3) + 0x188);
  *(v3 + v40) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v41 = *((*v13 & *v3) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 20) = 0;
  *(v42 + 24) = 0;
  v175 = v41;
  *(v3 + v41) = v42;
  *(v3 + *((*v13 & *v3) + 0x198)) = 0;
  v43 = *((*v13 & *v3) + 0x1A0);
  *(v3 + v43) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x1A8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1B0)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1B8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v13 & *v3) + 0x1C8)) = 0;
  v44 = v3 + *((*v13 & *v3) + 0x1D0);
  *v44 = 0;
  v44[8] = 0;
  *(v44 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v13 & *v3) + 0x1E0)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1E8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1F0)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1F8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x200)) = 0;
  v45 = v3 + *((*v13 & *v3) + 0x60);
  *v45 = a1;
  v45[8] = v187;
  v174 = a1;

  MEMORY[0x18D00ABE0](v46);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v47 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v48 = *(ObjectType + 1384);
  v177 = ObjectType;
  v48(&v195, v47);
  v49 = v195;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v193) = v49;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView();
  v182 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v187 = *(v182 + 88);

  v50 = v185;
  v51 = UIHostingViewBase.Configuration.init()();
  v52 = v176;
  MEMORY[0x18D001BC0](v51);
  v53 = UIHostingViewBase.Configuration.options.modify();
  v54 = v178;
  specialized OptionSet<>.insert(_:)(v178, v52);
  v56 = (v186 + 1);
  v55 = v186[1];
  v57 = v181;
  v55(v52, v181);
  v186 = v56;
  v55(v54, v57);
  v58 = v53(&v195, 0);
  v59 = v50;
  if (((*(v177 + 1408))(v58) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v54, v52);
    v61 = v181;
    v55(v52, v181);
    v55(v54, v61);
    v60(&v195, 0);
    v59 = v185;
  }

  (*(v183 + 16))(v179, v59, v184);
  v62 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = v187;

  *&v195 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v195 + 1) = v65;
  LOWORD(v196) = v66 & 0x101;
  BYTE2(v196) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v195 = 0;
  WORD4(v195) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v193 = 0uLL;
    *v194 = v68;
    memset(&v194[8], 0, 64);
    *&v194[72] = v173;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v198 = *&v194[32];
    v199 = *&v194[48];
    v200 = *&v194[64];
    v201 = *&v194[80];
    v195 = v193;
    v196 = *v194;
    v197 = *&v194[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v195);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v193);
  aBlock = v193;
  v207 = *v194;
  v208 = *&v194[16];
  v209 = *&v194[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v195 = aBlock;
  v196 = v207;
  v197 = v208;
  *&v198 = v209;
  outlined destroy of AccessibilityViewGraph(&v195);
  v70 = *(v3 + v175);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v207 + 1) = &type metadata for HoverEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v207 + 1) = &type metadata for KeyEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  v77 = UIKitEventBindingBridge.init(eventBindingManager:)(v76);
  v78 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xE0)) = v77;
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
  v190.receiver = v3;
  v190.super_class = v79;
  v80 = v78;
  v81 = objc_msgSendSuper2(&v190, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v82 = v81;
  ViewGraph.append<A>(feature:)();
  v83 = outlined destroy of _UIHostingView<BridgedPresentation.RootView>.HostViewGraph(&aBlock);
  (*((*v78 & *v82) + 0x5C0))(v83);
  v84 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v85 = aBlock;
  v186 = v81;
  if (aBlock != 1)
  {
    v86 = *(&aBlock + 1);
    v87 = v207;
    v88 = v208;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v89);
    }

    *&aBlock = v85;
    *(&aBlock + 1) = v86;
    v207 = v87;
    LOBYTE(v208) = v88 & 1;
    RepresentableContextValues.environment.getter();
    v204 = v205;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v85, v86, v87, *(&v87 + 1), v88);
    v63 = v187;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v90 = v82;

  v91 = *(v90 + *((*v80 & *v90) + 0x150));
  v92 = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>();
  *(v91 + 40) = v92;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v181 = *((*v80 & *v90) + 0x188);
  *(*(v90 + v181) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v93 = *(v90 + *((*v80 & *v90) + 0x100));
  *(v93 + *((*v93 & *v80) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v94 = *(v90 + *((*v80 & *v90) + 0x108));
  *(v94 + *((*v94 & *v80) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  v95 = GraphHost.addPreference<A>(_:)();
  v97 = specialized _UIHostingView.sheetBridge.getter(v95, v96);
  if (v97)
  {
    *&v97[direct field offset for SheetBridge.host + 8] = v92;
    v98 = v97;
    swift_unknownObjectWeakAssign();
  }

  v99 = *v80 & *v90;
  v100 = *(v90 + *(v99 + 0x110));
  if (v100)
  {
    v101 = *((*v100 & *v80) + 0x210);
    v102 = v100;
    v101(v63);
    outlined consume of SheetBridge<SheetPreference.Key>??(v100);
    v99 = *v80 & *v90;
  }

  v103 = *(v90 + *(v99 + 280));
  v104 = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>();
  *(v103 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v103 + 40) = v104;
  swift_unknownObjectWeakAssign();

  v105 = FocusBridge.host.getter();
  if (v105)
  {
    v107 = v105;
    v108 = v106;
    v109 = swift_getObjectType();
    (*(*(*(v108 + 8) + 8) + 8))(v109);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v110 = *((*v80 & *v90) + 0x120);
  *(*(v90 + v110) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v111 = *(v90 + v110);
  v112 = &v111[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v113 = *(v112 + 1);
  v114 = swift_getObjectType();
  v115 = *(*(v113 + 16) + 8);
  v116 = v111;
  LOBYTE(v114) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v114, v115);
  swift_unknownObjectRelease();
  if (v114)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v90 + *((*v80 & *v90) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v117 = v90;
  GraphHost.addPreference<A>(_:)();
  *(*(v117 + *((*v80 & *v117) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v117 + *((*v80 & *v117) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v118 = *((*v80 & *v117) + 0x168);
  *(*(v117 + v118) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();

  v119 = *(v117 + v118);
  v120 = &v119[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v121 = *(v120 + 1);
  v122 = swift_getObjectType();
  v123 = *(v121 + 8);
  v124 = *(v123 + 8);
  v125 = v119;
  v124(v122, v123);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v126 = [v117 traitCollection];

  v127 = [v126 userInterfaceIdiom];
  v128 = MEMORY[0x1E69E7D40];
  if (v127 == 1 || (v129 = [v117 traitCollection], v130 = objc_msgSend(v129, sel_userInterfaceIdiom), v129, v130 == 6))
  {
    v131 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v131[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v92;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v132 = *((*v128 & *v117) + 0x178);
    v133 = *(v117 + v132);
    *(v117 + v132) = v131;
  }

  v134 = *(v90 + v181);
  v135 = &v134[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v136 = *(v135 + 1);
  v137 = v134;

  v138 = swift_getObjectType();
  v139 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v138, *(*(v136 + 16) + 8));
  swift_unknownObjectRelease();
  v140 = v187;
  if (v139)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v141 = *((*v128 & *v117) + 0x1A0);
  *(*(v117 + v141) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v92;
  v142 = swift_unknownObjectWeakAssign();
  v143 = *(v117 + v141);
  MEMORY[0x1EEE9AC00](v142);
  *(&v173 - 2) = v143;
  *(&v173 - 1) = v140;
  v144 = v117;
  v145 = v143;
  static Update.ensure<A>(_:)();

  v146 = *((*v128 & *v144) + 0x78);
  v147 = *(v144 + v146);
  v148 = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v147 + 24) = v148;
  swift_unknownObjectWeakAssign();

  v149 = *(v144 + v146);
  v150 = *((*v128 & *v144) + 0xE0);
  swift_beginAccess();
  *(v149 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v151 = *(v144 + v150);
  v152 = *(v151 + 32);

  if (v152)
  {
    [v144 addGestureRecognizer_];
  }

  [v144 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v153 = [v144 window];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 rootViewController];

      if (v155)
      {
        v156 = [v155 viewIfLoaded];

        if (v156)
        {

          if (v156 == v144)
          {
            v202 = 0;
            v189[0] = 0;
            v157 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v188 = v157;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v158);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v159 = static OS_dispatch_queue.main.getter();
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v208 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_57;
            v161 = _Block_copy(&aBlock);

            v162 = String.utf8CString.getter();

            notify_register_dispatch((v162 + 32), &v202, v159, v161);

            _Block_release(v161);

            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v165 = swift_allocObject();
            *(v165 + 16) = v157;
            *(v165 + 24) = v164;
            *&v208 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v165;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_64;
            v166 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v189, v163, v166);
            _Block_release(v166);

            v167 = v144 + *((*v128 & *v144) + 0xE8);
            *v167 = v202 | (v189[0] << 32);
            v167[8] = 0;
          }
        }
      }
    }
  }

  v168 = [objc_opt_self() defaultCenter];
  [v168 addObserver:v144 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v169 = one-time initialization token for didUpdateListLayout;
  v170 = v144;
  if (v169 != -1)
  {
    swift_once();
  }

  [v168 addObserver:v170 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v171 = v185;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v203 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v202, v170);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v183 + 8))(v171, v184);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v183 + 8))(v171, v184);
  }

  static Update.end()();
  return v170;
}

void *specialized _UIHostingView.init(rootView:)(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v187 = a3;
  v182 = a2;
  LODWORD(v181) = a1;
  v210 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v186 = type metadata accessor for UIHostingViewBase.Options();
  v179 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v177 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v173 - v8;
  v10 = type metadata accessor for UIHostingViewBase.Configuration();
  v184 = *(v10 - 8);
  v185 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v178 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v183 = &v173 - v13;
  v14 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x70)) = 0;
  v15 = *((*v14 & *v3) + 0x78);
  type metadata accessor for EventBindingManager();
  v16 = EventBindingManager.__allocating_init()();
  v180 = v15;
  *(v3 + v15) = v16;
  *(v3 + *((*v14 & *v3) + 0x80)) = 0;
  *(v3 + *((*v14 & *v3) + 0x88)) = 0;
  *(v3 + *((*v14 & *v3) + 0x90)) = 1;
  *(v3 + *((*v14 & *v3) + 0x98)) = 0;
  *(v3 + *((*v14 & *v3) + 0xA0)) = 0;
  v17 = v4 + *((*v14 & *v4) + 0xA8);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v18 = v4 + *((*v14 & *v4) + 0xB0);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *(v3 + *((*v14 & *v3) + 0xB8)) = 0;
  *(v3 + *((*v14 & *v3) + 0xC0)) = 0;
  *(v3 + *((*v14 & *v3) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v14 & *v3) + 0xD8)) = 0;
  v19 = v4 + *((*v14 & *v4) + 0xE8);
  *v19 = 0;
  v19[8] = 1;
  *(v3 + *((*v14 & *v3) + 0xF0)) = 0;
  *(v3 + *((*v14 & *v3) + 0xF8)) = 2;
  v20 = *((*v14 & *v3) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  *(v23 + *((*v14 & *v23) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + *((*v14 & *v23) + 0x68)) = 0;
  *(v23 + *((*v14 & *v23) + 0x70)) = 0;
  *(v23 + *((*v14 & *v23) + 0x78)) = 0;
  EnvironmentValues.init()();
  v24 = v23 + *((*v14 & *v23) + 0x88);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 6) = 0u;
  *(v24 + 7) = 0u;
  *(v24 + 8) = 0u;
  *(v24 + 9) = 0u;
  *(v24 + 10) = 0u;
  *(v24 + 11) = 0u;
  *(v24 + 12) = 0u;
  *(v24 + 13) = 0u;
  *(v24 + 14) = 0u;
  *(v24 + 15) = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 34) = 0;
  *(v23 + *((*v14 & *v23) + 0x90)) = 0;
  *(v23 + *((*v14 & *v23) + 0x98)) = 1;
  v192.receiver = v23;
  v192.super_class = v22;
  *(v3 + v20) = objc_msgSendSuper2(&v192, sel_init);
  v25 = *((*v14 & *v3) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v27 = v26;
  v28 = objc_allocWithZone(v26);
  *(v28 + *((*v14 & *v28) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + *((*v14 & *v28) + 0x68)) = 0;
  *(v28 + *((*v14 & *v28) + 0x70)) = 0;
  *(v28 + *((*v14 & *v28) + 0x78)) = 0;
  EnvironmentValues.init()();
  v29 = v28 + *((*v14 & *v28) + 0x88);
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  *(v29 + 5) = 0u;
  *(v29 + 6) = 0u;
  *(v29 + 7) = 0u;
  *(v29 + 8) = 0u;
  *(v29 + 9) = 0u;
  *(v29 + 20) = 0;
  *(v28 + *((*v14 & *v28) + 0x90)) = 0;
  *(v28 + *((*v14 & *v28) + 0x98)) = 0;
  v191.receiver = v28;
  v191.super_class = v27;
  *(v4 + v25) = objc_msgSendSuper2(&v191, sel_init);
  *(v4 + *((*v14 & *v4) + 0x110)) = 1;
  v30 = *((*v14 & *v4) + 0x118);
  type metadata accessor for FocusBridge();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  swift_unknownObjectWeakInit();
  v32 = MEMORY[0x1E69E7CC0];
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v31 + 48) = 0;
  *(v31 + 56) = v32;
  *(v31 + 64) = v33;
  EnvironmentValues.init()();
  *(v31 + 120) = 0u;
  *(v31 + 104) = 0u;
  *(v31 + 88) = 0u;
  v173 = xmmword_18CD6A6D0;
  *(v31 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v31 + 160) = 0;
  *(v31 + 168) = 0;
  *(v31 + 176) = 1;
  *(v4 + v30) = v31;
  v34 = *((*v14 & *v4) + 0x120);
  *(v4 + v34) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v4 + *((*v14 & *v4) + 0x128)) = 0;
  v35 = *((*v14 & *v4) + 0x130);
  *(v4 + v35) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v36 = *((*v14 & *v4) + 0x138);
  *(v4 + v36) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v4 + *((*v14 & *v4) + 0x140)) = 0;
  *(v4 + *((*v14 & *v4) + 0x148)) = 0;
  v37 = *((*v14 & *v4) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v38 = swift_allocObject();
  *(v38 + 16) = 514;
  *(v38 + 24) = v32;
  *(v38 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + v37) = v38;
  swift_weakInit();
  *(v4 + *((*v14 & *v4) + 0x160)) = 0;
  v39 = *((*v14 & *v4) + 0x168);
  *(v4 + v39) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v40 = *((*v14 & *v4) + 0x170);
  *(v4 + v40) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v4 + *((*v14 & *v4) + 0x178)) = 0;
  *(v4 + *((*v14 & *v4) + 0x180)) = 0;
  v41 = *((*v14 & *v4) + 0x188);
  *(v4 + v41) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v42 = *((*v14 & *v4) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 20) = 0;
  *(v43 + 24) = 0;
  v176 = v42;
  *(v4 + v42) = v43;
  *(v4 + *((*v14 & *v4) + 0x198)) = 0;
  v44 = *((*v14 & *v4) + 0x1A0);
  *(v4 + v44) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v4 + *((*v14 & *v4) + 0x1A8)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1B0)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1B8)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v14 & *v4) + 0x1C8)) = 0;
  v45 = v4 + *((*v14 & *v4) + 0x1D0);
  *v45 = 0;
  v45[8] = 0;
  *(v45 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v14 & *v4) + 0x1E0)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1E8)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1F0)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1F8)) = 0;
  *(v4 + *((*v14 & *v4) + 0x200)) = 0;
  v46 = v4 + *((*v14 & *v4) + 0x60);
  *v46 = v181;
  v47 = v182;
  v48 = v187;
  *(v46 + 1) = v182;
  *(v46 + 2) = v48;
  v175 = v47;
  v174 = v48;
  MEMORY[0x18D00ABE0]();
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v49 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v50 = *(ObjectType + 1384);
  v181 = ObjectType;
  v50(&v195, v49);
  v51 = v195;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v193) = v51;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol();
  v182 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v187 = *(v182 + 88);

  v52 = v183;
  v53 = UIHostingViewBase.Configuration.init()();
  v54 = v177;
  MEMORY[0x18D001BC0](v53);
  v55 = UIHostingViewBase.Configuration.options.modify();
  specialized OptionSet<>.insert(_:)(v9, v54);
  v56 = *(v179 + 8);
  v57 = v186;
  v56(v54, v186);
  v56(v9, v57);
  v58 = v55(&v195, 0);
  if (((*(v181 + 1408))(v58) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v181 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v9, v54);
    v59 = v186;
    v56(v54, v186);
    v56(v9, v59);
    (v181)(&v195, 0);
  }

  (*(v184 + 16))(v178, v52, v185);
  v60 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = v187;

  *&v195 = specialized FocusViewGraph.init(graph:)(v62);
  *(&v195 + 1) = v63;
  LOWORD(v196) = v64 & 0x101;
  BYTE2(v196) = v65 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v195 = 0;
  WORD4(v195) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v66 = *MEMORY[0x1E698D3F8];
    v193 = 0uLL;
    *v194 = v66;
    memset(&v194[8], 0, 64);
    *&v194[72] = v173;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v198 = *&v194[32];
    v199 = *&v194[48];
    v200 = *&v194[64];
    v201 = *&v194[80];
    v195 = v193;
    v196 = *v194;
    v197 = *&v194[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v195);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v67, &v193);
  aBlock = v193;
  v207 = *v194;
  v208 = *&v194[16];
  v209 = *&v194[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v195 = aBlock;
  v196 = v207;
  v197 = v208;
  *&v198 = v209;
  outlined destroy of AccessibilityViewGraph(&v195);
  v68 = *(v4 + v176);
  v69 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v70 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v68;
  DWORD2(aBlock) = v70;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v71 = MEMORY[0x1E69E7CC0];
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v207 + 1) = &type metadata for HoverEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v72;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v71);
  *(&v207 + 1) = &type metadata for KeyEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  v75 = UIKitEventBindingBridge.init(eventBindingManager:)(v74);
  v76 = MEMORY[0x1E69E7D40];
  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xE0)) = v75;
  v77 = MEMORY[0x1E697FB28];
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
  v190.receiver = v4;
  v190.super_class = v78;
  v79 = v76;
  v80 = objc_msgSendSuper2(&v190, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, v77, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v81 = v80;
  ViewGraph.append<A>(feature:)();
  v82 = outlined destroy of _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph(&aBlock);
  (*((*v76 & *v81) + 0x5C0))(v82);
  v83 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v84 = aBlock;
  v186 = v80;
  if (aBlock != 1)
  {
    v85 = *(&aBlock + 1);
    v86 = v207;
    v87 = v208;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v88);
    }

    *&aBlock = v84;
    *(&aBlock + 1) = v85;
    v207 = v86;
    LOBYTE(v208) = v87 & 1;
    RepresentableContextValues.environment.getter();
    v204 = v205;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v84, v85, v86, *(&v86 + 1), v87);
    v61 = v187;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v89 = v81;

  v90 = *(v89 + *((*v79 & *v89) + 0x150));
  v91 = lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>();
  *(v90 + 40) = v91;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v181 = *((*v79 & *v89) + 0x188);
  *(*(v89 + v181) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v92 = *(v89 + *((*v79 & *v89) + 0x100));
  *(v92 + *((*v92 & *v79) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = *(v89 + *((*v79 & *v89) + 0x108));
  *(v93 + *((*v93 & *v79) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  v94 = GraphHost.addPreference<A>(_:)();
  v96 = specialized _UIHostingView.sheetBridge.getter(v94, v95);
  if (v96)
  {
    *&v96[direct field offset for SheetBridge.host + 8] = v91;
    v97 = v96;
    swift_unknownObjectWeakAssign();
  }

  v98 = *v79 & *v89;
  v99 = *(v89 + *(v98 + 0x110));
  if (v99)
  {
    v100 = *((*v99 & *v79) + 0x210);
    v101 = v99;
    v100(v61);
    outlined consume of SheetBridge<SheetPreference.Key>??(v99);
    v98 = *v79 & *v89;
  }

  v102 = *(v89 + *(v98 + 280));
  v103 = lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>();
  *(v102 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v102 + 40) = v103;
  swift_unknownObjectWeakAssign();

  v104 = FocusBridge.host.getter();
  if (v104)
  {
    v106 = v104;
    v107 = v105;
    v108 = swift_getObjectType();
    (*(*(*(v107 + 8) + 8) + 8))(v108);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v109 = *((*v79 & *v89) + 0x120);
  *(*(v89 + v109) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v110 = *(v89 + v109);
  v111 = &v110[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v112 = *(v111 + 1);
  v113 = swift_getObjectType();
  v114 = *(*(v112 + 16) + 8);
  v115 = v110;
  LOBYTE(v113) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v113, v114);
  swift_unknownObjectRelease();
  if (v113)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v89 + *((*v79 & *v89) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v116 = v89;
  GraphHost.addPreference<A>(_:)();
  *(*(v116 + *((*v79 & *v116) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v116 + *((*v79 & *v116) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v117 = *((*v79 & *v116) + 0x168);
  *(*(v116 + v117) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();

  v118 = *(v116 + v117);
  v119 = &v118[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v120 = *(v119 + 1);
  v121 = swift_getObjectType();
  v122 = *(v120 + 8);
  v123 = *(v122 + 8);
  v124 = v118;
  v123(v121, v122);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v125 = [v116 traitCollection];

  v126 = [v125 userInterfaceIdiom];
  v127 = MEMORY[0x1E69E7D40];
  if (v126 == 1 || (v128 = [v116 traitCollection], v129 = objc_msgSend(v128, sel_userInterfaceIdiom), v128, v129 == 6))
  {
    v130 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v130[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v91;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v131 = *((*v127 & *v116) + 0x178);
    v132 = *(v116 + v131);
    *(v116 + v131) = v130;
  }

  v133 = *(v89 + v181);
  v134 = &v133[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v136 = *(v134 + 1);
  v137 = v133;

  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v138 = swift_getObjectType();
  v139 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v138, *(*(v136 + 16) + 8));
  swift_unknownObjectRelease();
  v140 = v187;
  if (v139)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v141 = *((*v127 & *v116) + 0x1A0);
  *(*(v116 + v141) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v91;
  v142 = swift_unknownObjectWeakAssign();
  v143 = *(v116 + v141);
  MEMORY[0x1EEE9AC00](v142);
  *(&v173 - 2) = v143;
  *(&v173 - 1) = v140;
  v144 = v116;
  v145 = v143;
  static Update.ensure<A>(_:)();

  v146 = *((*v127 & *v144) + 0x78);
  v147 = *(v144 + v146);
  v148 = lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v147 + 24) = v148;
  swift_unknownObjectWeakAssign();

  v149 = *(v144 + v146);
  v150 = *((*v127 & *v144) + 0xE0);
  swift_beginAccess();
  *(v149 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v151 = *(v144 + v150);
  v152 = *(v151 + 32);

  if (v152)
  {
    [v144 addGestureRecognizer_];
  }

  [v144 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v153 = [v144 window];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 rootViewController];

      if (v155)
      {
        v156 = [v155 viewIfLoaded];

        if (v156)
        {

          if (v156 == v144)
          {
            v202 = 0;
            v189[0] = 0;
            v157 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v188 = v157;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v158);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v159 = static OS_dispatch_queue.main.getter();
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v208 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_211;
            v161 = _Block_copy(&aBlock);

            v162 = String.utf8CString.getter();

            notify_register_dispatch((v162 + 32), &v202, v159, v161);

            _Block_release(v161);

            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v165 = swift_allocObject();
            *(v165 + 16) = v157;
            *(v165 + 24) = v164;
            *&v208 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v165;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_218;
            v166 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v189, v163, v166);
            _Block_release(v166);

            v167 = v144 + *((*v127 & *v144) + 0xE8);
            *v167 = v202 | (v189[0] << 32);
            v167[8] = 0;
          }
        }
      }
    }
  }

  v168 = [objc_opt_self() defaultCenter];
  [v168 addObserver:v144 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v169 = one-time initialization token for didUpdateListLayout;
  v170 = v144;
  if (v169 != -1)
  {
    swift_once();
  }

  [v168 addObserver:v170 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v171 = v183;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v203 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v202, v170);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v184 + 8))(v171, v185);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v184 + 8))(v171, v185);
  }

  static Update.end()();
  return v170;
}

void *specialized _UIHostingView.init(rootView:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(void), uint64_t (*a9)(void), unint64_t *a10, uint64_t (*a11)(uint64_t), uint64_t (*a12)(void), uint64_t a13, unint64_t *a14, uint64_t (*a15)(uint64_t), unint64_t *a16, uint64_t a17, unint64_t *a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), unint64_t *a22, uint64_t (*a23)(void), uint64_t (*a24)(uint64_t), uint64_t (*a25)(void))
{
  v210 = a8;
  v211 = a4;
  v201 = a6;
  v202 = a7;
  v200 = a5;
  v204 = a3;
  v217 = a2;
  v26 = v25;
  v215 = a1;
  v240 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v216 = type metadata accessor for UIHostingViewBase.Options();
  v207 = *(v216 - 1);
  MEMORY[0x1EEE9AC00](v216);
  v206 = (&v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v199 - v30;
  v32 = type metadata accessor for UIHostingViewBase.Configuration();
  v212 = *(v32 - 8);
  v213 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v208 = (&v199 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v214 = &v199 - v35;
  v36 = MEMORY[0x1E69E7D40];
  *(v25 + *((*MEMORY[0x1E69E7D40] & *v25) + 0x70)) = 0;
  v37 = *((*v36 & *v25) + 0x78);
  type metadata accessor for EventBindingManager();
  v38 = EventBindingManager.__allocating_init()();
  v209 = v37;
  *&v37[v25] = v38;
  *(v25 + *((*v36 & *v25) + 0x80)) = 0;
  *(v25 + *((*v36 & *v25) + 0x88)) = 0;
  *(v25 + *((*v36 & *v25) + 0x90)) = 1;
  *(v25 + *((*v36 & *v25) + 0x98)) = 0;
  *(v25 + *((*v36 & *v25) + 0xA0)) = 0;
  v39 = v26 + *((*v36 & *v26) + 0xA8);
  *v39 = 0u;
  *(v39 + 1) = 0u;
  v39[32] = 1;
  v40 = v26 + *((*v36 & *v26) + 0xB0);
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v40[32] = 1;
  *(v25 + *((*v36 & *v25) + 0xB8)) = 0;
  *(v25 + *((*v36 & *v25) + 0xC0)) = 0;
  *(v25 + *((*v36 & *v25) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + *((*v36 & *v25) + 0xD8)) = 0;
  v41 = v26 + *((*v36 & *v26) + 0xE8);
  *v41 = 0;
  v41[8] = 1;
  *(v25 + *((*v36 & *v25) + 0xF0)) = 0;
  *(v25 + *((*v36 & *v25) + 0xF8)) = 2;
  v42 = *((*v36 & *v25) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v44 = v43;
  v45 = objc_allocWithZone(v43);
  *(v45 + *((*v36 & *v45) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v45 + *((*v36 & *v45) + 0x68)) = 0;
  *(v45 + *((*v36 & *v45) + 0x70)) = 0;
  *(v45 + *((*v36 & *v45) + 0x78)) = 0;
  EnvironmentValues.init()();
  v46 = v45 + *((*v36 & *v45) + 0x88);
  *v46 = 0u;
  *(v46 + 1) = 0u;
  *(v46 + 2) = 0u;
  *(v46 + 3) = 0u;
  *(v46 + 4) = 0u;
  *(v46 + 5) = 0u;
  *(v46 + 6) = 0u;
  *(v46 + 7) = 0u;
  *(v46 + 8) = 0u;
  *(v46 + 9) = 0u;
  *(v46 + 10) = 0u;
  *(v46 + 11) = 0u;
  *(v46 + 12) = 0u;
  *(v46 + 13) = 0u;
  *(v46 + 14) = 0u;
  *(v46 + 15) = 0u;
  *(v46 + 16) = 0u;
  *(v46 + 34) = 0;
  *(v45 + *((*v36 & *v45) + 0x90)) = 0;
  *(v45 + *((*v36 & *v45) + 0x98)) = 1;
  v222.receiver = v45;
  v222.super_class = v44;
  *(v25 + v42) = objc_msgSendSuper2(&v222, sel_init);
  v47 = *((*v36 & *v25) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v49 = v48;
  v50 = objc_allocWithZone(v48);
  *(v50 + *((*v36 & *v50) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v50 + *((*v36 & *v50) + 0x68)) = 0;
  *(v50 + *((*v36 & *v50) + 0x70)) = 0;
  *(v50 + *((*v36 & *v50) + 0x78)) = 0;
  EnvironmentValues.init()();
  v51 = v50 + *((*v36 & *v50) + 0x88);
  *v51 = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 2) = 0u;
  *(v51 + 3) = 0u;
  *(v51 + 4) = 0u;
  *(v51 + 5) = 0u;
  *(v51 + 6) = 0u;
  *(v51 + 7) = 0u;
  *(v51 + 8) = 0u;
  *(v51 + 9) = 0u;
  *(v51 + 20) = 0;
  *(v50 + *((*v36 & *v50) + 0x90)) = 0;
  *(v50 + *((*v36 & *v50) + 0x98)) = 0;
  v221.receiver = v50;
  v221.super_class = v49;
  *(v26 + v47) = objc_msgSendSuper2(&v221, sel_init);
  *(v26 + *((*v36 & *v26) + 0x110)) = 1;
  v52 = *((*v36 & *v26) + 0x118);
  type metadata accessor for FocusBridge();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 32) = 0;
  *(v53 + 40) = 0;
  swift_unknownObjectWeakInit();
  v54 = MEMORY[0x1E69E7CC0];
  v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v53 + 48) = 0;
  *(v53 + 56) = v54;
  *(v53 + 64) = v55;
  EnvironmentValues.init()();
  *(v53 + 120) = 0u;
  *(v53 + 104) = 0u;
  *(v53 + 88) = 0u;
  v199 = xmmword_18CD6A6D0;
  *(v53 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v53 + 160) = 0;
  *(v53 + 168) = 0;
  *(v53 + 176) = 1;
  *(v26 + v52) = v53;
  v56 = *((*v36 & *v26) + 0x120);
  *(v26 + v56) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v26 + *((*v36 & *v26) + 0x128)) = 0;
  v57 = *((*v36 & *v26) + 0x130);
  *(v26 + v57) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v58 = *((*v36 & *v26) + 0x138);
  *(v26 + v58) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v26 + *((*v36 & *v26) + 0x140)) = 0;
  *(v26 + *((*v36 & *v26) + 0x148)) = 0;
  v59 = *((*v36 & *v26) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v60 = swift_allocObject();
  *(v60 + 16) = 514;
  *(v60 + 24) = v54;
  *(v60 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + v59) = v60;
  swift_weakInit();
  *(v26 + *((*v36 & *v26) + 0x160)) = 0;
  v61 = *((*v36 & *v26) + 0x168);
  *(v26 + v61) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v62 = *((*v36 & *v26) + 0x170);
  *(v26 + v62) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v26 + *((*v36 & *v26) + 0x178)) = 0;
  *(v26 + *((*v36 & *v26) + 0x180)) = 0;
  v63 = *((*v36 & *v26) + 0x188);
  *(v26 + v63) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v64 = *((*v36 & *v26) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 20) = 0;
  *(v65 + 24) = 0;
  v203 = v64;
  *(v26 + v64) = v65;
  *(v26 + *((*v36 & *v26) + 0x198)) = 0;
  v66 = *((*v36 & *v26) + 0x1A0);
  *(v26 + v66) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v26 + *((*v36 & *v26) + 0x1A8)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1B0)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1B8)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v36 & *v26) + 0x1C8)) = 0;
  v67 = v26 + *((*v36 & *v26) + 0x1D0);
  *v67 = 0;
  v67[8] = 0;
  *(v67 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v36 & *v26) + 0x1E0)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1E8)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1F0)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1F8)) = 0;
  *(v26 + *((*v36 & *v26) + 0x200)) = 0;
  v68 = _s7SwiftUI16PlatformItemListV0D0VWOcTm_0(v215, v26 + *((*v36 & *v26) + 0x60), v217);
  MEMORY[0x18D00ABE0](v68);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v69 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v70 = *(ObjectType + 1384);
  v205 = ObjectType;
  v70(&v225, v69);
  v71 = v225;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v204(0);
  LOBYTE(v223) = v71;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  (v211)();
  v211 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v217 = *(v211 + 88);

  v72 = v214;
  v73 = UIHostingViewBase.Configuration.init()();
  v74 = v206;
  MEMORY[0x18D001BC0](v73);
  v75 = UIHostingViewBase.Configuration.options.modify();
  specialized OptionSet<>.insert(_:)(v31, v74);
  v76 = *(v207 + 8);
  v77 = v216;
  v76(v74, v216);
  v76(v31, v77);
  v78 = v75(&v225, 0);
  if (((*(v205 + 1408))(v78) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v207 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v31, v74);
    v79 = v216;
    v76(v74, v216);
    v76(v31, v79);
    (v207)(&v225, 0);
  }

  v207 = a13;
  v206 = a12;
  (*(v212 + 16))(v208, v72, v213);
  v80 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v26 + *((*MEMORY[0x1E69E7D40] & *v26) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v225 = specialized FocusViewGraph.init(graph:)(v81);
  *(&v225 + 1) = v82;
  LOWORD(v226) = v83 & 0x101;
  BYTE2(v226) = v84 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v225 = 0;
  WORD4(v225) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v85 = *MEMORY[0x1E698D3F8];
    v223 = 0uLL;
    *v224 = v85;
    memset(&v224[8], 0, 64);
    *&v224[72] = v199;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v228 = *&v224[32];
    v229 = *&v224[48];
    v230 = *&v224[64];
    v231 = *&v224[80];
    v225 = v223;
    v226 = *v224;
    v227 = *&v224[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v225);
  }

  v216 = a15;
  v208 = a14;
  if (_UIUpdateAdaptiveRateNeeded())
  {
    v200(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(v201, v202, protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v86, &v223);
  aBlock = v223;
  v237 = *v224;
  v238 = *&v224[16];
  v239 = *&v224[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v225 = aBlock;
  v226 = v237;
  v227 = v238;
  *&v228 = v239;
  outlined destroy of AccessibilityViewGraph(&v225);
  v87 = *(v26 + v203);
  v88 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v89 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v87;
  DWORD2(aBlock) = v89;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v90 = MEMORY[0x1E69E7CC0];
  v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v237 + 1) = &type metadata for HoverEventDispatcher;
  *&v238 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v91;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v237 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v238 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v237 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v238 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v90);
  *(&v237 + 1) = &type metadata for KeyEventDispatcher;
  *&v238 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v92;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  v94 = UIKitEventBindingBridge.init(eventBindingManager:)(v93);
  v95 = MEMORY[0x1E69E7D40];
  *(v26 + *((*MEMORY[0x1E69E7D40] & *v26) + 0xE0)) = v94;
  v96 = v210(0);
  v220.receiver = v26;
  v220.super_class = v96;
  v97 = objc_msgSendSuper2(&v220, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  a9(0);
  v98 = v95;
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(a10, a11, protocol conformance descriptor for _UIHostingView<A>.HostViewGraph);
  v99 = v97;
  v100 = v97;
  ViewGraph.append<A>(feature:)();
  v101 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, v206);
  v102 = (*((*v95 & *v99) + 0x5C0))(v101);
  v103 = (v207)(v102);
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v104 = aBlock;
  if (aBlock != 1)
  {
    v105 = *(&aBlock + 1);
    v106 = v237;
    v107 = v238;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v108);
    }

    *&aBlock = v104;
    *(&aBlock + 1) = v105;
    v237 = v106;
    LOBYTE(v238) = v107 & 1;
    RepresentableContextValues.environment.getter();
    v109 = MEMORY[0x1E69E7D40];
    v234 = v235;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    v98 = v109;
    outlined consume of RepresentableContextValues?(v104, v105, v106, *(&v106 + 1), v107);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v110 = v99;

  v111 = *(v110 + *((*v98 & *v110) + 0x150));
  v112 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(v208, v216, protocol conformance descriptor for _UIHostingView<A>);
  *(v111 + 40) = v112;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v208 = *((*v98 & *v110) + 0x188);
  *(*(v208 + v110) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v112;
  swift_unknownObjectWeakAssign();
  v113 = *(v110 + *((*v98 & *v110) + 0x100));
  *(v113 + *((*v113 & *v98) + 0x60) + 8) = v112;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v114 = *(v110 + *((*v98 & *v110) + 0x108));
  *(v114 + *((*v114 & *v98) + 0x60) + 8) = v112;
  swift_unknownObjectWeakAssign();

  v115 = v112;
  v116 = GraphHost.addPreference<A>(_:)();
  v118 = specialized _UIHostingView.sheetBridge.getter(v116, v117);
  if (v118)
  {
    *&v118[direct field offset for SheetBridge.host + 8] = v112;
    v119 = v118;
    swift_unknownObjectWeakAssign();
  }

  v120 = *v98 & *v110;
  v121 = *(v110 + *(v120 + 0x110));
  if (v121)
  {
    v122 = *((*v121 & *v98) + 0x210);
    v123 = v121;
    v122(v217);
    outlined consume of SheetBridge<SheetPreference.Key>??(v121);
    v120 = *v98 & *v110;
  }

  v124 = *(v110 + *(v120 + 280));
  v125 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(a16, v216, protocol conformance descriptor for _UIHostingView<A>);
  *(v124 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v124 + 40) = v125;
  swift_unknownObjectWeakAssign();

  v126 = FocusBridge.host.getter();
  if (v126)
  {
    v128 = v126;
    v129 = v127;
    v130 = swift_getObjectType();
    (*(*(*(v129 + 8) + 8) + 8))(v130);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v131 = *((*v98 & *v110) + 0x120);
  *(*(v110 + v131) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v115;
  swift_unknownObjectWeakAssign();
  v132 = *(v110 + v131);
  v133 = &v132[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v134 = *(v133 + 1);
  v135 = swift_getObjectType();
  v136 = *(*(v134 + 16) + 8);
  v137 = v132;
  LOBYTE(v135) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v135, v136);
  swift_unknownObjectRelease();
  if (v135)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v110 + *((*v98 & *v110) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v115;
  swift_unknownObjectWeakAssign();
  v138 = v110;
  GraphHost.addPreference<A>(_:)();
  *(*(v138 + *((*v98 & *v138) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v115;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v138 + *((*v98 & *v138) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v115;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v139 = *v98 & *v138;
  v209 = v100;
  v140 = *(v139 + 360);
  v141 = *(v138 + v140) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host;
  v210 = v115;
  *(v141 + 8) = v115;
  swift_unknownObjectWeakAssign();

  v142 = *(v138 + v140);
  v143 = &v142[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v144 = *(v143 + 1);
  v145 = swift_getObjectType();
  v146 = *(v144 + 8);
  v147 = *(v146 + 8);
  v148 = v142;
  v147(v145, v146);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v149 = [v138 traitCollection];

  v150 = [v149 userInterfaceIdiom];
  v151 = v210;
  if (v150 == 1 || (v152 = [v138 traitCollection], v153 = objc_msgSend(v152, sel_userInterfaceIdiom), v152, v153 == 6))
  {
    v154 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v154[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v151;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v155 = *((*MEMORY[0x1E69E7D40] & *v138) + 0x178);
    v156 = *(v138 + v155);
    *(v138 + v155) = v154;
  }

  v157 = *(v208 + v110);
  v158 = &v157[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v160 = v214;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v208 = a18;
  v161 = *(v158 + 1);
  v162 = swift_getObjectType();
  v163 = *(*(v161 + 16) + 8);
  v164 = v157;
  LOBYTE(v163) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v162, v163);
  swift_unknownObjectRelease();
  if (v163)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v165 = MEMORY[0x1E69E7D40];
  v166 = *((*MEMORY[0x1E69E7D40] & *v138) + 0x1A0);
  *(*(v138 + v166) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v210;
  v167 = swift_unknownObjectWeakAssign();
  v168 = *(v138 + v166);
  MEMORY[0x1EEE9AC00](v167);
  v169 = v217;
  *(&v199 - 2) = v168;
  *(&v199 - 1) = v169;
  v170 = v138;
  v171 = v168;
  static Update.ensure<A>(_:)();

  v172 = *((*v165 & *v170) + 0x78);
  v173 = *(v170 + v172);
  v174 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(v208, v216, protocol conformance descriptor for _UIHostingView<A>);
  swift_beginAccess();
  *(v173 + 24) = v174;
  swift_unknownObjectWeakAssign();

  v175 = *(v170 + v172);
  v176 = *((*v165 & *v170) + 0xE0);
  swift_beginAccess();
  *(v175 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v177 = *(v170 + v176);
  v178 = *(v177 + 32);

  if (v178)
  {
    [v170 addGestureRecognizer_];
  }

  [v170 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v179 = [v170 window];
    if (v179)
    {
      v180 = v179;
      v181 = [v179 rootViewController];

      if (v181)
      {
        v182 = [v181 viewIfLoaded];

        if (v182)
        {

          if (v182 == v170)
          {
            v216 = a24;
            v210 = a23;
            v208 = a22;
            v206 = a21;
            v232 = 0;
            v219[0] = 0;
            v183 = getpid();
            LODWORD(v207) = v183;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v218 = v183;
            v184 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v184);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v185 = static OS_dispatch_queue.main.getter();
            v186 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v238 = a20;
            *(&v238 + 1) = v186;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v237 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v237 + 1) = v206;
            v187 = _Block_copy(&aBlock);

            v188 = String.utf8CString.getter();

            notify_register_dispatch((v188 + 32), &v232, v185, v187);

            _Block_release(v187);

            v189 = static OS_dispatch_queue.main.getter();
            v190 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v191 = swift_allocObject();
            *(v191 + 16) = v207;
            *(v191 + 24) = v190;
            *&v238 = v210;
            *(&v238 + 1) = v191;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v237 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v237 + 1) = v216;
            v192 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v219, v189, v192);
            _Block_release(v192);

            v193 = v170 + *((*MEMORY[0x1E69E7D40] & *v170) + 0xE8);
            *v193 = v232 | (v219[0] << 32);
            v193[8] = 0;
          }
        }
      }
    }
  }

  v194 = [objc_opt_self() defaultCenter];
  [v194 addObserver:v170 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v195 = one-time initialization token for didUpdateListLayout;
  v196 = v170;
  if (v195 != -1)
  {
    swift_once();
  }

  [v194 addObserver:v196 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v233 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v232, v196);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v212 + 8))(v160, v213);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v212 + 8))(v160, v213);
  }

  v197 = v215;
  static Update.end()();
  outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(v197, a25);
  return v196;
}

void *specialized _UIHostingView.init(rootView:)(uint64_t a1, void (*a2)(void), uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), void (*a6)(void), unint64_t *a7, unint64_t *a8, uint64_t (*a9)(void), uint64_t (*a10)(__int128 *), uint64_t (*a11)(uint64_t), uint64_t (*a12)(__n128), uint64_t (*a13)(void), uint64_t a14, uint64_t (*a15)(void), uint64_t a16, uint64_t a17, unint64_t *a18, uint64_t (*a19)(__n128), uint64_t (*a20)(void), uint64_t a21)
{
  v202 = a7;
  v203 = a8;
  v194 = a4;
  v195 = a6;
  v205 = a5;
  v211 = a3;
  v212 = a2;
  v22 = v21;
  v210 = a1;
  v235 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v204 = type metadata accessor for UIHostingViewBase.Options();
  v200 = *(v204 - 1);
  MEMORY[0x1EEE9AC00](v204);
  v198 = &v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v193 - v26;
  v28 = type metadata accessor for UIHostingViewBase.Configuration();
  v208 = *(v28 - 8);
  v209 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v199 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v207 = &v193 - v31;
  v32 = MEMORY[0x1E69E7D40];
  *(v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x70)) = 0;
  v33 = *((*v32 & *v21) + 0x78);
  type metadata accessor for EventBindingManager();
  v34 = EventBindingManager.__allocating_init()();
  v201 = v33;
  *(v21 + v33) = v34;
  *(v21 + *((*v32 & *v21) + 0x80)) = 0;
  *(v21 + *((*v32 & *v21) + 0x88)) = 0;
  *(v21 + *((*v32 & *v21) + 0x90)) = 1;
  *(v21 + *((*v32 & *v21) + 0x98)) = 0;
  *(v21 + *((*v32 & *v21) + 0xA0)) = 0;
  v35 = v22 + *((*v32 & *v22) + 0xA8);
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v35[32] = 1;
  v36 = v22 + *((*v32 & *v22) + 0xB0);
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  *(v21 + *((*v32 & *v21) + 0xB8)) = 0;
  *(v21 + *((*v32 & *v21) + 0xC0)) = 0;
  *(v21 + *((*v32 & *v21) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v32 & *v21) + 0xD8)) = 0;
  v37 = v22 + *((*v32 & *v22) + 0xE8);
  *v37 = 0;
  v37[8] = 1;
  *(v21 + *((*v32 & *v21) + 0xF0)) = 0;
  *(v21 + *((*v32 & *v21) + 0xF8)) = 2;
  v38 = *((*v32 & *v21) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v40 = v39;
  v41 = objc_allocWithZone(v39);
  *(v41 + *((*v32 & *v41) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v41 + *((*v32 & *v41) + 0x68)) = 0;
  *(v41 + *((*v32 & *v41) + 0x70)) = 0;
  *(v41 + *((*v32 & *v41) + 0x78)) = 0;
  EnvironmentValues.init()();
  v42 = v41 + *((*v32 & *v41) + 0x88);
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *(v42 + 2) = 0u;
  *(v42 + 3) = 0u;
  *(v42 + 4) = 0u;
  *(v42 + 5) = 0u;
  *(v42 + 6) = 0u;
  *(v42 + 7) = 0u;
  *(v42 + 8) = 0u;
  *(v42 + 9) = 0u;
  *(v42 + 10) = 0u;
  *(v42 + 11) = 0u;
  *(v42 + 12) = 0u;
  *(v42 + 13) = 0u;
  *(v42 + 14) = 0u;
  *(v42 + 15) = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 34) = 0;
  *(v41 + *((*v32 & *v41) + 0x90)) = 0;
  *(v41 + *((*v32 & *v41) + 0x98)) = 1;
  v217.receiver = v41;
  v217.super_class = v40;
  *(v21 + v38) = objc_msgSendSuper2(&v217, sel_init);
  v43 = *((*v32 & *v21) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v45 = v44;
  v46 = objc_allocWithZone(v44);
  *(v46 + *((*v32 & *v46) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + *((*v32 & *v46) + 0x68)) = 0;
  *(v46 + *((*v32 & *v46) + 0x70)) = 0;
  *(v46 + *((*v32 & *v46) + 0x78)) = 0;
  EnvironmentValues.init()();
  v47 = v46 + *((*v32 & *v46) + 0x88);
  *v47 = 0u;
  *(v47 + 1) = 0u;
  *(v47 + 2) = 0u;
  *(v47 + 3) = 0u;
  *(v47 + 4) = 0u;
  *(v47 + 5) = 0u;
  *(v47 + 6) = 0u;
  *(v47 + 7) = 0u;
  *(v47 + 8) = 0u;
  *(v47 + 9) = 0u;
  *(v47 + 20) = 0;
  *(v46 + *((*v32 & *v46) + 0x90)) = 0;
  *(v46 + *((*v32 & *v46) + 0x98)) = 0;
  v216.receiver = v46;
  v216.super_class = v45;
  *(v22 + v43) = objc_msgSendSuper2(&v216, sel_init);
  *(v22 + *((*v32 & *v22) + 0x110)) = 1;
  v48 = *((*v32 & *v22) + 0x118);
  type metadata accessor for FocusBridge();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 32) = 0;
  *(v49 + 40) = 0;
  swift_unknownObjectWeakInit();
  v50 = MEMORY[0x1E69E7CC0];
  v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v49 + 48) = 0;
  *(v49 + 56) = v50;
  *(v49 + 64) = v51;
  EnvironmentValues.init()();
  *(v49 + 120) = 0u;
  *(v49 + 104) = 0u;
  *(v49 + 88) = 0u;
  v193 = xmmword_18CD6A6D0;
  *(v49 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v49 + 160) = 0;
  *(v49 + 168) = 0;
  *(v49 + 176) = 1;
  *(v22 + v48) = v49;
  v52 = *((*v32 & *v22) + 0x120);
  *(v22 + v52) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v22 + *((*v32 & *v22) + 0x128)) = 0;
  v53 = *((*v32 & *v22) + 0x130);
  *(v22 + v53) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v54 = *((*v32 & *v22) + 0x138);
  *(v22 + v54) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v22 + *((*v32 & *v22) + 0x140)) = 0;
  *(v22 + *((*v32 & *v22) + 0x148)) = 0;
  v55 = *((*v32 & *v22) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v56 = swift_allocObject();
  *(v56 + 16) = 514;
  *(v56 + 24) = v50;
  *(v56 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + v55) = v56;
  swift_weakInit();
  *(v22 + *((*v32 & *v22) + 0x160)) = 0;
  v57 = *((*v32 & *v22) + 0x168);
  *(v22 + v57) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v58 = *((*v32 & *v22) + 0x170);
  *(v22 + v58) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v22 + *((*v32 & *v22) + 0x178)) = 0;
  *(v22 + *((*v32 & *v22) + 0x180)) = 0;
  v59 = *((*v32 & *v22) + 0x188);
  *(v22 + v59) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v60 = *((*v32 & *v22) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 20) = 0;
  *(v61 + 24) = 0;
  v196 = v60;
  *(v22 + v60) = v61;
  *(v22 + *((*v32 & *v22) + 0x198)) = 0;
  v62 = *((*v32 & *v22) + 0x1A0);
  *(v22 + v62) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v22 + *((*v32 & *v22) + 0x1A8)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1B0)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1B8)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + *((*v32 & *v22) + 0x1C8)) = 0;
  v63 = v22 + *((*v32 & *v22) + 0x1D0);
  *v63 = 0;
  v63[8] = 0;
  *(v63 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v22 + *((*v32 & *v22) + 0x1E0)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1E8)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1F0)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1F8)) = 0;
  *(v22 + *((*v32 & *v22) + 0x200)) = 0;
  *(v22 + *((*v32 & *v22) + 0x60)) = v210;

  MEMORY[0x18D00ABE0](v64);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v65 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v66 = *(ObjectType + 1384);
  v197 = ObjectType;
  v66(&v220, v65);
  v67 = v220;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v218) = v67;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v212();
  v206 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v212 = *(v206 + 88);

  v68 = v207;
  v69 = UIHostingViewBase.Configuration.init()();
  v70 = v198;
  MEMORY[0x18D001BC0](v69);
  v71 = UIHostingViewBase.Configuration.options.modify();
  specialized OptionSet<>.insert(_:)(v27, v70);
  v72 = *(v200 + 8);
  v73 = v204;
  v72(v70, v204);
  v72(v27, v73);
  v74 = v71(&v220, 0);
  v75 = v68;
  if (((*(v197 + 1408))(v74) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v200 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v27, v70);
    v76 = v204;
    v72(v70, v204);
    v77 = v76;
    v75 = v68;
    v72(v27, v77);
    (v200)(&v220, 0);
  }

  (*(v208 + 16))(v199, v75, v209);
  v78 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v22 + *((*MEMORY[0x1E69E7D40] & *v22) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v220 = specialized FocusViewGraph.init(graph:)(v79);
  *(&v220 + 1) = v80;
  LOWORD(v221) = v81 & 0x101;
  BYTE2(v221) = v82 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v220 = 0;
  WORD4(v220) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v83 = *MEMORY[0x1E698D3F8];
    v218 = 0uLL;
    *v219 = v83;
    memset(&v219[8], 0, 64);
    *&v219[72] = v193;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v223 = *&v219[32];
    v224 = *&v219[48];
    v225 = *&v219[64];
    v226 = *&v219[80];
    v220 = v218;
    v221 = *v219;
    v222 = *&v219[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v220);
  }

  v204 = a12;
  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, v194, v205, v211, type metadata accessor for _UIHostingView.EnableVFDFeature);
    v195();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v84, &v218);
  aBlock = v218;
  v232 = *v219;
  v233 = *&v219[16];
  v234 = *&v219[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v220 = aBlock;
  v221 = v232;
  v222 = v233;
  *&v223 = v234;
  outlined destroy of AccessibilityViewGraph(&v220);
  v85 = *(v22 + v196);
  v86 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v87 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v85;
  DWORD2(aBlock) = v87;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v88 = MEMORY[0x1E69E7CC0];
  v89 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v232 + 1) = &type metadata for HoverEventDispatcher;
  *&v233 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v89;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v232 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v233 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v232 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v233 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v90 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v88);
  *(&v232 + 1) = &type metadata for KeyEventDispatcher;
  *&v233 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v90;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  v92 = UIKitEventBindingBridge.init(eventBindingManager:)(v91);
  v93 = MEMORY[0x1E69E7D40];
  *(v22 + *((*MEMORY[0x1E69E7D40] & *v22) + 0xE0)) = v92;
  v94 = v205;
  v95 = v211;
  type metadata accessor for _UIHostingView<BarItemView>(0, v202, v205, v211, type metadata accessor for _UIHostingView);
  v215.receiver = v22;
  v215.super_class = v96;
  v97 = v93;
  v98 = objc_msgSendSuper2(&v215, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, v203, v94, v95, type metadata accessor for _UIHostingView.HostViewGraph);
  a9();
  v99 = v98;
  ViewGraph.append<A>(feature:)();
  v100 = a10(&aBlock);
  v101 = (*((*v93 & *v99) + 0x5C0))(v100);
  v102 = a11(v101);
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v103 = aBlock;
  if (aBlock != 1)
  {
    v104 = *(&aBlock + 1);
    v105 = v232;
    v106 = v233;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v107);
    }

    *&aBlock = v103;
    *(&aBlock + 1) = v104;
    v232 = v105;
    LOBYTE(v233) = v106 & 1;
    RepresentableContextValues.environment.getter();
    v229 = v230;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v103, v104, v105, *(&v105 + 1), v106);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v108 = v99;

  v110 = *(v108 + *((*v97 & *v108) + 0x150));
  v111 = (v204)(v109);
  *(v110 + 40) = v111;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v205 = *((*v97 & *v108) + 0x188);
  *(*(v205 + v108) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v111;
  swift_unknownObjectWeakAssign();
  v112 = *(v108 + *((*v97 & *v108) + 0x100));
  *(v112 + *((*v112 & *v97) + 0x60) + 8) = v111;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v113 = *(v108 + *((*v97 & *v108) + 0x108));
  *(v113 + *((*v113 & *v97) + 0x60) + 8) = v111;
  swift_unknownObjectWeakAssign();

  v114 = GraphHost.addPreference<A>(_:)();
  v116 = specialized _UIHostingView.sheetBridge.getter(v114, v115);
  if (v116)
  {
    *&v116[direct field offset for SheetBridge.host + 8] = v111;
    v117 = v116;
    swift_unknownObjectWeakAssign();
  }

  v118 = *v97 & *v108;
  v119 = *(v108 + *(v118 + 0x110));
  if (v119)
  {
    v120 = *((*v119 & *v97) + 0x210);
    v121 = v119;
    v120(v212);
    outlined consume of SheetBridge<SheetPreference.Key>??(v119);
    v118 = *v97 & *v108;
  }

  v122 = *(v108 + *(v118 + 280));
  v123 = a13();
  *(v122 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v122 + 40) = v123;
  swift_unknownObjectWeakAssign();

  v124 = FocusBridge.host.getter();
  if (v124)
  {
    v126 = v124;
    v127 = v125;
    v128 = swift_getObjectType();
    (*(*(*(v127 + 8) + 8) + 8))(v128);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v129 = *((*v97 & *v108) + 0x120);
  *(*(v108 + v129) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v111;
  swift_unknownObjectWeakAssign();
  v130 = *(v108 + v129);
  v131 = &v130[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v132 = *(v131 + 1);
  v133 = swift_getObjectType();
  v134 = *(*(v132 + 16) + 8);
  v135 = v130;
  LOBYTE(v133) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v133, v134);
  swift_unknownObjectRelease();
  if (v133)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v108 + *((*v97 & *v108) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v111;
  swift_unknownObjectWeakAssign();
  v136 = v108;
  GraphHost.addPreference<A>(_:)();
  *(*(v136 + *((*v97 & *v136) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v111;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v136 + *((*v97 & *v136) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v111;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v137 = *v97 & *v136;
  v211 = v98;
  v138 = *(v137 + 360);
  *(*(v136 + v138) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v111;
  swift_unknownObjectWeakAssign();

  v139 = *(v136 + v138);
  v140 = &v139[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v141 = *(v140 + 1);
  v142 = swift_getObjectType();
  v143 = *(v141 + 8);
  v144 = *(v143 + 8);
  v145 = v139;
  v144(v142, v143);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v146 = [v136 traitCollection];

  v147 = [v146 userInterfaceIdiom];
  v148 = MEMORY[0x1E69E7D40];
  if (v147 == 1 || (v149 = [v136 traitCollection], v150 = objc_msgSend(v149, sel_userInterfaceIdiom), v149, v150 == 6))
  {
    v151 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v151[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v111;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v152 = *((*v148 & *v136) + 0x178);
    v153 = *(v136 + v152);
    *(v136 + v152) = v151;
  }

  v154 = *(v205 + v108);
  v155 = &v154[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v156 = *(v155 + 1);
  v157 = v154;

  v158 = swift_getObjectType();
  v159 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v158, *(*(v156 + 16) + 8));
  swift_unknownObjectRelease();
  if (v159)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v160 = *((*v148 & *v136) + 0x1A0);
  *(*(v136 + v160) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v111;
  v161 = swift_unknownObjectWeakAssign();
  v162 = *(v136 + v160);
  MEMORY[0x1EEE9AC00](v161);
  v163 = v212;
  *(&v193 - 2) = v162;
  *(&v193 - 1) = v163;
  v164 = v136;
  v165 = v162;
  static Update.ensure<A>(_:)();

  v166 = *((*v148 & *v164) + 0x78);
  v167 = *(v164 + v166);
  v168 = a15();
  swift_beginAccess();
  *(v167 + 24) = v168;
  swift_unknownObjectWeakAssign();

  v169 = *(v164 + v166);
  v170 = *((*v148 & *v164) + 0xE0);
  swift_beginAccess();
  *(v169 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v171 = *(v164 + v170);
  v172 = *(v171 + 32);

  if (v172)
  {
    [v164 addGestureRecognizer_];
  }

  [v164 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v173 = [v164 window];
    if (v173)
    {
      v174 = v173;
      v175 = [v173 rootViewController];

      if (v175)
      {
        v176 = [v175 viewIfLoaded];

        if (v176)
        {

          if (v176 == v164)
          {
            v210 = a21;
            v205 = a20;
            v204 = a19;
            v202 = a18;
            v201 = a16;
            v227 = 0;
            v214[0] = 0;
            v177 = getpid();
            LODWORD(v203) = v177;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v213 = v177;
            v178 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v178);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v179 = static OS_dispatch_queue.main.getter();
            v180 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v233 = a17;
            *(&v233 + 1) = v180;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v232 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v232 + 1) = v202;
            v181 = _Block_copy(&aBlock);

            v182 = String.utf8CString.getter();

            notify_register_dispatch((v182 + 32), &v227, v179, v181);

            _Block_release(v181);

            v183 = static OS_dispatch_queue.main.getter();
            v184 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v185 = swift_allocObject();
            *(v185 + 16) = v203;
            *(v185 + 24) = v184;
            *&v233 = v205;
            *(&v233 + 1) = v185;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v232 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v232 + 1) = v210;
            v186 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v214, v183, v186);
            _Block_release(v186);

            v187 = v164 + *((*v148 & *v164) + 0xE8);
            *v187 = v227 | (v214[0] << 32);
            v187[8] = 0;
          }
        }
      }
    }
  }

  v188 = [objc_opt_self() defaultCenter];
  [v188 addObserver:v164 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v189 = one-time initialization token for didUpdateListLayout;
  v190 = v164;
  if (v189 != -1)
  {
    swift_once();
  }

  [v188 addObserver:v190 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v191 = v207;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v228 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v227, v190);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v208 + 8))(v191, v209);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v208 + 8))(v191, v209);
  }

  static Update.end()();
  return v190;
}

void specialized _UIHostingView.setLayerDebugName()()
{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance NSObject, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance NSObject, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance NSObject, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, MEMORY[0x1E69E81C8]);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

Swift::Bool_optional __swiftcall SwiftUIGlue2.isStatusBarHidden()()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Collection.first.getter(v2, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);

  if (!v3)
  {
    return 2;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 statusBarManager];
    if (v5)
    {
      v6 = v5;
      v7.value = [v5 isStatusBarHidden];
    }

    else
    {
      v7.value = 0;
    }

    return v7;
  }

  else
  {

    return 2;
  }
}

unint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIScene and conformance NSObject)
  {
    v3 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
  }

  return result;
}

uint64_t SwiftUIGlue2.makeRootView(base:rootFocusScope:)(uint64_t a1)
{
  static EdgeInsets.zero.getter();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>, MEMORY[0x1E697E490], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  *(v9 + 32) = 1;
  *(v9 + 40) = v2;
  *(v9 + 48) = v4;
  *(v9 + 56) = v6;
  *(v9 + 64) = v8;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 1;
  outlined consume of ListItemTint?(1);
  v10 = MEMORY[0x1E6980330];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaInsetsModifier>, MEMORY[0x1E6981910], MEMORY[0x1E6980330], MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaInsetsModifier>, v10, MEMORY[0x1E6980328]);

  return AnyView.init<A>(_:)();
}

void SwiftUIGlue2.codableAttachmentCellType.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void _s7SwiftUI0A7UIGlue2C18usingLayoutManager33_CE8713EF1F659E3933681417E097F9F6LL_2in13stringDrawing_xSo18NSAttributedStringC_So6CGSizeVAA18ResolvedStyledTextC0rP0CxSo08NSLayoutF0C_So15NSTextContainerCtXEtlFZ10Foundation3URLVSg_Tt4g503_s7a5UI0A7c68C7linkURLy10Foundation0E0VSgAA9CoreGlue2C17LinkURLParametersVFAHSo15wf6C_So15xY7CtXEfU_AA9CoreGlue2C17LinkURLParametersVAITf1nnnnc_n(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  swift_beginAccess();
  v14 = *(a2 + 128);
  v65 = *(a2 + 112);
  v66 = v14;
  v67 = *(a2 + 144);
  v68 = *(a2 + 160);
  v15 = *(a2 + 64);
  v61 = *(a2 + 48);
  v62 = v15;
  v16 = *(a2 + 96);
  v63 = *(a2 + 80);
  v64 = v16;
  v17 = *(a2 + 32);
  v59 = *(a2 + 16);
  v60 = v17;
  swift_beginAccess();
  outlined init with copy of TextLayoutProperties(&v59, &v49);
  ResolvedStyledText.scaleFactorOverride.getter();
  if (v18)
  {
    v55 = v65;
    v56 = v66;
    v57 = v67;
    v58 = v68;
    v51 = v61;
    v52 = v62;
    v53 = v63;
    v54 = v64;
    v49 = v59;
    v50 = v60;
    TextLayoutProperties.minScaleFactor.getter();
    if (v19 != 1.0)
    {
      ResolvedStyledText.linkURLMetrics(in:layoutMargins:)();
    }
  }

  v20 = v59;
  v21 = BYTE8(v59);
  if ((BYTE8(v59) & 1) != 0 || v59 != 1)
  {
    isa = NSAttributedString.replacingLineBreakModes(_:)(NSLineBreakByWordWrapping).super.isa;
  }

  else
  {
    isa = a1;
  }

  v23 = isa;
  v24 = NSAttributedString.scaled(by:)();

  v25 = [objc_allocWithZone(SwiftUITextStorage) initWithAttributedString_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB7C0]) init];
  [v26 setUsesFontLeading_];
  [v26 setAllowsOriginalFontMetricsOverride_];
  [v25 addLayoutManager_];
  [v25 _setForceWordWrapping_];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  [v27 setLineFragmentPadding_];
  if (v20 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v20;
  }

  if (v21)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  [v27 setMaximumNumberOfLines_];
  [v27 setLineBreakMode_];
  [v26 addTextContainer_];
  v30 = a3[1];
  v49 = *a3;
  v50 = v30;
  *&v51 = *(a3 + 4);
  CoreGlue2.LinkURLParameters.point.getter();
  v31 = [v26 characterIndexForPoint:v27 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:?];
  if ((v31 & 0x8000000000000000) != 0 || (v32 = v31, v31 == NSNotFound.getter()) || (v33 = [v26 glyphRangeForCharacterRange:v32 actualCharacterRange:{1, 0}], objc_msgSend(v26, sel_boundingRectForGlyphRange_inTextContainer_, v33, v34, v27), v36 = v35, v38 = v37, v40 = v39, v42 = v41, v43 = a3[1], v49 = *a3, v50 = v43, *&v51 = *(a3 + 4), CoreGlue2.LinkURLParameters.point.getter(), v69.x = v44, v69.y = v45, v70.origin.x = v36, v70.origin.y = v38, v70.size.width = v40, v70.size.height = v42, !CGRectContainsPoint(v70, v69)))
  {
    v46 = type metadata accessor for URL();
    (*(*(v46 - 8) + 56))(a5, 1, 1, v46);
  }

  else
  {
    if ([a4 attribute:*MEMORY[0x1E69DB670] atIndex:v32 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    v49 = v47;
    v50 = v48;
    outlined init with copy of Any?(&v49, &v47);
    URL.init(urlValue:)();
    outlined destroy of Any?(&v49);
  }

  outlined destroy of TextLayoutProperties(&v59);

  outlined destroy of CoreGlue2.LinkURLParameters(a3);
}

void SwiftUIGlue2.linkURL(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v16 = *a1;
  v17 = v3;
  v4 = *(a1 + 32);
  v18 = v4;
  outlined init with copy of CoreGlue2.LinkURLParameters(&v16, v14);
  v5 = ResolvedStyledText.storage.getter();
  if (v5)
  {
    v6 = v5;
    v14[0] = v16;
    v14[1] = v17;
    v15 = v18;
    CoreGlue2.LinkURLParameters.size.getter();
    v8 = v7;
    v10 = v9;
    outlined init with copy of CoreGlue2.LinkURLParameters(&v16, v13);
    v11 = v6;
    _s7SwiftUI0A7UIGlue2C18usingLayoutManager33_CE8713EF1F659E3933681417E097F9F6LL_2in13stringDrawing_xSo18NSAttributedStringC_So6CGSizeVAA18ResolvedStyledTextC0rP0CxSo08NSLayoutF0C_So15NSTextContainerCtXEtlFZ10Foundation3URLVSg_Tt4g503_s7a5UI0A7c68C7linkURLy10Foundation0E0VSgAA9CoreGlue2C17LinkURLParametersVFAHSo15wf6C_So15xY7CtXEfU_AA9CoreGlue2C17LinkURLParametersVAITf1nnnnc_n(v11, v4, &v16, v11, a2, v8, v10);
    outlined destroy of CoreGlue2.LinkURLParameters(&v16);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    outlined destroy of CoreGlue2.LinkURLParameters(&v16);
  }
}

void SwiftUIGlue2.configure(textContainer:exclusionPaths:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = *(a2 + 16);
  if (v4)
  {
    v53 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = a2 + 32;
    do
    {
      v9 = *(v5 + 16);
      v54[0] = *v5;
      v54[1] = v9;
      v55 = *(v5 + 32);
      v56[0] = v54[0];
      v56[1] = v9;
      v57 = v55;
      outlined init with copy of Path.Storage(v56, &v39);
      Path.roundedRect()();
      if (v52 == 2 || (v11 = v50, v10 = v51, v13 = v48, v12 = v49, v15 = v46, v14 = v47, v16 = v52 & 1, v52 &= 1u, (FixedRoundedRect.isUniform.getter() & 1) == 0))
      {
        v6 = objc_opt_self();
        v7 = Path.cgPath.getter();
        v8 = [v6 bezierPathWithCGPath_];
        outlined destroy of Path(v54);
      }

      else
      {
        v46 = v15;
        v47 = v14;
        v48 = v13;
        v49 = v12;
        v50 = v11;
        v51 = v10;
        v52 = v16;
        if (FixedRoundedRect.needsContinuousCorners.getter())
        {
          v17 = objc_opt_self();
          v46 = v15;
          v47 = v14;
          v48 = v13;
          v49 = v12;
          v50 = v11;
          v51 = v10;
          v52 = v16;
          FixedRoundedRect.rect.getter();
          v35 = v19;
          v37 = v18;
          v21 = v20;
          v23 = v22;
          v39 = v15;
          v40 = v14;
          v41 = v13;
          v42 = v12;
          v43 = v11;
          v44 = v10;
          v45 = v16;
          FixedRoundedRect.cornerSize.getter();
          v25 = [v17 bezierPathWithRoundedRect:v37 cornerRadius:{v35, v21, v23, v24}];
        }

        else
        {
          v26 = objc_allocWithZone(MEMORY[0x1E69DC728]);
          v46 = v15;
          v47 = v14;
          v48 = v13;
          v49 = v12;
          v50 = v11;
          v51 = v10;
          v52 = v16;
          FixedRoundedRect.rect.getter();
          v36 = v28;
          v38 = v27;
          v30 = v29;
          v32 = v31;
          v39 = v15;
          v40 = v14;
          v41 = v13;
          v42 = v12;
          v43 = v11;
          v44 = v10;
          v45 = v16;
          FixedRoundedRect.cornerSize.getter();
          [v26 initWithArcRoundedRectForSwiftUI:v38 cornerRadius:{v36, v30, v32, v33}];
        }

        outlined destroy of Path(v54);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath, 0x1E69DC728);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setExclusionPaths_];
}

void *SwiftUIGlue2.makeSummarySymbolHost(isOn:font:foregroundColor:)(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  _IntelligenceSupport.AnimatingSummarySymbol.init(isOn:font:foregroundColor:)();
  v6 = objc_allocWithZone(type metadata accessor for _IntelligenceSupport.SummarySymbolHost(0));
  v7 = specialized _UIHostingView.init(rootView:)(v10, v11, v12);
  v8 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v7;
}

void *@objc SwiftUIGlue2.makeSummarySymbolHost(isOn:font:foregroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a4;
  v7 = a5;
  v8 = v6;
  v9 = v7;
  _IntelligenceSupport.AnimatingSummarySymbol.init(isOn:font:foregroundColor:)();
  v10 = objc_allocWithZone(type metadata accessor for _IntelligenceSupport.SummarySymbolHost(0));
  v11 = specialized _UIHostingView.init(rootView:)(v14, v15, v16);
  v12 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v11;
}

uint64_t SwiftUIGlue2.platformColorProviderTag()()
{
  v0 = type metadata accessor for Color.ProviderTag.SwiftUIPlatformTag(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag and conformance Color.ProviderTag.AnyPlatformTag, type metadata accessor for Color.ProviderTag.SwiftUIPlatformTag, MEMORY[0x1E6981590]);
  return v0;
}

uint64_t SwiftUIGlue2.platformGradientProviderTag()()
{
  v0 = type metadata accessor for Gradient.ProviderTag.SwiftUIPlatformTag(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag and conformance Gradient.ProviderTag.AnyPlatformTag, type metadata accessor for Gradient.ProviderTag.SwiftUIPlatformTag, MEMORY[0x1E6981AB8]);
  return v0;
}

uint64_t SwiftUIGlue2.updateImageTextAttachment(in:image:)(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v27 = a2[8];
  v28 = v3;
  v29[0] = a2[10];
  *(v29 + 11) = *(a2 + 171);
  v4 = a2[5];
  v24 = a2[4];
  *v25 = v4;
  v5 = a2[7];
  *&v25[16] = a2[6];
  v26 = v5;
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  *&v12[0] = v2;
  v8 = CoreGlue2.TextAttachment.base.getter();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v18 = v24;
  v19[0] = *v25;
  *(v19 + 12) = *&v25[12];
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  outlined init with copy of Image.Resolved(&v20, v12);
  outlined init with copy of GraphicsImage(&v20, v12);
  v10 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(1, 1, 0);
  v12[4] = v18;
  v13[0] = v19[0];
  *(v13 + 12) = *(v19 + 12);
  v12[0] = v14;
  v12[1] = v15;
  v12[2] = v16;
  v12[3] = v17;
  outlined destroy of GraphicsImage(v12);
  [v9 setImage_];

  return outlined destroy of Image.Resolved(&v20);
}

id SwiftUIGlue2.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SwiftUIGlue2.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

void specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()()
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    static Semantics.v7.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) == 0)
    {
      v1 = [objc_opt_self() defaultCenter];
      [v1 addObserver:v0 selector:sel_legacyKeyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];
      [v1 addObserver:v0 selector:sel_legacyKeyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];
      [v1 addObserver:v0 selector:sel_legacyKeyboardFrameWillChangeWithNotification_ name:*MEMORY[0x1E69DE068] object:0];
    }
  }
}

void specialized closure #1 in _UIHostingView.init(rootView:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

double thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void specialized closure #2 in _UIHostingView.init(rootView:)(int a1, int a2, uint64_t a3, void (*a4)(void))
{
  state64[4] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  notify_get_state(a1, state64);
  if ((a2 & 0x80000000) == 0 && state64[0] == a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      a4();
    }
  }
}

uint64_t specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v3 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    UIHostingViewBase.sceneActivationState.getter();
    if (v7)
    {
      v8 = 0xE300000000000000;
      v9 = 7104878;
    }

    else
    {
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v10;
    }

    _StringGuts.grow(_:)(40);

    v12 = a3(v11);
    v13 = UIHostingViewBase.updatesWillBeVisible.getter();

    if (v13)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v13)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x18D00C9B0](v14, v15);

    MEMORY[0x18D00C9B0](0x3D73617328, 0xE500000000000000);
    MEMORY[0x18D00C9B0](v9, v8);

    MEMORY[0x18D00C9B0](0x3D7266686926, 0xE600000000000000);
    v16 = UIHostingViewBase.isHiddenForReuse.getter();
    v17 = (v16 & 1) == 0;
    if (v16)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v17)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v18, v19);

    MEMORY[0x18D00C9B0](0x3D66656926, 0xE500000000000000);
    v20 = UIHostingViewBase.isEnteringForeground.getter();
    v21 = (v20 & 1) == 0;
    if (v20)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v21)
    {
      v23 = 0xE500000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v22, v23);

    MEMORY[0x18D00C9B0](0x3D73636926, 0xE500000000000000);
    v24 = UIHostingViewBase.isCapturingSnapshots.getter();
    v25 = (v24 & 1) == 0;
    if (v24)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE500000000000000;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v26, v27);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v29 = *(v5 + 2);
    v28 = *(v5 + 3);
    v4 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v5);
    }

    *(v5 + 2) = v4;
    v30 = &v5[16 * v29];
    *(v30 + 4) = 0x3D656C6269736976;
    *(v30 + 5) = 0xE800000000000000;
  }

  else
  {
    v4 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = MEMORY[0x1E69E7CC0];
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v31 = v3;
  v32 = (v5 + 40);
  do
  {
    v33 = *(v32 - 1);
    v34 = *v32;

    MEMORY[0x18D00C9B0](v33, v34);
    MEMORY[0x18D00C9B0](41, 0xE100000000000000);

    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    if (v36 >= v35 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
    }

    *(v31 + 16) = v36 + 1;
    v37 = v31 + 16 * v36;
    *(v37 + 32) = 40;
    *(v37 + 40) = 0xE100000000000000;
    v32 += 2;
    --v4;
  }

  while (v4);
LABEL_38:

  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v38 = BidirectionalCollection<>.joined(separator:)();

  return v38;
}

{
  v3 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    UIHostingViewBase.sceneActivationState.getter();
    if (v7)
    {
      v8 = 0xE300000000000000;
      v9 = 7104878;
    }

    else
    {
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v10;
    }

    _StringGuts.grow(_:)(40);

    v12 = a3(v11);
    v13 = UIHostingViewBase.updatesWillBeVisible.getter();

    if (v13)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v13)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x18D00C9B0](v14, v15);

    MEMORY[0x18D00C9B0](0x3D73617328, 0xE500000000000000);
    MEMORY[0x18D00C9B0](v9, v8);

    MEMORY[0x18D00C9B0](0x3D7266686926, 0xE600000000000000);
    v16 = UIHostingViewBase.isHiddenForReuse.getter();
    v17 = (v16 & 1) == 0;
    if (v16)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v17)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v18, v19);

    MEMORY[0x18D00C9B0](0x3D66656926, 0xE500000000000000);
    v20 = UIHostingViewBase.isEnteringForeground.getter();
    v21 = (v20 & 1) == 0;
    if (v20)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v21)
    {
      v23 = 0xE500000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v22, v23);

    MEMORY[0x18D00C9B0](0x3D73636926, 0xE500000000000000);
    v24 = UIHostingViewBase.isCapturingSnapshots.getter();
    v25 = (v24 & 1) == 0;
    if (v24)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE500000000000000;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v26, v27);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v29 = *(v5 + 2);
    v28 = *(v5 + 3);
    v4 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v5);
    }

    *(v5 + 2) = v4;
    v30 = &v5[16 * v29];
    *(v30 + 4) = 0x3D656C6269736976;
    *(v30 + 5) = 0xE800000000000000;
  }

  else
  {
    v4 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = MEMORY[0x1E69E7CC0];
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v31 = v3;
  v32 = (v5 + 40);
  do
  {
    v33 = *(v32 - 1);
    v34 = *v32;

    MEMORY[0x18D00C9B0](v33, v34);
    MEMORY[0x18D00C9B0](41, 0xE100000000000000);

    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    if (v36 >= v35 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
    }

    *(v31 + 16) = v36 + 1;
    v37 = v31 + 16 * v36;
    *(v37 + 32) = 40;
    *(v37 + 40) = 0xE100000000000000;
    v32 += 2;
    --v4;
  }

  while (v4);
LABEL_38:

  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v38 = BidirectionalCollection<>.joined(separator:)();

  return v38;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x18D00E760](a1, a2, v11);
      type metadata accessor for NSObject(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for NSObject(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v19;
    v12 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

unint64_t lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput()
{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesAreInput, &type metadata for ViewGraphBridgePropertiesAreInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesAreInput, &type metadata for ViewGraphBridgePropertiesAreInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesAreInput, &type metadata for ViewGraphBridgePropertiesAreInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesAreInput, &type metadata for ViewGraphBridgePropertiesAreInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesAreInput, &type metadata for ViewGraphBridgePropertiesAreInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesAreInput, &type metadata for ViewGraphBridgePropertiesAreInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesAreInput, &type metadata for ViewGraphBridgePropertiesAreInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesAreInput, &type metadata for ViewGraphBridgePropertiesAreInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature()
{
  result = lazy protocol witness table cache variable for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature;
  if (!lazy protocol witness table cache variable for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InteractiveResizeChangeViewGraphFeature, &type metadata for InteractiveResizeChangeViewGraphFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature);
  }

  return result;
}

void partial apply for specialized closure #1 in _UIHostingView.init(rootView:)(uint64_t a1)
{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

void partial apply for specialized closure #2 in _UIHostingView.init(rootView:)(int a1)
{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

unint64_t lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature()
{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesFeature, &type metadata for ViewGraphBridgePropertiesFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<CVarArg>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>)
  {
    type metadata accessor for CVarArg();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph(uint64_t a1)
{
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<TableRowView, CollectionViewCellModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar()
{
  result = lazy protocol witness table cache variable for type InputAccessoryBar and conformance InputAccessoryBar;
  if (!lazy protocol witness table cache variable for type InputAccessoryBar and conformance InputAccessoryBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InputAccessoryBar, &type metadata for InputAccessoryBar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InputAccessoryBar and conformance InputAccessoryBar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.HostViewGraph, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<InputAccessoryBar>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.HostViewGraph, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.EnableVFDFeature, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView()
{
  result = lazy protocol witness table cache variable for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView;
  if (!lazy protocol witness table cache variable for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<BridgedPresentation.RootView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, DocumentBaseModifier>)
  {
    type metadata accessor for DocumentBaseModifier(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<AnyView, DocumentBaseModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type DocumentBaseModifier and conformance DocumentBaseModifier, type metadata accessor for DocumentBaseModifier, protocol conformance descriptor for DocumentBaseModifier);
    v6[0] = MEMORY[0x1E6981900];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView()
{
  result = lazy protocol witness table cache variable for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView;
  if (!lazy protocol witness table cache variable for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MainContentView and conformance MainContentView()
{
  result = lazy protocol witness table cache variable for type MainContentView and conformance MainContentView;
  if (!lazy protocol witness table cache variable for type MainContentView and conformance MainContentView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MainContentView, &type metadata for MainContentView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MainContentView and conformance MainContentView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.HostViewGraph, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<MainContentView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.HostViewGraph, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.EnableVFDFeature, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance NSObject)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView()
{
  result = lazy protocol witness table cache variable for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView;
  if (!lazy protocol witness table cache variable for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.HostViewGraph, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<TabItem.RootView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.HostViewGraph, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, MEMORY[0x1E6981910], &type metadata for DocumentSceneRootBoxModifier, MEMORY[0x1E697E830]);
    type metadata accessor for DocumentBaseModifier(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, &type metadata for DocumentSceneRootBoxModifier, lazy protocol witness table accessor for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier);
    v5[1] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type DocumentBaseModifier and conformance DocumentBaseModifier, type metadata accessor for DocumentBaseModifier, protocol conformance descriptor for DocumentBaseModifier);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier()
{
  result = lazy protocol witness table cache variable for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier;
  if (!lazy protocol witness table cache variable for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DocumentSceneRootBoxModifier, &type metadata for DocumentSceneRootBoxModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.HostViewGraph, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<BoundInputsView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.HostViewGraph, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.EnableVFDFeature, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance NSObject)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.HostViewGraph, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<_ViewList_View>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.HostViewGraph, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.EnableVFDFeature, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance NSObject)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with take of Decodable & Encodable & Hashable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol()
{
  result = lazy protocol witness table cache variable for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol;
  if (!lazy protocol witness table cache variable for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FB20], MEMORY[0x1E697FB28], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.HostViewGraph, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<EmptyView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.HostViewGraph, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.EnableVFDFeature, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance NSObject)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E6981D20];
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
    v8 = v7;
    v9 = lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>)
  {
    v2 = MEMORY[0x1E6981D28];
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v2);
    v7 = type metadata accessor for _UIHostingView(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);
    }
  }
}

void type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph)
  {
    v2 = MEMORY[0x1E6981D28];
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v2);
    v7 = type metadata accessor for _UIHostingView.HostViewGraph(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph);
    }
  }
}

uint64_t outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature)
  {
    v2 = MEMORY[0x1E6981D28];
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v2);
    v7 = type metadata accessor for _UIHostingView.EnableVFDFeature(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature);
    }
  }
}

void type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(255);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, MEMORY[0x1E697DB30]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView()
{
  result = lazy protocol witness table cache variable for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView;
  if (!lazy protocol witness table cache variable for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, &type metadata for ListTableCellModifier, lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier);
    v6 = type metadata accessor for _UIHostingView.HostViewGraph(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph);
    }
  }
}

uint64_t outlined destroy of ModifiedContent<_ViewList_View, ListTableCellModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, &type metadata for ListTableCellModifier, lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier);
    v6 = type metadata accessor for _UIHostingView.EnableVFDFeature(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for TableViewListHeaderFooterContent;
    v4[1] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for _UIHostingView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for _UIHostingView.HostViewGraph(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for _UIHostingView.EnableVFDFeature(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn()
{
  result = lazy protocol witness table cache variable for type PreparedCompactColumn and conformance PreparedCompactColumn;
  if (!lazy protocol witness table cache variable for type PreparedCompactColumn and conformance PreparedCompactColumn)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreparedCompactColumn, &type metadata for PreparedCompactColumn, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreparedCompactColumn and conformance PreparedCompactColumn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.HostViewGraph, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<PreparedCompactColumn>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.HostViewGraph, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.EnableVFDFeature, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance NSObject);
  }

  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(*a1 + 88);
  v5 = v4();
  v6 = *(*v3 + 96);
  v7 = (v6)();
  v8 = v4();
  v9 = (v6)();
  if (v5 < v8 || v9 < v5)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = (v4)(v9);
  v12 = (v6)();
  if (v7 < v11 || v12 < v7)
  {
    goto LABEL_25;
  }

  v14 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = *v2;
  v15 = *(*v2 + 2);
  v16 = v15 + v14;
  if (__OFADD__(v15, v14))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = *(v5 + 3) >> 1, v18 < v16))
  {
    if (v15 <= v16)
    {
      v19 = v15 + v14;
    }

    else
    {
      v19 = v15;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v19, 1, v5);
    v18 = *(v5 + 3) >> 1;
  }

  v20 = *(v5 + 2);
  v21 = v18 - v20;
  v22 = specialized Sequence._copyContents(initializing:)(&v47, &v5[48 * v20 + 32], v18 - v20);
  if (v22 < v14)
  {
    goto LABEL_28;
  }

  if (v22 >= 1)
  {
    v23 = *(v5 + 2);
    v24 = __OFADD__(v23, v22);
    v25 = v23 + v22;
    if (v24)
    {
      __break(1u);
LABEL_33:
      (*(*v3 + 104))(&v43, v14);
      v29 = (*(*v3 + 120))(v14);
      goto LABEL_34;
    }

    *(v5 + 2) = v25;
  }

  if (v22 != v21)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_29:
  v26 = type metadata accessor for AnyTableRowIDs();
  _sSSSgMaTm_0(0, &lazy cache variable for type metadata for [TableRowID], &type metadata for TableRowID, MEMORY[0x1E69E62F8]);
  if (v26 == v27)
  {
    goto LABEL_22;
  }

  v6 = *(v5 + 2);
  v3 = v47;
  v38 = *(*v47 + 96);
  v28 = v38();
  v14 = v48;
  if (v48 != v28)
  {
    goto LABEL_33;
  }

  v29 = v28;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v46 = -1;
LABEL_34:
  outlined init with copy of TableRowID?(&v43, &v41, &lazy cache variable for type metadata for TableRowID?, &type metadata for TableRowID, MEMORY[0x1E69E6720], _sSSSgMaTm_0);
  while (v42[24] != 255)
  {
    outlined destroy of TableRowID?(&v41, &lazy cache variable for type metadata for TableRowID?, &type metadata for TableRowID, MEMORY[0x1E69E6720], _sSSSgMaTm_0);
    v31 = *(v5 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v6 + 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v6 + 1, 1, v5);
      v32 = *(v5 + 3) >> 1;
    }

    outlined init with copy of TableRowID?(&v43, &v39, &lazy cache variable for type metadata for TableRowID?, &type metadata for TableRowID, MEMORY[0x1E69E6720], _sSSSgMaTm_0);
    if (v40[24] == 255)
    {
LABEL_36:
      outlined destroy of TableRowID?(&v39, &lazy cache variable for type metadata for TableRowID?, &type metadata for TableRowID, MEMORY[0x1E69E6720], _sSSSgMaTm_0);
      v30 = v6;
    }

    else
    {
      if (v6 <= v32)
      {
        v30 = v32;
      }

      else
      {
        v30 = v6;
      }

      v33 = &v5[48 * v6 + 32];
      while (1)
      {
        v41 = v39;
        *v42 = *v40;
        *&v42[9] = *&v40[9];
        if (v30 == v6)
        {
          break;
        }

        v34 = outlined destroy of TableRowID?(&v43, &lazy cache variable for type metadata for TableRowID?, &type metadata for TableRowID, MEMORY[0x1E69E6720], _sSSSgMaTm_0);
        v35 = *&v42[9];
        v36 = *v42;
        *v33 = v41;
        *(v33 + 1) = v36;
        *(v33 + 25) = v35;
        if (v29 == (v38)(v34))
        {
          v45 = 0;
          v43 = 0u;
          v44 = 0u;
          v46 = -1;
        }

        else
        {
          (*(*v3 + 104))(&v43, v29);
          v29 = (*(*v3 + 120))(v29);
        }

        outlined init with copy of TableRowID?(&v43, &v39, &lazy cache variable for type metadata for TableRowID?, &type metadata for TableRowID, MEMORY[0x1E69E6720], _sSSSgMaTm_0);
        v33 += 48;
        ++v6;
        if (v40[24] == 255)
        {
          goto LABEL_36;
        }
      }

      outlined destroy of TableRowID(&v41);
      v6 = v30;
    }

    *(v5 + 2) = v30;
    outlined init with copy of TableRowID?(&v43, &v41, &lazy cache variable for type metadata for TableRowID?, &type metadata for TableRowID, MEMORY[0x1E69E6720], _sSSSgMaTm_0);
  }

  v37 = MEMORY[0x1E69E6720];
  outlined destroy of TableRowID?(&v43, &lazy cache variable for type metadata for TableRowID?, &type metadata for TableRowID, MEMORY[0x1E69E6720], _sSSSgMaTm_0);

  outlined destroy of TableRowID?(&v41, &lazy cache variable for type metadata for TableRowID?, &type metadata for TableRowID, v37, _sSSSgMaTm_0);
LABEL_23:
  *v2 = v5;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ()();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for NSAttributedStringKey(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, double a2)
{
  v69 = type metadata accessor for IntelligenceElement();
  v5 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v54 - v11;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v16 = *(a1 + 16);
  v17 = *v2;
  v18 = *(*v2 + 16);
  v19 = v18 + v16;
  if (__OFADD__(v18, v16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v22 = v17[3] >> 1, v22 < v19))
  {
    if (v18 <= v19)
    {
      v23 = v18 + v16;
    }

    else
    {
      v23 = v18;
    }

    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v23, 1, v17);
    v22 = v17[3] >> 1;
  }

  v24 = v17[2];
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = *(v5 + 72);
  v25 = (v22 - v24);
  v26 = specialized Sequence._copyContents(initializing:)(&v70, v17 + v19 + v18 * v24, v22 - v24, a1, v21);
  if (v26 < v16)
  {
    goto LABEL_16;
  }

  if (v26)
  {
    v27 = v17[2];
    v28 = __OFADD__(v27, v26);
    v29 = v26 + v27;
    if (v28)
    {
      __break(1u);
LABEL_26:
      v60 = (v5 + 32);
      v56 = (v5 + 16);
      v57 = v5 + 56;
      v55 = (v5 + 8);
      v38 = v69;
      v34 = v66;
      do
      {
        outlined destroy of TableRowID?(v34, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
        v42 = v17[3];
        v43 = v42 >> 1;
        if ((v42 >> 1) < v25 + 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v25 + 1, 1, v17);
          v43 = v17[3] >> 1;
        }

        v44 = v38;
        v45 = v68;
        outlined init with copy of TableRowID?(v15, v68, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
        if (v62(v45, 1, v44) != 1)
        {
          v5 = *v60;
          if (v25 <= v43)
          {
            v48 = v43;
          }

          else
          {
            v48 = v25;
          }

          v61 = v48;
          v65 = v17 + v19 + v18 * v25;
          v47 = v68;
          v46 = v69;
          v59 = v5;
          while (1)
          {
            v49 = v46;
            v50 = v67;
            (v5)(v67, v47, v49);
            v64 = v25;
            if (v61 == v25)
            {
              v39 = v50;
              v40 = v69;
              (*v55)(v39, v69);
              v41 = v61;
              v25 = v61;
              v38 = v40;
              goto LABEL_28;
            }

            v25 = &lazy cache variable for type metadata for IntelligenceElement?;
            outlined destroy of TableRowID?(v15, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
            (v5)(v65, v50, v69);
            if (v63)
            {
              v51 = v63 - 1;
              if (v63 - 1 >= *(v70 + 16))
              {
                __break(1u);
LABEL_46:
                v31 = v69;
                v58 = *(v3 + 56);
                v58(v15, 1, 1, v69, v13);
                v63 = 0;
LABEL_22:
                v32 = v66;
                outlined init with copy of TableRowID?(v15, v66, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
                v33 = *(v3 + 48);
                v3 += 48;
                v62 = v33;
                if (v33(v32, 1, v31) == 1)
                {
                  v34 = v66;
                  goto LABEL_24;
                }

                goto LABEL_26;
              }

              --v63;
              v46 = v69;
              (*v56)(v15, v70 + v19 + v51 * v18, v69);
              v52 = 0;
            }

            else
            {
              v63 = 0;
              v52 = 1;
              v46 = v69;
            }

            (v58)(v15, v52, 1, v46);
            v47 = v68;
            outlined init with copy of TableRowID?(v15, v68, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
            v53 = v62(v47, 1, v46);
            v65 += v18;
            v25 = (v64 + 1);
            v5 = v59;
            if (v53 == 1)
            {
              goto LABEL_33;
            }
          }
        }

        v47 = v68;
        v46 = v69;
LABEL_33:
        outlined destroy of TableRowID?(v47, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
        v41 = v25;
        v38 = v46;
LABEL_28:
        v17[2] = v41;
        v34 = v66;
        outlined init with copy of TableRowID?(v15, v66, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
      }

      while (v62(v34, 1, v38) != 1);
LABEL_24:
      v35 = MEMORY[0x1E69DBC20];
      v36 = v34;
      v37 = MEMORY[0x1E69E6720];
      outlined destroy of TableRowID?(v15, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);

      outlined destroy of TableRowID?(v36, &lazy cache variable for type metadata for IntelligenceElement?, v35, v37, _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
      goto LABEL_14;
    }

    v17[2] = v29;
  }

  if (v26 != v25)
  {

LABEL_14:
    *v2 = v17;
    return;
  }

LABEL_17:
  v25 = v17[2];
  if (!v71)
  {
    goto LABEL_46;
  }

  v30 = v71 - 1;
  if (__OFSUB__(v71, 1))
  {
    __break(1u);
  }

  else if ((v30 & 0x8000000000000000) == 0)
  {
    if (v30 < *(v70 + 16))
    {
      v63 = v71 - 1;
      v31 = v69;
      (*(v3 + 16))(v15, v70 + v19 + v30 * v18, v69, v13);
      v58 = *(v3 + 56);
      (v58)(v15, 0, 1, v31);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), unint64_t *a3, uint64_t a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for CVarArg(0, a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t static PreviewModifier<>.makeSharedContext()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static PreviewModifier<>.makeSharedContext(), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static PreviewTrait<A>.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ContiguousArrayStorage<PreviewModifier>(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63400;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  lazy protocol witness table accessor for type PreviewModifierTrait and conformance PreviewModifierTrait();
  type metadata accessor for Preview.ViewTraits();
  return PreviewTrait.init(_:)();
}

void type metadata accessor for _ContiguousArrayStorage<PreviewModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<PreviewModifier>)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for PreviewModifier, &protocol descriptor for PreviewModifier);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreviewModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PreviewModifierTrait and conformance PreviewModifierTrait()
{
  result = lazy protocol witness table cache variable for type PreviewModifierTrait and conformance PreviewModifierTrait;
  if (!lazy protocol witness table cache variable for type PreviewModifierTrait and conformance PreviewModifierTrait)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewModifierTrait, &type metadata for PreviewModifierTrait, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewModifierTrait and conformance PreviewModifierTrait);
  }

  return result;
}

uint64_t PreviewModifierViewModifier.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for NestedDynamicProperties(0, v6, a2, a3);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v4, v8);
  return (*(*(v6 - 8) + 32))(a4, v10, v6);
}

uint64_t PreviewModifierViewModifier.init(modifier:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  NestedDynamicProperties.init(wrappedValue:)(a1, a3, a5);
  v10 = *(type metadata accessor for PreviewModifierViewModifier(0, a3, a4, v9) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 32);

  return v12(a5 + v10, a2, AssociatedTypeWitness);
}

uint64_t PreviewModifierViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = *(a2 + 16);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v30 - v12;
  swift_getWitnessTable(protocol conformance descriptor for PreviewModifierViewModifier<A>, a2, v11);
  v13 = type metadata accessor for _ViewModifier_Content();
  v33 = v13;
  v14 = lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent();
  v34 = v14;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v13);
  v42[0] = &type metadata for PreviewModifierContent;
  v42[1] = v13;
  v42[2] = v14;
  v42[3] = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, v42);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v24 = PreviewModifierViewModifier.modifier.getter(a2, v22, v23, v7);
  v25 = v3 + *(a2 + 36);
  v26 = v32;
  (*(v9 + 40))(v24, v25, v5, v9);
  (*(v35 + 8))(v7, v5);
  v39 = v5;
  v40 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  View.viewAlias<A, B>(_:_:)(&type metadata for PreviewModifierContent, partial apply for closure #1 in PreviewModifierViewModifier.body(content:), v38, AssociatedTypeWitness, &type metadata for PreviewModifierContent, v33, AssociatedConformanceWitness);
  (*(v36 + 8))(v26, AssociatedTypeWitness);
  v41[0] = AssociatedConformanceWitness;
  v41[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v15, v41);
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v16 + 8);
  v28(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v21, v15);
}

unint64_t lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent()
{
  result = lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent;
  if (!lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewModifierContent, &type metadata for PreviewModifierContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent;
  if (!lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewModifierContent, &type metadata for PreviewModifierContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent);
  }

  return result;
}

uint64_t closure #1 in PreviewModifierViewModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PreviewModifierViewModifier(255, a1, a2, a4);
  swift_getWitnessTable(protocol conformance descriptor for PreviewModifierViewModifier<A>, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  static ViewBuilder.buildExpression<A>(_:)();

  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t PreviewModifierTrait.value.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void static PreviewModifierTrait.combine(_:_:)()
{

  specialized Array.append<A>(contentsOf:)(v0, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for PreviewModifier, &protocol descriptor for PreviewModifier);
}

unint64_t instantiation function for generic protocol witness table for PreviewModifierContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static PreviewTraitProtocol.combine(_:_:) in conformance PreviewModifierTrait@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  result = specialized Array.append<A>(contentsOf:)(v3, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for PreviewModifier, &protocol descriptor for PreviewModifier);
  *a2 = v5;
  return result;
}

uint64_t dispatch thunk of static PreviewModifier.makeSharedContext()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2, a3);
}

uint64_t type metadata completion function for PreviewModifierViewModifier(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t *initializeBufferWithCopyOfBuffer for PreviewModifierViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = (*(v6 + 80) | *(v9 + 80));
  if (v12 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || (v11 & ~v10) + *(*(AssociatedTypeWitness - 8) + 64) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = AssociatedTypeWitness;
    v17 = ~v10;
    (*(v6 + 16))(a1, a2, v5);
    (*(v9 + 16))((a1 + v11) & v17, (a2 + v11) & v17, v16);
  }

  return a1;
}

uint64_t destroy for PreviewModifierViewModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 8);
  v8 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for PreviewModifierViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 16))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for PreviewModifierViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for PreviewModifierViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 32))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for PreviewModifierViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 40))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for PreviewModifierViewModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}