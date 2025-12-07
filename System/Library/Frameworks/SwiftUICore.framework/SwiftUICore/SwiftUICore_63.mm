uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV038AccessibilitySpeechSpellsOutCharactersI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV032AccessibilitySpeechAdjustedPitchI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    BYTE8(v17[0]) = v12 & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    v14 = v13 & 1;
    BYTE8(v17[0]) = v13 & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>(0);
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v18 = *&v17[0];
    v19 = v14;
    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v17[0];
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>, &type metadata for EnvironmentValues.ResolvableStringReferenceDateKey, &protocol witness table for EnvironmentValues.ResolvableStringReferenceDateKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v27);
        outlined init with take of AnyTrackedValue(v27, v28);
        v12 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v13 = v12[1];
        type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        v13();
        __swift_destroy_boxed_opaque_existential_1(v28);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = v15 + *(*v15 + 248);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          v16 = __swift_project_value_buffer(v21, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
        }

        v22 = MEMORY[0x1E6969530];
        v23 = MEMORY[0x1E69E6720];
        outlined init with copy of WeakBox<GlassContainerCache>(v16, a2, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>(0);
        v29 = v24;
        v30 = &protocol witness table for TrackedValue<A>;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
        outlined init with copy of WeakBox<GlassContainerCache>(a2, boxed_opaque_existential_1, &lazy cache variable for type metadata for Date?, v22, v23);
        specialized Dictionary.subscript.setter(v28, v8);
      }

      goto LABEL_18;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(a1);
  if (v14)
  {
    outlined init with copy of WeakBox<GlassContainerCache>(v14 + *(*v14 + 248), a2, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v17 = MEMORY[0x1E6969530];
    v18 = MEMORY[0x1E69E6720];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v20 = __swift_project_value_buffer(v19, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
    outlined init with copy of WeakBox<GlassContainerCache>(v20, a2, &lazy cache variable for type metadata for Date?, v17, v18);
  }

LABEL_18:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for TimeDataSource<Date>, MEMORY[0x1E6969530], type metadata accessor for TimeDataSource);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for AttributeScopeContext, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[3];
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>(0);
    v21 = v16;
    v22 = &protocol witness table for TrackedValue<A>;
    v17 = swift_allocObject();
    v20[0] = v17;
    *(v17 + 16) = v14;
    *(v17 + 24) = *(a2 + 1);
    *(v17 + 40) = v15;

    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028ContainerBackgroundLuminanceI033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v21);
    outlined init with take of AnyTrackedValue(v21, v22);
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(v22, v26);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ContainerBackgroundLuminance?, &type metadata for ContainerBackgroundLuminance, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    v16 = *(a2 + 4);
    v17 = *(a2 + 20);
    v18 = *(a2 + 21);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>(0);
    v26 = v19;
    v27 = &protocol witness table for TrackedValue<A>;
    v22[0] = v14;
    v22[1] = v15;
    v24 = v17;
    v23 = v16;
    v25 = v18;
    specialized Dictionary.subscript.setter(v22, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v24);
    outlined init with take of AnyTrackedValue(v24, v25);
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    v19 = a2[5];
    v20 = a2[6];
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HoverEffectContextKey>>(0);
    v26 = v21;
    v27 = &protocol witness table for TrackedValue<A>;
    v22 = swift_allocObject();
    v25[0] = v22;
    v22[2] = v14;
    v22[3] = v15;
    v22[4] = v16;
    v22[5] = v17;
    v22[6] = v18;
    v22[7] = v19;
    v22[8] = v20;
    outlined copy of HoverEffectContext?(v14, v15, v16, v17, v18, v19, v20);
    specialized Dictionary.subscript.setter(v25, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for HoverEffectContext.State, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v16 = *(a2 + 1);
    v15 = *(a2 + 2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v14;
    v20[1] = v16;
    v20[2] = v15;

    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012SystemAccenthI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for _SystemAccentValue?, &type metadata for _SystemAccentValue, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemAccentValueKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021PresentingContextMenuI033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<PresentingContextMenuKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_hasGlassEffect08_3DF70D9P23D7473F4D189A049B764CFEFLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_hasGlassEffect08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>, &type metadata for EnvironmentValues.__Key_hasGlassEffect, &protocol witness table for EnvironmentValues.__Key_hasGlassEffect, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_hasGlassEffect08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I18_glassEffectHidden08_3DF70D9P23D7473F4D189A049B764CFEFLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028GlassEffectBackdropGroupNameI008_3DF70D9Q23D7473F4D189A049B764CFEFLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v18[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1);
    *(&v18[0] + 1) = v12;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v11(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1);
    v15 = v14;
    *&v18[0] = v13;
    *(&v18[0] + 1) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>(0);
    v20 = v16;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v13;
    v19[1] = v15;

    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v18[0];
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>(0);
    v24 = v19;
    v25 = &protocol witness table for TrackedValue<A>;
    v20 = swift_allocObject();
    v23[0] = v20;
    *(v20 + 16) = v14;
    *(v20 + 24) = v15;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    *(v20 + 48) = v18;
    outlined copy of OpenURLAction?(v14, v15, v16, v17, v18);
    specialized Dictionary.subscript.setter(v23, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013OpenURLActionI0VG_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013OpenURLActionF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013OpenURLActionF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<OpenURLActionKey>>(0);
    v24 = v19;
    v25 = &protocol witness table for TrackedValue<A>;
    v20 = swift_allocObject();
    v23[0] = v20;
    *(v20 + 16) = v14;
    *(v20 + 24) = v15;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    *(v20 + 48) = v18;
    outlined copy of OpenURLAction?(v14, v15, v16, v17, v18);
    specialized Dictionary.subscript.setter(v23, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022OpenSensitiveURLActionI0VG_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022OpenSensitiveURLActionF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022OpenSensitiveURLActionF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>(0);
    v24 = v19;
    v25 = &protocol witness table for TrackedValue<A>;
    v20 = swift_allocObject();
    v23[0] = v20;
    *(v20 + 16) = v14;
    *(v20 + 24) = v15;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    *(v20 + 48) = v18;
    outlined copy of OpenURLAction?(v14, v15, v16, v17, v18);
    specialized Dictionary.subscript.setter(v23, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I13_buttonSizing014_B3F6B53DB8F35N17F9F84F34C99C79B2CLLVG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for ButtonSizing, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(a1);
    *&v17[0] = v12;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = v10[1];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(a1);
    v14 = v13;
    *&v17[0] = v13;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v17[0];
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV013ContentShapesI033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for ContentShapes, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028TextRendererAddsDrawingGroupI033_7F70C8A76EE0356881289646072938C0LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028TextRendererAddsDrawingGroupF033_7F70C8A76EE0356881289646072938C0LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>, &type metadata for EnvironmentValues.TextRendererAddsDrawingGroupKey, &protocol witness table for EnvironmentValues.TextRendererAddsDrawingGroupKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028TextRendererAddsDrawingGroupF033_7F70C8A76EE0356881289646072938C0LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ControlSize?, &type metadata for ControlSize, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ControlSizeKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA24MaterialActiveAppearanceVAAE0I033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for MaterialActiveAppearance, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE022LazySubviewMinorSizingI033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v18[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(a1);
    *(&v18[0] + 1) = v12;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, &type metadata for LazySubviewMinorSizingConfiguration, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(a1);
    v15 = v14;
    LOBYTE(v18[0]) = v13;
    *(&v18[0] + 1) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>(0);
    v20 = v16;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v13;
    v19[1] = v15;

    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v18[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE026DefaultSeparatorShapeStyleI033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LODWORD(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, &type metadata for HierarchicalShapeStyle, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LODWORD(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LODWORD(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LODWORD(v14[0]);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.TruncationMode?, &type metadata for Text.TruncationMode, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v21);
    outlined init with take of AnyTrackedValue(v21, v22);
    v12 = v23;
    v13 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (v13[1])(&type metadata for ScrollAnchorStorage, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = *(a2 + 24);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ScrollAnchorsKey>>(0);
    v23 = v18;
    v24 = &protocol witness table for TrackedValue<A>;
    v19 = swift_allocObject();
    v22[0] = v19;
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    *(v19 + 32) = v16;
    *(v19 + 40) = v17;

    specialized Dictionary.subscript.setter(v22, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE017RenderingRootViewI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v16);
    outlined init with take of AnyTrackedValue(v16, v17);
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, type metadata accessor for WeakBox);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>(0);
    v18 = v14;
    v19 = &protocol witness table for TrackedValue<A>;
    v17[0] = swift_allocObject();
    outlined init with copy of HoverEffectContext?(a2, v17[0] + 16, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, type metadata accessor for WeakBox);
    specialized Dictionary.subscript.setter(v17, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017SystemColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017SystemColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for ColorScheme, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017SystemColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemColorSchemeKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO14AppearsFocusedVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO14AppearsFocusedVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO14AppearsFocusedVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO11AppearsMainVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO11AppearsMainVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO11AppearsMainVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO9IsFocusedVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO9IsFocusedVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO9IsFocusedVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO6IsMainVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO6IsMainVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO6IsMainVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for _Glass.Frost, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for _Glass.Diffusion, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE037GlassEffectContainerTintConfigurationI033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for GlassEffectContainerTintConfiguration, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016HeaderProminenceI0VG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for Prominence, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HeaderProminenceKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010InTouchBarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010InTouchBarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010InTouchBarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<InTouchBarKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016DividerThicknessI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    BYTE8(v17[0]) = v12 & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    v14 = v13 & 1;
    BYTE8(v17[0]) = v13 & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DividerThicknessKey>>(0);
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v18 = *&v17[0];
    v19 = v14;
    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v17[0];
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019DisplayCornerRadiusI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    BYTE8(v17[0]) = v12 & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayCornerRadiusKey>, &type metadata for DisplayCornerRadiusKey, &protocol witness table for DisplayCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    v14 = v13 & 1;
    BYTE8(v17[0]) = v13 & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayCornerRadiusKey>>(0);
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v18 = *&v17[0];
    v19 = v14;
    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v17[0];
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021IsLowPowerModeEnabledF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsLowPowerModeEnabledKey>, &type metadata for IsLowPowerModeEnabledKey, &protocol witness table for IsLowPowerModeEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021IsLowPowerModeEnabledF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA038AccessibilityDifferentiateWithoutColorI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA038AccessibilityDifferentiateWithoutColorF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>, &type metadata for AccessibilityDifferentiateWithoutColorKey, &protocol witness table for AccessibilityDifferentiateWithoutColorKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA038AccessibilityDifferentiateWithoutColorF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityInvertColorsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityInvertColorsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityInvertColorsKey>, &type metadata for AccessibilityInvertColorsKey, &protocol witness table for AccessibilityInvertColorsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityInvertColorsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030AccessibilityDimFlashingLightsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA030AccessibilityDimFlashingLightsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>, &type metadata for AccessibilityDimFlashingLightsKey, &protocol witness table for AccessibilityDimFlashingLightsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA030AccessibilityDimFlashingLightsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA031AccessibilityPlayAnimatedImagesI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA031AccessibilityPlayAnimatedImagesF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>, &type metadata for AccessibilityPlayAnimatedImagesKey, &protocol witness table for AccessibilityPlayAnimatedImagesKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA031AccessibilityPlayAnimatedImagesF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024AccessibilityOnOffLabelsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024AccessibilityOnOffLabelsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>, &type metadata for AccessibilityOnOffLabelsKey, &protocol witness table for AccessibilityOnOffLabelsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024AccessibilityOnOffLabelsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028ExplicitPreferredColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028ExplicitPreferredColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>, &type metadata for ExplicitPreferredColorSchemeKey, &protocol witness table for ExplicitPreferredColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ColorScheme?, &type metadata for ColorScheme, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028ExplicitPreferredColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013PlacementTintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013PlacementTintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(a1);
    *&v17[0] = v12;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = v10[1];
    type metadata accessor for [TintPlacement : AnyShapeStyle](0);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013PlacementTintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(a1);
    v14 = v13;
    *&v17[0] = v13;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<PlacementTintKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v17[0];
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE029ResolvableStringReferenceDateE033_6237733B8EBAC19656F21E79CFCF2D67LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969530];
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(0, &lazy cache variable for type metadata for (Date?, Date?), &lazy cache variable for type metadata for Date?, v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of WeakBox<GlassContainerCache>(a1, &v22 - v13, &lazy cache variable for type metadata for Date?, v7, v8);
  outlined init with copy of WeakBox<GlassContainerCache>(a2, &v14[v16], &lazy cache variable for type metadata for Date?, v7, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    outlined init with copy of WeakBox<GlassContainerCache>(v14, v11, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      v19 = v23;
      (*(v5 + 32))(v23, &v14[v16], v4);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v19, v4);
      v20(v11, v4);
      outlined destroy of WeakBox<GlassContainerCache>(v14, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of (AttributedString.LineHeight?, AttributedString.LineHeight?)(v14, &lazy cache variable for type metadata for (Date?, Date?), &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v18 = 0;
    return v18 & 1;
  }

  outlined destroy of WeakBox<GlassContainerCache>(v14, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v18 = 1;
  return v18 & 1;
}

unint64_t _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE028ContainerBackgroundLuminanceE033_8D5CD1C02D0C201DDE64A5D11F6A296DLLV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a3 & 0x10000000000) != 0)
  {
    return (a6 >> 40) & 1;
  }

  v14[0] = a1;
  v14[1] = a2;
  v15 = a3;
  v16 = BYTE4(a3);
  v17 = 0;
  if ((a6 & 0x10000000000) != 0)
  {
    return 0;
  }

  else
  {
    v8 = a4;
    v9 = BYTE4(a4) & 1;
    v10 = a5;
    v11 = BYTE4(a5) & 1;
    v12 = a6;
    v13 = BYTE4(a6) & 1;
    return specialized static ContainerBackgroundLuminance.== infix(_:_:)(v14, &v8);
  }
}

BOOL _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA012SystemAccenthE033_AA5C9AAB6528C7C6B599DF55246DE53ALLV_Tt1B5(char a1, char a2)
{
  v2 = a2 == 10 && a1 == 10;
  if (a1 != 10 && a2 != 10)
  {
    return qword_18DDA6D68[a1] == qword_18DDA6D68[a2];
  }

  return v2;
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE02__E11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.LineHeight();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6965590];
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(0, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?), &lazy cache variable for type metadata for AttributedString.LineHeight?, v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of WeakBox<GlassContainerCache>(a1, &v22 - v13, &lazy cache variable for type metadata for AttributedString.LineHeight?, v7, v8);
  outlined init with copy of WeakBox<GlassContainerCache>(a2, &v14[v16], &lazy cache variable for type metadata for AttributedString.LineHeight?, v7, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    outlined init with copy of WeakBox<GlassContainerCache>(v14, v11, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      v19 = v23;
      (*(v5 + 32))(v23, &v14[v16], v4);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590], MEMORY[0x1E6965598]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v19, v4);
      v20(v11, v4);
      outlined destroy of WeakBox<GlassContainerCache>(v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of (AttributedString.LineHeight?, AttributedString.LineHeight?)(v14, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?), &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    v18 = 0;
    return v18 & 1;
  }

  outlined destroy of WeakBox<GlassContainerCache>(v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  v18 = 1;
  return v18 & 1;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028SymbolBackgroundCornerRadiusV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA026SymbolsGrowToFitBackgroundV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA24MaterialActiveAppearanceVAAE0V033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilitySettingsDefinitionS0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilitySettingsDefinitionV0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA19UnredactSymbolImageVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV022MaxAllowedDynamicRangeS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV022MaxAllowedDynamicRangeV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA23ContainerBackgroundKindO0V0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019PlatformColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019PlatformColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019ExplicitColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019ExplicitColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v6, v9) || !AGCompareValues())
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ReusableInputs>, &type metadata for ReusableInputs, &protocol witness table for ReusableInputs, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ReusableInputs, 0, v7);
  }
}

void lazy protocol witness table accessor for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue()
{
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableLayoutDirection.CodingValue, &unk_1F0047678, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableLayoutDirection.CodingValue, &unk_1F0047678, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableLayoutDirection.CodingValue, &unk_1F0047678, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableLayoutDirection.CodingValue, &unk_1F0047678, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue);
  }
}

void lazy protocol witness table accessor for type LayoutDirection and conformance LayoutDirection()
{
  if (!lazy protocol witness table cache variable for type LayoutDirection and conformance LayoutDirection)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutDirection, &type metadata for LayoutDirection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutDirection and conformance LayoutDirection);
  }
}

void lazy protocol witness table accessor for type [LayoutDirection] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [LayoutDirection] and conformance [A])
  {
    type metadata accessor for [LayoutDirection](255, &lazy cache variable for type metadata for [LayoutDirection], &type metadata for LayoutDirection, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [LayoutDirection] and conformance [A]);
  }
}

