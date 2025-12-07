uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D0_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D0_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20FaceTimeMessageStore0F4TypeO_SayAC0F0CGtGMd, &_ss23_ContiguousArrayStorageCy20FaceTimeMessageStore0F4TypeO_SayAC0F0CGtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore0C4TypeO_SayAA0C0CGtMd, &_s20FaceTimeMessageStore0C4TypeO_SayAA0C0CGtMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15GroupCombinable_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit15GroupCombinable_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15GroupCombinable_pMd, &_s15ConversationKit15GroupCombinable_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit30ParticipantPresentationContextVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit30ParticipantPresentationContextVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 72 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 32 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV_So7CGPointVtGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV_So7CGPointVtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), uint64_t a8)
{
  v10 = a1;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_3();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      OUTLINED_FUNCTION_36_7(a1, a2, a3, a4, a5, a6);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 40);
      if (v10)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_11_11();
  if (!v12)
  {
    OUTLINED_FUNCTION_2_6();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.symbolRenderingMode : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(a1, &v6 - v4, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t key path setter for EnvironmentValues.imageScale : EnvironmentValues, serialized(uint64_t a1)
{
  type metadata accessor for Image.Scale();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(v4 - v3, a1);
  return EnvironmentValues.imageScale.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainiG0VQo_AeAEAFyQrqd__AaGRd__lFQOyAKyAKyAIyAKyAKyAA4TextVAA08_PaddingP0VGAPGGAA011_BackgroundG8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_ATQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainiG0VQo_AeAEAFyQrqd__AaGRd__lFQOyAKyAKyAIyAKyAKyAA4TextVAA08_PaddingP0VGAPGGAA011_BackgroundG8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_ATQo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMR);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<UIViewWrapper, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameG0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIViewWrapper, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIViewWrapper, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIViewWrapper, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type UIViewWrapper and conformance UIViewWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIViewWrapper, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIViewWrapper and conformance UIViewWrapper()
{
  result = lazy protocol witness table cache variable for type UIViewWrapper and conformance UIViewWrapper;
  if (!lazy protocol witness table cache variable for type UIViewWrapper and conformance UIViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIViewWrapper and conformance UIViewWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIViewWrapper and conformance UIViewWrapper;
  if (!lazy protocol witness table cache variable for type UIViewWrapper and conformance UIViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIViewWrapper and conformance UIViewWrapper);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindoView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FindoView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_ACyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAGyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAmA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA13_12MarqueeLabelVAA022_EnvironmentKeyWritingN0VyAMSgGGA39_y12CoreGraphics7CGFloatVGGA39_yAA4FontVSgGGA34_GA34_GA34_GA39_yAA0J6SchemeOGGAPGAA6SpacerVSgACyAGyACyA8_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA68_A10_yA10_yA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA66_13UIViewWrapperVA30_GG_AA16PlainButtonStyleVQo_A_AAEA70_yQrqd__AAA71_Rd__lFQOyACyACyA73_yACyACyAA4TextVA34_GA30_GGAA016_BackgroundStyleN0VyAMGGAA05_ClipS0VyAA7CapsuleVGG_A79_Qo_GAA05EmptyG0VGGGA34_GSg_ACyACyACyACyA_AAEA70_yQrqd__AAA71_Rd__lFQOyA73_yA82_G_AA28BorderedProminentButtonStyleVQo_A39_yAA03AnyH5StyleVSgGGA39_yAA11ControlSizeOGGA94_GAA016_ForegroundStyleN0VyAA012HierarchicalH5StyleVGGSgSgACyACyACyACyACyACyA22_A51_GA39_yAA19SymbolRenderingModeVSgGGA123_GA39_yA22_5ScaleOGGA34_GAA0y10AttachmentN0VGSgtGAA016_MatchedGeometryS0VySSGGtGG_Qo__Qo_A140_G_A66_015TranslationTextG0VSgSgtGGA34_GAA16_FlexFrameLayoutVGA66_017PlatterBackgroundN033_1D898AC1149277A8892BADF3129CBB17LLVGGA166_GAA010_AnimationN0VySbGGtGGA161_GMd,  &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_ACyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAGyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAmA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA13_12MarqueeLabelVAA022_EnvironmentKeyWritingN0VyAMSgGGA39_y12CoreGraphics7CGFloatVGGA39_yAA4FontVSgGGA34_GA34_GA34_GA39_yAA0J6SchemeOGGAPGAA6SpacerVSgACyAGyACyA8_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA68_A10_yA10_yA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA66_13UIViewWrapperVA30_GG_AA16PlainButtonStyleVQo_A_AAEA70_yQrqd__AAA71_Rd__lFQOyACyACyA73_yACyACyAA4TextVA34_GA30_GGAA016_BackgroundStyleN0VyAMGGAA05_ClipS0VyAA7CapsuleVGG_A79_Qo_GAA05EmptyG0VGGGA34_GSg_ACyACyACyACyA_AAEA70_yQrqd__AAA71_Rd__lFQOyA73_yA82_G_AA28BorderedProminentButtonStyleVQo_A39_yAA03AnyH5StyleVSgGGA39_yAA11ControlSizeOGGA94_GAA016_ForegroundStyleN0VyAA012HierarchicalH5StyleVGGSgSgACyACyACyACyACyACyA22_A51_GA39_yAA19SymbolRenderingModeVSgGGA123_GA39_yA22_5ScaleOGGA34_GAA0y10AttachmentN0VGSgtGAA016_MatchedGeometryS0VySSGGtGG_Qo__Qo_A140_G_A66_015TranslationTextG0VSgSgtGGA34_GAA16_FlexFrameLayoutVGA66_017PlatterBackgroundN033_1D898AC1149277A8892BADF3129CBB17LLVGGA166_GAA010_AnimationN0VySbGGtGGA161_GMR);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>( &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>> and conformance ZStack<A>,  &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_AGyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyAGyAGyAGyAA6VStackVyAEyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAEyAGyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAmA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAGyA13_12MarqueeLabelVAA022_EnvironmentKeyWritingN0VyAMSgGGA39_y12CoreGraphics7CGFloatVGGA39_yAA4FontVSgGGA34_GA34_GA34_GA39_yAA0J6SchemeOGGAPGAA6SpacerVSgAGyAEyAGyA8_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA68_A10_yA10_yA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyA66_13UIViewWrapperVA30_GG_AA16PlainButtonStyleVQo_A_AAEA70_yQrqd__AAA71_Rd__lFQOyAGyAGyA73_yAGyAGyAA4TextVA34_GA30_GGAA016_BackgroundStyleN0VyAMGGAA05_ClipS0VyAA7CapsuleVGG_A79_Qo_GAA05EmptyE0VGGGA34_GSg_AGyAGyAGyAGyA_AAEA70_yQrqd__AAA71_Rd__lFQOyA73_yA82_G_AA28BorderedProminentButtonStyleVQo_A39_yAA03AnyH5StyleVSgGGA39_yAA11ControlSizeOGGA94_GAA016_ForegroundStyleN0VyAA012HierarchicalH5StyleVGGSgSgAGyAGyAGyAGyAGyAGyA22_A51_GA39_yAA19SymbolRenderingModeVSgGGA123_GA39_yA22_5ScaleOGGA34_GAA0y10AttachmentN0VGSgtGAA016_MatchedGeometryS0VySSGGtGG_Qo__Qo_A140_G_A66_015TranslationTextE0VSgSgtGGA34_GAA16_FlexFrameLayoutVGA66_017PlatterBackgroundN033_1D898AC1149277A8892BADF3129CBB17LLVGGA166_GAA010_AnimationN0VySbGGtGGMd,  &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_AGyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyAGyAGyAGyAA6VStackVyAEyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAEyAGyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAmA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAGyA13_12MarqueeLabelVAA022_EnvironmentKeyWritingN0VyAMSgGGA39_y12CoreGraphics7CGFloatVGGA39_yAA4FontVSgGGA34_GA34_GA34_GA39_yAA0J6SchemeOGGAPGAA6SpacerVSgAGyAEyAGyA8_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA68_A10_yA10_yA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyA66_13UIViewWrapperVA30_GG_AA16PlainButtonStyleVQo_A_AAEA70_yQrqd__AAA71_Rd__lFQOyAGyAGyA73_yAGyAGyAA4TextVA34_GA30_GGAA016_BackgroundStyleN0VyAMGGAA05_ClipS0VyAA7CapsuleVGG_A79_Qo_GAA05EmptyE0VGGGA34_GSg_AGyAGyAGyAGyA_AAEA70_yQrqd__AAA71_Rd__lFQOyA73_yA82_G_AA28BorderedProminentButtonStyleVQo_A39_yAA03AnyH5StyleVSgGGA39_yAA11ControlSizeOGGA94_GAA016_ForegroundStyleN0VyAA012HierarchicalH5StyleVGGSgSgAGyAGyAGyAGyAGyAGyA22_A51_GA39_yAA19SymbolRenderingModeVSgGGA123_GA39_yA22_5ScaleOGGA34_GAA0y10AttachmentN0VGSgtGAA016_MatchedGeometryS0VySSGGtGG_Qo__Qo_A140_G_A66_015TranslationTextE0VSgSgtGGA34_GAA16_FlexFrameLayoutVGA66_017PlatterBackgroundN033_1D898AC1149277A8892BADF3129CBB17LLVGGA166_GAA010_AnimationN0VySbGGtGGMR,  MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMd,  &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMR);
    lazy protocol witness table accessor for type StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance <> StaticIf<A, B, C>();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance <> StaticIf<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyAA15ModifiedContentVyAIyAIyAA6VStackVyAA9TupleViewVyAIyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyAIyAA012_ConditionalJ0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGAIyAIyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AIyAIyAIyAIyAIyAIyAIyAIyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAIyAMyAIyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyAIyAIyA65_yAIyAIyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipG0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_AIyAIyAIyAIyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAIyAIyAIyAIyAIyAIyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryG0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GMd, &_s7SwiftUI8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyAA15ModifiedContentVyAIyAIyAA6VStackVyAA9TupleViewVyAIyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyAIyAA012_ConditionalJ0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGAIyAIyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AIyAIyAIyAIyAIyAIyAIyAIyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAIyAMyAIyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyAIyAIyA65_yAIyAIyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipG0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_AIyAIyAIyAIyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAIyAIyAIyAIyAIyAIyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryG0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GMR);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>( &lazy protocol witness table cache variable for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>,  &_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMd,  &_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMR,  MEMORY[0x1E697FD98]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<IDView<AvatarStackView, [UUID]>, ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<IDView<AvatarStackView, [UUID]>, ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<IDView<AvatarStackView, [UUID]>, ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGAA08ModifiedD0VyAOyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGAA08ModifiedD0VyAOyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGMR);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type IDView<AvatarStackView, [UUID]> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGMd, &_s7SwiftUI6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGMR, MEMORY[0x1E6981810]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<IDView<AvatarStackView, [UUID]>, ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TranslationTextView?? and conformance <A> A?(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_39_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TranslationTextView and conformance TranslationTextView()
{
  result = lazy protocol witness table cache variable for type TranslationTextView and conformance TranslationTextView;
  if (!lazy protocol witness table cache variable for type TranslationTextView and conformance TranslationTextView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranslationTextView and conformance TranslationTextView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainiG0VQo_AeAEAFyQrqd__AaGRd__lFQOyAKyAKyAIyAKyAKyAA4TextVAA08_PaddingP0VGAPGGAA011_BackgroundG8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_ATQo_GAA05EmptyE0VGMd, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainiG0VQo_AeAEAFyQrqd__AaGRd__lFQOyAKyAKyAIyAKyAKyAA4TextVAA08_PaddingP0VGAPGGAA011_BackgroundG8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_ATQo_GAA05EmptyE0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata completion function for PlatterBackgroundModifier(uint64_t a1)
{
  type metadata accessor for CGFloat?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for _Glass?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
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

void type metadata accessor for _Glass?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _Glass?)
  {
    type metadata accessor for _Glass();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _Glass?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyShape and conformance AnyShape()
{
  result = lazy protocol witness table cache variable for type AnyShape and conformance AnyShape;
  if (!lazy protocol witness table cache variable for type AnyShape and conformance AnyShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyShape and conformance AnyShape);
  }

  return result;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEy014CommunicationsB0027CallTranslationLanguagePairE0V_AA15ModifiedContentVyALyALyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyALyAA06ScrollE0VyALyACyALyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEy014CommunicationsB0027CallTranslationLanguagePairE0V_AA15ModifiedContentVyALyALyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyALyAA06ScrollE0VyALyACyALyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGMR, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return v4;
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_39_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of IDView<AvatarStackView, [UUID]>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return v4;
}

uint64_t outlined destroy of IDView<AvatarStackView, [UUID]>(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_39_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, <<opaque return type of View.materialEffect(_:in:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, <<opaque return type of View.materialEffect(_:in:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, <<opaque return type of View.materialEffect(_:in:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12_glassEffect_2inQrAA6_GlassV_qd__tAA5ShapeRd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit017PlatterBackgroundK033_1D898AC1149277A8892BADF3129CBB17LLVG_AA03AnyJ0VQo_AeAE08materialG0_AGQrAA8MaterialV_AA01_J3SetVtFQOyAQ_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12_glassEffect_2inQrAA6_GlassV_qd__tAA5ShapeRd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit017PlatterBackgroundK033_1D898AC1149277A8892BADF3129CBB17LLVG_AA03AnyJ0VQo_AeAE08materialG0_AGQrAA8MaterialV_AA01_J3SetVtFQOyAQ_Qo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMR);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PlatterBackgroundModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMR, MEMORY[0x1E697FDF8]);
    lazy protocol witness table accessor for type AnyShape and conformance AnyShape();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View._glassEffect<A>(_:in:)>>.0, <<opaque return type of View.materialEffect(_:in:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t InCallControlsViewConstraintManager.type.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return InCallControlsViewConstraintManager.updateConstraints()();
}

uint64_t (*InCallControlsViewConstraintManager.type.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return InCallControlsViewConstraintManager.type.modify;
}

uint64_t InCallControlsViewConstraintManager.type.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return InCallControlsViewConstraintManager.updateConstraints()();
  }

  return result;
}

uint64_t InCallControlsViewConstraintManager.__allocating_init(containingGuide:containingView:controlsView:type:)(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  InCallControlsViewConstraintManager.init(containingGuide:containingView:controlsView:type:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t InCallControlsViewConstraintManager.init(containingGuide:containingView:controlsView:type:)(void *a1, void *a2, id a3, uint64_t a4, char a5)
{
  *(v5 + 64) = MEMORY[0x1E69E7CC0];
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  v8 = [a3 topAnchor];
  v9 = [a1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-157.0];

  *(v5 + 56) = v10;
  v11 = [a3 heightAnchor];
  v12 = [a1 widthAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v5 + 40) = v13;
  v14 = [a3 topAnchor];
  v15 = OUTLINED_FUNCTION_1_33([a1 topAnchor]);

  *(v5 + 48) = v15;
  v16 = [a3 leadingAnchor];
  v17 = OUTLINED_FUNCTION_1_33([a1 leadingAnchor]);

  *(v5 + 16) = v17;
  v18 = [a3 bottomAnchor];
  v19 = OUTLINED_FUNCTION_1_33([a1 bottomAnchor]);

  *(v5 + 24) = v19;
  v20 = [a3 widthAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v5 + 32) = v21;
  InCallControlsViewConstraintManager.updateConstraints()();

  return v5;
}

void InCallControlsViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)(uint64_t a1)
{
  switch(*(a1 + 8))
  {
    case 0:
      OUTLINED_FUNCTION_0_1();
      v4 = *(v8 + 176);
      v5 = 0;
      goto LABEL_8;
    case 1:
      OUTLINED_FUNCTION_0_1();
      v4 = *(v9 + 176);
      v5 = 1;
LABEL_8:
      v7 = 2;
      goto LABEL_9;
    case 2:
      OUTLINED_FUNCTION_0_1();
      v4 = *(v3 + 176);
      v5 = 0x404D000000000000;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_0_1();
      v4 = *(v6 + 176);
      v5 = 0x4052C00000000000;
LABEL_5:
      v7 = 0;
LABEL_9:
      v4(v5, v7);
      goto LABEL_10;
    case 4:
    case 5:
    case 6:
      OUTLINED_FUNCTION_0_1();
      (*(v1 + 176))(v2, 1);
LABEL_10:

      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }
}

uint64_t InCallControlsViewConstraintManager.updateConstraints()()
{
  OUTLINED_FUNCTION_0_1();
  v2 = COERCE_DOUBLE((*(v1 + 168))());
  if (!v3)
  {
    v9 = v0[7];
    [v9 setConstant_];
    goto LABEL_9;
  }

  if (v3 != 1)
  {
    v9 = v0[7];
    if (v2 == 0.0)
    {
      Layout.MultiwayFaceTime.init()(v20);
      [v9 setConstant_];
      v17 = v0[3];
      Layout.MultiwayFaceTime.init()(v22);
      [v17 setConstant_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1BC4BA7F0;
      v8 = v0[2];
      *(v18 + 32) = v9;
      *(v18 + 40) = v8;
      v5 = v0[4];
      *(v18 + 48) = v5;
      *(v18 + 56) = v17;
      v0[8] = v18;
      v19 = v9;
      v9 = v17;
      goto LABEL_10;
    }

    [v9 setConstant_];
LABEL_9:
    v8 = v0[3];
    [v8 setConstant_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BA7F0;
    v11 = v0[2];
    *(v10 + 32) = v11;
    *(v10 + 40) = v8;
    v5 = v0[4];
    *(v10 + 48) = v5;
    *(v10 + 56) = v9;
    v0[8] = v10;
    v12 = v11;
    goto LABEL_10;
  }

  v4 = 6;
  if (((*&v2 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v4 = 5;
  }

  v5 = v0[3];
  v6 = v0[v4];
  [v5 setConstant_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA7F0;
  v8 = v0[2];
  *(v7 + 32) = v8;
  *(v7 + 40) = v5;
  v9 = v0[4];
  *(v7 + 48) = v9;
  *(v7 + 56) = v6;
  v0[8] = v7;
LABEL_10:
  v13 = v8;
  v14 = v5;
  v15 = v9;
}

uint64_t InCallControlsViewConstraintManager.__deallocating_deinit()
{
  InCallControlsViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for InCallControlsViewConstraintManager.InCallControlsLayoutType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InCallControlsViewConstraintManager.InCallControlsLayoutType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTag for InCallControlsViewConstraintManager.InCallControlsLayoutType(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for InCallControlsViewConstraintManager.InCallControlsLayoutType(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t key path getter for InCallControlsBaseCell.isEnabled : InCallControlsBaseCell@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result & 1;
  return result;
}

void InCallControlsBaseCell.isEnabled.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isEnabled;
  v4 = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    InCallControlsBaseCell.updateViews()(v4);
  }
}

uint64_t InCallControlsBaseCell.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void InCallControlsBaseCell.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  InCallControlsBaseCell.isEnabled.didset(v4);
}

void (*InCallControlsBaseCell.isEnabled.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isEnabled;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return InCallControlsBaseCell.isEnabled.modify;
}

void InCallControlsBaseCell.isEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  InCallControlsBaseCell.isEnabled.setter(*(*a1 + 32));

  free(v1);
}

uint64_t key path getter for InCallControlsBaseCell.delegate : InCallControlsBaseCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlsBaseCell.delegate : InCallControlsBaseCell(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t InCallControlsBaseCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsBaseCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

void InCallControlsBaseCell.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
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
    swift_unknownObjectRelease();
  }

  free(v3);
}

id InCallControlsBaseCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *InCallControlsBaseCell.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_20_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v98 - v3;
  v5 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_titleLabel;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_button;
  v7 = type metadata accessor for InCallControlButton();
  v102 = 0;
  memset(v101, 0, sizeof(v101));
  *(v1 + v6) = OUTLINED_FUNCTION_10_7(v7, v101, v8, v9, v10, v11, v12, v13, 1, 0);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isAccessiblityConstraintsEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelFirstBaselineLayoutConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelLastBaselineLayoutConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v14 = type metadata accessor for InCallControlsBaseCell();
  v99 = v1;
  v100 = v14;
  v15 = OUTLINED_FUNCTION_18_1();
  v18 = objc_msgSendSuper2(v16, v17, v15);
  if (static Platform.current.getter() == 2)
  {
    static UIBackgroundConfiguration.listPlainCell()();
    v19 = [objc_opt_self() clearColor];
    UIBackgroundConfiguration.backgroundColor.setter();
  }

  else
  {
    static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  }

  v20 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v20);
  MEMORY[0x1BFB216F0](v4);
  [v18 setAutomaticallyUpdatesBackgroundConfiguration_];
  v21 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_titleLabel;
  v22 = *&v18[OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_titleLabel];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 conversationKit];
  v103._object = 0xE000000000000000;
  v26.value._countAndFlagsBits = 0x61737265766E6F43;
  v26.value._object = 0xEF74694B6E6F6974;
  v27._object = 0x80000001BC4F3490;
  v27._countAndFlagsBits = 0xD000000000000011;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v103._countAndFlagsBits = 0;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v103);

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v29._countAndFlagsBits, v29._object, v24);
  v30 = one-time initialization token for tableViewCellTitleLabel;
  v31 = *&v18[v21];
  if (v30 != -1)
  {
    swift_once();
  }

  [v31 setTextColor_];

  v32 = *&v18[v21];
  v33 = objc_opt_self();
  v34 = *MEMORY[0x1E69DDCF8];
  v35 = v32;
  v36 = [v33 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  [v35 setFont_];
  [*&v18[v21] setAdjustsFontForContentSizeCategory_];
  v38 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_button;
  v39 = *&v18[OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_button];
  [v39 addTarget:v18 action:sel_didTapButton_ forControlEvents:64];

  v98[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  v41 = *&v18[v21];
  *(inited + 32) = v41;
  v42 = *&v18[v38];
  *(inited + 40) = v42;
  v43 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v96 = v41;
    v97 = v42;
    v47 = MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v44 = *(inited + 32);
    v45 = v41;
    v46 = v42;
    v47 = v44;
  }

  v48 = v47;
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  v49 = [v18 contentView];
  [v49 addSubview_];

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v43 == 0, inited);
  if (v43)
  {
    v50 = MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v50 = *(inited + 40);
  }

  v51 = v50;

  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  v52 = [v18 contentView];
  [v52 addSubview_];

  v53 = [*&v18[v21] firstBaselineAnchor];
  v54 = [v18 contentView];
  v55 = [v54 topAnchor];

  v56 = [v53 constraintEqualToAnchor_];
  v57 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelFirstBaselineLayoutConstraint;
  v58 = *&v18[OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelFirstBaselineLayoutConstraint];
  *&v18[OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelFirstBaselineLayoutConstraint] = v56;

  v59 = [v18 contentView];
  v60 = [v59 bottomAnchor];

  v61 = [*&v18[v21] lastBaselineAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  v63 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelLastBaselineLayoutConstraint;
  v64 = *&v18[OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelLastBaselineLayoutConstraint];
  *&v18[OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelLastBaselineLayoutConstraint] = v62;

  InCallControlsBaseCell.updateConstraintsConstants()();
  result = swift_allocObject();
  *(result + 1) = xmmword_1BC4BC370;
  v66 = *&v18[v57];
  if (v66)
  {
    v67 = result;
    *(result + 4) = v66;
    v68 = *&v18[v63];
    if (v68)
    {
      *(result + 5) = v68;
      v69 = *&v18[v21];
      v70 = v66;
      v71 = v68;
      v72 = [v69 trailingAnchor];
      v73 = [v18 contentView];
      v74 = [v73 trailingAnchor];

      v98[0] = v21;
      v75 = [v72 constraintEqualToAnchor:v74 constant:-10.0];

      *(v67 + 48) = v75;
      *&v101[0] = v67;
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_1BC4BA7F0;
      v77 = [*&v18[v38] leadingAnchor];
      v78 = [v18 &selRef_virtualDeviceSwitchOverVideoZoomFactors];
      v79 = [v78 leadingAnchor];

      v80 = [v77 &selRef_uniqueProxyIdentifier + 6];
      *(v76 + 32) = v80;
      v81 = [*&v18[v38] centerYAnchor];
      v82 = v18;
      v83 = [v82 &selRef_virtualDeviceSwitchOverVideoZoomFactors];
      v84 = [v83 centerYAnchor];

      v85 = [v81 constraintEqualToAnchor_];
      *(v76 + 40) = v85;
      v86 = [*&v18[v98[0]] leadingAnchor];
      v87 = [*&v18[v38] trailingAnchor];
      v88 = [v86 &selRef_uniqueProxyIdentifier + 6];

      *(v76 + 48) = v88;
      v89 = [v82 separatorLayoutGuide];

      v90 = [v89 leadingAnchor];
      v91 = [v82 contentView];

      v92 = [v91 leadingAnchor];
      v93 = [v90 constraintEqualToAnchor_];

      *(v76 + 56) = v93;
      specialized Array.append<A>(contentsOf:)(v76, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
      v94 = objc_opt_self();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      v95 = Array._bridgeToObjectiveC()().super.isa;

      [v94 activateConstraints_];

      return v82;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = specialized Array.count.getter();
  v9 = __OFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v10, 1);
  v11 = *v4;
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v11;
      return;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_4_14();
  if (v12 < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSmartHoldingEvent, 0x1E69D8CE0);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v14;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

id InCallControlsBaseCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsBaseCell.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_titleLabel;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_button;
  v4 = type metadata accessor for InCallControlButton();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  *(v1 + v3) = OUTLINED_FUNCTION_10_7(v4, v11, v5, v6, v7, v8, v9, v10, 1, 0);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isAccessiblityConstraintsEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelFirstBaselineLayoutConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelLastBaselineLayoutConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t InCallControlsBaseCell.didTapButton(_:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id InCallControlsBaseCell.updateViews()(uint64_t a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.conversationKit;
  v3 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA940;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  v5();
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  os_log(_:dso:log:type:_:)("Updating views with isEnabled = %@", 34, 2, &dword_1BBC58000, v2, v3, v4);

  v10 = [*(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_titleLabel) setEnabled_];
  v11 = [*(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_button) setEnabled_];
  return [v1 setUserInteractionEnabled_];
}

Swift::Void __swiftcall InCallControlsBaseCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for InCallControlsBaseCell();
  objc_msgSendSuper2(&v22, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v4 = [v3 preferredContentSizeCategory];
  v5 = v4;
  if (isa)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v6 == v9 && v8 == v10)
    {

LABEL_21:

      return;
    }

    v12 = OUTLINED_FUNCTION_15_4(v9);

    if (v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v13 = [v3 preferredContentSizeCategory];
  v14 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (!isa)
  {
    goto LABEL_17;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v15 == v18 && v17 == v19)
  {
  }

  else
  {
    v21 = OUTLINED_FUNCTION_15_4(v18);

    if ((v21 & 1) == 0)
    {
LABEL_17:
      if ((v14 & 1) != *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isAccessiblityConstraintsEnabled))
      {
        *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isAccessiblityConstraintsEnabled) = v14 & 1;
      }

      InCallControlsBaseCell.updateConstraintsConstants()();

      return;
    }
  }

  if ((v14 & 1) != *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isAccessiblityConstraintsEnabled))
  {
    *(v1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_isAccessiblityConstraintsEnabled) = v14 & 1;
  }
}

void InCallControlsBaseCell.updateConstraintsConstants()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelFirstBaselineLayoutConstraint);
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_titleLabel);
  v4 = v1;
  v5 = [v3 font];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  NSLayoutConstraint.setConstant(_:scaledToFont:)(v5, 36.0);

  v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_nameLabelLastBaselineLayoutConstraint);
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v3 font];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  NSLayoutConstraint.setConstant(_:scaledToFont:)(v9, 24.0);
}

id InCallControlsBaseCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InCallControlsBaseCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void outlined bridged method (mbnn) of @objc UILabel.text.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setText_];
}

uint64_t outlined init with take of Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id SystemApertureEmptyTrailingView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id SystemApertureEmptyTrailingView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  swift_getObjectType();
  v17 = v0;
  v18 = type metadata accessor for SystemApertureEmptyTrailingView();
  v1 = OUTLINED_FUNCTION_18_1();
  v4 = objc_msgSendSuper2(v2, v3, v1);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_3_23(&dword_1BBC58000, v13, v14, "[SystemAperture] %{public}s created");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  return v4;
}

id SystemApertureEmptyTrailingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SystemApertureEmptyTrailingView.__deallocating_deinit()
{
  v1 = v0;
  swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_3_23(&dword_1BBC58000, v10, v11, "[SystemAperture] %{public}s deinit");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v12 = type metadata accessor for SystemApertureEmptyTrailingView();
  v15.receiver = v1;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

CGSize __swiftcall SystemApertureEmptyTrailingView.sizeThatFits(_:)(CGSize a1)
{
  v1 = 1.0;
  v2 = 1.0;
  result.height = v2;
  result.width = v1;
  return result;
}

uint64_t *SystemApertureIconFactory.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
  }

  return &static SystemApertureIconFactory.shared;
}

uint64_t SystemApertureIconFactory.makeStatusIcon(with:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v5 = a2;
    v6 = a1;
  }

  else
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x2A0))(0, a2);
    v5 = v7;
  }

  v8 = *((*v4 & *a3) + 0x2C0);
  v9 = swift_unknownObjectRetain();
  if (v8(v9))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  OUTLINED_FUNCTION_17_15();
  SystemApertureIconFactory.makeStatusIcon(for:conversation:)(v6, v5, v10, v11);
  swift_unknownObjectRelease();
  return outlined destroy of TapInteractionHandler?(v13, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
}

uint64_t SystemApertureIconFactory.__allocating_init(callScreeningService:features:)(void *a1, void *a2)
{
  v6 = swift_allocObject();
  v8 = a1[3];
  v7 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v11 = OUTLINED_FUNCTION_14_8(v10);
  v12(v11);
  v13 = a2[3];
  v14 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v17 = OUTLINED_FUNCTION_13_19(v16);
  v18(v17);
  v19 = specialized SystemApertureIconFactory.init(callScreeningService:features:)(v2, v3, v6, v8, v13, v7, v14);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

uint64_t static SystemApertureIconFactory.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
  }
}

void SystemApertureIconFactory.CallDescriptor.statusSymbolAssetPackage.getter(void *a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {
    if (one-time initialization token for faceTimeVideo != -1)
    {
      OUTLINED_FUNCTION_5_10();
      swift_once();
    }

    v3 = &static AssetPackageDescriptor.faceTimeVideo;
  }

  else
  {
    if (*(v1 + 8))
    {
      v5 = 0;
      v4 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_11;
    }

    if (one-time initialization token for phoneInCall != -1)
    {
      OUTLINED_FUNCTION_6_18();
      swift_once();
    }

    v3 = &static AssetPackageDescriptor.phoneInCall;
  }

  v5 = *v3;
  v4 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);

  v9 = v6;
LABEL_11:
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
}

uint64_t SystemApertureIconFactory.CallDescriptor.statusSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActivitySymbol();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  switch(*(v1 + 8))
  {
    case 2:
LABEL_6:

      result = static ActivitySymbol.system(_:)();
      break;
    case 3:
      ActivitySymbol.init(stringLiteral:)();
      result = (*(v5 + 32))(a1, v9, v3);
      break;
    case 4:
      switch(*v1)
      {
        case 3:
          goto LABEL_6;
        case 7:

          result = static ActivitySymbol.callScreeningActive.getter();
          break;
        default:
          goto LABEL_3;
      }

      break;
    default:
LABEL_3:

      result = ActivitySymbol.init(stringLiteral:)();
      break;
  }

  return result;
}

id SystemApertureIconFactory.CallDescriptor.statusSymbolTintColor.getter()
{
  switch(*(v0 + 8))
  {
    case 2:
      v3 = *v0;
      v1 = objc_opt_self();
      v2 = &selRef_systemGreenColor;
      if (v3 == 14)
      {
        v2 = &selRef_systemGrayColor;
      }

      break;
    case 3:
LABEL_4:
      v1 = objc_opt_self();
      v2 = &selRef_systemGrayColor;
      break;
    case 4:
      switch(*v0)
      {
        case 2:
          v1 = objc_opt_self();
          v2 = &selRef_systemIndigoColor;
          break;
        case 3:
        case 8:
          goto LABEL_2;
        case 5:
          v1 = objc_opt_self();
          v2 = &selRef_systemBlueColor;
          break;
        default:
          goto LABEL_4;
      }

      break;
    default:
LABEL_2:
      v1 = objc_opt_self();
      v2 = &selRef_systemGreenColor;
      break;
  }

  v4 = [v1 *v2];

  return v4;
}

const char *SystemApertureIconFactory.CallDescriptor.symbolAccessibilityLabel.getter()
{
  switch(v1[8])
  {
    case 1:
    case 3:
LABEL_2:
      v2 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_8;
    case 2:
LABEL_4:
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v18._object = 0xE000000000000000;
      v7._countAndFlagsBits = 0x414C504552414853;
      v7._object = 0xE900000000000059;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(v7, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v8, v18)._countAndFlagsBits;
    case 4:
      switch(*v1)
      {
        case 3:
          goto LABEL_4;
        case 4:
          v1 = "LIVE_VOICEMAIL_INDICATOR";
          v0 = [objc_opt_self() conversationKit];
          v17 = 0xE000000000000000;
          OUTLINED_FUNCTION_5_5();
          goto LABEL_14;
        case 6:
          v1 = "CALL_SCREENING_INDICATOR";
          v13 = [objc_opt_self() conversationKit];
          goto LABEL_12;
        case 7:
          v1 = "GREENTEA3P_GROUP_CONVERSATION";
          v13 = [objc_opt_self() conversationKit];
LABEL_12:
          v14 = v13;
          OUTLINED_FUNCTION_4_15();
          OUTLINED_FUNCTION_5_5();
          v4 = v1 | 0x8000000000000000;
          v3 = 0xD000000000000018;
          break;
        case 8:
          v1 = "rectangle.on.rectangle";
          v0 = [objc_opt_self() conversationKit];
          v17 = 0xE000000000000000;
          OUTLINED_FUNCTION_5_5();
          v3 = v16 | v15;
LABEL_14:
          v4 = v1 | 0x8000000000000000;
          break;
        default:
          goto LABEL_2;
      }

      goto LABEL_8;
    default:
      v10 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v3 = 1280065859;
      v4 = 0xE400000000000000;
LABEL_8:
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      v12 = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v5, v0, v11, *(&v17 - 1));
      OUTLINED_FUNCTION_18_8();

      return v1;
  }
}

double SystemApertureIconFactory.CallDescriptor.leadingOffsetForConcentricWhenCompact.getter()
{
  v0 = type metadata accessor for ActivitySymbol();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v5 - v4);
  v7 = ActivitySymbol.name.getter();
  v9 = v8;
  (*(v2 + 8))(v6, v0);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  v11 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SystemApertureIconFactory.SymbolIcon.init(rawValue:), v10);

  result = 0.0;
  if (!v11)
  {
    return 3.0;
  }

  return result;
}

void SystemApertureIconFactory.CallDescriptor.statusIcon.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActivitySymbol.BundleType();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  type metadata accessor for ActivitySymbol();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v92[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v92[-v21];
  v23 = *v1;
  v24 = *(v1 + 8);
  v100 = a1;
  if (v24 == 1)
  {
    v25 = v19;
    if (one-time initialization token for faceTimeVideo != -1)
    {
      OUTLINED_FUNCTION_5_10();
      v91 = v90;
      swift_once();
      v24 = v91;
    }

    v26 = &static AssetPackageDescriptor.faceTimeVideo;
    goto LABEL_9;
  }

  if (!v24)
  {
    v25 = v19;
    if (one-time initialization token for phoneInCall != -1)
    {
      OUTLINED_FUNCTION_6_18();
      v89 = v88;
      swift_once();
      v24 = v89;
    }

    v26 = &static AssetPackageDescriptor.phoneInCall;
LABEL_9:
    v27 = v26[3];
    v28 = v26[4];
    v30 = v26[1];
    v29 = v26[2];
    v98 = *v26;
    v99 = v27;
    v106 = v23;
    v107 = v24;
    v31 = v23;
    v32 = v24;

    v97 = v29;

    v33 = SystemApertureIconFactory.CallDescriptor.symbolAccessibilityLabel.getter();
    v95 = v34;
    v96 = v33;
    v104 = v31;
    v105 = v32;
    SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v22);
    ActivitySymbol.name.getter();
    OUTLINED_FUNCTION_18_8();
    v35 = *(v11 + 8);
    v35(v22, v25);
    v36._countAndFlagsBits = v22;
    v36._object = v5;
    v37 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SystemApertureIconFactory.SymbolIcon.init(rawValue:), v36);

    if (v37)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = 3.0;
    }

    v39 = v32 == 1;
    v104 = v31;
    v105 = v32;
    v40 = v101;
    SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v101);
    type metadata accessor for SystemApertureIcon(0);
    OUTLINED_FUNCTION_16_19();
    ActivitySymbol.animation.getter();
    v35(v40, v25);
    v41 = v97;
    *v31 = v98;
    *(v31 + 8) = v30;
    v42 = v99;
    *(v31 + 16) = v41;
    *(v31 + 24) = v42;
    *(v31 + 32) = v28;
    *(v31 + 40) = 1;
    v43 = v95;
    *(v31 + 48) = v96;
    *(v31 + 56) = v43;
    *(v31 + 64) = v39;
LABEL_13:
    *(v31 + 72) = v38;
    *(v31 + 80) = 0;
    v44 = v31;
    v45 = 0;
    v46 = 1;
    v47 = v5;
    goto LABEL_14;
  }

  v98 = v20;
  v106 = v23;
  v107 = v24;
  v48 = v23;
  v49 = v24;
  v50 = v19;
  SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v15);
  ActivitySymbol.bundle.getter();
  v52 = v11 + 8;
  v51 = *(v11 + 8);
  v51(v15, v50);
  v53 = (v5[11])(v9, v3);
  v54 = *MEMORY[0x1E6995DF0];
  v99 = v52;
  v93 = v49;
  v94 = v50;
  if (v53 == v54)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v104 = v48;
    v105 = v49;
    v55 = v101;
    SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v101);
    v5 = ActivitySymbol.name.getter();
    v57 = v56;
    v51(v55, v50);
    v102 = v48;
    v103 = v49;
    v58 = SystemApertureIconFactory.CallDescriptor.statusSymbolTintColor.getter();
    v59 = [objc_opt_self() configurationWithHierarchicalColor_];

    v60 = @nonobjc UIImage.init(_systemName:withConfiguration:)(v5, v57, v59);
    v61 = v48;
    if (!v60)
    {
      goto LABEL_26;
    }

LABEL_20:
    v106 = v61;
    v70 = v93;
    v107 = v93;
    v71 = v60;
    v97 = SystemApertureIconFactory.CallDescriptor.symbolAccessibilityLabel.getter();
    v73 = v72;
    v104 = v61;
    v105 = v70;
    v31 = v98;
    SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v98);
    ActivitySymbol.name.getter();
    OUTLINED_FUNCTION_18_8();
    v51(v31, v94);
    v74._countAndFlagsBits = v31;
    v74._object = v5;
    v75 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SystemApertureIconFactory.SymbolIcon.init(rawValue:), v74);

    if (v75)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = 3.0;
    }

    if ((v70 - 2) >= 2)
    {
      if (v70 != 4 || v61 >= 0xA)
      {
        LOBYTE(v76) = 0;
      }

      else
      {
        v76 = 0x2DEu >> v61;
      }
    }

    else
    {
      LOBYTE(v76) = 1;
    }

    v104 = v61;
    v105 = v70;
    v87 = v101;
    SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v101);
    type metadata accessor for SystemApertureIcon(0);
    OUTLINED_FUNCTION_16_19();
    ActivitySymbol.animation.getter();

    v51(v87, v94);
    *v31 = v60;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0;
    *(v31 + 48) = v97;
    *(v31 + 56) = v73;
    *(v31 + 64) = v76 & 1;
    goto LABEL_13;
  }

  if (v53 == *MEMORY[0x1E6995DE8])
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v61 = v48;
    v104 = v48;
    v62 = v93;
    v105 = v93;
    v63 = v101;
    SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v101);
    v64 = ActivitySymbol.name.getter();
    v66 = v65;
    v51(v63, v94);
    type metadata accessor for ParticipantLabelViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v102 = v48;
    v103 = v62;
    v68 = SystemApertureIconFactory.CallDescriptor.statusSymbolTintColor.getter();
    v69 = [objc_opt_self() configurationWithHierarchicalColor_];

    v60 = @nonobjc UIImage.__allocating_init(named:in:with:)(v64, v66, v5, v69);
    if (v60)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v77 = v5[1];
    ++v5;
    v77(v9, v3);
    v61 = v48;
  }

LABEL_26:
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, &static Logger.conversationControls);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v104 = v82;
    *v81 = 136315138;
    v106 = v61;
    v107 = v93;
    v83 = v101;
    SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v101);
    lazy protocol witness table accessor for type ActivitySymbol and conformance ActivitySymbol();
    v84 = v94;
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_18_8();
    v51(v83, v84);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v5, &v104);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_1BBC58000, v79, v80, "Unable to find image for status: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_10_0();
