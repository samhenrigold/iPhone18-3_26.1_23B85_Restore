uint64_t getEnumTagSinglePayload for ScrollViewBehavior.Phase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFD && *(a1 + 67))
  {
    return (*a1 + 2097150);
  }

  if ((((*(a1 + 66) >> 6) | (4 * ((*(a1 + 64) >> 2) & 0x3F80 | (*(a1 + 64) >> 1) | (((*(a1 + 66) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFFu) >= 0x1FFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 66) >> 6) | (4 * ((*(a1 + 64) >> 2) & 0x3F80 | (*(a1 + 64) >> 1) | (((*(a1 + 66) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior.Phase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 2097150;
    if (a3 >= 0x1FFFFE)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFE)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 66) = (v3 >> 13) & 0xFE;
      *(result + 64) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t getEnumTag for ScrollViewBehavior.Phase(uint64_t a1)
{
  if ((*(a1 + 64) | (*(a1 + 66) << 16)) << 8 >> 8 >= 0)
  {
    return *(a1 + 66) >> 6;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveProjectEnumData for ScrollViewBehavior.Phase(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x3F;
  *result = v2;
  return result;
}

uint64_t destructiveInjectEnumTag for ScrollViewBehavior.Phase(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64);
    result += 64;
    v3 = (v2 | (*(result + 2) << 16)) & 0x1010101 | (a2 << 22);
    *result = v2 & 0x101;
    *(result + 2) = BYTE2(v3);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 66) = 0x80;
    *(result + 64) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollViewBehavior.DragState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 67))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior.DragState(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CellConfiguration(char *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UICellConfigurationState();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
      memcpy(v4, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(v4, a2, v7);
      (*(v8 + 56))(v4, 0, 1, v7);
    }

    v11 = a3[6];
    v4[a3[5]] = *(a2 + a3[5]);
    v4[v11] = *(a2 + v11);
    v12 = a3[8];
    v4[a3[7]] = *(a2 + a3[7]);
    *&v4[v12] = *(a2 + v12);
    v13 = a3[9];
    v14 = &v4[v13];
    v15 = a2 + v13;
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
    *(v14 + 2) = *(v15 + 2);
    *(v14 + 24) = *(v15 + 24);
    *(v14 + 40) = *(v15 + 40);
    *(v14 + 7) = *(v15 + 7);
  }

  return v4;
}

double destroy for CellConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  return result;
}

char *initializeWithCopy for CellConfiguration(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v9] = a2[v9];
  v10 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[9];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  *(v12 + 2) = *(v13 + 2);
  *(v12 + 24) = *(v13 + 24);
  *(v12 + 40) = *(v13 + 40);
  *(v12 + 7) = *(v13 + 7);

  return a1;
}

char *assignWithCopy for CellConfiguration(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  a1[a3[5]] = a2[a3[5]];
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  v12 = a3[9];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];

  *(v13 + 1) = *(v14 + 1);

  *(v13 + 2) = *(v14 + 2);

  *(v13 + 3) = *(v14 + 3);
  *(v13 + 4) = *(v14 + 4);
  *(v13 + 5) = *(v14 + 5);
  *(v13 + 6) = *(v14 + 6);
  *(v13 + 7) = *(v14 + 7);
  return a1;
}

char *initializeWithTake for CellConfiguration(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v9] = a2[v9];
  v10 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[9];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  v15 = *(v13 + 3);
  *(v12 + 2) = *(v13 + 2);
  *(v12 + 3) = v15;
  return a1;
}

char *assignWithTake for CellConfiguration(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v12] = a2[v12];
  v13 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  *&a1[v13] = *&a2[v13];
  v14 = a3[9];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *&a1[v14] = *v16;

  *(v15 + 1) = *(v16 + 1);

  *(v15 + 2) = *(v16 + 2);

  *(v15 + 24) = *(v16 + 24);
  *(v15 + 40) = *(v16 + 40);
  *(v15 + 7) = *(v16 + 7);
  return a1;
}

uint64_t type metadata accessor for CellConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for CellConfiguration;
  if (!type metadata singleton initialization cache for CellConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CellConfiguration(uint64_t a1)
{
  type metadata accessor for UICellConfigurationState?(319, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t CellConfiguration.effectiveState.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + *(type metadata accessor for CellConfiguration(0) + 28));
  if (v11 == 2)
  {

    return outlined init with copy of UICellConfigurationState?(v2, a1);
  }

  else
  {
    outlined init with copy of UICellConfigurationState?(v2, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of UICellConfigurationState?(v6, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
      return (*(v8 + 56))(a1, 1, 1, v7);
    }

    else
    {
      v13 = *(v8 + 32);
      v13(v10, v6, v7);
      if (v11)
      {
        UICellConfigurationState.isDisabled.setter();
      }

      else if (UICellConfigurationState.isHighlighted.getter())
      {
        UICellConfigurationState.isHighlighted.setter();
        UICellConfigurationState.isSelected.setter();
      }

      v13(a1, v10, v7);
      return (*(v8 + 56))(a1, 0, 1, v7);
    }
  }
}

uint64_t CellConfiguration.backgroundConfiguration()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-v4];
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21[-v14];
  v16 = type metadata accessor for CellConfiguration(0);
  v17 = *(v1 + v16[5]);
  if (v17 == 3)
  {
    static UIBackgroundConfiguration.listAccompaniedSidebarCell()();
  }

  else if (v17 == 1)
  {
    if (*(v1 + v16[6]) == 1)
    {
      static UIBackgroundConfiguration.listHeader()();
    }

    else
    {
      static UIBackgroundConfiguration.listCell()();
    }

    (*(v10 + 32))(v15, v12, v9);
  }

  else
  {
    if (*(v1 + v16[8]) > 2uLL)
    {
      MEMORY[0x1EEE9AC00](v16);
      *&v21[-16] = v1;
      specialized static Log.internalWarning(_:)(partial apply for implicit closure #1 in CellConfiguration.backgroundConfiguration());
    }

    static UIBackgroundConfiguration.listCell()();
  }

  v18 = CellConfiguration.effectiveState.getter(v5);
  MEMORY[0x1EEE9AC00](v18);
  *&v21[-16] = v15;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF5UIKit24UICellConfigurationStateV_s5NeverOAD012UIBackgroundE0VTg5(partial apply for closure #1 in CellConfiguration.backgroundConfiguration(), &v21[-32], v8);
  outlined destroy of UICellConfigurationState?(v5, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  v19 = *(v10 + 48);
  if (v19(v8, 1, v9) == 1)
  {
    (*(v10 + 16))(a1, v15, v9);
    if (v19(v8, 1, v9) != 1)
    {
      outlined destroy of UICellConfigurationState?(v8, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
    }
  }

  else
  {
    (*(v10 + 32))(a1, v8, v9);
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t implicit closure #1 in CellConfiguration.backgroundConfiguration()(uint64_t a1)
{
  _StringGuts.grow(_:)(67);
  MEMORY[0x18D00C9B0](0xD000000000000041, 0x800000018CD40110);
  type metadata accessor for CellConfiguration(0);
  type metadata accessor for UITableViewStyle(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t closure #1 in CellConfiguration.backgroundConfiguration()(uint64_t a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v5[3] = v2;
  v5[4] = MEMORY[0x1E69DC0B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  UIBackgroundConfiguration.updated(for:)();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance CellConfigurationKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CellConfiguration(0);
  v3 = __swift_project_value_buffer(v2, static CellConfigurationKey.defaultValue);

  return outlined init with copy of CellConfiguration(v3, a1);
}

void EnvironmentValues.cellConfiguration.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.cellConfiguration.setter(uint64_t a1)
{
  v3 = type metadata accessor for CellConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  outlined init with copy of CellConfiguration(a1, &v10 - v7);
  outlined init with copy of CellConfiguration(v8, v5);
  type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of CellConfiguration(a1);
  return outlined destroy of CellConfiguration(v8);
}

double specialized CellConfiguration.Values.init(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIListContentConfiguration.textProperties.getter();
  UIListContentConfiguration.TextProperties.color.getter();
  v12 = *(v9 + 8);
  v12(v11, v8);
  type metadata accessor for UIKitPlatformColorDefinition(0);
  v32 = Color.init(_platformColor:definition:)();
  UIListContentConfiguration.imageProperties.getter();
  v13 = UIListContentConfiguration.ImageProperties.tintColor.getter();
  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    v14 = Color.init(_platformColor:definition:)();
  }

  else
  {
    v14 = 0;
  }

  UIListContentConfiguration.textProperties.getter();
  UIListContentConfiguration.TextProperties.font.getter();
  v12(v11, v8);
  v15 = Font.init(_:)();
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  UIListContentConfiguration.imageToTextPadding.getter();
  v25 = v24;
  v26 = type metadata accessor for UIListContentConfiguration();
  (*(*(v26 - 8) + 8))(a1, v26);
  *&v35 = v32;
  *(&v35 + 1) = v14;
  *&v36 = v15;
  *(&v36 + 1) = v17;
  *&v37 = v19;
  *(&v37 + 1) = v21;
  *&v38 = v23;
  *(&v38 + 1) = v25;
  v39[0] = v32;
  v39[1] = v14;
  v39[2] = v15;
  v39[3] = v17;
  v39[4] = v19;
  v39[5] = v21;
  v39[6] = v23;
  v39[7] = v25;
  outlined init with copy of CellConfiguration.Values(&v35, v34);
  outlined destroy of CellConfiguration.Values(v39);
  v27 = v36;
  v28 = v33;
  *v33 = v35;
  v28[1] = v27;
  result = *&v37;
  v30 = v38;
  v28[2] = v37;
  v28[3] = v30;
  return result;
}

uint64_t outlined init with copy of UICellConfigurationState?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CellConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<CellConfigurationKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CellConfigurationKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of CellConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for CellConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static Log.internalWarning(_:)(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18CD63400;
  _StringGuts.grow(_:)(38);

  v8 = a1(v3);
  v9 = v4;
  MEMORY[0x18D00C9B0](2108704, 0xE300000000000000);
  v5 = StaticString.description.getter();
  MEMORY[0x18D00C9B0](v5);

  MEMORY[0x18D00C9B0](58, 0xE100000000000000);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD400F0);
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  print(_:separator:terminator:)();
}

void type metadata accessor for _ContiguousArrayStorage<Any>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Any>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>);
    }
  }
}

double destroy for CellConfiguration.Values(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for CellConfiguration.Values(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = a2[7];

  return a1;
}

uint64_t *assignWithCopy for CellConfiguration.Values(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  return a1;
}

uint64_t assignWithTake for CellConfiguration.Values(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for CellConfiguration.Values(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for CellConfiguration.Values(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultTextFieldStyle._Body and conformance DefaultTextFieldStyle._Body()
{
  result = lazy protocol witness table cache variable for type DefaultTextFieldStyle._Body and conformance DefaultTextFieldStyle._Body;
  if (!lazy protocol witness table cache variable for type DefaultTextFieldStyle._Body and conformance DefaultTextFieldStyle._Body)
  {
    v3 = type metadata accessor for DefaultTextFieldStyle._Body(255);
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultTextFieldStyle._Body, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultTextFieldStyle._Body and conformance DefaultTextFieldStyle._Body);
  }

  return result;
}

uint64_t type metadata accessor for DefaultTextFieldStyle._Body(uint64_t a1)
{
  result = type metadata singleton initialization cache for DefaultTextFieldStyle._Body;
  if (!type metadata singleton initialization cache for DefaultTextFieldStyle._Body)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DefaultTextFieldStyle._Body(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = v4;
  v6 = *(*(v4 - 8) + 80);
  v7 = *a2;
  *a1 = *a2;
  if ((v6 & 0x20000) != 0)
  {
    a1 = v7 + ((v6 + 16) & ~v6);
  }

  else
  {
    v48 = v5;
    v8 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v8;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    v9 = a2[8];

    if (v9)
    {
      v10 = a2[5];
      v11 = a2[6];
      v12 = *(a2 + 56);
      outlined copy of Text.Storage(v10, v11, v12);
      *(a1 + 40) = v10;
      *(a1 + 48) = v11;
      *(a1 + 56) = v12;
      *(a1 + 64) = v9;
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
    }

    v13 = a2[9];
    v14 = a2[10];
    v15 = a2[11];
    v16 = a2[12];
    v17 = a2[13];
    v18 = a2[14];
    v20 = a2[15];
    v19 = a2[16];
    v40 = a2[17];
    v41 = a2[18];
    v42 = a2[19];
    v43 = a2[20];
    v44 = a2[21];
    v45 = *(a2 + 44);
    __dsta = *(a2 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v20, v19, v40, v41, v42, v43, v44, v45, __dsta);
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v15;
    *(a1 + 96) = v16;
    *(a1 + 104) = v17;
    *(a1 + 112) = v18;
    *(a1 + 120) = v20;
    *(a1 + 128) = v19;
    *(a1 + 136) = v40;
    *(a1 + 144) = v41;
    *(a1 + 152) = v42;
    *(a1 + 160) = v43;
    *(a1 + 168) = v44;
    *(a1 + 176) = v45;
    *(a1 + 180) = __dsta;
    v21 = *(v48 + 56);
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    type metadata accessor for Binding<TextSelection?>(0);
    v25 = v24;
    v26 = *(v24 - 8);
    if ((*(v26 + 48))(v23, 1, v24))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v22, v23, *(*(v27 - 8) + 64));
    }

    else
    {
      v28 = v23[1];
      *v22 = *v23;
      v22[1] = v28;
      v29 = *(v25 + 32);
      v49 = v22;
      __dst = v22 + v29;
      v30 = v23 + v29;
      v31 = type metadata accessor for TextSelection(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);

      v34 = v30;

      if (v33(v30, 1, v31))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v30, *(*(v35 - 8) + 64));
        v36 = v49;
      }

      else
      {
        v37 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v38 - 8) + 16))(__dst, v30, v38);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v30, *(*(v37 - 8) + 64));
        }

        v36 = v49;
        __dst[*(v31 + 20)] = v34[*(v31 + 20)];
        (*(v32 + 56))(__dst, 0, 1, v31);
      }

      (*(v26 + 56))(v36, 0, 1, v25);
    }
  }

  return a1;
}

uint64_t destroy for DefaultTextFieldStyle._Body(uint64_t a1)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 180));
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v3 = a1 + *(v2 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v5 = v4;
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {

    v7 = *(v5 + 32);
    v8 = type metadata accessor for TextSelection(0);
    result = (*(*(v8 - 8) + 48))(v3 + v7, 1, v8);
    if (!result)
    {
      type metadata accessor for TextSelection.Indices(0);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v10 = *(*(v9 - 8) + 8);

        return v10(v3 + v7, v9);
      }
    }
  }

  return result;
}