void lazy protocol witness table accessor for type CodableLayoutDirection and conformance CodableLayoutDirection()
{
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableLayoutDirection, &type metadata for CodableLayoutDirection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableLayoutDirection, &type metadata for CodableLayoutDirection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection);
  }
}

void instantiation function for generic protocol witness table for CodableLayoutDirection(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableLayoutDirection and conformance CodableLayoutDirection();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type CodableLayoutDirection and conformance CodableLayoutDirection();
  *(a1 + 16) = v3;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultPaddingV033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt0B5(v6, v18);
  if (!v9 || (v10.f64[0] = a2, v10.f64[1] = a3, v11.f64[0] = a4, v11.f64[1] = a5, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v9 + 9), v10), vceqq_f64(*(v9 + 11), v11)))) & 1) == 0))
  {
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultPaddingKey>>(0);
    v13 = swift_allocObject();
    v13[9] = a2;
    v13[10] = a3;
    v13[11] = a4;
    v13[12] = a5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v12);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.PlatformItemsFeaturesKey>, &type metadata for _ViewInputs.PlatformItemsFeaturesKey, &protocol witness table for _ViewInputs.PlatformItemsFeaturesKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.PlatformItemFeaturesKey>, &type metadata for _ViewInputs.PlatformItemFeaturesKey, &protocol witness table for _ViewInputs.PlatformItemFeaturesKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.RequestsPlatformItemsKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021RequestsPlatformItemsV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.RequestsPlatformItemsKey>, &type metadata for _ViewInputs.RequestsPlatformItemsKey, &protocol witness table for _ViewInputs.RequestsPlatformItemsKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.RequestsPlatformItemsKey, 0, v6);
  }
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v4, *&v19[0]);
  if (!v7 || (v8 = v7[15], v9 = *(v7 + 9), v10 = *(v7 + 11), v11 = *(v7 + 13), v12 = *(a2 + 16), v19[0] = *a2, v19[1] = v12, v19[2] = *(a2 + 32), v20 = *(a2 + 48), v17[0] = v9, v17[1] = v10, v17[2] = v11, v18 = v8, (specialized static ResolvedTextSuffix.== infix(_:_:)(v19, v17) & 1) == 0))
  {
    v14 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextSuffixKey>>(0);
    v15 = swift_allocObject();
    v16 = *(a2 + 16);
    *(v15 + 72) = *a2;
    *(v15 + 88) = v16;
    *(v15 + 104) = *(a2 + 32);
    *(v15 + 120) = *(a2 + 48);

    outlined init with copy of ResolvedTextSuffix(a2, v19);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v14);
  }

  return result;
}

