void *initializeWithTake for NavigableListModifier.BoundListSelectionDetector(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v15 = *v16;
  *(v15 + 4) = *(v16 + 4);
  v17 = ((v13 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = *v18;
  *(v17 + 5) = *(v18 + 5);
  *v17 = v19;
  v20 = ((v13 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v14 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = *(a3 + 16);
  v23 = *(v22 - 8);
  v24 = *(v23 + 80) & 0xF8;
  v25 = ~v24 & 0xFFFFFFFFFFFFFFF8;
  v24 += 11;
  v26 = v20 + v24;
  v27 = (v26 & v25);
  v28 = ((v21 + v24) & v25);
  v29 = *(v23 + 64);
  if (*(v23 + 84))
  {
    v30 = *(v23 + 64);
  }

  else
  {
    v30 = v29 + 1;
  }

  if (v30 > v29)
  {
    v29 = v30;
  }

  if (v29 <= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v29;
  }

  v32 = *(v28 + v31);
  if (v32 > 2)
  {
    v33 = v31 + 1;
    memcpy((v26 & v25), v28, v31 + 1);
  }

  else
  {
    if (v32 == 2)
    {
      (*(v23 + 32))(v26 & v25, v28, v22);
    }

    else if (v32 == 1)
    {
      if ((*(v23 + 48))(v28, 1, v22))
      {
        memcpy(v27, v28, v30);
      }

      else
      {
        (*(v23 + 32))(v27, v28, v22);
        (*(v23 + 56))(v27, 0, 1, v22);
      }
    }

    else
    {
      *v27 = *v28;
    }

    *(v27 + v31) = v32;
    v33 = v31 + 1;
  }

  *(v27 + v33) = *(v28 + v33);
  return a1;
}

void *assignWithTake for NavigableListModifier.BoundListSelectionDetector(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v15 = *v16;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v13 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v14 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  *v17 = *v18;
  *(v17 + 4) = *(v18 + 4);
  *(v17 + 8) = *(v18 + 8);
  *(v17 + 12) = *(v18 + 12);
  v19 = ((v13 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v14 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = *(a3 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 80) & 0xF8;
  v24 = ~v23 & 0xFFFFFFFFFFFFFFF8;
  v23 += 11;
  v25 = v19 + v23;
  v26 = (v25 & v24);
  v27 = ((v20 + v23) & v24);
  v28 = *(v22 + 64);
  if (*(v22 + 84))
  {
    v29 = *(v22 + 64);
  }

  else
  {
    v29 = v28 + 1;
  }

  if (v29 > v28)
  {
    v28 = v29;
  }

  if (v28 <= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v28;
  }

  v31 = *(v26 + v30);
  v32 = v27[v30];
  if (v31 > 2)
  {
    if (v32 <= 2)
    {
      if (v32 == 2)
      {
LABEL_46:
        (*(v22 + 32))(v26, v27, v21);
        v33 = 2;
LABEL_47:
        *(v26 + v30) = v33;
        goto LABEL_48;
      }

      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (v32 > 2)
  {
    if (v31 == 2)
    {
      goto LABEL_25;
    }

    if (v31 != 1)
    {

      goto LABEL_28;
    }

    if (!(*(v22 + 48))(v25 & v24, 1, v21))
    {
LABEL_25:
      (*(v22 + 8))(v26, v21);
    }

LABEL_28:
    memcpy(v26, v27, v30 + 1);
    goto LABEL_48;
  }

  if (v26 == v27)
  {
    goto LABEL_48;
  }

  if (v31 == 2)
  {
LABEL_15:
    (*(v22 + 8))(v26, v21);
    goto LABEL_31;
  }

  if (v31 == 1)
  {
    if ((*(v22 + 48))(v25 & v24, 1, v21))
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

LABEL_31:
  v32 = v27[v30];
  v34 = v32 - 3;
  if (v32 < 3)
  {
    goto LABEL_45;
  }

  if (v30 <= 3)
  {
    v35 = v30;
  }

  else
  {
    v35 = 4;
  }

  if (v35 <= 1)
  {
    if (!v35)
    {
      goto LABEL_45;
    }

    v36 = *v27;
  }

  else if (v35 == 2)
  {
    v36 = *v27;
  }

  else if (v35 == 3)
  {
    v36 = *v27 | (v27[2] << 16);
  }

  else
  {
    v36 = *v27;
  }

  v37 = (v36 | (v34 << (8 * v30))) + 3;
  v32 = v36 + 3;
  if (v30 < 4)
  {
    v32 = v37;
  }

LABEL_45:
  if (v32 == 2)
  {
    goto LABEL_46;
  }

LABEL_18:
  if (v32 == 1)
  {
    if ((*(v22 + 48))(v27, 1, v21))
    {
      memcpy(v26, v27, v29);
    }

    else
    {
      (*(v22 + 32))(v26, v27, v21);
      (*(v22 + 56))(v26, 0, 1, v21);
    }

    v33 = 1;
    goto LABEL_47;
  }

  *v26 = *v27;
  *(v26 + v30) = 0;
LABEL_48:
  *(v26 + v30 + 1) = v27[v30 + 1];
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigableListModifier.BoundListSelectionDetector(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4)
  {
    v5 = *(v3 + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    v6 = v5 + (((*(v3 + 80) & 0xF8) + 67) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 2;
    v7 = 8 * v6;
    if (v6 > 3)
    {
      goto LABEL_11;
    }

    v9 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v9 <= 0xFF)
      {
        if (v9 < 2)
        {
          goto LABEL_29;
        }

LABEL_11:
        v8 = *(a1 + v6);
        if (!*(a1 + v6))
        {
          goto LABEL_29;
        }

LABEL_18:
        v10 = (v8 - 1) << v7;
        if (v6 > 3)
        {
          v10 = 0;
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

        return (v6 | v10) + 255;
      }

      v8 = *(a1 + v6);
      if (*(a1 + v6))
      {
        goto LABEL_18;
      }
    }
  }

LABEL_29:
  v11 = *(((((((((((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  if (v11 < 2)
  {
    return 0;
  }

  return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
}

void storeEnumTagSinglePayload for NavigableListModifier.BoundListSelectionDetector(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v7 = *(v5 + 64);
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + (((*(v5 + 80) & 0xF8) + 67) & ~(*(v5 + 80) & 0xF8) & 0x1F8) + 2;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_44:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      *(((((((((((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4) = a2 + 1;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_29;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t CustomizableToolbarContent.platterHidden(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  if (a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4;
  return ToolbarContent.modifier<A>(_:)(&v6, a2, &type metadata for PlatterVisibilityModifier, x8_0);
}

uint64_t ToolbarContent.platterHidden(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  if (a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4;
  return ToolbarContent.modifier<A>(_:)(&v6, a2, &type metadata for PlatterVisibilityModifier, x8_0);
}

uint64_t get_witness_table_7SwiftUI14ToolbarContentRzlAA0c8ModifiedD0VyxAA25PlatterVisibilityModifier019_D05418E2EB9FF192D4M12C05FC30C953ALLVGAaBHPxAaBHD1__AgA0cdH0HPyHCHCTm(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v6 = type metadata accessor for ToolbarModifiedContent(255, *a1, &type metadata for PlatterVisibilityModifier, a4);
  v8[0] = v5;
  v8[1] = &protocol witness table for PlatterVisibilityModifier;
  return swift_getWitnessTable(a2, v6, v8);
}

uint64_t static PlatterVisibilityModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
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
  lazy protocol witness table accessor for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment();
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

double PlatterVisibilityModifier.ChildEnvironment.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t EnvironmentValues.toolbarItemPlatterVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.toolbarItemPlatterVisibility.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

unint64_t lazy protocol witness table accessor for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatterVisibilityModifier.ChildEnvironment, &unk_1EFFB2DB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatterVisibilityModifier.ChildEnvironment and conformance PlatterVisibilityModifier.ChildEnvironment);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FocusViewGraph(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FocusViewGraph(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t FocusViewGraph.IsFocusSystemEnabledMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = v9;
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  *(v2 + 8) = v6;
  return 1;
}

unint64_t type metadata accessor for FocusHost()
{
  result = lazy cache variable for type metadata for FocusHost;
  if (!lazy cache variable for type metadata for FocusHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FocusHost);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.IsFocusSystemEnabledKey@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static _GraphInputs.IsFocusSystemEnabledKey.defaultValue;
  return result;
}

uint64_t type metadata completion function for PickerCurrentValueLabel(uint64_t a1)
{
  result = type metadata accessor for Binding();
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

unint64_t initializeBufferWithCopyOfBuffer for PickerCurrentValueLabel(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v4 = *(v6 + 8);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = ((v8 + 16) & ~v8) + *(v7 + 64) + v10;
  if ((v8 | 7 | v10) == 7 && ((*(v9 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((((-2 - (v8 | 7)) | v8 | 7) - v11) | v10) - *(*(v5 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v23 = v4;
    v24 = ~v8;
    *a1 = *a2;
    v15 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *v15;
    v16 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v18 = v16 + v8 + 8;
    v19 = v17 + v8 + 8;
    v20 = *(v7 + 16);
    v22 = v5;

    v20(v18 & v24, v19 & v24, v23);
    (*(v9 + 16))((v11 + (a1 & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, (v15 + v11) & ~v10, v22);
  }

  else
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = v14 + (((v8 | 7 | v10) + 16) & ~(v8 | 7 | v10));
  }

  return a1;
}

uint64_t destroy for PickerCurrentValueLabel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (a1 + (v5 | 7) + 1) & ~(v5 | 7);

  (*(v4 + 8))((v5 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v5, v3);
  v7 = *(*(a2 + 16) - 8);
  v8 = *(v7 + 8);
  v9 = (v6 + ((v5 + 16) & ~v5) + *(v4 + 64) + *(v7 + 80)) & ~*(v7 + 80);

  return v8(v9);
}

_BYTE *initializeWithCopy for PickerCurrentValueLabel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v19 = *(*(v5 - 8) + 16);
  v6 = *(v5 - 8) + 16;
  v7 = *(*(v5 - 8) + 80);
  v8 = (v7 | 7) + 1;
  v9 = (&a1[v8] & ~(v7 | 7));
  v10 = (&a2[v8] & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v11 + v7 + 8;
  v14 = v12 + v7 + 8;

  v19(v13 & ~v7, v14 & ~v7, v5);
  v15 = *(*(a3 + 16) - 8);
  v16 = *(v15 + 80);
  v17 = *(v6 + 48) + v16 + ((v7 + 16) & ~v7);
  (*(v15 + 16))((v9 + v17) & ~v16, (v10 + v17) & ~v16);
  return a1;
}

_BYTE *assignWithCopy for PickerCurrentValueLabel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 | 7) + 1;
  v9 = (&a1[v8] & ~(v7 | 7));
  v10 = (&a2[v8] & ~(v7 | 7));
  *v9 = *v10;

  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  (*(v6 + 24))((v11 + v7 + 8) & ~v7, (v12 + v7 + 8) & ~v7, v5);
  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 80);
  v15 = *(v6 + 64) + ((v7 + 16) & ~v7) + v14;
  (*(v13 + 24))((v9 + v15) & ~v14, (v10 + v15) & ~v14);
  return a1;
}

_BYTE *initializeWithTake for PickerCurrentValueLabel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v8 = *(v5 + 80);
  v9 = (v8 | 7) + 1;
  v10 = (&a1[v9] & ~(v8 | 7));
  v11 = (&a2[v9] & ~(v8 | 7));
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v6((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8);
  v14 = *(*(a3 + 16) - 8);
  v15 = *(v14 + 80);
  v16 = *(v7 + 32) + v15 + ((v8 + 16) & ~v8);
  (*(v14 + 32))((v10 + v16) & ~v15, (v11 + v16) & ~v15);
  return a1;
}

_BYTE *assignWithTake for PickerCurrentValueLabel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 | 7) + 1;
  v9 = (&a1[v8] & ~(v7 | 7));
  v10 = (&a2[v8] & ~(v7 | 7));
  *v9 = *v10;

  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  (*(v6 + 40))((v11 + v7 + 8) & ~v7, (v12 + v7 + 8) & ~v7, v5);
  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 80);
  v15 = *(v6 + 64) + ((v7 + 16) & ~v7) + v14;
  (*(v13 + 40))((v9 + v15) & ~v14, (v10 + v15) & ~v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for PickerCurrentValueLabel(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v4 + 80);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 | 7;
  v14 = ((v10 + 16) & ~v10) + *(*(*(a3 + 24) - 8) + 64) + v11;
  v15 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = ((v14 + ((v13 + 1) & ~v13)) & ~v11) + *(*(v7 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
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
      v24 = (a1 + v13 + 1) & ~v13;
      if (v6 < v9)
      {
        return (*(v8 + 48))((v14 + v24) & ~v11, v9, v7);
      }

      v25 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v25 + v10 + 8) & ~v10);
      }

      v26 = *v25;
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
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

  return v12 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for PickerCurrentValueLabel(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a4 + 24) - 8) + 64);
  v16 = ((v15 + v13 + (((v12 | 7) + 1) & ~(v12 | 7))) & ~v13) + *(*(v9 - 8) + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 < 4)
    {
      v21 = (v20 >> (8 * v16)) + 1;
      if (v16)
      {
        v24 = v20 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_61:
              if (v19 == 2)
              {
                *&a1[v16] = v21;
              }

              else
              {
                *&a1[v16] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v19)
    {
      a1[v16] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v19)
  {
    goto LABEL_33;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v25 = (&a1[(v12 | 7) + 1] & ~(v12 | 7));
  if (v8 >= v11)
  {
    if (v8 >= a2)
    {
      v30 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v32 = *(v6 + 56);

        v32((v30 + v12 + 8) & ~v12);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v31 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v31 = a2 - 1;
        }

        *v30 = v31;
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
        v28 = v27 & (~v8 + a2);
        if (v15 <= 3)
        {
          v29 = v15;
        }

        else
        {
          v29 = 4;
        }

        bzero(v25, v15);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v25 = v28;
            v25[2] = BYTE2(v28);
          }

          else
          {
            *v25 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v25 = v28;
        }

        else
        {
          *v25 = v28;
        }
      }
    }
  }

  else
  {
    v26 = *(v10 + 56);

    v26(&v25[v15 + v13] & ~v13);
  }
}

uint64_t PickerCurrentValueLabel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = *(a1 + 24);
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v45 = *(v5 + 32);
  v50[0] = v6;
  v50[1] = v3;
  v51 = v45;
  v7 = type metadata accessor for PickerCurrentValueLabel.Root(0, v50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v41 = v10;
  v11 = type metadata accessor for _VariadicView.Tree();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v37 - v15;
  v17 = type metadata accessor for PickerStyleConfiguration.CurrentValueLabel(255, v3, *(&v45 + 1), v16);
  v18 = type metadata accessor for _ConditionalContent();
  v42 = *(v18 - 8);
  v43 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - v20;
  v22 = *v2;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.CurrentValueLabel, v17, v19);
  OptionalViewAlias.wrappedValue.getter(v22, v17, WitnessTable, v50);
  if (v50[0])
  {
    v24 = type metadata accessor for Binding();
    v25 = v37;
    MEMORY[0x18D00ACC0](v24);
    v26 = (*(v38 + 32))(v9, v25, v3);
    MEMORY[0x1EEE9AC00](v26);
    *&v27 = v6;
    *(&v27 + 1) = v3;
    v28 = v45;
    *(&v37 - 3) = v27;
    *(&v37 - 2) = v28;
    *(&v37 - 2) = v2;
    v29 = v41;
    _VariadicView.Tree.init(_:content:)();
    v49[0] = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>.Root, v29);
    v49[1] = v45;
    v30 = swift_getWitnessTable(MEMORY[0x1E697E308], v11, v49);
    v31 = v39;
    static ViewBuilder.buildExpression<A>(_:)();
    v32 = *(v40 + 8);
    v32(v13, v11);
    static ViewBuilder.buildExpression<A>(_:)();
    static ViewBuilder.buildEither<A, B>(second:)(v13, v17, v11, &protocol witness table for PickerStyleConfiguration<A>.CurrentValueLabel, v30);
    v32(v13, v11);
    v32(v31, v11);
  }

  else
  {
    static ViewBuilder.buildExpression<A>(_:)();
    static ViewBuilder.buildExpression<A>(_:)();
    v29 = v41;
    v46[0] = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>.Root, v41);
    v46[1] = v45;
    v33 = swift_getWitnessTable(MEMORY[0x1E697E308], v11, v46);
    static ViewBuilder.buildEither<A, B>(first:)(v33, v17, v11, &protocol witness table for PickerStyleConfiguration<A>.CurrentValueLabel, v33);
  }

  v48[0] = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>.Root, v29);
  v48[1] = v45;
  v34 = swift_getWitnessTable(MEMORY[0x1E697E308], v11, v48);
  v47[0] = &protocol witness table for PickerStyleConfiguration<A>.CurrentValueLabel;
  v47[1] = v34;
  v35 = v43;
  swift_getWitnessTable(MEMORY[0x1E697F968], v43, v47);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v42 + 8))(v21, v35);
}

uint64_t closure #1 in PickerCurrentValueLabel.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for PickerCurrentValueLabel(0, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

double PickerCurrentValueLabel.Root.body(children:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  if (_VariadicView_Children.endIndex.getter())
  {
    v8 = a2[2];
    v9 = a2[3];
    v11 = a2[4];
    v10 = a2[5];
    closure #1 in PickerCurrentValueLabel.Root.body(children:)(a1, v8, v9, v11, v10, v19);
    closure #2 in PickerCurrentValueLabel.Root.body(children:)(a1, v4, v8, v9, v11, v10);
    v12 = v19[11];
    a3[10] = v19[10];
    a3[11] = v12;
    a3[12] = v19[12];
    v13 = v19[7];
    a3[6] = v19[6];
    a3[7] = v13;
    v14 = v19[9];
    a3[8] = v19[8];
    a3[9] = v14;
    v15 = v19[3];
    a3[2] = v19[2];
    a3[3] = v15;
    v16 = v19[5];
    a3[4] = v19[4];
    a3[5] = v16;
    v17 = v19[1];
    *a3 = v19[0];
    a3[1] = v17;
  }

  else
  {
    *&v17 = 0;
    a3[11] = 0u;
    a3[12] = 0u;
    a3[9] = 0u;
    a3[10] = 0u;
    a3[7] = 0u;
    a3[8] = 0u;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v17;
}

__n128 closure #1 in PickerCurrentValueLabel.Root.body(children:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *&v14 = a4;
  *(&v14 + 1) = a5;
  v8 = type metadata accessor for PickerCurrentValueLabel.Root(0, &v13);
  PickerCurrentValueLabel.Root.selectedIndex(for:)(a1, v8);
  if (v10)
  {
    *(a6 + 96) = 0;
    result.n128_u64[0] = 0;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    _VariadicView_Children.subscript.getter();
    v11 = v18;
    *(a6 + 64) = v17;
    *(a6 + 80) = v11;
    *(a6 + 96) = v19;
    v12 = v14;
    *a6 = v13;
    *(a6 + 16) = v12;
    result = v16;
    *(a6 + 32) = v15;
    *(a6 + 48) = result;
  }

  return result;
}

uint64_t PickerCurrentValueLabel.Root.selectedIndex(for:)(uint64_t a1, uint64_t a2)
{
  result = _VariadicView_Children.tagIndex<A>(_:)(v2, *(a2 + 24), *(a2 + 40));
  if (v4)
  {
    v5 = result;
    _StringGuts.grow(_:)(108);
    MEMORY[0x18D00C9B0](0xD000000000000017, 0x800000018CD45710);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](0xD000000000000053, 0x800000018CD45730);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    return v5;
  }

  return result;
}

void *closure #2 in PickerCurrentValueLabel.Root.body(children:)(uint64_t a1, void x1_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v7 = type metadata accessor for PickerCurrentValueLabel.Root(0, v9);
  PickerCurrentValueLabel.Root.selectedIndex(for:)(a1, v7);
  return _VariadicView_Children.subscript.getter();
}

uint64_t PickerCurrentValueLabel.init(selection:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v14 = type metadata accessor for PickerStyleConfiguration.CurrentValueLabel(0, a4, a6, a4);
  swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.CurrentValueLabel, v14);
  *a7 = protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key() & 1;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v15 = type metadata accessor for PickerCurrentValueLabel(0, v19);
  v16 = *(v15 + 52);
  v17 = type metadata accessor for Binding();
  (*(*(v17 - 8) + 32))(&a7[v16], a1, v17);
  return (*(*(a3 - 8) + 32))(&a7[*(v15 + 56)], a2, a3);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance PickerCurrentValueLabel<A, B>.Root(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>.Root, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for PickerCurrentValueLabel<A, B>.Root(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>.Root);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>?(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>?)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>?);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    type metadata accessor for _VariadicView_Children.Element?();
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>);
    }
  }
}

void type metadata accessor for _VariadicView_Children.Element?()
{
  if (!lazy cache variable for type metadata for _VariadicView_Children.Element?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView_Children.Element?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    v5[1] = lazy protocol witness table accessor for type _VariadicView_Children.Element? and conformance <A> A?();
    v5[2] = MEMORY[0x1E697FFB0];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, _VariadicView_Children.Element?, _VariadicView_Children.Element> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView_Children.Element? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _VariadicView_Children.Element? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children.Element? and conformance <A> A?)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for _VariadicView_Children.Element?();
    v4[0] = MEMORY[0x1E697FFB0];
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children.Element? and conformance <A> A?);
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance AutomaticMultiDatePickerStyle.Body@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIKitCalendarView(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance AutomaticMultiDatePickerStyle.Body@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, v5, v6, v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of MultiDatePickerValue<AutomaticMultiDatePickerStyle>(Value, v10, v12, v13);
  outlined init with take of MultiDatePickerStyleConfiguration(v10, v4);
  return UIKitCalendarView.init(configuration:)(v4, a1);
}

uint64_t protocol witness for static MultiDatePickerStyle._makeView(value:inputs:) in conformance AutomaticMultiDatePickerStyle(int *a1, uint64_t a2)
{
  type metadata accessor for UIKitCalendarView(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type UIKitCalendarView and conformance UIKitCalendarView();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static MultiDatePickerStyle._makeViewList(value:inputs:) in conformance AutomaticMultiDatePickerStyle(int *a1, uint64_t a2)
{
  type metadata accessor for UIKitCalendarView(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type UIKitCalendarView and conformance UIKitCalendarView();
  return static View.makeDebuggableViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body()
{
  result = lazy protocol witness table cache variable for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body;
  if (!lazy protocol witness table cache variable for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticMultiDatePickerStyle.Body, &unk_1EFFB3040, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticMultiDatePickerStyle.Body and conformance AutomaticMultiDatePickerStyle.Body);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitCalendarView and conformance UIKitCalendarView()
{
  result = lazy protocol witness table cache variable for type UIKitCalendarView and conformance UIKitCalendarView;
  if (!lazy protocol witness table cache variable for type UIKitCalendarView and conformance UIKitCalendarView)
  {
    v3 = type metadata accessor for UIKitCalendarView(255);
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitCalendarView, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitCalendarView and conformance UIKitCalendarView);
  }

  return result;
}

void type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>)
  {
    v4 = type metadata accessor for MultiDatePickerValue(0, &type metadata for AutomaticMultiDatePickerStyle, &protocol witness table for AutomaticMultiDatePickerStyle, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>);
    }
  }
}

uint64_t outlined init with copy of MultiDatePickerValue<AutomaticMultiDatePickerStyle>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, a2, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of MultiDatePickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ForEach.init<A, B>(_:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a7;
  v34 = a8;
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a9;
  v32 = a13;
  v29[1] = a5;
  v30 = a11;
  v35 = a10;
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v29 - v20;
  v22 = *a2;
  (*(v18 + 16))(v29 - v20, a1, v17, v19);
  v40 = a5;
  v41 = a6;
  v23 = v33;
  v24 = v34;
  v42 = v33;
  v43 = v34;
  v44 = a10;
  v25 = v30;
  v45 = v30;
  v46 = a12;
  v26 = v32;
  v47 = v32;
  KeyPath = swift_getKeyPath();
  v48 = v22;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ForEach.init<A, B>(_:id:editActions:content:)(v21, KeyPath, &v48, v38, v39, a6, v23, AssociatedConformanceWitness, v37, v24, v35, v25, v26);
  return (*(v18 + 8))(v36, v17);
}

uint64_t ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v56 = a7;
  v59 = a4;
  v60 = a5;
  v61 = a9;
  v65 = a13;
  v66 = a2;
  v62 = a12;
  v63 = a1;
  v55 = a11;
  v16 = *a2;
  v17 = type metadata accessor for Binding();
  v54 = *(v17 - 8);
  v52 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v23 = *(a10 + 8);
  v49 = a10;
  v75[0] = a6;
  v75[1] = v22;
  v48 = v22;
  v75[2] = v23;
  v75[3] = a8;
  v24 = a8;
  v57 = type metadata accessor for IndexedIdentifierCollection(0, v75);
  v25 = MEMORY[0x1EEE9AC00](v57);
  v27 = &v47 - v26;
  v58 = &v47 - v26;
  v51 = *a3;
  v28 = v17;
  v29 = v17;
  v30 = v63;
  MEMORY[0x18D00ACC0](v28, v25);
  v31 = v66;

  v47 = a6;
  IndexedIdentifierCollection.init(_:id:)(v21, v31, a6, v23, v24, v27);
  v67 = v22;
  v68 = a6;
  v32 = v56;
  v69 = v56;
  v70 = v24;
  v33 = v24;
  v50 = v24;
  v34 = v55;
  v71 = a10;
  v72 = v55;
  v73 = v62;
  v74 = v65;
  KeyPath = swift_getKeyPath();
  v35 = v54;
  (*(v54 + 16))(v64, v30, v29);
  v36 = (*(v35 + 80) + 80) & ~*(v35 + 80);
  v37 = (v52 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v47;
  *(v38 + 2) = v48;
  *(v38 + 3) = v39;
  *(v38 + 4) = v32;
  *(v38 + 5) = v33;
  *(v38 + 6) = v49;
  *(v38 + 7) = v34;
  v40 = v64;
  v41 = v65;
  *(v38 + 8) = v62;
  *(v38 + 9) = v41;
  (*(v35 + 32))(&v38[v36], v40, v29);
  *&v38[v37] = v51;
  v42 = &v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8];
  v43 = v60;
  *v42 = v59;
  v42[1] = v43;
  v45 = type metadata accessor for EditableCollectionContent(0, v32, v39, v44);
  swift_getWitnessTable(protocol conformance descriptor for <> IndexedIdentifierCollection<A, B>, v57, &a11);
  swift_getWitnessTable(protocol conformance descriptor for <> EditableCollectionContent<A, B>, v45, &a12);
  ForEach<>.init(_:id:content:)();

  return (*(v35 + 8))(v63, v29);
}

uint64_t IndexedIdentifierCollection.init(_:id:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a2;
  v36 = a6;
  v32 = *a2;
  v9 = *(a3 - 8);
  v30 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v31 = type metadata accessor for LazySequence();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - v13;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  dispatch thunk of Collection.indices.getter();
  MEMORY[0x18D00CB50](AssociatedTypeWitness, v12);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  v18 = v29;
  (*(v9 + 16))(v29, a1, a3);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = (v30 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a3;
  v22 = *(v32 + *MEMORY[0x1E69E77B0] + 8);
  *(v21 + 3) = v22;
  *(v21 + 4) = a4;
  v23 = v34;
  *(v21 + 5) = v34;
  (*(v9 + 32))(&v21[v19], v18, a3);
  *&v21[v20] = v35;

  v37[0] = a3;
  v37[1] = v22;
  v37[2] = a4;
  v37[3] = v23;
  type metadata accessor for IndexedIdentifierCollection.Element(0, v37);
  v24 = v31;
  swift_getWitnessTable(MEMORY[0x1E69E6A68], v31);
  v25 = v28;
  LazySequenceProtocol.map<A>(_:)();

  (*(v9 + 8))(a1, a3);
  return (*(v33 + 8))(v25, v24);
}

uint64_t closure #1 in ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v84 = a5;
  v85 = a4;
  v82 = a3;
  v101 = a2;
  v94 = a1;
  v87 = a9;
  v98 = a14;
  v99 = a6;
  v97 = a13;
  v78 = a12;
  v95 = a8;
  v96 = a10;
  v93 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v80 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for EditableCollectionContent(0, v16, v18, v17);
  v86 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v66 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v89 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v27 = type metadata accessor for Binding();
  v88 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v72 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v66 - v31;
  v90 = a7;
  v74 = swift_getAssociatedTypeWitness();
  v77 = type metadata accessor for Binding();
  v76 = *(v77 - 8);
  v33 = MEMORY[0x1EEE9AC00](v77);
  v73 = &v66 - v34;
  v35 = *(v28 + 16);
  v91 = v28 + 16;
  v92 = v35;
  v71 = v32;
  (v35)(v32, v101, v27, v33);
  v70 = *(v22 + 16);
  v70(v26, v94, AssociatedTypeWitness);
  v36 = *(v28 + 80);
  v37 = (v36 + 96) & ~v36;
  v38 = *(v22 + 80);
  v67 = v37;
  v39 = (v29 + v37 + v38) & ~v38;
  v69 = v36 | v38;
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v99;
  *(v40 + 5) = a7;
  v41 = v96;
  *(v40 + 6) = v95;
  *(v40 + 7) = v41;
  v42 = v78;
  *(v40 + 8) = v93;
  *(v40 + 9) = v42;
  v43 = v98;
  *(v40 + 10) = v97;
  *(v40 + 11) = v43;
  v44 = *(v28 + 32);
  v68 = v28 + 32;
  v45 = v32;
  v46 = v88;
  v44(&v40[v37], v45, v88);
  v47 = *(v22 + 32);
  v48 = AssociatedTypeWitness;
  v47(&v40[v39], v26, AssociatedTypeWitness);
  v49 = v72;
  v92(v72, v101, v46);
  v50 = v75;
  v70(v75, v94, v48);
  v51 = swift_allocObject();
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  v52 = v90;
  *(v51 + 4) = v99;
  *(v51 + 5) = v52;
  v54 = v95;
  v53 = v96;
  *(v51 + 6) = v95;
  *(v51 + 7) = v53;
  *(v51 + 8) = v93;
  *(v51 + 9) = v42;
  v55 = v98;
  *(v51 + 10) = v97;
  *(v51 + 11) = v55;
  v56 = v49;
  v57 = v88;
  v44(&v51[v67], v56, v88);
  v47(&v51[v39], v50, AssociatedTypeWitness);
  v58 = v73;
  Binding.init(get:set:)();
  v59 = v71;
  v92(v71, v101, v57);
  v102 = v82;
  v60 = v80;
  v85(v58);
  v61 = v79;
  EditableCollectionContent.init(data:editActions:content:)(v59, &v102, v60, v54, v90, v79);
  (*(v76 + 8))(v58, v77);
  v62 = v83;
  swift_getWitnessTable(protocol conformance descriptor for <> EditableCollectionContent<A, B>, v83, &a13);
  v63 = v81;
  static ViewBuilder.buildExpression<A>(_:)();
  v64 = *(v86 + 8);
  v64(v61, v62);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v64)(v63, v62);
}

uint64_t partial apply for closure #1 in ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v13 = *(v2 + 56);
  v14 = *(v2 + 40);
  v8 = *(v2 + 72);
  v9 = *(type metadata accessor for Binding() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(a1, v2 + v10, *(v2 + v11), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v5, v6, v7, a2, v14, *(&v14 + 1), v13, *(&v13 + 1), v8);
}

uint64_t closure #1 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X5>, uint64_t a4@<X8>, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v10);
  v11 = dispatch thunk of Collection.subscript.read();
  v13 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v13, AssociatedTypeWitness);
  v11(v16, 0);
  return (*(v7 + 8))(v9, a3);
}

uint64_t closure #2 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a1;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v24 - v17;
  v19 = swift_getAssociatedTypeWitness();
  v20 = MEMORY[0x1EEE9AC00](v19);
  (*(v22 + 16))(&v24 - v21, a5, v20);
  (*(v16 + 16))(v18, v25, AssociatedTypeWitness);
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  dispatch thunk of MutableCollection.subscript.setter();
  specialized Binding.wrappedValue.setter(v14);
  return (*(v12 + 8))(v14, a7);
}

uint64_t EditableCollectionContent.init(data:editActions:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Binding();
  v13 = *(v12 - 8);
  v41 = *(v13 + 64);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = *a2;
  v18 = *(a4 - 8);
  v19 = *(v18 + 16);
  v42 = a6;
  v40 = a3;
  v19(a6, a3, a4, v14);
  v39 = v17;
  v43 = v17;
  v22 = type metadata accessor for EditActions(0, a5, v20, v21);
  v24 = 0;
  v25 = 0;
  if (EditActions.canDelete.getter(v22, 1))
  {
    (*(v13 + 16))(v16, a1, v12);
    v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    (*(v13 + 32))(v25 + v26, v16, v12);
    v24 = partial apply for closure #1 in EditableCollectionContent.init(data:editActions:content:);
  }

  v38 = v16;
  v27 = v12;
  v28 = type metadata accessor for EditableCollectionContent(0, a4, a5, v23);
  v29 = (v42 + *(v28 + 36));
  *v29 = v24;
  v29[1] = v25;
  v43 = v39;
  v30 = EditActions.canDelete.getter(v22, 2);
  (*(v18 + 8))(v40, a4);
  if (v30)
  {
    v31 = *(v13 + 32);
    v32 = v38;
    v31(v38, a1, v27);
    v33 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = a4;
    *(v34 + 24) = a5;
    result = (v31)(v34 + v33, v32, v27);
    v36 = partial apply for closure #2 in EditableCollectionContent.init(data:editActions:content:);
  }

  else
  {
    result = (*(v13 + 8))(a1, v27);
    v36 = 0;
    v34 = 0;
  }

  v37 = (v42 + *(v28 + 40));
  *v37 = v36;
  v37[1] = v34;
  return result;
}

uint64_t static EditActions.all.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for EditActions(0, a1, a3, a4);
  static Array._allocateUninitialized(_:)();
  swift_getWitnessTable(protocol conformance descriptor for EditActions<A>, v4);
  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance EditActions<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditActions<A>, a1);
  v3 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

uint64_t protocol witness for SetAlgebra.contains(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for EditActions<A>);

  return OptionSet<>.contains(_:)();
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditActions<A>);

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditActions<A>);

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditActions<A>);

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.insert(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for EditActions<A>, a3);

  return OptionSet<>.insert(_:)();
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditActions<A>);

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditActions<A>);

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditActions<A>, a2, a3);
  v7 = lazy protocol witness table accessor for type Int and conformance Int();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EditActions<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = EditActions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EditActions<A>@<X0>(uint64_t *a1@<X8>)
{
  result = EditActions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EditActions<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EditActions<A>, a3);
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance EditActions<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for EditActions<A>);

  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t static EditActions<A>.all.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for EditActions(255, a1, a3, a4);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  *v5 = 1;
  type metadata accessor for Array();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  swift_getWitnessTable(protocol conformance descriptor for EditActions<A>, v4);
  return SetAlgebra<>.init(arrayLiteral:)();
}

{
  v4 = type metadata accessor for EditActions(255, a1, a3, a4);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  *v5 = xmmword_18CD63400;
  type metadata accessor for Array();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  swift_getWitnessTable(protocol conformance descriptor for EditActions<A>, v4);
  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t closure #1 in EditableCollectionContent.init(data:editActions:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  type metadata accessor for MutableCollection & RangeReplaceableCollection();
  if (swift_dynamicCast())
  {
    outlined init with take of MutableCollection & RangeReplaceableCollection(&v12, &v15);
    __swift_mutable_project_boxed_opaque_existential_1(&v15, v16);
    RangeReplaceableCollection<>.remove(atOffsets:)();
    outlined init with copy of MutableCollection & RangeReplaceableCollection(&v15, &v12);
LABEL_5:
    swift_dynamicCast();
    specialized Binding.wrappedValue.setter(v7);
    (*(v5 + 8))(v7, a4);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  outlined destroy of (MutableCollection & RangeReplaceableCollection)?(&v12);
  MEMORY[0x18D00ACC0](v10);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for RangeReplaceableCollection, MEMORY[0x1E69E6698]);
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v12, &v15);
    __swift_mutable_project_boxed_opaque_existential_1(&v15, v16);
    RangeReplaceableCollection._remove(atOffsets:)();
    outlined init with copy of _Benchmark(&v15, &v12);
    goto LABEL_5;
  }

  *&v14 = 0;
  v12 = 0u;
  v13 = 0u;
  return outlined destroy of LocationBasedSensoryFeedback?(&v12, &lazy cache variable for type metadata for RangeReplaceableCollection?, &lazy cache variable for type metadata for RangeReplaceableCollection, MEMORY[0x1E69E6698]);
}

uint64_t closure #2 in EditableCollectionContent.init(data:editActions:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for MutableCollection, MEMORY[0x1E69E5F70]);
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v11, v13);
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    MutableCollection.move(fromOffsets:toOffset:)();
    outlined init with copy of _Benchmark(v13, v11);
    swift_dynamicCast();
    specialized Binding.wrappedValue.setter(v8);
    (*(v6 + 8))(v8, a5);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    return outlined destroy of LocationBasedSensoryFeedback?(v11, &lazy cache variable for type metadata for MutableCollection?, &lazy cache variable for type metadata for MutableCollection, MEMORY[0x1E69E5F70]);
  }
}

uint64_t EditableCollectionContent<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a2;
  v43 = a3;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<OnDeleteDefaultTraitKey>, &type metadata for OnDeleteDefaultTraitKey, &protocol witness table for OnDeleteDefaultTraitKey);
  v10 = type metadata accessor for ModifiedContent();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v37 - v11;
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveDefaultTraitKey>, &type metadata for OnMoveDefaultTraitKey, &protocol witness table for OnMoveDefaultTraitKey);
  v12 = type metadata accessor for ModifiedContent();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v39 = &v37 - v17;
  (*(v7 + 16))(v9, v4, v6, v16);
  v37 = a1;
  v38 = v4;
  v18 = (v4 + *(a1 + 36));
  v19 = *v18;
  v20 = v18[1];
  if (*v18)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v22 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v47 = v22;
  v48 = v21;
  outlined copy of AppIntentExecutor?(v19, v20);
  v23 = v41;
  View._trait<A>(_:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v22, v21);
  (*(v7 + 8))(v9, v6);
  v24 = (v38 + *(v37 + 40));
  v25 = *v24;
  v26 = v24[1];
  if (*v24)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    v28 = _s10Foundation8IndexSetVSiIegny_ACSiytIegnnr_TRTA_0;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v47 = v28;
  v48 = v27;
  outlined copy of AppIntentExecutor?(v25, v26);
  v29 = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<OnDeleteDefaultTraitKey>, &type metadata for OnDeleteDefaultTraitKey, &protocol witness table for OnDeleteDefaultTraitKey);
  v46[0] = v23;
  v46[1] = v29;
  v30 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v46);
  v32 = v44;
  View._trait<A>(_:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v28, v27);
  (*(v40 + 8))(v32, v10);
  v33 = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveDefaultTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveDefaultTraitKey>, &type metadata for OnMoveDefaultTraitKey, &protocol witness table for OnMoveDefaultTraitKey);
  v45[0] = WitnessTable;
  v45[1] = v33;
  swift_getWitnessTable(v30, v12, v45);
  v34 = v39;
  static ViewBuilder.buildExpression<A>(_:)();
  v35 = *(v42 + 8);
  v35(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v35)(v34, v12);
}