LABEL_14:
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  OUTLINED_FUNCTION_20_6();
}

uint64_t SystemApertureIconFactory.CallDescriptor.wantsPillForDetachedAppearance.getter()
{
  v1 = *(v0 + 8);
  if ((v1 - 1) >= 3)
  {
    if (v1 == 4 && *v0 < 0xAuLL)
    {
      v2 = 0x2DEu >> *v0;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

id @nonobjc UIImage.init(_systemName:withConfiguration:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];

  return v5;
}

id @nonobjc UIImage.__allocating_init(named:in:with:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = MEMORY[0x1BFB209B0](a1);

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 withConfiguration:a4];

  return v7;
}

void SystemApertureIconFactory.CallDescriptor.activityIcon.getter(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = type metadata accessor for ActivitySymbol();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = *(v1 + 8);
  if (v11 <= 2)
  {
    v12 = *v1;
    v13 = 0xEA00000000006574;
    v14 = 0x6F6E2E636973756DLL;
    switch(*v1)
    {
      case 1u:
      case 2u:
        v13 = 0xE300000000000000;
        v14 = 6516580;
        break;
      case 3u:
        break;
      case 4u:
        v13 = 0xE700000000000000;
        v14 = 0x76742E79616C70;
        break;
      case 5u:
        v13 = 0xEA00000000006E75;
        v14 = 0x722E657275676966;
        break;
      case 6u:
      case 0xDu:
        v14 = 0xD000000000000028;
        v13 = 0x80000001BC4F3800;
        break;
      case 7u:
        v13 = 0xE600000000000000;
        v14 = 0x74656B636F72;
        break;
      case 8u:
        v13 = 0xE300000000000000;
        v14 = 6775138;
        break;
      case 9u:
        v13 = 0xE400000000000000;
        v14 = 1802465122;
        break;
      case 0xAu:
        v13 = 0xE500000000000000;
        v14 = 0x65626F6C67;
        break;
      case 0xBu:
        v13 = 0xEE006C6163697472;
        v14 = 0x65762E736B6F6F62;
        break;
      case 0xCu:
        v13 = 0xE800000000000000;
        v14 = 0x656C626269726373;
        break;
      default:
        goto LABEL_24;
    }

    v48 = v8;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v15 = objc_opt_self();

    v16 = [v15 systemGrayColor];
    v17 = [objc_opt_self() configurationWithHierarchicalColor_];

    v18 = v14;
    v19 = @nonobjc UIImage.init(_systemName:withConfiguration:)(v14, v13, v17);
    if (v19)
    {
      v47 = v19;

      v52 = v12;
      v53 = v11;
      v20 = SystemApertureIconFactory.CallDescriptor.symbolAccessibilityLabel.getter();
      v45 = v21;
      v46 = v20;
      v50 = v12;
      v51 = v11;
      SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v10);
      v22 = ActivitySymbol.name.getter();
      v24 = v23;
      v25 = v49;
      v26 = *(v48 + 8);
      v26(v10, v2);
      v27._countAndFlagsBits = v22;
      v27._object = v24;
      v28 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SystemApertureIconFactory.SymbolIcon.init(rawValue:), v27);

      if (v28)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = 3.0;
      }

      v50 = v12;
      v51 = v11;
      SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(v6);
      v30 = type metadata accessor for SystemApertureIcon(0);
      ActivitySymbol.animation.getter();
      v26(v6, v2);
      v31 = v46;
      *v25 = v47;
      *(v25 + 8) = 0u;
      *(v25 + 24) = 0u;
      *(v25 + 40) = 0;
      v32 = v45;
      *(v25 + 48) = v31;
      *(v25 + 56) = v32;
      *(v25 + 64) = 1;
      *(v25 + 72) = v29;
      *(v25 + 80) = 0;
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v30);
      OUTLINED_FUNCTION_20_6();
      return;
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, &static Logger.conversationControls);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v37;
      *v36 = 136315138;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v13, &v52);

      *(v36 + 4) = v38;
      _os_log_impl(&dword_1BBC58000, v34, v35, "Unable to find systemImage for activity: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }
  }

LABEL_24:
  type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_20_6();

  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
}

void SystemApertureIconFactory.CallDescriptor.activityType.getter(_BYTE *a1@<X8>)
{
  LOBYTE(v2) = 14;
  switch(*(v1 + 8))
  {
    case 3:
    case 4:
      break;
    default:
      v2 = *v1;
      break;
  }

  *a1 = v2;
}

BOOL static SystemApertureIconFactory.CallDescriptor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v4 == 1)
      {
        goto LABEL_18;
      }

      return 0;
    case 2:
      if (v4 != 2)
      {
        return 0;
      }

      v6 = *a2;
      if (*a1 == 14)
      {
        if (v6 != 14)
        {
          return 0;
        }

        v7 = v3 ^ v2;
      }

      else
      {
        if (v6 == 14)
        {
          return 0;
        }

        v7 = v3 ^ v2;
        if (v7)
        {
          return 0;
        }
      }

      return (v7 & 0xFF00) == 0;
    case 3:
      if (v4 != 3)
      {
        return 0;
      }

      return v2 == v3;
    case 4:
      switch(v2)
      {
        case 1:
          return v4 == 4 && v3 == 1;
        case 2:
          return v4 == 4 && v3 == 2;
        case 3:
          return v4 == 4 && v3 == 3;
        case 4:
          return v4 == 4 && v3 == 4;
        case 5:
          return v4 == 4 && v3 == 5;
        case 6:
          return v4 == 4 && v3 == 6;
        case 7:
          return v4 == 4 && v3 == 7;
        case 8:
          return v4 == 4 && v3 == 8;
        case 9:
          return v4 == 4 && v3 == 9;
        default:
          return v4 == 4 && v3 == 0;
      }

    default:
      if (*(a2 + 8))
      {
        return 0;
      }

LABEL_18:
      v9 = *a2;
      if (*a1 != 14)
      {
        v10 = (v3 ^ v2);
        return v9 != 14 && v10 == 0;
      }

      return v9 == 14;
  }
}

Swift::Int SystemApertureIconFactory.CallState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemApertureIconFactory.CallState(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t SystemApertureIconFactory.init(callScreeningService:features:)(void *a1, void *a2)
{
  v5 = v2;
  v9 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v12 = OUTLINED_FUNCTION_14_8(v11);
  v13(v12);
  v14 = a2[3];
  v15 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v18 = OUTLINED_FUNCTION_13_19(v17);
  v19(v18);
  v20 = specialized SystemApertureIconFactory.init(callScreeningService:features:)(v3, v4, v5, v9, v14, v8, v15);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

uint64_t SystemApertureIconFactory.makeStatusIcon(for:conversation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25SystemApertureIconFactoryC0cdE3Set33_15DC8AE79B2F79D7CD5A12680A8D832BLLVSgMd, &_s15ConversationKit25SystemApertureIconFactoryC0cdE3Set33_15DC8AE79B2F79D7CD5A12680A8D832BLLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  SystemApertureIconFactory.callDescriptor(for:conversation:)(a1, a2, a3, &v27);
  v12 = v28;
  if (v28 == 255)
  {
    v18 = type metadata accessor for SystemApertureIcon(0);

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v18);
  }

  else
  {
    v13 = v27;
    v14 = v4 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
    swift_beginAccess();
    v15 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) || (v19 = *v14, v20 = *(v14 + 8), v21 = v13, v22 = v12, v20 == 255) || (v25 = v19, v26 = v20, !static SystemApertureIconFactory.CallDescriptor.== infix(_:_:)(&v21, &v25)))
    {
      v21 = v13;
      v22 = v12;
      SystemApertureIconFactory.CallDescriptor.statusIcon.getter(&v11[v15[5]]);
      v25 = v13;
      v26 = v12;
      SystemApertureIconFactory.CallDescriptor.activityIcon.getter(&v11[v15[6]]);
      v23 = v13;
      v24 = v12;
      SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(&v11[v15[7]]);
      *v11 = v13;
      v11[8] = v12;
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
      swift_beginAccess();
      outlined assign with take of SystemApertureIconFactory.SystemApertureIconSet?(v11, v14);
      swift_endAccess();
    }

    if (__swift_getEnumTagSinglePayload(v14, 1, v15))
    {
      v16 = type metadata accessor for SystemApertureIcon(0);
      return __swift_storeEnumTagSinglePayload(a4, 1, 1, v16);
    }

    else
    {
      return outlined init with copy of Conversation?(v14 + v15[5], a4, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
    }
  }
}

void SystemApertureIconFactory.callDescriptor(for:conversation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v73 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_17();
  v71 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  outlined init with copy of Conversation?(a3, v76, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  v17 = v77;
  if (v77)
  {
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v18 = OUTLINED_FUNCTION_19_5();
    v17 = Conversation.currentSharePlayActivity.getter(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v76, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  outlined init with copy of Conversation?(a3, v76, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  v20 = v77;
  if (v77)
  {
    v21 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    Conversation.currentCollaboration.getter(v20, v21, v16);
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v76, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    type metadata accessor for Collaboration(0);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  v26 = SystemApertureIconFactory.mediaType(for:conversation:)(a1, a2, a3);
  v27 = *(v5 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features + 24);
  v28 = *(v5 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features), v27);
  if ((*(v28 + 8))(v27, v28))
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 48))(v76, ObjectType, a2);
    v30 = SystemApertureIconFactory.callState(for:)(v76);
    __swift_destroy_boxed_opaque_existential_1(v76);
    if (v17)
    {
LABEL_9:
      v31 = v17;
      TUConversationActivitySession.generateType.getter(v76);
      v32 = LOBYTE(v76[0]);

      if (v32 == 6)
      {
        v33 = [v31 isLocallyInitiated];

        outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
        v34 = 2;
        if (!v33)
        {
          v34 = 3;
        }

LABEL_25:
        OUTLINED_FUNCTION_10_8(v34);
LABEL_26:
        v38 = 4;
        goto LABEL_27;
      }

      TUConversationActivitySession.generateType.getter(v76);

      outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      v36 = LOBYTE(v76[0]) | (v26 << 8);
      goto LABEL_17;
    }
  }

  else
  {
    v30 = SystemApertureIconFactory.callState(for:)(a1, a2);
    if (v17)
    {
      goto LABEL_9;
    }
  }

  v35 = swift_getObjectType();
  if ((*(a2 + 464))(v35, a2))
  {
    outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
    v34 = 5;
    goto LABEL_25;
  }

  v39 = (*(a2 + 184))(v35, a2);
  v40 = [v39 supportsDynamicSystemUI];

  if (v40)
  {
    v41 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v42 = [v41 groupConversations];

    if (v42)
    {
      if (TUDeviceHasChinaSKU())
      {
        outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
        v34 = 8;
        goto LABEL_25;
      }
    }
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43 && [v43 isWaitOnHoldActive])
  {
    outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
    v34 = 9;
    goto LABEL_25;
  }

  if (!v26)
  {
    outlined init with copy of Conversation?(a3, &v74, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (v75)
    {
      outlined init with take of TapInteractionHandler(&v74, v76);
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v44 = OUTLINED_FUNCTION_19_5();
      if (Conversation.isContinuitySession.getter(v44, v45))
      {
        OUTLINED_FUNCTION_15_5();
        v46 = OUTLINED_FUNCTION_11_13();
        v48 = v47(v46);
        outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
        v49 = v73;
        *v73 = v48;
        v50 = 3;
LABEL_49:
        *(v49 + 8) = v50;
        __swift_destroy_boxed_opaque_existential_1(v76);
        return;
      }

      outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      outlined destroy of TapInteractionHandler?(&v74, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    v36 = 14;
LABEL_17:
    OUTLINED_FUNCTION_10_8(v36);
    v38 = 2;
LABEL_27:
    *(v37 + 8) = v38;
    return;
  }

  if (v26 != 1)
  {
    switch(v30)
    {
      case 0:
LABEL_40:
        outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
        OUTLINED_FUNCTION_10_8(4);
        *(v52 + 8) = v51;
        return;
      case 2:
        v53 = v16;
        v54 = v72;
        outlined init with take of Collaboration?(v53, v72);
        v55 = type metadata accessor for Collaboration(0);
        if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
        {
          outlined destroy of TapInteractionHandler?(v54, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
          OUTLINED_FUNCTION_10_8(14);
          *(v56 + 8) = 1;
        }

        else
        {
          v66 = *(v54 + 17);
          outlined destroy of Collaboration(v54);
          v67 = v73;
          *v73 = v66;
          *(v67 + 8) = 1;
        }

        return;
      case 1:
        outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
        v34 = 1;
        goto LABEL_25;
    }

    outlined init with copy of Conversation?(a3, &v74, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (v75)
    {
      outlined init with take of TapInteractionHandler(&v74, v76);
      OUTLINED_FUNCTION_15_5();
      v57 = OUTLINED_FUNCTION_11_13();
      v59 = v58(v57);
      if (v59)
      {

        OUTLINED_FUNCTION_15_5();
        v60 = OUTLINED_FUNCTION_11_13();
        v62 = v61(v60);
        outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
        OUTLINED_FUNCTION_10_8(v62 != 1);
        v50 = 4;
        goto LABEL_49;
      }

      outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      outlined destroy of TapInteractionHandler?(&v74, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    v37 = v73;
    *v73 = 0;
    v38 = -1;
    goto LABEL_27;
  }

  switch(v30)
  {
    case 1:
      outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      v37 = v73;
      *v73 = 0;
      goto LABEL_26;
    case 2:
      v63 = v71;
      outlined init with take of Collaboration?(v16, v71);
      v64 = type metadata accessor for Collaboration(0);
      if (__swift_getEnumTagSinglePayload(v63, 1, v64) == 1)
      {
        outlined destroy of TapInteractionHandler?(v63, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
        OUTLINED_FUNCTION_10_8(14);
        *(v65 + 8) = 0;
      }

      else
      {
        v68 = *(v63 + 17);
        outlined destroy of Collaboration(v63);
        v69 = v73;
        *v73 = v68;
        *(v69 + 8) = 0;
      }

      break;
    case 3:
      outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      v34 = 6;
      goto LABEL_25;
    case 4:
      outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      v34 = 7;
      goto LABEL_25;
    default:
      goto LABEL_40;
  }
}

uint64_t SystemApertureIconFactory.makeActivityIcon(for:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v5 = v4;
  if ((*((*v2 & *a1) + 0x2C0))())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  OUTLINED_FUNCTION_17_15();
  SystemApertureIconFactory.makeActivityIcon(for:conversation:)(v3, v5, v6, v7);
  swift_unknownObjectRelease();
  return outlined destroy of TapInteractionHandler?(v9, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
}

uint64_t SystemApertureIconFactory.makeActivityIcon(for:conversation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25SystemApertureIconFactoryC0cdE3Set33_15DC8AE79B2F79D7CD5A12680A8D832BLLVSgMd, &_s15ConversationKit25SystemApertureIconFactoryC0cdE3Set33_15DC8AE79B2F79D7CD5A12680A8D832BLLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  SystemApertureIconFactory.callDescriptor(for:conversation:)(a1, a2, a3, &v33);
  v12 = v34;
  if (v34 == 255)
  {
    type metadata accessor for SystemApertureIcon(0);
    OUTLINED_FUNCTION_10_0();

    return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }

  else
  {
    v13 = v33;
    v14 = v4 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
    swift_beginAccess();
    v15 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) || (v25 = *v14, v26 = *(v14 + 8), v27 = v13, v28 = v12, v26 == 255) || (v31 = v25, v32 = v26, !static SystemApertureIconFactory.CallDescriptor.== infix(_:_:)(&v27, &v31)))
    {
      v27 = v13;
      v28 = v12;
      SystemApertureIconFactory.CallDescriptor.statusIcon.getter(&v11[v15[5]]);
      v31 = v13;
      v32 = v12;
      SystemApertureIconFactory.CallDescriptor.activityIcon.getter(&v11[v15[6]]);
      v29 = v13;
      v30 = v12;
      SystemApertureIconFactory.CallDescriptor.statusSymbol.getter(&v11[v15[7]]);
      *v11 = v13;
      v11[8] = v12;
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
      swift_beginAccess();
      outlined assign with take of SystemApertureIconFactory.SystemApertureIconSet?(v11, v14);
      swift_endAccess();
    }

    if (__swift_getEnumTagSinglePayload(v14, 1, v15))
    {
      type metadata accessor for SystemApertureIcon(0);
      OUTLINED_FUNCTION_10_0();
      return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    }

    else
    {
      return outlined init with copy of Conversation?(v14 + v15[6], a4, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
    }
  }
}

uint64_t SystemApertureIconFactory.mediaType(for:conversation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Conversation?(a3, &v12, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (v13)
  {
    outlined init with take of TapInteractionHandler(&v12, v14);
    v4 = v15;
    v5 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    if (!(*(v5 + 272))(v4, v5))
    {
      goto LABEL_11;
    }

    __swift_project_boxed_opaque_existential_1(v14, v15);
    v6 = Conversation.avModeForSystemAperture.getter();
    if (v6 == 2)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      return 2;
    }

    if (v6 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      return 1;
    }

    if (v6)
    {
      *&v12 = 0;
      *(&v12 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *&v12 = 0xD000000000000021;
      *(&v12 + 1) = 0x80000001BC4F38D0;
      v9 = v15;
      v10 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v10 + 272))(v9, v10);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v11);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v14);
      return 0;
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v12, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    ObjectType = swift_getObjectType();
    if ((*(a2 + 400))(ObjectType, a2))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t SystemApertureIconFactory.callState(for:)(void *a1)
{
  v3 = type metadata accessor for CallScreeningStatus();
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CallStatus();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of BasicCall.status.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x1E6995D50])
  {
    return 0;
  }

  if (v10 == *MEMORY[0x1E6995D58])
  {
    return 2;
  }

  if (v10 != *MEMORY[0x1E6995D70])
  {
    if (v10 != *MEMORY[0x1E6995D48] && v10 != *MEMORY[0x1E6995D68])
    {
      if (v10 == *MEMORY[0x1E6995D60])
      {
        return 1;
      }

      if (v10 != *MEMORY[0x1E6995D40])
      {
        if (v10 != *MEMORY[0x1E6995D38])
        {
          (*(v7 + 8))(v9, v6);
        }

        return 0;
      }
    }

    return 2;
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService), *(v1 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService + 24));
  dispatch thunk of CallScreeningServiceProtocol.screeningStatusForCall(_:)();
  v12 = v16;
  v13 = (*(v16 + 88))(v5, v3);
  if (v13 != *MEMORY[0x1E6995EA8])
  {
    if (v13 != *MEMORY[0x1E6995E98])
    {
      if (v13 == *MEMORY[0x1E6995EA0])
      {
        return 3;
      }

      if (v13 == *MEMORY[0x1E6995EB0])
      {
        return 4;
      }

      (*(v12 + 8))(v5, v3);
    }

    return 2;
  }

  (*(v12 + 8))(v5, v3);
  return 1;
}

uint64_t SystemApertureIconFactory.callState(for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 216))(ObjectType, a2);
  if ((*(a2 + 144))(ObjectType, a2))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t SystemApertureIconFactory.deinit()
{
  outlined destroy of TapInteractionHandler?(v0 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet, &_s15ConversationKit25SystemApertureIconFactoryC0cdE3Set33_15DC8AE79B2F79D7CD5A12680A8D832BLLVSgMd, &_s15ConversationKit25SystemApertureIconFactoryC0cdE3Set33_15DC8AE79B2F79D7CD5A12680A8D832BLLVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features));
  return v0;
}

uint64_t SystemApertureIconFactory.__deallocating_deinit()
{
  SystemApertureIconFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized SystemApertureIconFactory.init(callScreeningService:features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a3 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v13[3] = a4;
  v13[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v15 = (a3 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v15[3] = a5;
  v15[4] = a7;
  v16 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 32))(v16, a2, a5);
  v17 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
  v18 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  __swift_storeEnumTagSinglePayload(a3 + v17, 1, 1, v18);
  return a3;
}

unint64_t lazy protocol witness table accessor for type ActivitySymbol and conformance ActivitySymbol()
{
  result = lazy protocol witness table cache variable for type ActivitySymbol and conformance ActivitySymbol;
  if (!lazy protocol witness table cache variable for type ActivitySymbol and conformance ActivitySymbol)
  {
    type metadata accessor for ActivitySymbol();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySymbol and conformance ActivitySymbol);
  }

  return result;
}

uint64_t outlined init with take of Collaboration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Collaboration(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of SystemApertureIconFactory.SystemApertureIconSet?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25SystemApertureIconFactoryC0cdE3Set33_15DC8AE79B2F79D7CD5A12680A8D832BLLVSgMd, &_s15ConversationKit25SystemApertureIconFactoryC0cdE3Set33_15DC8AE79B2F79D7CD5A12680A8D832BLLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Conversation?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SystemApertureIconFactory.CallState and conformance SystemApertureIconFactory.CallState()
{
  result = lazy protocol witness table cache variable for type SystemApertureIconFactory.CallState and conformance SystemApertureIconFactory.CallState;
  if (!lazy protocol witness table cache variable for type SystemApertureIconFactory.CallState and conformance SystemApertureIconFactory.CallState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemApertureIconFactory.CallState and conformance SystemApertureIconFactory.CallState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemApertureIconFactory.MediaType and conformance SystemApertureIconFactory.MediaType()
{
  result = lazy protocol witness table cache variable for type SystemApertureIconFactory.MediaType and conformance SystemApertureIconFactory.MediaType;
  if (!lazy protocol witness table cache variable for type SystemApertureIconFactory.MediaType and conformance SystemApertureIconFactory.MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemApertureIconFactory.MediaType and conformance SystemApertureIconFactory.MediaType);
  }

  return result;
}

void type metadata completion function for SystemApertureIconFactory(uint64_t a1)
{
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet?(319, &lazy cache variable for type metadata for SystemApertureIconFactory.SystemApertureIconSet?, type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for SystemApertureIconFactory.CallDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemApertureIconFactory.CallDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t getEnumTag for SystemApertureIconFactory.CallDescriptor(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SystemApertureIconFactory.CallDescriptor(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *result = 0;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemApertureIconFactory.CallState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SystemApertureIconFactory.CallState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemApertureIconFactory.MediaType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for SystemApertureIconFactory.SystemApertureIconSet(uint64_t a1)
{
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet?(319, &lazy cache variable for type metadata for SystemApertureIcon?, type metadata accessor for SystemApertureIcon);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActivitySymbol();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

id CallControlsViewController.__allocating_init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_30(a1, a2, a3, a4);
  v4 = OUTLINED_FUNCTION_1_35();
  return specialized CallControlsViewController.__allocating_init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(v4, v5, v6, v7, v8, v9, v10, v11, v13);
}

id CallControlsViewController.init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_30(a1, a2, a3, a4);
  v4 = OUTLINED_FUNCTION_1_35();
  return specialized CallControlsViewController.init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(v4, v5, v6, v7, v8, v9, v10, v11, v13);
}

id CallControlsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallControlsViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_captionsStateController + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterViewProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_cancellables) = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dymanicStateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  swift_allocObject();
  *(v0 + v1) = PassthroughSubject.init()();
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dynamicStateCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___menuViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingCallAgain) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingRingingCall) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isCallDisconnectingOrDisconnected) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isOnScreen) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isIncomingCallBannerExpanded) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallControlsViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for PassthroughView()) init];
  [v0 setView_];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CallControlsViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  CallControlsViewController.setupConstraints()();
  CallControlsViewController.statusViewModel.getter();
  CallControlsStatusViewModel.startStatusObservation()();

  CallControlsViewController.observeControlMode()();
  CallControlsViewController.observeCallStatus()();
  CallControlsViewController.observeIsOnScreen()();
}