void specialized closure #1 in PropertyList.subscript.setter(Swift::UInt *a1, Swift::Int hashValue, char a3, uint64_t a4, uint64_t (*a5)(Swift::UInt, Swift::Int), unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  BloomFilter.init(hashValue:)(hashValue);
  v16 = a5(v15, hashValue);
  if (!v16 || *(v16 + 72) != (a3 & 1))
  {
    v17 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, a6, a7, a8, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(hashValue, 0, v17);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19VariantThatFitsFlagV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for VariantThatFitsFlag);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19VariantThatFitsFlagV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<VariantThatFitsFlag>, &type metadata for VariantThatFitsFlag, &protocol witness table for VariantThatFitsFlag, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for VariantThatFitsFlag, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA36ContainerContextStylingDisabledInputV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ContainerContextStylingDisabledInput);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA36ContainerContextStylingDisabledInputV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ContainerContextStylingDisabledInput>, &type metadata for ContainerContextStylingDisabledInput, &protocol witness table for ContainerContextStylingDisabledInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ContainerContextStylingDisabledInput, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA07DisplayD0V7OptionsV_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<DisplayList.Options>, &type metadata for DisplayList.Options, &protocol witness table for DisplayList.Options, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for DisplayList.Options, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28PreferTextLayoutManagerInputV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for PreferTextLayoutManagerInput);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28PreferTextLayoutManagerInputV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<PreferTextLayoutManagerInput>, &type metadata for PreferTextLayoutManagerInput, &protocol witness table for PreferTextLayoutManagerInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for PreferTextLayoutManagerInput, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V18_glassEffectHidden33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ShouldAttachScrollEdgeEffectTag);
  ShouldAttachScrollEdgeEffectTagV_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA31ShouldAttachScrollEdgeEffectTagV_Tt0B5(v4, v7);
  if (!ShouldAttachScrollEdgeEffectTagV_Tt0B5 || *(ShouldAttachScrollEdgeEffectTagV_Tt0B5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ShouldAttachScrollEdgeEffectTag>, &type metadata for ShouldAttachScrollEdgeEffectTag, &protocol witness table for ShouldAttachScrollEdgeEffectTag, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ShouldAttachScrollEdgeEffectTag, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE037GlassEffectContainerTintConfigurationV033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt0B5(v4, v8) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI40MaterialEffectContainerTintConfigurationV7ElementV_Tt1g5() & 1) == 0)
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollPhaseStateF033_6CF0FEE8B18B5917140F6DA7931A3E74LLV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPhaseStateKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollPhaseStateV033_6CF0FEE8B18B5917140F6DA7931A3E74LLV_Tt0B5(v4, v9);
  if (!v5 || (v6 = *(v5 + 72), , v7 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZ14AttributeGraph08OptionalE0VyAA16ScrollPhaseStateVG_Tt1B5(a2, v6), , !v7))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollPhaseStateKey>, &type metadata for _GraphInputs.ScrollPhaseStateKey, &protocol witness table for _GraphInputs.ScrollPhaseStateKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollPhaseStateKey, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA010ScalePulseK033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(Swift::UInt), unint64_t *a7)
{
  v13.value = *a1;
  type metadata accessor for GlassEffectBackdropObserver?(0, a4, a5, type metadata accessor for BodyCountInput);
  v15 = v14;
  BloomFilter.init(hashValue:)(v14);
  if (!a6(v13.value) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Stack<(_:)>, type metadata accessor for (_:), type metadata accessor for Stack), !AGCompareValues()))
  {
    v16 = *a1;
    type metadata accessor for TypedElement<BodyCountInput<_ViewModifier_Content<ScalePulseModifier<Int>>>>(0, a7, a4, a5);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v15, 0, v16);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateK033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(Swift::UInt), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12.value = *a1;
  v13 = (a4)(0, a2, a3);
  BloomFilter.init(hashValue:)(v13);
  if (!a5(v12.value) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Stack<(_:)>, type metadata accessor for (_:), type metadata accessor for Stack), !AGCompareValues()))
  {
    v14 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, a6, a7, &protocol witness table for BodyCountInput<A>);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v14);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationT033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(Swift::UInt), uint64_t (*a7)(void))
{
  v11 = *a1;
  type metadata accessor for GlassEffectBackdropObserver?(0, a4, a5, type metadata accessor for BodyInput);
  v13 = v12;
  BloomFilter.init(hashValue:)(v12);
  v14 = a6(v11);
  if (!v14 || (v15 = *(v14 + 72), , v16 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(a2, v15), , (v16 & 1) == 0))
  {
    v17 = *a1;
    a7(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v17);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionT0VGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(Swift::UInt), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12 = *a1;
  v13 = (a4)(0, a2, a3);
  BloomFilter.init(hashValue:)(v13);
  v14 = a5(v12);
  if (!v14 || (v15 = *(v14 + 72), , v16 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(a2, v15), , (v16 & 1) == 0))
  {
    v17 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, a6, a7, &protocol witness table for BodyInput<A>);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v17);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(v4, v9);
  if (!updated || *(updated + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019ExplicitColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(*a1);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 72);
  if (v3 == 2)
  {
    if (v5 == 2)
    {
      return;
    }

LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>(0);
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);

    return;
  }

  if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE34ScrollToRequiresCompleteVisibility019_D49197C3D3C61F0DA0X12CF1D72D0077ALLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>, &type metadata for Transaction.ScrollToRequiresCompleteVisibility, &protocol witness table for Transaction.ScrollToRequiresCompleteVisibility, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE34ScrollToRequiresCompleteVisibility33_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>, &type metadata for Transaction.UseDefaultGlassContainerAnimationKey, &protocol witness table for Transaction.UseDefaultGlassContainerAnimationKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE033UseDefaultGlassContainerAnimationV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2B5(Swift::UInt *a1, const void *a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>, &type metadata for Transaction.GlassContainerSettingsOverrideKey, &protocol witness table for Transaction.GlassContainerSettingsOverrideKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE030GlassContainerSettingsOverrideV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(v4, __dst[0]);
  if (!v7 || (memcpy(v11, v7 + 9, 0x149uLL), memcpy(__dst, a2, 0x149uLL), (specialized static GlassContainer.SettingsOverride.== infix(_:_:)(__dst, v11) & 1) == 0))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>>(0);
    v10 = swift_allocObject();
    memcpy((v10 + 72), a2, 0x149uLL);

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2B5(Swift::UInt *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
  v10 = v9;
  BloomFilter.init(hashValue:)(v9);
  v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028ContainerBackgroundLuminanceV033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt0B5(v8, v15);
  v12 = (a4 >> 40) & 1;
  if (!v11 || (_s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE028ContainerBackgroundLuminanceE033_8D5CD1C02D0C201DDE64A5D11F6A296DLLV_Tt1B5(a2, a3, a4 & 0xFFFFFFFFFFLL | (v12 << 40), v11[9], v11[10], *(v11 + 22) | (*(v11 + 92) << 32) | (*(v11 + 93) << 40)) & 1) == 0)
  {
    v13 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>(0);
    v14 = swift_allocObject();
    *(v14 + 72) = a2;
    *(v14 + 80) = a3;
    *(v14 + 92) = BYTE4(a4);
    *(v14 + 88) = a4;
    *(v14 + 93) = v12;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v13);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.HasWidgetMetadataKey);
  HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE017HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5(v4, v7);
  if (!HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5 || *(HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.HasWidgetMetadataKey>, &type metadata for _GraphInputs.HasWidgetMetadataKey, &protocol witness table for _GraphInputs.HasWidgetMetadataKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.HasWidgetMetadataKey, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(Swift::UInt *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
  v10 = v9;
  BloomFilter.init(hashValue:)(v9);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v8, v14))
  {
    v11 = a2 & 1;
    goto LABEL_5;
  }

  v11 = a2 & 1;
  if (!AGCompareValues())
  {
LABEL_5:
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>(0);
    v13 = swift_allocObject();
    *(v13 + 72) = v11;
    *(v13 + 80) = a3;
    *(v13 + 88) = a4;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v12);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformAccessibilityPreferenceKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE031PlatformAccessibilityPreferenceV033_44953956318F41C5365C38B8AC5FF331LLV_Tt0B5(v6, v9) || (type metadata accessor for PreferenceKey.Type?(0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.PlatformAccessibilityPreferenceKey>, &type metadata for _ViewInputs.PlatformAccessibilityPreferenceKey, &protocol witness table for _ViewInputs.PlatformAccessibilityPreferenceKey, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.PlatformAccessibilityPreferenceKey, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014PlatformSystemF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2B5(Swift::UInt *a1, unsigned __int8 a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.PlatformSystemKey>, &type metadata for _GraphInputs.PlatformSystemKey, &protocol witness table for _GraphInputs.PlatformSystemKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.PlatformSystemKey, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
  updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v4, v5, v8);
  if (!updated || *(updated + 72) != (a2 & 1))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.UpdateCycleUseSetNeedsLayoutKey>, &type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey, &protocol witness table for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE024AnimationLogicalListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(*a1) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AnimationListener?, type metadata accessor for AnimationListener, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v4 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);
    v6 = v5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v4);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemAccentValueV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(v4, v9);
  if (!v7 || !_s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA012SystemAccenthE033_AA5C9AAB6528C7C6B599DF55246DE53ALLV_Tt1B5(a2, *(v7 + 72)))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemAccentValueKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021PresentingContextMenuV033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<PresentingContextMenuKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028GlassEffectBackdropGroupNameV033_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(v6, v14);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9[10];
  if (!a3)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v10 || (v9[9] == a2 ? (v11 = v10 == a3) : (v11 = 0), !v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
LABEL_11:
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>(0);
    v13 = swift_allocObject();
    *(v13 + 72) = a2;
    *(v13 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v12);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016SensitiveContentF033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for RequestedLeafContentType);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24RequestedLeafContentTypeV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<RequestedLeafContentType>, &type metadata for RequestedLeafContentType, &protocol witness table for RequestedLeafContentType, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for RequestedLeafContentType, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2B5(Swift::UInt *a1, unsigned __int8 a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V13_buttonSizing33_B3F6B53DB8F35B3F9F84F34C99C79B2CLLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v7 + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);

    return;
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV038AccessibilitySpeechSpellsOutCharactersV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v7 + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);

    return;
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(Swift::UInt *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV032AccessibilitySpeechAdjustedPitchV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v6, v13);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *(v9 + 80);
  if (a3)
  {
    if (*(v9 + 80))
    {
      return;
    }

LABEL_8:
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>(0);
    v12 = swift_allocObject();
    *(v12 + 72) = *&a2;
    *(v12 + 80) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v11);

    return;
  }

  if (*(v9 + 9) != *&a2)
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_8;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV040AccessibilitySpeechAnnouncementsPriorityF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2B5(Swift::UInt *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV040AccessibilitySpeechAnnouncementsPriorityV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v11);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *(v7 + 72);
  if (v3 == 3)
  {
    if (v8 == 3)
    {
      return;
    }

LABEL_9:
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>(0);
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v10);

    return;
  }

  if (v8 == 3 || v8 != v3)
  {
    goto LABEL_9;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt0B5(v4, v8) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV013ContentShapesV033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt0B5(v4, v8) || !AGCompareValues())
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for Solarium.AllowedInCompatibilityKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA8SolariumV022AllowedInCompatibilityV0V_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<Solarium.AllowedInCompatibilityKey>, &type metadata for Solarium.AllowedInCompatibilityKey, &protocol witness table for Solarium.AllowedInCompatibilityKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for Solarium.AllowedInCompatibilityKey, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA23ContainerBackgroundKindO0F0VG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(*a1);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 72);
  if (v3 != 6 && v5 != 6)
  {
    if (v3 == 5)
    {
      if (v5 == 5)
      {
        return;
      }
    }

    else if (v5 == v3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v3 != 6 || v5 != 6)
  {
LABEL_9:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>(0);
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE013SymbolEffectsV033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt0B5(v4, v11);
  if (!v7 || (v8 = v7[9], , v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV10IdentifiedV_Tt1g5(a2, v8), , (v9 & 1) == 0))
  {
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v10);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.CoreInteractionResponderProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE032CoreInteractionResponderProviderV033_03AF342AA286115256FF95C286FEA7E3LLV_Tt0B5(v6, v9) || (type metadata accessor for CoreInteractionResponderProvider.Type?(0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.CoreInteractionResponderProviderKey>, &type metadata for _GraphInputs.CoreInteractionResponderProviderKey, &protocol witness table for _GraphInputs.CoreInteractionResponderProviderKey, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.CoreInteractionResponderProviderKey, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.TextSelectionRepresentationKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027TextSelectionRepresentationV0019_E9056C24F23374CCD1I11D90898CB830LLV_Tt0B5(v6, v9) || (type metadata accessor for PlatformTextSelectionRepresentation.Type?(0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.TextSelectionRepresentationKey>, &type metadata for _GraphInputs.TextSelectionRepresentationKey, &protocol witness table for _GraphInputs.TextSelectionRepresentationKey, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.TextSelectionRepresentationKey, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017TextJustificationF033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt2B5(uint64_t *a1, int a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(*a1);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v4 + 36);
  if (a2 == 2)
  {
    if (v5 == 2)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v5 == 2 || (v9 = *(v4 + 36) ^ a2, (v9 & 1) != 0) || ((v9 >> 8) & 1) != 0)
  {
LABEL_6:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextJustificationKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(*a1);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 9);
  if (a2 == 2)
  {
    if (v9 == 2)
    {
      return;
    }

LABEL_11:
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>(0);
    v12 = swift_allocObject();
    *(v12 + 72) = a2;
    *(v12 + 80) = *&a3;
    *(v12 + 88) = *&a4;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
    v14 = v13;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v14, 0, v11);

    return;
  }

  if (v9 == 2 || ((v9 ^ a2) & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v8[10] != *&a3 || v8[11] != *&a4)
  {
    goto LABEL_11;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityV033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<TracksVelocityKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018LineHeightMultipleF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!v4 || v4[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<LineHeightMultipleKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017MaximumLineHeightF0VG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(*a1);
  if (!v4 || v4[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<MaximumLineHeightKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017MinimumLineHeightF0VG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(*a1);
  if (!v4 || v4[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<MinimumLineHeightKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019HyphenationDisabledF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HyphenationDisabledKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WritingModeKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018StrikethroughStyleF0VG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018StrikethroughStyleV0VG_Tt0B5(v6, v17);
  if (!v9 || (v10 = v9[9], v11 = v9[10], v12 = outlined copy of Text.LineStyle?(v10, v11), v13 = _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018StrikethroughStyleD0V_Tt1B5(a2, a3, v10, v11, v12), result = outlined consume of Text.LineStyle?(v10, v11), (v13 & 1) == 0))
  {
    v15 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<StrikethroughStyleKey>>(0);
    v16 = swift_allocObject();
    *(v16 + 72) = a2;
    *(v16 + 80) = a3;

    outlined copy of Text.LineStyle?(a2, a3);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v15);
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA19UnredactSymbolImageVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<UnredactSymbolImage>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE022LazySubviewMinorSizingV033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt0B5(v6, v16);
  if (!v9 || *(v9 + 72) != a2)
  {
    goto LABEL_8;
  }

  v10 = v9[10];
  if (!a3)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v10 || (v11 = *(*a3 + 104), v12 = , v13 = v11(v12), , (v13 & 1) == 0))
  {
LABEL_8:
    v14 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>(0);
    v15 = swift_allocObject();
    *(v15 + 72) = a2;
    *(v15 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v14);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021SystemColorDefinitionF033_9E3352CE4697DF56A738786E16992848LLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*a1);
  if (!v6 || v6[9] != a2)
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemColorDefinitionKey>>(0);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(Swift::UInt *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE026DefaultSeparatorShapeStyleV033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt0B5(v4, v8) || !AGCompareValues())
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA031AccessibilitySettingsDefinitionF033_DD012B99EE4F6885B033D7D23FEF69C0LLVG_Tt2B5(uint64_t *a1, uint64_t a2, char a3)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilitySettingsDefinitionS0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AccessibilitySettingsDefinitionKey?, &type metadata for AccessibilitySettingsDefinitionKey, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>(0);
    v7 = swift_allocObject();
    *(v7 + 72) = a2;
    *(v7 + 80) = a3 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v9 = v8;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v9, 0, v6);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<ContinuousKey>, &type metadata for ContinuousKey, &protocol witness table for ContinuousKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<ContinuousKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2B5(Swift::UInt *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v4, v11);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *(v7 + 72);
  if (v3 == 3)
  {
    if (v8 == 3)
    {
      return;
    }

LABEL_9:
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>(0);
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v10);

    return;
  }

  if (v8 == 3 || v8 != v3)
  {
    goto LABEL_9;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AvoidsOrphansV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AvoidsOrphansKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for TypesettingConfiguration(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v13 = v12;
  BloomFilter.init(hashValue:)(v12);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024TypesettingConfigurationV0VG_Tt0B5(v11, v28[3]);
  if (!v14)
  {
    goto LABEL_8;
  }

  outlined init with copy of EnvironmentValues.CapitalizationContext(v14 + *(*v14 + 248), v10, type metadata accessor for TypesettingConfiguration);
  if (!specialized static TypesettingLanguage.Storage.== infix(_:_:)(a2, v10))
  {
    outlined destroy of EnvironmentValues.CapitalizationContext(v10, type metadata accessor for TypesettingConfiguration);
    goto LABEL_8;
  }

  v28[1] = v2;
  v15 = *(v5 + 20);
  v16 = *(a2 + v15);
  v17 = *(a2 + v15 + 8);
  v18 = &v10[v15];
  v19 = *v18;
  v20 = v18[8];
  outlined destroy of EnvironmentValues.CapitalizationContext(v10, type metadata accessor for TypesettingConfiguration);
  if (v17 == 1)
  {
    if (v16 == 0.0)
    {
      v21 = *&v19 == 0;
LABEL_15:
      if (v21)
      {
        v26 = v20;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        return;
      }

LABEL_8:
      outlined init with copy of EnvironmentValues.CapitalizationContext(a2, v7, type metadata accessor for TypesettingConfiguration);
      v22 = *a1;
      type metadata accessor for TypedElement<EnvironmentPropertyKey<TypesettingConfigurationKey>>(0);
      v23 = swift_allocObject();
      outlined init with copy of EnvironmentValues.CapitalizationContext(v7, v23 + *(*v23 + 248), type metadata accessor for TypesettingConfiguration);

      value = PropertyList.Element.init(keyType:before:after:)(v13, 0, v22).value;
      outlined destroy of EnvironmentValues.CapitalizationContext(v7, type metadata accessor for TypesettingConfiguration);
      *a1 = value;

      return;
    }

    if (*&v16 == 1)
    {
      v21 = *&v19 == 1;
      goto LABEL_15;
    }

    if (*&v19 > 1uLL)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0;
    }

    if (v27 != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v16 == v19)
    {
      v25 = v20;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_8;
    }
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V023ScrollPreservesVelocityF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>, &type metadata for Transaction.ScrollPreservesVelocityKey, &protocol witness table for Transaction.ScrollPreservesVelocityKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V023ScrollPreservesVelocityV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V031ScrollContentAdjustmentBehaviorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v4, v8) || !AGCompareValues())
  {
    v7 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v7);
  }
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v7 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
  v9 = v8;
  BloomFilter.init(hashValue:)(v8);
  v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt0B5(v7, v20[1]);
  if (!v10 || (v11 = MEMORY[0x1E6965590], v12 = MEMORY[0x1E69E6720], outlined init with copy of WeakBox<GlassContainerCache>(v10 + *(*v10 + 248), v6, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]), v13 = _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE02__E11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLV_Tt1g5(a2, v6), outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for AttributedString.LineHeight?, v11, v12), (v13 & 1) == 0))
  {
    v15 = MEMORY[0x1E6965590];
    v16 = MEMORY[0x1E69E6720];
    outlined init with copy of WeakBox<GlassContainerCache>(a2, v6, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    v17 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>(0);
    v18 = swift_allocObject();
    outlined init with copy of WeakBox<GlassContainerCache>(v6, v18 + *(*v18 + 248), &lazy cache variable for type metadata for AttributedString.LineHeight?, v15, v16);

    value = PropertyList.Element.init(keyType:before:after:)(v9, 0, v17).value;
    outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for AttributedString.LineHeight?, v15, v16);
    *a1 = value;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017BackgroundContextF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundContextKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundContextKey>, &type metadata for BackgroundContextKey, &protocol witness table for BackgroundContextKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015BackgroundStyleF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v4 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundStyleKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundStyleKey>, &type metadata for BackgroundStyleKey, &protocol witness table for BackgroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v6 = v5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v4);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
  v12 = v11;
  BloomFilter.init(hashValue:)(v11);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt0B5(v10, v20);
  if (!v13 || v13[11] != a4)
  {
    goto LABEL_7;
  }

  v14 = v13[9];
  v15 = v13[10];

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI32AnyAttributedTextValueConstraintV_Tt1g5(a2, v14) & 1) == 0)
  {

    goto LABEL_7;
  }

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(a3, v15);
  v19 = v16;

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v17 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>(0);
    v18 = swift_allocObject();
    v18[9] = a2;
    v18[10] = a3;
    v18[11] = a4;
    v18[12] = a5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v12, 0, v17);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028PlatformHiddenRepresentationF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformHiddenRepresentationKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028PlatformHiddenRepresentationV033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt0B5(v6, v9) || (type metadata accessor for PlatformHiddenRepresentable.Type?(0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.PlatformHiddenRepresentationKey>, &type metadata for _GraphInputs.PlatformHiddenRepresentationKey, &protocol witness table for _GraphInputs.PlatformHiddenRepresentationKey, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.PlatformHiddenRepresentationKey, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027HiddenAccessibilityProviderF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.HiddenAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027HiddenAccessibilityProviderV033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt0B5(v6, v9) || (type metadata accessor for HiddenAccessibilityProvider.Type?(0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.HiddenAccessibilityProviderKey>, &type metadata for _GraphInputs.HiddenAccessibilityProviderKey, &protocol witness table for _GraphInputs.HiddenAccessibilityProviderKey, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.HiddenAccessibilityProviderKey, 0, v7);
  }
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE017RenderingRootViewV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(v4, v14[0]);
  v8 = MEMORY[0x1E69E7C98];
  if (!v7 || (outlined init with copy of HoverEffectContext?((v7 + 9), v14, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, type metadata accessor for WeakBox), type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox), v9 = AGCompareValues(), outlined destroy of HoverEffectContext?(v14, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox), !v9))
  {
    outlined init with copy of HoverEffectContext?(a2, v14, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox);
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>(0);
    v12 = swift_allocObject();
    outlined init with copy of HoverEffectContext?(v14, v12 + 72, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox);

    value = PropertyList.Element.init(keyType:before:after:)(v6, 0, v11).value;
    outlined destroy of HoverEffectContext?(v14, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox);
    *a1 = value;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019PlatformColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019PlatformColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013AppearsActiveF0VG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AppearsActiveV0VG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AppearsActiveKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO14AppearsFocusedVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO14AppearsFocusedVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO11AppearsMainVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO11AppearsMainVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO9IsFocusedVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO9IsFocusedVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO6IsMainVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO6IsMainVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(v4, v10);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v7 + 72);
  if (v3 == 2)
  {
    if (v8 == 2)
    {
      return;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>(0);
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);

    return;
  }

  if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA09TextScaleF0VG_Tt2B5(uint64_t *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA09TextScaleV0VG_Tt0B5(v4, v10);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = *(v7 + 72);
  if (a2 != 2 && v8 != 2)
  {
    if (((v8 ^ a2) & 1) == 0)
    {
      return;
    }

LABEL_8:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextScaleKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);

    return;
  }

  if (a2 != 2 || v8 != 2)
  {
    goto LABEL_8;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(Swift::UInt *a1, unsigned __int8 a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019WatchDisplayVariantF0VG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<DisablesContentTransitionsKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016DisableLinkColorF0030_7AFAB46D18FA6D189589CFA78D8B2R1ELLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020ParagraphTypesettingV033_D39DBD719189F2769C15C168465CE407LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ParagraphTypesettingKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016HeaderProminenceV0VG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HeaderProminenceKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV019AllowedDynamicRangeF033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV022MaxAllowedDynamicRangeF0VG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV022MaxAllowedDynamicRangeS0VG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028SymbolBackgroundCornerRadiusF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(v6 + 80);
  if (a3)
  {
    if (*(v6 + 80))
    {
      return;
    }

LABEL_8:
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>(0);
    v9 = swift_allocObject();
    *(v9 + 72) = *&a2;
    *(v9 + 80) = a3 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v8);

    return;
  }

  if (*(v6 + 9) != *&a2)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA026SymbolsGrowToFitBackgroundF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsVisionEnabledKey>, &type metadata for IsVisionEnabledKey, &protocol witness table for IsVisionEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015IsVisionEnabledV0VG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<IsVisionEnabledKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA4TextVAAE17AlignmentStrategyV0gF0VG_Tt2B5(Swift::UInt *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA4TextVAAE17AlignmentStrategyV0wV0VG_Tt0B5(v4, v10);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v7 + 72);
  if (v3 == 2)
  {
    if (v8 == 2)
    {
      return;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>(0);
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);

    return;
  }

  if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010SymbolFontF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4[9];
  if (!a2)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v5 || (v6 = *(*a2 + 112), v7 = , v8 = v6(v7), , (v8 & 1) == 0))
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolFontKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017DefaultSymbolFontF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4[9];
  if (!a2)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v5 || (v6 = *(*a2 + 112), v7 = , v8 = v6(v7), , (v8 & 1) == 0))
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultSymbolFontKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DefaultTrackingV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v4, v9);
  if (!v7 || v7[9] != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultTrackingKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021DefaultBaselineOffsetV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v4, v9);
  if (!v7 || v7[9] != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010InTouchBarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010InTouchBarV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<InTouchBarKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultPixelLengthF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(v6 + 80);
  if (a3)
  {
    if (*(v6 + 80))
    {
      return;
    }

LABEL_8:
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultPixelLengthKey>>(0);
    v9 = swift_allocObject();
    *(v9 + 72) = *&a2;
    *(v9 + 80) = a3 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v8);

    return;
  }

  if (*(v6 + 9) != *&a2)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016DividerThicknessV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v6, v13);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *(v9 + 80);
  if (a3)
  {
    if (*(v9 + 80))
    {
      return;
    }

LABEL_8:
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DividerThicknessKey>>(0);
    v12 = swift_allocObject();
    *(v12 + 72) = *&a2;
    *(v12 + 80) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v11);

    return;
  }

  if (*(v9 + 9) != *&a2)
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_8;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020DefaultRenderingModeF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultRenderingModeKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021AllowsVibrantBlendingF0VG_Tt2g5(uint64_t *a1, int a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(*a1);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 72);
  if (a2 == 2)
  {
    if (v5 == 2)
    {
      return;
    }

LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);

    return;
  }

  if (v5 == 2 || ((v5 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024SystemMaterialDefinitionF033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*a1);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6[9];
  if (!a2)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v7 || v7 != a2)
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>(0);
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v12 = v11;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v12, 0, v9);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013PlacementTintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013PlacementTintV033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0B5(v4, v8) || (type metadata accessor for [TintPlacement : AnyShapeStyle](0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<PlacementTintKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingK0VGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(Swift::UInt), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12.value = *a1;
  v13 = (a4)(0, a2, a3);
  BloomFilter.init(hashValue:)(v13);
  if (!a5(v12.value) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Stack<(_:)>, type metadata accessor for (_:), type metadata accessor for Stack), !AGCompareValues()))
  {
    v14 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, a6, a7, &protocol witness table for BodyCountInput<A>);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v14);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0u17CaptureProtectionsT0VGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(Swift::UInt), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12 = *a1;
  v13 = (a4)(0, a2, a3);
  BloomFilter.init(hashValue:)(v13);
  v14 = a5(v12);
  if (!v14 || (v15 = *(v14 + 72), , v16 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(a2, v15), , (v16 & 1) == 0))
  {
    v17 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, a6, a7, &protocol witness table for BodyInput<A>);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v17);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>);
  }
}