uint64_t IndexedIdentifierCollection.Element.init(index:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = type metadata accessor for IndexedIdentifierCollection.Element(0, v17);
  return (*(*(a4 - 8) + 32))(a7 + *(v15 + 52), a2, a4);
}

uint64_t closure #1 in IndexedIdentifierCollection.init(_:id:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a6;
  v27 = a5;
  v25 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - v9;
  v12 = *v11;
  v13 = *(*v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v24 - v19;
  (*(v21 + 16))(&v24 - v19, a1, v18);
  v22 = dispatch thunk of Collection.subscript.read();
  (*(v13 + 16))(v16);
  v22(v28, 0);
  swift_getAtKeyPath();
  (*(v13 + 8))(v16, v12);
  return IndexedIdentifierCollection.Element.init(index:id:)(v20, v10, a3, v25, a4, v27, v26);
}

uint64_t IndexedIdentifierCollection.startIndex.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v6 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  v7[1] = v6;
  type metadata accessor for IndexedIdentifierCollection.Element(255, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for LazyMapSequence();
  return a2(v4, AssociatedConformanceWitness);
}

uint64_t IndexedIdentifierCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v9[1] = v8;
  type metadata accessor for IndexedIdentifierCollection.Element(255, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for LazyMapSequence();
  return a3(a1, v6, AssociatedConformanceWitness);
}

