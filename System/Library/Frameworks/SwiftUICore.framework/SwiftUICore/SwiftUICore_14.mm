unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, _BYTE *a2, const void *a3)
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
  v8 = &a2[-result];
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

  v11 = &v6[v10];
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

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, _BYTE *a2, uint64_t a3, const void *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + (result << 7));
  type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 128 * a3;
  a2 = (v9 + 32 + (v8 << 7));
  if (result != a2 || result >= &a2[128 * v14])
  {
    result = memmove(result, a2, v14 << 7);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  memmove(v10, a4, 0x80uLL);
  a2 = v18;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = outlined init with copy of CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(result, a2);
    __break(1u);
    return result;
  }

  return outlined init with copy of CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(a4, v18);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v21);
        outlined init with take of AnyTrackedValue(v21, v22);
        v10 = v23;
        v11 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (v11[1])(v21, &type metadata for SystemColorDefinitionType, v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(a1);
        if (v15)
        {
          v17 = v15[9];
          v16 = v15[10];
        }

        else
        {
          v16 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
          v17 = &type metadata for CoreUIDefaultSystemColorDefinition;
        }

        *&v21[0] = v17;
        *(&v21[0] + 1) = v16;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemColorDefinitionKey>>(0);
        v23 = v18;
        v24 = &protocol witness table for TrackedValue<A>;
        v22[0] = v17;
        v22[1] = v16;
        specialized Dictionary.subscript.setter(v22, v6);
      }

      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(a1);
  if (v12)
  {
    v14 = v12[9];
    v13 = v12[10];
  }

  else
  {
    v13 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
    v14 = &type metadata for CoreUIDefaultSystemColorDefinition;
  }

  *&v21[0] = v14;
  *(&v21[0] + 1) = v13;
LABEL_15:
  v19 = *&v21[0];
  os_unfair_lock_unlock((v3 + 16));

  return v19;
}

void type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)()
{
  if (!lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), &type metadata for _ShapeStyle_Pack.Key, &type metadata for _ShapeStyle_Pack.Style, "key style ");
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>);
    }
  }
}

void outlined consume of _ShapeStyle_Pack.Fill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a12 > 2u)
  {
    if (a12 == 3)
    {
      goto LABEL_5;
    }

    if (a12 == 6)
    {
      MEMORY[0x1EEE66C30](a1, a2, a3);
    }
  }

  else if (a12 == 1)
  {
  }

  else if (a12 == 2)
  {
    a1 = a4;
    LOBYTE(a2) = a5;
LABEL_5:
    outlined consume of Material.ID(a1, a2);
  }
}

double outlined copy of _ShapeStyle_Pack.Fill(uint64_t a1, unsigned __int8 a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a12 > 2u)
  {
    if (a12 == 3)
    {
      goto LABEL_5;
    }

    if (a12 == 6)
    {
      v12 = a4;
    }
  }

  else if (a12 == 1)
  {
  }

  else if (a12 == 2)
  {
    a1 = a4;
    a2 = a5;
LABEL_5:
    outlined copy of Material.ID(a1, a2);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA17ContentTransitionV5StateVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA17ContentTransitionV5StateVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021SystemColorDefinitionV033_9E3352CE4697DF56A738786E16992848LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemColorDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemColorDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemColorDefinitionKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021SystemColorDefinitionV033_9E3352CE4697DF56A738786E16992848LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021SystemColorDefinitionV033_9E3352CE4697DF56A738786E16992848LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

float protocol witness for static SystemColorDefinition.opacity(at:environment:) in conformance CoreUIDefaultSystemColorDefinition(uint64_t a1)
{
  result = 0.18;
  if (a1 == 2)
  {
    result = 0.25;
  }

  if (a1 == 1)
  {
    result = 0.5;
  }

  if (a1 <= 0)
  {
    return 1.0;
  }

  return result;
}

uint64_t ShapeStyle.copyStyle(name:in:foregroundStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v14 = *v13;
  v15 = v13[1];
  v31[43] = 0;
  *&v28 = 0;
  v27 = v12;
  BYTE8(v28) = 3;
  *&v29 = 0;
  BYTE8(v29) = 5;
  *&v30 = v14;
  *(&v30 + 1) = v15;
  *v31 = v16;
  memset(&v31[8], 0, 32);
  v31[40] = 1;
  *&v31[41] = 768;
  v18 = *(v17 + 32);

  v18(&v27, a4, a5);
  if (BYTE8(v29) == 2)
  {
    v19 = v29;
    v25 = *v31;
    v26[0] = *&v31[16];
    *(v26 + 12) = *&v31[28];
    v21 = v27;
    v22 = v28;
    v24 = v30;
    v23 = v29;
  }

  else
  {
    (*(v8 + 16))(v10, v5, a4);
    v19 = AnyShapeStyle.init<A>(_:)(v10, a4, a5);
    v25 = *v31;
    v26[0] = *&v31[16];
    *(v26 + 12) = *&v31[28];
    v21 = v27;
    v22 = v28;
    v24 = v30;
    v23 = v29;
  }

  outlined destroy of _ShapeStyle_Shape(&v21);
  return v19;
}

void Color._apply(to:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != 2)
  {
    v11 = *(a1 + 48);
    if (*(a1 + 56))
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5(v11, v13);

      if (LOBYTE(v13[0]) != 2)
      {
LABEL_13:
        (*(*a2 + 128))(a2, a1);
        return;
      }
    }

    else
    {
      v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*(a1 + 48));
      if (!v12 || *(v12 + 72) != 2)
      {
        goto LABEL_13;
      }
    }

    if (Color.applyBackgroundMaterial(shape:)(a1, a2))
    {
      return;
    }

    goto LABEL_13;
  }

  v4 = *a1;
  v5 = a2;
  if (*a1 >= 1)
  {
    v6 = *(a1 + 56);
    v13[0] = *(a1 + 48);
    v13[1] = v6;
    v7 = *(*a2 + 168);

    v8 = v7(v4, v13);

    type metadata accessor for ColorBox<Color.OpacityColor>(0);
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = v8;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  outlined consume of _ShapeStyle_Shape.Result(v9, v10);
  *(a1 + 32) = v5;
  *(a1 + 40) = 3;
}

uint64_t EnvironmentValues.currentForegroundStyle.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015ForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v1);

    if (!v2)
    {

      v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022DefaultForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v1);

      return v3;
    }
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v1);
    if (!v5 || (v2 = v5[9], , !v2))
    {
      v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022DefaultForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v1);
      if (v6)
      {
        v2 = v6[9];
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

double outlined consume of _ShapeStyle_Shape.Result(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return result;
    }

LABEL_7:

    return result;
  }

  if (a2 == 2 || a2 == 3)
  {
    goto LABEL_7;
  }

  return result;
}

double destroy for _ShapeStyle_Shape(uint64_t a1)
{
  outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));

  return result;
}

void specialized ForegroundStyle._apply(to:)(uint64_t a1)
{
  if ((*(a1 + 107) & 2) != 0)
  {
    if (one-time initialization token for sharedPrimary != -1)
    {
      swift_once();
    }

    (*(*static LegacyContentStyle.sharedPrimary + 80))(a1);
  }

  else
  {
    *(a1 + 107) |= 2u;
    if (*(a1 + 64))
    {
      v2 = *(a1 + 64);
    }

    else
    {
      v3 = EnvironmentValues.currentForegroundStyle.getter();
      if (v3)
      {
        v2 = v3;
      }

      else
      {
        if (one-time initialization token for sharedPrimary != -1)
        {
          swift_once();
        }

        v2 = static HierarchicalShapeStyle.sharedPrimary;
      }
    }

    v4 = *(*v2 + 80);

    v4(a1);

    if ((*(a1 + 107) & 2) != 0)
    {
      *(a1 + 107) &= ~2u;
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015ForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<ForegroundStyleKey>>(0);
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ForegroundStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ForegroundStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ForegroundStyleKey>>);
    }
  }
}

uint64_t specialized static EnvironmentValues.EffectiveFontKey.value(in:)(void *a1)
{
  v1 = *a1;
  if (a1[1])
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04FontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

    if (!v2)
    {

      v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011DefaultFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

      if (!v2)
      {

        v3 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV012FallbackFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

        return v3;
      }
    }

    return v2;
  }

  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (v5)
  {
    v2 = v5[9];

    if (v2)
    {
      return v2;
    }
  }

  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
  if (v6)
  {
    v2 = v6[9];

    if (v2)
    {
      return v2;
    }
  }

  return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(v1);
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04FontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04FontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04FontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013FontModifiersV033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontModifiersKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontModifiersKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontModifiersKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(void *a1)
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
    if (_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(a1))
    {
    }

    else
    {
      *&v17[0] = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = v10[1];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for [AnyFontModifier], type metadata accessor for AnyFontModifier, MEMORY[0x1E69E62F8]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(a1);
    if (v12)
    {
      v13 = v12[9];
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    *&v17[0] = v13;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontModifiersKey>>(0);
    v19 = v14;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v13;

    specialized Dictionary.subscript.setter(v18, v6);
  }

LABEL_14:
  v15 = *&v17[0];
  os_unfair_lock_unlock((v3 + 16));

  return v15;
}

void type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for DerivedEnvironmentPropertyKey(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019WatchDisplayVariantV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void static EnvironmentValues.FontContextKey.value(in:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v3, &v20);

    v4 = v20;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016LegibilityWeightI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, &v20);

    v5 = v20;

    v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014FontDefinitionI0019_C17A136ED11B3E0D21R11D182F3B80B2LLVG_Tt1g5(v3);
    v8 = v7;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v3);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019WatchDisplayVariantI0VG_Tt1g5(v3, &v20);

    v10 = v20;

    v11 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);

    v12 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v3);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(*a1);
    if (v13)
    {
      v4 = *(v13 + 72);
    }

    else
    {
      v4 = 3;
    }

    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v3);
    if (v14)
    {
      v5 = *(v14 + 72);
    }

    else
    {
      v5 = 2;
    }

    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(v3);
    if (v15)
    {
      v16 = (v15 + 9);
      v17 = v15 + 10;
    }

    else
    {
      v16 = &static FontDefinitionKey.defaultValue;
      v17 = &static FontDefinitionKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v8 = *v17;
    v6 = *v16;
    v20 = v3;
    v21 = 0;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(&v20);

    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(v3);
    if (v18)
    {
      v10 = *(v18 + 72);
    }

    else
    {
      v10 = 1;
    }

    v20 = v3;
    v21 = 0;

    v11 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(&v20);

    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v3);
    if (v19)
    {
      v12 = v19[9];
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }
  }

  *a2 = v4;
  *(a2 + 1) = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 25) = ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014FontDefinitionV033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014FontDefinitionV033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014FontDefinitionV033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>, lazy protocol witness table accessor for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey, &unk_1F005E1C0);
    v3 = v2;
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v6 = type metadata accessor for DerivedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
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
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 1.0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 1.0;
    }

    *v18 = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayScaleKey>>(0);
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    *v19 = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(a1);
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
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for ColorSchemeContrast, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ColorSchemeContrastKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ColorSchemeContrastKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ColorSchemeContrastKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ColorSchemeContrastKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayScaleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayScaleKey>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
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
    v21[0] = a1;

    static EnvironmentValues.FontContextKey.value(in:)(v21, a2);

    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>, lazy protocol witness table accessor for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey, &unk_1F005E1C0);
  v8 = v7;
  v9 = *(v5 + 40);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v24;
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v13 + 8))(&type metadata for Font.Context, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v21[0] = a1;

    static EnvironmentValues.FontContextKey.value(in:)(v21, a2);

    v14 = a2[1];
    v21[0] = *a2;
    v21[1] = v14;
    v21[2] = a2[2];
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>>(0);
    v20[3] = v15;
    v20[4] = &protocol witness table for DerivedValue<A>;
    v16 = swift_allocObject();
    v20[0] = v16;
    v17 = a2[1];
    v16[1] = *a2;
    v16[2] = v17;
    v16[3] = a2[2];
    outlined init with copy of Font.Context(v21, v19);
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t sub_18D0DC4D8()
{

  return swift_deallocObject();
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019WatchDisplayVariantV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019WatchDisplayVariantV0VG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v30);
        outlined init with take of AnyTrackedValue(v30, v31);
        v12 = v32;
        v13 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v14 = v13[1];
        v15 = type metadata accessor for Locale();
        v14(v15, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {
        v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v20)
        {
          v21 = *(*v20 + 248);
          v22 = v20;
          v23 = type metadata accessor for Locale();
          (*(*(v23 - 8) + 16))(a2, &v22[v21], v23);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Locale();
          v26 = __swift_project_value_buffer(v23, static LocaleKey.defaultValue);
          (*(*(v23 - 8) + 16))(a2, v26, v23);
        }

        type metadata accessor for TrackedValue<EnvironmentPropertyKey<LocaleKey>>(0);
        v32 = v27;
        v33 = &protocol witness table for TrackedValue<A>;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
        type metadata accessor for Locale();
        (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, a2, v23);
        specialized Dictionary.subscript.setter(v31, v8);
      }

      goto LABEL_18;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v16)
  {
    v17 = *(*v16 + 248);
    v18 = v16;
    v19 = type metadata accessor for Locale();
    (*(*(v19 - 8) + 16))(a2, &v18[v17], v19);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Locale();
    v25 = __swift_project_value_buffer(v24, static LocaleKey.defaultValue);
    (*(*(v24 - 8) + 16))(a2, v25, v24);
  }

LABEL_18:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for Any?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_7(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sypSgMaTm_8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_9(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundMaterialKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundMaterialKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundMaterialKey>>);
    }
  }
}

double MaterialView.ChildEnvironment.environment.getter@<D0>(void *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  *a2 = v5;
  a2[1] = v4;

  return result;
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactContentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactContentKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactContentKey>, &type metadata for ShouldRedactContentKey, &protocol witness table for ShouldRedactContentKey);
    v3 = v2;
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<ShouldRedactContentKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v6 = type metadata accessor for DerivedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactContentKey>>);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for DerivedValue(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  if (v9 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v8 + 80) & 0x100000) == 0)
  {
    (*(v8 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v9 + 16) & ~v9));
  }

  return a1;
}

BOOL specialized static ShouldRedactContentKey.value(in:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5(v1, &v8);

    LOBYTE(v3) = v8;
    if (v8)
    {
      return 1;
    }
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(*a1);
    if (v4)
    {
      v3 = v4[9];
      if (v3)
      {
        return 1;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  if ((v3 & 2) != 0)
  {
    if (v2)
    {

      v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v1);

      return (v5 & 1) != 0;
    }

    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v1);
    if (v6 && (v6[9] & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t static CorePlatformProvidersDefinition.providers.getter@<X0>(__int128 *a1@<X8>)
{
  result = type metadata accessor for CorePlatformProvidersDefinition();
  if (result == v1)
  {
    a1[8] = 0u;
    a1[9] = 0u;
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    swift_beginAccess();
    v29[6] = xmmword_1ED536B18;
    v29[7] = unk_1ED536B28;
    v29[8] = xmmword_1ED536B38;
    v29[9] = unk_1ED536B48;
    v29[2] = xmmword_1ED536AD8;
    v29[3] = unk_1ED536AE8;
    v29[4] = xmmword_1ED536AF8;
    v29[5] = unk_1ED536B08;
    v29[0] = static CorePlatformProvidersDefinition.uiKitProviders;
    v29[1] = unk_1ED536AC8;
    if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v29) == 1)
    {
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      (*(v1 + 80))(&v9);
      v25 = v15;
      v26 = v16;
      v27 = v17;
      v28 = v18;
      v21 = v11;
      v22 = v12;
      v23 = v13;
      v24 = v14;
      v19 = v9;
      v20 = v10;
      _ViewInputs.base.modify();
      xmmword_1ED536B18 = v25;
      unk_1ED536B28 = v26;
      xmmword_1ED536B38 = v27;
      unk_1ED536B48 = v28;
      xmmword_1ED536AD8 = v21;
      unk_1ED536AE8 = v22;
      xmmword_1ED536AF8 = v23;
      unk_1ED536B08 = v24;
      static CorePlatformProvidersDefinition.uiKitProviders = v19;
      unk_1ED536AC8 = v20;
    }

    swift_endAccess();
    v25 = xmmword_1ED536B18;
    v26 = unk_1ED536B28;
    v27 = xmmword_1ED536B38;
    v28 = unk_1ED536B48;
    v21 = xmmword_1ED536AD8;
    v22 = unk_1ED536AE8;
    v23 = xmmword_1ED536AF8;
    v24 = unk_1ED536B08;
    v19 = static CorePlatformProvidersDefinition.uiKitProviders;
    v20 = unk_1ED536AC8;
    result = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v19);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v4 = v26;
      a1[6] = v25;
      a1[7] = v4;
      v5 = v28;
      a1[8] = v27;
      a1[9] = v5;
      v6 = v22;
      a1[2] = v21;
      a1[3] = v6;
      v7 = v24;
      a1[4] = v23;
      a1[5] = v7;
      v8 = v20;
      *a1 = v19;
      a1[1] = v8;
    }
  }

  return result;
}

void type metadata accessor for AttributedString.AdaptiveImageGlyph?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for DerivedEnvironmentPropertyKey(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(uint64_t a1)
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
    v18 = a1;
    v19 = 0;

    v12 = specialized static ShouldRedactContentKey.value(in:)(&v18);

    LOBYTE(v17[0]) = v12;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactContentKey>, &type metadata for ShouldRedactContentKey, &protocol witness table for ShouldRedactContentKey);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    (v11[1])(v17, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    v18 = a1;
    v19 = 0;

    v13 = specialized static ShouldRedactContentKey.value(in:)(&v18);

    LOBYTE(v17[0]) = v13;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactContentKey>>(0);
    v20 = v14;
    v21 = &protocol witness table for DerivedValue<A>;
    LOBYTE(v18) = v13;
    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  v15 = LOBYTE(v17[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v15;
}

uint64_t destroy for DerivedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void type metadata completion function for Text.Style(uint64_t a1)
{
  type metadata accessor for TypesettingConfiguration(319);
  if (v1 <= 0x3F)
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(319, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    if (v2 <= 0x3F)
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(319, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
      if (v3 <= 0x3F)
      {
        _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(319, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<LocaleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LocaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LocaleKey>>);
    }
  }
}

void lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<ShouldRedactContentKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactContentKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactContentKey>, &type metadata for ShouldRedactContentKey, &protocol witness table for ShouldRedactContentKey);
    swift_getWitnessTable(protocol conformance descriptor for DerivedEnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactContentKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA032HorizontalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, &type metadata for UserInterfaceSizeClass, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>);
    }
  }
}