unint64_t type metadata accessor for (_:_:)()
{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextSuffixKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextSuffixKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSuffixKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextSuffixKey>>);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier);
    v5 = type metadata accessor for BodyCountInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>);
    }
  }
}

void lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier()
{
  if (!lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier);
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<SafeAreaPaddingModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<SafeAreaPaddingModifier>>);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier);
    v5 = type metadata accessor for BodyCountInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>);
    }
  }
}

void lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier()
{
  if (!lazy protocol witness table cache variable for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier);
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier);
    v5 = type metadata accessor for BodyCountInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>);
    }
  }
}

void lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier()
{
  if (!lazy protocol witness table cache variable for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<PlacementTintKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<PlacementTintKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<PlacementTintKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<PlacementTintKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<PlacementTintKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<PlacementTintKey>>);
    }
  }
}

void type metadata accessor for Stack<ImageStyleProtocol.Type>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Stack<ImageStyleProtocol.Type>)
  {
    v2 = type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for ImageStyleProtocol.Type, &lazy cache variable for type metadata for ImageStyleProtocol, &protocol descriptor for ImageStyleProtocol);
    v5 = type metadata accessor for Stack(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for Stack<ImageStyleProtocol.Type>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemColorSchemeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemColorSchemeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>, &type metadata for ExplicitPreferredColorSchemeKey, &protocol witness table for ExplicitPreferredColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>, &type metadata for AccessibilityOnOffLabelsKey, &protocol witness table for AccessibilityOnOffLabelsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityOnOffLabelsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>, &type metadata for AccessibilityPlayAnimatedImagesKey, &protocol witness table for AccessibilityPlayAnimatedImagesKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>, &type metadata for AccessibilityDimFlashingLightsKey, &protocol witness table for AccessibilityDimFlashingLightsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityInvertColorsKey>, &type metadata for AccessibilityInvertColorsKey, &protocol witness table for AccessibilityInvertColorsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityInvertColorsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>, &type metadata for AccessibilityDifferentiateWithoutColorKey, &protocol witness table for AccessibilityDifferentiateWithoutColorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsLowPowerModeEnabledKey>, &type metadata for IsLowPowerModeEnabledKey, &protocol witness table for IsLowPowerModeEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsLowPowerModeEnabledKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayCornerRadiusKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayCornerRadiusKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayCornerRadiusKey>, &type metadata for DisplayCornerRadiusKey, &protocol witness table for DisplayCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayCornerRadiusKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultRenderingModeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultRenderingModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultRenderingModeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DividerThicknessKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DividerThicknessKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DividerThicknessKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DividerThicknessKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DividerThicknessKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DividerThicknessKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultPixelLengthKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultPixelLengthKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultPixelLengthKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<InTouchBarKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<InTouchBarKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<InTouchBarKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<InTouchBarKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<InTouchBarKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<InTouchBarKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultTrackingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultTrackingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultTrackingKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultSymbolFontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultSymbolFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultSymbolFontKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultSymbolFontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultSymbolFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultSymbolFontKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolFontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolFontKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolFontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolFontKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<IsVisionEnabledKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<IsVisionEnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsVisionEnabledKey>, &type metadata for IsVisionEnabledKey, &protocol witness table for IsVisionEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsVisionEnabledKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<IsVisionEnabledKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemColorDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemColorDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemColorDefinitionKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HeaderProminenceKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HeaderProminenceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HeaderProminenceKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HeaderProminenceKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HeaderProminenceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HeaderProminenceKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ParagraphTypesettingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ParagraphTypesettingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ParagraphTypesettingKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<DisablesContentTransitionsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<DisablesContentTransitionsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<DisablesContentTransitionsKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<DisablesContentTransitionsKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<DisablesContentTransitionsKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesContentTransitionsKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesContentTransitionsKey> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextScaleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextScaleKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AppearsActiveKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AppearsActiveKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AppearsActiveKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ScrollAnchorsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ScrollAnchorsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ScrollAnchorsKey>>);
    }
  }
}