void (*protocol witness for Collection.subscript.read in conformance IndexedIdentifierCollection<A, B>(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = IndexedIdentifierCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>;
}

void (*IndexedIdentifierCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 32);
  *v7 = *(a3 + 16);
  v7[1] = v9;
  v10 = type metadata accessor for IndexedIdentifierCollection.Element(0, v7);
  v8[4] = v10;
  v11 = *(v10 - 8);
  v8[5] = v11;
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v8[6] = v12;
  IndexedIdentifierCollection.subscript.getter(a2, a3);
  return IndexedIdentifierCollection.subscript.read;
}

void IndexedIdentifierCollection.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  (*(*(*a1 + 40) + 8))(v2, *(*a1 + 32));
  free(v2);

  free(v1);
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance IndexedIdentifierCollection<A, B>@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance IndexedIdentifierCollection<A, B>(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v5 + 32))(&v10 - v7, a1, AssociatedTypeWitness, v6);
  IndexedIdentifierCollection.index(after:)(v8, a2);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance IndexedIdentifierCollection<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable(protocol conformance descriptor for IndexedIdentifierCollection<A, B>, a1);
  type metadata accessor for IndexingIterator();
  IndexedIdentifierCollection.startIndex.getter(a1);
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance IndexedIdentifierCollection<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for IndexedIdentifierCollection<A, B>, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance IndexedIdentifierCollection<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for IndexedIdentifierCollection<A, B>, a1);
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t IndexedIdentifierCollection<>.index(before:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = a2[2].n128_u64[1];
  v9 = a2[1];
  swift_getAssociatedTypeWitness();
  v10 = v9;
  v11 = v4;
  v12 = v5;
  type metadata accessor for IndexedIdentifierCollection.Element(255, &v10);
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for LazyMapSequence();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return MEMORY[0x18D00EBB0](a1, v6, AssociatedConformanceWitness);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> IndexedIdentifierCollection<A, B>(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(v7 + 32))(&v12 - v9, a1, AssociatedTypeWitness, v8);
  IndexedIdentifierCollection<>.index(before:)(v10, a2, v5);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance <> IndexedIdentifierCollection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 8);
  swift_getWitnessTable(protocol conformance descriptor for <> IndexedIdentifierCollection<A, B>, a3, &v5);
  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance <> IndexedIdentifierCollection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(a4 - 8) + 8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> IndexedIdentifierCollection<A, B>, a3, &v9);
  return MEMORY[0x18D00C6C0](a1, a2, a3, WitnessTable);
}

void type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for _TraitWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> IndexedIdentifierCollection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v9 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable(a4, a2, &v9);
  return swift_getWitnessTable(a5, a1, &WitnessTable);
}

uint64_t type metadata completion function for EditableCollectionContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for EditableCollectionContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v11 < 0xFFFFFFFFuLL)
    {
      *v10 = *v11;
    }

    else
    {
      v12 = *(v11 + 8);
      *v10 = *v11;
      *(v10 + 8) = v12;
    }

    v13 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    if (*v14 < 0xFFFFFFFFuLL)
    {
      *v13 = *v14;
      return v3;
    }

    v15 = *(v14 + 8);
    *v13 = *v14;
    *(v13 + 8) = v15;
  }

  return v3;
}

double destroy for EditableCollectionContent(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v5 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v5 >= 0xFFFFFFFFuLL)
  {
  }

  if (*((v5 + 23) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for EditableCollectionContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*v8 < 0xFFFFFFFFuLL)
  {
    *v7 = *v8;
  }

  else
  {
    v9 = *(v8 + 8);
    *v7 = *v8;
    *(v7 + 8) = v9;
  }

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*v11 < 0xFFFFFFFFuLL)
  {
    *v10 = *v11;
  }

  else
  {
    v12 = *(v11 + 8);
    *v10 = *v11;
    *(v10 + 8) = v12;
  }

  return a1;
}

uint64_t assignWithCopy for EditableCollectionContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  if (*v7 < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v11 = v8[1];
      *v7 = v9;
      v7[1] = v11;

      goto LABEL_8;
    }
  }

  else
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v10 = v8[1];
      *v7 = v9;
      v7[1] = v10;

      goto LABEL_8;
    }
  }

  *v7 = *v8;
LABEL_8:
  v12 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v16 = v13[1];
      *v12 = v14;
      v12[1] = v16;

      return a1;
    }

LABEL_14:
    *v12 = *v13;
    return a1;
  }

  if (v14 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v15 = v13[1];
  *v12 = v14;
  v12[1] = v15;

  return a1;
}

uint64_t initializeWithTake for EditableCollectionContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*v8 < 0xFFFFFFFFuLL)
  {
    *v7 = *v8;
  }

  else
  {
    v9 = *(v8 + 8);
    *v7 = *v8;
    *(v7 + 8) = v9;
  }

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  if (*v11 < 0xFFFFFFFF)
  {
    *v10 = *v11;
  }

  else
  {
    v13 = v11[1];
    *v10 = v12;
    *(v10 + 8) = v13;
  }

  return a1;
}

uint64_t assignWithTake for EditableCollectionContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  if (*v7 < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v11 = v8[1];
      *v7 = v9;
      v7[1] = v11;
      goto LABEL_8;
    }
  }

  else
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v10 = v8[1];
      *v7 = v9;
      v7[1] = v10;

      goto LABEL_8;
    }
  }

  *v7 = *v8;
LABEL_8:
  v12 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v16 = v13[1];
      *v12 = v14;
      v12[1] = v16;
      return a1;
    }

LABEL_14:
    *v12 = *v13;
    return a1;
  }

  if (v14 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v15 = v13[1];
  *v12 = v14;
  v12[1] = v15;

  return a1;
}

uint64_t getEnumTagSinglePayload for EditableCollectionContent(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

unsigned int *storeEnumTagSinglePayload for EditableCollectionContent(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          v19[1] = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t type metadata completion function for IndexedIdentifierCollection(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  v4[1] = v3;
  type metadata accessor for IndexedIdentifierCollection.Element(255, v4);
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for LazyMapSequence();
  if (v2 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for IndexedIdentifierCollection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    v13 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v11;
    v13[1] = v12;
  }

  return a1;
}

double destroy for IndexedIdentifierCollection(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);

  return result;
}

uint64_t initializeWithCopy for IndexedIdentifierCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t assignWithCopy for IndexedIdentifierCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t initializeWithTake for IndexedIdentifierCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for IndexedIdentifierCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for IndexedIdentifierCollection(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for IndexedIdentifierCollection(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v12 = a3 - v10 + 1;
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

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
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
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v19 = a2 & 0x7FFFFFFF;
      v19[1] = 0;
    }

    else
    {
      *v19 = (a2 - 1);
    }
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

uint64_t type metadata completion function for IndexedIdentifierCollection.Element(void *a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t *initializeBufferWithCopyOfBuffer for IndexedIdentifierCollection.Element(uint64_t *a1, uint64_t *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = a3[3];
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = ((v8 + v11) & ~v11) + *(v10 + 64);
  v14 = (*(v7 + 80) | *(v10 + 80));
  if (v14 > 7 || ((*(v7 + 80) | *(v10 + 80)) & 0x100000) != 0 || v13 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v14 + 16) & ~v14));
  }

  else
  {
    v18 = ~v11;
    (*(v7 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v10 + 16))((a1 + v12) & v18, (a2 + v12) & v18, v9);
  }

  return a1;
}