uint64_t *LeafViewResponder.deinit()
{
  v1 = *v0;
  outlined destroy of weak GestureGraphDelegate?((v0 + 2));
  swift_weakDestroy();
  v2 = *(*v0 + 264);
  v4 = type metadata accessor for ContentResponderHelper(0, *(v1 + 248), *(v1 + 256), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t LeafViewResponder.__deallocating_deinit()
{
  LeafViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ShapeStyledResponderData(_DWORD *a1, unsigned int a2, uint64_t a3)
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

uint64_t outlined destroy of InterpolatedDisplayList<Image.Resolved>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for LeafViewResponder<ShapeStyledResponderData<Image.Resolved>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, a3, a4, a5, type metadata accessor for ShapeStyledResponderData);
    v9 = type metadata accessor for LeafViewResponder(a1, v7, &protocol witness table for ShapeStyledResponderData<A>, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *initializeWithCopy for InterpolatedDisplayList(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v7;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v9;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v11;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v13;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v15;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v17;
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v19;
  v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v22 = *v21;
  v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v24 = *v23;
  v25 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = (v23 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v25 = *v26;
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 5) = *(v26 + 5);
  *(v25 + 6) = *(v26 + 6);
  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = ((v29 + 7 + v25) & ~v29);
  v31 = ((v29 + 7 + v26) & ~v29);
  v32 = *(v28 + 48);

  if (v32(v31, 1, v27))
  {
    v33 = *(v28 + 84);
    v34 = *(v28 + 64);
    if (v33)
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 + 1;
    }

    memcpy(v30, v31, v35);
  }

  else
  {
    (*(v28 + 16))(v30, v31, v27);
    v37 = *(v28 + 56);
    v36 = v28 + 56;
    v37(v30, 0, 1, v27);
    v33 = *(v36 + 28);
    v34 = *(v36 + 8);
  }

  if (v33)
  {
    v38 = v34;
  }

  else
  {
    v38 = v34 + 1;
  }

  v39 = ((v30 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v31 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v41 = ((v39 + 19) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v40 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v41 = *v42;
  *((v41 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v42 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t destroy for InterpolatedDisplayList(void *a1, uint64_t a2)
{
  v3 = a1 + 11;

  v4 = ((((((((((((((((((((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = *(a2 + 16);
  v10 = *(v5 - 8);
  v6 = *(v10 + 80);
  v7 = v4 + v6 + 7;
  result = (*(v10 + 48))(v7 & ~v6, 1, v5);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(v7 & ~v6, v5);
  }

  return result;
}

uint64_t _ShapeStyle_InterpolatorGroup.init()()
{
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v1 = static RasterizationOptions.Flags.defaultFlags;
  *(v0 + 36) = -1;
  *(v0 + 40) = 768;
  *(v0 + 44) = v1;
  *(v0 + 48) = 3;
  *(v0 + 52) = 0;
  *(v0 + 56) = 0;
  *(v0 + 16) = 0x7FF0000000000000;
  return v0;
}

void type metadata accessor for LeafLayoutComputer<Image.Resolved>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = HIWORD(a3);
  Hasher.init(_seed:)();
  ResolvedShapeStyles.hash(into:)();
  v7 = Hasher._finalize()();
  if (v6)
  {
    v8 = 0x1000000000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFF000000000000 | a3 & 0xFFFFFFFFFFFFLL;

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v9, v7);
}

void ResolvedShapeStyles.hash(into:)()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 20);
  v6 = *(v0 + 21);
  v7 = *(v0 + 22);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  MEMORY[0x193AC11A0](v5);
  if (v6 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v6);
  }

  Hasher._combine(_:)(v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      if (*v9 == a1 && *(v9 + 4) == HIDWORD(a1) && *(v9 + 8) == a2 && *(v9 + 12) == HIDWORD(a2) && *(v9 + 16) == a3 && *(v9 + 20) == BYTE4(a3))
      {
        v15 = *(v9 + 21);
        v16 = *(v9 + 22);
        if (v15 == 3)
        {
          if (BYTE5(a3) == 3)
          {
            goto LABEL_4;
          }
        }

        else if (BYTE5(a3) != 3 && v15 == BYTE5(a3))
        {
LABEL_4:
          if (((HIWORD(a3) & 1 ^ v16) & 1) == 0)
          {
            return result;
          }
        }
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>, &type metadata for _ShapeStyle_Pack, MEMORY[0x1E698D388]);
    lazy protocol witness table accessor for type ResolvedShapeStyles and conformance ResolvedShapeStyles();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>);
    }
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 22) = BYTE6(a4);
  *(v6 + 20) = WORD2(a4);
  *(v6 + 16) = a4;
  *(a6[7] + 4 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 12 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance InterpolatedDisplayList<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for InterpolatedDisplayList<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t destroy for ContentResponderHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = (a1 + *(v3 + 80) + 16) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, v2))
  {
    (*(v3 + 8))(v4, v2);
  }
}

void lazy protocol witness table accessor for type ResolvedShapeStyles and conformance ResolvedShapeStyles()
{
  if (!lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvedShapeStyles, &type metadata for ResolvedShapeStyles, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvedShapeStyles, &type metadata for ResolvedShapeStyles, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>, lazy protocol witness table accessor for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey, &unk_1F005E1C0);
    swift_getWitnessTable(protocol conformance descriptor for DerivedEnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(void), void (*a7)(uint64_t, void *, _OWORD *, uint64_t))
{
  v12 = v7;
  v15 = *v7;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a4();
      v16 = v24;
      goto LABEL_8;
    }

    a5(v21, a3 & 1);
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a6(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (*(v26 + 56) + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1(v27);

    return outlined init with take of Any(a1, v27);
  }

  else
  {
    a7(v16, a2, a1, v26);

    return a2;
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011DefaultFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011DefaultFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _ShapeStyle_Pack.subscript.getter@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *a1;
    v7 = *v3 + 40;
    while (1)
    {
      v8 = *(v7 - 8);
      v9 = *(v7 - 7);
      if (v6 == v8 && v9 == a2)
      {
        v12 = *(v7 - 8);
        v13 = *(v7 + 8);
        v14 = *(v7 + 40);
        v46 = *(v7 + 24);
        v47 = v14;
        v44 = v12;
        v45 = v13;
        v15 = *(v7 + 56);
        v16 = *(v7 + 72);
        v17 = *(v7 + 104);
        v50 = *(v7 + 88);
        v51 = v17;
        v48 = v15;
        v49 = v16;
        v18 = *v7;
        v19 = *(v7 + 16);
        v20 = *(v7 + 48);
        *(a3 + 32) = *(v7 + 32);
        *(a3 + 48) = v20;
        *a3 = v18;
        *(a3 + 16) = v19;
        v21 = *(v7 + 64);
        v22 = *(v7 + 80);
        v23 = *(v7 + 96);
        v24 = *(v7 + 112);
LABEL_18:
        *(a3 + 112) = v24;
        *(a3 + 80) = v22;
        *(a3 + 96) = v23;
        *(a3 + 64) = v21;
        return outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v44, v43, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      }

      v11 = v9 > a2 && v6 == v8;
      if (v6 < v8 || v11)
      {
        break;
      }

      ++v5;
      v7 += 128;
      if (v4 == v5)
      {
        goto LABEL_19;
      }
    }

    if (v5 && *(v7 - 136) == v6)
    {
      v25 = *(v7 - 136);
      v26 = *(v7 - 120);
      v27 = *(v7 - 88);
      v46 = *(v7 - 104);
      v47 = v27;
      v44 = v25;
      v45 = v26;
      v28 = *(v7 - 72);
      v29 = *(v7 - 56);
      v30 = *(v7 - 24);
      v50 = *(v7 - 40);
      v51 = v30;
      v48 = v28;
      v49 = v29;
      v31 = *(v7 - 128);
      v32 = *(v7 - 112);
      v33 = *(v7 - 80);
      *(a3 + 32) = *(v7 - 96);
      *(a3 + 48) = v33;
      *a3 = v31;
      *(a3 + 16) = v32;
      v21 = *(v7 - 64);
      v22 = *(v7 - 48);
      v23 = *(v7 - 32);
      v24 = *(v7 - 16);
      goto LABEL_18;
    }
  }

LABEL_19:
  if (one-time initialization token for clear != -1)
  {
    v42 = a3;
    swift_once();
    a3 = v42;
  }

  v35 = xmmword_1ED51ECB0;
  v36 = xmmword_1ED51ECC0;
  v48 = xmmword_1ED51ECB0;
  v49 = xmmword_1ED51ECC0;
  v37 = xmmword_1ED51ECD0;
  v50 = xmmword_1ED51ECD0;
  v38 = qword_1ED51ECE0;
  *&v51 = qword_1ED51ECE0;
  v39 = *&dword_1ED51EC80;
  v44 = static _ShapeStyle_Pack.Style.clear;
  v45 = *&dword_1ED51EC80;
  v40 = xmmword_1ED51EC90;
  v41 = unk_1ED51ECA0;
  v46 = xmmword_1ED51EC90;
  v47 = unk_1ED51ECA0;
  *a3 = static _ShapeStyle_Pack.Style.clear;
  *(a3 + 16) = v39;
  *(a3 + 32) = v40;
  *(a3 + 48) = v41;
  *(a3 + 64) = v35;
  *(a3 + 80) = v36;
  *(a3 + 96) = v37;
  *(a3 + 112) = v38;
  return outlined init with copy of _ShapeStyle_Pack.Style(&v44, v43);
}

uint64_t outlined copy of GraphicsBlendMode?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of GraphicsBlendMode(result, a2 & 1);
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA17ContentTransitionV5StateVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue);
    v1 = type metadata accessor for _NativeDictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030VerticalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, &type metadata for UserInterfaceSizeClass, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayGamutKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayGamutKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayGamutKey>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
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
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for DisplayGamut, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayGamutKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t ColorBox.opacity(at:environment:)(uint64_t a1, __int128 *a2)
{
  v3 = *v2;
  v5 = *a2;
  return (*(*(v3 + 184) + 80))(a1, &v5, *(v3 + 176));
}

uint64_t _s7SwiftUI13ColorProviderPAAE7opacity2at11environmentSfSi_AA17EnvironmentValuesVtFAA0C0VAAE014TintAdjustmentD0V_Tt1B5Tm(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {

    v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(a2);
    v8 = v7;
  }

  else
  {
    v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(a2);
    if (v9)
    {
      v6 = v9[9];
      v8 = v9[10];
    }

    else
    {
      v8 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v6 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v11[0] = a2;
  v11[1] = a3;
  return (v8[2])(a1, v11, v6, v8);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011DefaultFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013FontModifiersV033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013FontModifiersV033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void AnyColorBox.apply(to:)(uint64_t a1)
{
  if (*(a1 + 24) == 2)
  {
    v3 = *a1;
    if (*a1 < 1)
    {
    }

    else
    {
      v4 = *(a1 + 56);
      v10[0] = *(a1 + 48);
      v10[1] = v4;
      v5 = *(*v1 + 168);

      v6 = v5(v3, v10);

      type metadata accessor for ColorBox<Color.OpacityColor>(0);
      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      *(v7 + 24) = v6;
      v1 = v7;
    }

    outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = v1;
    *(a1 + 40) = 3;
  }

  else
  {
    v8 = *(*v1 + 128);

    v8(v9, a1);
  }
}

void specialized static ViewGraph.sizeThatFits(_:layoutComputer:insets:)(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, double a6)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *a2;
  if (v7)
  {
    v10 = *(a1 + 16);
    if (*(a1 + 24))
    {
      goto LABEL_3;
    }

LABEL_15:
    if (v10 - (a3 + a5) < 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v10 - (a3 + a5);
    }

    if (!v9)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v6 - (a4 + a6) < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v6 - (a4 + a6);
  }

  v10 = *(a1 + 16);
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!v9)
  {
    return;
  }

LABEL_4:
  v11 = one-time initialization token for lockAssertionsAreEnabled;

  if (v11 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_10;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_10:
    v12 = v6;
    v13 = v7;
    v14 = v10;
    v15 = v8;
    (*(*v9 + 120))(&v12);
  }
}

void ViewGraph.rootViewInsets.getter()
{
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(*Value + 16);
  if (!v2)
  {
    return;
  }

  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
LABEL_8:
    v12 = v2 - v3;
    v13 = (v1 + 112 * v3 + 40);
    do
    {
      v15 = *v13;
      v14 = v13[1];
      v13 += 7;
      v5 = vaddq_f64(v5, v14);
      v4 = vaddq_f64(v4, v15);
      --v12;
    }

    while (v12);
    goto LABEL_10;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v6 = (v1 + 152);
  v4 = 0uLL;
  v7 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v5 = 0uLL;
  do
  {
    v8 = v6[-7];
    v9 = v6[-6];
    v11 = *v6;
    v10 = v6[1];
    v6 += 14;
    v5 = vaddq_f64(vaddq_f64(v5, v9), v10);
    v4 = vaddq_f64(vaddq_f64(v4, v8), v11);
    v7 -= 2;
  }

  while (v7);
  if (v2 != v3)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v4.f64[1] != v5.f64[1])
  {
    swift_beginAccess();
    v16 = AGGraphGetValue();
    v17 = *v16;
    if (*(v16 + 8))
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v17, &v19);
    }

    else
    {

      _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v18);
    }
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSizingV033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t outlined destroy of EnvironmentValues.CapitalizationContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for SystemFormatStyle.DateOffset?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOhTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_3(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOhTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of ResolvableStringResolutionContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundInfoKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundInfoKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundInfoKey>>);
    }
  }
}

uint64_t type metadata completion function for SecondaryLookupTrackedValue(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018MinimumScaleFactorV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018MinimumScaleFactorV0VG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018MinimumScaleFactorV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t getEnumTagSinglePayload for Font.FontCache.Key(uint64_t *a1, int a2)
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

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v17 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v17;
    }

    a2(*(v15 + 56) + 40 * v13, a5);
    a3(v13, v15);
    *v9 = v15;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Dictionary.removeValue(forKey:)(a1, outlined init with take of AnyTrackedValue, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a2);
}

{
  return specialized Dictionary.removeValue(forKey:)(a1, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a2);
}

void move(_:to:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = *a2;
  v6 = *(*a2 + 16);
  v7 = v6 + v3;
  if (__OFADD__(v6, v3))
  {
LABEL_32:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v7 > v5[3] >> 1)
  {
    if (v6 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 0, v5);
  }

  *a2 = v5;
  v11 = 1 << *(v2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v2 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (!v13)
  {
LABEL_13:
    if (v14 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v13 = 0;
        v27 = 0u;
        v28 = 0u;
        v15 = v18;
        v26 = 0u;
        goto LABEL_22;
      }

      v13 = *(v2 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  while (1)
  {
    v16 = v15;
LABEL_21:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v16 << 6);
    v21 = *(*(v2 + 48) + 8 * v20);
    outlined init with copy of AnyTrackedValue(*(v2 + 56) + 40 * v20, v25);
    *&v26 = v21;
    outlined init with take of AnyTrackedValue(v25, &v26 + 8);
LABEL_22:
    v29[1] = v27;
    v29[2] = v28;
    v29[0] = v26;
    if (!v28)
    {
      break;
    }

    outlined init with take of AnyTrackedValue((v29 + 8), &v26);
    v23 = v5[2];
    v22 = v5[3];
    if (v23 >= v22 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
    }

    v5[2] = v23 + 1;
    outlined init with take of AnyTrackedValue(&v26, &v5[5 * v23 + 4]);
    *a2 = v5;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (*(v2 + 16))
  {
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v29[0] = *a1;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>(0);
    _NativeDictionary.removeAll(isUnique:)(v24);
    *a1 = *&v29[0];
  }
}

double _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);

  os_unfair_lock_lock((v11 + 16));
  v12 = *(v11 + 24);
  if (a1)
  {
    if (v12 != *(a1 + 64))
    {
      goto LABEL_22;
    }

    if (!a2)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2 == 0;
    }

    if (v14)
    {
      goto LABEL_22;
    }
  }

  if (v12 == *(a2 + 64))
  {
    goto LABEL_22;
  }

  v13 = 0;
LABEL_12:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, a3, a4, a5, type metadata accessor for EnvironmentPropertyKey);
  specialized Dictionary.removeValue(forKey:)(v15, &v22);
  if (v23)
  {
    outlined init with take of AnyTrackedValue(&v22, v24);
    outlined init with copy of AnyTrackedValue(v24, &v22);
    v16 = *(v11 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 48) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      *(v11 + 48) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      *(v11 + 48) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
    v20 = *(v11 + 48);
    *(v20 + 16) = v19 + 1;
    outlined init with take of AnyTrackedValue(&v22, v20 + 40 * v19 + 32);
    *(v11 + 48) = v20;
  }

  else
  {
    outlined destroy of EnvironmentValues.CapitalizationContext(&v22, type metadata accessor for AnyTrackedValue?);
  }

  move(_:to:)((v11 + 40), (v11 + 48));
  if (v13)
  {
    *(v11 + 24) = 0;
  }

  else
  {
    *(v11 + 24) = *(a2 + 64);
  }

LABEL_22:
  os_unfair_lock_unlock((v11 + 16));

  return result;
}

void type metadata accessor for AnyTrackedValue?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyTrackedValue?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AnyTrackedValue?);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(a1);
    if (v14)
    {
      v16 = v14[9];
      v15 = v14[10];
      *a2 = v16;
      a2[1] = v15;
      outlined copy of Material?(v16, v15);
    }

    else
    {
      *a2 = xmmword_18DDA6AB0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v17 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(a1);
    if (v17)
    {
      v18 = v17[9];
      v19 = v17[10];
      *a2 = v18;
      a2[1] = v19;
      outlined copy of Material?(v18, v19);
    }

    else
    {
      v18 = 0;
      *a2 = xmmword_18DDA6AB0;
      v19 = 255;
    }

    type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundMaterialKey>>(0);
    v24 = v20;
    v25 = &protocol witness table for TrackedValue<A>;
    v23[0] = v18;
    v23[1] = v19;
    outlined copy of Material?(v18, v19);
    specialized Dictionary.subscript.setter(v23, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v21);
        outlined init with take of AnyTrackedValue(v21, v22);
        v10 = v23;
        v11 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        v12 = v11[1];
        v13 = type metadata accessor for CorePlatformProvidersDefinition.Type();
        v12(v21, v13, v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(a1);
        if (v16)
        {
          v17 = v16 + 9;
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v17 = &static EnvironmentValues.CorePlatfromProvidersDefinitionKey.defaultValue;
        }

        *&v21[0] = *v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>(0);
        v23 = v18;
        v24 = &protocol witness table for TrackedValue<A>;
        v22[0] = *&v21[0];
        specialized Dictionary.subscript.setter(v22, v6);
      }

      goto LABEL_19;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(a1);
  if (v14)
  {
    v15 = v14 + 9;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v15 = &static EnvironmentValues.CorePlatfromProvidersDefinitionKey.defaultValue;
  }

  *&v21[0] = *v15;
LABEL_19:
  v19 = *&v21[0];
  os_unfair_lock_unlock((v3 + 16));

  return v19;
}

uint64_t SecondaryLookupTrackedValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

double PropertyList.Tracker.valueWithSecondaryLookup<A>(_:secondaryLookupHandler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v24 - v12;
  v14 = *(v5 + 16);

  os_unfair_lock_lock((v14 + 16));
  v15 = *(v14 + 24);
  if (!a1)
  {
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v14 + 56) = 1;
    PropertyList.valueWithSecondaryLookup<A>(_:)(v25, a1, a3, a4);
    goto LABEL_9;
  }

  if (v15 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  v24 = swift_checkMetadataState();
  v16 = *(v14 + 32);
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v18 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v16 + 56) + 40 * v17, v26);
    outlined init with take of AnyTrackedValue(v26, v27);
    v19 = v28;
    v20 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (v20[1])(AssociatedTypeWitness, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    PropertyList.valueWithSecondaryLookup<A>(_:)(v25, a1, a3, a4);
    (*(v11 + 16))(v13, a5, AssociatedTypeWitness);
    v28 = type metadata accessor for SecondaryLookupTrackedValue(0, a3, a4, v21);
    v29 = &protocol witness table for SecondaryLookupTrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    SecondaryLookupTrackedValue.init(_:)(v13, boxed_opaque_existential_1);
    specialized Dictionary.subscript.setter(v27, v24);
  }

LABEL_9:
  os_unfair_lock_unlock((v14 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
        outlined init with take of AnyTrackedValue(v22, v23);
        v12 = v24;
        v13 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (v13[1])(&type metadata for BackgroundInfo, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v23);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = (v15 + 9);
          v17 = v15 + 10;
        }

        else
        {
          v16 = &static BackgroundInfoKey.defaultValue;
          v17 = &static BackgroundInfoKey.defaultValue + 1;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }
        }

        v18 = *v16;
        v19 = *v17;
        *a2 = v18;
        a2[1] = v19;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundInfoKey>>(0);
        v24 = v20;
        v25 = &protocol witness table for TrackedValue<A>;
        v23[0] = v18;
        v23[1] = v19;
        specialized Dictionary.subscript.setter(v23, v8);
      }

      goto LABEL_17;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(a1);
  if (v14)
  {
    *a2 = *(v14 + 9);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    *a2 = static BackgroundInfoKey.defaultValue;
  }

LABEL_17:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016SensitiveContentV0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016SensitiveContentV0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSizingV033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSizingV033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016SensitiveContentV0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t outlined destroy of Text.Style(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ResolvedTextHelper.resolve(_:with:sizeFitting:)(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, int a6)
{
  LODWORD(v333) = a6;
  v353 = a4;
  v349 = a3;
  v350 = a1;
  v351 = a2;
  v409 = *MEMORY[0x1E69E9840];
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  MEMORY[0x1EEE9AC00](Update);
  v9 = &v301 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Date?, Date?)(0);
  v310 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v311 = &v301 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Date??, Date??)(0);
  v314 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v325 = &v301 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E6720];
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for Date??, 255, type metadata accessor for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v312 = &v301 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v323 = &v301 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v324 = &v301 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v327 = &v301 - v22;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v308 = &v301 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v329 = &v301 - v27;
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, 255, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v14);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v337 = &v301 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v347 = (&v301 - v31);
  type metadata accessor for (Date?, NSMutableAttributedString?, Text.ResolvedProperties)(0);
  v342 = v32;
  MEMORY[0x1EEE9AC00](v32);
  *&v345 = &v301 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date?(0);
  v344 = v34;
  v332 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v313 = &v301 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v309 = &v301 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v343 = &v301 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v338 = &v301 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v346 = &v301 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v301 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v331 = &v301 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v336 = &v301 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v335 = &v301 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v334 = &v301 - v54;
  v55 = *a5;
  v352 = v6;
  v56 = *(v6 + 40);
  v57 = *(v56 + 2);

  os_unfair_lock_lock((v57 + 16));
  *(v57 + 24) = 0;
  if (*(*(v57 + 32) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v399.f64[0] = *(v57 + 32);
    *(v57 + 32) = 0x8000000000000000;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>(0);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v57 + 32) = v399.f64[0];
  }

  if (*(*(v57 + 40) + 16))
  {
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v399.f64[0] = *(v57 + 40);
    *(v57 + 40) = 0x8000000000000000;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>(0);
    _NativeDictionary.removeAll(isUnique:)(v59);
    *(v57 + 40) = v399.f64[0];
  }

  v60 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v57 + 48);
  if (v60)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v61 + 16));
  }

  else
  {
    *(v57 + 48) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15AnyTrackedValue33_D64CE6C88E7413721C59A34C0C940F2CLL_p_Tt1g5(0, *(v61 + 24) >> 1);
  }

  *(v57 + 56) = 0;
  os_unfair_lock_unlock((v57 + 16));

  v62 = v352;
  if (v353)
  {
    v407 = v55;
    v408 = v56;
    v348 = v23;
    v339 = v24;
    v341 = v46;
    v303 = v9;
    if (v55)
    {
      v63 = v55[8];
    }

    else
    {
      v63 = 0;
    }

    v66 = *(v56 + 2);
    swift_retain_n();
    v67 = v353;

    v68 = v349;
    v69 = v350;
    v70 = v351;
    outlined copy of Text.Storage(v350, v351, v349 & 1);
    outlined copy of Text?(v69, v70, v68, v67);

    os_unfair_lock_lock((v66 + 16));
    *(v66 + 24) = v63;
    os_unfair_lock_unlock((v66 + 16));

    v321 = *(v62 + 1);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v72 = v334;
      outlined init with copy of ResolvableStringResolutionContext(WeakValue, v334, type metadata accessor for Date?);
      v73 = v335;
      outlined init with copy of ResolvableStringResolutionContext(v72, v335, type metadata accessor for Date?);
      v74 = v336;
      outlined init with copy of ResolvableStringResolutionContext(v73, v336, type metadata accessor for Date?);
      v75 = v331;
      outlined init with copy of ResolvableStringResolutionContext(v74, v331, type metadata accessor for Date?);
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE029ResolvableStringReferenceDateF033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(&v407, v75);
      v328 = 0;

      outlined destroy of Date?(v75, type metadata accessor for Date?);
      v76 = v407;
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE029ResolvableStringReferenceDateK033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v55, v407);

      outlined destroy of Date?(v74, type metadata accessor for Date?);
      outlined destroy of Date?(v73, type metadata accessor for Date?);
      v62 = v352;
      outlined destroy of Date?(v72, type metadata accessor for Date?);
      v55 = v76;
    }

    else
    {
      v328 = 0;
    }

    v77 = v56;
    v322 = type metadata accessor for ResolvedTextHelper(0);
    v78 = *(v62 + *(v322 + 64));
    if (v78)
    {

      v80 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v79);
      if (!v80 || (value = v55, v78 != v80[9]))
      {
        type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>(0, v81, v82, v83);
        *(swift_allocObject() + 72) = v78;
        _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
        value = PropertyList.Element.init(keyType:before:after:)(v85, 0, v55).value;
        v407 = value;
      }

      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE015TextSizeVariantK033_22A2F77020526CCA53FF38DE37184183LLVG_Ttg5(v55, value);

      v55 = value;
    }

    v86 = v349 & 1;
    outlined consume of Text?(*(v62 + 6), *(v62 + 7), *(v62 + 8), *(v62 + 9));
    v87 = v351;
    *(v62 + 6) = v350;
    *(v62 + 7) = v87;
    v88 = v353;
    *(v62 + 8) = v86;
    *(v62 + 9) = v88;
    LODWORD(v336) = *(v62 + 12);
    v89 = v347;
    if (v336 != 1)
    {
      goto LABEL_24;
    }

    v77 = v408;
    BYTE11(v404[1]) = 0;
    *&v401 = 0;
    v400.f64[0] = 0.0;
    v399 = 0uLL;
    LOBYTE(v400.f64[1]) = 0;
    BYTE8(v401) = 5;
    *&v402 = v55;
    *(&v402 + 1) = v408;
    v403 = 0u;
    memset(v404, 0, 24);
    BYTE8(v404[1]) = 1;
    *(&v404[1] + 9) = 769;

    specialized ForegroundStyle._apply(to:)(&v399);
    if (BYTE8(v401))
    {
      v395 = v403;
      v396[0] = v404[0];
      *(v396 + 12) = *(v404 + 12);
      v391 = v399;
      v392 = v400;
      v394 = v402;
      v393 = v401;
      outlined destroy of _ShapeStyle_Shape(&v391);
      if (v77)
      {
LABEL_24:

        v90 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016DisableLinkColorI0030_7AFAB46D18FA6D189589CFA78D8B2U1ELLVG_Tt1g5(v55);

        if (v90)
        {
LABEL_25:
          v91 = 16;
          goto LABEL_27;
        }

        v91 = 0;
LABEL_27:
        v92 = *(v62 + 19);
        v347 = v77;
        if (v92 == 1)
        {
          if (v77)
          {

            v93 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020AccessibilityEnabledI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v55);
          }

          else
          {
            v104 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(v55);
            if (v104)
            {
              v93 = *(v104 + 72);
            }

            else
            {
              v93 = 0;
            }
          }

          v91 |= v93 & 1;
        }

        LODWORD(v335) = *(v62 + 18);
        v105 = 8;
        if (v335)
        {
          v105 = 4;
        }

        v106 = v105 | v91;
        if (*(v62 + 13))
        {
          v107 = v106 | 0x20;
        }

        else
        {
          v107 = v106;
        }

        v108 = v62;
        v109 = *(v62 + 8);
        v110 = v107 & 0xFFFFFFFFFFFFFF3FLL | (((v109 >> 5) & 1) << 6) & 0xFFFFFFFFFFFFFF7FLL | ((*(v108 + 14) & 1) << 7);
        v306 = *v108;
        v111 = *AGGraphGetValue();
        v112 = v346;
        v330 = *(v339 + 56);
        v331 = (v339 + 56);
        v330(v346, 1, 1, v348);
        *v89 = v112;
        v89[1] = v111;
        v113 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v113 - 8) + 56))(v89, 0, 1, v113);
        v114 = v337;
        outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v89, v337, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
        swift_retain_n();
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(&v407, v114);

        outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v114, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
        if (v347)
        {
          v115 = v407;
          _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v55, v407);

          outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v89, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
        }

        else
        {
          outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v89, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);

          v115 = v407;
        }

        v116 = v109;
        *&v391.f64[0] = v115;
        *&v391.f64[1] = v408;
        *&v379[0] = v110;
        v117 = v352;
        *v381 = *(v352 + 24);
        v328 = v408;

        v118 = Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)(&v399, &v391, v336 | v335, v379, v381, v350, v351, v349 & 1, v353);

        v119 = v346;
        v120 = v338;
        outlined init with copy of ResolvableStringResolutionContext(v346, v338, type metadata accessor for Date?);
        outlined destroy of Date?(v119, type metadata accessor for Date?);
        v121 = v339;
        v122 = v348;
        v304 = *(v339 + 48);
        v305 = v339 + 48;
        v123 = v304(v120, 1, v348);
        v124 = v345;
        if (v123 == 1)
        {
          outlined destroy of Date?(v120, type metadata accessor for Date?);
          v125 = 1;
        }

        else
        {
          v126 = *(v121 + 32);
          v127 = v116;
          v128 = v329;
          v126(v329, v120, v122);
          v129 = v128;
          v116 = v127;
          v126(v124, v129, v122);
          v125 = 0;
        }

        v330(v124, v125, 1, v122);
        v130 = v124 + *(v342 + 64);
        *(v124 + *(v342 + 48)) = v118;
        v132 = v404[1];
        v131 = v405;
        v133 = v404[0];
        *(v130 + 96) = v404[1];
        *(v130 + 112) = v131;
        v134 = v405;
        *(v130 + 128) = v406[0];
        *(v130 + 137) = *(v406 + 9);
        v136 = v401;
        v135 = v402;
        v137 = v400;
        *(v130 + 32) = v401;
        *(v130 + 48) = v135;
        v138 = v402;
        v140 = v403;
        v139 = v404[0];
        *(v130 + 64) = v403;
        *(v130 + 80) = v139;
        v141 = v400;
        v142 = v399;
        *v130 = v399;
        *(v130 + 16) = v141;
        v396[1] = v132;
        v397 = v134;
        v398[0] = v406[0];
        *(v398 + 9) = *(v406 + 9);
        v393 = v136;
        v394 = v138;
        v395 = v140;
        v396[0] = v133;
        v391 = v142;
        v392 = v137;
        v143 = v341;
        _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v124, v341, type metadata accessor for Date?);
        v144 = v343;
        outlined init with copy of ResolvableStringResolutionContext(v143, v343, type metadata accessor for Date?);
        EnvironmentValues.stringResolutionDate.setter(v144);
        v317 = v391;
        v318 = v392;
        v145 = v407;
        LODWORD(v338) = *(v117 + 14);
        v320 = *(v117 + 15);
        v319 = specialized Text.isCollapsible()(v353);
        LODWORD(v346) = v393 | v116;
        v146 = *(&v394 + 1);
        v147 = v395;
        v148 = v396[0];
        v149 = v118;
        v150 = *&v396[1];
        v151 = v397;
        v336 = *(&v395 + 1);
        v337 = *(&v393 + 1);
        v334 = v394;
        v335 = *(&v396[1] + 1);
        LODWORD(v316) = BYTE8(v398[1]);
        *&v345 = *(&v394 + 1);
        v347 = v149;
        v302 = v145;
        v342 = v395;
        v343 = *(&v396[0] + 1);
        v329 = *&v396[1];
        if (v328)
        {
          v152 = v149;
          v153 = v148;
          v154 = v335;
          outlined copy of ResolvedTextSuffix(v146, v147, SBYTE8(v147), v148, *(&v148 + 1), v150, v335);
          v155 = v151;

          _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v145, v381);
        }

        else
        {
          v379[0] = v145;
          v156 = v149;
          v153 = v148;
          v154 = v335;
          outlined copy of ResolvedTextSuffix(v146, v147, SBYTE8(v147), v148, *(&v148 + 1), v150, v335);

          v155 = v151;

          TextLayoutProperties.init(from:)(v379, v381);
        }

        v157 = v154;
        v317 = vnegq_f64(v317);
        v318 = vnegq_f64(v318);
        v379[0] = *v381;
        *(v379 + 10) = *&v381[10];
        v158 = v382;
        if (v316 != 3)
        {
          v158 = v316;
        }

        if (v333)
        {
          v159 = 2;
        }

        else
        {
          v159 = 0;
        }

        BYTE10(v379[1]) = v158;
        *(&v379[5] + 11) = v387;
        *(&v379[6] + 11) = v388;
        *(&v379[7] + 11) = *v389;
        *(&v379[8] + 1) = *&v389[13];
        *(&v379[1] + 11) = v383;
        *(&v379[2] + 11) = v384;
        *(&v379[3] + 11) = v385;
        *(&v379[4] + 11) = v386;
        v380 = v390 & 0xFD | v159;
        v160 = MEMORY[0x1E69E7CC0];
        v161 = v347;
        v162 = v336;
        v326 = v155;
        if ((BYTE6(v386) & 1) != 0 || (v346 & 0xD8) != 0 || *(v155 + 16))
        {
LABEL_67:
          type metadata accessor for ResolvedStyledText.TextLayoutManager();
          v65 = swift_allocObject();
          *(v65 + 416) = v160;
          *(v65 + 424) = 0u;
          *(v65 + 440) = 0u;
          *(v65 + 456) = 0u;
          *(v65 + 472) = 0u;
          *(v65 + 488) = 512;
          if ((BYTE8(v379[0]) & 1) != 0 || *&v379[0] != 1)
          {
            if (v161)
            {
              NSAttributedString.replacingLineBreakModes(_:)(0);
              v168 = v169;
            }

            else
            {
              v168 = 0;
            }
          }

          else
          {
            v167 = v161;
            v168 = v161;
          }

          v170 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
          v171 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
          [v170 setDelegate_];
          [v170 setUsesFontLeading_];
          v307 = v168;
          v333 = v170;
          ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v333, v168, &v374);
          v172 = v377;
          *(v65 + 528) = v376;
          *(v65 + 544) = v172;
          *(v65 + 560) = v378;
          v173 = v375;
          *(v65 + 496) = v374;
          *(v65 + 512) = v173;
          v316 = v171;
          *(v65 + 576) = v171;
          v174 = v345;
          v176 = v342;
          v175 = v343;
          *(v65 + 352) = v345;
          *(v65 + 360) = v176;
          *(v65 + 368) = v162;
          *(v65 + 376) = v153;
          v177 = v329;
          *(v65 + 384) = v175;
          *(v65 + 392) = v177;
          v178 = v335;
          *(v65 + 400) = v335;
          *(v65 + 408) = v155;
          *(v65 + 200) = 0;
          *(v65 + 208) = 1;
          v179 = v162;
          v180 = v65 + 280;
          v355 = 1;
          *(v65 + 280) = 0u;
          *(v65 + 296) = 0u;
          *(v65 + 312) = 0u;
          *(v65 + 328) = 0u;
          *(v65 + 344) = 1;
          *(v65 + 216) = v168;
          v181 = v318;
          *(v65 + 224) = v317;
          *(v65 + 240) = v181;
          *(v65 + 256) = v338;
          *(v65 + 257) = v320;
          *(v65 + 258) = v319 & 1;
          *(v65 + 260) = v346;
          v182 = v178;
          v183 = v153;
          v184 = v334;
          *(v65 + 264) = v337;
          *(v65 + 272) = v184;
          v185 = v379[1];
          *(v65 + 16) = v379[0];
          *(v65 + 32) = v185;
          v186 = v379[5];
          *(v65 + 80) = v379[4];
          *(v65 + 96) = v186;
          v187 = v379[3];
          *(v65 + 48) = v379[2];
          *(v65 + 64) = v187;
          *(v65 + 160) = v380;
          v188 = v379[8];
          v189 = v379[6];
          *(v65 + 128) = v379[7];
          *(v65 + 144) = v188;
          *(v65 + 112) = v189;
          v315 = v153;
          if (v168)
          {
            v361 = 0uLL;
            v362 = 0uLL;
            v359 = 0uLL;
            v360 = 0uLL;
            v363 = 1;
            v356 = BYTE8(v379[6]);
            v357 = *&v379[7];
            v370 = v379[6];
            v371 = v379[7];
            v372 = v379[8];
            v373 = v380;
            v366 = v379[2];
            v367 = v379[3];
            v368 = v379[4];
            v369 = v379[5];
            v364 = v379[0];
            v365 = v379[1];
            v190 = v176;
            v191 = v175;
            v192 = v177;
            v193 = v179;
            v194 = v65;
            v195 = v183;
            outlined init with copy of TextLayoutProperties(v379, v358);
            v196 = v195;
            v65 = v194;
            outlined copy of ResolvedTextSuffix(v345, v190, v193, v196, v191, v192, v182);

            v197 = v307;
            outlined init with copy of TextLayoutProperties(v379, v358);
            v198 = v316;
            v199 = v316;

            Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v197, &v359, &v364);
            v201 = v200;
            v203 = v202;
            v205 = v204;
            v207 = v206;

            v208 = v363;
            LOBYTE(v368) = v363;
            v209 = v362;
            v366 = v361;
            v367 = v362;
            v211 = v359;
            v210 = v360;
            v364 = v359;
            v365 = v360;
            *(v180 + 32) = v361;
            *(v180 + 48) = v209;
            *(v180 + 64) = v208;
            *v180 = v211;
            *(v180 + 16) = v210;
            v194[21] = v201;
            v194[22] = v203;
            v194[23] = v205;
            v194[24] = v207;
            v212 = v192;
            v213 = v198;
          }

          else
          {
            *(v65 + 344) = 1;
            *(v65 + 168) = 0uLL;
            *(v65 + 184) = 0uLL;
            v212 = v177;
            outlined copy of ResolvedTextSuffix(v174, v176, v179, v153, v175, v177, v178);

            outlined init with copy of TextLayoutProperties(v379, &v364);
            v213 = v316;
            v214 = v316;
          }

          swift_beginAccess();
          v215 = *(v65 + 97);

          v216 = _TextContainer(v215);
          [v216 setLineFragmentPadding_];
          v217 = v333;
          [v333 setTextContainer_];
          v218 = v336;
          v219 = v315;
          v220 = v345;
          if ((v346 & 0x40) == 0)
          {
            if (v212 < 0)
            {
              outlined consume of ResolvedTextSuffix(v345, v342, v336, v315, v343, v212, v182);
              outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
              if ((v346 & 0x80) == 0 && !*(v326 + 16))
              {

LABEL_82:
                outlined destroy of TextLayoutProperties(v379);

                v225 = v352;
                v226 = v348;
                v227 = v341;
                v228 = v344;
                if (*(v65 + 216))
                {
                  goto LABEL_83;
                }

                goto LABEL_97;
              }
            }

            else
            {
              v221 = v213;
              v222 = v212;
              v223 = v342;
              outlined copy of Text.Layout.Line.Line(v345, v342);

              v224 = v223;
              v212 = v222;
              v213 = v221;
              v217 = v333;
              outlined consume of ResolvedTextSuffix(v220, v224, v218, v219, v343, v212, v182);
              outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
            }
          }

          _NSTextLayoutManagerRequiresCTLine(v217);

          outlined consume of ResolvedTextSuffix(v220, v342, v218, v219, v343, v212, v182);
          goto LABEL_82;
        }

        v163 = v329;
        if ((v329 & 0x8000000000000000) == 0)
        {
          v164 = v345;
          v165 = v342;
          outlined copy of Text.Layout.Line.Line(v345, v342);

          outlined consume of ResolvedTextSuffix(v164, v165, v162, v153, v343, v163, v157);
          outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
          goto LABEL_67;
        }

        outlined consume of ResolvedTextSuffix(v345, v342, v336, v153, v343, v329, v157);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
        if (BYTE8(v379[7]) != 2)
        {
          goto LABEL_67;
        }

        type metadata accessor for ResolvedStyledText.StringDrawing();
        v65 = swift_allocObject();
        if (v380)
        {
          outlined init with copy of TextLayoutProperties(v379, &v364);
          v166 = 1;
        }

        else
        {
          if (v161)
          {
            outlined init with copy of TextLayoutProperties(v379, &v364);
            if (NSAttributedString.isDynamic.getter())
            {
              v166 = v338 & 1;
              goto LABEL_89;
            }
          }

          else
          {
            outlined init with copy of TextLayoutProperties(v379, &v364);
          }

          v166 = 0;
        }