void CallControlsViewController.setupConstraints()()
{
  v1 = v0;
  CallControlsViewController.setupStatus()();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = Features.isICUIRedesignEnabled.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  if (v2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA930;
    CallControlsViewController.menuView.getter();
    v5 = v4;
    v6 = [v4 leadingAnchor];

    v7 = [v1 view];
    if (!v7)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v8 = v7;
    v9 = [v7 leadingAnchor];

    v10 = [v6 constraintGreaterThanOrEqualToAnchor_];
    *(inited + 32) = v10;
    CallControlsViewController.menuView.getter();
    v12 = v11;
    v13 = [v11 trailingAnchor];

    v14 = [v1 view];
    if (!v14)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v15 = v14;
    v16 = &selRef_constraintEqualToAnchor_;
LABEL_10:
    v27 = [v15 trailingAnchor];

    v28 = [v13 *v16];
    *(inited + 40) = v28;
    specialized Array.append<A>(contentsOf:)(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_1BC4BAC30;
    CallControlsViewController.menuView.getter();
    v31 = v30;
    v32 = [v30 bottomAnchor];

    v33 = [v1 view];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 bottomAnchor];

      v36 = [v32 constraintEqualToAnchor_];
      *(v29 + 32) = v36;
      specialized Array.append<A>(contentsOf:)(v29);
      v37 = objc_opt_self();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v37 activateConstraints_];

      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  CallControlsViewController.menuView.getter();
  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(inited + 32) = v23;
  CallControlsViewController.menuView.getter();
  v25 = v24;
  v13 = [v24 trailingAnchor];

  v26 = [v1 view];
  if (v26)
  {
    v15 = v26;
    v16 = &selRef_constraintLessThanOrEqualToAnchor_;
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
}

void *CallControlsViewController.statusViewModel.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusViewModel;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusViewModel);
  }

  else
  {
    v3 = v0;
    outlined init with copy of IDSLookupManager(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service, v6);
    v4 = CallControlsViewController.isScreenLocked.getter();
    type metadata accessor for CallControlsStatusViewModel();
    swift_allocObject();
    v2 = CallControlsStatusViewModel.init(service:isScreenLocked:)(v6, v4);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t CallControlsViewController.observeControlMode()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service + 24);
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service), v1);
  (*(v2 + 64))(v1, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit18InCallControlsModeOs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit18InCallControlsModeOs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<InCallControlsMode, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit18InCallControlsModeOs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit18InCallControlsModeOs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR, MEMORY[0x1E69E6348]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t CallControlsViewController.observeCallStatus()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service + 24);
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service), v1);
  (*(v2 + 48))(v1, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo12TUCallStatusVs5NeverOGMd, &_s7Combine12AnyPublisherVySo12TUCallStatusVs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<TUCallStatus, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo12TUCallStatusVs5NeverOGMd, &_s7Combine12AnyPublisherVySo12TUCallStatusVs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR, MEMORY[0x1E69E6348]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t CallControlsViewController.observeIsOnScreen()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service + 24);
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service), v1);
  result = (*(v2 + 80))(v1, v2);
  if (result)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, MEMORY[0x1E695BED8]);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR, MEMORY[0x1E69E6348]);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall CallControlsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v43.receiver = v1;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_viewWillAppear_, a1);
  v3 = &v1[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service];
  OUTLINED_FUNCTION_6_19();
  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_controlsManager];
  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2A0))();
  v7 = v6;
  ObjectType = swift_getObjectType();
  (*(v7 + 208))(ObjectType, v7);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_9();
  v9();
  OUTLINED_FUNCTION_6_19();
  (*((*v5 & *v4) + 0x928))();
  OUTLINED_FUNCTION_10_9();
  v11 = v10();
  v12 = (*((*v5 & *v4) + 0x2C0))(v11);
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_6_19();
    [v13 state];
    OUTLINED_FUNCTION_10_9();
    v14();
    OUTLINED_FUNCTION_6_19();
    [v13 letMeInRequestState];
    OUTLINED_FUNCTION_10_9();
    v15();
  }

  if (one-time initialization token for sidebar != -1)
  {
    OUTLINED_FUNCTION_0_22(&one-time initialization token for sidebar);
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, &static Logger.sidebar);
  v17 = v1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = v21;
    *v20 = 136315906;
    OUTLINED_FUNCTION_8_24();
    v22 = OUTLINED_FUNCTION_7_26();
    v23(v22);
    type metadata accessor for TUCallStatus(0);
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v42);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    OUTLINED_FUNCTION_8_24();
    v27 = OUTLINED_FUNCTION_7_26();
    v28(v27);
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v42);

    *(v20 + 14) = v31;
    *(v20 + 22) = 2080;
    OUTLINED_FUNCTION_8_24();
    v32 = OUTLINED_FUNCTION_7_26();
    v33(v32);
    type metadata accessor for TUConversationLetMeInRequestState(0);
    v34 = String.init<A>(reflecting:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v42);

    *(v20 + 24) = v36;
    *(v20 + 32) = 2080;
    v37 = *(v3 + 3);
    v38 = *(v3 + 4);
    __swift_project_boxed_opaque_existential_1(v3, v37);
    (*(v38 + 40))(v37, v38);
    v39 = String.init<A>(reflecting:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v42);

    *(v20 + 34) = v41;
    _os_log_impl(&dword_1BBC58000, v18, v19, "CallControls initial states. call status: %s, controlMode: %s, conversationState: %s, letMeInState: %s", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v21, -1, -1);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
  }
}

Swift::Void __swiftcall CallControlsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA18PassthroughSubjectCyyts5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA18PassthroughSubjectCyyts5NeverOGSo17OS_dispatch_queueCGMR);
  v8 = *(v19 - 8);
  v9 = MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - v10;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_viewDidAppear_, a1, v9);
  v21 = *&v2[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dymanicStateSubject];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);

  v12 = static OS_dispatch_queue.main.getter();
  v20 = v12;
  v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x1E695BF88]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v7);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in CallControlsViewController.viewDidAppear(_:);
  *(v15 + 24) = v14;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<PassthroughSubject<(), Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA18PassthroughSubjectCyyts5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA18PassthroughSubjectCyyts5NeverOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v16 = v19;
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v11, v16);
  *&v2[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dynamicStateCancellable] = v17;

  PassthroughSubject.send(_:)();
}

void closure #1 in CallControlsViewController.viewDidAppear(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = CallControlsViewController.menuViewController.getter();
    CallControlsMenuViewController.checkForDynamicState()();
  }
}

id CallControlsViewController.menuViewController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___menuViewController;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___menuViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___menuViewController);
  }

  else
  {
    swift_unknownObjectWeakInit();
    specialized closure #1 in CallControlsViewController.menuViewController.getter(v9, v0);
    v5 = v4;
    MEMORY[0x1BFB23F10](v9);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

Swift::Void __swiftcall CallControlsViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  *&v1[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dynamicStateCancellable] = 0;
}

Swift::Void __swiftcall CallControlsViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  PassthroughSubject.send(_:)();
}

void CallControlsViewController.isOneToOneModeEnabled.setter()
{
  CallControlsViewController.menuViewController.getter();
  OUTLINED_FUNCTION_4_16();
}

void (*CallControlsViewController.isOneToOneModeEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = CallControlsViewController.isOneToOneModeEnabled.getter() & 1;
  return CallControlsViewController.isOneToOneModeEnabled.modify;
}

void CallControlsViewController.isOneToOneModeEnabled.modify()
{
  CallControlsViewController.menuViewController.getter();
  OUTLINED_FUNCTION_4_16();
}

uint64_t CallControlsViewController.menuState.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState;
  result = OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState, a1);
  *a2 = *(v2 + v4);
  return result;
}

void key path getter for CallControlsViewController.menuState : CallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void CallControlsViewController.menuState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5[0] = v4;
  CallControlsViewController.menuState.didset(v5);
}

void CallControlsViewController.menuState.didset(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v2)
  {
    if (v2 == 1)
    {
      if (v4 == 1)
      {
        return;
      }
    }

    else if (v4 == 2)
    {
      return;
    }
  }

  else if (!*(v1 + v3))
  {
    return;
  }

  CallControlsViewController.updateMenuVisibility()();
}

void CallControlsViewController.updateMenuVisibility()()
{
  v1 = v0;
  v2 = CallControlsViewController.menuViewController.getter();
  v3 = CallControlsMenuViewController.isPresentingMoreMenuPopover.getter();

  if (v3)
  {
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Logger.sidebar);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v5, "Not updating visibility. More menu is presented.", v6, 2u);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }
  }

  else
  {
    v7 = SidebarStateStream.currentState.getter() & 1;
    v8 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState;
    swift_beginAccess();
    v9 = (v1[v8] | v7) == 0;
    if (v1[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingRingingCall] == 1)
    {
      v10 = v1[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isIncomingCallBannerExpanded] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    if (v1[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isCallDisconnectingOrDisconnected] == 1)
    {
      v11 = v1[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isOnScreen] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, &static Logger.sidebar);
    v13 = v1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67110144;
      *(v16 + 4) = v7 ^ 1;
      *(v16 + 8) = 1024;
      *(v16 + 10) = v9;
      *(v16 + 14) = 1024;
      *(v16 + 16) = v10 & 1;
      *(v16 + 20) = 1024;
      *(v16 + 22) = v11 & 1;
      *(v16 + 26) = 1024;
      v17 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView;
      swift_beginAccess();
      *(v16 + 28) = *(&v13->isa + v17);

      _os_log_impl(&dword_1BBC58000, v14, v15, "updateMenuVisibility - isSidebarHidden=%{BOOL}d, shouldHideMenu=%{BOOL}d, shouldHideMenuDuringRinging=%{BOOL}d, shouldHideMenuDuringCall=%{BOOL}d, shouldUnconditionallyHideMenuView=%{BOOL}d", v16, 0x20u);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }

    else
    {

      v14 = v13;
    }

    if (v9 || ((*(&v13->isa + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingCallAgain) | v10 | v11) & 1) != 0)
    {
      v18 = 1;
    }

    else
    {
      v19 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView;
      swift_beginAccess();
      v18 = *(&v13->isa + v19);
    }

    v20 = *(&v13->isa + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___menuViewController);
    CallControlsMenuViewController.isHidden.setter(v18);
  }
}

void (*CallControlsViewController.menuState.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState;
  OUTLINED_FUNCTION_12_1();
  *(v3 + 32) = *(v1 + v4);
  return CallControlsViewController.menuState.modify;
}

void CallControlsViewController.menuState.modify()
{
  OUTLINED_FUNCTION_11_14();
  if (v2)
  {
    v4 = v1;
    v3 = &v4;
  }

  else
  {
    v5 = v1;
    v3 = &v5;
  }

  CallControlsViewController.menuState.setter(v3);

  free(v0);
}

uint64_t CallControlsViewController.rosterCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount, a2);
  return *(v2 + v3);
}

void key path getter for CallControlsViewController.rosterCount : CallControlsViewController(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void CallControlsViewController.rosterCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  CallControlsViewController.rosterCount.didset(v4);
}

void CallControlsViewController.rosterCount.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    PassthroughSubject.send(_:)();
  }
}

void (*CallControlsViewController.rosterCount.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount;
  OUTLINED_FUNCTION_12_1();
  v3[3] = *(v1 + v4);
  return CallControlsViewController.rosterCount.modify;
}

void CallControlsViewController.rosterCount.modify(uint64_t a1)
{
  v1 = *a1;
  CallControlsViewController.rosterCount.setter(*(*a1 + 24));

  free(v1);
}

uint64_t CallControlsViewController.sizeUpdater.getter()
{
  v0 = CallControlsViewController.menuViewController.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void key path setter for CallControlsViewController.sizeUpdater : CallControlsViewController(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  CallControlsViewController.sizeUpdater.setter(v2, v1);
}

void CallControlsViewController.sizeUpdater.setter(uint64_t a1, uint64_t a2)
{
  v3 = CallControlsViewController.menuViewController.getter();
  v4 = &v3[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sizeUpdater];
  swift_beginAccess();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
}

void (*CallControlsViewController.sizeUpdater.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CallControlsViewController.sizeUpdater.getter();
  a1[1] = v3;
  return CallControlsViewController.sizeUpdater.modify;
}

void CallControlsViewController.sizeUpdater.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    CallControlsViewController.sizeUpdater.setter(v3, v2);

    swift_unknownObjectRelease();
  }

  else
  {
    CallControlsViewController.sizeUpdater.setter(*a1, v2);
  }
}

UILayoutGuide __swiftcall CallControlsViewController.updateViewDependencies(containingView:topCornerView:dodgingView:usesPaddingInsteadOfSafeArea:)(UIView *containingView, UIView_optional *topCornerView, UIView *dodgingView, Swift::Bool usesPaddingInsteadOfSafeArea)
{
  swift_unknownObjectWeakAssign();
  v8 = CallControlsViewController.menuViewController.getter();
  isa = CallControlsMenuViewController.updateViewDependencies(containingView:topCornerView:dodgingView:usesPaddingInsteadOfSafeArea:)(containingView, topCornerView, dodgingView, usesPaddingInsteadOfSafeArea).super.isa;

  return isa;
}

id CallControlsViewController.setupStatus()()
{
  v1 = CallControlsViewController.statusViewModel.getter();
  v2 = CallControlsViewController.statusView.getter();
  swift_beginAccess();
  v1[3] = &protocol witness table for CallControlsStatusView;
  swift_unknownObjectWeakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BC370;
  v4 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusView;
  v5 = [*&v0[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusView] topAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  v8 = [result topAnchor];

  v9 = [v5 constraintEqualToAnchor:v8 constant:52.0];
  *(v3 + 32) = v9;
  v10 = [*&v0[v4] leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  v12 = [result safeAreaLayoutGuide];

  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13 constant:24.0];

  *(v3 + 40) = v14;
  v15 = [*&v0[v4] trailingAnchor];
  result = [v0 view];
  if (result)
  {
    v16 = result;
    v17 = [result safeAreaLayoutGuide];

    v18 = [v17 trailingAnchor];
    v19 = [v15 constraintLessThanOrEqualToAnchor_];

    *(v3 + 48) = v19;
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

void CallControlsViewController.menuView.getter()
{
  v0 = CallControlsViewController.menuViewController.getter();
  v1 = [v0 view];

  if (!v1)
  {
    __break(1u);
  }
}

uint64_t CallControlsViewController.isScreenLocked.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySbGMd, &_s7Combine4JustVySbGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-v2];
  v6[15] = 0;
  Just.init(_:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>, &_s7Combine4JustVySbGMd, &_s7Combine4JustVySbGMR, MEMORY[0x1E695C008]);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id CallControlsViewController.statusView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusView;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusView];
  }

  else
  {
    v4 = closure #1 in CallControlsViewController.statusView.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in CallControlsViewController.statusView.getter(void *a1)
{
  type metadata accessor for CallControlsStatusView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [a1 view];
  if (result)
  {
    v4 = result;
    [result addSubview_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CallControlsViewController.menuViewFrame.getter()
{
  v0 = CallControlsViewController.menuViewController.getter();
  v1 = [v0 view];

  if (v1)
  {
    [v1 frame];
  }

  else
  {
    __break(1u);
  }
}

uint64_t CallControlsViewController.isOneToOneModeEnabled.getter(uint64_t *a1)
{
  v2 = CallControlsViewController.menuViewController.getter();
  v3 = *a1;
  OUTLINED_FUNCTION_4_5(&v2[v3], v4);
  v5 = v2[v3];

  return v5;
}

uint64_t CallControlsViewController.shouldUnconditionallyHideMenuView.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView, a2);
  return *(v2 + v3);
}

void key path getter for CallControlsViewController.shouldUnconditionallyHideMenuView : CallControlsViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void CallControlsViewController.shouldUnconditionallyHideMenuView.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  CallControlsViewController.updateMenuVisibility()();
}

void (*CallControlsViewController.shouldUnconditionallyHideMenuView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CallControlsViewController.shouldUnconditionallyHideMenuView.modify;
}

void CallControlsViewController.shouldUnconditionallyHideMenuView.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    CallControlsViewController.updateMenuVisibility()();
  }
}

void specialized closure #1 in CallControlsViewController.menuViewController.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v33 = *(a2 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_controlsManager);
    v34 = CallControlsViewController.isScreenLocked.getter();
    v35 = a2 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterViewProvider;
    v36 = swift_unknownObjectWeakLoadStrong();
    v37 = *(v35 + 8);
    outlined init with copy of IDSLookupManager(a2 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service, v39);
    v38 = *(a2 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_sidebarStateStream);
    objc_allocWithZone(type metadata accessor for CallControlsMenuViewController());

    CallControlsMenuViewController.init(controlsManager:isScreenLocked:rosterViewProvider:service:sidebarStateStream:)(v33, v34, v36, v37, v39, v38);
    return;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_controlsManager);
  v6 = CallControlsViewController.isScreenLocked.getter();
  v7 = &v4[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterViewProvider];
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);
  outlined init with copy of IDSLookupManager(&v4[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service], v39);
  v10 = *&v4[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_sidebarStateStream];
  objc_allocWithZone(type metadata accessor for CallControlsMenuViewController());

  v11 = CallControlsMenuViewController.init(controlsManager:isScreenLocked:rosterViewProvider:service:sidebarStateStream:)(v5, v6, v8, v9, v39, v10);
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = v4;
  [v14 addChildViewController_];
  v15 = [v14 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v11 view];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  [v16 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BA930;
  v20 = [v11 view];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v14 view];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-static CallControlsMenuView.Constants.verticalPadding.getter()];
  *(v19 + 32) = v25;
  v26 = [v11 view];

  if (v26)
  {
    v27 = [v26 trailingAnchor];

    v28 = [v14 view];
    if (v28)
    {
      v29 = objc_opt_self();
      v30 = [v28 trailingAnchor];

      v31 = [v27 constraintEqualToAnchor:v30 constant:-static CallControlsMenuView.Constants.horizontalPadding.getter()];
      *(v19 + 40) = v31;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v29 activateConstraints_];

      [v11 didMoveToParentViewController_];
      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void CallControlsViewController.showingCallAgain.didset(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingCallAgain) != (a1 & 1))
  {
    CallControlsViewController.updateMenuVisibility()();
  }
}