uint64_t destroy for IndexedIdentifierCollection.Element(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 8;
  (*v5)(a1, AssociatedTypeWitness);
  v6 = *(a2[3] - 8);
  v7 = *(v6 + 8);
  v8 = (*(v5 + 56) + a1 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t initializeWithCopy for IndexedIdentifierCollection.Element(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 16;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(a3[3] - 8);
  (*(v8 + 16))((*(v7 + 48) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 48) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithCopy for IndexedIdentifierCollection.Element(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 24;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(a3[3] - 8);
  (*(v8 + 24))((*(v7 + 40) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 40) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t initializeWithTake for IndexedIdentifierCollection.Element(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 32;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(a3[3] - 8);
  (*(v8 + 32))((*(v7 + 32) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 32) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithTake for IndexedIdentifierCollection.Element(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 40;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(a3[3] - 8);
  (*(v8 + 40))((*(v7 + 24) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 24) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for IndexedIdentifierCollection.Element(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(a3[3] - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
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
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
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
      v19 = (v13 & ~v11) + *(v9 + 64);
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

void storeEnumTagSinglePayload for IndexedIdentifierCollection.Element(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(a4[3] - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t partial apply for closure #1 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[8];
  type metadata accessor for Binding();
  swift_getAssociatedTypeWitness();
  return closure #1 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(v1[2], v3, a1, v4);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 40);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 96) & ~*(*v2 + 80);
  v4 = v3 + *(*v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[10], v1);
  (*(v6 + 8))(v0 + v7, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = *(type metadata accessor for Binding() - 8);
  v9 = (*(v8 + 80) + 96) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  return closure #2 in closure #1 in ForEach.init<A, B>(_:id:editActions:content:)(a1, v1[2], v1[3], v1 + v9, v1 + ((v10 + *(v11 + 80)) & ~*(v11 + 80)), v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in EditableCollectionContent.init(data:editActions:content:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for Binding() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #2 in EditableCollectionContent.init(data:editActions:content:)(a1, a2, v8, v5, v6);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[10], v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in EditableCollectionContent.init(data:editActions:content:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for Binding() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in EditableCollectionContent.init(data:editActions:content:)(a1, v6, v3, v4);
}

unint64_t type metadata accessor for MutableCollection & RangeReplaceableCollection()
{
  result = lazy cache variable for type metadata for MutableCollection & RangeReplaceableCollection;
  if (!lazy cache variable for type metadata for MutableCollection & RangeReplaceableCollection)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MutableCollection & RangeReplaceableCollection);
  }

  return result;
}

uint64_t outlined destroy of (MutableCollection & RangeReplaceableCollection)?(uint64_t a1)
{
  type metadata accessor for (MutableCollection & RangeReplaceableCollection)?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (MutableCollection & RangeReplaceableCollection)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (MutableCollection & RangeReplaceableCollection)?)
  {
    type metadata accessor for MutableCollection & RangeReplaceableCollection();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (MutableCollection & RangeReplaceableCollection)?);
    }
  }
}

uint64_t outlined init with copy of MutableCollection & RangeReplaceableCollection(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _AutomaticNavigationStackStyle.makeBody(configuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

id CustomizableDocumentViewControllerRepresentable.makeUIViewController(context:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v33 = *(a1 + 8);
  v4 = v1[16];
  v5 = v2[14];
  v6 = *(v5 + 16);
  v36 = v5;
  if (v6)
  {
    v7 = v5 + 32;

    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of DocumentLaunchScreenAction(v7, &v37);
      outlined init with copy of DocumentCreationStrategy?(v38, &v39, type metadata accessor for DocumentCreationStrategy?);
      outlined destroy of DocumentLaunchScreenAction(&v37);
      if (v40)
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v39, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
        }

        v10 = v8[2];
        v9 = v8[3];
        if (v10 >= v9 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
        }

        v8[2] = v10 + 1;
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v41, &v8[5 * v10 + 4]);
      }

      else
      {
        outlined destroy of DocumentCreationStrategy?(&v39);
      }

      v7 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = objc_allocWithZone(type metadata accessor for IdentifiedDocumentGroupDocumentCreation());
  v35 = IdentifiedDocumentGroupDocumentCreation.init(configurations:strategies:)(v4, v8);
  *&v35[OBJC_IVAR____TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation_documentBrowserContextMenu] = v2[15];
  if (v2[8])
  {
    v37 = v33;
    v38[0] = v3;
    v41[0] = 0uLL;

    MEMORY[0x18D009CB0](&v39, v12);
    v13 = Text.resolveString(in:with:idiom:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = v2[9];
  v17 = v2[10];
  v18 = v2[11];
  v34 = v2[12];
  v19 = v2[13];
  v20 = objc_allocWithZone(type metadata accessor for CustomizableDocumentViewController(0));
  v21 = &v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground;
  *&v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground] = 0;
  v23 = &v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView];
  *v24 = 0;
  v24[1] = 0;
  *v21 = v13;
  v21[1] = v15;
  *&v20[v22] = v16;
  *&v20[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions] = v36;
  v25 = *v23;
  v26 = v23[1];
  *v23 = v17;
  v23[1] = v18;

  v27 = v35;
  outlined copy of AppIntentExecutor?(v17, v18);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v25, v26);
  v28 = *v24;
  v29 = v24[1];
  *v24 = v34;
  v24[1] = v19;
  outlined copy of AppIntentExecutor?(v34, v19);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v28, v29);
  v30 = specialized DocumentViewController.init<A>(documentBrowserMediator:onDocumentClose:)(v27, 0, 0);

  outlined init with copy of RootModifier((v2 + 17), &v37);
  v31 = v30;
  DocumentViewController.rootModifier.setter(&v37);

  return v31;
}

void CustomizableDocumentViewControllerRepresentable.updateUIViewController(_:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3[8];
  if (v5)
  {
    v7 = v3[5];
    v6 = v3[6];
    v8 = v3[7];
    v9 = *(a2 + 16);
    v29[0] = *(a2 + 8);
    v29[1] = v9;
    v28[1] = 0;
    v28[2] = 0;
    outlined copy of Text?(v7, v6, v8, v5);

    MEMORY[0x18D009CB0](v28, v10);
    v11 = Text.resolveString(in:with:idiom:)();
    v13 = v12;

    v14 = (a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle);
    v15 = *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle + 8);
    if (v15)
    {
      if (*v14 == v11 && v15 == v13)
      {

        outlined consume of Text.Storage(v7, v6, v8 & 1);

        goto LABEL_12;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined consume of Text.Storage(v7, v6, v8 & 1);

      if (v27)
      {
        goto LABEL_12;
      }
    }

    else
    {
      outlined consume of Text.Storage(v7, v6, v8 & 1);
    }

    *v14 = v11;
    v14[1] = v13;
LABEL_12:
  }

  *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions) = v3[14];

  *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground) = v3[9];

  v17 = v3[10];
  v18 = v3[11];
  v19 = (a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView);
  v20 = *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView);
  v21 = *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView + 8);
  *v19 = v17;
  v19[1] = v18;
  outlined copy of AppIntentExecutor?(v17, v18);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v20, v21);
  v22 = v3[12];
  v23 = v3[13];
  v24 = (a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView);
  v25 = *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView);
  v26 = *(a1 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView + 8);
  *v24 = v22;
  v24[1] = v23;
  outlined copy of AppIntentExecutor?(v22, v23);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v25, v26);
  outlined init with copy of RootModifier((v3 + 17), v29);
  DocumentViewController.rootModifier.setter(v29);
  CustomizableDocumentViewController.setupLaunchOptions()();
}

double closure #1 in static DocumentLaunchScreenAction.makeActions(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v4 = *(a1 + 296);
  v5 = *(a1 + 304);
  if (v5 != 1 && (*(a1 + 296) & 8) != 0)
  {
    v17 = *(a1 + 280);
    v18 = *(a1 + 288);
    v74 = v4;
    v53 = v17;
    v54 = v18;
    if (v5)
    {
      swift_unknownObjectRetain();
      outlined destroy of DocumentCreationStrategy?(&v71);
      outlined init with copy of _Benchmark((v5 + 2), &v71);
      v19 = v5[5];
      v20 = v5[6];
      v21 = __swift_project_boxed_opaque_existential_1(v5 + 2, v19);
      v51 = &v51;
      v52 = a2;
      v22 = *(v19 - 8);
      v23 = MEMORY[0x1EEE9AC00](v21);
      v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25, v23);
      v26 = (*(v20 + 16))(v19, v20);
      v28 = v27;
      (*(v22 + 8))(v25, v19);
      a2 = v52;
      v29 = MEMORY[0x18D00C850](v26, v28);
    }

    else
    {
      v32 = *MEMORY[0x1E69DDCD0];
      outlined copy of PlatformItem.SelectionContent?(v17, v18, v4, 0);
      v29 = v32;
    }

    v31 = [objc_opt_self() createDocumentActionWithIntent_];

    v33 = *(a1 + 240);
    v55[12] = *(a1 + 224);
    v55[13] = v33;
    v55[14] = *(a1 + 256);
    v34 = *(a1 + 176);
    v55[8] = *(a1 + 160);
    v55[9] = v34;
    v35 = *(a1 + 208);
    v55[10] = *(a1 + 192);
    v55[11] = v35;
    v36 = *(a1 + 112);
    v55[4] = *(a1 + 96);
    v55[5] = v36;
    v37 = *(a1 + 144);
    v55[6] = *(a1 + 128);
    v55[7] = v37;
    v38 = *(a1 + 48);
    v55[0] = *(a1 + 32);
    v55[1] = v38;
    v39 = *(a1 + 80);
    v55[2] = *(a1 + 64);
    v55[3] = v39;
    if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v55) != 1)
    {
      v68 = v55[12];
      v69 = v55[13];
      v70 = v55[14];
      v64 = v55[8];
      v65 = v55[9];
      v66 = v55[10];
      v67 = v55[11];
      v60 = v55[4];
      v61 = v55[5];
      v62 = v55[6];
      v63 = v55[7];
      v56 = v55[0];
      v57 = v55[1];
      v58 = v55[2];
      v59 = v55[3];
      v40 = PlatformItem.PrimaryContent.text.getter();
      if (v40)
      {
        v41 = v40;
        v42 = [v40 string];

        v43 = v42;
        if (!v42)
        {
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = MEMORY[0x18D00C850](v44);
        }

        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = HIBYTE(v47) & 0xF;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v48 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          [v31 setTitle_];
          outlined consume of PlatformItem.SelectionContent?(v53, v54, v74, v5);

          goto LABEL_23;
        }
      }
    }

    outlined consume of PlatformItem.SelectionContent?(v53, v54, v74, v5);
    goto LABEL_23;
  }

  v7 = *(a1 + 240);
  v68 = *(a1 + 224);
  v69 = v7;
  v70 = *(a1 + 256);
  v8 = *(a1 + 176);
  v64 = *(a1 + 160);
  v65 = v8;
  v9 = *(a1 + 208);
  v66 = *(a1 + 192);
  v67 = v9;
  v10 = *(a1 + 112);
  v60 = *(a1 + 96);
  v61 = v10;
  v11 = *(a1 + 144);
  v62 = *(a1 + 128);
  v63 = v11;
  v12 = *(a1 + 48);
  v56 = *(a1 + 32);
  v57 = v12;
  v13 = *(a1 + 80);
  v58 = *(a1 + 64);
  v59 = v13;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v56) != 1)
  {
    v55[12] = v68;
    v55[13] = v69;
    v55[14] = v70;
    v55[8] = v64;
    v55[9] = v65;
    v55[10] = v66;
    v55[11] = v67;
    v55[4] = v60;
    v55[5] = v61;
    v55[6] = v62;
    v55[7] = v63;
    v55[0] = v56;
    v55[1] = v57;
    v55[2] = v58;
    v55[3] = v59;
    v14 = PlatformItem.PrimaryContent.text.getter();
    if (v14)
    {
      v15 = v14;
      v16 = [v14 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  outlined init with copy of PlatformItem(a1, v55);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v55, 0x271uLL);
  v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
LABEL_23:
  *a2 = v31;
  result = *&v71;
  v50 = v72;
  *(a2 + 8) = v71;
  *(a2 + 24) = v50;
  *(a2 + 40) = v73;
  return result;
}

double closure #1 in closure #1 in static DocumentLaunchScreenAction.makeActions(from:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1)
  {
    swift_unknownObjectRetain();
    PlatformItem.SelectionContent.select()();
    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall CustomizableDocumentViewController.setupLaunchOptions()()
{
  v1 = v0;
  v2 = type metadata accessor for UIBackgroundConfiguration();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v87 - v7;
  DocumentViewController.setupLaunchOptions()();
  v9 = &v0[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle];
  v10 = *&v0[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_cardTitle + 8];
  if (v10)
  {
    v11 = *v9;

    v12 = [v1 launchOptions];
    v13 = MEMORY[0x18D00C850](v11, v10);

    [v12 setTitle_];
  }

  if (*&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground])
  {

    static UIBackgroundConfiguration.clear()();
    type metadata accessor for _UIHostingView<AnyView>(0, v14, v15, v16);
    v18 = objc_allocWithZone(v17);

    specialized _UIHostingView.init(rootView:)(v19);
    UIBackgroundConfiguration.customView.setter();
    v20 = [v1 launchOptions];
    (*(v3 + 16))(v5, v8, v2);
    UIDocumentViewControllerLaunchOptions.background.setter();

    (*(v3 + 8))(v8, v2);
  }

  v21 = *&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView];
  if (v21)
  {
    v22 = *&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView + 8];

    v23 = [v1 launchOptions];
    v24 = [v23 backgroundAccessoryView];

    if (v24)
    {
      type metadata accessor for DocumentAccessoryView();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = (v25 + OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider);
        *v26 = v21;
        v26[1] = v22;

        DocumentAccessoryView.updateRootView()();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21, v22);
        goto LABEL_12;
      }
    }

    v27 = [v1 launchOptions];
    v28 = type metadata accessor for DocumentAccessoryView();
    v29 = objc_allocWithZone(v28);
    v30 = &v29[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider];
    *v30 = v21;
    v30[1] = v22;
    outlined copy of AppIntentExecutor?(v21, v22);

    v31 = AnyView.init<A>(_:)();
    type metadata accessor for _UIHostingView<AnyView>(0, v32, v33, v34);
    v36 = objc_allocWithZone(v35);
    *&v29[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView] = specialized _UIHostingView.init(rootView:)(v31);
    v88.receiver = v29;
    v88.super_class = v28;
    v37 = objc_msgSendSuper2(&v88, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v38 = OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView;
    v39 = *&v37[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView];
    v24 = v37;
    [v24 addSubview_];
    v40 = *&v37[v38];
    UIView.constrainToView(_:exceptEdges:identifier:)(v24, 0, 0xD000000000000015, 0x800000018CD8E150);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21, v22);
    [v27 setBackgroundAccessoryView_];
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21, v22);
  }

  else
  {
    v24 = [v1 launchOptions];
    [v24 setBackgroundAccessoryView_];
  }

LABEL_12:

  v41 = *&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView];
  if (v41)
  {
    v42 = *&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView + 8];

    v43 = [v1 launchOptions];
    v44 = [v43 foregroundAccessoryView];

    if (v44)
    {
      type metadata accessor for DocumentAccessoryView();
      v45 = swift_dynamicCastClass();
      if (v45)
      {
        v46 = (v45 + OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider);
        *v46 = v41;
        v46[1] = v42;

        DocumentAccessoryView.updateRootView()();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v41, v42);
        goto LABEL_19;
      }
    }

    v47 = [v1 launchOptions];
    v48 = type metadata accessor for DocumentAccessoryView();
    v49 = objc_allocWithZone(v48);
    v50 = &v49[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider];
    *v50 = v41;
    v50[1] = v42;
    outlined copy of AppIntentExecutor?(v41, v42);

    v51 = AnyView.init<A>(_:)();
    type metadata accessor for _UIHostingView<AnyView>(0, v52, v53, v54);
    v56 = objc_allocWithZone(v55);
    *&v49[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView] = specialized _UIHostingView.init(rootView:)(v51);
    v89.receiver = v49;
    v89.super_class = v48;
    v57 = objc_msgSendSuper2(&v89, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v58 = OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView;
    v59 = *&v57[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView];
    v44 = v57;
    [v44 addSubview_];
    v60 = *&v57[v58];
    UIView.constrainToView(_:exceptEdges:identifier:)(v44, 0, 0xD000000000000015, 0x800000018CD8E150);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v41, v42);
    [v47 setForegroundAccessoryView_];
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v41, v42);
  }

  else
  {
    v44 = [v1 launchOptions];
    [v44 setForegroundAccessoryView_];
  }

LABEL_19:

  v61 = OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions;
  v62 = *(*&v1[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions] + 16);
  v63 = [v1 launchOptions];
  v64 = v63;
  if (v62 == 2)
  {
    v66 = *&v1[v61];
    if (*(v66 + 16))
    {
      v62 = *(v66 + 32);
      [v64 setPrimaryAction_];

      v69 = [v1 launchOptions];
      v66 = *&v1[v61];
      if (*(v66 + 16) >= 2uLL)
      {
        v70 = v69;
        v71 = *(v66 + 80);
        [v70 setSecondaryAction_];

        v65 = [v1 launchOptions];
        goto LABEL_28;
      }

      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v62 == 1)
  {
    v66 = *&v1[v61];
    if (*(v66 + 16))
    {
      v67 = *(v66 + 32);
      [v64 setPrimaryAction_];

      v68 = [v1 launchOptions];
      [v68 setSecondaryAction_];

      v65 = [v1 launchOptions];
      goto LABEL_28;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v62)
  {
    [v63 setSecondaryAction_];

    v65 = [v1 launchOptions];
LABEL_28:
    v72 = v65;
    [v72 _setSecondaryMenu_];
    goto LABEL_38;
  }

  v66 = *&v1[v61];
  if (!*(v66 + 16))
  {
    goto LABEL_41;
  }

  v73 = *(v66 + 32);
  [v64 setPrimaryAction_];

  v74 = [v1 launchOptions];
  [v74 setSecondaryAction_];

  v62 = *&v1[v61];
  v66 = v62[2];
  if (v66)
  {
LABEL_43:
    specialized _copyCollectionToContiguousArray<A>(_:)(v62, (v62 + 4), 1, (2 * v66) | 1);
    v62 = v85;
    goto LABEL_32;
  }

LABEL_32:
  specialized CustomizableDocumentViewController.warnIfMenuActionsInvalid(_:)(v62, v75);
  v76 = [v1 launchOptions];
  v77 = MEMORY[0x18D00C850](0xD00000000000001ALL, 0x800000018CD45910);
  v78 = v62[2];
  if (v78)
  {
    v91 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v79 = (v62 + 4);
    do
    {
      outlined init with copy of DocumentLaunchScreenAction(v79, v90);
      v80 = v90[0];
      outlined destroy of DocumentLaunchScreenAction(v90);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v79 += 48;
      --v78;
    }

    while (v78);

    v81 = v91;
  }

  else
  {

    v81 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v92.value.super.isa = 0;
  v92.is_nil = v77;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v83, v82, 0, v92, 0, 0xFFFFFFFFFFFFFFFFLL, v81, v86);
  v72 = v84;
  [v76 _setSecondaryMenu_];

LABEL_38:
}

uint64_t CustomizableDocumentViewController.update(with:in:)(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[8];
  if (v6)
  {
    v21 = *a2;
    v22 = v5;
    v20[0] = 0;
    v20[1] = 0;
    MEMORY[0x18D009CB0](&v19);
    v7 = Text.resolveString(in:with:idiom:)();
    v6 = MEMORY[0x18D00C850](v7);
  }

  [v2 setTitle_];

  v20[0] = a1[9];
  *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_screenBackground] = v20[0];
  outlined init with copy of DocumentCreationStrategy?(v20, &v21, type metadata accessor for AnyView?);

  *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_actions] = a1[14];

  v8 = a1[10];
  v9 = a1[11];
  v10 = &v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView];
  v11 = *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView];
  v12 = *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView + 8];
  *v10 = v8;
  v10[1] = v9;
  outlined copy of AppIntentExecutor?(v8, v9);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11, v12);
  v13 = a1[12];
  v14 = a1[13];
  v15 = &v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView];
  v16 = *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView];
  v17 = *&v2[OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView + 8];
  *v15 = v13;
  v15[1] = v14;
  outlined copy of AppIntentExecutor?(v13, v14);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16, v17);
  v21 = v4;
  v22 = v5;
  return DocumentViewController.updateInheritedEnvironment(with:)(&v21);
}

uint64_t CustomizableDocumentViewController.__ivar_destroyer()
{

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView), *(v0 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView + 8));
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView + 8);

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1, v2);
}