LABEL_89:
        v231 = *&v379[0];
        v232 = BYTE8(v379[0]);
        v233 = *&v379[1];
        v234 = BYTE8(v379[1]);
        v235 = *(&v379[5] + 8);
        v236 = v161;
        v237 = v161;
        v238 = *&v379[2];
        v239 = *(&v379[4] + 1);
        if (!v161)
        {
          v345 = *(&v379[5] + 8);
          v240 = v166;
          if (one-time initialization token for emptyString != -1)
          {
            swift_once();
          }

          v237 = static NSAttributedString.emptyString;
          v236 = 0;
          v166 = v240;
          v235 = v345;
        }

        v356 = v232;
        v355 = v234;
        v241 = v319 & 1;
        *(v65 + 352) = 0;
        *(v65 + 360) = v237;
        *(v65 + 368) = v231;
        *(v65 + 376) = v232;
        *(v65 + 384) = v233;
        *(v65 + 392) = v234;
        *(v65 + 400) = v238;
        *(v65 + 408) = v235;
        *(v65 + 424) = v166;
        *(v65 + 425) = v239 != 0.0;
        *(v65 + 426) = v241;
        *(v65 + 432) = v160;
        *(v65 + 200) = 0;
        *(v65 + 208) = 1;
        v242 = (v65 + 280);
        v354 = 1;
        *(v65 + 312) = 0u;
        *(v65 + 328) = 0u;
        *(v65 + 280) = 0u;
        *(v65 + 296) = 0u;
        *(v65 + 344) = 1;
        *(v65 + 216) = v236;
        v243 = v318;
        *(v65 + 224) = v317;
        *(v65 + 240) = v243;
        *(v65 + 256) = v338;
        *(v65 + 257) = v320;
        *(v65 + 258) = v241;
        *(v65 + 260) = v346;
        v244 = v334;
        *(v65 + 264) = v337;
        *(v65 + 272) = v244;
        v245 = v379[1];
        *(v65 + 16) = v379[0];
        *(v65 + 32) = v245;
        v246 = v379[2];
        v247 = v379[3];
        v248 = v379[5];
        *(v65 + 80) = v379[4];
        *(v65 + 96) = v248;
        *(v65 + 48) = v246;
        *(v65 + 64) = v247;
        v249 = v379[6];
        v250 = v379[7];
        v251 = v379[8];
        *(v65 + 160) = v380;
        *(v65 + 128) = v250;
        *(v65 + 144) = v251;
        *(v65 + 112) = v249;
        v252 = v236;
        if (v236)
        {
          v376 = 0uLL;
          v377 = 0uLL;
          v374 = 0uLL;
          v375 = 0uLL;
          LOBYTE(v378) = 1;
          LOBYTE(v359) = BYTE8(v379[6]);
          *(&v359 + 1) = *&v379[7];
          v370 = v379[6];
          v371 = v379[7];
          v372 = v379[8];
          v373 = v380;
          v366 = v379[2];
          v367 = v379[3];
          v368 = v379[4];
          v369 = v379[5];
          v364 = v379[0];
          v365 = v379[1];
          v252 = v236;
          outlined init with copy of TextLayoutProperties(v379, v358);

          Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v252, &v374, &v364);
          v254 = v253;
          v256 = v255;
          v258 = v257;
          v260 = v259;

          outlined destroy of TextLayoutProperties(v379);
          v261 = v378;
          LOBYTE(v368) = v378;
          v262 = v377;
          v366 = v376;
          v367 = v377;
          v264 = v374;
          v263 = v375;
          v364 = v374;
          v365 = v375;
          *(v65 + 312) = v376;
          *(v65 + 328) = v262;
          *(v65 + 344) = v261;
          *v242 = v264;
          *(v65 + 296) = v263;
          *(v65 + 168) = v254;
          *(v65 + 176) = v256;
          *(v65 + 184) = v258;
          *(v65 + 192) = v260;
        }

        else
        {

          outlined destroy of TextLayoutProperties(v379);
          *v242 = 0u;
          *(v65 + 296) = 0u;
          *(v65 + 312) = 0u;
          *(v65 + 328) = 0u;
          *(v65 + 344) = 1;
          *(v65 + 168) = 0u;
          *(v65 + 184) = 0u;
        }

        v225 = v352;
        v226 = v348;
        v227 = v341;
        v228 = v344;
        if (*(v65 + 216))
        {
LABEL_83:
          v229 = NSAttributedString.isDynamic.getter();
          if ((v338 & 1) == 0)
          {
            LODWORD(v230) = v229;
            goto LABEL_99;
          }

          goto LABEL_102;
        }