void CallControlsViewController.showingCallAgain.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingCallAgain);
  *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingCallAgain) = a1;
  CallControlsViewController.showingCallAgain.didset(v2);
}

void closure #1 in CallControlsViewController.observeControlMode()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    CallControlsViewController.showingCallAgain.setter(v2 == 129);
  }
}

void CallControlsViewController.showingRingingCall.didset(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingRingingCall) != (a1 & 1))
  {
    CallControlsViewController.updateMenuVisibility()();
  }
}

void CallControlsViewController.showingRingingCall.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingRingingCall);
  *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingRingingCall) = a1;
  CallControlsViewController.showingRingingCall.didset(v2);
}

void CallControlsViewController.isCallDisconnectingOrDisconnected.didset(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isCallDisconnectingOrDisconnected) != (a1 & 1))
  {
    CallControlsViewController.updateMenuVisibility()();
  }
}

void CallControlsViewController.isCallDisconnectingOrDisconnected.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isCallDisconnectingOrDisconnected);
  *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isCallDisconnectingOrDisconnected) = a1;
  CallControlsViewController.isCallDisconnectingOrDisconnected.didset(v2);
}

void closure #1 in CallControlsViewController.observeCallStatus()(int *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    CallControlsViewController.showingRingingCall.setter(v2 == 4);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    CallControlsViewController.isCallDisconnectingOrDisconnected.setter((v2 - 5) < 2);
  }
}

void CallControlsViewController.isOnScreen.didset(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isOnScreen) != (a1 & 1))
  {
    CallControlsViewController.updateMenuVisibility()();
  }
}

void CallControlsViewController.isOnScreen.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isOnScreen);
  *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isOnScreen) = a1;
  CallControlsViewController.isOnScreen.didset(v2);
}

void closure #1 in CallControlsViewController.observeIsOnScreen()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Logger.sidebar);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_1BBC58000, v5, v6, "isOnScreen=%{BOOL}d", v7, 8u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    CallControlsViewController.isOnScreen.setter(v2);
  }
}

void CallControlsViewController.isIncomingCallBannerExpanded.didset(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isIncomingCallBannerExpanded) != (a1 & 1))
  {
    CallControlsViewController.updateMenuVisibility()();
  }
}

void CallControlsViewController.isIncomingCallBannerExpanded.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isIncomingCallBannerExpanded);
  *(v1 + OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isIncomingCallBannerExpanded) = a1;
  CallControlsViewController.isIncomingCallBannerExpanded.didset(v2);
}

Swift::Void __swiftcall CallControlsViewController.didExpandIncomingCallBanner(_:)(Swift::Bool a1)
{
  if (one-time initialization token for sidebar != -1)
  {
    OUTLINED_FUNCTION_0_22(&one-time initialization token for sidebar);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.sidebar);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1BBC58000, v3, v4, "MenuView - didExpandIncomingCallBanner=%{BOOL}d", v5, 8u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  CallControlsViewController.isIncomingCallBannerExpanded.setter(a1);
}

id CallControlsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CallControlsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for CallControlsPlatformController.isOneToOneModeEnabled.modify in conformance CallControlsViewController(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = CallControlsViewController.isOneToOneModeEnabled.getter() & 1;
  return CallControlsViewController.isOneToOneModeEnabled.modify;
}

void (*protocol witness for CallControlsPlatformController.menuState.modify in conformance CallControlsViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return CallControlsViewController.menuState.modify;
}

void (*protocol witness for CallControlsPlatformController.rosterCount.modify in conformance CallControlsViewController(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount;
  swift_beginAccess();
  v3[3] = *(v1 + v4);
  return CallControlsViewController.rosterCount.modify;
}

void (*protocol witness for CallControlsPlatformController.shouldUnconditionallyHideMenuView.modify in conformance CallControlsViewController(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CallControlsViewController.shouldUnconditionallyHideMenuView.modify;
}

void (*protocol witness for CallControlsPlatformController.sizeUpdater.modify in conformance CallControlsViewController(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CallControlsViewController.sizeUpdater.getter();
  a1[1] = v3;
  return CallControlsViewController.sizeUpdater.modify;
}

id CallControlsViewController.constraintsForLayout(_:in:deviceOrientation:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA7F0;
  result = OUTLINED_FUNCTION_13_20();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = [result topAnchor];

  v6 = [v1 topAnchor];
  v7 = OUTLINED_FUNCTION_9_16();

  *(v2 + 32) = v7;
  result = OUTLINED_FUNCTION_13_20();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = [result bottomAnchor];

  v10 = [v1 bottomAnchor];
  v11 = OUTLINED_FUNCTION_9_16();

  *(v2 + 40) = v11;
  result = OUTLINED_FUNCTION_13_20();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  v13 = [result leadingAnchor];

  v14 = [v1 leadingAnchor];
  v15 = OUTLINED_FUNCTION_9_16();

  *(v2 + 48) = v15;
  result = OUTLINED_FUNCTION_13_20();
  if (result)
  {
    v16 = result;
    v17 = [result trailingAnchor];

    v18 = [v1 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v2 + 56) = v19;
    return v2;
  }

LABEL_12:
  __break(1u);
  return result;
}

id specialized CallControlsViewController.__allocating_init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, Class a7, uint64_t a8, uint64_t a9)
{
  v16 = objc_allocWithZone(a7);

  return specialized CallControlsViewController.init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(a1, a2, a3, a4, a5, a6, v16, a8, a9);
}

id specialized CallControlsViewController.init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState] = 1;
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount] = 0;
  v13 = &a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_captionsStateController];
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_captionsStateController + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = &a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterViewProvider];
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_cancellables] = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dymanicStateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  swift_allocObject();
  *&a7[v15] = PassthroughSubject.init()();
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dynamicStateCancellable] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusViewModel] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusView] = 0;
  a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___menuViewController] = 0;
  a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingCallAgain] = 0;
  a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingRingingCall] = 0;
  a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isCallDisconnectingOrDisconnected] = 0;
  a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isOnScreen] = 0;
  a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isIncomingCallBannerExpanded] = 0;
  *(v13 + 1) = a2;
  swift_unknownObjectWeakAssign();
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_controlsManager] = a3;
  *(v14 + 1) = a9;
  swift_unknownObjectWeakAssign();
  v16 = a3;
  swift_unknownObjectRelease();
  outlined init with copy of IDSLookupManager(a5, &a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service]);
  *&a7[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_sidebarStateStream] = a6;
  v21.receiver = a7;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a5);
  return v17;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ClarityUIPreferences.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id ClarityUIPreferences.incomingCommunicationLimit.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v3 = lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  OUTLINED_FUNCTION_1_12(v3, v4);

  v5 = *(v2 + 16);

  return v5;
}

id key path getter for ClarityUIPreferences.incomingCommunicationLimit : ClarityUIPreferences@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = ClarityUIPreferences.incomingCommunicationLimit.getter(a1, a2);
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences()
{
  result = lazy protocol witness table cache variable for type ClarityUIPreferences and conformance ClarityUIPreferences;
  if (!lazy protocol witness table cache variable for type ClarityUIPreferences and conformance ClarityUIPreferences)
  {
    type metadata accessor for ClarityUIPreferences(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIPreferences and conformance ClarityUIPreferences);
  }

  return result;
}

uint64_t type metadata accessor for ClarityUIPreferences(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClarityUIPreferences;
  if (!type metadata singleton initialization cache for ClarityUIPreferences)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ClarityUIPreferences.incomingCommunicationLimit.setter(void *a1)
{
  v3 = *(v1 + 16);
  v4 = specialized ClarityUIPreferences.shouldNotifyObservers<A>(_:_:)(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_0_5();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_7_27(v7, v8, v9);
  }

  else
  {
    v10 = *(v1 + 16);
    *(v1 + 16) = a1;
  }
}

uint64_t specialized ClarityUIPreferences.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    v8 = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

void closure #1 in ClarityUIPreferences.incomingCommunicationLimit.setter(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

id ClarityUIPreferences.outgoingCommunicationLimit.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v3 = lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  OUTLINED_FUNCTION_1_12(v3, v4);

  v5 = *(v2 + 24);

  return v5;
}

id key path getter for ClarityUIPreferences.outgoingCommunicationLimit : ClarityUIPreferences@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = ClarityUIPreferences.outgoingCommunicationLimit.getter(a1, a2);
  *a3 = result;
  return result;
}

void ClarityUIPreferences.outgoingCommunicationLimit.setter(void *a1)
{
  v3 = *(v1 + 24);
  v4 = specialized ClarityUIPreferences.shouldNotifyObservers<A>(_:_:)(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_0_5();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_7_27(v7, v8, v9);
  }

  else
  {
    v10 = *(v1 + 24);
    *(v1 + 24) = a1;
  }
}

void closure #1 in ClarityUIPreferences.outgoingCommunicationLimit.setter(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  v3 = a2;
}

uint64_t ClarityUIPreferences.recentsEnabled.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v3 = lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  OUTLINED_FUNCTION_1_12(v3, v4);

  return *(v2 + 32);
}

uint64_t key path getter for ClarityUIPreferences.recentsEnabled : ClarityUIPreferences@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ClarityUIPreferences.recentsEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t ClarityUIPreferences.recentsEnabled.setter(uint64_t result, uint64_t a2)
{
  v3 = result & 1;
  if (*(v2 + 32) == (result & 1))
  {
    *(v2 + 32) = v3;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_0_5();
    *(v5 - 16) = v2;
    *(v5 - 8) = v3;
    OUTLINED_FUNCTION_7_27(v6, v7, v8);
  }

  return result;
}

uint64_t ClarityUIPreferences.inCallKeypadEnabled.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v3 = lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  OUTLINED_FUNCTION_1_12(v3, v4);

  return *(v2 + 33);
}

uint64_t key path getter for ClarityUIPreferences.inCallKeypadEnabled : ClarityUIPreferences@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ClarityUIPreferences.inCallKeypadEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t ClarityUIPreferences.inCallKeypadEnabled.setter(uint64_t result, uint64_t a2)
{
  v3 = result & 1;
  if (*(v2 + 33) == (result & 1))
  {
    *(v2 + 33) = v3;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_0_5();
    *(v5 - 16) = v2;
    *(v5 - 8) = v3;
    OUTLINED_FUNCTION_7_27(v6, v7, v8);
  }

  return result;
}

uint64_t ClarityUIPreferences.speakerOptionEnabled.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v3 = lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  OUTLINED_FUNCTION_1_12(v3, v4);

  return *(v2 + 34);
}

uint64_t key path getter for ClarityUIPreferences.speakerOptionEnabled : ClarityUIPreferences@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ClarityUIPreferences.speakerOptionEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t ClarityUIPreferences.speakerOptionEnabled.setter(uint64_t result, uint64_t a2)
{
  v3 = result & 1;
  if (*(v2 + 34) == (result & 1))
  {
    *(v2 + 34) = v3;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_0_5();
    *(v5 - 16) = v2;
    *(v5 - 8) = v3;
    OUTLINED_FUNCTION_7_27(v6, v7, v8);
  }

  return result;
}

uint64_t ClarityUIPreferences.().init()()
{
  *(v0 + 72) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  ObservationRegistrar.init()();
  type metadata accessor for CLFPhoneFaceTimeSettings();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  *(v0 + 16) = [v1 incomingCommunicationLimit];
  v2 = [v1 outgoingCommunicationLimit];

  *(v0 + 24) = v2;
  v3 = v1;
  *(v0 + 32) = [v3 recentsEnabled];
  *(v0 + 33) = [v3 inCallKeypadEnabled];
  LOBYTE(v1) = [v3 speakerOptionEnabled];

  *(v0 + 34) = v1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v34 = partial apply for closure #1 in ClarityUIPreferences.().init();
  v35 = v5;
  v30 = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_2;
  v6 = _Block_copy(&v30);
  v7 = v3;

  v8 = [v7 observeUpdatesForSelector:sel_incomingCommunicationLimit handler:v6];
  _Block_release(v6);
  ClarityUIPreferences.incomingCommunicationLimitObserver.setter(v8, &unk_1BC4BC998, partial apply for closure #1 in ClarityUIPreferences.incomingCommunicationLimitObserver.setter);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v34 = partial apply for closure #2 in ClarityUIPreferences.().init();
  v35 = v10;
  v30 = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_28;
  v11 = _Block_copy(&v30);
  v12 = v7;

  v13 = [v12 observeUpdatesForSelector:sel_outgoingCommunicationLimit handler:v11];
  _Block_release(v11);
  ClarityUIPreferences.incomingCommunicationLimitObserver.setter(v13, &unk_1BC4BC970, partial apply for closure #1 in ClarityUIPreferences.outgoingCommunicationLimitObserver.setter);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  v34 = partial apply for closure #3 in ClarityUIPreferences.().init();
  v35 = v15;
  v30 = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_35;
  v16 = _Block_copy(&v30);
  v17 = v12;

  v18 = [v17 observeUpdatesForSelector:sel_recentsEnabled handler:v16];
  _Block_release(v16);
  ClarityUIPreferences.incomingCommunicationLimitObserver.setter(v18, &unk_1BC4BC948, partial apply for closure #1 in ClarityUIPreferences.recentsEnabledObserver.setter);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  v34 = partial apply for closure #4 in ClarityUIPreferences.().init();
  v35 = v20;
  v30 = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_42;
  v21 = _Block_copy(&v30);
  v22 = v17;

  v23 = [v22 observeUpdatesForSelector:sel_inCallKeypadEnabled handler:v21];
  _Block_release(v21);
  ClarityUIPreferences.incomingCommunicationLimitObserver.setter(v23, &unk_1BC4BC920, partial apply for closure #1 in ClarityUIPreferences.inCallKeypadEnabledObserver.setter);
  v24 = swift_allocObject();
  swift_weakInit();

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v22;
  v34 = partial apply for closure #5 in ClarityUIPreferences.().init();
  v35 = v25;
  v30 = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_49;
  v26 = _Block_copy(&v30);
  v27 = v22;

  v28 = [v27 observeUpdatesForSelector:sel_speakerOptionEnabled handler:v26];
  _Block_release(v26);
  ClarityUIPreferences.incomingCommunicationLimitObserver.setter(v28, &unk_1BC4BC8F8, partial apply for closure #1 in ClarityUIPreferences.speakerOptionEnabledObserver.setter);

  return v0;
}

uint64_t closure #1 in ClarityUIPreferences.().init()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_17(a1, a2);
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = v3();
    v6 = OUTLINED_FUNCTION_8_25();
    v8 = [v6 v7];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_8_25();
        v2([v15 v16]);
      }
    }
  }

  return result;
}

uint64_t ClarityUIPreferences.incomingCommunicationLimitObserver.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v9 = v3;
  v10 = a1;
  specialized ClarityUIPreferences.withMutation<A, B>(keyPath:_:)(KeyPath, a3, &v8);

  return swift_unknownObjectRelease();
}

uint64_t closure #3 in ClarityUIPreferences.().init()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_17(a1, a2);
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = v3() & 1;
    v6 = OUTLINED_FUNCTION_8_25();
    if (v5 != [v6 v7])
    {
      v8 = OUTLINED_FUNCTION_8_25();
      v2([v8 v9]);
    }
  }

  return result;
}

uint64_t ClarityUIPreferences.dialerKeypadEnabled.getter()
{
  v0 = static ClarityUIPreferences.canEnableDialerKeypad.getter();
  if (v0)
  {
    v2 = ClarityUIPreferences.outgoingCommunicationLimit.getter(v0, v1);
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t static ClarityUIPreferences.canEnableDialerKeypad.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v0);
  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ClarityUIPreferences.canCallContacts.getter(uint64_t a1, uint64_t a2)
{
  v4 = ClarityUIPreferences.outgoingCommunicationLimit.getter(a1, a2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OUTLINED_FUNCTION_6_20();
  if (v3 == v5 && v2 == v6)
  {

    return 0;
  }

  v8 = OUTLINED_FUNCTION_3_13(v5);

  if (v8)
  {

    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = OUTLINED_FUNCTION_6_20();
  if (v8 == v10 && v2 == v11)
  {
    goto LABEL_25;
  }

  v13 = OUTLINED_FUNCTION_3_13(v10);

  if (v13)
  {

    return 1;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = OUTLINED_FUNCTION_6_20();
  if (v13 == v14 && v2 == v15)
  {
LABEL_25:

    return 1;
  }

  v17 = OUTLINED_FUNCTION_3_13(v14);

  if ((v17 & 1) == 0)
  {
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Log.clarityUI);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      v24 = ClarityUIPreferences.outgoingCommunicationLimit.getter(v22, v23);
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v29);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_1BBC58000, v19, v20, "Unhandled outgoing communication limit: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      MEMORY[0x1BFB23DF0](v21, -1, -1);
    }

    return 0;
  }

  return 1;
}

uint64_t ClarityUIPreferences.incomingCommunicationLimitObserver.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t closure #1 in ClarityUIPreferences.incomingCommunicationLimitObserver.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t ClarityUIPreferences.outgoingCommunicationLimitObserver.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t closure #1 in ClarityUIPreferences.outgoingCommunicationLimitObserver.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t ClarityUIPreferences.recentsEnabledObserver.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t closure #1 in ClarityUIPreferences.recentsEnabledObserver.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t ClarityUIPreferences.inCallKeypadEnabledObserver.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t closure #1 in ClarityUIPreferences.inCallKeypadEnabledObserver.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t ClarityUIPreferences.speakerOptionEnabledObserver.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ClarityUIPreferences and conformance ClarityUIPreferences();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t closure #1 in ClarityUIPreferences.speakerOptionEnabledObserver.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t ClarityUIPreferences.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15ConversationKit20ClarityUIPreferences___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ClarityUIPreferences.__deallocating_deinit()
{
  ClarityUIPreferences.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ClarityUIPreferences(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for CLFPhoneFaceTimeSettings()
{
  result = lazy cache variable for type metadata for CLFPhoneFaceTimeSettings;
  if (!lazy cache variable for type metadata for CLFPhoneFaceTimeSettings)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLFPhoneFaceTimeSettings);
  }

  return result;
}

__C::CGRect __swiftcall CGRect.flipIfNeeded(in:)(__C::CGRect in)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v7;
  result.origin.x = v8;
  return result;
}

__C::CGRect __swiftcall CGRect.centered(in:)(__C::CGRect in)
{
  v3 = v2;
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v9 = CGRectGetMidX(in) - v1 * 0.5;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGRectGetMidY(v14) - v3 * 0.5;
  v11 = v9;
  v12 = v4;
  v13 = v3;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v11;
  return result;
}

void CGRect.applyInsets(top:left:bottom:right:)()
{
  v1 = OUTLINED_FUNCTION_1_36();
  *v0 = UIEdgeInsetsInsetRect(v1, v2, v3, v4, v5, v6);
  *(v0 + 8) = v7;
  *(v0 + 16) = v8;
  *(v0 + 24) = v9;
}