void type metadata accessor for HiddenAccessibilityProvider.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HiddenAccessibilityProvider.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for HiddenAccessibilityProvider.Type, &lazy cache variable for type metadata for HiddenAccessibilityProvider, &protocol descriptor for HiddenAccessibilityProvider);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HiddenAccessibilityProvider.Type?);
    }
  }
}

void type metadata accessor for PlatformHiddenRepresentable.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformHiddenRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformHiddenRepresentable.Type, &lazy cache variable for type metadata for PlatformHiddenRepresentable, &protocol descriptor for PlatformHiddenRepresentable);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformHiddenRepresentable.Type?);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundStyleKey>, &type metadata for BackgroundStyleKey, &protocol witness table for BackgroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundStyleKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundContextKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundContextKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundContextKey>, &type metadata for BackgroundContextKey, &protocol witness table for BackgroundContextKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundContextKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundContextKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>, &type metadata for Transaction.ScrollPreservesVelocityKey, &protocol witness table for Transaction.ScrollPreservesVelocityKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>, &type metadata for Transaction.ScrollPreservesVelocityKey, &protocol witness table for Transaction.ScrollPreservesVelocityKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TypesettingConfigurationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TypesettingConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TypesettingConfigurationKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AvoidsOrphansKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AvoidsOrphansKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AvoidsOrphansKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<ContinuousKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<ContinuousKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<ContinuousKey>, &type metadata for ContinuousKey, &protocol witness table for ContinuousKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<ContinuousKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<ContinuousKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<ContinuousKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<ContinuousKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<ContinuousKey>, &type metadata for ContinuousKey, &protocol witness table for ContinuousKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<ContinuousKey> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundProminence.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundProminence.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundProminence.Key> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundProminence.Key>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ControlSizeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ControlSizeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ControlSizeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ControlSizeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<UnredactSymbolImage>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<UnredactSymbolImage>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<UnredactSymbolImage>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<UnredactSymbolImage>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<UnredactSymbolImage>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<UnredactSymbolImage>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<StrikethroughStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<StrikethroughStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<StrikethroughStyleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WritingModeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WritingModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WritingModeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HyphenationDisabledKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HyphenationDisabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HyphenationDisabledKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<MinimumLineHeightKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MinimumLineHeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MinimumLineHeightKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<MaximumLineHeightKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MaximumLineHeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MaximumLineHeightKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<LineHeightMultipleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LineHeightMultipleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LineHeightMultipleKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextSizingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextSizingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSizingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextSizingKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<MinimumScaleFactorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MinimumScaleFactorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MinimumScaleFactorKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>);
    }
  }
}