uint64_t initializeWithCopy for DefaultTextFieldStyle._Body(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = a2[8];

  if (v6)
  {
    v7 = a2[5];
    v8 = a2[6];
    v9 = *(a2 + 56);
    outlined copy of Text.Storage(v7, v8, v9);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    *(a1 + 64) = v6;
  }

  else
  {
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 56) = *(a2 + 7);
  }

  v10 = a2[9];
  v11 = a2[10];
  v12 = a2[11];
  v13 = a2[12];
  v14 = a2[13];
  v15 = a2[14];
  v16 = a2[15];
  v17 = a2[16];
  v38 = a2[17];
  v39 = a2[18];
  v40 = a2[19];
  v41 = a2[20];
  v42 = a2[21];
  __dsta = *(a2 + 44);
  v45 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v10, v11, v12, v13, v14, v15, v16, v17, v38, v39, v40, v41, v42, __dsta, v45);
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  *(a1 + 128) = v17;
  *(a1 + 136) = v38;
  *(a1 + 144) = v39;
  *(a1 + 152) = v40;
  *(a1 + 160) = v41;
  *(a1 + 168) = v42;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v45;
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v19 = *(v18 + 56);
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for Binding<TextSelection?>(0);
  v23 = v22;
  v24 = *(v22 - 8);
  if ((*(v24 + 48))(v21, 1, v22))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v20, v21, *(*(v25 - 8) + 64));
  }

  else
  {
    v26 = v21[1];
    *v20 = *v21;
    v20[1] = v26;
    v27 = *(v23 + 32);
    v46 = v20;
    __dst = v20 + v27;
    v28 = v21 + v27;
    v29 = type metadata accessor for TextSelection(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);

    v32 = v28;

    if (v31(v28, 1, v29))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v28, *(*(v33 - 8) + 64));
      v34 = v46;
    }

    else
    {
      v35 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v36 - 8) + 16))(__dst, v28, v36);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v28, *(*(v35 - 8) + 64));
      }

      v34 = v46;
      __dst[*(v29 + 20)] = v32[*(v29 + 20)];
      (*(v30 + 56))(__dst, 0, 1, v29);
    }

    (*(v24 + 56))(v34, 0, 1, v23);
  }

  return a1;
}

uint64_t *assignWithCopy for DefaultTextFieldStyle._Body(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v4 = a2[8];
  if (a1[8])
  {
    if (v4)
    {
      v5 = a2[5];
      v6 = a2[6];
      v7 = *(a2 + 56);
      outlined copy of Text.Storage(v5, v6, v7);
      v8 = a1[5];
      v9 = a1[6];
      v10 = *(a1 + 56);
      a1[5] = v5;
      a1[6] = v6;
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      a1[8] = a2[8];
    }

    else
    {
      outlined destroy of Text((a1 + 5));
      v14 = *(a2 + 7);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 7) = v14;
    }
  }

  else if (v4)
  {
    v11 = a2[5];
    v12 = a2[6];
    v13 = *(a2 + 56);
    outlined copy of Text.Storage(v11, v12, v13);
    a1[5] = v11;
    a1[6] = v12;
    *(a1 + 56) = v13;
    a1[8] = a2[8];
  }

  else
  {
    v15 = *(a2 + 5);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 5) = v15;
  }

  v16 = a2[9];
  v17 = a2[10];
  v18 = a2[11];
  v19 = a2[12];
  v20 = a2[13];
  v21 = a2[14];
  v22 = a2[15];
  v23 = a2[16];
  v71 = a2[17];
  v72 = a2[18];
  v73 = a2[19];
  v74 = a2[20];
  v75 = a2[21];
  v76 = *(a2 + 44);
  v78 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v16, v17, v18, v19, v20, v21, v22, v23, v71, v72, v73, v74, v75, v76, v78);
  v24 = a1[9];
  v25 = a1[10];
  v26 = a1[11];
  v27 = a1[12];
  v28 = a1[13];
  v29 = a1[14];
  v30 = a1[15];
  v31 = a1[16];
  v32 = *(a1 + 17);
  v33 = *(a1 + 19);
  v34 = a1[21];
  v35 = *(a1 + 44);
  v36 = *(a1 + 180);
  a1[9] = v16;
  a1[10] = v17;
  a1[11] = v18;
  a1[12] = v19;
  a1[13] = v20;
  a1[14] = v21;
  a1[15] = v22;
  a1[16] = v23;
  a1[17] = v71;
  a1[18] = v72;
  a1[19] = v73;
  a1[20] = v74;
  a1[21] = v75;
  *(a1 + 44) = v76;
  *(a1 + 180) = v78;
  outlined consume of StateOrBinding<TextFieldState>(v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, v35, v36);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v38 = *(v37 + 56);
  v39 = a1 + v38;
  v40 = a2 + v38;
  type metadata accessor for Binding<TextSelection?>(0);
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 48);
  LODWORD(v19) = v44(v39, 1, v41);
  v45 = v44(v40, 1, v42);
  if (v19)
  {
    if (!v45)
    {
      *v39 = *v40;
      *(v39 + 1) = *(v40 + 1);
      v46 = *(v42 + 32);
      v79 = &v39[v46];
      v77 = &v40[v46];
      v47 = type metadata accessor for TextSelection(0);
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);

      if (v49(v77, 1, v47))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v79, v77, *(*(v50 - 8) + 64));
      }

      else
      {
        v65 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v66 - 8) + 16))(v79, v77, v66);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v79, v77, *(*(v65 - 8) + 64));
        }

        v79[*(v47 + 20)] = v77[*(v47 + 20)];
        (*(v48 + 56))(v79, 0, 1, v47);
      }

      (*(v43 + 56))(v39, 0, 1, v42);
      return a1;
    }

    goto LABEL_14;
  }

  if (v45)
  {
    outlined destroy of TextSelection.Indices(v39, type metadata accessor for Binding<TextSelection?>);
LABEL_14:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v52 = *(*(v51 - 8) + 64);
    v53 = v39;
    v54 = v40;
LABEL_15:
    memcpy(v53, v54, v52);
    return a1;
  }

  *v39 = *v40;

  *(v39 + 1) = *(v40 + 1);

  v55 = *(v42 + 32);
  v56 = &v39[v55];
  v57 = &v40[v55];
  v58 = type metadata accessor for TextSelection(0);
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  v61 = v60(v56, 1, v58);
  v62 = v60(v57, 1, v58);
  if (v61)
  {
    if (!v62)
    {
      v63 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v64 - 8) + 16))(v56, v57, v64);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v56, v57, *(*(v63 - 8) + 64));
      }

      v56[*(v58 + 20)] = v57[*(v58 + 20)];
      (*(v59 + 56))(v56, 0, 1, v58);
      return a1;
    }

    goto LABEL_24;
  }

  if (v62)
  {
    outlined destroy of TextSelection.Indices(v56, type metadata accessor for TextSelection);
LABEL_24:
    type metadata accessor for TextSelection?(0);
    v52 = *(*(v67 - 8) + 64);
    v53 = v56;
    v54 = v57;
    goto LABEL_15;
  }

  if (a1 != a2)
  {
    outlined destroy of TextSelection.Indices(v56, type metadata accessor for TextSelection.Indices);
    v69 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v70 - 8) + 16))(v56, v57, v70);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v56, v57, *(*(v69 - 8) + 64));
    }
  }

  v56[*(v58 + 20)] = v57[*(v58 + 20)];
  return a1;
}

uint64_t outlined destroy of TextSelection.Indices(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for DefaultTextFieldStyle._Body(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v6 = *(v5 + 56);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for Binding<TextSelection?>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v8[1];
    *v7 = *v8;
    v7[1] = v13;
    v14 = *(v10 + 32);
    v15 = v7 + v14;
    v16 = v8 + v14;
    v17 = type metadata accessor for TextSelection(0);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v21 - 8) + 32))(v15, v16, v21);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v15, v16, *(*(v20 - 8) + 64));
      }

      v15[*(v17 + 20)] = v16[*(v17 + 20)];
      (*(v18 + 56))(v15, 0, 1, v17);
    }

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  return a1;
}

uint64_t *assignWithTake for DefaultTextFieldStyle._Body(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (a1[8])
  {
    v5 = a2[8];
    if (v5)
    {
      v6 = *(a2 + 56);
      v7 = a1[5];
      v8 = a1[6];
      v9 = *(a1 + 56);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 56) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      a1[8] = v5;

      goto LABEL_6;
    }

    outlined destroy of Text((a1 + 5));
  }

  *(a1 + 5) = *(a2 + 5);
  *(a1 + 7) = *(a2 + 7);
LABEL_6:
  v10 = a2[21];
  v11 = *(a2 + 44);
  v12 = *(a2 + 180);
  v13 = a1[9];
  v14 = a1[10];
  v15 = a1[11];
  v16 = a1[12];
  v17 = a1[13];
  v18 = a1[14];
  v19 = a1[15];
  v20 = a1[16];
  v21 = *(a1 + 17);
  v22 = *(a1 + 19);
  v23 = a1[21];
  v24 = *(a1 + 44);
  v25 = *(a1 + 180);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 19) = *(a2 + 19);
  a1[21] = v10;
  *(a1 + 44) = v11;
  *(a1 + 180) = v12;
  outlined consume of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v28 = a1 + v27;
  v29 = a2 + v27;
  type metadata accessor for Binding<TextSelection?>(0);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v28, 1, v30);
  v35 = v33(v29, 1, v31);
  if (v34)
  {
    if (!v35)
    {
      v36 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v36;
      v37 = *(v31 + 32);
      v38 = &v28[v37];
      v39 = &v29[v37];
      v40 = type metadata accessor for TextSelection(0);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v38, v39, *(*(v42 - 8) + 64));
      }

      else
      {
        v57 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v58 - 8) + 32))(v38, v39, v58);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v38, v39, *(*(v57 - 8) + 64));
        }

        v38[*(v40 + 20)] = v39[*(v40 + 20)];
        (*(v41 + 56))(v38, 0, 1, v40);
      }

      (*(v32 + 56))(v28, 0, 1, v31);
      return a1;
    }

    goto LABEL_12;
  }

  if (v35)
  {
    outlined destroy of TextSelection.Indices(v28, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v44 = *(*(v43 - 8) + 64);
    v45 = v28;
    v46 = v29;
LABEL_13:
    memcpy(v45, v46, v44);
    return a1;
  }

  *v28 = *v29;

  *(v28 + 1) = *(v29 + 1);

  v47 = *(v31 + 32);
  v48 = &v28[v47];
  v49 = &v29[v47];
  v50 = type metadata accessor for TextSelection(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v48, 1, v50);
  v54 = v52(v49, 1, v50);
  if (v53)
  {
    if (!v54)
    {
      v55 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v56 - 8) + 32))(v48, v49, v56);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v48, v49, *(*(v55 - 8) + 64));
      }

      v48[*(v50 + 20)] = v49[*(v50 + 20)];
      (*(v51 + 56))(v48, 0, 1, v50);
      return a1;
    }

    goto LABEL_22;
  }

  if (v54)
  {
    outlined destroy of TextSelection.Indices(v48, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v44 = *(*(v59 - 8) + 64);
    v45 = v48;
    v46 = v49;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    outlined destroy of TextSelection.Indices(v48, type metadata accessor for TextSelection.Indices);
    v61 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v62 - 8) + 32))(v48, v49, v62);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v48, v49, *(*(v61 - 8) + 64));
    }
  }

  v48[*(v50 + 20)] = v49[*(v50 + 20)];
  return a1;
}

void type metadata completion function for DefaultTextFieldStyle._Body(uint64_t a1)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(319, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for TextFieldStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>>)
  {
    type metadata accessor for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>(255);
    type metadata accessor for TextFieldStyleModifier<PlatformItemListTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<PlainTextFieldStyle>, lazy protocol witness table accessor for type PlainTextFieldStyle and conformance PlainTextFieldStyle, &type metadata for PlainTextFieldStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>)
  {
    type metadata accessor for TextField<_TextFieldStyleLabel>(255, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    type metadata accessor for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>)
  {
    type metadata accessor for TextFieldStyleModifier<PlatformItemListTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<PlatformItemListTextFieldStyle>, lazy protocol witness table accessor for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle, &type metadata for PlatformItemListTextFieldStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle;
  if (!lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListTextFieldStyle, &type metadata for PlatformItemListTextFieldStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle);
  }

  return result;
}