BOOL CGRect.isValid.getter()
{
  OUTLINED_FUNCTION_20_2();
  Width = CGRectGetWidth(v5);
  if ((~*&Width & 0x7FF0000000000000) == 0 && (*&Width & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v6.origin.x = OUTLINED_FUNCTION_18_1();
  Height = CGRectGetHeight(v6);
  if ((~*&Height & 0x7FF0000000000000) == 0 && (*&Height & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  if ((~v1 & 0x7FF0000000000000) == 0 && (v1 & 0xFFFFFFFFFFFFFLL) != 0 || (~v0 & 0x7FF0000000000000) == 0 && (v0 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v7.origin.x = OUTLINED_FUNCTION_18_1();
  return !CGRectIsInfinite(v7);
}

uint64_t CGRect.description.getter()
{
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x1BFB20B10](40, 0xE100000000000000);
  type metadata accessor for CGPoint(0);
  OUTLINED_FUNCTION_3_24(v4, v5, v4, v6, v7, v8, v9, v10, v3, v2, 0);
  MEMORY[0x1BFB20B10](8236, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_3_24(v11, v12, v11, v13, v14, v15, v16, v17, v1, v0, v19);
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return v20;
}

uint64_t key path setter for SystemApertureInCallLeadingView.icon : SystemApertureInCallLeadingView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SystemApertureIcon(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x80))(v6);
}

uint64_t SystemApertureInCallLeadingView.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_icon;
  swift_beginAccess();
  return outlined init with copy of SystemApertureIcon(v1 + v3, a1);
}

uint64_t outlined init with copy of SystemApertureIcon(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemApertureIcon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SystemApertureInCallLeadingView.icon.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_icon;
  swift_beginAccess();
  outlined assign with copy of SystemApertureIcon(a1, v1 + v3);
  swift_endAccess();
  SystemApertureInCallLeadingView.updateIconView()();
  return outlined destroy of SystemApertureIcon(a1);
}

uint64_t outlined assign with copy of SystemApertureIcon(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemApertureIcon(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id (*SystemApertureInCallLeadingView.icon.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SystemApertureInCallLeadingView.icon.modify;
}

id SystemApertureInCallLeadingView.icon.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return SystemApertureInCallLeadingView.updateIconView()();
  }

  return result;
}

uint64_t SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a3(a1, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

char *closure #1 in SystemApertureInCallLeadingView.init(icon:callDurationProvider:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *&result[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView];
    v6 = result;
    v7 = [v5 accessibilityLabel];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        v13 = type metadata accessor for Locale();
        __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1BC4BA940;
        *(v14 + 56) = MEMORY[0x1E69E6158];
        *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
        v15 = one-time initialization token for conversationKit;
        swift_bridgeObjectRetain_n();
        if (v15 != -1)
        {
          swift_once();
        }

        v28._object = 0xE000000000000000;
        v16._object = 0x80000001BC4F3E90;
        v16._countAndFlagsBits = 0xD000000000000021;
        v17._countAndFlagsBits = 0;
        v17._object = 0xE000000000000000;
        v28._countAndFlagsBits = 0;
        v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v17, v28);
        countAndFlagsBits = v18._countAndFlagsBits;
        object = v18._object;
        if (*(v14 + 16))
        {
          countAndFlagsBits = String.init(format:locale:arguments:)();
          v22 = v21;

          object = v22;
        }

        else
        {
        }

        outlined destroy of Locale?(v3);
LABEL_16:
        outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(countAndFlagsBits, object, v6);
        v26 = [v6 systemApertureElementContext];

        [v26 setElementNeedsUpdate];
        return swift_unknownObjectRelease();
      }
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v29._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0x494F474E4F5F5841;
    v23._object = 0xEF4C4C41435F474ELL;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v24, v29);
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;
    goto LABEL_16;
  }

  return result;
}

id SystemApertureInCallLeadingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void SystemApertureInCallLeadingView.init(frame:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_interItemSpacing) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_extraDurationPadding) = 0x4000000000000000;
  OUTLINED_FUNCTION_2_31();
  __break(1u);
}

id SystemApertureInCallLeadingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureInCallLeadingView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_interItemSpacing) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_extraDurationPadding) = 0x4000000000000000;
  OUTLINED_FUNCTION_2_31();
  __break(1u);
}

id SystemApertureInCallLeadingView.__deallocating_deinit()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v22 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_2_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = *(v0 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView);
  type metadata accessor for OS_dispatch_queue();
  v15 = v14;
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  aBlock[4] = partial apply for closure #1 in SystemApertureInCallLeadingView.deinit;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_3;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v13, v7, v18);
  _Block_release(v18);

  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v22);
  v23.receiver = v21;
  v23.super_class = type metadata accessor for SystemApertureInCallLeadingView(0);
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

Swift::Void __swiftcall SystemApertureInCallLeadingView.layoutSubviews()()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for SystemApertureInCallLeadingView(0);
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  v8 = [v0 effectiveUserInterfaceLayoutDirection];
  v9 = *&v0[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView];
  OUTLINED_FUNCTION_3_25();
  [v9 sizeThatFits_];
  v13 = v12;
  v15 = v14;
  v16 = 0.0;
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_3_25();
    v16 = CGRectGetWidth(v33) - v13;
  }

  OUTLINED_FUNCTION_3_25();
  v17 = (CGRectGetHeight(v34) - v15) * 0.5;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E7048], v1);
  v18 = [v0 traitCollection];
  [v18 displayScale];
  v20 = v19;
  v21 = CGFloat.rounded(_:toScale:)(v7, v19, v16);
  v22 = CGFloat.rounded(_:toScale:)(v7, v20, v17);

  (*(v3 + 8))(v7, v1);
  [v9 setFrame_];
  OUTLINED_FUNCTION_3_25();
  Width = CGRectGetWidth(v35);
  v24 = *&v0[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_interItemSpacing];
  v25 = Width - v13 - v24;
  OUTLINED_FUNCTION_3_25();
  Height = CGRectGetHeight(v36);
  v27 = *&v0[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView];
  [v27 sizeThatFits_];
  v29 = v28;
  if (v8 == 1)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v13 + v24;
  }

  OUTLINED_FUNCTION_3_25();
  v31 = (CGRectGetHeight(v37) - v29) * 0.5;
  OUTLINED_FUNCTION_3_25();
  [v27 setFrame_];
}

CGSize __swiftcall SystemApertureInCallLeadingView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView) sizeThatFits_];
  v5 = v4;
  v7 = v6;
  v8 = width - v4;
  v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_interItemSpacing);
  [*(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView) sizeThatFits_];
  if (v7 > v11)
  {
    v11 = v7;
  }

  v12 = v5 + v9 + v10 + *(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_extraDurationPadding);
  result.height = v11;
  result.width = v12;
  return result;
}

double SystemApertureInCallLeadingView.preferredLayoutMargins.getter@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView)) + 0xA8))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

id SystemApertureInCallLeadingView.updateIconView()()
{
  v1 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView);
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  (*((*v6 & *v5) + 0x70))(v4);
  return [v0 setNeedsLayout];
}

uint64_t outlined destroy of SystemApertureIcon(uint64_t a1)
{
  v2 = type metadata accessor for SystemApertureIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double protocol witness for SystemApertureAccessoryView.preferredLayoutMargins.getter in conformance SystemApertureInCallLeadingView@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

char *specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = objc_allocWithZone(type metadata accessor for SystemApertureInCallLeadingView(0));
  (*(v10 + 16))(v14, a2, a4);
  v16 = specialized SystemApertureInCallLeadingView.init(icon:callDurationProvider:)(a1, v14, v15, a4, a5);
  (*(v10 + 8))(a2, a4);
  return v16;
}

char *specialized SystemApertureInCallLeadingView.init(icon:callDurationProvider:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  v10 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - v19;
  (*(v13 + 32))(&v52 - v19, a2, a4, v18);
  *&a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_interItemSpacing] = 0x4010000000000000;
  *&a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_extraDurationPadding] = 0x4000000000000000;
  outlined init with copy of SystemApertureIcon(a1, &a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_icon]);
  outlined init with copy of SystemApertureIcon(a1, v12);
  v21 = objc_allocWithZone(type metadata accessor for SystemApertureIconView(0));
  SystemApertureIconView.init(icon:isDetached:)();
  *&a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView] = v22;
  v23 = [objc_opt_self() monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  v24 = objc_allocWithZone(type metadata accessor for LiveCallDurationView());
  (*(v13 + 16))(v16, v20, a4);
  *&a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView] = specialized LiveCallDurationView.init(font:callDurationProvider:voiceOverUpdateHandler:)(v23, v16, 0, 0, v24, a4, a5);
  v25 = type metadata accessor for SystemApertureInCallLeadingView(0);
  v54.receiver = a3;
  v54.super_class = v25;
  v26 = objc_msgSendSuper2(&v54, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v27 = one-time initialization token for conversationControls;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, &static Logger.conversationControls);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v32 = 136446210;
    v33 = _typeName(_:qualified:)();
    v35 = v13;
    v36 = a4;
    v37 = v20;
    v38 = a1;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v53);

    *(v32 + 4) = v39;
    a1 = v38;
    v20 = v37;
    a4 = v36;
    v13 = v35;
    _os_log_impl(&dword_1BBC58000, v30, v31, "[SystemAperture] %{public}s created", v32, 0xCu);
    v40 = v52;
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1BFB23DF0](v40, -1, -1);
    MEMORY[0x1BFB23DF0](v32, -1, -1);
  }

  [v28 addSubview_];
  v41 = OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView;
  [v28 addSubview_];
  v42 = one-time initialization token for conversationKit;
  v43 = v28;
  if (v42 != -1)
  {
    swift_once();
  }

  v55._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0x494F474E4F5F5841;
  v44._object = 0xEF4C4C41435F474ELL;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v45, v55);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v46._countAndFlagsBits, v46._object, v43);

  SystemApertureInCallLeadingView.updateIconView()();
  v47 = *&v28[v41];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = *((*MEMORY[0x1E69E7D40] & *v47) + 0x60);
  v50 = v47;

  v49(partial apply for closure #1 in SystemApertureInCallLeadingView.init(icon:callDurationProvider:), v48);

  outlined destroy of SystemApertureIcon(a1);
  (*(v13 + 8))(v20, a4);

  return v43;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for SystemApertureInCallLeadingView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemApertureInCallLeadingView;
  if (!type metadata singleton initialization cache for SystemApertureInCallLeadingView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SystemApertureInCallLeadingView(uint64_t a1)
{
  result = type metadata accessor for SystemApertureIcon(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v8 = type metadata accessor for Logger();
  v1[19] = v8;
  v1[20] = *(v8 - 8);
  v1[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static CallScreeningActor.shared;
  v1[22] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:), v9, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isScreeningLiveActivityEnabled.getter() & 1) != 0 || (Features.receptionistEnabled.getter())
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 144);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v19 = type metadata accessor for LockScreenActivityService(0, *(*(v0 + 136) + *MEMORY[0x1E6995FF0]), *(*(v0 + 136) + *MEMORY[0x1E6995FF0] + 8), v1);
    v7 = *(v3 + 16);
    v8 = OUTLINED_FUNCTION_2_32();
    v7(v8);
    outlined init with copy of IDSLookupManager(v6, v0 + 16);
    v9 = *(v4 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer_config + 16);

    v10 = LockScreenActivityService.__allocating_init(logger:activityController:callServices:updateActivityInterval:)(v2, v5, (v0 + 16), v9);
    *(v0 + 184) = v10;
    v11 = OUTLINED_FUNCTION_2_32();
    v7(v11);
    outlined init with copy of IDSLookupManager(v6, v0 + 56);
    v12 = type metadata accessor for HUDActivityService(0);
    swift_allocObject();
    v13 = HUDActivityService.init(logger:callServices:)(v2, (v0 + 56));
    *(v0 + 192) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit18ActivityController_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit18ActivityController_pGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BC4BAA20;
    *(v14 + 56) = v19;
    *(v14 + 64) = &protocol witness table for LockScreenActivityService<A>;
    *(v14 + 32) = v10;
    *(v14 + 96) = v12;
    *(v14 + 104) = &protocol witness table for HUDActivityService;
    *(v14 + 72) = v13;
    v15 = OUTLINED_FUNCTION_2_32();
    v7(v15);
    *(v0 + 200) = type metadata accessor for AnsweringMachineActivityService(0);
    swift_allocObject();

    *(v0 + 208) = AnsweringMachineActivityService.init(activityControllers:logger:)(v14, v2);

    return MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:), 0, 0);
  }

  else
  {
    v16 = *(v0 + 96);
    *(v16 + 32) = 0;
    *v16 = 0u;
    *(v16 + 16) = 0u;

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MainActor();
  *(v0 + 216) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:), v2, v1);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[26];
  v2 = v0[13];

  closure #1 in AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:)(v2, v1);
  v3 = v0[22];

  return MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:), v3, 0);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[26];
  v2 = v0[12];
  v2[3] = v0[25];
  v2[4] = &protocol witness table for AnsweringMachineActivityService;

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:)(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>();
  v3 = Publisher<>.sink(receiveValue:)();

  v8 = type metadata accessor for AnyCancellable();
  *&v7 = v3;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v4 = *(*(a2 + 24) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v4);
  v5 = *(a2 + 24);
  *(v5 + 16) = v4 + 1;
  outlined init with take of Any(&v7, (v5 + 32 * v4 + 32));
  *(a2 + 24) = v5;
  return swift_endAccess();
}

void *AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2, v9);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  outlined init with copy of IDSLookupManager(a1, v17);
  v14 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v17, v14 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23AnsweringConditionTimerCySSGMd, &_s15ConversationKit23AnsweringConditionTimerCySSGMR);
  swift_allocObject();

  specialized AnsweringConditionTimer.init(logger:timeToWaitForCall:callIsScreenable:)(v11, partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Duration), v13, partial apply for closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:), v14);
  return &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);
}

uint64_t implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);

  return specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:)(a1, a2);
}

uint64_t implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();
  v2 = *(v0 + 48);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();

  return v0(0);
}

uint64_t specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[3] = a2;
  v3[4] = a1;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:), v5, v4);
}

uint64_t specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:)()
{
  v26 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v25[0] = v0[4];
  v25[1] = v2;
  if ((*(v1 + 16))(v25))
  {
    (*(v0[6] + 32))(v0 + 2);
    v0[10] = direct field offset for AnsweringConditionTimer.logger;
    swift_bridgeObjectRetain_n();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[5];
    if (v5)
    {
      v24 = v0[4];
      v7 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v7 = 136446466;
      v8 = Duration.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v25);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v6, v25);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_1BBC58000, v3, v4, "Should Answer timer started with timeToWait %{public}s for: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:);

    return AsyncCancellableTimer.wait(with:)();
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[5];
    if (v14)
    {
      v16 = v0[4];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136446210;

      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v25);
      OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v19, v20, "Should Answer timer returning early as NO for: %{public}s because we can no longer screen the call.");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1BFB23DF0](v17, -1, -1);
    }

    else
    {
    }

    OUTLINED_FUNCTION_0_23();

    return v23(0);
  }
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:);
  }

  else
  {
    v5 = specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v17 = v0;

  if (static Task<>.isCancelled.getter())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = v0[5];
    if (v3)
    {
      v5 = v0[4];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16[0] = v7;
      *v6 = 136446210;

      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v16);
      OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v8, v9, "Should Answer timer canceled for: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = v0[5];
    v10 = v0[6];
    v16[0] = v0[4];
    v16[1] = v11;
    (*(v10 + 16))(v16);
  }

  OUTLINED_FUNCTION_0_23();
  v14 = v13 & 1;

  return v12(v14);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();

  return v0(0);
}

uint64_t closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 72))(v2, v3, 0, v4, v5) & 1;
}

char *specialized AnsweringConditionTimer.init(logger:timeToWaitForCall:callIsScreenable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = direct field offset for AnsweringConditionTimer.timer;
  type metadata accessor for AsyncCancellableTimer();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *&v5[v11] = v12;
  *(v5 + 4) = a2;
  *(v5 + 5) = a3;
  v13 = direct field offset for AnsweringConditionTimer.logger;
  v14 = type metadata accessor for Logger();
  (*(*(v14 - 8) + 32))(&v5[v13], a1, v14);
  *(v5 + 2) = a4;
  *(v5 + 3) = a5;
  return v5;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);

  return implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(v4, v2);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = v0;

  OUTLINED_FUNCTION_0_23();

  return v2(v1);
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void ScreenSharingControlsRecipeGenerator.outgoingScreenSharingRequestHUDRecipe(controlsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v163 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_1();
  v36 = OUTLINED_FUNCTION_16(v35);
  v37 = type metadata accessor for ConversationControlsRecipe(v36);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17();
  v41 = (v39 - v40);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_10(&v163 - v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v44);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v45);
  v46 = OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v49 - v48);
  v50 = [*(v26 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) requestToScreenShareEnabled];
  v51 = MEMORY[0x1E69E7D40];
  if (!v50)
  {
    goto LABEL_10;
  }

  v52 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x2C0))();
  if (!v52)
  {
    goto LABEL_10;
  }

  v174 = v24;
  v53 = v52;
  if ([v52 state] != 2 && objc_msgSend(v53, sel_state) != 3 || !objc_msgSend(v53, sel_avMode) || (v54 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0])) == 0)
  {

    goto LABEL_10;
  }

  v55 = v54;
  v173 = v53;
  v172 = v28;
  v56 = [v54 handle];
  ConversationController.participant(with:)();

  v57 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v57, v58, v46) == 1)
  {

    OUTLINED_FUNCTION_31_5();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    OUTLINED_FUNCTION_47_2();
LABEL_10:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v59 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v59, &static Logger.conversationControls);
    v60 = v26;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_42();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      v65 = (*((*v51 & *v60) + 0x2C0))();
      *(v63 + 4) = v65;
      *v64 = v65;
      _os_log_impl(&dword_1BBC58000, v61, v62, "Cannot generate outgoing screen sharing request HUD, conversation: %@", v63, 0xCu);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

LABEL_15:
    OUTLINED_FUNCTION_7_7();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    goto LABEL_16;
  }

  v70 = OUTLINED_FUNCTION_15_6();
  outlined init with take of Participant(v70, v176, v71);
  v169 = v55;
  v171 = ScreenSharingControlsRecipeGenerator.recipeViewFor(_:in:managedBy:)(v55, v173, v26);
  v170 = v72;
  v166 = v73;
  isa = objc_opt_self();
  v74 = [isa conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v75.super.isa = v74;
  v168 = OUTLINED_FUNCTION_17_0(0xD000000000000024, 0x80000001BC4F3EC0, v76, v77, v75);
  v167 = v78;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v79 = swift_allocObject();
  v165 = xmmword_1BC4BA940;
  *(v79 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v80 = v180[0];

  Participant.name(_:)();
  v82 = v81;
  v84 = v83;

  *(v79 + 56) = MEMORY[0x1E69E6158];
  *(v79 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v79 + 32) = v82;
  *(v79 + 40) = v84;
  OUTLINED_FUNCTION_26_3();
  v85 = String.init(format:_:)();
  v87 = v86;

  v180[0] = 25;
  memset(&v180[1], 0, 32);
  LOBYTE(v180[5]) = 7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v168 = v170;
  v167 = v171;
  v88 = [isa conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v89.super.isa = v88;
  v94 = OUTLINED_FUNCTION_17_0(v90, v91, v92, v93, v89);
  v96 = v95;

  v97._countAndFlagsBits = v94;
  v97._object = v96;
  isa = NSAttributedString.__allocating_init(string:)(v97).super.isa;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v99 = OUTLINED_FUNCTION_3_2(v98);
  *(v99 + 16) = xmmword_1BC4BAC30;
  v100._countAndFlagsBits = v85;
  v100._object = v87;
  *(v99 + 32) = NSAttributedString.__allocating_init(string:)(v100);
  v101 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_9_3();
  v105 = swift_allocObject();
  *(v105 + 16) = v165;
  swift_storeEnumTagMultiPayload();
  v106 = v37[9];
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v101);
  v110 = (v41 + v37[10]);
  v111 = v41 + v37[15];
  v112.n128_f64[0] = OUTLINED_FUNCTION_8_26();
  *(v41 + v113) = 0;
  v114 = v41 + v37[17];
  OUTLINED_FUNCTION_20_5(v41 + v37[18], v112);
  outlined init with copy of ConversationControlsType(v180, v41);
  v115 = v171;
  v41[6] = 0;
  v41[7] = v115;
  OUTLINED_FUNCTION_44_2();
  v41[8] = v117;
  v41[9] = v116;
  v41[10] = isa;
  v41[11] = v99;
  v110[1] = 0;
  v110[2] = 0;
  *v110 = 0;
  outlined assign with copy of AttributedString?(v32, v41 + v106);
  *(v41 + v37[11]) = 2;
  *(v41 + v37[12]) = 0;
  *(v41 + v37[13]) = 1;
  *(v41 + v37[14]) = 1;
  *v114 = 0;
  *(v114 + 1) = 0;
  v114[16] = -1;
  v118 = *(v105 + 16);
  if (v118 <= 2)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(v180);
    *v111 = v105;
    *(v111 + 8) = 0u;
    *(v111 + 24) = 0u;
    v111[40] = 0;
    OUTLINED_FUNCTION_26_3();
    outlined init with copy of ConversationControlsRecipe(v131, v132);
    OUTLINED_FUNCTION_16_5();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
    OUTLINED_FUNCTION_0_24();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v41, v137);
    OUTLINED_FUNCTION_47_2();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v119 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v119, &static Logger.conversationControls);

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = OUTLINED_FUNCTION_42();
      v171 = OUTLINED_FUNCTION_23();
      v178 = v171;
      *v122 = 136315138;
      v177 = v118;
      v123 = String.init<A>(reflecting:)();
      v118 = v124;
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v178);

      *(v122 + 4) = v110;
      _os_log_impl(&dword_1BBC58000, v120, v121, "Too many trailing actions (%s)", v122, 0xCu);
      v125 = OUTLINED_FUNCTION_34_6(&a11);
      __swift_destroy_boxed_opaque_existential_1(v125);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(v180);
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_0_24();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v41, v126);
    OUTLINED_FUNCTION_34_6(&a16);
    OUTLINED_FUNCTION_7_7();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
  }

  v138 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v138, v139, v37) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v118, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v140 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v140, &static Logger.conversationControls);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    v143 = OUTLINED_FUNCTION_25(v142);
    v144 = v169;
    if (v143)
    {
      v145 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v145);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v146, v147, "Error creating ConversationControlsRecipe for outgoing screen sharing request");
      OUTLINED_FUNCTION_18();
      v148 = v168;
      v149 = &v180[9];
    }

    else
    {
      v148 = v141;
      v141 = v167;
      v149 = &v181;
    }

    v155 = *(v149 - 32);

    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_33();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v176, v156);
    goto LABEL_15;
  }

  v150 = OUTLINED_FUNCTION_3_27();
  v151 = v175;
  outlined init with take of Participant(v150, v175, v152);
  if (SBUIIsSystemApertureEnabled())
  {
    ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v26, 1, v174, v179);

    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_33();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v176, v153);
    v154 = v37[18];
    memcpy(v180, (v151 + v154), 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v180, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
    memcpy((v151 + v154), v179, 0x49uLL);
  }

  else
  {
    OUTLINED_FUNCTION_2_33();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v176, v157);

    OUTLINED_FUNCTION_31_5();
  }

  outlined init with copy of ConversationControlsRecipe(v151, v110);
  OUTLINED_FUNCTION_16_5();
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
  OUTLINED_FUNCTION_0_24();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v151, v162);