id CustomizableDocumentViewController.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CustomizableDocumentViewController(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for CustomizableDocumentViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for CustomizableDocumentViewController;
  if (!type metadata singleton initialization cache for CustomizableDocumentViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double DocumentAccessoryView.updateRootView()()
{
  v1 = v0;
  v2 = [(UIView *)v0 layoutMarginsGuide];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILayoutGuide, 0x1E69DCC20);
  UIPopoverPresentationControllerSourceItem.frame(in:)(&v16, v1);

  if (!v16.is_nil)
  {
    origin = v16.value.origin;
    size = v16.value.size;
    [(UIView *)v1 frame];
    v4 = *(&v1->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView);
    v5 = *(&v1->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider);
    v13[0] = v6;
    v13[1] = v7;
    v13[2] = v8;
    v13[3] = v9;
    v10 = v4;

    v11 = v5(v13);

    v12 = static Transaction.current.getter();
    specialized _UIHostingView.setRootView(_:transaction:)(v11, v12);
  }

  return result;
}

char *DocumentAccessoryView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v14, sel_hitTest_withEvent_, a1, a2, a3);
  if (result)
  {
    v8 = result == v3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || result && (v9 = *&v3[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView], v10 = result, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250), v11 = v9, v12 = v10, v13 = static NSObject.== infix(_:_:)(), v11, v12, result = v10, (v13 & 1) != 0))
  {

    return 0;
  }

  return result;
}

void destroy for DocumentLaunchScreenAction(uint64_t a1)
{
  if (*(a1 + 32))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  }
}

void *initializeWithCopy for DocumentLaunchScreenAction(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = a1 + 1;
  v6 = *(a2 + 32);
  v7 = v4;
  if (v6)
  {
    v8 = *(a2 + 40);
    a1[4] = v6;
    a1[5] = v8;
    (**(v6 - 8))(v5, a2 + 8, v6);
  }

  else
  {
    v9 = *(a2 + 24);
    *v5 = *(a2 + 8);
    *(v5 + 1) = v9;
    v5[4] = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for DocumentLaunchScreenAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v7)
    {
      *(a1 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      (**(v7 - 8))(a1 + 8, a2 + 8);
      return a1;
    }

LABEL_7:
    v9 = *(a2 + 8);
    v10 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v10;
    *(a1 + 8) = v9;
    return a1;
  }

  v8 = (a1 + 8);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v8, (a2 + 8));
  return a1;
}

uint64_t assignWithTake for DocumentLaunchScreenAction(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t specialized CustomizableDocumentViewController.warnIfMenuActionsInvalid(_:)(uint64_t result, __n128 a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    for (i = result + 32; ; i += 48)
    {
      outlined init with copy of DocumentLaunchScreenAction(i, &v7);
      outlined init with copy of DocumentCreationStrategy?(&v8, v5, type metadata accessor for DocumentCreationStrategy?);
      outlined destroy of DocumentLaunchScreenAction(&v7);
      v4 = v6;
      result = outlined destroy of DocumentCreationStrategy?(v5);
      if (v4)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }

    return MEMORY[0x18D009810](0x10000000000000CDLL, 0x800000018CD45930);
  }

  return result;
}

void type metadata accessor for _UIHostingView<AnyView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _UIHostingView<AnyView>)
  {
    v4 = type metadata accessor for _UIHostingView(0, MEMORY[0x1E6981910], MEMORY[0x1E6981900], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _UIHostingView<AnyView>);
    }
  }
}

void type metadata accessor for DocumentCreationStrategy?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DocumentCreationStrategy?)
  {
    type metadata accessor for DocumentCreationStrategy();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DocumentCreationStrategy?);
    }
  }
}

unint64_t type metadata accessor for DocumentCreationStrategy()
{
  result = lazy cache variable for type metadata for DocumentCreationStrategy;
  if (!lazy cache variable for type metadata for DocumentCreationStrategy)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DocumentCreationStrategy);
  }

  return result;
}

uint64_t outlined destroy of DocumentCreationStrategy?(uint64_t a1)
{
  type metadata accessor for DocumentCreationStrategy?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of DocumentCreationStrategy?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for AnyView?()
{
  if (!lazy cache variable for type metadata for AnyView?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyView?);
    }
  }
}

void specialized static DocumentLaunchScreenAction.makeActions(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v3 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = 0;
    v5 = v14;
    v6 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      outlined init with copy of PlatformItem(v6, v12);
      closure #1 in static DocumentLaunchScreenAction.makeActions(from:)(v12, v13);
      v3 = outlined destroy of PlatformItem(v12);
      v14 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        v3 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v5 = v14;
      }

      ++v4;
      *(v5 + 16) = v8 + 1;
      v9 = (v5 + 48 * v8);
      v10 = v13[0];
      v11 = v13[2];
      v9[3] = v13[1];
      v9[4] = v11;
      v9[2] = v10;
      v6 += 632;
      if (v2 == v4)
      {
        return;
      }
    }

    __break(1u);
    outlined destroy of PlatformItem(v3);

    __break(1u);
  }
}

uint64_t outlined copy of PlatformItem.SelectionContent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void destroy for CustomizableDocumentViewControllerRepresentable(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  if (*(a1 + 80))
  {
  }

  if (*(a1 + 96))
  {
  }

  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  if (*(a1 + 184))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 160));
  }

  v2 = *(a1 + 224);
  if (v2 != 255)
  {
    outlined consume of SceneID(*(a1 + 208), *(a1 + 216), v2 & 1);
  }

  v3 = *(a1 + 232);
}

uint64_t initializeWithCopy for CustomizableDocumentViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v6 = (a2 + 24);
  v5 = *(a2 + 24);

  if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;

    v8 = *(a2 + 64);
    if (v8)
    {
LABEL_3:
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 40) = v9;
      *(a1 + 48) = v10;
      *(a1 + 56) = v11;
      *(a1 + 64) = v8;

      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 24) = *v6;
    v8 = *(a2 + 64);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v12 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);

  if (v12)
  {
    v13 = *(a2 + 88);
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a2 + 104);
    *(a1 + 96) = v14;
    *(a1 + 104) = v15;
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
  }

  v16 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v16;
  *(a1 + 128) = *(a2 + 128);

  swift_weakCopyInit();
  swift_weakCopyInit();
  swift_weakCopyInit();
  v17 = *(a2 + 184);
  if (v17)
  {
    v18 = *(a2 + 192);
    *(a1 + 184) = v17;
    *(a1 + 192) = v18;
    (**(v17 - 8))(a1 + 160, a2 + 160);
  }

  else
  {
    v19 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v19;
    *(a1 + 192) = *(a2 + 192);
  }

  *(a1 + 200) = *(a2 + 200);
  v20 = *(a2 + 224);
  if (v20 == 255)
  {
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
  }

  else
  {
    v21 = *(a2 + 208);
    v22 = *(a2 + 216);
    v23 = v20 & 1;
    outlined copy of SceneID(v21, v22, v20 & 1);
    *(a1 + 208) = v21;
    *(a1 + 216) = v22;
    *(a1 + 224) = v23;
  }

  v24 = *(a2 + 232);
  v25 = *(a2 + 240);
  *(a1 + 232) = v24;
  *(a1 + 240) = v25;
  v26 = v24;
  return a1;
}

uint64_t assignWithCopy for CustomizableDocumentViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v6;

    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_8:
  v7 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v7)
    {
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = *(a2 + 56);
      outlined copy of Text.Storage(v8, v9, v10);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
      *(a1 + 56) = v10;
      outlined consume of Text.Storage(v11, v12, v13);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v17 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v17;
    }
  }

  else if (v7)
  {
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    outlined copy of Text.Storage(v14, v15, v16);
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v18 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v18;
  }

  *(a1 + 72) = *(a2 + 72);

  v19 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v19)
    {
      v20 = *(a2 + 88);
      *(a1 + 80) = v19;
      *(a1 + 88) = v20;

      goto LABEL_22;
    }
  }

  else if (v19)
  {
    v21 = *(a2 + 88);
    *(a1 + 80) = v19;
    *(a1 + 88) = v21;

    goto LABEL_22;
  }

  *(a1 + 80) = *(a2 + 80);
LABEL_22:
  v22 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v22)
    {
      v23 = *(a2 + 104);
      *(a1 + 96) = v22;
      *(a1 + 104) = v23;

      goto LABEL_29;
    }
  }

  else if (v22)
  {
    v24 = *(a2 + 104);
    *(a1 + 96) = v22;
    *(a1 + 104) = v24;

    goto LABEL_29;
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_29:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);

  swift_weakCopyAssign();
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  v25 = *(a2 + 184);
  if (*(a1 + 184))
  {
    v26 = (a1 + 160);
    if (v25)
    {
      __swift_assign_boxed_opaque_existential_1(v26, (a2 + 160));
    }

    else
    {
      outlined destroy of AnyHashable(v26);
      v27 = *(a2 + 192);
      v28 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v28;
      *(a1 + 192) = v27;
    }
  }

  else if (v25)
  {
    *(a1 + 184) = v25;
    *(a1 + 192) = *(a2 + 192);
    (**(v25 - 8))(a1 + 160, a2 + 160);
  }

  else
  {
    v29 = *(a2 + 160);
    v30 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 160) = v29;
    *(a1 + 176) = v30;
  }

  *(a1 + 200) = *(a2 + 200);
  v31 = *(a2 + 224);
  if (*(a1 + 224) == 255)
  {
    if (v31 == 255)
    {
      v42 = *(a2 + 208);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 208) = v42;
    }

    else
    {
      v38 = *(a2 + 208);
      v39 = *(a2 + 216);
      v40 = v31 & 1;
      outlined copy of SceneID(v38, v39, v31 & 1);
      *(a1 + 208) = v38;
      *(a1 + 216) = v39;
      *(a1 + 224) = v40;
    }
  }

  else if (v31 == 255)
  {
    outlined destroy of SceneID(a1 + 208);
    v41 = *(a2 + 224);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = v41;
  }

  else
  {
    v32 = *(a2 + 208);
    v33 = *(a2 + 216);
    v34 = v31 & 1;
    outlined copy of SceneID(v32, v33, v31 & 1);
    v35 = *(a1 + 208);
    v36 = *(a1 + 216);
    v37 = *(a1 + 224);
    *(a1 + 208) = v32;
    *(a1 + 216) = v33;
    *(a1 + 224) = v34;
    outlined consume of SceneID(v35, v36, v37);
  }

  v43 = *(a1 + 232);
  v44 = *(a2 + 232);
  *(a1 + 232) = v44;
  v45 = v44;

  *(a1 + 240) = *(a2 + 240);
  return a1;
}

uint64_t initializeWithTake for CustomizableDocumentViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v5 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v5;
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 128) = *(a2 + 128);
  swift_weakTakeInit();
  swift_weakTakeInit();
  swift_weakTakeInit();
  v8 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v8;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  return a1;
}

uint64_t assignWithTake for CustomizableDocumentViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;

      if (!*(a1 + 64))
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_9:
    *(a1 + 24) = *(a2 + 24);
    if (!*(a1 + 64))
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  if (!*(a1 + 64))
  {
    goto LABEL_13;
  }

LABEL_10:
  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v9;
    outlined consume of Text.Storage(v10, v11, v12);
    *(a1 + 64) = v8;

    goto LABEL_14;
  }

  outlined destroy of Text(a1 + 40);
LABEL_13:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_14:
  *(a1 + 72) = *(a2 + 72);

  v13 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v13)
    {
      v14 = *(a2 + 88);
      *(a1 + 80) = v13;
      *(a1 + 88) = v14;

      goto LABEL_21;
    }
  }

  else if (v13)
  {
    v15 = *(a2 + 88);
    *(a1 + 80) = v13;
    *(a1 + 88) = v15;
    goto LABEL_21;
  }

  *(a1 + 80) = *(a2 + 80);
LABEL_21:
  v16 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v16)
    {
      v17 = *(a2 + 104);
      *(a1 + 96) = v16;
      *(a1 + 104) = v17;

      goto LABEL_28;
    }
  }

  else if (v16)
  {
    v18 = *(a2 + 104);
    *(a1 + 96) = v16;
    *(a1 + 104) = v18;
    goto LABEL_28;
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_28:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  swift_weakTakeAssign();
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  if (*(a1 + 184))
  {
    if (*(a2 + 184))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 160));
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 160);
    }
  }

  v19 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v19;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  v20 = *(a1 + 224);
  if (v20 == 255)
  {
    goto LABEL_36;
  }

  v21 = *(a2 + 224);
  if (v21 == 255)
  {
    outlined destroy of SceneID(a1 + 208);
LABEL_36:
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    goto LABEL_37;
  }

  v22 = *(a1 + 208);
  v23 = *(a1 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v21 & 1;
  outlined consume of SceneID(v22, v23, v20 & 1);
LABEL_37:
  v24 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);
  return a1;
}

uint64_t getEnumTagSinglePayload for CustomizableDocumentViewControllerRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t storeEnumTagSinglePayload for CustomizableDocumentViewControllerRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *FileDocumentWriteConfiguration.existingFile.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileDocumentWriteConfiguration(0) + 20));
  v2 = v1;
  return v1;
}

uint64_t FileDocumentWriteConfiguration.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UTType();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id FileDocumentReadConfiguration.file.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileDocumentReadConfiguration(0) + 20));

  return v1;
}

uint64_t assignWithCopy for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = v9;

  return a1;
}

uint64_t assignWithTake for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for FileDocumentWriteConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UTType();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = v9;
  }

  return a1;
}

void destroy for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

uint64_t initializeWithCopy for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v8;
  return a1;
}

uint64_t assignWithCopy for FileDocumentReadConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  return a1;
}

uint64_t initializeWithTake for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for FileDocumentReadConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t type metadata completion function for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void key path getter for EnvironmentValues.searchFocusContext : EnvironmentValues(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>();
    lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>();
    lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

uint64_t View.onSearchFocusChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &unk_1EFFB3508);
}

unint64_t lazy protocol witness table accessor for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier()
{
  result = lazy protocol witness table cache variable for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier;
  if (!lazy protocol witness table cache variable for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnSearchFocusChangeModifier, &unk_1EFFB3508, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier);
  }

  return result;
}

uint64_t assignWithTake for SearchFocusContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

double protocol witness for ViewModifier.body(content:) in conformance OnSearchFocusChangeModifier@<D0>(uint64_t (**a1)(unsigned __int8 *a1)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = partial apply for closure #1 in OnSearchFocusChangeModifier.body(content:);
  a1[1] = v5;

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<OnSearchFocusChangeModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<OnSearchFocusChangeModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>, type metadata accessor for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>>)
  {
    type metadata accessor for _ViewModifier_Content<OnSearchFocusChangeModifier>(255);
    type metadata accessor for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<OnSearchFocusChangeModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OnSearchFocusChangeModifier>)
  {
    lazy protocol witness table accessor for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<OnSearchFocusChangeModifier>);
    }
  }
}

void type metadata accessor for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>)
  {
    v0 = type metadata accessor for _PreferenceActionModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>);
    }
  }
}

uint64_t ResolvedNavigationSplitStyle.ResolvedSidebarContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t ResolvedNavigationSplitStyle.ContentListContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 1;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedNavigationSplitStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t *assignWithCopy for NavigationSplitViewStyleConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for NavigationSplitViewStyleConfiguration(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitViewStyleConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for NavigationSplitViewStyleConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationSplitStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for SearchNavigationSplitViewModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>);
    }
  }
}