void type metadata accessor for TextFieldStyleModifier<PlatformItemListTextFieldStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for TextFieldStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlainTextFieldStyle and conformance PlainTextFieldStyle()
{
  result = lazy protocol witness table cache variable for type PlainTextFieldStyle and conformance PlainTextFieldStyle;
  if (!lazy protocol witness table cache variable for type PlainTextFieldStyle and conformance PlainTextFieldStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainTextFieldStyle, &type metadata for PlainTextFieldStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainTextFieldStyle and conformance PlainTextFieldStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TextField<_TextFieldStyleLabel> and conformance TextField<A>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextField<_TextFieldStyleLabel> and conformance TextField<A>()
{
  result = lazy protocol witness table cache variable for type TextField<_TextFieldStyleLabel> and conformance TextField<A>;
  if (!lazy protocol witness table cache variable for type TextField<_TextFieldStyleLabel> and conformance TextField<A>)
  {
    type metadata accessor for TextField<_TextFieldStyleLabel>(255, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    result = swift_getWitnessTable(protocol conformance descriptor for TextField<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextField<_TextFieldStyleLabel> and conformance TextField<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate();
    v5[1] = &protocol witness table for TextFieldStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate()
{
  result = lazy protocol witness table cache variable for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate;
  if (!lazy protocol witness table cache variable for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsPlatformItemListSourcePredicate, &type metadata for IsPlatformItemListSourcePredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate);
  }

  return result;
}

void NSSwiftAttributedStringProtocol.copyOnWriteState<>()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3;

  NSSwiftAttributedSubstring.CopyOnWriteState.init(base:)(v7, a3, a1, a2, v8);
}

void NSSwiftAttributedSubstring.CopyOnWriteState.init(base:)(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for NSSwiftAttributedSubstring(255, a3, a4, a5);
  type metadata accessor for WeakBox();
  *(a2 + 8) = static Array._allocateUninitialized(_:)();
  swift_unknownObjectUnownedInit();
}

NSAttributedString __swiftcall NSSwiftAttributedSubstring.CopyOnWriteState.substring(in:)(__C::_NSRange in)
{
  v4 = v1;
  length = in.length;
  location = in.location;
  type metadata accessor for NSSwiftAttributedSubstring(0, *(v1 + 16), *(v1 + 24), v2);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v11, v3, v4);
  Strong = swift_unknownObjectUnownedLoadStrong();
  (*(v7 + 8))(v11, v4);
  v9 = NSSwiftAttributedSubstring.__allocating_init(base:range:)(Strong, location, length);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for WeakBox();
  type metadata accessor for Array();
  Array.append(_:)();
  return v9;
}

id NSSwiftAttributedSubstring.__allocating_init(base:range:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  *&v7[direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy] = 0;
  *&v7[direct field offset for NSSwiftAttributedSubstring._base] = a1;
  v9 = &v7[direct field offset for NSSwiftAttributedSubstring._range];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v7;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

Swift::Void __swiftcall NSSwiftAttributedSubstring.CopyOnWriteState.ensureReadyForWrite()()
{
  v21 = 0;
  v3 = *(v2 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  type metadata accessor for NSSwiftAttributedSubstring(255, v4, v5, v1);
  v6 = type metadata accessor for WeakBox();

  if (MEMORY[0x18D00CDE0](v7, v6))
  {
    v8 = 0;
    v9 = v3 + 32;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v11 = *(v6 - 8);
        (*(v11 + 16))(v20, v9, v6);
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v19 = _ArrayBuffer._getElementSlowPath(_:)();
        v11 = *(v6 - 8);
        (*(v11 + 16))(v20, &v19, v6);
        swift_unknownObjectRelease();
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      (*(v11 + 8))(v20, v6);
      if (Strong)
      {
        v14 = specialized getter of copy #1 in NSSwiftAttributedSubstring.CopyOnWriteState.ensureReadyForWrite()(&v21, v18, v4, v5);
        v15 = *&Strong[direct field offset for NSSwiftAttributedSubstring._base];
        *&Strong[direct field offset for NSSwiftAttributedSubstring._base] = v14;
      }

      v9 += 8;
      ++v8;
    }

    while (v12 != MEMORY[0x18D00CDE0](v3, v6));
  }

  v16 = static Array._allocateUninitialized(_:)();
  v17 = v21;

  *(v18 + 8) = v16;
}

id specialized getter of copy #1 in NSSwiftAttributedSubstring.CopyOnWriteState.ensureReadyForWrite()(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v8 = type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState(0, a3, a4, a4);
    v9 = *(v8 - 8);
    (*(v9 + 16))(v15, a2, v8);
    Strong = swift_unknownObjectUnownedLoadStrong();
    (*(v9 + 8))(v15, v8);
    [Strong mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    swift_beginAccess();
    v11 = *a1;
    *a1 = v14;
    v5 = v14;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

id NSSwiftAttributedSubstring.__allocating_init(wrapping:resolver:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized NSSwiftAttributedSubstring.__allocating_init(wrapping:resolver:)(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v3;
}

unint64_t NSSwiftAttributedSubstring.copy()@<X0>(void *a1@<X8>)
{
  v3 = [*(v1 + direct field offset for NSSwiftAttributedSubstring._base) attributedSubstringFromRange_];
  result = type metadata accessor for NSAttributedString();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t NSSwiftAttributedSubstring.mutableCopy()@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 8) + 8);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for AttributedSubstring();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftAttributedSubstring.content.getter(v11);
  AttributedString.init(_:)();
  v15 = *v1;
  v16 = *v3;
  v19[1] = *(v1 + direct field offset for NSSwiftAttributedSubstring._base);
  (*(*(*(*((v16 & v15) + 0x58) + 8) + 8) + 56))(*((v16 & v15) + 0x50));
  v17 = *(v4 + 40);
  *(a1 + 24) = v5;
  return v17(v14, v8, v5, v4);
}

uint64_t NSSwiftAttributedSubstring.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AttributedString();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *((v4 & v3) + 0x58);
  v15 = *(v14 + 16);
  v16 = *((v4 & v3) + 0x50);
  v17 = *(v2 + direct field offset for NSSwiftAttributedSubstring._base);
  v15(v16, v14);
  v18 = v22;

  (*(v18 + 16))(v10, v13, v8);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  Range<>.init<A>(_:in:)();
  type metadata accessor for Range<AttributedString.Index>(0);
  result = (*(*(v19 - 8) + 48))(v7, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    AttributedString.subscript.getter();
    (*(v18 + 8))(v13, v8);
    return outlined destroy of Range<AttributedString.Index>(v7);
  }

  return result;
}

Swift::Bool __swiftcall NSSwiftAttributedSubstring.isEqual(to:)(NSAttributedString to)
{
  v3 = *(v1 + direct field offset for NSSwiftAttributedSubstring._base);
  v4 = v1 + direct field offset for NSSwiftAttributedSubstring._range;
  v5 = *(v1 + direct field offset for NSSwiftAttributedSubstring._range);
  v6 = *(v4 + 8);
  v7 = v3;
  v9.value.location = v5;
  v9.value.length = v6;
  v9.is_nil = 0;
  LOBYTE(to.super.isa) = NSAttributedString.isCharacterAndRunwiseEqual(to:in:)(to, v9);

  return to.super.isa & 1;
}

uint64_t @objc NSSwiftAttributedSubstring.isEqual(to:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = NSSwiftAttributedSubstring.isEqual(to:)(v4);

  return a1 & 1;
}

id NSSwiftAttributedSubstring._stringProxy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy;
  v6 = *(v4 + direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy);
  if (v6)
  {
    v7 = *(v4 + direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy);
  }

  else
  {
    v8 = type metadata accessor for NSSwiftAttributedSubstring.StringImplementation(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
    v9 = v4;
    v10 = objc_allocWithZone(v8);
    v11 = v9;
    v12 = v4;
    v13 = NSSwiftAttributedSubstring.StringImplementation.init(_:)(v11);
    v14 = [objc_allocWithZone(SUINSStringProxy) initWithImplementation_];

    v15 = *(v12 + v5);
    *(v12 + v5) = v14;
    v7 = v14;

    v6 = 0;
  }

  v16 = v6;
  return v7;
}

Class @objc NSSwiftAttributedSubstring.stringProxy()(void *a1)
{
  v1 = a1;
  isa = NSSwiftAttributedSubstring.stringProxy()().super.super.isa;

  return isa;
}

NSAttributedString __swiftcall NSSwiftAttributedSubstring.attributedSubstring(from:)(__C::_NSRange from)
{
  v2 = *(v1 + direct field offset for NSSwiftAttributedSubstring._range);
  if (__OFADD__(from.location, v2))
  {
    __break(1u);
  }

  else
  {
    v3 = [*(v1 + direct field offset for NSSwiftAttributedSubstring._base) attributedSubstringFromRange_];

    from.location = v3;
  }

  return from.location;
}

Class @objc NSSwiftAttributedSubstring.attributedSubstring(from:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v6 = a1;
  v7.location = a3;
  v7.length = a4;
  v8.super.isa = NSSwiftAttributedSubstring.attributedSubstring(from:)(v7).super.isa;

  return v8.super.isa;
}

uint64_t NSSwiftAttributedSubstring.attributes(at:effectiveRange:)(uint64_t a1, uint64_t *a2)
{
  v5 = NSAttributedString.range.getter();

  return NSSwiftAttributedSubstring.attributes(at:longestEffectiveRange:in:)(a1, a2, v5, v4);
}

uint64_t NSSwiftAttributedSubstring.attributes(at:longestEffectiveRange:in:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = *a2;
    v6 = a2[1];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(v4 + direct field offset for NSSwiftAttributedSubstring._range);
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = v10;
  v18 = v6;
  if (__OFADD__(a1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(a3, v8))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = [*(v4 + direct field offset for NSSwiftAttributedSubstring._base) attributesAtIndex:a1 + v8 longestEffectiveRange:&v17 inRange:{a3 + v8, a4}];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (a2)
  {
    v13 = *(v4 + direct field offset for NSSwiftAttributedSubstring._range);
    v14 = v17 - v13;
    if (!__OFSUB__(v17, v13))
    {
      v15 = v18;
      *a2 = v14;
      a2[1] = v15;
      return v12;
    }

LABEL_14:
    __break(1u);
  }

  return v12;
}

Class @objc NSSwiftAttributedSubstring.attributes(at:effectiveRange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a1;
  NSSwiftAttributedSubstring.attributes(at:effectiveRange:)(a3, a4);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

Class @objc NSSwiftAttributedSubstring.attributes(at:longestEffectiveRange:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  NSSwiftAttributedSubstring.attributes(at:longestEffectiveRange:in:)(a3, a4, a5, a6);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

void NSSwiftAttributedSubstring.attribute(_:at:effectiveRange:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = NSAttributedString.range.getter();

  NSSwiftAttributedSubstring.attribute(_:at:longestEffectiveRange:in:)(a1, a2, a3, v9, v8, a4);
}

void NSSwiftAttributedSubstring.attribute(_:at:longestEffectiveRange:in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = *a3;
    v9 = a3[1];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = *(v6 + direct field offset for NSSwiftAttributedSubstring._range);
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v9;
  if (__OFADD__(a2, v11))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(a4, v11))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ([*(v6 + direct field offset for NSSwiftAttributedSubstring._base) attribute:a1 atIndex:a2 + v11 longestEffectiveRange:&v18 inRange:{a4 + v11, a5}])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v14 = v21;
  *a6 = v20;
  a6[1] = v14;
  if (a3)
  {
    v15 = *(v6 + direct field offset for NSSwiftAttributedSubstring._range);
    v16 = v18 - v15;
    if (!__OFSUB__(v18, v15))
    {
      v17 = v19;
      *a3 = v16;
      a3[1] = v17;
      return;
    }

LABEL_17:
    __break(1u);
  }
}

id @objc NSSwiftAttributedSubstring.attribute(_:at:effectiveRange:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v8 = a3;
  v9 = a1;
  NSSwiftAttributedSubstring.attribute(_:at:effectiveRange:)(v8, a4, a5, v18);

  v10 = v19;
  if (v19)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id @objc NSSwiftAttributedSubstring.attribute(_:at:longestEffectiveRange:in:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  v13 = a1;
  NSSwiftAttributedSubstring.attribute(_:at:longestEffectiveRange:in:)(v12, a4, a5, a6, a7, &v22);

  v14 = v23;
  if (v23)
  {
    v15 = __swift_project_boxed_opaque_existential_1(&v22, v23);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x1EEE9AC00](v15);
    v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *&v5[direct field offset for NSSwiftAttributedSubstring._range];
  v7 = a1 + v6;
  if (__OFADD__(a1, v6))
  {
    __break(1u);
    goto LABEL_5;
  }

  v12 = *&v5[direct field offset for NSSwiftAttributedSubstring._base];
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v5;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:);
  *(v14 + 24) = v13;
  v18[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v18[3] = &block_descriptor_14;
  v15 = _Block_copy(v18);
  v16 = v12;
  v17 = v5;

  [v16 enumerateAttributesInRange:v7 options:a2 usingBlock:{a3, v15}];

  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
LABEL_5:
    __break(1u);
  }
}

void @objc NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v12[2] = v10;
  v11 = a1;
  NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:)(a3, a4, a5, partial apply for thunk for @callee_unowned @convention(block) (@unowned NSDictionary, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> (), v12);
  _Block_release(v10);
}

void NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *&v6[direct field offset for NSSwiftAttributedSubstring._range];
  v8 = a2 + v7;
  if (__OFADD__(a2, v7))
  {
    __break(1u);
    goto LABEL_5;
  }

  v14 = *&v6[direct field offset for NSSwiftAttributedSubstring._base];
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = v6;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:);
  *(v16 + 24) = v15;
  v20[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v20[5] = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v20[3] = &block_descriptor_5;
  v17 = _Block_copy(v20);
  v18 = v14;
  v19 = v6;

  [v18 enumerateAttribute:a1 inRange:v8 options:a3 usingBlock:{a4, v17}];

  _Block_release(v17);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
LABEL_5:
    __break(1u);
  }
}

void @objc NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:)(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  v15[2] = v12;
  v13 = a3;
  v14 = a1;
  NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:)(v13, a4, a5, a6, partial apply for thunk for @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> (), v15);
  _Block_release(v12);
}

void @objc NSSwiftAttributedSubstring.init(data:options:documentAttributes:)(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  specialized NSSwiftAttributedSubstring.init(data:options:documentAttributes:)();
}

void sub_18C219558(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftAttributedSubstring.init(__contentsOfMarkdownFileAt:options:baseURL:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v11 + 32))(v9, v13, v10);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v9, v15, 1, v10);
  v16 = a4;
  specialized NSSwiftAttributedSubstring.init(__contentsOfMarkdownFileAt:options:baseURL:)();
}

void sub_18C219794(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftAttributedSubstring.init(__markdown:options:baseURL:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18[-v13];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  specialized NSSwiftAttributedSubstring.init(__markdown:options:baseURL:)();
}

void sub_18C2199C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftAttributedSubstring.init(__markdownString:options:baseURL:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15[-v12];
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v13, v10, v7);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  v14 = a4;
  specialized NSSwiftAttributedSubstring.init(__markdownString:options:baseURL:)();
}

void sub_18C219BD4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v19)
  {
    if (v18)
    {
      v20 = _convertErrorToNSError(_:)();

      v21 = v20;
      *v18 = v20;
    }

    else
    {
    }
  }
}

void @objc NSSwiftAttributedSubstring.init(attributedString:)(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  specialized NSSwiftAttributedSubstring.init(attributedString:)();
}

void @objc NSSwiftAttributedSubstring.init(html:options:documentAttributes:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  specialized NSSwiftAttributedSubstring.init(html:options:documentAttributes:)();
}

uint64_t @objc NSSwiftAttributedSubstring.init(url:options:documentAttributes:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, void, void))
{
  v8 = *a1;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return a7(v12, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58));
}

void @objc NSSwiftAttributedSubstring.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy);
}

id NSSwiftAttributedSubstring.StringImplementation.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  AttributedString.CStringCache.init()();
  AttributedString.UTF16Cache.init()();
  *&v1[direct field offset for NSSwiftAttributedSubstring.StringImplementation.str] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id NSSwiftAttributedSubstring.StringImplementation.copy()@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  NSSwiftAttributedSubstring.copy()(v10);
  type metadata accessor for NSSwiftAttributedSubstring(0, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58), v6);
  swift_dynamicCast();
  v7 = objc_allocWithZone(ObjectType);
  result = NSSwiftAttributedSubstring.StringImplementation.init(_:)(v9);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t @objc NSSwiftAttributedSubstring.copy()(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

id NSSwiftAttributedSubstring.StringImplementation.character(at:)(uint64_t a1)
{
  result = [*(*(v1 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._base) stringProxy];
  v4 = *(*(v1 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._range);
  if (__OFADD__(a1, v4))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = [result characterAtIndex_];

    return v6;
  }

  return result;
}

uint64_t @objc NSSwiftAttributedSubstring.StringImplementation.character(at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOWORD(a3) = NSSwiftAttributedSubstring.StringImplementation.character(at:)(a3);

  return a3;
}

void NSSwiftAttributedSubstring.StringImplementation.getCharacters(_:range:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(*(v3 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._base) stringProxy];
  v8 = *(*(v3 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._range);
  if (__OFADD__(a2, v8))
  {
    __break(1u);
  }

  else
  {
    v9 = v7;
    [v7 getCharacters:a1 range:{a2 + v8, a3}];
  }
}

void @objc NSSwiftAttributedSubstring.StringImplementation.getCharacters(_:range:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  NSSwiftAttributedSubstring.StringImplementation.getCharacters(_:range:)(a3, a4, a5);
}

uint64_t NSSwiftAttributedSubstring.StringImplementation._fastCStringContents(_:)(char a1)
{
  v2 = v1;
  v42 = *MEMORY[0x1E69E7D40] & *v2;
  v4 = type metadata accessor for AttributedSubstring();
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString.UTF8View();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.UTF16View();
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AttributedString();
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString.Index();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v50 = &v38 - v19;
  if ((a1 & 1) != 0 || (v20 = [*(*(v2 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._base) stringProxy], v21 = objc_msgSend(v20, sel__fastCStringContents_, 0), v22 = v20, (v41 = v21) == 0))
  {
    NSSwiftAttributedSubstring.content.getter(v6);
    swift_beginAccess();
    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968], MEMORY[0x1E6968960]);
    v36 = AttributedString.CStringCache.buffer<A>(for:maxLength:)();
    swift_endAccess();
    (*(v52 + 8))(v6, v4);
  }

  else
  {
    v23 = *(v2 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str);
    v52 = direct field offset for NSSwiftAttributedSubstring._base;
    v24 = *(v23 + direct field offset for NSSwiftAttributedSubstring._base);
    v38 = v23;
    v25 = *(v42 + 80);
    v26 = *(v42 + 88);
    v39 = v26;
    v40 = v25;
    v42 = *(v26 + 16);
    v27 = v42;
    v28 = v24;
    v27(v25, v26);

    AttributedString.utf16.getter();
    v44 = *(v44 + 8);
    (v44)(v13, v51);
    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810], MEMORY[0x1E6968818]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.index(_:offsetBy:)();
    v29 = v46;
    v30 = *(v45 + 8);
    v30(v16, v46);
    (*(v43 + 8))(v11, v9);
    v31 = *(v38 + v52);
    (v42)(v40, v39);

    v32 = v47;
    AttributedString.utf8.getter();
    (v44)(v13, v51);
    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View, MEMORY[0x1E6968800], MEMORY[0x1E6968808]);
    v33 = v49;
    dispatch thunk of Collection.startIndex.getter();
    v34 = v50;
    v35 = dispatch thunk of Collection.distance(from:to:)();
    v30(v16, v29);
    (*(v48 + 8))(v32, v33);
    v30(v34, v29);
    return v41 + v35;
  }

  return v36;
}