LABEL_97:
        if ((v338 & 1) == 0)
        {
          LODWORD(v230) = 0;
LABEL_99:
          v265 = AGGraphGetWeakValue();
          v266 = v332;
          if (!v265)
          {
            v272 = v327;
            (*(v332 + 56))(v327, 1, 1, v228);
LABEL_108:
            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v272, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            v278 = v313;
            goto LABEL_109;
          }

          v267 = v327;
          outlined init with copy of ResolvableStringResolutionContext(v265, v327, type metadata accessor for Date?);
          v268 = *(v266 + 56);
          v269 = 1;
          v268(v267, 0, 1, v228);
          outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v267, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
          v270 = AGGraphGetWeakValue();
          LODWORD(v346) = v230;
          v271 = v324;
          if (v270)
          {
            outlined init with copy of ResolvableStringResolutionContext(v270, v324, type metadata accessor for Date?);
            v269 = 0;
          }

          v272 = v325;
          v268(v271, v269, 1, v228);
          v273 = v323;
          v330(v323, 1, 1, v226);
          v268(v273, 0, 1, v228);
          v274 = *(v314 + 48);
          outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v271, v272, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
          outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v273, v272 + v274, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
          v275 = v273;
          v276 = *(v332 + 48);
          if (v276(v272, 1, v228) == 1)
          {
            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v275, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            v272 = v325;
            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v271, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            v277 = v276(v272 + v274, 1, v228);
            v227 = v341;
            if (v277 == 1)
            {
              v225 = v352;
              v226 = v348;
LABEL_107:
              LOBYTE(v230) = v346;
              goto LABEL_108;
            }
          }

          else
          {
            v279 = v312;
            outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v272, v312, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            if (v276(v272 + v274, 1, v228) != 1)
            {
              v230 = *(v310 + 48);
              v281 = v279;
              v282 = v311;
              _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v281, v311, type metadata accessor for Date?);
              _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v272 + v274, v282 + v230, type metadata accessor for Date?);
              v283 = v348;
              v284 = v304;
              v285 = v304(v282, 1, v348);
              v227 = v341;
              if (v285 == 1)
              {
                outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v323, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                v282 = v311;
                outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v324, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                v286 = v284(v282 + v230, 1, v283);
                v225 = v352;
                if (v286 == 1)
                {
                  v226 = v283;
                  outlined destroy of Date?(v282, type metadata accessor for Date?);
                  goto LABEL_107;
                }
              }

              else
              {
                v288 = v309;
                outlined init with copy of ResolvableStringResolutionContext(v282, v309, type metadata accessor for Date?);
                if (v284(v282 + v230, 1, v283) != 1)
                {
                  v296 = v282;
                  v297 = v339;
                  v298 = v308;
                  (*(v339 + 32))(v308, v296 + v230, v283);
                  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
                  v299 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v300 = *(v297 + 8);
                  v300(v298, v348);
                  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v323, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v324, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                  v300(v288, v348);
                  v226 = v348;
                  outlined destroy of Date?(v311, type metadata accessor for Date?);
                  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v272, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                  v225 = v352;
                  v278 = v313;
                  LOBYTE(v230) = v346;
                  if (v299)
                  {
LABEL_109:
                    if (v230)
                    {
                      if (v328)
                      {

                        LODWORD(v352) = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v302);
                      }

                      else
                      {
                        v287 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v302);
                        if (v287)
                        {
                          LODWORD(v352) = *(v287 + 72);
                        }

                        else
                        {
                          LODWORD(v352) = 0;
                        }
                      }

                      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
                      v346 = v289;
                      *&v345 = *(v289 + 48);
                      v290 = AGGraphGetValue();
                      v291 = v303;
                      *v303 = *v290;
                      outlined init with copy of ResolvableStringResolutionContext(v227, v278, type metadata accessor for Date?);
                      v292 = v304;
                      if (v304(v278, 1, v226) == 1)
                      {
                        AGGraphGetValue();
                        static Date.now.getter();
                        outlined consume of Text.Storage(v350, v351, v349 & 1);

                        outlined destroy of Text.ResolvedProperties(&v391);

                        outlined destroy of Date?(v227, type metadata accessor for Date?);
                        v293 = v291;
                        if (v292(v278, 1, v226) != 1)
                        {
                          outlined destroy of Date?(v278, type metadata accessor for Date?);
                        }
                      }

                      else
                      {
                        outlined destroy of Date?(v227, type metadata accessor for Date?);
                        outlined destroy of Text.ResolvedProperties(&v391);

                        outlined consume of Text.Storage(v350, v351, v349 & 1);

                        (*(v339 + 32))(&v291[v345], v278, v226);
                        v293 = v291;
                      }

                      v294 = *(v346 + 80);
                      *(v293 + *(v346 + 64)) = v352 & 1;
                      *(v293 + v294) = v65;
                      swift_storeEnumTagMultiPayload();
                      v295 = *(v322 + 60);

                      outlined assign with take of ResolvedTextHelper.NextUpdate(v293, v225 + v295, type metadata accessor for ResolvedTextHelper.NextUpdate);
                      goto LABEL_117;
                    }
                  }

LABEL_115:
                  outlined destroy of Date?(v227, type metadata accessor for Date?);
                  outlined destroy of Text.ResolvedProperties(&v391);

                  outlined consume of Text.Storage(v350, v351, v349 & 1);

                  goto LABEL_116;
                }

                outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v323, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v324, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                (*(v339 + 8))(v288, v283);
                v225 = v352;
              }

              outlined destroy of Date?(v282, type metadata accessor for (Date?, Date?));
              outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v272, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
              goto LABEL_115;
            }

            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v323, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v324, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            outlined destroy of Date?(v279, type metadata accessor for Date?);
            v227 = v341;
          }

          outlined destroy of Date?(v272, type metadata accessor for (Date??, Date??));
          v225 = v352;
          goto LABEL_115;
        }

LABEL_102:

        outlined consume of Text.Storage(v350, v351, v349 & 1);

        outlined destroy of Text.ResolvedProperties(&v391);
        outlined destroy of Date?(v227, type metadata accessor for Date?);
LABEL_116:
        outlined destroy of Date?(v225 + *(v322 + 60), type metadata accessor for ResolvedTextHelper.NextUpdate);
        swift_storeEnumTagMultiPayload();
LABEL_117:

        return v65;
      }
    }

    else
    {
      v335 = v401;
      *v381 = v401;

      v94 = v349;
      v95 = v77;
      v97 = v350;
      v96 = v351;
      v98 = _ShapeStyle_Shape.PreparedTextResult.apply(to:)(v350, v351, v349 & 1, v353);
      v334 = v99;
      LODWORD(v330) = v100;
      v331 = v101;
      LOBYTE(v100) = v94 & 1;
      v89 = v347;
      v102 = v97;
      v77 = v95;
      outlined consume of Text.Storage(v102, v96, v100);

      v395 = v403;
      v396[0] = v404[0];
      *(v396 + 12) = *(v404 + 12);
      v391 = v399;
      v392 = v400;
      v394 = v402;
      v393 = v401;
      outlined destroy of _ShapeStyle_Shape(&v391);
      outlined consume of _ShapeStyle_Shape.Result(v335, 0);
      v350 = v98;
      v351 = v334;
      v349 = v330;
      v353 = v331;
      if (v95)
      {
        goto LABEL_24;
      }
    }

    v103 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(v55);
    v77 = 0;
    v91 = 0;
    if (v103 && *(v103 + 72) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v64 = type metadata accessor for ResolvedTextHelper(0);
  outlined destroy of Date?(v62 + *(v64 + 60), type metadata accessor for ResolvedTextHelper.NextUpdate);
  swift_storeEnumTagMultiPayload();
  return 0;
}

void type metadata accessor for ClosedRange<Date>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double outlined consume of Text.Modifier(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 >> 5;
  if (v2 <= 6 && ((1 << v2) & 0x43) != 0)
  {
  }

  return result;
}

double outlined copy of ResolvedTextSuffix(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a6 & 0x8000000000000000) == 0)
  {
    outlined copy of Text.Layout.Line.Line(a1, a2);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>);
    }
  }
}