void type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>)
  {
    v4[0] = &type metadata for NavigationSplitViewStyleConfiguration.Sidebar;
    v4[1] = &unk_1EFFB3868;
    v4[2] = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
    v4[3] = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent();
    v2 = type metadata accessor for StaticSourceWriter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationSplitStyle.ResolvedSidebarContent, &unk_1EFFB3868, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationSplitStyle.ResolvedSidebarContent, &unk_1EFFB3868, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, lazy protocol witness table accessor for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>, &protocol witness table for StaticSourceWriter<A, B>);
    v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>, type metadata accessor for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, protocol conformance descriptor for NavigationSplitView<A, B, C>);
    v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarStyleModifier<_AutomaticSidebarStyle> and conformance SidebarStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type SidebarStyleModifier<_AutomaticSidebarStyle> and conformance SidebarStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type SidebarStyleModifier<_AutomaticSidebarStyle> and conformance SidebarStyleModifier<A>)
  {
    type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle>(255, &lazy cache variable for type metadata for SidebarStyleModifier<_AutomaticSidebarStyle>, lazy protocol witness table accessor for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle, &type metadata for _AutomaticSidebarStyle, type metadata accessor for SidebarStyleModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarStyleModifier<_AutomaticSidebarStyle> and conformance SidebarStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle()
{
  result = lazy protocol witness table cache variable for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle;
  if (!lazy protocol witness table cache variable for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _AutomaticSidebarStyle, &type metadata for _AutomaticSidebarStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &type metadata for SearchNavigationSplitViewColumnModifier, MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for NavigationSplitViewStyleConfiguration.Detail;
    v4[1] = &protocol witness table for SearchNavigationSplitViewColumnModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for NavigationSplitViewStyleConfiguration.Content;
    v5[1] = lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>>, type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, type metadata accessor for StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, lazy protocol witness table accessor for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>);
    v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, &unk_1EFFB3868, &type metadata for SearchNavigationSplitViewColumnModifier, MEMORY[0x1E697E830]);
    type metadata accessor for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>)
  {
    v4[0] = &type metadata for _SidebarConfiguration.Sidebar;
    v4[1] = &type metadata for NavigationSplitViewStyleConfiguration.Sidebar;
    v4[2] = lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar();
    v4[3] = &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar;
    v2 = type metadata accessor for StaticSourceWriter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, &unk_1EFFB3868, &type metadata for SearchNavigationSplitViewColumnModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent();
    v5[1] = &protocol witness table for SearchNavigationSplitViewColumnModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t View.listSectionCornerRadius(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15[1] = a5;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionCornerRadiusTraitKey>, &type metadata for ListSectionCornerRadiusTraitKey, &protocol witness table for ListSectionCornerRadiusTraitKey, MEMORY[0x1E697FDB8]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  v17 = a1;
  a2 &= 1u;
  v18 = a2;
  View.trait<A>(key:value:)(&type metadata for ListSectionCornerRadiusTraitKey, &v17, a3, &type metadata for ListSectionCornerRadiusTraitKey, a4, &protocol witness table for ListSectionCornerRadiusTraitKey);
  swift_getKeyPath();
  v17 = a1;
  v18 = a2;
  v13 = lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>();
  v16[0] = a4;
  v16[1] = v13;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v16);
  View.environment<A>(_:_:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t EnvironmentValues.listSectionCornerRadius.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.listSectionCornerRadius : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for EnvironmentValues.listSectionCornerRadius : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionCornerRadiusTraitKey>, &type metadata for ListSectionCornerRadiusTraitKey, &protocol witness table for ListSectionCornerRadiusTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.listSectionCornerRadius.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double View.writingToolsAffordanceVisibility(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.writingToolsAffordanceVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.writingToolsAffordanceVisibility : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.writingToolsAffordanceVisibility : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t TabContent.sectionActions<A>(content:)@<X0>(void (*a1)(double)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v21 = a5;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TabSectionActionsModifier(0, v13, v14, v13);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  a1(v17);
  (*(v10 + 32))(v19, v12, a4);
  TabContent.modifier<A>(_:)(v19, a3, v15, x8_0);
  return (*(v16 + 8))(v19, v15);
}

uint64_t TabSectionActionsModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for TabSectionActionsModifier<A>);
  type metadata accessor for _ViewModifier_Content();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  type metadata accessor for TabSectionActions(255, v4, v5, v6);
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for TupleView();
  v8 = type metadata accessor for Group();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19[-v14];
  v20 = v4;
  v21 = v5;
  v22 = v2;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981F48], v7, v13);
  Group<A>.init(content:)();
  v23 = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E6981600], v8, &v23);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v9 + 8);
  v17(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v15, v8);
}

uint64_t closure #1 in TabSectionActionsModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TabSectionActions(0, v10, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - v18;
  v21 = type metadata accessor for TabSectionActionsModifier(255, a2, a3, v20);
  swift_getWitnessTable(protocol conformance descriptor for TabSectionActionsModifier<A>, v21);
  v22 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v22);
  static ViewBuilder.buildExpression<A>(_:)();
  (*(v7 + 16))(v9, a1, a2);
  (*(v7 + 32))(v16, v9, a2);
  v24 = swift_getWitnessTable(protocol conformance descriptor for TabSectionActions<A>, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  v25 = *(v14 + 8);
  v25(v16, v13);
  (*(v14 + 16))(v16, v19, v13);
  v30 = v16;
  v28[0] = v22;
  v28[1] = v13;
  v27[2] = WitnessTable;
  v27[3] = v24;
  static ViewBuilder.buildBlock<each A>(_:)(v29, 2uLL, v28);
  v25(v19, v13);
  return (v25)(v16, v13);
}

uint64_t TabSectionActions.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = *(a1 + 16);
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarSectionActionStyleContext>, lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext, &type metadata for SidebarSectionActionStyleContext, MEMORY[0x1E697F4C8]);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DropDestinationUsesTraitKeyInput>, lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, MEMORY[0x1E697FD28]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for _VariadicView.Tree();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = *(a1 + 24);
  v22[4] = v3;
  v22[5] = v13;
  v22[6] = v22[0];
  _VariadicView.Tree.init(_:content:)();
  v14 = lazy protocol witness table accessor for type ActionPreparer and conformance ActionPreparer();
  v15 = lazy protocol witness table accessor for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>();
  v25[0] = v13;
  v25[1] = v15;
  v16 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v25);
  v18 = lazy protocol witness table accessor for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>();
  v24[0] = WitnessTable;
  v24[1] = v18;
  v19 = swift_getWitnessTable(v16, v5, v24);
  v23[0] = v14;
  v23[1] = v19;
  swift_getWitnessTable(MEMORY[0x1E697E308], v6, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v7 + 8);
  v20(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v12, v6);
}

uint64_t closure #1 in TabSectionActions.body.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarSectionActionStyleContext>, lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext, &type metadata for SidebarSectionActionStyleContext, MEMORY[0x1E697F4C8]);
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - v6;
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DropDestinationUsesTraitKeyInput>, lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, MEMORY[0x1E697FD28]);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext();
  View.styleContext<A>(_:)();
  v15 = lazy protocol witness table accessor for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>();
  v23[0] = a2;
  v23[1] = v15;
  v16 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v23);
  lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput();
  View.input<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v18 = lazy protocol witness table accessor for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>();
  v22[0] = WitnessTable;
  v22[1] = v18;
  swift_getWitnessTable(v16, v8, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v9 + 8);
  v19(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v14, v8);
}

unint64_t lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext()
{
  result = lazy protocol witness table cache variable for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext;
  if (!lazy protocol witness table cache variable for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarSectionActionStyleContext, &type metadata for SidebarSectionActionStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext);
  }

  return result;
}

void type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ActionPreparer and conformance ActionPreparer()
{
  result = lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer;
  if (!lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionPreparer, &unk_1EFFB3A18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer;
  if (!lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionPreparer, &unk_1EFFB3A18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarSectionActionStyleContext>, lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext, &type metadata for SidebarSectionActionStyleContext, MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DropDestinationUsesTraitKeyInput>, lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ActionPreparer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ActionPreparer and conformance ActionPreparer();
  *(a1 + 8) = result;
  return result;
}

double closure #1 in ActionPreparer.body(children:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a2 + 264);
  v9 = static HorizontalAlignment.center.getter();
  LOBYTE(v10[0]) = 1;
  outlined init with copy of _VariadicView_Children.Element(a1, v10 + 8);
  v11 = 1;
  type metadata accessor for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(0);
  lazy protocol witness table accessor for type ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>();
  View.platformItemTrait<A, B, C>(for:strategy:source:)();
  outlined destroy of ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(&v9);
  *(a2 + 240) = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  result = *&v9;
  v7 = v10[0];
  v8 = v10[1];
  *(a2 + 248) = v9;
  *v5 = v7;
  v5[1] = v8;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance ActionPreparer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ActionPreparer and conformance ActionPreparer();

  return MEMORY[0x1EEDDCF88](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for _VariadicView_ViewRoot.body(children:) in conformance ActionPreparer(uint64_t a1)
{
  outlined init with copy of _VariadicView_Children(a1, v2);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>(0);
  lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>);
  lazy protocol witness table accessor for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element();
  return ForEach<>.init(_:content:)();
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>(255);
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>, &type metadata for TabIdentifiedDropOntoTraitKey, &protocol witness table for TabIdentifiedDropOntoTraitKey, MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>)
  {
    type metadata accessor for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(255);
    type metadata accessor for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>)
  {
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for VStack<_VariadicView_Children.Element>, MEMORY[0x1E697FFB8], MEMORY[0x1E697FFB0], MEMORY[0x1E6981860]);
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>, MEMORY[0x1E6980698], MEMORY[0x1E6980690], MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>);
    }
  }
}

void type metadata accessor for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>()
{
  if (!lazy cache variable for type metadata for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>)
  {
    v0 = type metadata accessor for PlatformItemTraitWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>);
    }
  }
}