uint64_t outlined destroy of (AttributedString.LineHeight?, AttributedString.LineHeight?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<TracksVelocityKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<TracksVelocityKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<TracksVelocityKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<TracksVelocityKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<TracksVelocityKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<TracksVelocityKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<TracksVelocityKey> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextJustificationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextJustificationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextJustificationKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultFontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultFontKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultFontKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TruncationModeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TruncationModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TruncationModeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TruncationModeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HyphenationDisabledKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HyphenationDisabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HyphenationDisabledKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HyphenationFactorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HyphenationFactorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HyphenationFactorKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<MinimumLineHeightKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MinimumLineHeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MinimumLineHeightKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<MaximumLineHeightKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MaximumLineHeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MaximumLineHeightKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<LineHeightMultipleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LineHeightMultipleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LineHeightMultipleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<LineSpacingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LineSpacingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LineSpacingKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>);
    }
  }
}

void type metadata accessor for PlatformTextSelectionRepresentation.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformTextSelectionRepresentation.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformTextSelectionRepresentation.Type, &lazy cache variable for type metadata for PlatformTextSelectionRepresentation, &protocol descriptor for PlatformTextSelectionRepresentation);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformTextSelectionRepresentation.Type?);
    }
  }
}

void type metadata accessor for CoreInteractionResponderProvider.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CoreInteractionResponderProvider.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for CoreInteractionResponderProvider.Type, &lazy cache variable for type metadata for CoreInteractionResponderProvider, &protocol descriptor for CoreInteractionResponderProvider);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CoreInteractionResponderProvider.Type?);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ReducedLuminanceKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ReducedLuminanceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedLuminanceKey>, &type metadata for ReducedLuminanceKey, &protocol witness table for ReducedLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ReducedLuminanceKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContainerShapeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContainerShapeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContainerShapeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontDefinitionKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<OpenURLActionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<OpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<OpenURLActionKey>>);
    }
  }
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    outlined consume of OpenURLAction.Handler(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1 & 1);
  }

  return swift_deallocObject();
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<RedactionReasonsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<RedactionReasonsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RedactionReasonsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<RedactionReasonsKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>, &type metadata for EnvironmentValues.__Key_hasGlassEffect, &protocol witness table for EnvironmentValues.__Key_hasGlassEffect, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<PresentingContextMenuKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<PresentingContextMenuKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<PresentingContextMenuKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<PresentingContextMenuKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<PresentingContextMenuKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<PresentingContextMenuKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemAccentValueKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemAccentValueKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemAccentValueKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemAccentValueKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemAccentValueKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemAccentValueKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultAccentColorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultAccentColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultAccentColorKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.AnimationLogicalListenerKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.AnimationLogicalListenerKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationLogicalListenerKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationLogicalListenerKey> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for PreferenceKey.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PreferenceKey.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PreferenceKey.Type, &lazy cache variable for type metadata for PreferenceKey, &protocol descriptor for PreferenceKey);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PreferenceKey.Type?);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HoverEffectContextKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HoverEffectContextKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HoverEffectContextKey>>);
    }
  }
}