uint64_t outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_2(0, a2, 255, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(Swift::UInt *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(*a1);
  if (!v7 || (v8 = MEMORY[0x1E69E6720], outlined init with copy of WeakBox<GlassContainerCache>(v7 + *(*v7 + 248), v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]), v9 = AGCompareValues(), outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v8), !v9))
  {
    v10 = MEMORY[0x1E69E6720];
    outlined init with copy of WeakBox<GlassContainerCache>(a2, v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>(0);
    v12 = swift_allocObject();
    outlined init with copy of WeakBox<GlassContainerCache>(v6, v12 + *(*v12 + 248), &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v10);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
    v14 = v13;

    value = PropertyList.Element.init(keyType:before:after:)(v14, 0, v11).value;
    outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v10);
    *a1 = value;
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v24);
    outlined init with take of AnyTrackedValue(v24, v25);
    v12 = v26;
    v13 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (v13[1])(&type metadata for ResolvedTextSuffix, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    v19 = a2[5];
    v20 = a2[6];
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextSuffixKey>>(0);
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
    outlined copy of ResolvedTextSuffix(v14, v15, v16, v17, v18, v19, v20);
    specialized Dictionary.subscript.setter(v25, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t sub_18D0E4790()
{
  outlined consume of ResolvedTextSuffix(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t specialized Text.resolve<A>(into:in:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8)
{
  v16 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (key: NSAttributedStringKey, value: Any)(a1, v18, type metadata accessor for Text.Style);
  v19 = *(a8 + 16);
  if (v19)
  {
    v27 = v18;
    v28 = a7;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v20 = (a8 + 16 * v19 + 24);
    do
    {
      --v19;
      v21 = *(v20 - 1);
      v22 = *v20;
      v20 -= 16;
      v33[0] = a2;
      v33[1] = a3;
      outlined copy of Text.Modifier(v21, v22);
      type metadata accessor for Text.Resolved(0);
      v23 = protocol witness for DebuggableGesturePhase.phase.modify in conformance EventListenerPhase<A>.Value();
      Text.Modifier.modify(style:environment:)(v24, v33, v21, v22);
      (v23)(v32, 0);
      outlined consume of Text.Modifier(v21, v22);
    }

    while (v19);
    specialized Text.Storage.resolve<A>(into:in:with:)(a1, a2, a3, v29, v30, v31, v28 & 1);
    return outlined assign with take of Text.Style(v27, a1);
  }

  else
  {
    specialized Text.Storage.resolve<A>(into:in:with:)(a1, a2, a3, a4, a5, a6, a7 & 1);
    return outlined destroy of Text.ResolvedString(v18, type metadata accessor for Text.Style);
  }
}

{
  v26 = a7;
  v24 = a4;
  v25 = a6;
  v13 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (key: NSAttributedStringKey, value: Any)(a1, v15, type metadata accessor for Text.Style);
  v16 = *(a8 + 16);
  if (v16)
  {
    v17 = (a8 + 16 * v16 + 24);
    v18 = *(a8 + 16);
    do
    {
      --v18;
      v19 = *(v17 - 1);
      v20 = *v17;
      v17 -= 16;
      v28 = a2;
      v29 = a3;
      outlined copy of Text.Modifier(v19, v20);
      Text.Modifier.modify(style:environment:)(a1, &v28, v19, v20);
      outlined consume of Text.Modifier(v19, v20);
    }

    while (v18);
  }

  if (v26)
  {
    v28 = a2;
    v29 = a3;
    v27 = v24;
    v21 = *(*a5 + 80);
    v22 = type metadata accessor for Text.ResolvedString(0);
    v21(a1, &v28, &v27, v22, &protocol witness table for Text.ResolvedString);
    if (v16)
    {
      return outlined assign with take of Text.Style(v15, a1);
    }
  }

  else
  {
    specialized ResolvedTextContainer.append<A>(_:in:with:)(a5, v25, a2, a3);
    if (v16)
    {
      return outlined assign with take of Text.Style(v15, a1);
    }
  }

  return outlined destroy of Text.ResolvedString(v15, type metadata accessor for Text.Style);
}

void *Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)(_OWORD *a1, uint64_t *a2, int a3, void **a4, uint64_t *a5, void *a6, uint64_t a7, int a8, uint64_t a9)
{
  LODWORD(v98) = a8;
  v101 = a7;
  v106 = a6;
  LODWORD(v97) = a3;
  v96 = a1;
  v100 = a9;
  v12 = type metadata accessor for TypesettingConfiguration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v30 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Text.Resolved(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  isEscapingClosureAtFileLocation = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v105 = a2[1];
  v107 = *a4;
  v19 = *a5;
  v20 = a5[1];
  Text.Style.init()(isEscapingClosureAtFileLocation);
  v99 = v15[7];
  *(isEscapingClosureAtFileLocation + v99) = 0;
  v21 = v15[8];
  v22 = (isEscapingClosureAtFileLocation + v15[9]);
  *v22 = 0;
  v22[1] = 0;
  v23 = isEscapingClosureAtFileLocation + v15[10];
  *(v23 + 32) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 40) = v24;
  *(v23 + 48) = v24;
  *(v23 + 56) = 0u;
  v103 = v23 + 56;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0;
  v102 = xmmword_18DD85510;
  *(v23 + 96) = xmmword_18DD85510;
  *(v23 + 112) = v24;

  *(v23 + 112) = v24;
  *(v23 + 120) = 0;
  v25 = v18;
  v26 = MEMORY[0x1E69E7CD0];
  *(v23 + 136) = 0;
  *(v23 + 144) = 0;
  *(v23 + 128) = v26;
  *(v23 + 152) = 3;
  *(isEscapingClosureAtFileLocation + v21) = v97;
  *v22 = v19;
  v22[1] = v20;
  v27 = v105;
  v28 = v30;
  v29 = _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA024TypesettingConfigurationG0V_Tt0B5(v18, v105, v30);
  LOBYTE(v30) = v98;
  if (v98 & 1) == 0 || ((*(*v106 + 112))(v29))
  {
    goto LABEL_5;
  }

  if (one-time initialization token for automatic != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v31 = type metadata accessor for TypesettingLanguage(0);
    v32 = __swift_project_value_buffer(v31, static TypesettingLanguage.automatic);
    outlined assign with copy of TypesettingLanguage(v32, v28, type metadata accessor for TypesettingLanguage);
LABEL_5:
    v33 = type metadata accessor for Text.Style(0);
    outlined assign with copy of TypesettingLanguage(v28, isEscapingClosureAtFileLocation + *(v33 + 84), type metadata accessor for TypesettingConfiguration);
    v34 = v107;
    v104 = isEscapingClosureAtFileLocation;
    if ((~v107 & 0x60) == 0)
    {
      if (v27)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5(v25, &v114);

        v36 = *(&v114 + 1);
        v35 = v114;
        v37 = v117;
        if ((*(&v116 + 1) & 0x8000000000000000) != 0)
        {
LABEL_14:
          isEscapingClosureAtFileLocation = v104;
          v27 = v105;
          v34 = v107;
          goto LABEL_15;
        }
      }

      else
      {
        type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
        BloomFilter.init(hashValue:)(v38);
        v39 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v25, v109[0]);
        if (!v39)
        {
          goto LABEL_14;
        }

        v40 = v39[9];
        v36 = v39[10];
        v41 = v39[14];
        v37 = v39[15];
        outlined copy of ResolvedTextSuffix(v40, v36, v39[11], v39[12], v39[13], v41, v37);
        v35 = v40;
        if (v41 < 0)
        {
          goto LABEL_14;
        }
      }

      outlined consume of Text.Layout.Line.Line(v35, v36);
      if (*(v37 + 16))
      {
        *(v23 + 40) = v37;
        *(v23 + 32) = 1;
      }

      else
      {
      }

      goto LABEL_14;
    }

LABEL_15:
    specialized Text.resolve<A>(into:in:with:)(isEscapingClosureAtFileLocation, v25, v27, v34, v106, v101, v30 & 1, v100);
    v42 = *(isEscapingClosureAtFileLocation + v99);
    v43 = v27;
    v107 = v42;
    if (v42)
    {
      v44 = v42;
      v45 = v34;
      v46 = [v44 length];

      *&v114 = v25;
      *(&v114 + 1) = v43;
      Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v46, v44, &v114);
      outlined consume of ResolvedTextSuffix(*(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96), *(v23 + 104));
      v47 = v103;
      *(v103 + 32) = 0;
      *v47 = 0u;
      v47[1] = 0u;
      *(v23 + 96) = v102;
      if ((v45 & 0x40) == 0)
      {
        v48 = v107;
        goto LABEL_42;
      }
    }

    else
    {
      outlined consume of ResolvedTextSuffix(*(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96), *(v23 + 104));
      v49 = v103;
      *(v103 + 32) = 0;
      *v49 = 0u;
      v49[1] = 0u;
      *(v23 + 96) = v102;
      if ((v34 & 0x40) == 0)
      {
        v48 = v107;
        goto LABEL_48;
      }
    }

    v106 = v28;
    if (v43)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5(v25, &v114);

      v50 = *(&v114 + 1);
      v105 = v114;
      v51 = *(&v115 + 1);
      v52 = v115;
      v54 = *(&v116 + 1);
      v53 = v116;
      v55 = v117;
      v48 = v107;
      v56 = *(&v116 + 1) >> 62;
      if (!(*(&v116 + 1) >> 62))
      {
        goto LABEL_27;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v57);
      v58 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v25, v109[0]);
      v48 = v107;
      if (!v58)
      {
        goto LABEL_40;
      }

      v50 = v58[10];
      v52 = v58[11];
      v51 = v58[12];
      v53 = v58[13];
      v59 = v58[14];
      v55 = v58[15];
      *&v114 = v58[9];
      *(&v114 + 1) = v50;
      *&v115 = v52;
      *(&v115 + 1) = v51;
      *&v116 = v53;
      *(&v116 + 1) = v59;
      *&v117 = v55;
      v54 = v59;
      v105 = v114;
      outlined copy of ResolvedTextSuffix(v114, v50, v52, v51, v53, v59, v55);
      v56 = v54 >> 62;
      if (!(v54 >> 62))
      {
LABEL_27:
        outlined consume of ResolvedTextSuffix(*(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96), *(v23 + 104));
        *(v23 + 56) = v105;
        *(v23 + 64) = v50;
        *(v23 + 72) = v52;
        *(v23 + 80) = v51;
        *(v23 + 88) = v53;
        *(v23 + 96) = v54;
        *(v23 + 104) = v55;
        goto LABEL_40;
      }
    }

    v103 = v54;
    if (v56 == 1)
    {
      v100 = v55;
      if (v48)
      {
        v97 = [v48 length];
      }

      else
      {
        v97 = 0;
      }

      v99 = v52;
      LOBYTE(v123) = v52 & 1;
      v60 = v105;
      v109[0] = v105;
      v109[1] = v50;
      v110 = v52 & 1;
      v111 = v51;
      v112 = v53;
      v61 = v103;
      v113 = v103;
      outlined copy of Text.Layout.Line.Line(v105, v50);
      v62 = v50;
      Text.Layout.Line.typographicBounds.getter(v126);
      *&v108[4] = v126[0];
      *&v108[20] = v126[1];
      *&v108[36] = v126[2];
      LODWORD(v101) = v123;
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for ConcreteCustomTextAttachment<LineAttachment>, &type metadata for LineAttachment, &protocol witness table for LineAttachment, type metadata accessor for ConcreteCustomTextAttachment);
      v63 = swift_allocObject();
      v64 = *&v108[16];
      *(v63 + 60) = *v108;
      *(v63 + 16) = v60;
      *(v63 + 24) = v50;
      *(v63 + 32) = v101;
      *(v63 + 40) = v51;
      *(v63 + 48) = v53;
      v101 = v53;
      *&v102 = v51;
      *(v63 + 56) = v61;
      *(v63 + 76) = v64;
      *(v63 + 92) = *&v108[32];
      *(v63 + 108) = *&v108[48];
      v65 = v97;
      v98 = v62;
      if (v97 < 1)
      {
        v68._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        if (!v48)
        {

          v66 = v99;
          goto LABEL_35;
        }

        v66 = v99;
      }

      else
      {
        v66 = v99;
        if (!v48)
        {
LABEL_35:
          v71 = *(v23 + 112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v23 + 112) = v71;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 2) + 1, 1, v71);
            *(v23 + 112) = v71;
          }

          v73 = v100;
          v75 = *(v71 + 2);
          v74 = *(v71 + 3);
          if (v75 >= v74 >> 1)
          {
            v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v71);
          }

          *(v71 + 2) = v75 + 1;
          *&v71[8 * v75 + 32] = v65;
          *(v23 + 112) = v71;
          v76 = v103 | 0x4000000000000000;
          outlined consume of ResolvedTextSuffix(*(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96), *(v23 + 104));
          v77 = v98;
          *(v23 + 56) = v105;
          *(v23 + 64) = v77;
          v78 = v101;
          v79 = v102;
          *(v23 + 72) = v66 & 1;
          *(v23 + 80) = v79;
          *(v23 + 88) = v78;
          *(v23 + 96) = v76;
          *(v23 + 104) = v73;
          isEscapingClosureAtFileLocation = v104;
          v48 = v107;
          goto LABEL_40;
        }

        v67 = [v48 attributesAtIndex:v97 - 1 effectiveRange:0];
        type metadata accessor for NSAttributedStringKey(0);
        _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
        v68._rawValue = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v69 = v48;
      isa = AnyCustomTextAttachment.nsAttributedString(with:)(v68).super.isa;

      [v69 appendAttributedString_];

      goto LABEL_35;
    }

LABEL_40:
    v28 = v106;
    if (!v48)
    {
      goto LABEL_48;
    }

    v44 = v48;