void type metadata accessor for VStack<_VariadicView_Children.Element>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<_VariadicView_Children.Element> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<_VariadicView_Children.Element> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<_VariadicView_Children.Element> and conformance VStack<A>)
  {
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for VStack<_VariadicView_Children.Element>, MEMORY[0x1E697FFB8], MEMORY[0x1E697FFB0], MEMORY[0x1E6981860]);
    result = swift_getWitnessTable(MEMORY[0x1E6981870], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<_VariadicView_Children.Element> and conformance VStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey> and conformance PlatformItemTraitWriter<A, B, C>()
{
  result = lazy protocol witness table cache variable for type PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey> and conformance PlatformItemTraitWriter<A, B, C>;
  if (!lazy protocol witness table cache variable for type PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey> and conformance PlatformItemTraitWriter<A, B, C>)
  {
    type metadata accessor for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>();
    result = swift_getWitnessTable(MEMORY[0x1E6980240], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey> and conformance PlatformItemTraitWriter<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified()
{
  result = lazy protocol witness table cache variable for type TabPlatformIdentified and conformance TabPlatformIdentified;
  if (!lazy protocol witness table cache variable for type TabPlatformIdentified and conformance TabPlatformIdentified)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabPlatformIdentified, &type metadata for TabPlatformIdentified, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabPlatformIdentified and conformance TabPlatformIdentified);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>, &type metadata for TabIdentifiedDropOntoTraitKey, &protocol witness table for TabIdentifiedDropOntoTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>> and conformance <> ForEach<A, B, C>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E69819D0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

void type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>(255);
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for VersionSeedTracker(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VersionSeedTracker(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

BOOL specialized VersionSeedTracker.didChange(_:action:)(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  PreferenceValues.subscript.getter();
  v8 = v12 == -1 || *a2 != v12;
  v9 = *a2 == -1 || v8;
  if (*a2 == -1 || v8)
  {
    *a2 = v12;
    *(a3 + direct field offset for ToolbarBridge.navigationAdaptor) = v11;
    swift_bridgeObjectRetain_n();

    *(a4 + 10) = 1;
  }

  return v9;
}

double FocusBridge.updatedFocusItem(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  outlined init with copy of FocusItem?(a1, v6);
  if (v7)
  {
    v3 = 0;
  }

  else
  {
    v3 = v8 == 1;
  }

  if (v3)
  {
    outlined destroy of FocusItem?(v6);
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = xmmword_18CD6A6D0;
  }

  else
  {
    outlined init with take of FocusItem(v6, v10);
    outlined init with copy of FocusItem(v10, v6);
    DisplayList.Version.init(forUpdate:)();
    outlined destroy of FocusItem(v10);
    v9 = v5;
    outlined init with take of FocusItem(v6, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusBridge.Flags and conformance FocusBridge.Flags()
{
  result = lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags;
  if (!lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusBridge.Flags, &type metadata for FocusBridge.Flags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags;
  if (!lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusBridge.Flags, &type metadata for FocusBridge.Flags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags;
  if (!lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusBridge.Flags, &type metadata for FocusBridge.Flags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags;
  if (!lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusBridge.Flags, &type metadata for FocusBridge.Flags, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags);
  }

  return result;
}

double FocusBridge.resetFocus(in:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = FocusBridge.host.getter();
  if (!v6)
  {
    return result;
  }

  v8 = v6;
  FocusBridge.focusedItem.getter(&v18);
  if (v22)
  {
    v9 = 0;
  }

  else
  {
    v9 = v23 == 1;
  }

  if (v9)
  {

    outlined destroy of FocusItem?(&v18);
    return result;
  }

  Strong = swift_weakLoadStrong();
  outlined destroy of FocusItem?(&v18);
  if (!Strong)
  {

    return result;
  }

  ResponderNode.sequence.getter();
  v11 = v20;
  v16 = v18;
  v17 = v19;
  if (v21)
  {

    goto LABEL_25;
  }

  v20(&v18, &v16);
  if (!v18)
  {
LABEL_24:

    goto LABEL_25;
  }

  type metadata accessor for FocusNamespaceViewResponder(0);
  while (1)
  {
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = v12;
    if (AGSubgraphIsValid())
    {
      AGGraphClearUpdate();
      static Update.ensure<A>(_:)();
      AGGraphSetUpdate();
    }

    if ((*(v13 + 224) & 1) == 0)
    {
      break;
    }

    if (a2)
    {
      goto LABEL_21;
    }

LABEL_14:

    v11(&v18, &v16);
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  if ((a2 & 1) != 0 || *(v13 + 216) != a1)
  {
    goto LABEL_14;
  }

LABEL_21:
  *(v3 + 168) = a1;
  *(v3 + 176) = a2 & 1;
  v14 = FocusBridge.host.getter();
  if (v14)
  {
    v15 = v14;
    [v14 setNeedsFocusUpdate];
  }

LABEL_25:

  return result;
}

unint64_t type metadata accessor for UIFocusItem()
{
  result = lazy cache variable for type metadata for UIFocusItem;
  if (!lazy cache variable for type metadata for UIFocusItem)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFocusItem);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void *WidgetHost.__allocating_init(content:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized WidgetHost.init(content:)(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

void *WidgetHost.init(content:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized WidgetHost.init(content:)(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

double WidgetHost.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t WidgetBundleHost.__allocating_init<A>(bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = specialized WidgetBundleHost.init<A>(bundle:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t WidgetBundleHost.init<A>(bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized WidgetBundleHost.init<A>(bundle:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t WidgetHost.readPreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mainThreadPrecondition()();
  swift_getAssociatedTypeWitness();
  return static Update.ensure<A>(_:)();
}

void closure #1 in WidgetHost.setEnvironment(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GraphHost.setEnvironment(_:)();
  GraphHost.setNeedsUpdate(mayDeferUpdate:values:)();
  GraphHost.runTransaction()();
}

void *specialized WidgetHost.init(content:)(uint64_t a1)
{
  type metadata accessor for WidgetGraph(0);
  static Update.ensure<A>(_:)();
  *(v1 + 16) = v3;
  return v1;
}

uint64_t specialized WidgetBundleHost.init<A>(bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WidgetGraph(0);
  static Update.ensure<A>(_:)();
  *(v3 + 16) = v5;
  return v3;
}

uint64_t partial apply for closure #1 in WidgetBundleHost.init<A>(bundle:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  type metadata accessor for WidgetGraph(0);
  result = a1(v7, v5, v6);
  *a2 = result;
  return result;
}

void specialized SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t *a1, void *a2, int a3, uint64_t a4, int a5)
{
  v6 = v5;
  v42 = a5;
  v43 = a3;
  v41 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v41);
  v40[1] = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7D40];
  if (a4)
  {
    v12 = *a1;
    v13 = *(a4 + direct field offset for UIHostingController.host);
    v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x60);
    swift_beginAccess();
    *(v13 + v14) = v12;

    v15 = v13;

    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v16 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willPresent != -1)
  {
    swift_once();
  }

  [v16 postNotificationName:static SheetPopoverBridgeNotifications.willPresent object:0];

  MEMORY[0x1EEE9AC00](v17);
  v40[-4] = a4;
  v40[-3] = a1;
  v40[-2] = v6;
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, type metadata accessor for PresentationHostingController);
  static Update.ensure<A>(_:)();
  v18 = v44;
  v19 = direct field offset for UIHostingController.host;
  *(*&v44[direct field offset for UIHostingController.host] + *((*v11 & **&v44[direct field offset for UIHostingController.host]) + 0x1C0) + 8) = &protocol witness table for SheetBridge<A>;
  swift_unknownObjectWeakAssign();
  v20 = *&v18[v19];
  v21 = a1[12];
  v44 = a1[11];
  v45 = v21;

  v22 = v20;

  UIHostingViewBase.environmentOverride.setter();

  specialized PresentationHostingController.setupDelayIfNeeded()();
  specialized PresentationHostingController.setupSheet(for:presenter:placement:)(0, a2, *(a1 + 72));
  v23 = *(v6 + direct field offset for SheetBridge.lastEnvironment + 8);
  v44 = *(v6 + direct field offset for SheetBridge.lastEnvironment);
  v45 = v23;

  EnvironmentValues.explicitPreferredColorScheme.getter();

  if (v46 != 2)
  {
    v24 = *&v18[v19];
    v25 = *((*v11 & *v24) + 0xF8);
    v26 = *(v24 + v25);
    *(v24 + v25) = v46;
    v27 = v24;
    specialized _UIHostingView.didChangeColorScheme(from:)(v26);

    v28 = [v18 presentationController];
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
LABEL_12:
        UIPresentationController.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
        UIPresentationController.traitOverrides.setter();

        goto LABEL_13;
      }
    }

    v32 = [v18 popoverPresentationController];
    if (!v32)
    {
      goto LABEL_13;
    }

    v33 = v32;
    v31 = [v32 adaptiveSheetPresentationController];

    if (!v31)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v34 = v42;
  LODWORD(v46) = *(v6 + direct field offset for SheetBridge.seed);
  if (v42)
  {
    swift_beginAccess();
    PresentationState.presentPreemptingDismissal(_:presentedVC:presentationSeed:)(a1, v18, &v46);
  }

  else
  {
    swift_beginAccess();
    PresentationState.present(_:presentedVC:presentationSeed:)();
  }

  swift_endAccess();
  LOBYTE(v44) = 17;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = *(v6 + direct field offset for SheetBridge.seed);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v34 & 1;
  *(v37 + 32) = a2;
  *(v37 + 40) = v43 & 1;
  *(v37 + 44) = v36;
  *(v37 + 48) = v18;

  v38 = a2;
  v39 = v18;
  static Update.enqueueAction(reason:_:)();
}

char *specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(char *a1, uint64_t *a2, void *a3)
{
  return specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3);
}

{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 73);
    v8 = *(a2 + 72);
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, type metadata accessor for PresentationHostingController);
    objc_allocWithZone(v9);

    v10 = a3;
    v4 = specialized PresentationHostingController.init(rootView:delegate:placement:legacyDrawsBackground:)(v6, a3, &protocol witness table for SheetBridge<A>, v8, v7);
    v11 = *&v4[direct field offset for UIHostingController.host];
    UIHostingViewBase.viewGraph.getter();

    GraphHost.addPreference<A>(_:)();
  }

  v12 = a1;
  return v4;
}

void specialized closure #3 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t a1, char a2, void *a3, char a4, int a5, void *a6)
{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    v37 = v51;
    *v38 = v52[0];
    *&v38[11] = *(v52 + 11);
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v31[4] = v43;
    v31[5] = v44;
    v31[6] = v45;
    v32 = v46;
    v31[0] = aBlock;
    v31[1] = v40;
    v31[2] = v41;
    v31[3] = v42;
    if (BYTE10(v52[1]) > 1u)
    {

      outlined destroy of PresentationState.Base(v31);
      return;
    }

    outlined destroy of SheetPreference(v31);
    if ((a2 & 1) == 0)
    {
      v14 = [a3 presentedViewController];
      if (v14)
      {
        v15 = v14;
        if (([v14 isBeingDismissed] & 1) == 0)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v16 = [v15 preferredTransition];
            if (v16)
            {

              v17 = swift_dynamicCastClass();
              if (v17)
              {
                v18 = v17;
                v19 = swift_unknownObjectWeakLoadStrong();
                if (v19)
                {
                  v20 = v19;
                  v30 = v15;
                  v21 = [v20 window];
                  if (v21)
                  {
                    v22 = v21;

                    v20 = v22;
                  }

                  else
                  {
                    [v18 setPreferredTransition_];
                  }
                }
              }
            }

            [a3 dismissViewControllerAnimated:a4 & 1 completion:0];
          }
        }
      }
    }

    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    PresentationState.Base.presentationSeed.getter(v31);
    outlined destroy of PresentationState(&aBlock);
    if ((BYTE4(v31[0]) & 1) != 0 || LODWORD(v31[0]) == -1 || a5 == -1 || LODWORD(v31[0]) != a5)
    {
      goto LABEL_23;
    }

    if (a4)
    {
      [a3 presentViewController:a6 animated:1 completion:0];
LABEL_23:

      return;
    }

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a6;
    v25 = swift_allocObject();
    *(v25 + 16) = _s7SwiftUI11SheetBridgeC7present33_9124433AF4D3FE5B3E95880733BE7575LL_4from8animated19existingPresentedVC12isPreemptingyAA0C10PreferenceV_So16UIViewControllerCSbAA019PresentationHostingU0CyAA7AnyViewVGSgSbtFyycfU1_yyXEfU_TA_0;
    *(v25 + 24) = v24;
    *&v41 = partial apply for thunk for @callee_guaranteed () -> ();
    *(&v41 + 1) = v25;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v40 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v40 + 1) = &block_descriptor_23;
    v26 = _Block_copy(&aBlock);
    v27 = a3;
    v28 = a6;

    [v23 _performWithoutDeferringTransitions_];

    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    v37 = v51;
    *v38 = v52[0];
    *&v38[11] = *(v52 + 11);
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v31[4] = v43;
    v31[5] = v44;
    v31[6] = v45;
    v32 = v46;
    v31[0] = aBlock;
    v31[1] = v40;
    v31[2] = v41;
    v31[3] = v42;
    if (BYTE10(v52[1]) >= 2u)
    {

      outlined destroy of PresentationState.Base(v31);
      return;
    }

    outlined destroy of SheetPreference(v31);
    if ((a2 & 1) == 0)
    {
      v14 = [a3 presentedViewController];
      if (v14)
      {
        v15 = v14;
        if (![v14 isBeingDismissed])
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v16 = [v15 preferredTransition];
            if (v16)
            {

              v17 = swift_dynamicCastClass();
              if (v17)
              {
                v18 = v17;
                v19 = swift_unknownObjectWeakLoadStrong();
                if (v19)
                {
                  v20 = v19;
                  v30 = v15;
                  v21 = [v20 window];
                  if (v21)
                  {
                    v22 = v21;

                    v20 = v22;
                  }

                  else
                  {
                    [v18 setPreferredTransition_];
                  }
                }
              }
            }

            [a3 dismissViewControllerAnimated:a4 & 1 completion:0];
          }
        }
      }
    }

    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    PresentationState.Base.presentationSeed.getter(v31);
    outlined destroy of PresentationState(&aBlock);
    if ((BYTE4(v31[0]) & 1) != 0 || LODWORD(v31[0]) == -1 || a5 == -1 || LODWORD(v31[0]) != a5)
    {
      goto LABEL_23;
    }

    if (a4)
    {
      [a3 presentViewController:a6 animated:1 completion:0];
LABEL_23:

      return;
    }

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a6;
    v25 = swift_allocObject();
    *(v25 + 16) = closure #1 in closure #3 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)partial apply;
    *(v25 + 24) = v24;
    *&v41 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    *(&v41 + 1) = v25;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v40 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v40 + 1) = &block_descriptor_32_0;
    v26 = _Block_copy(&aBlock);
    v27 = a3;
    v28 = a6;

    [v23 _performWithoutDeferringTransitions_];

    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void specialized SheetBridge.update(presentation:in:transaction:)(uint64_t *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *a1;
  v8 = direct field offset for UIHostingController.host;
  v9 = *&a2[direct field offset for UIHostingController.host];
  specialized _UIHostingView.setRootView(_:transaction:)(v7, a3);

  v10 = *&a2[v8];
  v11 = MEMORY[0x1E69E7D40];

  v12 = v10;

  UIHostingViewBase.environmentOverride.setter();

  if (*(*&a2[v8] + *((*v11 & **&a2[v8]) + 0xF8)) == 2)
  {

    EnvironmentValues.explicitPreferredColorScheme.getter();

    if (v23 != 2)
    {
      v13 = *&a2[v8];
      v14 = *((*v11 & *v13) + 0xF8);
      v15 = *(v13 + v14);
      *(v13 + v14) = v23;
      v16 = v13;
      specialized _UIHostingView.didChangeColorScheme(from:)(v15);

      v17 = [a2 presentationController];
      if (v17)
      {
        v18 = v17;
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          v20 = v19;
LABEL_9:
          UIPresentationController.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIPresentationController.traitOverrides.setter();

          goto LABEL_10;
        }
      }

      v21 = [a2 popoverPresentationController];
      if (v21)
      {
        v22 = v21;
        v20 = [v21 adaptiveSheetPresentationController];

        if (v20)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
  specialized PresentationHostingController.updateFullScreenInteractiveDismissIfNeeded(disabled:)(a2[direct field offset for PresentationHostingController.lastInteractiveDismissDisabled]);
}

void specialized SheetBridge.contingentlyPresent(_:from:animated:)(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v8);
  v9 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v3 + v9, v63);
  v10 = PresentationState.isDismissingFromSheetBridge.getter();
  outlined destroy of PresentationState(v63);
  if (v10)
  {
    outlined init with copy of PresentationState(v4 + v9, v63);
    v11 = PresentationState.isDismissalPreemptable.getter();
    outlined destroy of PresentationState(v63);
    if ((v11 & 1) == 0 || ![a2 _willPreemptRunningPresentationTransition])
    {
      swift_beginAccess();
      PresentationState.enqueueDelayedPresentation_IsDismissing(_:animated:)(a1, a3 & 1);
      swift_endAccess();
      return;
    }

    outlined init with copy of PresentationState(v4 + v9, v63);
    v12 = PresentationState.Base.presentedVC.getter();
    outlined destroy of PresentationState(v63);
    if (v12)
    {
      v12[direct field offset for PresentationHostingController.wasPreempted] = 1;
    }

    v50 = v8;
    v54 = a2;
    v53 = a3;
    v13 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for willPresent != -1)
    {
      swift_once();
    }

    [v13 postNotificationName:static SheetPopoverBridgeNotifications.willPresent object:0];

    MEMORY[0x1EEE9AC00](v14);
    *(&v50 - 4) = 0;
    *(&v50 - 3) = a1;
    *(&v50 - 2) = v4;
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, type metadata accessor for PresentationHostingController);
    static Update.ensure<A>(_:)();
    v15 = *&v63[0];
    v16 = direct field offset for UIHostingController.host;
    *(*(*&v63[0] + direct field offset for UIHostingController.host) + *((*MEMORY[0x1E69E7D40] & **(*&v63[0] + direct field offset for UIHostingController.host)) + 0x1C0) + 8) = &protocol witness table for SheetBridge<A>;
    swift_unknownObjectWeakAssign();
    v51 = v16;
    v17 = *&v15[v16];
    v18 = *(a1 + 96);
    *&v63[0] = *(a1 + 88);
    *(&v63[0] + 1) = v18;

    v19 = v17;

    UIHostingViewBase.environmentOverride.setter();

    specialized PresentationHostingController.setupDelayIfNeeded()();
    v52 = a1;
    specialized PresentationHostingController.setupSheet(for:presenter:placement:)(0, v54, *(a1 + 72));
    v20 = *(v4 + direct field offset for SheetBridge.lastEnvironment + 8);
    *&v63[0] = *(v4 + direct field offset for SheetBridge.lastEnvironment);
    *(&v63[0] + 1) = v20;

    EnvironmentValues.explicitPreferredColorScheme.getter();

    if (LOBYTE(v55[0]) == 2)
    {
      goto LABEL_37;
    }

    v21 = *&v15[v51];
    v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0xF8);
    v23 = *(v21 + v22);
    *(v21 + v22) = v55[0];
    v24 = v21;
    specialized _UIHostingView.didChangeColorScheme(from:)(v23);

    v25 = [v15 presentationController];
    if (v25)
    {
      v26 = v25;
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
LABEL_36:
        UIPresentationController.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
        UIPresentationController.traitOverrides.setter();

LABEL_37:
        v45 = direct field offset for SheetBridge.seed;
        LODWORD(v55[0]) = *(v4 + direct field offset for SheetBridge.seed);
        swift_beginAccess();
        PresentationState.presentPreemptingDismissal(_:presentedVC:presentationSeed:)(v52, v15, v55);
        swift_endAccess();
        LOBYTE(v63[0]) = 17;
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        LODWORD(v45) = *(v4 + v45);
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        *(v47 + 24) = 1;
        v48 = v54;
        *(v47 + 32) = v54;
        *(v47 + 40) = v53 & 1;
        *(v47 + 44) = v45;
        *(v47 + 48) = v15;

        v49 = v48;
        v30 = v15;
        static Update.enqueueAction(reason:_:)();

        goto LABEL_38;
      }
    }

    v43 = [v15 popoverPresentationController];
    if (!v43)
    {
      goto LABEL_37;
    }

    v44 = v43;
    v28 = [v43 adaptiveSheetPresentationController];

    if (!v28)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  outlined init with copy of PresentationState(v4 + v9, v63);
  v61 = v70;
  v62[0] = v71[0];
  *(v62 + 11) = *(v71 + 11);
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v55[4] = v63[4];
  v55[5] = v63[5];
  v55[6] = v64;
  v56 = v65;
  v55[0] = v63[0];
  v55[1] = v63[1];
  v55[2] = v63[2];
  v55[3] = v63[3];
  if (BYTE10(v71[1]) == 9)
  {

    outlined destroy of SheetPreference(v55);
    outlined init with copy of PresentationState(v4 + v9, v63);
    v29 = PresentationState.Base.presentedVC.getter();
    outlined destroy of PresentationState(v63);
    if (v29)
    {
      swift_beginAccess();
      outlined init with copy of SheetPreference(a1, v63);
      *&v65 = v29;
      BYTE8(v65) = a3 & 1;
      BYTE10(v71[1]) = 9;
      v30 = v29;
      PresentationState.base.willset(v63);
      outlined assign with take of PresentationState.Base(v63, v4 + v9);
      swift_endAccess();
LABEL_38:

      return;
    }
  }

  else
  {
    outlined destroy of PresentationState.Base(v55);
  }

  v31 = [a2 presentedViewController];
  if (v31)
  {
    v32 = v31;
    if ([v31 isBeingDismissed])
    {
      _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, type metadata accessor for PresentationHostingController);
      v33 = swift_dynamicCastClass();
      if (v33)
      {
        v34 = v33;
        swift_beginAccess();
        outlined init with copy of SheetPreference(a1, v63);
        *&v65 = v34;
        BYTE8(v65) = a3 & 1;
        BYTE10(v71[1]) = 9;
        v35 = v32;
        PresentationState.base.willset(v63);
        outlined assign with take of PresentationState.Base(v63, v4 + v9);
        swift_endAccess();
        *(v34 + direct field offset for PresentationHostingController.secondaryDismissDelegate + 8) = &protocol witness table for SheetBridge<A>;
        swift_unknownObjectWeakAssign();

        return;
      }
    }
  }

  if (*(v4 + direct field offset for SheetBridge.clientNeedsOutOfWindowPresentationSuppression) != 1)
  {
LABEL_29:
    outlined init with copy of PresentationState(v4 + v9, v63);
    v30 = PresentationState.Base.presentedVC.getter();
    outlined destroy of PresentationState(v63);
    specialized SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3 & 1, v30, 0);
    goto LABEL_38;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    goto LABEL_26;
  }

  v37 = v4 + direct field offset for SheetBridge.host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_40;
  }

  v38 = *(v37 + 8);
  ObjectType = swift_getObjectType();
  Strong = ViewGraphDelegate.uiPresenterViewController.getter(ObjectType, *(*(v38 + 16) + 8));
  swift_unknownObjectRelease();
  if (Strong)
  {
LABEL_26:
    v40 = [Strong view];

    if (v40)
    {
      v41 = [v40 window];

      if (v41)
      {

        goto LABEL_29;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

LABEL_30:
  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {

    MEMORY[0x18D009810](0xD0000000000000A0, 0x800000018CD43B20);
  }

  else
  {
    swift_beginAccess();
    outlined init with copy of SheetPreference(a1, v63);
    BYTE10(v64) = a3 & 1;
    BYTE10(v71[1]) = 10;
    PresentationState.base.willset(v63);
    outlined assign with take of PresentationState.Base(v63, v4 + v9);
    swift_endAccess();
  }
}

void UIKitInspectorBridgeV5.update(presentation:in:transaction:)(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (v3 != 2 && (v3 & 1) == 0)
  {
    v4 = a1;
    v5 = a2;
    v6 = a3;
    swift_beginAccess();
    PresentationState.dismissInspector()();
    swift_endAccess();
    a1 = v4;
    a2 = v5;
    a3 = v6;
  }

  specialized SheetBridge.update(presentation:in:transaction:)(a1, a2, a3);
}

void UIKitInspectorBridgeV5.contingentlyPresent(_:from:animated:)(uint64_t a1, void *a2, char a3)
{
  v3 = *(a1 + 104);
  if (v3 == 2 || (v3 & 1) != 0)
  {
    specialized SheetBridge.contingentlyPresent(_:from:animated:)(a1, a2, a3 & 1);
  }
}

Swift::Void __swiftcall UIKitInspectorBridgeV5.willTransitionToRegularSizeClass()()
{
  v1 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState.Base(v0 + v1, v2);
  if (v5 >= 2u)
  {
    if (v5 == 6)
    {
      outlined destroy of SheetPreference(v2);
    }

    else
    {
      outlined destroy of PresentationState.Base(v2);
    }
  }

  else
  {

    *(v11 + 10) = *&v3[10];
    v10 = v2[4];
    v11[0] = *v3;
    v8 = v2[2];
    v9 = v2[3];
    v6 = v2[0];
    v7 = v2[1];
    *&v3[10] = *(v11 + 10);
    v5 = 6;
    PresentationState.base.willset(v2);
    outlined assign with take of PresentationState.Base(v2, v0 + v1);
  }

  swift_endAccess();
}

uint64_t specialized closure #1 in PresentationHostingController.setupDelayIfNeeded()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[direct field offset for PresentationHostingController.isDelayingRemotePresentation] = 0;
  }

  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

char *specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  result = specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

char *partial apply for specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)@<X0>(char **a1@<X8>)
{
  return partial apply for specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1);
}

{
  result = specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

{
  result = specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

double specialized LinkShapeStyle._apply(to:)(uint64_t a1)
{

  EnvironmentValues.colorScheme.getter();

  Color.init(_:red:green:blue:opacity:)();
  Color._apply(to:)();

  return result;
}

void *destroy for AccessibilityTableContext(void *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 4)
  {
    v1 = *a1 + 4;
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for AccessibilityTableContext(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 4)
  {
    v2 = *a2 + 4;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        *result = *a2;
        *(result + 40) = 3;
        return result;
      }

      goto LABEL_11;
    }

LABEL_10:
    *result = *a2;
    *(result + 40) = v2;
    return result;
  }

  if (v2)
  {
    if (v2 != 1)
    {
LABEL_11:
      v3 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v3;
      *(result + 25) = *(a2 + 25);
      return result;
    }

    goto LABEL_10;
  }

  v4 = *(a2 + 24);
  *(result + 24) = v4;
  v5 = result;
  (**(v4 - 8))();
  result = v5;
  *(v5 + 40) = 0;
  return result;
}