uint64_t @objc NSSwiftAttributedSubstring.StringImplementation._fastCStringContents(_:)(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = NSSwiftAttributedSubstring.StringImplementation._fastCStringContents(_:)(a3);

  return v5;
}

char *NSSwiftAttributedSubstring.StringImplementation._fastCharacterContents()()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedSubstring();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*(v0 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._base) stringProxy];
  v8 = [v7 _fastCharacterContents];
  v9 = v7;
  if (v8)
  {
    return &v8[2 * *(*(v1 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._range)];
  }

  NSSwiftAttributedSubstring.content.getter(v6);
  swift_beginAccess();
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968], MEMORY[0x1E6968960]);
  v11 = AttributedString.UTF16Cache.buffer<A>(for:maxLength:)();
  swift_endAccess();
  (*(v3 + 8))(v6, v2);
  return v11;
}

char *@objc NSSwiftAttributedSubstring.StringImplementation._fastCharacterContents()(void *a1)
{
  v1 = a1;
  v2 = NSSwiftAttributedSubstring.StringImplementation._fastCharacterContents()();

  return v2;
}

double @objc NSSwiftAttributedSubstring.StringImplementation.__ivar_destroyer(uint64_t a1)
{

  return result;
}

uint64_t destroy for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1)
{
  swift_unknownObjectUnownedDestroy();
}