LABEL_42:
    v80 = v44;
    if ([v80 length] < 1)
    {
      break;
    }

    v106 = v28;
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    if (one-time initialization token for resolvableTextSegment != -1)
    {
      swift_once();
    }

    v28 = static NSAttributedStringKey.resolvableTextSegment;
    v30 = [v80 length];
    v27 = swift_allocObject();
    v27[2] = v80;
    v27[3] = &v123;
    v25 = swift_allocObject();
    v25[2] = closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:)partial apply;
    v25[3] = v27;
    *&v116 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    *(&v116 + 1) = v25;
    *&v114 = MEMORY[0x1E69E9820];
    *(&v114 + 1) = 1107296256;
    *&v115 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    *(&v115 + 1) = &block_descriptor_31;
    v81 = _Block_copy(&v114);
    v82 = v80;

    [v82 enumerateAttribute:v28 inRange:0 options:v30 usingBlock:{0, v81}];
    _Block_release(v81);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(&v123, &v114, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      NSMutableAttributedString.setUpdateSchedule(_:)(&v114);

      outlined destroy of TimelineSchedule?(&v114, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      outlined destroy of TimelineSchedule?(&v123, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);

      v28 = v106;
      v48 = v107;
      isEscapingClosureAtFileLocation = v104;
      goto LABEL_49;
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

LABEL_48:
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  outlined destroy of TimelineSchedule?(&v123, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
LABEL_49:
  v83 = *(v23 + 112);
  v84 = *(v23 + 80);
  v120 = *(v23 + 96);
  v121 = v83;
  v85 = *(v23 + 112);
  v122[0] = *(v23 + 128);
  *(v122 + 9) = *(v23 + 137);
  v86 = *(v23 + 48);
  v88 = *(v23 + 16);
  v116 = *(v23 + 32);
  v87 = v116;
  v117 = v86;
  v89 = *(v23 + 48);
  v90 = *(v23 + 80);
  v118 = *(v23 + 64);
  v91 = v118;
  v119 = v90;
  v92 = *(v23 + 16);
  v114 = *v23;
  v93 = v114;
  v115 = v92;
  v94 = v96;
  v96[6] = v120;
  v94[7] = v85;
  v94[8] = *(v23 + 128);
  *(v94 + 137) = *(v23 + 137);
  v94[2] = v87;
  v94[3] = v89;
  v94[4] = v91;
  v94[5] = v84;
  *v94 = v93;
  v94[1] = v88;
  outlined init with copy of Text.ResolvedProperties(&v114, v109);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v28, type metadata accessor for TypesettingConfiguration);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(isEscapingClosureAtFileLocation, type metadata accessor for Text.Resolved);
  return v48;
}

double TextChildQuery.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 5);
  v35 = *(v2 + 1);
  v36 = v5;
  type metadata accessor for ResolvedStyledText();
  v6 = *AGGraphGetValue();
  *v26 = v4;
  *&v26[4] = v35;
  *&v26[20] = v36;

  v7 = TextChildQuery.unresolvedText.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v32 = v4;
  v33 = v35;
  v34 = v36;
  TextChildQuery.renderer.getter();
  v15 = v14;
  v29 = v4;
  v30 = v35;
  v31 = v36;
  TextChildQuery.renderer.getter();
  if (v17)
  {

    v29 = v4;
    v30 = v35;
    v31 = v36;
    TextChildQuery.environment.getter(v25);
    v18 = v25[0];
    if (v25[1])
    {

      v19 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028TextRendererAddsDrawingGroupI033_7F70C8A76EE0356881289646072938C0LLVG_Tt1g5(v18);
    }

    else
    {
      v19 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028TextRendererAddsDrawingGroupF033_7F70C8A76EE0356881289646072938C0LLVG_Tt2g5(v25[0]);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  *v26 = v6;
  *&v26[8] = v7;
  *&v26[16] = v9;
  v26[24] = v11 & 1;
  *&v26[32] = v13;
  v27 = v15;
  v28 = v19 & 1;
  v22 = type metadata accessor for AccessibilityStyledTextContentView(0, v20, v21, v16);
  AccessibilityStyledTextContentView.body.getter(v22, a2);

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  return result;
}

void ResolvedTextFilter.updateValue()()
{
  v1 = v0;
  v32 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  v6 = *Value;
  v5 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 24);

  outlined copy of Text.Storage(v6, v5, v7);
  v9 = AGGraphGetValue();
  v11 = v10;
  v13 = *v9;
  v12 = v9[1];
  type metadata accessor for ResolvedStyledText();
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_15;
  }

  v29 = v11;
  v14 = (v1 + *(type metadata accessor for ResolvedTextFilter(0) + 24));
  if ((v4 & 1) == 0)
  {

    goto LABEL_4;
  }

  if (!v14[9])
  {
    goto LABEL_15;
  }

  v15 = v14[6];
  if ((v14[8] & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      v27 = v14[8];
      v28 = v14[9];
      v21 = v15 == v6 && v14[7] == v5;
      v26 = v14[7];
      if (v21)
      {

        outlined copy of Text?(v6, v5, v27, v28);
        goto LABEL_32;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined copy of Text?(v15, v26, v27, v28);
      if (v24)
      {
        goto LABEL_32;
      }

LABEL_30:
      outlined consume of Text?(v15, v26, v27, v28);
      goto LABEL_16;
    }

LABEL_15:

    goto LABEL_16;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = *(*v15 + 96);
  v27 = v14[8];
  v28 = v14[9];
  v26 = v14[7];

  v16 = outlined copy of Text?(v15, v26, v27, v28);
  if ((v23(v6, v16) & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_32:
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v28, v8);
  v25 = v22;
  outlined consume of Text?(v15, v26, v27, v28);
  if (v25)
  {
LABEL_4:
    if ((v29 & 1) == 0 || (PropertyList.Tracker.hasDifferentUsedValues(_:)(v13) & 1) == 0)
    {
      type metadata accessor for ResolvedTextHelper(0);
      ResolvedTextHelper.NextUpdate.time()();
      if ((v31 & 1) != 0 || *AGGraphGetValue() < v30)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_16:
  v30 = *&v13;
  v31 = v12;
  type metadata accessor for ResolvedTextFilter(0);

  outlined copy of Text.Storage(v6, v5, v7);
  v17 = ResolvedTextHelper.resolve(_:with:sizeFitting:)(v6, v5, v7, v8, &v30, 0);
  outlined consume of Text.Storage(v6, v5, v7);

  if (!v17)
  {
    __break(1u);
    return;
  }

  v30 = *&v17;
  AGGraphSetOutputValue();

LABEL_18:
  type metadata accessor for ResolvedTextFilter(0);
  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  if ((v31 & 1) != 0 || (v18 = v30, *AGGraphGetValue() >= v18))
  {
    outlined consume of Text.Storage(v6, v5, v7);
  }

  else
  {
    specialized static GraphHost.currentHost.getter();
    outlined consume of Text.Storage(v6, v5, v7);

    type metadata accessor for ViewGraph();
    v19 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v20 = *(v19 + 376);
    if (v18 < v20)
    {
      v20 = v18;
    }

    *(v19 + 376) = v20;
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t outlined init with copy of ResolvableAttributeConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t destroy for TypesettingLanguage(uint64_t a1)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = type metadata accessor for Locale.Language();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

BOOL specialized static TypesettingLanguage.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TypesettingLanguage.Storage(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (TypesettingLanguage.Storage, TypesettingLanguage.Storage)(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v13[*(v14 + 56)];
  outlined init with copy of TypesettingLanguage.Storage(a1, v13, type metadata accessor for TypesettingLanguage.Storage);
  outlined init with copy of TypesettingLanguage.Storage(a2, v15, type metadata accessor for TypesettingLanguage.Storage);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = v18(v13, 2, v16);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = v18(v15, 2, v17);
      v21 = type metadata accessor for TypesettingLanguage.Storage;
      if (v20 == 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v24 = v18(v15, 2, v17);
      v21 = type metadata accessor for TypesettingLanguage.Storage;
      if (v24 == 2)
      {
LABEL_8:
        v25 = 1;
        goto LABEL_10;
      }
    }

LABEL_9:
    v25 = 0;
    v21 = type metadata accessor for (TypesettingLanguage.Storage, TypesettingLanguage.Storage);
    goto LABEL_10;
  }

  v33 = v5;
  outlined init with copy of TypesettingLanguage.Storage(v13, v10, type metadata accessor for TypesettingLanguage.Storage);
  v22 = *(v17 + 48);
  v23 = v10[v22];
  if (v18(v15, 2, v17))
  {
    (*(v33 + 8))(v10, v4);
    goto LABEL_9;
  }

  v27 = v23;
  v28 = *(v15 + v22);
  v29 = v33;
  (*(v33 + 32))(v7, v15, v4);
  v30 = static Locale.Language.== infix(_:_:)();
  v31 = *(v29 + 8);
  v31(v7, v4);
  v31(v10, v4);
  v21 = type metadata accessor for TypesettingLanguage.Storage;
  if (v30)
  {
    v25 = v27 == v28;
    v21 = type metadata accessor for TypesettingLanguage.Storage;
  }

  else
  {
    v25 = 0;
  }

LABEL_10:
  outlined destroy of TypesettingLanguage(v13, v21);
  return v25;
}

void *initializeWithCopy for TypesettingLanguage.Storage(void *a1, const void *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for Locale.Language();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

uint64_t Text.Style.TextStyleFont.resolve(in:includeDefaultAttributes:)(uint64_t *a1, char a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
  }

  else if (a2)
  {
    v5 = *a1;
    v4 = a1[1];
    if (!v3)
    {
      if (!v4)
      {
        v9[0] = *a1;
        v9[1] = 0;

        v3 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(v9);

        goto LABEL_16;
      }

      v6 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
LABEL_11:
      v3 = v6;
LABEL_16:

      return v3;
    }

    if (v4)
    {

      v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011DefaultFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);

      if (!v3)
      {

        v6 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV012FallbackFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
        goto LABEL_11;
      }
    }

    else
    {
      v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
      if (!v7)
      {
        return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(v5);
      }

      v3 = v7[9];

      if (!v3)
      {
        return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(v5);
      }
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

void specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t outlined destroy of TypesettingLanguage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2g5(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(a1, v13);
  if (v5)
  {
    v6 = v5[9];
    v7 = v5[10];
    v8 = v5[11];
    v9 = v5[12];
    v10 = v5[13];
    v11 = v5[14];
    v12 = v5[15];
    outlined copy of ResolvedTextSuffix(v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0x8000000000000000;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v10;
  a2[5] = v11;
  a2[6] = v12;
}

id Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v295 = a6;
  v292 = a4;
  v281 = a1;
  v282 = a2;
  v288.i64[0] = 0;
  v10 = type metadata accessor for ParagraphStyleResolutionContext(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v279 = (&v279 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v284 = &v279 - v13;
  *&v286 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v285.f64[0] = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v283 = &v279 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  v280 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v279 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TypesettingConfiguration(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v279 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v279 - v22;
  v24 = *a3;
  v25 = *(a3 + 8);
  v289 = *a5;
  v323 = MEMORY[0x1E69E7CC8];
  v294 = v24;
  ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5 = _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA07DerivedC3KeyRzluigAA019ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5(v24, v25);
  v291 = type metadata accessor for Text.Style(0);
  v26 = *(*(v7 + v291[27]) + 16);
  v293 = v25;
  if (v26)
  {
    if (v25)
    {

      v27 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v294);
    }

    else
    {
      v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v294);
      if (v28)
      {
        v27 = *(v28 + 72);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }
    }

    MEMORY[0x1EEE9AC00](v28);
    *(&v279 - 2) = v7;
    v31 = v288.i64[0];
    v29 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:), &v279 - 4, v27);
    v288.i64[0] = v31;
  }

  else if (v25)
  {

    v29 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v294);
  }

  else
  {
    v30 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v294);
    if (v30)
    {
      v29 = v30[9];
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }
  }

  *&v313 = v29;

  specialized Array.append<A>(contentsOf:)(v32);
  v290 = v313;
  v322 = v313;
  *(v295 + 120) = 0;
  v33 = v7 + v291[21];
  outlined init with copy of ResolvableAttributeConfiguration(v33, v23, type metadata accessor for TypesettingConfiguration);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for TypesettingLanguage(0);
  v35 = __swift_project_value_buffer(v34, static TypesettingLanguage.automatic);
  v36 = specialized static TypesettingLanguage.Storage.== infix(_:_:)(v23, v35);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v23, type metadata accessor for TypesettingLanguage);
  if (v36)
  {
    v37 = MEMORY[0x1E69E7CC8];
    goto LABEL_39;
  }

  outlined init with copy of ResolvableAttributeConfiguration(v33, v20, type metadata accessor for TypesettingConfiguration);
  v38 = v293;
  if (v293)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v294, v17);

    v39 = v280;
  }

  else
  {
    v40 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v294);
    if (v40)
    {
      v39 = v280;
      (*(v280 + 16))(v17, &v40[*(*v40 + 248)], v15);
    }

    else
    {
      v41 = v280;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v15, static LocaleKey.defaultValue);
      (*(v41 + 16))(v17, v42, v15);
      v39 = v41;
    }
  }

  TypesettingLanguage.resolve(with:locale:)(v281, v17, &v313);
  (*(v39 + 8))(v17, v15);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v20, type metadata accessor for TypesettingLanguage);
  v43 = BYTE1(v314);
  if (BYTE1(v314) == 2)
  {
    v37 = MEMORY[0x1E69E7CC8];
    v47 = v294;
    if (!*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v44 = v313;
  LODWORD(v282) = v314;
  if (BYTE1(v314) == 1)
  {
    if (one-time initialization token for languageModifiers != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(static AnyFontModifier.languageModifiers + 2) && (specialized __RawDictionaryStorage.find<A>(_:)(v44, *(&v44 + 1)), (v45 & 1) != 0))
    {
      swift_endAccess();

      v37 = MEMORY[0x1E69E7CC8];
      v46 = v282;
    }

    else
    {
      swift_endAccess();
      type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageFontModifier>, lazy protocol witness table accessor for type LanguageFontModifier and conformance LanguageFontModifier, &type metadata for LanguageFontModifier);
      v53 = swift_allocObject();
      *(v53 + 16) = v44;
      swift_beginAccess();
      v54 = v282;
      outlined copy of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v282, 1u);
      outlined copy of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v54, 1u);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v305 = static AnyFontModifier.languageModifiers;
      static AnyFontModifier.languageModifiers = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v44, *(&v44 + 1), isUniquelyReferenced_nonNull_native);
      v46 = v54;
      outlined consume of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v54, 1u);
      static AnyFontModifier.languageModifiers = v305;
      swift_endAccess();
      v37 = MEMORY[0x1E69E7CC8];
    }
  }

  else
  {
    v48 = *MEMORY[0x1E696A518];
    *(&v314 + 1) = MEMORY[0x1E69E6158];
    outlined init with take of Any(&v313, &v305);

    v49 = v323;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v299 = v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v48, v50);
    v37 = v299;
    v323 = v299;
    v51 = MEMORY[0x193ABEC20](v44, *(&v44 + 1));
    CompositionLanguageForLanguage = CTParagraphStyleGetCompositionLanguageForLanguage();

    *(v295 + 120) = CompositionLanguageForLanguage;
    v46 = v282;
    if ((v282 & 1) == 0)
    {
      outlined consume of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v282, 0);
      goto LABEL_39;
    }

    specialized static AnyFontModifier.languageModifier(_:)(v44, *(&v44 + 1));
  }

  outlined consume of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v46, v43);

  MEMORY[0x193ABF170](v56);
  if (*((v322 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v322 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v290 = v322;
LABEL_39:
  v38 = v293;
  v47 = v294;
  if (!*(v37 + 16))
  {
    goto LABEL_43;
  }

LABEL_40:
  v57 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696A518]);
  if (v58)
  {
    outlined init with copy of Any(*(v37 + 56) + 32 * v57, &v313);
    if (swift_dynamicCast())
    {
      specialized Set._Variant.insert(_:)(&v313, v305, *(&v305 + 1));
    }
  }

LABEL_43:
  v59 = v33 + *(v18 + 20);
  v60 = *v59;
  if (*(v59 + 8) == 1)
  {
    if (!v60)
    {
      goto LABEL_52;
    }

    type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>, lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier, &type metadata for LanguageAwareLineHeightRatioFontModifier);
    if (v60 == 1)
    {
      *(swift_allocObject() + 16) = 0;
    }

    else
    {
      *(swift_allocObject() + 16) = 0x3FD51EB851EB851FLL;
    }
  }

  else
  {
    type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>, lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier, &type metadata for LanguageAwareLineHeightRatioFontModifier);
    *(swift_allocObject() + 16) = v60;
  }

  MEMORY[0x193ABF170](v61);
  if (*((v322 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v322 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v290 = v322;
LABEL_52:
  if (one-time initialization token for kitFont != -1)
  {
    swift_once();
  }

  *&v305 = *v7;
  v62 = v305;
  *&v313 = v47;
  *(&v313 + 1) = v38;
  v63 = static NSAttributedStringKey.kitFont;
  outlined copy of Text.Style.TextStyleFont(v62);
  v64 = Text.Style.TextStyleFont.resolve(in:includeDefaultAttributes:)(&v313, v292 & 1);
  outlined consume of EffectAnimator<A>.State<A>(v305);
  if (v64)
  {
    if (v38)
    {

      _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v47, &v313);
    }

    else
    {
      v305 = v47;

      static EnvironmentValues.FontContextKey.value(in:)(&v305, &v313);
    }

    v297[1] = v314;
    v297[2] = v315;
    v297[0] = v313;
    v65 = v290;

    outlined init with copy of Font.Context(v297, &v305);

    v299 = v313;
    v300 = v314;
    v66 = MEMORY[0x1E69E7CC0];
    *&v301 = v315;
    *(&v301 + 1) = MEMORY[0x1E69E7CC0];
    v327[1] = v313;
    v327[2] = v314;
    v327[3] = v301;
    *&v327[0] = v64;
    *(&v327[0] + 1) = v65;
    outlined init with copy of Font.Context(&v299, &v305);
    v67 = one-time initialization token for shared;

    if (v67 != -1)
    {
      swift_once();
    }

    specialized ObjectCache.subscript.getter(v327);
    v69 = v68;

    outlined destroy of Font.Context(v297);
    outlined destroy of Font.FontCache.Key(v327);
    v305 = v313;
    v306 = v314;
    v307.i64[0] = v315;
    v307.i64[1] = v66;
    outlined destroy of Font.Context(&v305);
    type metadata accessor for CTFontRef(0);
    v321 = v70;
    *&v320 = v69;
    outlined init with take of Any(&v320, v296);
    v71 = v323;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v324 = v71;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v296, v63, v72);

    v323 = v324;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v63, &v313);

    outlined destroy of TimelineSchedule?(&v313, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for HitTestableEvent?);
  }

  v73 = (v289 & 4) == 0;
  *&v305 = *(v7 + 16);
  *&v313 = v47;
  *(&v313 + 1) = v38;
  *&v299 = v289;
  outlined copy of Text.Style.TextStyleColor(v305);
  v74 = Text.Style.TextStyleColor.resolve(in:with:properties:includeDefaultAttributes:)(&v313, &v299, v295, v292 & v73);
  v76 = v75;
  v78 = v77;
  v79.n128_f64[0] = outlined consume of Gradient.ProviderTag(v305);
  if ((v78 & 0x100000000) == 0)
  {
    v83 = v74;
    v81.n128_u32[0] = v76;
    if (ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5)
    {
      v82.n128_f32[0] = *(&v76 + 1) * 0.16;
    }

    else
    {
      v82.n128_f32[0] = *(&v76 + 1);
    }

    if (one-time initialization token for kitForegroundColor != -1)
    {
      LODWORD(v282) = v76;
      v275 = v82.n128_u32[0];
      swift_once();
      v82.n128_u32[0] = v275;
      v81.n128_u32[0] = v282;
    }

    v84 = static NSAttributedStringKey.kitForegroundColor;
    if (one-time initialization token for cache != -1)
    {
      LODWORD(v282) = v81.n128_u32[0];
      v276 = v82.n128_u32[0];
      swift_once();
      v82.n128_u32[0] = v276;
      v81.n128_u32[0] = v282;
    }

    v80.n128_u32[0] = HIDWORD(v83);
    v79.n128_u32[0] = v83;
    specialized ObjectCache.subscript.getter(v79, v80, v81, v82);
    v86 = v85;
    *(&v314 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    *&v313 = v86;
    outlined init with take of Any(&v313, &v305);
    v87 = v323;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *&v299 = v87;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v84, v88);
    v323 = v299;
    v89 = *(v295 + 32);
    if ((v89 & 1) == 0)
    {
      v79.n128_u32[0] = -1.0;
      if (*&v83 == -1.0 && *(&v83 + 1) == -1.0)
      {
        *(v295 + 32) = v89 | 1;
      }
    }
  }

  v90 = *(v7 + 24);
  if (v90)
  {
    *&v313 = v47;
    *(&v313 + 1) = v38;
    (*(*v90 + 120))(&v324, &v313, v79);
    if (one-time initialization token for kitBackgroundColor != -1)
    {
      swift_once();
    }

    v95 = static NSAttributedStringKey.kitBackgroundColor;
    v96 = v324;
    v93.n128_u32[0] = v325;
    v94.n128_u32[0] = v326;
    if (one-time initialization token for cache != -1)
    {
      v273 = v325;
      v274 = v326;
      swift_once();
      v94.n128_u32[0] = v274;
      v93.n128_u32[0] = v273;
    }

    v92.n128_u32[0] = HIDWORD(v96);
    v91.n128_u32[0] = v96;
    specialized ObjectCache.subscript.getter(v91, v92, v93, v94);
    v98 = v97;
    *(&v314 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    *&v313 = v98;
    outlined init with take of Any(&v313, &v305);
    v99 = v323;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    *&v299 = v99;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v95, v100);
    v323 = v299;
    v101 = *(v295 + 32);
    if ((v101 & 1) == 0 && *&v96 == -1.0 && *(&v96 + 1) == -1.0)
    {
      *(v295 + 32) = v101 | 1;
    }
  }

  if ((*(v7 + 40) & 1) == 0)
  {
    v102 = *(v7 + 32);
    if (v102 != 0.0)
    {
      goto LABEL_93;
    }

    goto LABEL_88;
  }

  if (!v38)
  {
    v104 = v288.i64[0];
    v102 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v47);
    v288.i64[0] = v104;
    if (v102 != 0.0)
    {
      goto LABEL_93;
    }

LABEL_88:
    if ((*(v7 + 56) & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_89;
  }

  v102 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021DefaultBaselineOffsetI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v47);

  if (v102 == 0.0)
  {
    goto LABEL_88;
  }