LABEL_16:
  OUTLINED_FUNCTION_30_0();
}

id ScreenSharingControlsRecipeGenerator.recipeViewFor(_:in:managedBy:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v9 = ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:handle:badgeImage:)([*(a3 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) contactStore], objc_msgSend(a1, sel_handle), 0);
  v10 = [v9 view];
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x2A8))();
  (*((*v11 & *v9) + 0x58))(v8);

  (*(v6 + 8))(v8, v5);
  return v10;
}

void ScreenSharingControlsRecipeGenerator.incomingScreenSharingRequestHUDRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_29();
  v167 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  v12 = OUTLINED_FUNCTION_16(v11);
  v13 = type metadata accessor for ConversationControlsRecipe(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10(&v155 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v25 - v24);
  v26 = *(v3 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags);
  if (([v26 requestToScreenShareEnabled] & 1) == 0 && !objc_msgSend(v26, sel_usesModernScreenSharingFromMessages))
  {
    goto LABEL_13;
  }

  v27 = MEMORY[0x1E69E7D40];
  v28 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2C0))();
  if (!v28)
  {
    goto LABEL_13;
  }

  v29 = v28;
  if ([v28 state] != 3)
  {
    if (![v26 sharePlayInCallsEnabled])
    {
      goto LABEL_12;
    }

    v165 = v5;
    v35 = (*v27 & *v3) + 672;
    v36 = *((*v27 & *v3) + 0x2A0);
    v5 = v35;
    v36();
    v38 = v37;
    ObjectType = swift_getObjectType();
    LOBYTE(v38) = (*(v38 + 152))(ObjectType, v38);
    v40 = swift_unknownObjectRelease();
    if ((v38 & 1) == 0)
    {

      OUTLINED_FUNCTION_48_4();
      goto LABEL_13;
    }

    (v36)(v40);
    v42 = v41;
    v43 = swift_getObjectType();
    v44 = (*(v42 + 184))(v43, v42);
    swift_unknownObjectRelease();
    v45 = [v44 isTelephonyProvider];

    OUTLINED_FUNCTION_48_4();
    if ((v45 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (![v29 avMode] || (v30 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0])) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v31 = v30;
  v32 = [v30 handle];
  ConversationController.participant(with:)();

  v33 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v33, v34, v22) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_13:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v46, &static Logger.conversationControls);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v48))
    {
      v49 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v49);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v50, v51, "Cannot generate incoming screen sharing request HUD");
      OUTLINED_FUNCTION_18();
    }

LABEL_18:
    OUTLINED_FUNCTION_7_7();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    goto LABEL_19;
  }

  v165 = v5;
  v56 = OUTLINED_FUNCTION_15_6();
  outlined init with take of Participant(v56, v168, v57);
  v163 = v31;
  v58 = ScreenSharingControlsRecipeGenerator.recipeViewFor(_:in:managedBy:)(v31, v29, v3);
  OUTLINED_FUNCTION_41_5(v58);
  OUTLINED_FUNCTION_31_6(v59, v60, &v175 + 8);
  v61 = objc_opt_self();
  v62 = [v61 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v63.super.isa = v62;
  isa = OUTLINED_FUNCTION_17_0(0xD000000000000011, 0x80000001BC4F3EF0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v63);
  v159 = v64;

  v65 = [v61 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v66.super.isa = v65;
  v67 = OUTLINED_FUNCTION_17_0(0xD000000000000017, 0x80000001BC4F3F10, 0x61737265766E6F43, 0xEF74694B6E6F6974, v66);
  OUTLINED_FUNCTION_37_9(v67);
  v162 = v68;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v70 = v173[0];

  Participant.name(_:)();
  v72 = v71;
  v74 = v73;

  *(v69 + 56) = MEMORY[0x1E69E6158];
  *(v69 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v69 + 32) = v72;
  *(v69 + 40) = v74;
  OUTLINED_FUNCTION_26_3();
  String.init(format:_:)();

  v173[0] = 26;
  memset(&v173[1], 0, 32);
  LOBYTE(v173[5]) = 7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_37_9(v75);
  OUTLINED_FUNCTION_42_7();
  v162 = v76;
  v77._countAndFlagsBits = isa;
  v77._object = v159;
  isa = NSAttributedString.__allocating_init(string:)(v77).super.isa;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v79 = OUTLINED_FUNCTION_3_2(v78);
  v159 = v79;
  *(v79 + 16) = xmmword_1BC4BAC30;
  v80._countAndFlagsBits = OUTLINED_FUNCTION_40_2();
  *(v79 + 32) = NSAttributedString.__allocating_init(string:)(v80);
  v81 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
  v85 = OUTLINED_FUNCTION_46_4();
  type metadata accessor for ConversationControlsAction(v85);
  OUTLINED_FUNCTION_9_3();
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1BC4BAA20;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(&v174);
  v157 = v175;
  v158 = v174;
  v156 = v176;
  v87 = v13[9];
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v81);
  v91 = (v17 + v13[10]);
  v92 = v17 + v13[15];
  v93.n128_f64[0] = OUTLINED_FUNCTION_8_26();
  *(v17 + v94) = 0;
  v95 = v17 + v13[17];
  OUTLINED_FUNCTION_20_5(v17 + v13[18], v93);
  outlined init with copy of ConversationControlsType(v173, v17);
  OUTLINED_FUNCTION_42_7();
  v17[6] = 0;
  v17[7] = v96;
  v97 = v161;
  v17[8] = v164;
  v17[9] = v97;
  v98 = v159;
  v17[10] = isa;
  v17[11] = v98;
  v99 = v169;
  v91[1] = 0;
  v91[2] = 0;
  *v91 = 0;
  v100 = v86;
  outlined assign with copy of AttributedString?(v99, v17 + v87);
  *(v17 + v13[11]) = 2;
  *(v17 + v13[12]) = 0;
  *(v17 + v13[13]) = 1;
  *(v17 + v13[14]) = 1;
  *v95 = 0;
  *(v95 + 1) = 0;
  v95[16] = -1;
  v101 = *(v86 + 16);
  if (v101 <= 5)
  {
    v101 = v156 | 0x80u;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(v173);
    *v92 = v86;
    *(v92 + 24) = v157;
    *(v92 + 8) = v158;
    v92[40] = v101;
    OUTLINED_FUNCTION_26_3();
    outlined init with copy of ConversationControlsRecipe(v115, v116);
    OUTLINED_FUNCTION_16_5();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
    OUTLINED_FUNCTION_0_24();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v17, v121);
    OUTLINED_FUNCTION_48_4();
    v122 = v166;
    v107 = v163;
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v102 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v102, &static Logger.conversationControls);

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.fault.getter();

    v105 = v103;
    v106 = os_log_type_enabled(v103, v104);
    v107 = v163;
    if (v106)
    {
      v108 = OUTLINED_FUNCTION_42();
      v171 = OUTLINED_FUNCTION_23();
      v164 = v100;
      v100 = v171;
      *v108 = 136315138;
      v170 = v101;
      v109 = String.init<A>(reflecting:)();
      v101 = v110;
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, &v171);

      *(v108 + 4) = v111;
      _os_log_impl(&dword_1BBC58000, v105, v104, "Too many buttonShelf actions (%s)", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v100);
      OUTLINED_FUNCTION_27();
      v107 = v163;
      OUTLINED_FUNCTION_27();

      v112 = OUTLINED_FUNCTION_29_9();
    }

    else
    {

      v113 = &_s10Foundation16AttributedStringVSgMd;
      v114 = &_s10Foundation16AttributedStringVSgMR;
      v112 = v99;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v112, v113, v114);
    outlined destroy of ConversationControlsType(v173);
    v122 = v166;
    OUTLINED_FUNCTION_0_24();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v17, v123);
    OUTLINED_FUNCTION_34_6(&v177);
    OUTLINED_FUNCTION_7_7();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
    OUTLINED_FUNCTION_48_4();
  }

  v128 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v128, v129, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v130 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v130, &static Logger.conversationControls);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v132))
    {
      v133 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v133);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v134, v135, "Error creating ConversationControlsRecipe for incoming screen sharing request");
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_30_5();
      v137 = &v173[9];
    }

    else
    {
      v136 = v131;
      v131 = v162;
      v137 = &v174;
    }

    v144 = *(v137 - 32);

    OUTLINED_FUNCTION_2_33();
    v145 = OUTLINED_FUNCTION_45_5();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v145, v146);
    goto LABEL_18;
  }

  v138 = OUTLINED_FUNCTION_3_27();
  outlined init with take of Participant(v138, v122, v139);
  if (SBUIIsSystemApertureEnabled())
  {
    ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v3, 65, v167, v172);
    OUTLINED_FUNCTION_30_5();

    OUTLINED_FUNCTION_2_33();
    v141 = OUTLINED_FUNCTION_45_5();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v141, v142);
    v143 = v13[18];
    memcpy(v173, (v122 + v143), 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v173, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
    memcpy((v122 + v143), v172, 0x49uLL);
  }

  else
  {
    OUTLINED_FUNCTION_2_33();
    v147 = OUTLINED_FUNCTION_45_5();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v147, v148);
    OUTLINED_FUNCTION_30_5();
  }

  outlined init with copy of ConversationControlsRecipe(v122, v100);
  OUTLINED_FUNCTION_16_5();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
  OUTLINED_FUNCTION_0_24();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v122, v154);
LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void ScreenSharingControlsRecipeGenerator.incomingRemoteControlRequestHUDRecipe(controlsManager:requestingParticipantDisplayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  v157 = v22;
  v160 = v23;
  v158 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_1();
  v35 = OUTLINED_FUNCTION_16(v34);
  v36 = type metadata accessor for ConversationControlsRecipe(v35);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_17();
  v40 = (v38 - v39);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v147 - v42;
  v44 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_8();
  v50 = v49 - v48;
  v51 = MEMORY[0x1E69E7D40];
  v52 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x2C0))();
  if (v52)
  {
    v53 = v52;
    if ([v52 state] == 3 && objc_msgSend(v53, sel_avMode))
    {
      v155 = v43;
      v156 = v28;
      ConversationControlsHelper.assetsForDefaultHUD(controlsManager:conversation:)(v26, v53);
      OUTLINED_FUNCTION_31_6(v54, v55, &v164[9]);
      v57 = v56;
      v58 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
      OUTLINED_FUNCTION_41_5(v58);
      v151 = v57;
      OUTLINED_FUNCTION_43_4([v57 image]);
      v59 = [objc_opt_self() clearColor];
      v60 = v26;
      v61 = v36;
      v62 = OUTLINED_FUNCTION_29_9();

      v150 = v53;
      v63 = v62;
      v64 = v61;
      v65 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v150, v153, v158, v63, v59);
      v66 = OUTLINED_FUNCTION_43_4([v65 view]);
      v67 = *((*v51 & *v60) + 0x2A8);
      v148 = v60;
      v67(v66);
      v68 = *((*v51 & *v65) + 0x58);
      v149 = v65;
      v69 = v68(v50);
      OUTLINED_FUNCTION_41_5(v69);
      (*(v46 + 8))(v50, v44);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v70 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v71.super.isa = v70;
      OUTLINED_FUNCTION_17_0(0xD00000000000001CLL, 0x80000001BC4F3F30, v72, v73, v71);

      v74._countAndFlagsBits = OUTLINED_FUNCTION_40_2();
      v75.super.isa = NSAttributedString.__allocating_init(string:)(v74).super.isa;
      OUTLINED_FUNCTION_37_9(v75.super.isa);
      v76 = v158;
      OUTLINED_FUNCTION_26_3();
      isa = ConversationControlsStringProvider.incomingRemoteControlRequestSubtitle(requestingParticipantDisplayName:)(v77).super.isa;
      v164[0] = v76;
      v164[1] = v70;
      LOBYTE(v164[5]) = 4;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v80 = OUTLINED_FUNCTION_3_2(v79);
      v158 = v80;
      *(v80 + 16) = xmmword_1BC4BAC30;
      *(v80 + 32) = isa;
      v81 = type metadata accessor for AttributedString();
      OUTLINED_FUNCTION_45_5();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
      v85 = OUTLINED_FUNCTION_46_4();
      type metadata accessor for ConversationControlsAction(v85);
      OUTLINED_FUNCTION_9_3();
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_1BC4BAA20;
      OUTLINED_FUNCTION_40_2();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_29_9();

      v87 = v153;
      v160 = v153;
      OUTLINED_FUNCTION_30_5();
      v89 = v88;
      OUTLINED_FUNCTION_37_9(isa);
      static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v90);
      OUTLINED_FUNCTION_33_9();
      v91 = v165;
      v92 = v64[9];
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v81);
      v96 = (v40 + v64[10]);
      v97 = v40 + v64[15];
      v98.n128_f64[0] = OUTLINED_FUNCTION_8_26();
      *(v40 + v99) = 0;
      v100 = v40 + v64[17];
      OUTLINED_FUNCTION_20_5(v40 + v64[18], v98);
      outlined init with copy of ConversationControlsType(v164, v40);
      v40[6] = 0;
      v40[7] = v87;
      OUTLINED_FUNCTION_42_7();
      v40[8] = 0;
      v40[9] = v101;
      v154 = v89;
      v40[10] = v89;
      v102 = v159;
      v40[11] = v158;
      v96[1] = 0;
      v96[2] = 0;
      *v96 = 0;
      outlined assign with copy of AttributedString?(v102, v40 + v92);
      *(v40 + v64[11]) = 2;
      *(v40 + v64[12]) = 0;
      *(v40 + v64[13]) = 1;
      *(v40 + v64[14]) = 1;
      *v100 = 0;
      *(v100 + 1) = 0;
      v100[16] = -1;
      v103 = *(v86 + 16);
      if (v103 <= 5)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v102, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        outlined destroy of ConversationControlsType(v164);
        *v97 = v86;
        *(v97 + 24) = v147[0];
        *(v97 + 8) = v147[1];
        *(v97 + 40) = v91 | 0x80;
        OUTLINED_FUNCTION_26_3();
        outlined init with copy of ConversationControlsRecipe(v122, v123);
        OUTLINED_FUNCTION_16_5();
        __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v40, v128);
        OUTLINED_FUNCTION_49_2();
        v129 = v155;
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v104 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v104, &static Logger.conversationControls);

        v105 = Logger.logObject.getter();
        v97 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v105, v97))
        {
          v106 = OUTLINED_FUNCTION_42();
          v107 = OUTLINED_FUNCTION_23();
          v162 = v107;
          *v106 = 136315138;
          v161 = v103;
          v108 = String.init<A>(reflecting:)();
          v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, &v162);

          *(v106 + 4) = v110;
          _os_log_impl(&dword_1BBC58000, v105, v97, "Too many buttonShelf actions (%s)", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v107);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_27();
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v102, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        outlined destroy of ConversationControlsType(v164);
        OUTLINED_FUNCTION_49_2();
        v129 = v155;
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v40, v130);
        OUTLINED_FUNCTION_34_6(&a9);
        OUTLINED_FUNCTION_7_7();
        __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
      }

      v135 = OUTLINED_FUNCTION_18_12();
      if (__swift_getEnumTagSinglePayload(v135, v136, v64) == 1)
      {
        __break(1u);
      }

      else
      {
        v137 = OUTLINED_FUNCTION_3_27();
        outlined init with take of Participant(v137, v129, v138);
        ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v148, 1, v157, v163);
        OUTLINED_FUNCTION_30_5();

        OUTLINED_FUNCTION_42_7();

        v141 = v64[18];
        memcpy(v164, (v129 + v141), 0x49uLL);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v164, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
        memcpy((v129 + v141), v163, 0x49uLL);
        outlined init with copy of ConversationControlsRecipe(v129, v97);
        OUTLINED_FUNCTION_16_5();
        __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v129, v146);
        OUTLINED_FUNCTION_30_0();
      }

      return;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v111 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v111, &static Logger.conversationControls);
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_25(v113))
  {
    v114 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v114);
    OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v115, v116, "Cannot generate incoming remote control request HUD");
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
}