uint64_t initializeWithCopy for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectUnownedCopyInit();
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectUnownedCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t initializeWithTake for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectUnownedTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectUnownedTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id protocol witness for NSSwiftAttributedStringProtocol.init(wrapping:resolver:) in conformance NSSwiftAttributedSubstring<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = NSSwiftAttributedSubstring.__allocating_init(wrapping:resolver:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t NSSwiftAttributedSubstring.runs(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = *MEMORY[0x1E69E7D40] & *v4;
  v36 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v36);
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v29 - v9;
  v10 = type metadata accessor for AttributedSubstring();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v14 = v13;
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  outlined init with copy of Range<AttributedString.Index>(a2, &v29 - v17);
  NSSwiftAttributedSubstring.content.getter(v12);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968], MEMORY[0x1E6968960]);
  v33 = v14;
  result = _NSRange.init<A, B>(_:in:)();
  if (__OFADD__(result, *(v4 + direct field offset for NSSwiftAttributedSubstring._range)))
  {
    __break(1u);
  }

  else
  {
    v29 = a3;
    v30 = a1;
    v19 = direct field offset for NSSwiftAttributedSubstring._base;
    v20 = *(v34 + 80);
    v21 = *(v34 + 88);
    v22 = *(v21 + 16);
    v23 = *(v4 + direct field offset for NSSwiftAttributedSubstring._base);
    v22(v20, v21);

    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v24 = v35;
    Range<>.init<A>(_:in:)();
    result = (*(v32 + 48))(v24, 1, v33);
    if (result != 1)
    {
      v25 = v31;
      outlined init with take of Range<AttributedString.Index>(v24, v31);
      v26 = *(v21 + 8);
      v27 = *(v26 + 40);
      v28 = *(v4 + v19);
      v27(v30, v25, v20, v26);

      return outlined destroy of Range<AttributedString.Index>(v25);
    }
  }

  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSSwiftAttributedSubstring<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for NSSwiftAttributedSubstring<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined destroy of Range<AttributedString.Index>(uint64_t a1)
{
  type metadata accessor for Range<AttributedString.Index>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Range<AttributedString.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id specialized NSSwiftAttributedSubstring.__allocating_init(wrapping:resolver:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v5 = v2 + 80;
  v4 = *(v2 + 80);
  v6 = *(*(*(v5 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v22 - v9;
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  (*(v8 + 16))(v10, v22, AssociatedTypeWitness);
  (*(v6 + 40))(&v23, v15, v10, v4, v6);
  v16 = v23;
  v17 = NSAttributedString.range.getter();
  v19 = v18;

  v20 = NSSwiftAttributedSubstring.__allocating_init(base:range:)(v16, v17, v19);
  (*(v12 + 8))(a1, v11);
  return v20;
}

void specialized NSSwiftAttributedSubstring.init(coder:)()
{
  *(v0 + direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for Range<AttributedString.Index>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:)(uint64_t result, uint64_t a2)
{
  v3 = *(*(v2 + 32) + direct field offset for NSSwiftAttributedSubstring._range);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (!v4)
  {
    return (*(v2 + 16))(result, v5);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:)(uint64_t result, uint64_t a2)
{
  v3 = *(*(v2 + 32) + direct field offset for NSSwiftAttributedSubstring._range);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (!v4)
  {
    return (*(v2 + 16))(result, v5);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t WindowGroup.init(id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v13 = type metadata accessor for WindowGroup(0, a5, a6, a4);
  *a7 = 0u;
  a7[1] = 0u;
  v14 = (a7 + v13[10]);
  *(a7 + v13[11]) = 0;
  v15 = (a7 + v13[12]);
  *v15 = 0;
  v15[1] = 0;
  *v14 = a1;
  v14[1] = a2;
  a3();
  type metadata accessor for WindowGroupRootContent(0, a5, a6, v16);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WindowGroup.init(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = type metadata accessor for WindowGroup(0, a9, a10, a4);
  v16 = (a8 + v15[10]);
  *(a8 + v15[11]) = 0;
  v17 = (a8 + v15[12]);
  *v17 = 0;
  v17[1] = 0;
  MEMORY[0x18D009CE0](&v24);
  Text.assertUnstyled(_:options:)();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3 & 1;
  a8[3] = a4;
  *v16 = a5;
  v16[1] = a6;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  a7(v18);
  outlined consume of Text.Storage(a1, a2, a3 & 1);

  type metadata accessor for WindowGroupRootContent(0, a9, a10, v19);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WindowGroup.init(_:id:content:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v14 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17 & 1;

  return WindowGroup.init(_:id:content:)(v14, v15, v18, v16, a5, a6, a7, a8, a9, a10);
}

uint64_t WindowGroup.init<A>(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v27 = a4;
  v28 = a5;
  v17 = *(a7 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20, v18);
  v21 = Text.init<A>(_:)();
  WindowGroup.init(_:id:content:)(v21, v23, v22 & 1, v24, a2, a3, v27, a9, a6, a8);
  return (*(v17 + 8))(a1, a7);
}

uint64_t WindowGroup.init(content:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for WindowGroup(0, a2, a3, a3);
  *a4 = 0u;
  a4[1] = 0u;
  v9 = (a4 + v8[10]);
  *v9 = 0;
  v9[1] = 0;
  *(a4 + v8[11]) = 0;
  v10 = (a4 + v8[12]);
  *v10 = 0;
  v10[1] = 0;
  a1();
  type metadata accessor for WindowGroupRootContent(0, a2, a3, v11);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WindowGroup.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v16 = type metadata accessor for WindowGroup(0, a6, a7, a4);
  v17 = (a8 + v16[10]);
  *v17 = 0;
  v17[1] = 0;
  *(a8 + v16[11]) = 0;
  v18 = (a8 + v16[12]);
  *v18 = 0;
  v18[1] = 0;
  MEMORY[0x18D009CE0](&v22);
  Text.assertUnstyled(_:options:)();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3 & 1;
  a8[3] = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  a5(v19);
  outlined consume of Text.Storage(a1, a2, a3 & 1);

  type metadata accessor for WindowGroupRootContent(0, a6, a7, v20);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WindowGroup.init(_:content:)@<X0>(void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v12 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15 & 1;

  return WindowGroup.init(_:content:)(v12, v13, v16, v14, a5, a6, a7, a8);
}

uint64_t WindowGroup.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a7@<X8>)
{
  v13 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16, v14);
  v17 = Text.init<A>(_:)();
  WindowGroup.init(_:content:)(v17, v19, v18 & 1, v20, a2, a3, a5, a7);
  return (*(v13 + 8))(a1, a4);
}

_OWORD *initializeBufferWithCopyOfBuffer for WindowGroup(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  if (*(v4 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v4 + 64);
  }

  if ((v5 & 0x1000F8) != 0 || ((((((v7 + (((v5 & 0xF8) + 39) & ~v6) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
    goto LABEL_34;
  }

  v10 = *(a2 + 24);
  if (v10 < 0xFFFFFFFF)
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v15;
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    v14 = a2;
    outlined copy of Text.Storage(*a2, v12, v13);
    *v3 = v11;
    *(v3 + 1) = v12;
    *(v3 + 16) = v13;
    *(v3 + 3) = v10;

    a2 = v14;
  }

  v16 = v3 + 39;
  v17 = a2 + 39;
  v18 = ((a2 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = *(v18 + v7);
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v7 <= 3)
    {
      v21 = v7;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *v18;
        if (v7 < 4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = *v18 | (*(v18 + 2) << 16);
          if (v7 < 4)
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v22 = *v18;
        if (v7 < 4)
        {
LABEL_28:
          v19 = (v22 | (v20 << (8 * v7))) + 2;
          goto LABEL_29;
        }
      }

LABEL_26:
      v19 = v22 + 2;
      goto LABEL_29;
    }

    if (v21)
    {
      v22 = *v18;
      if (v7 < 4)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

LABEL_29:
  v23 = v7 + 1;
  v24 = (v16 & 0xFFFFFFFFFFFFFFF8);
  if (v19 == 1)
  {
    v25 = *(v18 + 1);
    *v24 = *v18;
    v24[1] = v25;

    v26 = 1;
  }

  else
  {
    (*(v4 + 16))(v16 & 0xFFFFFFFFFFFFFFF8);
    v26 = 0;
  }

  *(v24 + v7) = v26;
  v27 = (((v16 | 7) + v23) & 0xFFFFFFFFFFFFFFF8);
  v28 = (((v17 | 7) + v23) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  v27[1] = v28[1];
  v29 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v29;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = *v32;

  if (v33 < 0xFFFFFFFF)
  {
    *v31 = *v32;
    return v3;
  }

  v34 = v32[1];
  *v31 = v33;
  *(v31 + 8) = v34;
LABEL_34:

  return v3;
}

uint64_t assignWithCopy for WindowGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      v15 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v14, v15);
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v8, v9);
      v10 = *a1;
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
LABEL_8:
  v17 = *(a3 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 80) & 0xF8;
  v20 = v19 + 39;
  v21 = v19 + 39 + a1;
  v22 = ~v19 & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 & v22);
  v24 = ((v20 + a2) & v22);
  if (*(v18 + 64) <= 0x10uLL)
  {
    v25 = 16;
  }

  else
  {
    v25 = *(v18 + 64);
  }

  if (v23 != v24)
  {
    v26 = v23[v25];
    v27 = v26 - 2;
    if (v26 < 2)
    {
      goto LABEL_26;
    }

    if (v25 <= 3)
    {
      v28 = v25;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_26;
      }

      v29 = *v23;
    }

    else if (v28 == 2)
    {
      v29 = *v23;
    }

    else if (v28 == 3)
    {
      v29 = *v23 | (v23[2] << 16);
    }

    else
    {
      v29 = *v23;
    }

    v30 = (v29 | (v27 << (8 * v25))) + 2;
    v26 = v29 + 2;
    if (v25 < 4)
    {
      v26 = v30;
    }

LABEL_26:
    if (v26 == 1)
    {
    }

    else
    {
      (*(v18 + 8))(v23, v17);
    }

    v31 = v24[v25];
    v32 = v31 - 2;
    if (v31 < 2)
    {
      goto LABEL_43;
    }

    if (v25 <= 3)
    {
      v33 = v25;
    }

    else
    {
      v33 = 4;
    }

    if (v33 <= 1)
    {
      if (!v33)
      {
LABEL_43:
        if (v31 == 1)
        {
          v36 = *(v24 + 1);
          *v23 = *v24;
          *(v23 + 1) = v36;
          v23[v25] = 1;
        }

        else
        {
          (*(v18 + 16))(v23, v24, v17);
          v23[v25] = 0;
        }

        goto LABEL_46;
      }

      v34 = *v24;
    }

    else if (v33 == 2)
    {
      v34 = *v24;
    }

    else if (v33 == 3)
    {
      v34 = *v24 | (v24[2] << 16);
    }

    else
    {
      v34 = *v24;
    }

    v35 = (v34 | (v32 << (8 * v25))) + 2;
    v31 = v34 + 2;
    if (v25 < 4)
    {
      v31 = v35;
    }

    goto LABEL_43;
  }

LABEL_46:
  v37 = (&v23[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  v38 = (&v24[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v38;
  v37[1] = v38[1];

  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v43 = *v42;
  if (*v41 < 0xFFFFFFFFuLL)
  {
    if (v43 >= 0xFFFFFFFF)
    {
      v45 = v42[1];
      *v41 = v43;
      v41[1] = v45;

      return a1;
    }

LABEL_52:
    *v41 = *v42;
    return a1;
  }

  if (v43 < 0xFFFFFFFF)
  {

    goto LABEL_52;
  }

  v44 = v42[1];
  *v41 = v43;
  v41[1] = v44;

  return a1;
}

__n128 initializeWithTake for WindowGroup(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80) & 0xF8;
  v6 = v5 + 39;
  v7 = a1 + v5 + 39;
  v8 = ~v5 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 & v8);
  v10 = ((a2 + v6) & v8);
  if (*(v4 + 64) <= 0x10uLL)
  {
    v11 = 16;
  }

  else
  {
    v11 = *(*(*(a3 + 16) - 8) + 64);
  }

  v12 = v10[v11];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_18;
  }

  if (v11 <= 3)
  {
    v14 = v11;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *v10;
  }

  else if (v14 == 2)
  {
    v15 = *v10;
  }

  else if (v14 == 3)
  {
    v15 = *v10 | (v10[2] << 16);
  }

  else
  {
    v15 = *v10;
  }

  v16 = (v15 | (v13 << (8 * v11))) + 2;
  v12 = v15 + 2;
  if (v11 < 4)
  {
    v12 = v16;
  }

LABEL_18:
  if (v12 == 1)
  {
    *v9 = *v10;
    v17 = 1;
  }

  else
  {
    (*(v4 + 32))(v9, v10);
    v17 = 0;
  }

  *(v9 + v11) = v17;
  v18 = ((v9 + v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = (&v10[v11 + 8] & 0xFFFFFFFFFFFFFFF8);
  result = *v19;
  *v18 = *v19;
  v21 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v19[1].n128_u64 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24->n128_u64[0];
  if (v24->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *v24;
    *v23 = *v24;
  }

  else
  {
    v26 = v24->n128_i64[1];
    *v23 = v25;
    *(v23 + 8) = v26;
  }

  return result;
}

uint64_t assignWithTake for WindowGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(a2 + 24) >= 0xFFFFFFFFuLL)
    {
      v6 = *(a2 + 16);
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
LABEL_6:
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80) & 0xF8;
  v14 = v13 + 39;
  v15 = v13 + 39 + a1;
  v16 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 & v16);
  v18 = ((v14 + a2) & v16);
  if (*(v12 + 64) <= 0x10uLL)
  {
    v19 = 16;
  }

  else
  {
    v19 = *(v12 + 64);
  }

  if (v17 != v18)
  {
    v20 = v17[v19];
    v21 = v20 - 2;
    if (v20 < 2)
    {
      goto LABEL_24;
    }

    if (v19 <= 3)
    {
      v22 = v19;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_24;
      }

      v23 = *v17;
    }

    else if (v22 == 2)
    {
      v23 = *v17;
    }

    else if (v22 == 3)
    {
      v23 = *v17 | (v17[2] << 16);
    }

    else
    {
      v23 = *v17;
    }

    v24 = (v23 | (v21 << (8 * v19))) + 2;
    v20 = v23 + 2;
    if (v19 < 4)
    {
      v20 = v24;
    }

LABEL_24:
    if (v20 == 1)
    {
    }

    else
    {
      (*(v12 + 8))(v17, v11);
    }

    v25 = *(v18 + v19);
    v26 = v25 - 2;
    if (v25 >= 2)
    {
      if (v19 <= 3)
      {
        v27 = v19;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 1)
      {
        if (v27 == 2)
        {
          v28 = *v18;
        }

        else if (v27 == 3)
        {
          v28 = *v18 | (*(v18 + 2) << 16);
        }

        else
        {
          v28 = *v18;
        }

LABEL_39:
        v29 = (v28 | (v26 << (8 * v19))) + 2;
        v25 = v28 + 2;
        if (v19 < 4)
        {
          v25 = v29;
        }

        goto LABEL_41;
      }

      if (v27)
      {
        v28 = *v18;
        goto LABEL_39;
      }
    }

LABEL_41:
    if (v25 == 1)
    {
      *v17 = *v18;
      v30 = 1;
    }

    else
    {
      (*(v12 + 32))(v17, v18, v11);
      v30 = 0;
    }

    v17[v19] = v30;
  }

  v31 = (&v17[v19 + 8] & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v18 + v19 + 8) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v31[1] = v32[1];

  v33 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = *v36;
  if (*v35 < 0xFFFFFFFFuLL)
  {
    if (v37 >= 0xFFFFFFFF)
    {
      v39 = v36[1];
      *v35 = v37;
      v35[1] = v39;
      return a1;
    }

LABEL_51:
    *v35 = *v36;
    return a1;
  }

  if (v37 < 0xFFFFFFFF)
  {

    goto LABEL_51;
  }

  v38 = v36[1];
  *v35 = v37;
  v35[1] = v38;

  return a1;
}

uint64_t getEnumTagSinglePayload for WindowGroup(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  v5 = *(v3 + 80) & 0xF8;
  v6 = ((((((v4 + ((v5 + 39) & ~v5 & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483645;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (v11)
    {
      goto LABEL_19;
    }

LABEL_23:
    v14 = *(a1 + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    if ((v14 + 1) >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  if (v10 != 2)
  {
    v11 = *(a1 + v6);
    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v11 = *(a1 + v6);
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = v11 - 1;
  if (v7)
  {
    v13 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v13) + 0x7FFFFFFF;
}

unsigned int *storeEnumTagSinglePayload for WindowGroup(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = ((((((v5 + (((*(v4 + 80) & 0xF8) + 39) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v7 = a3 - 2147483645;
    if (v6)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = a2 - 2147483646;
    }

    if (v6)
    {
      v11 = a2 - 0x7FFFFFFF;
      v12 = result;
      bzero(result, v6);
      result = v12;
      *v12 = v11;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(result + v6) = v10;
      }

      else
      {
        *(result + v6) = v10;
      }
    }

    else if (v9)
    {
      *(result + v6) = v10;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      if (v9)
      {
        *(result + v6) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_29:
        *(result + 3) = a2;
        return result;
      }

LABEL_28:
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

    if (v9 == 2)
    {
      *(result + v6) = 0;
      goto LABEL_28;
    }

    *(result + v6) = 0;
    if (a2)
    {
      goto LABEL_29;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for WindowSceneList(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v4 + 80);
  if ((v7 & 0x1000F8) != 0 || ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v11 = a2 + 7;
    v12 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v12;
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = *(v15 + 24);

    if (v16 < 0xFFFFFFFF)
    {
      v20 = *(v15 + 16);
      *v14 = *v15;
      *(v14 + 16) = v20;
    }

    else
    {
      v17 = *v15;
      v18 = *(v15 + 8);
      v19 = *(v15 + 16);
      outlined copy of Text.Storage(*v15, v18, v19);
      *v14 = v17;
      *(v14 + 8) = v18;
      *(v14 + 16) = v19;
      *(v14 + 24) = *(v15 + 24);
    }

    v21 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = v6 + 16;
    v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    if (*v25 < 0xFFFFFFFFuLL)
    {
      *v24 = *v25;
    }

    else
    {
      v26 = *(v25 + 8);
      *v24 = *v25;
      *(v24 + 8) = v26;
    }

    v27 = ((v3 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
    v28 = (&v11[v23] & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v27[1] = v28[1];
    *((v27 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithCopy for WindowSceneList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 24);
  if (*(v9 + 24) < 0xFFFFFFFFuLL)
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v18 = *v10;
      v19 = *(v10 + 8);
      v20 = *(v10 + 16);
      outlined copy of Text.Storage(*v10, v19, v20);
      *v9 = v18;
      *(v9 + 8) = v19;
      *(v9 + 16) = v20;
      *(v9 + 24) = *(v10 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      outlined copy of Text.Storage(*v10, v13, v14);
      v15 = *v9;
      v16 = *(v9 + 8);
      v17 = *(v9 + 16);
      *v9 = v12;
      *(v9 + 8) = v13;
      *(v9 + 16) = v14;
      outlined consume of Text.Storage(v15, v16, v17);
      *(v9 + 24) = *(v10 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v21 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v21;
LABEL_8:
  v22 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  if (*v24 < 0xFFFFFFFFuLL)
  {
    if (v26 >= 0xFFFFFFFF)
    {
      v28 = v25[1];
      *v24 = v26;
      v24[1] = v28;

      goto LABEL_15;
    }

LABEL_14:
    *v24 = *v25;
    goto LABEL_15;
  }

  if (v26 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v27 = v25[1];
  *v24 = v26;
  v24[1] = v27;

LABEL_15:
  v29 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v30 = ((a1 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((a2 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v30[1] = v31[1];

  *((v30 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for WindowSceneList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  if (*v15 < 0xFFFFFFFF)
  {
    *v14 = *v15;
  }

  else
  {
    v17 = v15[1];
    *v14 = v16;
    *(v14 + 8) = v17;
  }

  v18 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = ((a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  *((v19 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for WindowSceneList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*(v9 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(v10 + 24) >= 0xFFFFFFFFuLL)
    {
      v11 = *(v10 + 16);
      v12 = *v9;
      v13 = *(v9 + 8);
      v14 = *(v9 + 16);
      *v9 = *v10;
      *(v9 + 16) = v11;
      outlined consume of Text.Storage(v12, v13, v14);
      *(v9 + 24) = *(v10 + 24);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v15 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v15;
LABEL_6:
  v16 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v19;
  if (*v18 < 0xFFFFFFFFuLL)
  {
    if (v20 >= 0xFFFFFFFF)
    {
      v22 = v19[1];
      *v18 = v20;
      v18[1] = v22;
      goto LABEL_13;
    }

LABEL_12:
    *v18 = *v19;
    goto LABEL_13;
  }

  if (v20 < 0xFFFFFFFF)
  {

    goto LABEL_12;
  }

  v21 = v19[1];
  *v18 = v20;
  v18[1] = v21;

LABEL_13:
  v23 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v24 = ((a1 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((a2 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v24[1] = v25[1];

  *((v24 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for WindowSceneList(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for WindowSceneList(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for WindowGroupRootContent(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 0x10uLL)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
    goto LABEL_26;
  }

  v9 = *(a2 + v5);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

LABEL_22:
      v13 = (v12 | (v10 << (8 * v5))) + 2;
      v9 = v12 + 2;
      if (v5 < 4)
      {
        v9 = v13;
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v12 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v9 != 1)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = 0;
    return v3;
  }

  v14 = *(a2 + 1);
  *v3 = *a2;
  v3[1] = v14;
  *(v3 + v5) = 1;
LABEL_26:

  return v3;
}

void destroy for WindowGroupRootContent(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x10)
  {
    v2 = 16;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }
}

unsigned __int8 *assignWithCopy for WindowGroupRootContent(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x10uLL)
    {
      v7 = 16;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
    }

    else
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 < 2)
    {
      goto LABEL_36;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_36:
        if (v13 == 1)
        {
          v18 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v18;
          a1[v7] = 1;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v5);
          a1[v7] = 0;
        }

        return a1;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 2;
    v13 = v16 + 2;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_36;
  }

  return a1;
}

_OWORD *initializeWithTake for WindowGroupRootContent(_OWORD *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v3 = 16;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    *result = *a2;
    v9 = 1;
  }

  else
  {
    v10 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v10;
    v9 = 0;
  }

  *(result + v3) = v9;
  return result;
}

unsigned __int8 *assignWithTake for WindowGroupRootContent(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
  }

  else
  {
    (*(v6 + 8))(a1, v5);
  }

  v13 = a2[v7];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (a2[2] << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 2;
      v13 = v16 + 2;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 1)
  {
    *a1 = *a2;
    v18 = 1;
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 0;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t getEnumTagSinglePayload for WindowGroupRootContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for WindowGroupRootContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for WindowGroupRootContent(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 16;
  if (*(v2 + 64) > 0x10uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for WindowGroupRootContent(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v3 = 16;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t assignWithCopy for WindowSceneList.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v3 = *(a2 + 32);
  if (*(a1 + 32) == 255)
  {
    if (v3 == 255)
    {
      v15 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v15;
    }

    else
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = v3 & 1;
      outlined copy of SceneID(v10, v11, v3 & 1);
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
    }
  }

  else if (v3 == 255)
  {
    outlined destroy of SceneID(a1 + 16);
    v14 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v14;
  }

  else
  {
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = v3 & 1;
    outlined copy of SceneID(v4, v5, v3 & 1);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    outlined consume of SceneID(v7, v8, v9);
  }

  return a1;
}

__n128 assignWithTake for WindowSceneList.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a1 + 32);
  if (v2 == 255)
  {
    result = *(a2 + 16);
    *(a1 + 16) = result;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 32);
    if (v3 == 255)
    {
      outlined destroy of SceneID(a1 + 16);
      result = *(a2 + 16);
      *(a1 + 16) = result;
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v3 & 1;
      outlined consume of SceneID(v4, v5, v2 & 1);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowSceneList.MakeList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WindowSceneList.MakeList(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

double View.automationElement()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for automation != -1)
  {
    swift_once();
  }

  v5 = static AccessibilityChildBehavior.automation;

  MEMORY[0x18D00A570](&v5, a1, &type metadata for AccessibilityContainerModifier, a2);

  return result;
}

double TabForEach<>._identifiedView.getter(void *a1, uint64_t a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v6;
  v10[5] = v8;
  v10[6] = v7;
  v10[7] = a2;
  v10[8] = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  mapForEach<A, B, C, D>(_:transform:)(v13, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v10, v3, v4, v5, AssociatedTypeWitness, v8, v7);

  return result;
}

uint64_t mapForEach<A, B, C, D>(_:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15[0] = a7;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a8;
  v15[5] = a9;
  v10 = type metadata accessor for ForEach();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(v15 - v12, a1, v11);

  return ForEach.init<A>(_:transform:)();
}

uint64_t TabForEach<>.init(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v28[0] = a3;
  v28[1] = a4;
  v29 = a8;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + *MEMORY[0x1E69E77B0] + 8);
  v30 = v19;
  v31 = v18;
  v32 = v20;
  v33 = v21;
  v34 = a9;
  v22 = type metadata accessor for ForEach();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v28 - v24;
  (*(v14 + 16))(v16, a1, a5, v23);
  v30 = a2;
  ForEach.init(_:idGenerator:content:)();
  (*(v14 + 8))(a1, a5);
  v30 = a5;
  v31 = v18;
  v32 = a6;
  v33 = a7;
  v34 = a9;
  v26 = type metadata accessor for ForEach();
  return (*(*(v26 - 8) + 32))(v29, v25, v26);
}

uint64_t TabForEach<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v32 = a9;
  v27 = a10;
  v28 = a11;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  KeyPath = a4;
  v42 = a5;
  v43 = a7;
  v44 = a8;
  v45 = AssociatedConformanceWitness;
  v21 = type metadata accessor for ForEach();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v27 - v23;
  (*(v17 + 16))(v19, a1, a4, v22);
  v33 = a4;
  v34 = a5;
  v35 = v29;
  v36 = a7;
  v37 = a8;
  v38 = v27;
  v39 = v28;
  v40 = a12;
  KeyPath = swift_getKeyPath();
  ForEach.init(_:idGenerator:content:)();
  (*(v17 + 8))(a1, a4);
  KeyPath = a4;
  v42 = a5;
  v43 = a7;
  v44 = a8;
  v45 = AssociatedConformanceWitness;
  v25 = type metadata accessor for ForEach();
  return (*(*(v25 - 8) + 32))(v32, v24, v25);
}

double TabForEach<>.init(_:content:)@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a3;
  v16[7] = a4;
  type metadata accessor for Range<Int>();
  v18 = v17;
  v19 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v20 = MEMORY[0x1E69E6540];
  v21 = MEMORY[0x1E69E6530];
  ForEach.init(_:idGenerator:content:)();
  v26[0] = v28;
  v26[1] = v29;
  v26[2] = v30;
  v27 = v31;
  *&v32 = v18;
  *(&v32 + 1) = v21;
  *&v33 = a6;
  *(&v33 + 1) = v19;
  *&v34 = v20;
  v22 = type metadata accessor for ForEach();
  (*(*(v22 - 8) + 32))(&v32, v26, v22);
  v23 = v35;
  v24 = v33;
  *a9 = v32;
  *(a9 + 16) = v24;
  result = *&v34;
  *(a9 + 32) = v34;
  *(a9 + 48) = v23;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> TabForEach<A, B, C, D>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> TabForEach<A, B, C, D>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TabForEach(uint64_t a1)
{
  result = type metadata accessor for ForEach();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TabForEach(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

double destroy for TabForEach(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for TabForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for TabForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for TabForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TabForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 &= 0xFFFFFFFFFFFFFFF8;
  *v10 = *v9;

  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TabForEach(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for TabForEach(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
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

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t View.sensoryFeedback<A>(_:trigger:condition:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a7;
  v27 = a9;
  v28 = a5;
  v26 = a3;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedbackGenerator(0, v18, v19, v17);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v25 - v22;
  v33 = *a1;
  (*(v14 + 16))(v16, a2, a6);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  swift_weakInit();
  FeedbackGenerator.init(feedbackRequestContext:feedback:trigger:condition:implementation:)(&v30, &v33, v16, v26, a4, v31, a6, a8, v23);

  swift_getWitnessTable(protocol conformance descriptor for FeedbackGenerator<A>, v20);
  View.platformSensoryFeedback<A>(_:)(v23, v28, v20, v29);
  return (*(v21 + 8))(v23, v20);
}

uint64_t View.sensoryFeedback<A>(trigger:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a6;
  v25 = a8;
  v26 = a4;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CustomFeedbackGenerator(0, v17, v18, v16);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v25 - v22;
  (*(v13 + 16))(v15, a1, a5, v21);
  v28 = 0;
  swift_weakInit();
  CustomFeedbackGenerator.init(feedbackRequestContext:trigger:feedback:)(&v28, v15, a2, a3, a5, a7, v23);

  swift_getWitnessTable(protocol conformance descriptor for CustomFeedbackGenerator<A>, v19, v25);
  View.platformSensoryFeedback<A>(_:)(v23, v26, v19, v27);
  return (*(v20 + 8))(v23, v19);
}

double CustomFeedbackGenerator.init(feedbackRequestContext:trigger:feedback:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  outlined init with take of FeedbackRequestContext(a1, a7);
  v14 = type metadata accessor for CustomFeedbackGenerator(0, a5, a6, v13);
  (*(*(a5 - 8) + 32))(a7 + v14[9], a2, a5);
  v15 = (a7 + v14[10]);
  *v15 = a3;
  v15[1] = a4;
  v16 = a7 + v14[11];
  *(v16 + 56) = 0;
  *v16 = 0x3FFFFFFFCLL;
  result = 0.0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  return result;
}

uint64_t type metadata completion function for CustomFeedbackGenerator(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double destroy for CustomFeedbackGenerator(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  if (*v8 >> 2 != 0xFFFFFFFFLL && v8[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v8 + 2);
  }

  return result;
}

void *initializeWithCopy for CustomFeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_weakCopyInit();
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 16;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 16))(v9, v10);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;

  if (v17 >> 2 == 0xFFFFFFFF)
  {
    v18 = *v16;
    v19 = *(v16 + 16);
    v20 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v19;
    *(v15 + 32) = v20;
    *v15 = v18;
  }

  else
  {
    *v15 = *v16;
    v21 = *(v16 + 40);
    if (v21)
    {
      *(v15 + 40) = v21;
      *(v15 + 48) = *(v16 + 48);
      (**(v21 - 8))(v15 + 16, v16 + 16);
    }

    else
    {
      v22 = *(v16 + 16);
      v23 = *(v16 + 32);
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 16) = v22;
      *(v15 + 32) = v23;
    }
  }

  *(v15 + 56) = *(v16 + 56);

  return a1;
}

_DWORD *assignWithCopy for CustomFeedbackGenerator(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_weakCopyAssign();
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  v15 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16 & 0xFFFFFFFFFFFFFFFCLL;
  if (*v15 >> 2 != 0xFFFFFFFFLL)
  {
    if (v17 == 0x3FFFFFFFCLL)
    {
      outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v15, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?));
      v22 = *(v16 + 16);
      v21 = *(v16 + 32);
      v23 = *v16;
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 16) = v22;
      *(v15 + 32) = v21;
      *v15 = v23;
      goto LABEL_15;
    }

    *v15 = *v16;
    v24 = *(v16 + 40);
    if (*(v15 + 40))
    {
      v25 = (v15 + 16);
      if (v24)
      {
        __swift_assign_boxed_opaque_existential_1(v25, (v16 + 16));
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else if (v24)
    {
      goto LABEL_12;
    }

LABEL_14:
    v26 = *(v16 + 16);
    v27 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v26;
    *(v15 + 32) = v27;
    goto LABEL_15;
  }

  if (v17 != 0x3FFFFFFFCLL)
  {
    *v15 = *v16;
    v24 = *(v16 + 40);
    if (!v24)
    {
      goto LABEL_14;
    }

LABEL_12:
    *(v15 + 40) = v24;
    *(v15 + 48) = *(v16 + 48);
    (**(v24 - 8))(v15 + 16, v16 + 16);
    goto LABEL_15;
  }

  v18 = *v16;
  v19 = *(v16 + 16);
  v20 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v19;
  *(v15 + 32) = v20;
  *v15 = v18;
LABEL_15:
  *(v15 + 56) = *(v16 + 56);

  return a1;
}

void type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?))
  {
    type metadata accessor for IntelligenceSubelementProviding?(255, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback, &protocol descriptor for PlatformSensoryFeedback);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?));
    }
  }
}

void *initializeWithTake for CustomFeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_weakTakeInit();
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v15[2];
  v16 = v15[3];
  v18 = v15[1];
  *v14 = *v15;
  v14[1] = v18;
  v14[2] = v17;
  v14[3] = v16;
  return a1;
}

void *assignWithTake for CustomFeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_weakTakeAssign();
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v11 + v10;
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v12 = *(v13 & 0xFFFFFFFFFFFFFFF8);

  v15 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  if (*v15 >> 2 == 0xFFFFFFFFLL)
  {
    v17 = *v16;
    v18 = *(v16 + 16);
    v19 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v18;
    *(v15 + 32) = v19;
    *v15 = v17;
  }

  else if (*v16 >> 2 == 0xFFFFFFFFLL)
  {
    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v15, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?));
    v21 = *(v16 + 16);
    v20 = *(v16 + 32);
    v22 = *v16;
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v21;
    *(v15 + 32) = v20;
    *v15 = v22;
  }

  else
  {
    *v15 = *v16;
    if (*(v15 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v15 + 16));
    }

    v23 = *(v16 + 16);
    v24 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v23;
    *(v15 + 32) = v24;
  }

  *(v15 + 56) = *(v16 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for CustomFeedbackGenerator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 64;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for CustomFeedbackGenerator(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 64;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFC0)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFC0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFC0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 64);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CustomFeedbackGenerator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  v5 = ((v3 & 0xF8) + 23) & ~(v3 & 0xF8) & 0x1F8;

  return v4 + v5;
}

void *assignWithTake for FeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 23;
  *a1 = *a2;
  v6 = a1 + 23;
  swift_weakTakeAssign();
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (v7 + v10 + 16) & ~v10;
  v12 = (v10 + 16 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  (*(v8 + 40))(v11, v12);
  v13 = *(v9 + 24) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  if (*v14 < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v18 = v15[1];
      *v14 = v16;
      v14[1] = v18;
      goto LABEL_8;
    }
  }

  else
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v17 = v15[1];
      *v14 = v16;
      v14[1] = v17;

      goto LABEL_8;
    }
  }

  *v14 = *v15;
LABEL_8:
  v19 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*(v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v20 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  v22 = *(v20 + 16);
  *(v19 + 32) = *(v20 + 32);
  *v19 = v21;
  *(v19 + 16) = v22;
  *(v19 + 40) = *(v20 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for FeedbackGenerator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
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
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    v17 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 16) & ~v6);
    }

    v18 = *v17 >> 2;
    if (v18 > 0x80000000)
    {
      return -v18;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for FeedbackGenerator(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
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
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      v18 = ((result + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 16) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = 4 * -a2;
        }

        *v18 = v19;
        v18[1] = 0;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a3;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:), v7, v6);
}

uint64_t closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:)()
{
  v17 = v0;
  v1 = v0[8];
  v2 = v0[7];

  v4 = type metadata accessor for FeedbackGenerator(0, v2, v1, v3);
  v6 = FeedbackGenerator.implementation.modify(v0 + 2, v4);
  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, *(v5 + 24));
    (*(v8 + 16))(v7, v8);
  }

  (v6)(v0 + 2, 0);
  v9 = v0[6];
  outlined init with copy of FeedbackRequestContext(v9, (v0 + 2));
  FeedbackRequestContext.implementation(type:)(*(v9 + 16), *(v9 + 24), v16);
  outlined destroy of FeedbackRequestContext((v0 + 2));
  FeedbackGenerator.implementation.setter(v16, v4);
  v11 = FeedbackGenerator.implementation.modify(v0 + 2, v4);
  v12 = *(v10 + 24);
  if (v12)
  {
    v13 = *(v10 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v10, *(v10 + 24));
    (*(v13 + 8))(v12, v13);
  }

  (v11)(v0 + 2, 0);
  v14 = v0[1];

  return v14();
}

uint64_t closure #2 in FeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for FeedbackGenerator(0, a4, a5, a4);
  v9 = *(a3 + *(v8 + 44));
  if (!v9 || (result = v9(a1, a2), (result & 1) != 0))
  {
    v12 = FeedbackGenerator.implementation.modify(v15, v8);
    v13 = *(v11 + 24);
    if (v13)
    {
      v14 = *(v11 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v11, *(v11 + 24));
      (*(v14 + 24))(v13, v14);
    }

    return (v12)(v15, 0);
  }

  return result;
}

uint64_t (*CustomFeedbackGenerator.state.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xB0uLL);
  }

  *a1 = v5;
  outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(v2 + *(a2 + 44), v5, type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>);
  type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(0);
  State.wrappedValue.getter();
  return CustomFeedbackGenerator.state.modify;
}

void CustomFeedbackGenerator.state.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>((v2 + 8), (v2 + 15), type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
    if (v2[7])
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)((v2 + 15), type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v2, type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>);
    v3 = (v2 + 8);
    v4 = type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?;
  }

  else
  {
    if (v2[7])
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)((v2 + 8), type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
    v4 = type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>;
    v3 = v2;
  }

  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v3, v4);

  free(v2);
}

uint64_t CustomFeedbackGenerator.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>();
  swift_getWitnessTable(protocol conformance descriptor for CustomFeedbackGenerator<A>, a1);
  v3 = type metadata accessor for _ViewModifier_Content();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = type metadata accessor for _ValueActionModifier2();
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for StaticIf();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  v23[10] = v5;
  v23[11] = v4;
  v23[12] = v23[0];
  v23[4] = v5;
  v23[5] = v4;
  v23[6] = v23[0];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v14);
  v18 = swift_getWitnessTable(MEMORY[0x1E697FDE0], v6);
  v26[0] = WitnessTable;
  v26[1] = v18;
  v19 = MEMORY[0x1E697E858];
  v25[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v26);
  v25[1] = MEMORY[0x1E69805D0];
  v22 = swift_getWitnessTable(v19, v8, v25);
  StaticIf<>.init<A>(idiom:then:else:)();
  v24[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v24[1] = v22;
  v24[2] = v22;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v9, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v16, v9);
}

double CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(a2 + 24);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 24) = v10;
  (*(v5 + 32))(v9 + v8, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_getWitnessTable(protocol conformance descriptor for CustomFeedbackGenerator<A>, a2);
  v11 = type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable(MEMORY[0x1E697FDF8], v11);
  View.onChange<A>(of:initial:_:)();

  return result;
}

uint64_t closure #1 in CustomFeedbackGenerator.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for CustomFeedbackGenerator(255, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for CustomFeedbackGenerator<A>, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = type metadata accessor for _ValueActionModifier2();
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v16 = CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(v15, v4);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5, v16);
  v18 = swift_getWitnessTable(MEMORY[0x1E697FDE0], v6);
  v23[0] = WitnessTable;
  v23[1] = v18;
  v19 = MEMORY[0x1E697E858];
  v22[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v23);
  v22[1] = MEMORY[0x1E69805D0];
  swift_getWitnessTable(v19, v8, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v9 + 8);
  v20(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v14, v8);
}

uint64_t closure #1 in CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for CustomFeedbackGenerator(0, a4, a5, a4);
  (*(a3 + *(v8 + 40)))(v28, a1, a2);
  v9 = v28[0];
  v27 = v28[1];
  v10 = a3 + *(v8 + 44);
  outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(v10, v28, type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>);
  type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(0);
  State.wrappedValue.getter();
  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v28, type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>);
  if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == 0x3FFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFCLL;
  }

  else
  {
    v11 = v29;
  }

  if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == 0x3FFFFFFFCLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = v30;
  }

  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(&v29, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
  v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  if (v11 >> 2 == 0xFFFFFFFF)
  {
    if (v13 == 0x3FFFFFFFCLL)
    {
      goto LABEL_24;
    }
  }

  else if (v13 != 0x3FFFFFFFCLL && specialized static SensoryFeedback.FeedbackType.== infix(_:_:)(v11, v12, v9, v27))
  {
    goto LABEL_24;
  }

  v15 = CustomFeedbackGenerator.state.modify(v28, v8);
  if (*v14 >> 2 != 0xFFFFFFFFLL)
  {
    v16 = v14[5];
    if (v16)
    {
      v17 = v14[6];
      __swift_mutable_project_boxed_opaque_existential_1((v14 + 2), v14[5]);
      (*(v17 + 16))(v16, v17);
    }
  }

  (v15)(v28, 0);
  if (v13 == 0x3FFFFFFFCLL)
  {
    v28[0] = 0x3FFFFFFFCLL;
    memset(&v28[1], 0, 48);
  }

  else
  {
    v29 = v9;
    v30 = v27;
    closure #1 in closure #1 in CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(v28, &v28[2], &v29, a3);
  }

  outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(v28, &v29, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
  if (*(v10 + 56))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(&v29, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v28, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
  v19 = CustomFeedbackGenerator.state.modify(v28, v8);
  if (*v18 >> 2 != 0xFFFFFFFFLL)
  {
    v20 = v18[5];
    if (v20)
    {
      v21 = v18[6];
      __swift_mutable_project_boxed_opaque_existential_1((v18 + 2), v18[5]);
      (*(v21 + 8))(v20, v21);
    }
  }

  (v19)(v28, 0);
LABEL_24:
  v23 = CustomFeedbackGenerator.state.modify(v28, v8);
  if (*v22 >> 2 != 0xFFFFFFFFLL)
  {
    v24 = v22[5];
    if (v24)
    {
      v25 = v22[6];
      __swift_mutable_project_boxed_opaque_existential_1((v22 + 2), v22[5]);
      (*(v25 + 24))(v24, v25);
    }
  }

  return (v23)(v28, 0);
}

uint64_t closure #1 in closure #1 in CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(unint64_t *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = *a3;
  v6 = a3[1];
  *a1 = *a3;
  a1[1] = v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    UIKitSensoryFeedbackCache.implementation(type:)(v5, v6, &v11);
    if (v12)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v11, v13);
      Attribute = AGWeakAttributeGetAttribute();
      v9 = *MEMORY[0x1E698D3F8];

      if (Attribute != v9)
      {
        *(a2 + 24) = &type metadata for LocationBasedFeedbackAdaptor;
        *(a2 + 32) = &protocol witness table for LocationBasedFeedbackAdaptor;
        v10 = swift_allocObject();
        *a2 = v10;
        result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v13, v10 + 24);
        *(v10 + 16) = Attribute;
        return result;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {

      result = outlined destroy of LocationBasedSensoryFeedback?(&v11, &lazy cache variable for type metadata for LocationBasedSensoryFeedback?, &lazy cache variable for type metadata for LocationBasedSensoryFeedback, &protocol descriptor for LocationBasedSensoryFeedback);
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CustomFeedbackGenerator<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for CustomFeedbackGenerator<A>);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t partial apply for closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for FeedbackGenerator(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:)(v10, v11, v4 + v9, v6, v7);
}

uint64_t partial apply for closure #1 in CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a3(0, v7, v8) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a4(a1, a2, v10, v7, v8);
}

void type metadata accessor for ViewInputFlagModifier<RecessButtonToggleBackground>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<RecessButtonToggleBackground>)
  {
    lazy protocol witness table accessor for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<RecessButtonToggleBackground>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground()
{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecessButtonToggleBackground, &unk_1EFF9AFE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecessButtonToggleBackground, &unk_1EFF9AFE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecessButtonToggleBackground, &unk_1EFF9AFE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecessButtonToggleBackground, &unk_1EFF9AFE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecessButtonToggleBackground, &unk_1EFF9AFE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<RecessButtonToggleBackground> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<RecessButtonToggleBackground> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<RecessButtonToggleBackground> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<RecessButtonToggleBackground>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<RecessButtonToggleBackground> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance RecessButtonToggleBackground(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, &v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v7 = *(&v25 + 1);
    v8 = v26;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    v10 = MEMORY[0x1EEE9AC00](v9);
    v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12, v10);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v23, v7, v8);
    result = __swift_destroy_boxed_opaque_existential_1(&v24);
    *v3 = v23;
  }

  else
  {
    outlined destroy of DropDelegate?(a1, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
    v15 = v3;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v17)
    {
      v18 = v16;
      v19 = v3;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v23 = *v15;
      if (!v20)
      {
        specialized _NativeDictionary.copy()();
        v19 = v15;
        v21 = v23;
      }

      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>((*(v21 + 56) + 40 * v18), &v24);
      specialized _NativeDictionary._delete(at:)(v18, v21);
      *v19 = v21;
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
    }

    return outlined destroy of DropDelegate?(&v24, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v14 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v14;
      }

      outlined destroy of NavigationLinkSelectionIdentifier(*(v10 + 48) + (v8 << 6));
      specialized _NativeDictionary._delete(at:)(v8, v10);
      result = outlined destroy of NavigationLinkSelectionIdentifier(a3);
      *v4 = v10;
    }

    else
    {

      return outlined destroy of NavigationLinkSelectionIdentifier(a3);
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a3, v13);
    result = outlined destroy of NavigationLinkSelectionIdentifier(a3);
    *v3 = v15;
  }

  return result;
}

Swift::Int specialized Dictionary.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        specialized _NativeDictionary.copy()();
        v20 = v22;
      }

      result = specialized _NativeDictionary._delete(at:)(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v4;
      v15 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v15;
      }

      specialized _NativeDictionary._delete(at:)(v8, v10);
      *v5 = v10;
    }

    else
    {
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, v13, *&a1, *&a2);

    *v4 = v16;
  }
}

uint64_t specialized Dictionary.subscript.setter(unsigned __int8 *__src, uint64_t a2, uint64_t a3)
{
  if (__src[280] == 255)
  {
    v8 = MEMORY[0x1E69E6720];
    outlined destroy of TabEntry?(__src, &lazy cache variable for type metadata for TabEntry?, &type metadata for TabEntry, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, __dst);

    return outlined destroy of TabEntry?(__dst, &lazy cache variable for type metadata for TabEntry?, &type metadata for TabEntry, v8);
  }

  else
  {
    memcpy(__dst, __src, 0x119uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__dst, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v7;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E6720];
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);

    outlined destroy of TabEntry?(v8, &lazy cache variable for type metadata for Any?, v5 + 8, v6);
  }
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }
}

unint64_t specialized Dictionary.subscript.setter(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 88) == 255)
  {
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for NavigationDestinationPresentation?, &type metadata for NavigationDestinationPresentation, MEMORY[0x1E69E6720]);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v13 = v20;
      }

      v14 = (*(v13 + 56) + 96 * v11);
      v15 = v14[1];
      v21 = *v14;
      v22 = v15;
      v17 = v14[3];
      v16 = v14[4];
      v18 = v14[2];
      *&v25[9] = *(v14 + 73);
      v24 = v17;
      *v25 = v16;
      v23 = v18;
      specialized _NativeDictionary._delete(at:)(v11, v13);
      *v3 = v13;
    }

    else
    {
      v24 = 0u;
      memset(v25, 0, 24);
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v25[24] = -1;
    }

    return outlined destroy of TabEntry?(&v21, &lazy cache variable for type metadata for NavigationDestinationPresentation?, &type metadata for NavigationDestinationPresentation, MEMORY[0x1E69E6720]);
  }

  else
  {
    v5 = a1[3];
    v23 = a1[2];
    v24 = v5;
    *v25 = a1[4];
    *&v25[9] = *(a1 + 73);
    v6 = a1[1];
    v21 = *a1;
    v22 = v6;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v21, a2, v7);
    *v2 = v19;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8) == 1)
  {
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v9 = v22;
      }

      v10 = *(v9 + 56) + 120 * v7;
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 16);
      v24 = *v10;
      v25 = v13;
      v26 = v12;
      v27 = v11;
      v14 = *(v10 + 64);
      v15 = *(v10 + 80);
      v16 = *(v10 + 96);
      v31 = *(v10 + 112);
      v29 = v15;
      v30 = v16;
      v28 = v14;
      specialized _NativeDictionary._delete(at:)(v7, v9);
      *v3 = v9;
    }

    else
    {
      v24 = xmmword_18CD633F0;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0;
    }

    return outlined destroy of TabEntry?(&v24, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
  }

  else
  {
    v17 = *(a1 + 80);
    v28 = *(a1 + 64);
    v29 = v17;
    v30 = *(a1 + 96);
    v31 = *(a1 + 112);
    v18 = *(a1 + 16);
    v24 = *a1;
    v25 = v18;
    v19 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = v19;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v24, a2, v20);
    *v2 = v23;
  }

  return result;
}