LABEL_93:
  if (one-time initialization token for kitBaselineOffset != -1)
  {
    swift_once();
  }

  v105 = static NSAttributedStringKey.kitBaselineOffset;
  *(&v314 + 1) = MEMORY[0x1E69E7DE0];
  *&v313 = v102;
  outlined init with take of Any(&v313, &v305);
  v106 = v323;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  *&v299 = v106;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v105, v107);
  v323 = v299;
  if ((*(v7 + 56) & 1) == 0)
  {
LABEL_96:
    v103 = *(v7 + 48);
    if (v103 == 0.0)
    {
      goto LABEL_97;
    }

    goto LABEL_102;
  }

LABEL_89:
  if (v38)
  {

    v103 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultKerningI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v47);

    if (v103 == 0.0)
    {
      goto LABEL_97;
    }
  }

  else
  {
    v109 = v288.i64[0];
    v103 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultKerningF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v47);
    v288.i64[0] = v109;
    if (v103 == 0.0)
    {
LABEL_97:
      if (*(v7 + 72))
      {
        goto LABEL_98;
      }

LABEL_105:
      v108 = *(v7 + 64);
      if (v108 == 0.0)
      {
        goto LABEL_111;
      }

      goto LABEL_108;
    }
  }

LABEL_102:
  if (one-time initialization token for kitKern != -1)
  {
    swift_once();
  }

  v110 = static NSAttributedStringKey.kitKern;
  *(&v314 + 1) = MEMORY[0x1E69E7DE0];
  *&v313 = v103;
  outlined init with take of Any(&v313, &v305);
  v111 = v323;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  *&v299 = v111;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v110, v112);
  v323 = v299;
  if ((*(v7 + 72) & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_98:
  if (v38)
  {

    v108 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DefaultTrackingI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v47);

    if (v108 == 0.0)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v108 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v47);
    if (v108 == 0.0)
    {
      goto LABEL_111;
    }
  }

LABEL_108:
  if (one-time initialization token for kitTracking != -1)
  {
    swift_once();
  }

  v113 = static NSAttributedStringKey.kitTracking;
  *(&v314 + 1) = MEMORY[0x1E69E7DE0];
  *&v313 = v108;
  outlined init with take of Any(&v313, &v305);
  v114 = v323;
  v115 = swift_isUniquelyReferenced_nonNull_native();
  *&v299 = v114;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v113, v115);
  v323 = v299;
LABEL_111:
  v288.i64[0] = v63;
  v116 = *(v7 + 88);
  if (v116 == 2)
  {
    goto LABEL_132;
  }

  v117 = *(v7 + 80);
  v118 = v117;
  v119 = *(v7 + 88);
  if (v116 == 1)
  {
    if (v293)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018StrikethroughStyleI0VG_Tt1g5(v294, &v313);

      v119 = *(&v313 + 1);
      v118 = v313;
      if (*(&v313 + 1) == 1)
      {
        goto LABEL_132;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v120);
      v121 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018StrikethroughStyleV0VG_Tt0B5(v294, v305);
      if (!v121)
      {
        goto LABEL_132;
      }

      v118 = v121[9];
      v119 = v121[10];
      outlined copy of Text.LineStyle?(v118, v119);
      if (v119 == 1)
      {
        goto LABEL_132;
      }
    }
  }

  if (v119)
  {
    *&v313 = v294;
    *(&v313 + 1) = v293;
    v122 = *(*v119 + 120);
    outlined copy of Text.Style.LineStyle(v117, v116);

    v122(v296, &v313);
    v123 = *(&v296[0] + 1);
    v124 = *&v296[0];
  }

  else
  {
    outlined copy of Text.Style.LineStyle(v117, v116);
    v124 = 0;
    v123 = 0;
  }

  if (one-time initialization token for kitStrikethroughStyle != -1)
  {
    swift_once();
  }

  v125 = static NSAttributedStringKey.kitStrikethroughStyle;
  v126 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(&v314 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  *&v313 = v126;
  outlined init with take of Any(&v313, &v305);
  v127 = v323;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  *&v299 = v127;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v125, v128);
  v133 = v299;
  v323 = v299;
  if (v119)
  {
    v132.n128_u32[0] = HIDWORD(v123);
    v131.n128_u32[0] = v123;
    if (one-time initialization token for kitStrikethroughColor != -1)
    {
      LODWORD(v282) = v123;
      swift_once();
      v132.n128_u32[0] = HIDWORD(v123);
      v131.n128_u32[0] = v282;
    }

    v134 = static NSAttributedStringKey.kitStrikethroughColor;
    if (one-time initialization token for cache != -1)
    {
      LODWORD(v282) = v131.n128_u32[0];
      v277 = v132.n128_u32[0];
      swift_once();
      v132.n128_u32[0] = v277;
      v131.n128_u32[0] = v282;
    }

    v130.n128_u32[0] = HIDWORD(v124);
    v129.n128_u32[0] = v124;
    specialized ObjectCache.subscript.getter(v129, v130, v131, v132);
    v136 = v135;
    *(&v314 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    *&v313 = v136;
    outlined init with take of Any(&v313, &v305);
    v137 = swift_isUniquelyReferenced_nonNull_native();
    *&v299 = v133;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v134, v137);
    v323 = v299;
    v138 = *(v295 + 32);
    if ((v138 & 1) == 0 && *&v124 == -1.0 && *(&v124 + 1) == -1.0)
    {
      *(v295 + 32) = v138 | 1;
    }
  }

LABEL_132:
  v139 = *(v7 + 104);
  if (v139 == 2)
  {
    goto LABEL_153;
  }

  v140 = *(v7 + 96);
  v141 = v140;
  v142 = *(v7 + 104);
  if (v139 == 1)
  {
    if (v293)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014UnderlineStyleI0VG_Tt1g5(v294, &v313);

      v142 = *(&v313 + 1);
      v141 = v313;
      if (*(&v313 + 1) == 1)
      {
        goto LABEL_153;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v143);
      v144 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014UnderlineStyleV0VG_Tt0B5(v294, v305);
      if (!v144)
      {
        goto LABEL_153;
      }

      v141 = v144[9];
      v142 = v144[10];
      outlined copy of Text.LineStyle?(v141, v142);
      if (v142 == 1)
      {
        goto LABEL_153;
      }
    }
  }

  if (v142)
  {
    *&v313 = v294;
    *(&v313 + 1) = v293;
    v145 = *(*v142 + 120);
    outlined copy of Text.Style.LineStyle(v140, v139);

    v145(&v320, &v313);
    v146 = *(&v320 + 1);
    v147 = v320;
  }

  else
  {
    outlined copy of Text.Style.LineStyle(v140, v139);
    v147 = 0;
    v146 = 0;
  }

  if (one-time initialization token for kitUnderlineStyle != -1)
  {
    swift_once();
  }

  v148 = static NSAttributedStringKey.kitUnderlineStyle;
  v149 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(&v314 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  *&v313 = v149;
  outlined init with take of Any(&v313, &v305);
  v150 = v323;
  v151 = swift_isUniquelyReferenced_nonNull_native();
  *&v299 = v150;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v148, v151);
  v156 = v299;
  v323 = v299;
  if (v142)
  {
    v155.n128_u32[0] = HIDWORD(v146);
    v154.n128_u32[0] = v146;
    if (one-time initialization token for kitUnderlineColor != -1)
    {
      LODWORD(v282) = v146;
      swift_once();
      v155.n128_u32[0] = HIDWORD(v146);
      v154.n128_u32[0] = v282;
    }

    v157 = static NSAttributedStringKey.kitUnderlineColor;
    if (one-time initialization token for cache != -1)
    {
      LODWORD(v282) = v154.n128_u32[0];
      v278 = v155.n128_u32[0];
      swift_once();
      v155.n128_u32[0] = v278;
      v154.n128_u32[0] = v282;
    }

    v153.n128_u32[0] = HIDWORD(v147);
    v152.n128_u32[0] = v147;
    specialized ObjectCache.subscript.getter(v152, v153, v154, v155);
    v159 = v158;
    *(&v314 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    *&v313 = v159;
    outlined init with take of Any(&v313, &v305);
    v160 = swift_isUniquelyReferenced_nonNull_native();
    *&v299 = v156;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v305, v157, v160);
    v323 = v299;
    v161 = *(v295 + 32);
    if ((v161 & 1) == 0 && *&v147 == -1.0 && *(&v147 + 1) == -1.0)
    {
      *(v295 + 32) = v161 | 1;
    }
  }

LABEL_153:
  v162 = *(v7 + 192);
  v317 = *(v7 + 176);
  v318 = v162;
  v319 = *(v7 + 208);
  v163 = *(v7 + 128);
  v313 = *(v7 + 112);
  v314 = v163;
  v164 = *(v7 + 160);
  v315 = *(v7 + 144);
  v316 = v164;
  v165 = v293;
  v166 = v294;
  if (v317 != 1)
  {
    v167 = *MEMORY[0x1E69655D0];
    v168 = *(v7 + 128);
    v299 = *(v7 + 112);
    v300 = v168;
    v169 = *(v7 + 160);
    v171 = *(v7 + 112);
    v170 = *(v7 + 128);
    v301 = *(v7 + 144);
    v302 = v169;
    v303 = v317;
    v304[0] = *(v7 + 184);
    *(v304 + 9) = *(v7 + 193);
    v298[0] = v294;
    v298[1] = v293;
    v305 = v171;
    v306 = v170;
    v173 = *(v7 + 144);
    v172 = *(v7 + 160);
    v174 = *(v7 + 176);
    v175 = *(v7 + 192);
    v311 = *(v7 + 208);
    v309 = v174;
    v310 = v175;
    v307 = v173;
    v308 = v172;
    outlined init with copy of Text.Encapsulation(&v305, v297);
    v176 = Text.Encapsulation.resolve(in:)(v298);
    *(&v300 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextEncapsulation, 0x1E69655F0);
    *&v299 = v176;
    outlined init with take of Any(&v299, v297);
    v177 = v323;
    v178 = swift_isUniquelyReferenced_nonNull_native();
    v298[0] = v177;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v297, v167, v178);
    outlined destroy of TimelineSchedule?(&v313, &lazy cache variable for type metadata for Text.Encapsulation?, &type metadata for Text.Encapsulation, type metadata accessor for HitTestableEvent?);
    v323 = v298[0];
  }

  v179 = _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA07DerivedC3KeyRzluigAA019ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5(v166, v165);
  v180 = v284;
  if ((v179 & 1) == 0)
  {
    v181 = *(v7 + 320);
    if (v165)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA09TextScaleI0VG_Tt1g5(v166, &v299);

      v182 = v299;
      if (v181 != 2)
      {
LABEL_165:
        if ((v181 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_166;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v183);
      v184 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA09TextScaleV0VG_Tt0B5(v166, v305);
      if (v184)
      {
        v182 = *(v184 + 72);
        if (v181 != 2)
        {
          goto LABEL_165;
        }
      }

      else
      {
        v182 = 2;
        if (v181 != 2)
        {
          goto LABEL_165;
        }
      }
    }

    if (v182 == 2 || (v182 & 1) == 0)
    {
      goto LABEL_167;
    }

LABEL_166:
    v185 = *MEMORY[0x1E69DB720];
    v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v306 + 1) = MEMORY[0x1E69E6158];
    *&v305 = v186;
    *(&v305 + 1) = v187;
    outlined init with take of Any(&v305, &v299);
    v188 = v323;
    v189 = swift_isUniquelyReferenced_nonNull_native();
    *&v297[0] = v188;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v299, v185, v189);
    v323 = *&v297[0];
  }

LABEL_167:
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v7 + v291[23], v180, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v190 = v285.f64[0];
  v191 = v286;
  if ((*(*&v285.f64[0] + 48))(v180, 1, v286) == 1)
  {
    outlined destroy of TimelineSchedule?(v180, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  }

  else
  {
    v193 = *(*&v190 + 32);
    v282 = v7;
    v194 = v165;
    v195 = v283;
    v193(v283, v180, v191);
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CTAdaptiveImageGlyph, 0x1E69655D8);
    v196 = v166;
    v197 = static CTAdaptiveImageGlyph._adaptiveImageGlyph(convertingFrom:)();
    v198 = *MEMORY[0x1E69DB5F0];
    v199 = [objc_allocWithZone(MEMORY[0x1E69DB780]) initWithCTAdaptiveImageGlyph_];
    *(&v306 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph, 0x1E69DB780);
    *&v305 = v199;
    outlined init with take of Any(&v305, &v299);
    v200 = v323;
    v201 = swift_isUniquelyReferenced_nonNull_native();
    *&v297[0] = v200;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v299, v198, v201);

    v166 = v196;
    v202 = v195;
    v165 = v194;
    v7 = v282;
    (*(*&v190 + 8))(v202, v191);
    v323 = *&v297[0];
  }

  v203 = v288.i64[0];
  v204 = *(v7 + 304);
  if (v204)
  {
    v205 = *(v204 + 16);
    v206 = *(v204 + 24);
    *&v299 = v166;
    *(&v299 + 1) = v165;
    v207 = *(*v205 + 120);

    *&v208 = v206 * -2.8;
    v286 = v208;
    v288 = *(v204 + 32);
    v285 = vextq_s8(v288, v288, 8uLL);
    v207(&v305, &v299);

    v209 = vdupq_lane_s64(v286, 0);
    v210 = vaddq_f64(v209, v285);
    v211 = vsubq_f64(v209, v285);
    v212 = v295;
    v213 = vbslq_s8(vcgtq_f64(*(v295 + 16), v211), v211, *(v295 + 16));
    *v295 = vbslq_s8(vcgtq_f64(*v295, v210), v210, *v295);
    *(v212 + 16) = v213;
    *(&v306 + 1) = v206 + v206;
    v307 = v288;
    LODWORD(v308) = 1056964608;
    BYTE4(v308) = 0;
    Dictionary<>.setShadow(shadowStyle:)(&v305);
  }

  else if ((v289 & 8) != 0)
  {
    v214 = *(v7 + 312);
    if (v214)
    {
      v215 = *(v295 + 48);
      v216 = *(v215 + 2);

      v217 = CoreMakeNSShadowWithCustomStyleIndex(0, v216);
      if (v217)
      {
        v218 = v217;
        if (one-time initialization token for kitShadow != -1)
        {
          swift_once();
        }

        v219 = static NSAttributedStringKey.kitShadow;
        *(&v306 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        *&v305 = v218;
        outlined init with take of Any(&v305, &v299);
        v220 = v218;
        v221 = v323;
        v222 = swift_isUniquelyReferenced_nonNull_native();
        *&v297[0] = v221;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v299, v219, v222);

        v323 = *&v297[0];
      }

      v223 = *(v214 + 16);
      v224 = *(v214 + 24) | (*(v214 + 28) << 32);
      v225 = *(v214 + 29);
      v226 = *(v214 + 30);
      outlined copy of ContentTransition.Storage(v223, v224, v225);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v215 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v215 + 2) + 1, 1, v215);
      }

      v228 = *(v215 + 2);
      v227 = *(v215 + 3);
      if (v228 >= v227 >> 1)
      {
        v215 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v227 > 1), v228 + 1, 1, v215);
      }

      *(v215 + 2) = v228 + 1;
      v229 = &v215[16 * v228];
      *(v229 + 4) = v223;
      *(v229 + 10) = v224;
      v229[44] = BYTE4(v224);
      v229[45] = v225;
      v229[46] = v226;
      v166 = v294;
      *(v295 + 48) = v215;
      v165 = v293;
      v203 = v288.i64[0];
    }
  }

  v230 = ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5;
  if ((v292 | ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5))
  {
    if (one-time initialization token for kitParagraphStyle != -1)
    {
      swift_once();
    }

    v231 = static NSAttributedStringKey.kitParagraphStyle;
    v232 = *(v295 + 136);
    if (v232)
    {
      v233 = *(v295 + 136);
    }

    else
    {
      v234 = v291[26];
      v235 = v291[24];
      v236 = *(v7 + v291[25]);
      *&v305 = v166;
      *(&v305 + 1) = v293;

      v237 = v279;
      ParagraphStyleResolutionContext.init(_:)(&v305, v279);
      LOBYTE(v305) = 0;
      LOBYTE(v299) = 1;
      v238 = v7 + v235;
      v165 = v293;
      v239 = makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(v237, v238, &v305, v236, &v299, v7 + v234);
      _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v237, type metadata accessor for ParagraphStyleResolutionContext);
      [v239 setCompositionLanguage_];
      if (_s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA07DerivedC3KeyRzluigAA019ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5(v166, v165))
      {
        [v239 setFullyJustified_];
        if ([v239 baseWritingDirection] == -1)
        {
          if (v165)
          {

            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v166, &v305);

            v240 = v305;
          }

          else
          {
            v241 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v166);
            if (v241)
            {
              v240 = *(v241 + 72);
            }

            else
            {
              v240 = 0;
            }
          }

          [v239 setBaseWritingDirection_];
        }

        [v239 setLineBreakMode_];
      }

      *(v295 + 136) = v239;
      v233 = v239;
      v230 = ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5;
    }

    *(&v306 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
    *&v305 = v233;
    outlined init with take of Any(&v305, &v299);
    v242 = v232;
    v243 = v323;
    v244 = swift_isUniquelyReferenced_nonNull_native();
    *&v297[0] = v243;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v299, v231, v244);
    v323 = *&v297[0];
  }

  if (!(((v289 & 1) == 0) | v230 & 1))
  {
    *&v305 = v166;
    *(&v305 + 1) = v165;
    if (v292)
    {
      v245 = 2;
    }

    else
    {
      v245 = 0;
    }

    LODWORD(v299) = v245;
    Text.Style.resolveAccessibilitySpeechAttributes(into:environment:options:)(&v323, &v305, &v299, v192);
    *&v305 = v166;
    *(&v305 + 1) = v165;
    Text.Style.resolveAccessibilityTextAttributes(into:environment:)(&v323, &v305);
  }

  v246 = *(v7 + v291[22]);
  if (v246 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_210;
    }
  }

  else if (!*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_210;
  }

  if (one-time initialization token for customAttributes != -1)
  {
    swift_once();
  }

  v247 = static NSAttributedStringKey.customAttributes;
  *(&v306 + 1) = &type metadata for Text.CustomAttributes;
  *&v305 = v246;
  outlined init with take of Any(&v305, &v299);

  v248 = v323;
  v249 = swift_isUniquelyReferenced_nonNull_native();
  *&v297[0] = v248;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v299, v247, v249);
  v323 = *&v297[0];