uint64_t assignWithCopy for AccessibilityTableContext(uint64_t result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 4)
    {
      v2 = *result + 4;
    }

    if (!v2)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 4)
    {
      v5 = *a2 + 4;
    }

    if (v5 > 1)
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          *result = *a2;
          *(result + 40) = 3;
          return result;
        }

        goto LABEL_16;
      }

LABEL_15:
      *result = *a2;
      *(result + 40) = v5;
      return result;
    }

    if (v5)
    {
      if (v5 != 1)
      {
LABEL_16:
        v6 = *a2;
        v7 = a2[1];
        *(result + 25) = *(a2 + 25);
        *result = v6;
        *(result + 16) = v7;
        return result;
      }

      goto LABEL_15;
    }

    v8 = *(a2 + 3);
    *(result + 24) = v8;
    *(result + 32) = *(a2 + 4);
    v9 = result;
    (**(v8 - 8))();
    result = v9;
    *(v9 + 40) = 0;
  }

  return result;
}

__n128 assignWithTake for AccessibilityTableContext(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 4)
    {
      v2 = *a1 + 4;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 4)
    {
      v6 = *a2 + 4;
    }

    if (v6 > 1)
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          *a1 = *a2;
          *(a1 + 40) = 3;
          return result;
        }

LABEL_16:
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        result = *(a2 + 25);
        *(a1 + 25) = result;
        return result;
      }
    }

    else
    {
      if (!v6)
      {
        result = *a2;
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v8;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 0;
        return result;
      }

      if (v6 != 1)
      {
        goto LABEL_16;
      }
    }

    result = *a2;
    *a1 = *a2;
    *(a1 + 40) = v6;
  }

  return result;
}

uint64_t getEnumTag for AccessibilityTableContext(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AccessibilityTableContext(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t ModifiedContent<>.accessibilityTableContext(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 40) == 255)
  {

    return ModifiedContent<>.accessibility()(a2, a3);
  }

  else
  {
    result = outlined init with copy of AccessibilityTableContext?(a1, &v7, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    if (v8[24] == 255)
    {
      __break(1u);
    }

    else
    {
      v9 = v7;
      v10[0] = *v8;
      *(v10 + 9) = *&v8[9];
      v6 = lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
      ModifiedContent<>.update<A>(_:replacing:isEnabled:)(&type metadata for AccessibilityProperties.TableContextKey, &v9, 1, a2, &type metadata for AccessibilityProperties.TableContextKey, v6, a3);
      return _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(&v9, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720]);
    }
  }

  return result;
}

uint64_t AccessibilityTableContext.resolve(into:for:)(void *a1, uint64_t *a2)
{
  outlined init with copy of AccessibilityTableContext(v2, &v6);
  if (!v9)
  {
    *a1 |= 0x200000000000uLL;
    return outlined destroy of AccessibilityTableContext(&v6);
  }

  if (v9 != 4)
  {
    return outlined destroy of AccessibilityTableContext(&v6);
  }

  v4 = vorrq_s8(v7, v8);
  if (*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v6)
  {
    return outlined destroy of AccessibilityTableContext(&v6);
  }

  result = AccessibilityNullableOptionSet<>.subscript.getter();
  if (result == 2 || (result & 1) != 0)
  {
    *a1 |= 0x10000uLL;
  }

  return result;
}

uint64_t AccessibilityCollectionViewTableDataSource.rowCount.getter()
{
  v8 = 0;
  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v6);
  if (v7)
  {
    outlined init with copy of TableDataSourceAdaptor(v6, v5);
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v6, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    outlined init with copy of TableRowList(v5, v4);
    v1 = outlined destroy of TableDataSourceAdaptor(v5);
    MEMORY[0x1EEE9AC00](v1);
    static Update.ensure<A>(_:)();
    outlined destroy of TableRowList(v4);
  }

  else
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v6, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  }

  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v6);
  if (!v7)
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v6, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    return v8;
  }

  outlined init with copy of TableDataSourceAdaptor(v6, v5);
  outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v6, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  if (v5[168])
  {
    outlined destroy of TableDataSourceAdaptor(v5);
    return v8;
  }

  v2 = v5[169];
  outlined destroy of TableDataSourceAdaptor(v5);
  if (v2 == 2)
  {
    return v8;
  }

  result = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  return result;
}

BOOL AccessibilityCollectionViewTableDataSource.hasGlobalHeader.getter()
{
  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v4);
  if (!v5)
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v4, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    return 0;
  }

  outlined init with copy of TableDataSourceAdaptor(v4, v3);
  outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v4, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  if (v3[168] == 1)
  {
    outlined destroy of TableDataSourceAdaptor(v3);
    return 0;
  }

  v2 = v3[169];
  outlined destroy of TableDataSourceAdaptor(v3);
  return v2 != 2;
}

uint64_t AccessibilityCollectionViewTableDataSource.columnCount.getter()
{
  type metadata accessor for TableColumnCollection.Entry?(0, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16[-1] - v2;
  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v24);
  if (v25)
  {
    outlined init with copy of TableDataSourceAdaptor(v24, v22);
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v24, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    v4 = v23[120];
    outlined destroy of TableDataSourceAdaptor(v22);
    if (v4 == 1)
    {
      outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v24);
      if (v25)
      {
        outlined init with copy of TableDataSourceAdaptor(v24, v22);
        outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v24, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
        outlined init with copy of TableColumnCollection(v23, v21);
        outlined destroy of TableDataSourceAdaptor(v22);
        specialized Collection.first.getter(v3);
        outlined destroy of TableColumnCollection(v21);
        v5 = type metadata accessor for TableColumnCollection.Entry(0);
        if ((*(*(v5 - 8) + 48))(v3, 1, v5) != 1)
        {
          outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v3, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry);
          return 1;
        }
      }

      else
      {
        outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v24, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
        v14 = type metadata accessor for TableColumnCollection.Entry(0);
        (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
      }

      v8 = &lazy cache variable for type metadata for TableColumnCollection.Entry?;
      v9 = type metadata accessor for TableColumnCollection.Entry;
      v10 = v3;
      goto LABEL_15;
    }
  }

  else
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v24, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  }

  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v24);
  if (!v25)
  {
    v8 = &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?;
    v9 = type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>;
    v10 = v24;
LABEL_15:
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v10, v8, v9);
    return 0;
  }

  outlined init with copy of TableDataSourceAdaptor(v24, v22);
  outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v24, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  outlined init with copy of TableColumnCollection(v23, v21);
  outlined destroy of TableDataSourceAdaptor(v22);
  outlined init with copy of TableColumnCollection.Backing(v21, v19);
  if (v20)
  {
    v7 = *(*&v19[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v16);
    v11 = v17;
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v7 = (*(v12 + 8))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v13 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);
  outlined destroy of TableColumnCollection(v21);
  return v13;
}

void *AccessibilityCollectionViewTableAttachment.value.getter@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *WeakValue;
    v5 = *((*MEMORY[0x1E69E7D40] & **WeakValue) + 0x88);
    swift_beginAccess();
    outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>(v4 + v5, __src);
  }

  else
  {
    memset(__src, 0, 192);
  }

  if (AGGraphGetWeakValue())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v19 = &type metadata for AccessibilityCollectionViewTableDataSource;
  v20 = &protocol witness table for AccessibilityCollectionViewTableDataSource;
  v7 = swift_allocObject();
  v18 = v7;
  v8 = __src[9];
  v9 = __src[10];
  v10 = __src[7];
  *(v7 + 144) = __src[8];
  *(v7 + 160) = v8;
  v11 = __src[11];
  *(v7 + 176) = v9;
  *(v7 + 192) = v11;
  v12 = __src[5];
  *(v7 + 80) = __src[4];
  *(v7 + 96) = v12;
  *(v7 + 112) = __src[6];
  *(v7 + 128) = v10;
  v13 = __src[1];
  *(v7 + 16) = __src[0];
  *(v7 + 32) = v13;
  v14 = __src[3];
  *(v7 + 48) = __src[2];
  *(v7 + 64) = v14;
  *(v7 + 208) = Strong;
  v21 = 0;
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
  AccessibilityProperties.init<A>(_:_:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v22);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v15 = swift_allocObject();
  result = memcpy((v15 + 16), __src, 0x128uLL);
  *a2 = v15;
  a2[1] = 0;
  return result;
}

void type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>)
  {
    v4[0] = &type metadata for TableDataSourceAdaptor;
    v4[1] = &type metadata for AnySelectionManager;
    v4[2] = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    v4[3] = lazy protocol witness table accessor for type AnySelectionManager and conformance AnySelectionManager();
    v2 = type metadata accessor for UICollectionViewListCoordinator(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnySelectionManager and conformance AnySelectionManager()
{
  result = lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager;
  if (!lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnySelectionManager, &type metadata for AnySelectionManager, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager;
  if (!lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnySelectionManager, &type metadata for AnySelectionManager, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager);
  }

  return result;
}

uint64_t outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>)
  {
    v2 = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    v4 = type metadata accessor for ShadowListDataSource(a1, &type metadata for TableDataSourceAdaptor, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>);
    }
  }
}

uint64_t outlined destroy of AccessibilityTableContext(uint64_t result)
{
  if (*(result + 40) < 4u)
  {
    if (*(result + 40))
    {
      return result;
    }

LABEL_5:
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  if (*result == -4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TableColumnCollection.Entry?(0, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for TableColumnCollection.Entry?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for TableColumnCollection.Entry?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void destroy for AccessibilityCollectionViewTableDataSource(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    if (*(a1 + 88))
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 48));
    }

    if (*(a1 + 120))
    {
    }

    if (*(a1 + 144))
    {
    }
  }

  v2 = *(a1 + 192);
}

uint64_t initializeWithCopy for AccessibilityCollectionViewTableDataSource(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    v6 = *(a2 + 88);

    if (v6)
    {
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      v13 = *(a2 + 72);
      *(a1 + 72) = v13;
      (**(v13 - 8))(a1 + 48, a2 + 48);
    }

    *(a1 + 88) = v6;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v14 = *(a2 + 120);

    if (v14)
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = v14;
      *(a1 + 128) = *(a2 + 128);

      v15 = *(a2 + 144);
      if (v15)
      {
LABEL_8:
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 144) = v15;
        v16 = *(a2 + 160);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 160) = v16;

LABEL_11:
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 169) = *(a2 + 169);
        v17 = *(a2 + 184);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 184) = v17;

        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      v15 = *(a2 + 144);
      if (v15)
      {
        goto LABEL_8;
      }
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_11;
  }

  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  v8 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v8;
  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v10;
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v12;
LABEL_12:
  v18 = *(a2 + 192);
  *(a1 + 192) = v18;
  v19 = v18;
  return a1;
}

uint64_t assignWithCopy for AccessibilityCollectionViewTableDataSource(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (!v4)
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[3];
      *(a1 + 32) = a2[2];
      *(a1 + 48) = v17;
      *a1 = v15;
      *(a1 + 16) = v16;
      v18 = a2[4];
      v19 = a2[5];
      v20 = a2[7];
      *(a1 + 96) = a2[6];
      *(a1 + 112) = v20;
      *(a1 + 64) = v18;
      *(a1 + 80) = v19;
      v21 = a2[8];
      v22 = a2[9];
      v23 = a2[11];
      *(a1 + 160) = a2[10];
      *(a1 + 176) = v23;
      *(a1 + 128) = v21;
      *(a1 + 144) = v22;
      goto LABEL_34;
    }

    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 4);
    (**(v4 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 5);
    v5 = *(a2 + 88);

    if (v5)
    {
      *(a1 + 48) = *(a2 + 6);
    }

    else
    {
      v26 = *(a2 + 9);
      *(a1 + 72) = v26;
      *(a1 + 80) = *(a2 + 10);
      (**(v26 - 8))(a1 + 48, a2 + 3);
    }

    *(a1 + 88) = v5;
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
    v27 = *(a2 + 15);

    if (v27)
    {
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 128) = *(a2 + 16);

      if (*(a2 + 18))
      {
LABEL_20:
        *(a1 + 136) = *(a2 + 17);
        *(a1 + 144) = *(a2 + 18);
        *(a1 + 152) = *(a2 + 19);
        *(a1 + 160) = *(a2 + 20);

LABEL_24:
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 176) = *(a2 + 22);
        *(a1 + 184) = *(a2 + 23);

        goto LABEL_34;
      }
    }

    else
    {
      v29 = a2[7];
      *(a1 + 128) = *(a2 + 16);
      *(a1 + 112) = v29;
      if (*(a2 + 18))
      {
        goto LABEL_20;
      }
    }

    v30 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v30;
    goto LABEL_24;
  }

  if (v4)
  {
    __swift_assign_boxed_opaque_existential_1(a1, a2);
    *(a1 + 40) = *(a2 + 5);

    if (a1 != a2)
    {
      outlined destroy of TableColumnCollection.Backing(a1 + 48);
      if (*(a2 + 88))
      {
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 88) = 1;
      }

      else
      {
        v24 = *(a2 + 9);
        *(a1 + 72) = v24;
        *(a1 + 80) = *(a2 + 10);
        (**(v24 - 8))(a1 + 48, a2 + 3);
        *(a1 + 88) = 0;
      }
    }

    *(a1 + 96) = *(a2 + 12);

    *(a1 + 104) = *(a2 + 104);
    v25 = *(a2 + 15);
    if (*(a1 + 120))
    {
      if (v25)
      {
        *(a1 + 112) = *(a2 + 14);

        *(a1 + 120) = *(a2 + 15);

        *(a1 + 128) = *(a2 + 16);
      }

      else
      {
        outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(a1 + 112, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
        v28 = *(a2 + 16);
        *(a1 + 112) = a2[7];
        *(a1 + 128) = v28;
      }
    }

    else if (v25)
    {
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 128) = *(a2 + 16);
    }

    else
    {
      v31 = a2[7];
      *(a1 + 128) = *(a2 + 16);
      *(a1 + 112) = v31;
    }

    v32 = *(a2 + 18);
    if (*(a1 + 144))
    {
      if (v32)
      {
        *(a1 + 136) = *(a2 + 17);

        *(a1 + 144) = *(a2 + 18);

        *(a1 + 152) = *(a2 + 19);

        *(a1 + 160) = *(a2 + 20);
      }

      else
      {
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(a1 + 136, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
        v33 = *(a2 + 152);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 152) = v33;
      }
    }

    else if (v32)
    {
      *(a1 + 136) = *(a2 + 17);
      *(a1 + 144) = *(a2 + 18);
      *(a1 + 152) = *(a2 + 19);
      *(a1 + 160) = *(a2 + 20);
    }

    else
    {
      v34 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 136) = v34;
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 176) = *(a2 + 22);

    *(a1 + 184) = *(a2 + 23);
  }

  else
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(a1, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    v6 = a2[3];
    v8 = *a2;
    v7 = a2[1];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v6;
    *a1 = v8;
    *(a1 + 16) = v7;
    v9 = a2[7];
    v11 = a2[4];
    v10 = a2[5];
    *(a1 + 96) = a2[6];
    *(a1 + 112) = v9;
    *(a1 + 64) = v11;
    *(a1 + 80) = v10;
    v12 = a2[11];
    v14 = a2[8];
    v13 = a2[9];
    *(a1 + 160) = a2[10];
    *(a1 + 176) = v12;
    *(a1 + 128) = v14;
    *(a1 + 144) = v13;
  }

LABEL_34:
  v35 = *(a1 + 192);
  v36 = *(a2 + 24);
  *(a1 + 192) = v36;
  v37 = v36;

  return a1;
}

uint64_t outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t assignWithTake for AccessibilityCollectionViewTableDataSource(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      v5 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v5;

      if (a1 != a2)
      {
        outlined destroy of TableColumnCollection.Backing(a1 + 48);
        v6 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v6;
        *(a1 + 73) = *(a2 + 73);
      }

      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      if (*(a1 + 120))
      {
        if (*(a2 + 120))
        {
          *(a1 + 112) = *(a2 + 112);

          *(a1 + 120) = *(a2 + 120);

          *(a1 + 128) = *(a2 + 128);

          if (!*(a1 + 144))
          {
            goto LABEL_16;
          }

LABEL_13:
          if (*(a2 + 144))
          {
            *(a1 + 136) = *(a2 + 136);

            *(a1 + 144) = *(a2 + 144);

            *(a1 + 152) = *(a2 + 152);

            *(a1 + 160) = *(a2 + 160);

LABEL_17:
            *(a1 + 168) = *(a2 + 168);
            *(a1 + 169) = *(a2 + 169);
            *(a1 + 170) = *(a2 + 170);
            *(a1 + 176) = *(a2 + 176);

            *(a1 + 184) = *(a2 + 184);

            goto LABEL_18;
          }

          _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(a1 + 136, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
LABEL_16:
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = *(a2 + 152);
          goto LABEL_17;
        }

        outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(a1 + 112, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      }

      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      if (!*(a1 + 144))
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(a1, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  }

  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  v8 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v8;
  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v10;
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v12;
LABEL_18:
  v13 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);

  return a1;
}