Swift::Int specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v15;
      }

      result = specialized _NativeDictionary._delete(at:)(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t ViewModifier.requiring<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v5);
  return StaticIf<>.init<>(_:then:)();
}

uint64_t View.onDrop(of:isTargeted:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v24[3] = &type metadata for ItemProviderDropAction;
  v24[4] = &protocol witness table for ItemProviderDropAction;
  v17 = swift_allocObject();
  v24[0] = v17;
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = partial apply for closure #1 in View.onDrop(of:isTargeted:perform:);
  v17[5] = v16;
  outlined init with copy of _Benchmark(v24, v25);
  v18 = type metadata accessor for FunctionalDropDelegate();
  v19 = swift_allocObject();
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v25, v19 + 48);
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  v22 = v18;
  v23 = &protocol witness table for FunctionalDropDelegate;
  *&v21 = v19;

  outlined copy of Binding<Int>?(a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  outlined destroy of DropDelegate?(v25, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v21, v25);
  MEMORY[0x18D00A570](v25, a7, &type metadata for DropModifier, a8);
  return outlined destroy of DropModifier(v25);
}

{
  v23[3] = &type metadata for ItemProviderDropAction;
  v23[4] = &protocol witness table for ItemProviderDropAction;
  v16 = swift_allocObject();
  v23[0] = v16;
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a5;
  v16[5] = a6;
  outlined init with copy of _Benchmark(v23, v24);
  v17 = type metadata accessor for FunctionalDropDelegate();
  v18 = swift_allocObject();
  *(v18 + 88) = 0;
  *(v18 + 96) = 0;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v24, v18 + 48);
  *(v18 + 88) = 0;
  *(v18 + 96) = 0;
  v21 = v17;
  v22 = &protocol witness table for FunctionalDropDelegate;
  *&v20 = v18;

  outlined copy of Binding<Int>?(a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  outlined destroy of DropDelegate?(v24, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v20, v24);
  MEMORY[0x18D00A570](v24, a7, &type metadata for DropModifier, a8);
  return outlined destroy of DropModifier(v24);
}