LABEL_210:
  if (*(v7 + 321) != 1 && (v250 = v323, *(v323 + 2)) && (v251 = specialized __RawDictionaryStorage.find<A>(_:)(v203), (v252 & 1) != 0))
  {
    outlined init with copy of Any(v250[7] + 32 * v251, &v299);
    outlined init with take of Any(&v299, &v305);
    outlined init with copy of Any(&v305, &v299);
    type metadata accessor for CTFontRef(0);
    v254 = v253;
    swift_dynamicCast();
    if (one-time initialization token for kitBaselineOffset != -1)
    {
      swift_once();
    }

    v255 = static NSAttributedStringKey.kitBaselineOffset;
    if (v250[2] && (v256 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.kitBaselineOffset), (v257 & 1) != 0) && (outlined init with copy of Any(v250[7] + 32 * v256, &v299), (swift_dynamicCast() & 1) != 0))
    {
      v258 = *v297;
    }

    else
    {

      v258 = 0.0;
    }

    v260 = CTFontCopyFontDescriptor(v298[0]);
    CTFontGetWeight();
    v262 = CTFontDescriptorRef.scaled(by:toMultipleOf:maintainedVisualWeight:)(0x3FD0000000000000, 0, v261, 0, 0.65);

    v263 = CTFontCreateWithFontDescriptor(v262, 0.0, 0);
    v264 = v298[0];
    CapHeight = CTFontGetCapHeight(v298[0]);

    v266 = CTFontGetCapHeight(v263);
    v298[0] = v263;
    v267 = v258 + CapHeight - v266;
    *(&v300 + 1) = v254;
    *&v299 = v263;
    outlined init with take of Any(&v299, v297);
    v268 = v263;
    v269 = v323;
    v270 = swift_isUniquelyReferenced_nonNull_native();
    v312 = v269;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v297, v203, v270);
    v271 = v312;
    *(&v300 + 1) = MEMORY[0x1E69E7DE0];
    *&v299 = v267;
    outlined init with take of Any(&v299, v297);
    v272 = swift_isUniquelyReferenced_nonNull_native();
    v312 = v271;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v297, v255, v272);
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v323 = v312;
  }

  else
  {
  }

  return v323;
}

uint64_t _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA07DerivedC3KeyRzluigAA019ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(a1);
  }

  else
  {
    v5[0] = a1;
    v5[1] = 0;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(v5);
  }

  return ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for (TypesettingLanguage.Storage, TypesettingLanguage.Storage)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (TypesettingLanguage.Storage, TypesettingLanguage.Storage))
  {
    type metadata accessor for TypesettingLanguage.Storage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TypesettingLanguage.Storage, TypesettingLanguage.Storage));
    }
  }
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [AnyFontModifier], type metadata accessor for AnyFontModifier, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [AnyFontModifier] and conformance [A], &lazy cache variable for type metadata for [AnyFontModifier], type metadata accessor for AnyFontModifier);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AnyFontModifier();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [ViewResponder] and conformance [A], &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ViewResponder();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [LazyLayoutCacheItem], type metadata accessor for LazyLayoutCacheItem, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [LazyLayoutCacheItem] and conformance [A], &lazy cache variable for type metadata for [LazyLayoutCacheItem], type metadata accessor for LazyLayoutCacheItem);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LazyLayoutCacheItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [ResolvedStyledText], type metadata accessor for ResolvedStyledText, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [ResolvedStyledText] and conformance [A], &lazy cache variable for type metadata for [ResolvedStyledText], type metadata accessor for ResolvedStyledText);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ResolvedStyledText();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [AbstractHomogeneousCollection], type metadata accessor for AbstractHomogeneousCollection, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [AbstractHomogeneousCollection] and conformance [A], &lazy cache variable for type metadata for [AbstractHomogeneousCollection], type metadata accessor for AbstractHomogeneousCollection);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AbstractHomogeneousCollection();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [TextAttributeModifierBase], type metadata accessor for TextAttributeModifierBase, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [TextAttributeModifierBase] and conformance [A], &lazy cache variable for type metadata for [TextAttributeModifierBase], type metadata accessor for TextAttributeModifierBase);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TextAttributeModifierBase();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

double outlined copy of Text.Style.TextStyleFont(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

double outlined copy of Text.Modifier(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 >> 5;
  if (v2 <= 6 && ((1 << v2) & 0x43) != 0)
  {
  }

  return result;
}

double outlined copy of Text?(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

void type metadata accessor for (Date?, Date?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Date?, Date?))
  {
    type metadata accessor for Date?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Date?, Date?));
    }
  }
}

void type metadata accessor for (Date?, NSMutableAttributedString?, Text.ResolvedProperties)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Date?, NSMutableAttributedString?, Text.ResolvedProperties))
  {
    type metadata accessor for Date?(255);
    type metadata accessor for NSMutableAttributedString?(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Date?, NSMutableAttributedString?, Text.ResolvedProperties));
    }
  }
}

uint64_t _ShapeStyle_Shape.PreparedTextResult.apply(to:)(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v9 = *v4;
  if (*v4)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
    }

    v11 = *(a4 + 2);
    v10 = *(a4 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a4);
    }

    v13 = 0;
    inited = v9;
  }

  else
  {
    type metadata accessor for TextForegroundKeyColorModifier();
    inited = swift_initStaticObject();
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
    }

    v11 = *(a4 + 2);
    v15 = *(a4 + 3);
    v12 = v11 + 1;
    if (v11 >= v15 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v11 + 1, 1, a4);
    }

    v13 = -64;
  }

  *(a4 + 2) = v12;
  v16 = &a4[16 * v11];
  *(v16 + 4) = inited;
  v16[40] = v13;

  return a1;
}

void type metadata accessor for (Date??, Date??)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Date??, Date??))
  {
    _s10Foundation4DateVSgMaTm_2(255, &lazy cache variable for type metadata for Date??, 255, type metadata accessor for Date?, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Date??, Date??));
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016DisableLinkColorV033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016DisableLinkColorV033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016DisableLinkColorV033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>);
    }
  }
}

uint64_t outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_2(0, a3, 255, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of TypesettingLanguage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

_BYTE *assignWithCopy for TypesettingConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3, __n128 a4)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, 2, v7);
  v12 = v10(a2, 2, v8);
  if (!v11)
  {
    if (!v12)
    {
      v20 = type metadata accessor for Locale.Language();
      (*(*(v20 - 8) + 24))(a1, a2, v20);
      a1[*(v8 + 48)] = a2[*(v8 + 48)];
      goto LABEL_7;
    }

    outlined destroy of TypesettingConfiguration(a1, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v14 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v13 = type metadata accessor for Locale.Language();
  (*(*(v13 - 8) + 16))(a1, a2, v13);
  a1[*(v8 + 48)] = a2[*(v8 + 48)];
  (*(v9 + 56))(a1, 0, 2, v8);
LABEL_7:
  v15 = *(a3 + 20);
  v16 = &a1[v15];
  v17 = &a2[v15];
  v18 = *v17;
  v16[8] = v17[8];
  *v16 = v18;
  return a1;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextSuffixKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextSuffixKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSuffixKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextSuffixKey>>);
    }
  }
}

void Text.Modifier.modify(style:environment:)(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = a4 >> 5;
  if (v9 > 3)
  {
    if ((a4 >> 5) <= 5u)
    {
      if (v9 == 4)
      {
        *(a1 + 64) = *&a3;
        *(a1 + 72) = 0;
      }

      else
      {
        if (one-time initialization token for semantic != -1)
        {
          swift_once();
        }

        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          dyld_program_sdk_at_least();
        }

        *(a1 + 32) = *&a3;
        *(a1 + 40) = 0;
      }

      return;
    }

    if (v9 == 6)
    {
      v30 = *a2;
      v31 = v7;
      (*(*a3 + 88))(a1, &v30);
      return;
    }

    if (a3 | a4 ^ 0xE0)
    {
      type metadata accessor for AnyDynamicFontModifier<Font.WidthModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>, lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier, &type metadata for Font.DesignModifier);
      *(swift_allocObject() + 16) = 2;
    }

    else
    {
      _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V010MonospacedE0V_Ttt0g5Tm(&type metadata for Font.ItalicModifier, &lazy cache variable for type metadata for AnyStaticFontModifier<Font.ItalicModifier>, &protocol witness table for Font.ItalicModifier);
    }

    MEMORY[0x193ABF170]();
    if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_49:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return;
    }

LABEL_48:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_49;
  }

  if ((a4 >> 5) > 1u)
  {
    if (v9 == 2)
    {
      if (a4)
      {
        v13 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((a1 + 8), &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier);
        v15 = *(a1 + 8);
        if (v15 >> 62)
        {
          v27 = v13;
          v16 = __CocoaSet.count.getter();
          v13 = v27;
          if (v16 >= v27)
          {
LABEL_13:
            specialized Array.replaceSubrange<A>(_:with:)(v13, v16, v14);
            type metadata accessor for Text.Style(0);
            specialized Set._Variant.insert(_:)(&v30, &type metadata for Font.WeightModifier);
            if (one-time initialization token for v7 != -1)
            {
              swift_once();
            }

            v17 = static Semantics.v7;
            if (one-time initialization token for forced != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_1ED53C51C == 1)
            {
              if (dyld_program_sdk_at_least())
              {
                return;
              }
            }

            else if (static Semantics.forced >= v17)
            {
              return;
            }

            specialized MutableCollection._halfStablePartition(isSuffixElement:)((a1 + 8));
            v25 = *(a1 + 8);
            if (v25 >> 62)
            {
              v28 = v23;
              v26 = __CocoaSet.count.getter();
              v23 = v28;
              if (v26 >= v28)
              {
                goto LABEL_68;
              }
            }

            else
            {
              v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v26 >= v23)
              {
LABEL_68:
                specialized Array.replaceSubrange<A>(_:with:)(v23, v26, v24);
                specialized Set._Variant.insert(_:)(&v29, &type metadata for Font.BoldModifier);
                return;
              }
            }

            __break(1u);
            return;
          }
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16 >= v13)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      else
      {
        type metadata accessor for AnyDynamicFontModifier<Font.WidthModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier);
        *(swift_allocObject() + 16) = *&a3;
        MEMORY[0x193ABF170]();
        if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_48;
    }

    if (one-time initialization token for semantic != -1)
    {
      swift_once();
    }

    v19 = static Semantics_v4.semantic;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
LABEL_37:
        v20 = *(a1 + 48);
        if (*(a1 + 56))
        {
          v20 = 0.0;
        }

        *(a1 + 48) = v20 + *&a3;
        *(a1 + 56) = 0;
        return;
      }
    }

    else if (static Semantics.forced < v19)
    {
      goto LABEL_37;
    }

    *(a1 + 48) = *&a3;
    *(a1 + 56) = 0;
    return;
  }

  if (a4 >> 5)
  {
    if (*&a3 != 0.0)
    {
      v18 = *a1;

      outlined consume of EffectAnimator<A>.State<A>(v18);
      *a1 = *&a3;
      return;
    }

    if (one-time initialization token for semantic != -1)
    {
      swift_once();
    }

    v22 = static Semantics_v4.semantic;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
LABEL_64:
        outlined consume of EffectAnimator<A>.State<A>(*a1);
        *a1 = 0;
        return;
      }
    }

    else if (static Semantics.forced < v22)
    {
      goto LABEL_64;
    }

    outlined consume of EffectAnimator<A>.State<A>(*a1);
    *a1 = 1;
    return;
  }

  if (*&a3 != 0.0)
  {
    v29 = *(a1 + 16);
    v30 = v8;
    v31 = v7;
    outlined copy of Text.Modifier(a3, a4);
    outlined copy of Text.Modifier(a3, a4);
    v10 = outlined copy of Text.Style.TextStyleColor(v29);
    v11 = Text.Style.TextStyleColor.baseStyle(in:)(&v30, v10);
    outlined consume of Gradient.ProviderTag(v29);
    v12 = specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(0, v8, v7, v11, a3);
    outlined consume of Text.Modifier(a3, a4);

    outlined consume of Text.Modifier(a3, a4);
    outlined consume of Gradient.ProviderTag(*(a1 + 16));
    *(a1 + 16) = v12;
    return;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v21 = static Semantics_v4.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_57:
      outlined consume of Gradient.ProviderTag(*(a1 + 16));
      *(a1 + 16) = 0x8000000000000000;
      return;
    }
  }

  else if (static Semantics.forced < v21)
  {
    goto LABEL_57;
  }

  outlined consume of Gradient.ProviderTag(*(a1 + 16));
  *(a1 + 16) = 0x8000000000000008;
}

void *Text.Style.TextStyleColor.baseStyle(in:)(uint64_t *a1, double a2)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (!v5)
  {
    v6 = *v2;
    goto LABEL_20;
  }

  if (v5 != 1)
  {
    v7 = *a1;
    v8 = a1[1];
    v9 = v4;
    if (v4 == 0x8000000000000000)
    {
      if (v8)
      {

        v10 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015ForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v7);
        goto LABEL_10;
      }

      v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v7);
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v8)
      {

        v10 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022DefaultForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v7);
LABEL_10:
        v6 = v10;

        if (!v6)
        {
          goto LABEL_16;
        }

LABEL_19:
        v4 = v9;
        goto LABEL_20;
      }

      v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022DefaultForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v7);
      if (!v11)
      {
LABEL_16:
        if (one-time initialization token for sharedPrimary != -1)
        {
          swift_once();
        }

        v6 = static HierarchicalShapeStyle.sharedPrimary;

        goto LABEL_19;
      }
    }

    v6 = v11[9];

    if (v6)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v6 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_20:
  outlined copy of Text.Style.TextStyleColor(v4);
  return v6;
}

uint64_t specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v14[43] = 0;
  *&v11 = 0;
  v10 = a1;
  BYTE8(v11) = 3;
  *&v12 = 0;
  BYTE8(v12) = 5;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *v14 = a4;
  memset(&v14[8], 0, 32);
  v14[40] = 1;
  *&v14[41] = 768;
  v6 = *(*a5 + 80);

  v6(&v10);
  if (BYTE8(v12) == 2)
  {
    v5 = v12;
  }

  v8[4] = *v14;
  v9[0] = *&v14[16];
  *(v9 + 12) = *&v14[28];
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  outlined destroy of _ShapeStyle_Shape(v8);
  return v5;
}

{
  v13[43] = 0;
  *&v10 = 0;
  v9 = a1;
  BYTE8(v10) = 3;
  *&v11 = 0;
  BYTE8(v11) = 5;
  *&v12 = a2;
  *(&v12 + 1) = a3;
  *v13 = a4;
  memset(&v13[8], 0, 32);
  v13[40] = 1;
  *&v13[41] = 768;

  Color._apply(to:)(&v9, a5);
  if (BYTE8(v11) == 2)
  {
    a5 = v11;
  }

  v7[4] = *v13;
  v8[0] = *&v13[16];
  *(v8 + 12) = *&v13[28];
  v7[0] = v9;
  v7[1] = v10;
  v7[2] = v11;
  v7[3] = v12;
  outlined destroy of _ShapeStyle_Shape(v7);
  return a5;
}

uint64_t initializeWithCopy for LeafLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  v11 = *(v8 + 96);
  v13 = *(v8 + 48);
  v12 = *(v8 + 64);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 96) = v11;
  *(v7 + 48) = v13;
  *(v7 + 64) = v12;
  v15 = *(v8 + 128);
  v14 = *(v8 + 144);
  v16 = *(v8 + 112);
  *(v7 + 160) = *(v8 + 160);
  *(v7 + 128) = v15;
  *(v7 + 144) = v14;
  *(v7 + 112) = v16;
  return a1;
}

BOOL specialized static Font.TextStyleProvider.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *(a1 + 1);
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = a2[1];
  v8 = *(a2 + 16);
  v13 = *a1;
  v12 = v5;
  if (!specialized static Font.TextStyle.== infix(_:_:)(&v13, &v12))
  {
    return 0;
  }

  if (v2 == 4)
  {
    if (v6 != 4)
    {
      return 0;
    }
  }

  else if (v6 == 4 || v2 != v6)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    if (v3 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    return (v11 & 1) == 0;
  }

  return (v8 & 1) != 0;
}

BOOL specialized static Font.TextStyle.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 1:
      v2 = 1;
      break;
    case 2:
      v2 = 2;
      break;
    case 3:
      v2 = 3;
      break;
    case 4:
      v2 = 4;
      break;
    case 5:
      v2 = 5;
      break;
    case 6:
      v2 = 6;
      break;
    case 7:
      v2 = 7;
      break;
    case 8:
      v2 = 8;
      break;
    case 9:
      v2 = 9;
      break;
    case 0xA:
      v2 = 10;
      break;
    case 0xB:
    case 0xC:
    case 0xD:
LABEL_24:
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      JUMPOUT(0x18D0EA4ECLL);
    default:
      break;
  }

  switch(*a2)
  {
    case 1:
      v3 = 1;
      return v2 == v3;
    case 2:
      v3 = 2;
      return v2 == v3;
    case 3:
      v3 = 3;
      return v2 == v3;
    case 4:
      v3 = 4;
      return v2 == v3;
    case 5:
      v3 = 5;
      return v2 == v3;
    case 6:
      v3 = 6;
      return v2 == v3;
    case 7:
      v3 = 7;
      return v2 == v3;
    case 8:
      v3 = 8;
      return v2 == v3;
    case 9:
      v3 = 9;
      return v2 == v3;
    case 0xA:
      v3 = 10;
      return v2 == v3;
    case 0xB:
    case 0xC:
    case 0xD:
      goto LABEL_24;
    default:
      return v2 == v3;
  }
}

uint64_t specialized static Font.Context.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = *(a1 + 5);
  v4 = a2[1];
  v5 = *(a2 + 5);
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || a1[24] != a2[24] || ((a1[25] ^ a2[25]) & 1) != 0 || ((*(**(a1 + 4) + 112))(*(a2 + 4)) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(v3, v5);
}

uint64_t outlined consume of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t FontBox.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}