double outlined copy of HoverEffectContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>, &type metadata for Transaction.GlassContainerSettingsOverrideKey, &protocol witness table for Transaction.GlassContainerSettingsOverrideKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>, &type metadata for Transaction.GlassContainerSettingsOverrideKey, &protocol witness table for Transaction.GlassContainerSettingsOverrideKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>, &type metadata for Transaction.UseDefaultGlassContainerAnimationKey, &protocol witness table for Transaction.UseDefaultGlassContainerAnimationKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>, &type metadata for Transaction.UseDefaultGlassContainerAnimationKey, &protocol witness table for Transaction.UseDefaultGlassContainerAnimationKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>, &type metadata for Transaction.ScrollToRequiresCompleteVisibility, &protocol witness table for Transaction.ScrollToRequiresCompleteVisibility, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>, &type metadata for Transaction.ScrollToRequiresCompleteVisibility, &protocol witness table for Transaction.ScrollToRequiresCompleteVisibility, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>, &type metadata for EnvironmentValues.ResolvableStringReferenceDateKey, &protocol witness table for EnvironmentValues.ResolvableStringReferenceDateKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey> and conformance TransactionPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultPaddingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultPaddingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultPaddingKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultPaddingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultPaddingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultPaddingKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<GlassEffectLocalModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectLocalModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier);
    v5 = type metadata accessor for BodyCountInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectLocalModifier>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>, &type metadata for EnvironmentValues.TextRendererAddsDrawingGroupKey, &protocol witness table for EnvironmentValues.TextRendererAddsDrawingGroupKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>, &type metadata for EnvironmentValues.TextRendererAddsDrawingGroupKey, &protocol witness table for EnvironmentValues.TextRendererAddsDrawingGroupKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ScheduledAnimationModifier<Int>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    v3 = v2;
    lazy protocol witness table accessor for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>();
    v6 = type metadata accessor for _ViewModifier_Content(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _ViewModifier_Content<ScheduledAnimationModifier<Int>>);
    }
  }
}