uint64_t View.onDrop(of:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of _Benchmark(a2, v7);
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  outlined destroy of DropDelegate?(v8, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v7, v8);
  MEMORY[0x18D00A570](v8, a3, &type metadata for DropModifier, a4);
  return outlined destroy of DropModifier(v8);
}

uint64_t View.dropDestination<A>(for:action:isTargeted:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a10)
{
  v39 = a7;
  v38 = a5;
  v36 = a1;
  v41 = a8;
  v40 = type metadata accessor for ModifiedContent();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v36 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a3;
  v17[5] = a4;

  Binding.init(get:set:)();
  v18 = v48[0];
  v19 = v48[1];
  v20 = static Transferable.readableContentTypes.getter();
  v54 = 0;
  v46 = type metadata accessor for TransferableDropAction(0, a6, a10, v21);
  *&v47 = &protocol witness table for TransferableDropAction<A>;
  v22 = swift_allocObject();
  v44 = v22;
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = v54;
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  outlined init with copy of _Benchmark(&v44, v48);
  v23 = type metadata accessor for FunctionalDropDelegate();
  v24 = swift_allocObject();
  *(v24 + 88) = 0;
  *(v24 + 96) = 0;
  *(v24 + 16) = v20;
  *(v24 + 24) = v18;
  *(v24 + 40) = v19;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v48, v24 + 48);
  *(v24 + 88) = 0;
  *(v24 + 96) = 0;
  v52 = v23;
  v53 = &protocol witness table for FunctionalDropDelegate;
  *&v50 = v24;
  swift_retain_n();
  swift_retain_n();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  *&v49 = 0;
  memset(v48, 0, sizeof(v48));
  outlined destroy of DropDelegate?(v48, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v50, v48);
  v25 = v39;
  MEMORY[0x18D00A570](v48, v38, &type metadata for DropModifier, v39);
  outlined destroy of DropModifier(v48);
  v55 = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = a10;
  *(v26 + 32) = v36;
  *(v26 + 40) = a2;
  *(v26 + 48) = v55;
  *(v26 + 56) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v26 + 64) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for closure #1 in TabDropDestinationTraitWritingModifier.init(supportedContentTypes:isTargeted:action:);
  *(v27 + 24) = v26;
  v50 = v18;
  v51 = v19;
  v56 = v20;
  v44 = v20;
  v45 = v18;
  LOBYTE(v46) = v19;
  *&v47 = partial apply for closure #1 in TabDropConfiguration.init(supportedContentTypes:isTargeted:action:);
  *(&v47 + 1) = v27;
  v29 = type metadata accessor for TabDropDestinationTraitWritingModifier(0, a6, a10, v28);
  lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput();

  ViewModifier.requiring<A>(_:)(&type metadata for DropDestinationUsesTraitKeyInput, v29, &type metadata for DropDestinationUsesTraitKeyInput);
  outlined destroy of [UTType](&v56, &lazy cache variable for type metadata for [UTType], MEMORY[0x1E69E8450], MEMORY[0x1E69E62F8]);
  outlined destroy of WeakBox<Swift.AnyObject>?(&v50, type metadata accessor for Binding<Bool>?);

  v44 = *&v48[0];
  v45 = *(v48 + 8);
  LOBYTE(v46) = BYTE8(v48[1]);
  v47 = v49;
  v30 = type metadata accessor for StaticIf();
  v43[0] = v25;
  v43[1] = &protocol witness table for DropModifier;
  v31 = v40;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v40, v43);
  v33 = v37;
  MEMORY[0x18D00A570](&v44, v31, v30, WitnessTable);

  v34 = v45;

  outlined consume of Binding<NavigationSplitViewColumn>?(v34, *(&v34 + 1));

  return (*(v42 + 8))(v33, v31);
}

uint64_t TransferableDropAction.init(action:cleanupAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput()
{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

uint64_t outlined destroy of WeakBox<Swift.AnyObject>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for Binding<Bool>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<Bool>?)
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<Bool>?);
    }
  }
}

uint64_t View.dropDestination<A>(for:isEnabled:action:isTargeted:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;

  Binding.init(get:set:)();
  v18 = v34;
  v19 = v35;
  v20 = static Transferable.readableContentTypes.getter();
  v37 = 0;
  v33[3] = type metadata accessor for TransferableDropAction(0, a8, a10, v21);
  v33[4] = &protocol witness table for TransferableDropAction<A>;
  v22 = swift_allocObject();
  v33[0] = v22;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = v37;
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  outlined init with copy of _Benchmark(v33, &v34);
  v23 = type metadata accessor for FunctionalDropDelegate();
  v24 = swift_allocObject();
  *(v24 + 88) = 0;
  *(v24 + 96) = 0;
  *(v24 + 16) = v20;
  *(v24 + 24) = v18;
  *(v24 + 40) = v19;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v34, v24 + 48);
  *(v24 + 88) = 0;
  *(v24 + 96) = 0;
  v31 = v23;
  v32 = &protocol witness table for FunctionalDropDelegate;
  *&v30 = v24;

  __swift_destroy_boxed_opaque_existential_1(v33);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  if (a2)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, &v34);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v30);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  outlined assign with take of DropDelegate?(&v34, &v27);
  v34 = v27;
  v35 = v28;
  v36 = v29;
  MEMORY[0x18D00A570](&v34, a7, &type metadata for DropModifier, a9);

  return outlined destroy of DropModifier(&v34);
}

uint64_t outlined assign with take of DropDelegate?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DropDelegate?(0, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t View.dropDestination<A>(for:isEnabled:action:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = static Transferable.readableContentTypes.getter();
  v31 = 1;
  v27[3] = type metadata accessor for TransferableDropAction(0, a6, a8, v16);
  v27[4] = &protocol witness table for TransferableDropAction<A>;
  v17 = swift_allocObject();
  v27[0] = v17;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = v31;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  outlined init with copy of _Benchmark(v27, &v28);
  v18 = type metadata accessor for FunctionalDropDelegate();
  v19 = swift_allocObject();
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 16) = v15;
  *(v19 + 40) = 0;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v28, v19 + 48);
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  v25 = v18;
  v26 = &protocol witness table for FunctionalDropDelegate;
  *&v24 = v19;

  __swift_destroy_boxed_opaque_existential_1(v27);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  if (a2)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v24, &v28);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  outlined assign with take of DropDelegate?(&v28, &v21);
  v28 = v21;
  v29 = v22;
  v30 = v23;
  MEMORY[0x18D00A570](&v28, a5, &type metadata for DropModifier, a7);
  return outlined destroy of DropModifier(&v28);
}

uint64_t View.dropDestination<A>(for:isEnabled:action:isTargeted:dropProposal:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a5;
  v19[5] = a6;

  Binding.init(get:set:)();
  v20 = v36;
  v21 = v37;
  v22 = static Transferable.readableContentTypes.getter();
  v39 = 0;
  v35[3] = type metadata accessor for TransferableDropAction(0, a10, a12, v23);
  v35[4] = &protocol witness table for TransferableDropAction<A>;
  v24 = swift_allocObject();
  v35[0] = v24;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  *(v24 + 32) = v39;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  outlined init with copy of _Benchmark(v35, &v36);
  v25 = type metadata accessor for FunctionalDropDelegate();
  v26 = swift_allocObject();
  *(v26 + 88) = 0;
  *(v26 + 96) = 0;
  *(v26 + 16) = v22;
  *(v26 + 24) = v20;
  *(v26 + 40) = v21;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v36, v26 + 48);
  *(v26 + 88) = a7;
  *(v26 + 96) = a8;
  v33 = v25;
  v34 = &protocol witness table for FunctionalDropDelegate;
  *&v32 = v26;

  __swift_destroy_boxed_opaque_existential_1(v35);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  if (a2)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v32, &v36);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  outlined assign with take of DropDelegate?(&v36, &v29);
  v36 = v29;
  v37 = v30;
  v38 = v31;
  MEMORY[0x18D00A570](&v36, a9, &type metadata for DropModifier, a11);

  return outlined destroy of DropModifier(&v36);
}