void ScreenSharingControlsRecipeGenerator.rejectedRemoteControlRequestHUDRecipe(controlsManager:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  v147 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_1();
  v33 = OUTLINED_FUNCTION_16(v32);
  v34 = type metadata accessor for ConversationControlsRecipe(v33);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_17();
  v38 = (v36 - v37);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16(&v133 - v40);
  v41 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_8();
  v47 = v46 - v45;
  v48 = MEMORY[0x1E69E7D40];
  v49 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x2C0))();
  if (v49)
  {
    v50 = v49;
    if ([v49 state] == 3 && objc_msgSend(v50, sel_avMode))
    {
      v145 = v26;
      ConversationControlsHelper.assetsForDefaultHUD(controlsManager:conversation:)(v24, v50);
      OUTLINED_FUNCTION_31_6(v51, v52, &v152[72]);
      v54 = v53;
      type metadata accessor for ConversationControlsBadgingAvatarViewController();
      v140 = v54;
      v55 = [v54 image];
      v56 = [objc_opt_self() clearColor];
      v146 = v34;
      v57 = v56;
      v139 = v50;
      v58 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v139, v55, 0x796C6C6942, 0xE500000000000000, v57);
      v59 = OUTLINED_FUNCTION_41_5([v58 view]);
      (*((*v48 & *v24) + 0x2A8))(v59);
      v60 = *((*v48 & *v58) + 0x58);
      v138 = v58;
      v144 = v60(v47);
      (*(v43 + 8))(v47, v41);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v61 = objc_opt_self();
      v62 = [v61 conversationKit];
      OUTLINED_FUNCTION_40_0();
      v63.super.isa = v62;
      v64 = OUTLINED_FUNCTION_17_0(0xD000000000000017, 0x80000001BC4F3F50, 0x61737265766E6F43, 0xEF74694B6E6F6974, v63);
      v66 = v65;

      v67._countAndFlagsBits = v64;
      v67._object = v66;
      v68.super.isa = NSAttributedString.__allocating_init(string:)(v67).super.isa;
      OUTLINED_FUNCTION_43_4(v68.super.isa);
      v69 = [v61 conversationKit];
      OUTLINED_FUNCTION_40_0();
      v70.super.isa = v69;
      OUTLINED_FUNCTION_17_0(0xD000000000000051, 0x80000001BC4F3F70, 0x61737265766E6F43, 0xEF74694B6E6F6974, v70);

      v71._countAndFlagsBits = OUTLINED_FUNCTION_40_2();
      isa = NSAttributedString.__allocating_init(string:)(v71).super.isa;
      v152[40] = 5;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v74 = OUTLINED_FUNCTION_3_2(v73);
      v75 = OUTLINED_FUNCTION_37_9(v74);
      *(v75 + 16) = v76;
      *(v75 + 32) = isa;
      v77 = type metadata accessor for AttributedString();
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
      v81 = OUTLINED_FUNCTION_46_4();
      type metadata accessor for ConversationControlsAction(v81);
      OUTLINED_FUNCTION_9_3();
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1BC4BAA20;
      v83 = v146;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v84 = v143;
      v137 = v143;
      v85 = v142;
      OUTLINED_FUNCTION_43_4(isa);
      static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v153);
      OUTLINED_FUNCTION_33_9();
      v134 = v153[32];
      v86 = v83[9];
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v77);
      v90 = (v38 + v83[10]);
      v91 = v38 + v83[15];
      *(v91 + 32) = 0;
      *v91 = 0u;
      *(v91 + 16) = 0u;
      *(v91 + 40) = -2;
      *(v38 + v83[16]) = 0;
      v92 = v38 + v83[17];
      OUTLINED_FUNCTION_20_5(v38 + v83[18], 0);
      outlined init with copy of ConversationControlsType(v152, v38);
      v38[6] = 0;
      v38[7] = v84;
      OUTLINED_FUNCTION_44_2();
      v38[8] = 0;
      v38[9] = v93;
      v144 = v85;
      OUTLINED_FUNCTION_30_5();
      v38[10] = v85;
      v38[11] = v94;
      v90[1] = 0;
      v90[2] = 0;
      *v90 = 0;
      OUTLINED_FUNCTION_47_2();
      outlined assign with copy of AttributedString?(v90, v38 + v86);
      *(v38 + v83[11]) = 2;
      *(v38 + v83[12]) = 0;
      *(v38 + v83[13]) = 1;
      *(v38 + v83[14]) = 3;
      *v92 = 0;
      *(v92 + 1) = 0;
      v92[16] = -1;
      v95 = *(v82 + 16);
      if (v95 <= 5)
      {
        v97 = v134 | 0x80u;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        outlined destroy of ConversationControlsType(v152);
        *v91 = v82;
        *(v91 + 24) = v135;
        *(v91 + 8) = v136;
        *(v91 + 40) = v97;
        OUTLINED_FUNCTION_26_3();
        outlined init with copy of ConversationControlsRecipe(v118, v119);
        __swift_storeEnumTagSinglePayload(v91, 0, 1, v83);
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v38, v120);
        OUTLINED_FUNCTION_49_2();
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v96 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v96, &static Logger.conversationControls);

        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = OUTLINED_FUNCTION_42();
          v100 = OUTLINED_FUNCTION_23();
          v150 = v100;
          *v99 = 136315138;
          v149 = v95;
          v101 = String.init<A>(reflecting:)();
          v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v150);

          *(v99 + 4) = v103;
          _os_log_impl(&dword_1BBC58000, v97, v98, "Too many buttonShelf actions (%s)", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v100);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_27();

          v104 = OUTLINED_FUNCTION_29_9();
        }

        else
        {

          v105 = &_s10Foundation16AttributedStringVSgMd;
          v106 = &_s10Foundation16AttributedStringVSgMR;
          v104 = v90;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v104, v105, v106);
        outlined destroy of ConversationControlsType(v152);
        OUTLINED_FUNCTION_49_2();
        v83 = v146;
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v38, v121);
        OUTLINED_FUNCTION_34_6(&a11);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v122, v123, v124, v83);
      }

      v125 = OUTLINED_FUNCTION_18_12();
      if (__swift_getEnumTagSinglePayload(v125, v126, v83) == 1)
      {
        __break(1u);
      }

      else
      {
        v127 = OUTLINED_FUNCTION_3_27();
        v128 = v148;
        outlined init with take of Participant(v127, v148, v129);
        ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v24, 1, v147, v151);

        OUTLINED_FUNCTION_44_2();

        v131 = v83[18];
        memcpy(v152, (v128 + v131), 0x49uLL);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v152, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
        memcpy((v128 + v131), v151, 0x49uLL);
        outlined init with copy of ConversationControlsRecipe(v128, v97);
        __swift_storeEnumTagSinglePayload(v97, 0, 1, v83);
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v128, v132);
        OUTLINED_FUNCTION_30_0();
      }

      return;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v107 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v107, &static Logger.conversationControls);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_25(v109))
  {
    v110 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v110);
    OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v111, v112, "Cannot generate incoming remote control request HUD");
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
}

uint64_t ScreenSharingControlsRecipeGenerator.init()()
{
  v1 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v8 = type metadata accessor for Features();
  [objc_allocWithZone(v8) init];
  v9 = OUTLINED_FUNCTION_46_4();
  type metadata accessor for SystemApertureIconFactory(v9);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E6995EE0];
  v12 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v12[3] = v1;
  v12[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v3 + 16))(boxed_opaque_existential_1, v7, v1);
  v14 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v14[3] = v8;
  v14[4] = &protocol witness table for Features;
  *v14 = v0;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  (*(v3 + 8))(v7, v1);
  return v10;
}

uint64_t specialized Conversation.currentScreenSharingRequest(ignoring:)(uint64_t a1)
{
  if (!specialized Conversation.canDisplayScreenSharingRequest.getter())
  {
    return 0;
  }

  v3 = [v1 screenSharingRequests];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
  lazy protocol witness table accessor for type TUScreenSharingRequest and conformance NSObject();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set._Variant.filter(_:)(v4, a1);
  v6 = specialized Collection.first.getter(v5);

  return v6;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScreenSharingControlsRecipeGenerator(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingControlsRecipeGenerator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TUScreenSharingRequest and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUScreenSharingRequest and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUScreenSharingRequest and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUScreenSharingRequest and conformance NSObject);
  }

  return result;
}

uint64_t PushToTalkTalkButtonController.__allocating_init(button:viewModel:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PushToTalkTalkButtonController.init(button:viewModel:)(a1, a2);
  return v4;
}

uint64_t PushToTalkTalkButtonController.init(button:viewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMR);
  OUTLINED_FUNCTION_2_7();
  v30 = v7;
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_2_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unknownObjectWeakInit();
  *(v3 + 40) = MEMORY[0x1E69E7CD0];
  *(v3 + 32) = 0;
  v32 = a1;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = a2;
  v16 = *(*a2 + 160);

  v18 = v16(v17);
  v19 = v18;
  if (v18)
  {
    v18 = type metadata accessor for ConversationControlsManager(0);
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v33 = v19;
  v36 = v18;
  *v15 = 300;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7F38], v10);
  v20 = objc_allocWithZone(type metadata accessor for PushToTalkTalkButtonGestureRecognizer(0));
  v21 = PushToTalkTalkButtonGestureRecognizer.init(interval:maximumVerticalVelocity:target:action:)(v15, &v33, sel_pttTalkButtonGestureChangedWithRecognizer_, 100.0);
  [v21 setCancelsTouchesInView_];
  [v21 addTarget:v3 action:sel_pressGestureChangedWithGestureRecognizer_];
  v22 = v16([v32 addGestureRecognizer_]);
  v23 = v22;
  if (v22)
  {
    v22 = type metadata accessor for ConversationControlsManager(0);
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v33 = v23;
  v36 = v22;
  v24 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v25 = @nonobjc UITapGestureRecognizer.init(target:action:)(&v33, sel_pttDoneButtonTappedWithRecognizer_);
  [v25 shouldRequireFailureOfGestureRecognizer_];
  v26 = v32;
  (*(*a2 + 136))([v32 addGestureRecognizer_]);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher();
  v27 = v31;
  Publisher<>.sink(receiveValue:)();

  (*(v30 + 8))(v9, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v3;
}

void closure #1 in PushToTalkTalkButtonController.init(button:viewModel:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if (v2 == 2)
      {
        v4 = Strong;
        [v4 setHighlighted_];
        [v4 setEnabled_];
      }

      else
      {
        if (v2 == 3)
        {
          [Strong setEnabled_];
LABEL_10:
          [Strong setNeedsUpdateConfiguration];

          return;
        }

        v4 = Strong;
        [v4 setEnabled_];
        if ((v2 & 1) == 0)
        {
          [v4 setHighlighted_];
        }
      }

      goto LABEL_10;
    }
  }
}

uint64_t PushToTalkTalkButtonController.buttonComputedState.getter()
{
  v1 = v0;
  v2 = *(**(v0 + 16) + 112);

  v4 = v2(v3);

  if (v4 & 0xFE) != 2 && (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0;
    }

    v6 = Strong;
    v7 = [Strong isHighlighted];

    return (v7 & 1) != 0;
  }

  if (*(v1 + 32))
  {
    return 1;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if ([v9 isHighlighted])
  {

    return 1;
  }

  v11 = [v9 isEnabled];

  if (v11)
  {
    return 0;
  }

  return 2;
}

void PushToTalkTalkButtonController.pressGestureChanged(gestureRecognizer:)(void *a1)
{
  v2 = [a1 state];
  if (v2 <= 5 && ((0x3Bu >> v2) & 1) != 0)
  {
    *(v1 + 32) = 0x10100uLL >> (8 * v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong setNeedsUpdateConfiguration];
  }
}

uint64_t PushToTalkTalkButtonController.deinit()
{

  MEMORY[0x1BFB23F10](v0 + 24);

  return v0;
}

uint64_t PushToTalkTalkButtonController.__deallocating_deinit()
{
  PushToTalkTalkButtonController.deinit();

  return swift_deallocClassInstance();
}

id @nonobjc UITapGestureRecognizer.init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_2_7();
    v7 = v6;
    v9 = MEMORY[0x1EEE9AC00](v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v11, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v2 initWithTarget:v12 action:a2];
  swift_unknownObjectRelease();
  return v13;
}

unint64_t lazy protocol witness table accessor for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

id CallControlsFullScreenStatusView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id CallControlsFullScreenStatusView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer) = 0;
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  CallControlsFullScreenStatusView.build()();

  return v5;
}

void CallControlsFullScreenStatusView.build()()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA7F0;
  v2 = CallControlsFullScreenStatusView.textContainer.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView, closure #1 in CallControlsFullScreenStatusView.effectsView.getter);
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView;
  v7 = [*&v0[OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView] bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA920;
  v17 = CallControlsFullScreenStatusView.textContainer.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer, closure #1 in CallControlsFullScreenStatusView.textContainer.getter);
  v18 = [v17 topAnchor];

  v19 = [v0 topAnchor];
  v20 = [v18 constraintGreaterThanOrEqualToAnchor_];

  *(inited + 32) = v20;
  v21 = OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer;
  v22 = [*&v0[OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer] bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor_];

  *(inited + 40) = v24;
  v25 = [*&v0[v21] centerYAnchor];
  v26 = [v0 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(inited + 48) = v27;
  *(inited + 56) = CallControlsFullScreenStatusView.textLeadingConstraint.getter();
  v28 = [*&v0[v21] trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(inited + 64) = v30;
  specialized Array.append<A>(contentsOf:)(inited);
  v31 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints_];
}

id CallControlsFullScreenStatusView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallControlsFullScreenStatusView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallControlsFullScreenStatusView.set(title:subtitle:)(Swift::String_optional title, Swift::String_optional subtitle)
{
  object = subtitle.value._object;
  countAndFlagsBits = subtitle.value._countAndFlagsBits;
  v5 = title.value._object;
  v6 = title.value._countAndFlagsBits;
  v7 = CallControlsFullScreenStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel, MEMORY[0x1E69DDD08]);
  if (v5)
  {
    v8 = MEMORY[0x1BFB209B0](v6, v5);
  }

  else
  {
    v8 = 0;
  }

  [v7 setText_];

  [*(v2 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel) setHidden_];
  v9 = CallControlsFullScreenStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel, MEMORY[0x1E69DDD10]);
  if (object)
  {
    v10 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  v11 = *(v2 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel);

  [v11 setHidden_];
}

id CallControlsFullScreenStatusView.titleLabel.getter(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = closure #1 in CallControlsFullScreenStatusView.titleLabel.getter(a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

Swift::Void __swiftcall CallControlsFullScreenStatusView.update(statusLayoutGuide:)(UILayoutGuide statusLayoutGuide)
{
  v2 = CallControlsFullScreenStatusView.textContainer.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer, closure #1 in CallControlsFullScreenStatusView.textContainer.getter);
  v3 = [v2 leadingAnchor];

  v4 = [(objc_class *)statusLayoutGuide.super.isa leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  CallControlsFullScreenStatusView.textLeadingConstraint.setter(v5);
}

void CallControlsFullScreenStatusView.textLeadingConstraint.setter(void *a1)
{
  v5 = CallControlsFullScreenStatusView.textLeadingConstraint.getter();
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint);
  *(v1 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint) = a1;
  v4 = a1;

  CallControlsFullScreenStatusView.textLeadingConstraint.didset(v5);
}

id CallControlsFullScreenStatusView.textContainer.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in CallControlsFullScreenStatusView.effectsView.getter(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD370]) initWithPrivateStyle_];
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  return v2;
}

void CallControlsFullScreenStatusView.textLeadingConstraint.didset(void *a1)
{
  [a1 setActive_];
  v1 = CallControlsFullScreenStatusView.textLeadingConstraint.getter();
  [v1 setActive_];
}

id CallControlsFullScreenStatusView.textLeadingConstraint.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint];
  }

  else
  {
    v4 = CallControlsFullScreenStatusView.textContainer.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer, closure #1 in CallControlsFullScreenStatusView.textContainer.getter);
    v5 = [v4 leadingAnchor];

    v6 = [v0 leadingAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id closure #1 in CallControlsFullScreenStatusView.titleLabel.getter(uint64_t *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  v3 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*a1, 0, 1);
  [v2 setFont_];

  return v2;
}

void *closure #1 in CallControlsFullScreenStatusView.textContainer.getter(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView, 0x1E69DCF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA930;
  *(v2 + 32) = CallControlsFullScreenStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel, MEMORY[0x1E69DDD08]);
  *(v2 + 40) = CallControlsFullScreenStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel, MEMORY[0x1E69DDD10]);
  UIStackView.__allocating_init(arrangedSubviews:)(v3, v2);
  v5 = v4;
  [v4 setAxis_];
  [v5 setSpacing_];
  [v5 setAlignment_];
  [v5 setDistribution_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  return v5;
}

id CallControlsFullScreenStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*protocol witness for CallControlsFullScreenStatusViewing.isHidden.modify in conformance CallControlsFullScreenStatusView(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isHidden];
  return protocol witness for CallControlsFullScreenStatusViewing.isHidden.modify in conformance CallControlsFullScreenStatusView;
}

id InCallControlsPTTLeaveChannelFooterView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *InCallControlsPTTLeaveChannelFooterView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = OBJC_IVAR____TtC15ConversationKit39InCallControlsPTTLeaveChannelFooterView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  type metadata accessor for InCallControlsPTTLeaveChannelFooterView();
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  v6 = OBJC_IVAR____TtC15ConversationKit39InCallControlsPTTLeaveChannelFooterView_titleLabel;
  v7 = *&v5[OBJC_IVAR____TtC15ConversationKit39InCallControlsPTTLeaveChannelFooterView_titleLabel];
  v8 = objc_opt_self();
  v9 = v5;
  v10 = v7;
  v11 = [v8 conversationKit];
  v42._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._object = 0x80000001BC4F4160;
  v13._countAndFlagsBits = 0xD000000000000026;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v42);

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v15._countAndFlagsBits, v15._object, v10);
  v16 = *&v5[v6];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x1E69DDD28];
  v19 = v16;
  v20 = [v17 preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  [v19 setFont_];
  v22 = one-time initialization token for collectionViewSectionHeaderTitleLabel;
  v23 = *&v5[v6];
  if (v22 != -1)
  {
    swift_once();
  }

  [v23 setTextColor_];

  [*&v5[v6] setNumberOfLines_];
  [*&v5[v6] setLineBreakMode_];
  [*&v5[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = *&v5[v6];
  v25 = v9;
  [v25 addSubview_];
  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BA7F0;
  v28 = [*&v5[v6] leadingAnchor];
  v29 = [v25 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:16.0];

  *(v27 + 32) = v30;
  v31 = [*&v5[v6] trailingAnchor];
  v32 = [v25 trailingAnchor];

  v33 = [v31 constraintEqualToAnchor:v32 constant:-16.0];
  *(v27 + 40) = v33;
  v34 = [*&v5[v6] topAnchor];
  v35 = [v25 topAnchor];

  v36 = [v34 constraintEqualToAnchor:v35 constant:-10.0];
  *(v27 + 48) = v36;
  v37 = [*&v5[v6] bottomAnchor];
  v38 = [v25 bottomAnchor];

  v39 = [v37 constraintEqualToAnchor:v38 constant:-30.0];
  *(v27 + 56) = v39;
  type metadata accessor for NSLayoutConstraint();
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints_];

  return v25;
}

id InCallControlsPTTLeaveChannelFooterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsPTTLeaveChannelFooterView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit39InCallControlsPTTLeaveChannelFooterView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id InCallControlsPTTLeaveChannelFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsPTTLeaveChannelFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path setter for SystemApertureConversationDetailsView.recipe : SystemApertureConversationDetailsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x70))(v6);
}

uint64_t SystemApertureConversationDetailsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t SystemApertureConversationDetailsView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  SystemApertureConversationDetailsView.updateStatus()();
  return outlined destroy of ConversationControlsRecipe(a1);
}

id (*SystemApertureConversationDetailsView.recipe.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SystemApertureConversationDetailsView.recipe.modify;
}

id SystemApertureConversationDetailsView.recipe.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return SystemApertureConversationDetailsView.updateStatus()();
  }

  return result;
}

double SystemApertureConversationDetailsView.titleLabelGlyphInset.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel);
  [v1 _tightBoundingRectOfFirstLine];
  [v1 convertPoint:v0 toCoordinateSpace:?];
  return v2;
}

id SystemApertureConversationDetailsView.init(recipe:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel;
  type metadata accessor for UILabel();
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v6 = objc_opt_self();
  v25.value.super.isa = [v6 whiteColor];
  UILabel.init(font:textColor:)(v7, v5, v25);
  *&v1[v3] = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel;
  v10 = [v4 systemFontOfSize_];
  v26.value.super.isa = [v6 secondaryLabelColor];
  UILabel.init(font:textColor:)(v11, v10, v26);
  *&v1[v9] = v12;
  outlined init with copy of ConversationControlsRecipe(a1, &v1[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_recipe]);
  v24.receiver = v1;
  v24.super_class = type metadata accessor for SystemApertureConversationDetailsView(0);
  v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  SystemApertureConversationDetailsView.configureSubviews()();
  SystemApertureConversationDetailsView.updateStatus()();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, &static Logger.conversationControls);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136446210;
    v19 = _typeName(_:qualified:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1BBC58000, v15, v16, "[%{public}s] created", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  outlined destroy of ConversationControlsRecipe(a1);
  return v13;
}

id SystemApertureConversationDetailsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureConversationDetailsView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel;
  type metadata accessor for UILabel();
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v4 = objc_opt_self();
  v11.value.super.isa = [v4 whiteColor];
  UILabel.init(font:textColor:)(v5, v3, v11);
  *(v0 + v1) = v6;
  v7 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel;
  v8 = [v2 systemFontOfSize_];
  v12.value.super.isa = [v4 secondaryLabelColor];
  UILabel.init(font:textColor:)(v9, v8, v12);
  *(v0 + v7) = v10;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SystemApertureConversationDetailsView.layoutSubviews()()
{
  swift_getObjectType();
  v39.receiver = v0;
  v39.super_class = type metadata accessor for SystemApertureConversationDetailsView(0);
  objc_msgSendSuper2(&v39, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v40);
  v2 = [*&v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel] font];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 lineHeight];
  v5 = v4;

  [v0 bounds];
  v6 = CGRectGetWidth(v41);
  [v0 bounds];
  v7 = CGRectGetHeight(v42) - v5;
  v8 = *&v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel];
  [v8 sizeThatFits_];
  if (v6 >= v9)
  {
    v6 = v9;
  }

  if (v7 >= v10)
  {
    v7 = v10;
  }

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = Width;
  *(v12 + 32) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in SystemApertureConversationDetailsView.layoutSubviews();
  *(v13 + 24) = v12;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_4;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  [v11 performWithoutAnimation_];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x80))(v16);
  if (one-time initialization token for conversationControls != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, &static Logger.conversationControls);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v20 = 136446466;
    v21 = _typeName(_:qualified:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, aBlock);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    OUTLINED_FUNCTION_1_37();
    v24 = CGRect.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_1BBC58000, v18, v19, "[%{public}s][layout] primaryFrame: %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_1_37();
  [v27 v28];
  OUTLINED_FUNCTION_1_37();
  [v8 setFrame_];
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v31 = 136446466;
    v32 = _typeName(_:qualified:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, aBlock);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    v35 = CGRect.description.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, aBlock);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_1BBC58000, v29, v30, "[%{public}s][layout] secondaryFrame: %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}