void lazy protocol witness table accessor for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>()
{
  if (!lazy protocol witness table cache variable for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    swift_getWitnessTable(protocol conformance descriptor for ScheduledAnimationModifier<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>);
  }
}

void type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>>)
  {
    type metadata accessor for GlassEffectBackdropObserver?(255, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>, type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, type metadata accessor for BodyInput);
    v4 = type metadata accessor for TypedElement(a1, v2, &protocol witness table for BodyInput<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<KickModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<KickModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<KickModifier>>);
    }
  }
}

void lazy protocol witness table accessor for type KickModifier and conformance KickModifier()
{
  if (!lazy protocol witness table cache variable for type KickModifier and conformance KickModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for KickModifier, &type metadata for KickModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type KickModifier and conformance KickModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type KickModifier and conformance KickModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for KickModifier, &type metadata for KickModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type KickModifier and conformance KickModifier);
  }
}

void type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<TranslationKickModifier<Int>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    v3 = v2;
    lazy protocol witness table accessor for type TranslationKickModifier<Int> and conformance TranslationKickModifier<A>();
    v6 = type metadata accessor for _ViewModifier_Content(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _ViewModifier_Content<TranslationKickModifier<Int>>);
    }
  }
}

void lazy protocol witness table accessor for type TranslationKickModifier<Int> and conformance TranslationKickModifier<A>()
{
  if (!lazy protocol witness table cache variable for type TranslationKickModifier<Int> and conformance TranslationKickModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    swift_getWitnessTable(protocol conformance descriptor for TranslationKickModifier<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TranslationKickModifier<Int> and conformance TranslationKickModifier<A>);
  }
}

void type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>>)
  {
    type metadata accessor for GlassEffectBackdropObserver?(255, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>, type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>, type metadata accessor for BodyInput);
    v4 = type metadata accessor for TypedElement(a1, v2, &protocol witness table for BodyInput<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ScalePulseModifier<Int>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    v3 = v2;
    lazy protocol witness table accessor for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>();
    v6 = type metadata accessor for _ViewModifier_Content(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _ViewModifier_Content<ScalePulseModifier<Int>>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>()
{
  if (!lazy protocol witness table cache variable for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    swift_getWitnessTable(protocol conformance descriptor for ScalePulseModifier<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>);
  }
}

void type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>>)
  {
    type metadata accessor for GlassEffectBackdropObserver?(255, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>, type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>, type metadata accessor for BodyInput);
    v4 = type metadata accessor for TypedElement(a1, v2, &protocol witness table for BodyInput<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<GlassTransitionStateModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassTransitionStateModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassTransitionStateModifier>>);
    }
  }
}

void lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier()
{
  if (!lazy protocol witness table cache variable for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier);
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<GlassEffectShapeModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectShapeModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectShapeModifier>>);
    }
  }
}