uint64_t View.onDrop<A>(of:delegate:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  outlined init with copy of _Benchmark(a2, v19);
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  outlined destroy of DropDelegate?(v17, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v17);
  DropPreviewModifier.init(base:preview:)(v17, a3, a4, v19);
  v15 = type metadata accessor for DropPreviewModifier(0, a6, a8, v14);

  MEMORY[0x18D00A570](v19, a5, v15, a7);
  return (*(*(v15 - 8) + 8))(v19, v15);
}

uint64_t DropPreview.center.setter(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 40));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t DropPreview.init(center:_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for DropPreview(0, a2, a3, a3);
  v13 = (*(*(a2 - 8) + 56))(a4 + *(v12 + 36), 1, 1, a2);
  v14 = (a4 + *(v12 + 40));
  *v14 = a5;
  v14[1] = a6;
  a1(v13);
  type metadata accessor for DropPreview.Storage(0, a2, a3, v15);

  return swift_storeEnumTagMultiPayload();
}

void DropPreview.view()(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for DropPreview.Storage(0, v6, *(a1 + 24), a2);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - v9);
  (*(v11 + 16))(&v13 - v9, v4, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*v10)();
  }

  else
  {
    v12 = *(v6 - 8);
    (*(v12 + 32))(a3, v10, v6);
    (*(v12 + 56))(a3, 0, 1, v6);
  }
}

double DefaultDragDropPreview.center.getter()
{
  v1 = [*v0 target];
  [v1 center];
  v3 = v2;

  return v3;
}

uint64_t closure #1 in TabDropDestinationTraitWritingModifier.init(supportedContentTypes:isTargeted:action:)(unint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v9 = static DropSession.ID.invalid;
  BYTE8(v9) = 0;
  *v10 = 1;
  memset(&v10[8], 0, 32);
  *&v10[40] = a2;
  v11 = a3;
  v7 = type metadata accessor for TransferableDropAction(0, a5, a6, a6);
  TransferableDropAction.perform(_:_:)(a1, &v9, v7);
  v12[2] = *&v10[16];
  v12[3] = *&v10[32];
  v13 = v11;
  v12[0] = v9;
  v12[1] = *v10;
  outlined destroy of DropSession(v12);
  return 1;
}

uint64_t TransferableDropAction.perform(_:_:)(unint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v61 = a2[2];
  v62 = v12;
  v63 = *(a2 + 8);
  v13 = a2[1];
  v59 = *a2;
  v60 = v13;
  v14 = dispatch_group_create();
  v15 = a3;
  v16 = *(a3 + 16);
  aBlock[0] = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  result = AtomicBox.init(wrappedValue:)();
  v18 = v55[0];
  v54 = v6;
  v52 = v9;
  v51 = v8;
  v50 = v10;
  if (!(a1 >> 62))
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v15;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v33 = static OS_dispatch_queue.main.getter();
    v34 = v48;
    v57 = *v48;
    v58 = *(v48 + 16);
    v35 = *(v48 + 3);
    v36 = *(v48 + 4);
    v37 = swift_allocObject();
    v38 = *(v20 + 24);
    *(v37 + 16) = v16;
    *(v37 + 24) = v38;
    v39 = v34[1];
    *(v37 + 32) = *v34;
    *(v37 + 48) = v39;
    *(v37 + 64) = *(v34 + 4);
    *(v37 + 72) = v18;
    v40 = v62;
    *(v37 + 112) = v61;
    *(v37 + 128) = v40;
    *(v37 + 144) = v63;
    v41 = v60;
    *(v37 + 80) = v59;
    *(v37 + 96) = v41;
    aBlock[4] = partial apply for closure #2 in TransferableDropAction.perform(_:_:);
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_6;
    v42 = _Block_copy(aBlock);

    v44 = type metadata accessor for TransferableDropAction.UserActionStorage(0, v16, v38, v43);
    (*(*(v44 - 8) + 16))(v55, &v57, v44);
    outlined copy of AppIntentExecutor?(v35, v36);
    outlined init with copy of DropSession(&v59, v55);
    v45 = v49;
    static DispatchQoS.unspecified.getter();
    v55[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v46 = v51;
    v47 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v42);

    (*(v53 + 8))(v46, v47);
    (*(v50 + 8))(v45, v52);

    return 1;
  }

  result = __CocoaSet.count.getter();
  v19 = result;
  v20 = v15;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v19 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      do
      {
        MEMORY[0x18D00E9C0](v21++, a1);
        dispatch_group_enter(v14);
        v22 = swift_allocObject();
        v23 = *(v15 + 24);
        v22[2] = v16;
        v22[3] = v23;
        v22[4] = v14;
        v22[5] = v18;
        v24 = v14;

        v25 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
        swift_unknownObjectRelease();

        v20 = v15;
      }

      while (v19 != v21);
    }

    else
    {
      v26 = (a1 + 32);
      do
      {
        v27 = *v26++;
        v28 = v27;
        dispatch_group_enter(v14);
        v29 = swift_allocObject();
        v30 = *(v20 + 24);
        v29[2] = v16;
        v29[3] = v30;
        v29[4] = v14;
        v29[5] = v18;
        v31 = v14;

        v32 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();

        --v19;
      }

      while (v19);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t static TabDropDestinationTraitWritingModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of _ViewListInputs(a2, v12);
  lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput();
  PropertyList.subscript.setter();
  type metadata accessor for TabDropDestinationTraitWritingModifier(255, a5, a6, v8);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v10 = type metadata accessor for TabDropDestinationTraitWritingModifier.TraitWriter(0, a5, a6, v9);
  swift_getWitnessTable(protocol conformance descriptor for TabDropDestinationTraitWritingModifier<A>.TraitWriter, v10);
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type TabDropDestinationModifier and conformance TabDropDestinationModifier();
  static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
  return outlined destroy of _ViewListInputs(v12);
}

double TabDropDestinationTraitWritingModifier.TraitWriter.modifier.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for TabDropDestinationTraitWritingModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  v11 = *(Value + 32);
  v10 = *(Value + 40);
  v12 = *(Value + 24);

  outlined copy of Binding<Int>?(v8, v9);
  *a5 = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v12;
  *(a5 + 32) = v11;
  *(a5 + 40) = v10;

  return result;
}

double TabDropDestinationTraitWritingModifier.TraitWriter.value.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  TabDropDestinationTraitWritingModifier.TraitWriter.modifier.getter(a2, a3, a4, &v8);
  v6 = v10;
  *a5 = v8;
  *(a5 + 8) = v9;
  *(a5 + 24) = v6;
  result = *&v11;
  *(a5 + 32) = v11;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DropDestinationUsesTraitKeyInput(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for DropAction.cleanupAction.setter in conformance ItemProviderDropAction(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

void closure #1 in TransferableDropAction.perform(_:_:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v32[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32[-1] - v12;
  type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280], 1);
  v14 = type metadata accessor for Result();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v32[-1] - v16);
  (*(v18 + 16))(&v32[-1] - v16, a1, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v17;
    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v32);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v32);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_18BD4A000, v21, v20, "Error loading %s: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v23, -1, -1);
      MEMORY[0x18D0110E0](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v13, v17, a4);
    (*(v8 + 16))(v10, v13, a4);
    v32[4] = a3;
    type metadata accessor for Array();
    type metadata accessor for AtomicBox();
    v30 = AtomicBox.wrappedValue.modify();
    Array.append(_:)();
    v30(v32, 0);
    (*(v8 + 8))(v13, a4);
  }

  dispatch_group_leave(a2);
}

uint64_t closure #2 in TransferableDropAction.perform(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  type metadata accessor for Array();
  type metadata accessor for AtomicBox();
  AtomicBox.wrappedValue.getter();
  v8 = *(a3 + 56);
  v9 = *(a3 + 64);
  if (v7)
  {
    v10 = *(a3 + 16);
    v14[0] = *a3;
    v14[1] = v10;
    v14[2] = *(a3 + 32);
    v15 = *(a3 + 48);
    v16 = v8;
    v17 = v9;
    (v6)(v13, v14);
  }

  else
  {
    v6(v13, v8, v9);
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    return v12(result);
  }

  return result;
}

uint64_t protocol witness for DropAction.cleanupAction.setter in conformance TransferableDropAction<A>(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DropInfo.localDragContexts.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = [Strong localDragSession], swift_unknownObjectRelease(), !v2))
  {
    v7 = 0u;
    v8 = 0u;
LABEL_6:
    outlined destroy of TabEntry?(&v7, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    return MEMORY[0x1E69E7CC0];
  }

  v3 = [v2 localContext];
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_6;
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for [Any], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if (swift_dynamicCast())
  {
    return v5;
  }

  return MEMORY[0x1E69E7CC0];
}

Swift::Bool __swiftcall DropInfo.hasItemsConforming(to:)(Swift::OpaquePointer to)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    v4 = UIDropSession.hasItemsConforming(to:)(to);
    swift_unknownObjectRelease();
    LOBYTE(Strong) = v4;
  }

  return Strong;
}

{
  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(to._rawValue + 2);
  if (v9)
  {
    v10 = (v7 + 48);
    v23 = v7;
    v11 = (v7 + 32);
    v12 = to._rawValue + 40;
    v13 = MEMORY[0x1E69E7CC0];
    v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {

      UTType.init(_:)();
      if ((*v10)(v4, 1, v5) == 1)
      {
        outlined destroy of [UTType](v4, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      }

      else
      {
        v14 = *v11;
        (*v11)(v8, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v13[2] = v16 + 1;
        v17 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16;
        v8 = v22;
        v14(v17, v22, v5);
      }

      v12 += 16;
      --v9;
    }

    while (v9);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v18 = UIDropSession.hasItemsConforming(to:)(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t DropInfo.itemProviders(for:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_getObjectType();
  UIDropSession.itemProviders(for:)(a1);
  v4 = v3;
  swift_unknownObjectRelease();
  return v4;
}

{
  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (v7 + 48);
    v24 = v7;
    v11 = (v7 + 32);
    v12 = a1 + 40;
    v13 = MEMORY[0x1E69E7CC0];
    v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {

      UTType.init(_:)();
      if ((*v10)(v4, 1, v5) == 1)
      {
        outlined destroy of [UTType](v4, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      }

      else
      {
        v14 = *v11;
        (*v11)(v8, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v13[2] = v16 + 1;
        v17 = v13 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v16;
        v8 = v23;
        v14(v17, v23, v5);
      }

      v12 += 16;
      --v9;
    }

    while (v9);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    UIDropSession.itemProviders(for:)(v13);
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  return v19;
}

Swift::Void __swiftcall DropInfo.setDropTargetLocation(_:at:)(CGPoint_optional _, Swift::Int at)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v9 = *&_.is_nil;
  v10 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = [Strong items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > v6)
    {
      v14 = *(v13 + 8 * v6 + 32);
      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v14 = MEMORY[0x18D00E9C0](v6, v13);
LABEL_6:
  v15 = v14;

  if (v10[1])
  {
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v9, at, v7 & 1, v15);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DropInfo.setDropTargetTransform(_:at:)(CGAffineTransform_optional *_, Swift::Int at)
{
  v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = [Strong items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if (at < 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > at)
    {
      v9 = *(v8 + 8 * at + 32);
      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v9 = MEMORY[0x18D00E9C0](at, v8);
LABEL_6:
  v10 = v9;

  if (v5[1])
  {
    swift_beginAccess();
    specialized Dictionary.subscript.setter(_, v10);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void DropDelegate.dropUpdated(info:)(_WORD *a1@<X8>)
{
  DropDelegate.dropUpdated(info:)(a1);
}

{
  *a1 = 6;
}

uint64_t FunctionalDropDelegate.performDrop(info:)(void *a1)
{
  v2 = v1;
  if (*(v1 + 32))
  {
    LOBYTE(v31) = 0;

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v4 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    UIDropSession.itemProviders(for:)(v4);
    v6 = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of DropInfo(a1, &v31);
  v7 = swift_allocObject();
  v8 = v32;
  *(v7 + 16) = v31;
  *(v7 + 32) = v8;
  *(v7 + 48) = v33;
  swift_beginAccess();
  v9 = *(v2 + 72);
  v10 = *(v2 + 80);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 48, v9);
  (*(v10 + 16))(destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, v7, v9, v10);
  swift_endAccess();
  outlined init with copy of _Benchmark(v2 + 48, v26);
  v11 = v27;
  v12 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = *(v13 + 2);
  v15 = *(v13 + 4);
  v29[2] = *(v13 + 3);
  v29[3] = v15;
  v30 = v13[10];
  v29[1] = v14;
  v29[0] = *(v13 + 1);
  v16 = *(v13 + 4);
  v23 = *(v13 + 3);
  v24 = v16;
  v25 = v13[10];
  v17 = *(v13 + 2);
  v21 = *(v13 + 1);
  v22 = v17;
  v18 = *(v12 + 32);
  outlined init with copy of DropSession(v29, &v31);
  v19 = v18(v6, &v21, v11, v12);

  v33 = v23;
  v34 = v24;
  v35 = v25;
  v31 = v21;
  v32 = v22;
  outlined destroy of DropSession(&v31);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v19 & 1;
}

uint64_t FunctionalDropDelegate.dropUpdated(info:)@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v16 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DropProposal>, &type metadata for DropProposal, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = 1538;
  specialized Array.append<A>(contentsOf:)(inited);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_18CD63400;
  *(v6 + 32) = 1539;
  specialized Array.append<A>(contentsOf:)(v6);
  v7 = v16;
  if (!*(v16 + 16))
  {

    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD63400;
    *(v7 + 32) = 1537;
    v8 = *(v2 + 88);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:

    v13 = 6;
    goto LABEL_9;
  }

  v8 = *(v2 + 88);
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = v7;
  v10 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();

    v11 = UIDropSession.registeredContentTypes()();
    swift_unknownObjectRelease();
  }

  else
  {

    v11 = MEMORY[0x1E69E7CD0];
  }

  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8(&v15, v9, v11, v14[11], v14[12]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v8, v10);

  v13 = v15;
LABEL_9:
  *a2 = v13;
  return result;
}

SwiftUI::DropProposal __swiftcall DropProposal.init(operation:)(SwiftUI::DropOperation operation)
{
  *v1 = *operation;
  v1[1] = 6;
  result.operation = operation;
  return result;
}

double FunctionalDropDelegate.__deallocating_deinit()
{

  outlined consume of Binding<NavigationSplitViewColumn>?(v0[3], v0[4]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v0[11], v0[12]);

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for DropDelegate.validateDrop(info:) in conformance FunctionalDropDelegate(void *a1)
{
  v2._rawValue = *(*v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v4 = UIDropSession.hasItemsConforming(to:)(v2);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}