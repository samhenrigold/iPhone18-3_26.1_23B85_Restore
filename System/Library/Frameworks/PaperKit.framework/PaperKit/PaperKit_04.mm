uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v30 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v28 = v9 + 56;
  v29 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v25 = v2;
    v26 = v6;
    v27 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v14(v8, *(v29 + 48) + v17 * v12, v5);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v8, v5);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v28 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v19 = 1;
        v6 = v26;
        a2 = v27;
        return (*(v6 + 56))(a2, v19, 1, v5);
      }
    }

    v20 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v31 = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69695A8], &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
      v22 = v31;
    }

    v6 = v26;
    a2 = v27;
    (*(v26 + 32))(v27, *(v22 + 48) + v17 * v12, v5);
    specialized _NativeSet._delete(at:)(v12, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v19 = 0;
    *v20 = v31;
  }

  else
  {
    v19 = 1;
  }

  return (*(v6 + 56))(a2, v19, 1, v5);
}

{
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
  v30 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v28 = v9 + 56;
  v29 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v25 = v2;
    v26 = v6;
    v27 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v14(v8, *(v29 + 48) + v17 * v12, v5);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954D0]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v8, v5);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v28 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v19 = 1;
        v6 = v26;
        a2 = v27;
        return (*(v6 + 56))(a2, v19, 1, v5);
      }
    }

    v20 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v31 = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69954B8], &_ss11_SetStorageCy9Coherence9CRKeyPathVGMd, &_ss11_SetStorageCy9Coherence9CRKeyPathVGMR);
      v22 = v31;
    }

    v6 = v26;
    a2 = v27;
    (*(v26 + 32))(v27, *(v22 + 48) + v17 * v12, v5);
    specialized _NativeSet._delete(at:)(v12, MEMORY[0x1E69954B8], &lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
    v19 = 0;
    *v20 = v31;
  }

  else
  {
    v19 = 1;
  }

  return (*(v6 + 56))(a2, v19, 1, v5);
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D0]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v9 + 56;
  v30 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v18 = v17 * v12;
      v14(v8, *(v30 + 48) + v17 * v12, v5);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D8]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v29 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, &_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18, v5);
    specialized _NativeSet._delete(at:)(v12, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, &lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, MEMORY[0x1E69951D0]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995478]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v9 + 56;
  v30 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v18 = v17 * v12;
      v14(v8, *(v30 + 48) + v17 * v12, v5);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995480]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v29 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, &_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18, v5);
    specialized _NativeSet._delete(at:)(v12, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, &lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, MEMORY[0x1E6995478]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v9 + 56;
  v30 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v18 = v17 * v12;
      v14(v8, *(v30 + 48) + v17 * v12, v5);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953D0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v29 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, &_ss11_SetStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss11_SetStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18, v5);
    specialized _NativeSet._delete(at:)(v12, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, &lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, MEMORY[0x1E69953C8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1DA6CE7F0](*(*v1 + 40), a1);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCySo8NSObjectCGMd, &_ss11_SetStorageCySo8NSObjectCGMR);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 8;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 8;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCy8PaperKit16ResizeHandleTypeOGMd, &_ss11_SetStorageCy8PaperKit16ResizeHandleTypeOGMR);
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

Swift::Int specialized Set._Variant.remove(_:)@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](a1);
  result = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR);
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + v8);
    result = specialized _NativeSet._delete(at:)(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 9;
  }

  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8NSObjectC_Tt1g5(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  specialized _NativeSet._delete(at:)(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(MEMORY[0x1E69695A8], &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy8PaperKit18ShapeConfigurationV0E0OGMd, &_ss11_SetStorageCy8PaperKit18ShapeConfigurationV0E0OGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V0E0OGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy8PaperKit07FeatureA0V08InternalE0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V08InternalE0OGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Calculate0C10ExpressionCGMd, &_ss11_SetStorageCy9Calculate0C10ExpressionCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Color(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit5ColorVGMd, &_ss11_SetStorageCy8PaperKit5ColorVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of PKStrokeProperties(*(v6 + 48) + v21, v5, type metadata accessor for Color);
        result = outlined init with take of TaggedStroke(v5, *(v8 + 48) + v21, type metadata accessor for Color);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySfGMd, &_ss11_SetStorageCySfGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15NSTextAlignmentVGMd, &_ss11_SetStorageCySo15NSTextAlignmentVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySbGMd, &_ss11_SetStorageCySbGMR);
}

{
  return specialized _NativeSet.copy()(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, &_ss11_SetStorageCy9Coherence14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_ss11_SetStorageCy9Coherence14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
}

{
  return specialized _NativeSet.copy()(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, &_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
}

{
  return specialized _NativeSet.copy()(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, &_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E69954B8], &_ss11_SetStorageCy9Coherence9CRKeyPathVGMd, &_ss11_SetStorageCy9Coherence9CRKeyPathVGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy8PaperKit16ResizeHandleTypeOGMd, &_ss11_SetStorageCy8PaperKit16ResizeHandleTypeOGMR);
}

{
  return specialized _NativeSet.copy()(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, &_ss11_SetStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss11_SetStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySOGMd, &_ss11_SetStorageCySOGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E6995408], &_ss11_SetStorageCy9Coherence7CRAssetVGMd, &_ss11_SetStorageCy9Coherence7CRAssetVGMR);
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E6978358], &_ss11_SetStorageCy9PencilKit12PKInkingToolV7InkTypeOGMd, &_ss11_SetStorageCy9PencilKit12PKInkingToolV7InkTypeOGMR);
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v7;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v9 + 32;
    for (i = v9 + 16; v21; result = (*(v9 + 32))(*(v14 + 48) + v26, v11, v8))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v9 + 72) * (v23 | (v18 << 6));
      (*(v9 + 16))(v11, *(v12 + 48) + v26, v8);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v7 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo8NSObjectCGMd, &_ss11_SetStorageCySo8NSObjectCGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo7UIColorCGMd, &_ss11_SetStorageCySo7UIColorCGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo8PKStrokeCGMd, &_ss11_SetStorageCySo8PKStrokeCGMR);
}

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

id specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void specialized _NativeSet._delete(at:)(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        lazy protocol witness table accessor for type UUID and conformance UUID(v40, v41, v42);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x1DA6CE7F0](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        MEMORY[0x1DA6CE810](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void specialized _NativeSet._delete(at:)(int64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v39 = a2;
  v40 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v37 = (v16 + 1) & v15;
      v36 = *(v8 + 16);
      v43 = *(v8 + 72);
      v38 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v36(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(v41, v39, v40, v42);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v38 = type metadata accessor for AnyCRValue();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = v30 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMd, &_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v8 = result;
  v9 = 0;
  v39 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v32 = v3 + 8;
  v33 = v3 + 16;
  v37 = v3;
  v30[2] = v3 + 32;
  v31 = result + 64;
  v34 = result;
  v17 = v38;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v41 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = *(v39 + 56);
      v42 = *(*(v39 + 48) + 8 * v21);
      v23 = v37;
      v24 = *(v37 + 72) * v21;
      v25 = v35;
      (*(v37 + 16))(v35, v22 + v24, v17);
      v26 = v36;
      AnyCRValue.copy(renamingReferences:)();
      (*(v23 + 8))(v25, v17);
      *(v31 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v8 = v34;
      *(*(v34 + 48) + 8 * v21) = v42;
      result = (*(v23 + 32))(*(v8 + 56) + v24, v26, v17);
      v27 = *(v8 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v8 + 16) = v29;
      v15 = v41;
      if (!v41)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000028;
    v29[1] = 0x80000001D40820E0;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000035;
    v29[1] = 0x80000001D4082060;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000023;
    v29[1] = 0x80000001D40821D0;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v7 = type metadata accessor for AnyCRValue();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v56 - v14);
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_22;
  }

  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v62 = *(v13 + 72);
  v64 = a1;
  v57 = v17;
  v58 = v3;
  outlined init with copy of Date?(a1 + v17, &v56 - v14, &_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
  v59 = v8;
  v18 = *(v8 + 32);
  v70 = *v15;
  v19 = v70;
  v61 = v16;
  v65 = v10;
  v66 = v7;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v22;
  if (v20[3] < v26)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, a2 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    if ((v27 & 1) != (v28 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v21;
  specialized _NativeDictionary.copy()();
  v21 = v33;
  if (v27)
  {
LABEL_9:
    v29 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v30 = swift_allocError();
    *v31 = 0xD000000000000028;
    v31[1] = 0x80000001D40821A0;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E6995188], v29);
    swift_willThrow();
    v69 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v59 + 8))(v65, v66);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v34 = *a3;
  *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  *(v34[6] + 8 * v21) = v19;
  v35 = v34[7];
  v60 = *(v59 + 72);
  v37 = v65;
  v36 = v66;
  v18((v35 + v60 * v21), v65, v66);
  v38 = v34[2];
  v25 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (!v25)
  {
    v34[2] = v39;
    v40 = v64;
    if (v63 == 1)
    {
LABEL_22:

      return;
    }

    v41 = v64 + v62 + v57;
    v42 = 1;
    while (v42 < *(v40 + 16))
    {
      outlined init with copy of Date?(v41, v15, &_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
      v43 = v37;
      v70 = *v15;
      v44 = v70;
      v18(v43, v15 + v61, v36);
      v45 = *a3;
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v25 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v25)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, 1);
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v53 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      *(v53[6] + 8 * v46) = v44;
      v37 = v65;
      v36 = v66;
      v18((v53[7] + v60 * v46), v65, v66);
      v54 = v53[2];
      v25 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v42;
      v53[2] = v55;
      v41 += v62;
      v40 = v64;
      if (v63 == v42)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000002ELL;
    v29[1] = 0x80000001D40838A0;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_0(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000026;
    v29[1] = 0x80000001D4083C10;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_0(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000002DLL;
    v29[1] = 0x80000001D4084960;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000002BLL;
    v29[1] = 0x80000001D40873E0;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000021;
    v29[1] = 0x80000001D4089070;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v7 = type metadata accessor for AnyCRValue();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v56 - v14);
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_22;
  }

  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v62 = *(v13 + 72);
  v64 = a1;
  v57 = v17;
  v58 = v3;
  outlined init with copy of Date?(a1 + v17, &v56 - v14, &_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
  v59 = v8;
  v18 = *(v8 + 32);
  v70 = *v15;
  v19 = v70;
  v61 = v16;
  v65 = v10;
  v66 = v7;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v22;
  if (v20[3] < v26)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, a2 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    if ((v27 & 1) != (v28 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v21;
  specialized _NativeDictionary.copy()();
  v21 = v33;
  if (v27)
  {
LABEL_9:
    v29 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v30 = swift_allocError();
    *v31 = 0xD000000000000026;
    v31[1] = 0x80000001D4089C90;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E6995188], v29);
    swift_willThrow();
    v69 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v59 + 8))(v65, v66);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v34 = *a3;
  *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  *(v34[6] + 8 * v21) = v19;
  v35 = v34[7];
  v60 = *(v59 + 72);
  v37 = v65;
  v36 = v66;
  v18((v35 + v60 * v21), v65, v66);
  v38 = v34[2];
  v25 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (!v25)
  {
    v34[2] = v39;
    v40 = v64;
    if (v63 == 1)
    {
LABEL_22:

      return;
    }

    v41 = v64 + v62 + v57;
    v42 = 1;
    while (v42 < *(v40 + 16))
    {
      outlined init with copy of Date?(v41, v15, &_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
      v43 = v37;
      v70 = *v15;
      v44 = v70;
      v18(v43, v15 + v61, v36);
      v45 = *a3;
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v25 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v25)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, 1);
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v53 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      *(v53[6] + 8 * v46) = v44;
      v37 = v65;
      v36 = v66;
      v18((v53[7] + v60 * v46), v65, v66);
      v54 = v53[2];
      v25 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v42;
      v53[2] = v55;
      v41 += v62;
      v40 = v64;
      if (v63 == v42)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000001FLL;
    v29[1] = 0x80000001D408AC60;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000027;
    v29[1] = 0x80000001D408C610;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_2(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000026;
    v29[1] = 0x80000001D408CB30;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000001FLL;
    v29[1] = 0x80000001D408DAE0;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_9(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000001ELL;
    v29[1] = 0x80000001D408DB70;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_10(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000025;
    v29[1] = 0x80000001D408FCE0;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000002ELL;
    v29[1] = 0x80000001D40904B0;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000025;
    v29[1] = 0x80000001D4090980;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD00000000000001FLL;
    v29[1] = 0x80000001D4091530;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v61 = type metadata accessor for AnyCRDT();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  outlined init with copy of Date?(v54, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a2 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          outlined init with copy of Date?(v54 + *(v58 + 72) * v36, v11, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = type metadata accessor for CRCodingError();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_14(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000029;
    v29[1] = 0x80000001D4091780;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E6995188], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double specialized CRRegister<>.bounds(in:)(objc_class *a1, void (**a2)(char *, uint64_t), objc_class *a3, void (**a4)(char *, uint64_t))
{
  v128 = a4;
  isa = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
  v117 = *(v116 - 1);
  MEMORY[0x1EEE9AC00](v116);
  v96 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = (&v95 - v8);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v99 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v120 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = (&v95 - v15);
  v124 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v95 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v126 = (&v95 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v113 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v95 - v26;
  v110 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v109 = &v95 - v29;
  v30 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v123 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v100 = &v95 - v34;
  v35 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v35);
  v107 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v106 = &v95 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v95 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v95 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v95 - v46;
  v105 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v125 = &v95 - v50;
  v133 = a3;
  v134 = v128;
  v51 = __swift_allocate_boxed_opaque_existential_1(&v132);
  (*(*(a3 - 1) + 16))(v51, isa, a3);
  v103 = v134;
  isa = v133;
  v102 = __swift_project_boxed_opaque_existential_1(&v132, v133);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v128 = a2;
  CRRegister.value.getter();
  outlined init with take of TaggedStroke(v44, v41, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PKStrokeProperties(v41, type metadata accessor for TaggedStroke);
    v52 = 1;
  }

  else
  {
    v53 = *(v33 + 32);
    v54 = v100;
    v53(v100, v41, v32);
    v53(v47, v54, v32);
    v52 = 0;
  }

  (*(v33 + 56))(v47, v52, 1, v32);
  if ((*(v33 + 48))(v47, 1, v32) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
    __swift_project_boxed_opaque_existential_1(&v132, v133);
    v55 = v106;
    CRRegister.value.getter();
    v56 = v107;
    outlined init with take of TaggedStroke(v55, v107, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = v117;
      v58 = *(v117 + 32);
      v59 = v96;
      v60 = v56;
      v61 = v116;
      v58(v96, v60, v116);
      v62 = v115;
      v58(v115, v59, v61);
      v63 = 0;
    }

    else
    {
      outlined destroy of PKStrokeProperties(v56, type metadata accessor for TaggedStroke);
      v63 = 1;
      v61 = v116;
      v57 = v117;
      v62 = v115;
    }

    (*(v57 + 56))(v62, v63, 1, v61);
    if ((*(v57 + 48))(v62, 1, v61) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
      v83 = *MEMORY[0x1E695F050];
    }

    else
    {
      v84 = v97;
      Ref.subscript.getter();
      (*(v57 + 8))(v62, v61);
      v85 = v99;
      v86 = v98;
      v87 = v84;
      v88 = v95;
      v89 = (*(v99 + 32))(v98, v87, v95);
      *&v90 = MEMORY[0x1EEE9AC00](v89).n128_u64[0];
      *(&v95 - 2) = &v132;
      v83 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in CRRegister<>.bounds(in:), (&v95 - 4), v90, v91, v92, v93);
      (*(v85 + 8))(v86, v88);
    }
  }

  else
  {
    v64 = v104;
    Ref.subscript.getter();
    (*(v33 + 8))(v47, v32);
    outlined init with take of TaggedStroke(v64, v125, type metadata accessor for PKStrokeStruct);
    __swift_project_boxed_opaque_existential_1(&v132, v133);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
    v65 = v108;
    CRRegister.wrappedValue.getter();
    v66 = v111;
    v67 = v109;
    v68 = v112;
    (*(v111 + 16))(v109, v65 + *(v110 + 32), v112);
    outlined destroy of PKStrokeProperties(v65, type metadata accessor for PKStrokeProperties);
    Ref.subscript.getter();
    (*(v66 + 8))(v67, v68);
    isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v115 = v134;
    v116 = v133;
    v112 = __swift_project_boxed_opaque_existential_1(&v132, v133);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
    CRRegister.wrappedValue.getter();
    v69 = (v113 + 48);
    v128 = (v113 + 8);
    v70 = (v113 + 32);
    for (i = v114; ; (*v70)(v27, i, v23))
    {
      __swift_project_boxed_opaque_existential_1(&v132, v133);
      v72 = v126;
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
      CRRegister.wrappedValue.getter();
      outlined destroy of PKStrokeProperties(v72, type metadata accessor for PKStrokeInheritedProperties);
      v73 = *v69;
      if ((*v69)(i, 1, v23) == 1)
      {
        break;
      }

      (*v128)(v27, v23);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(i, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
    v74 = v118;
    Ref.subscript.getter();
    v126 = *v128;
    v126(v27, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
    CRRegister.wrappedValue.getter();
    outlined destroy of PKStrokeProperties(v74, type metadata accessor for PKStrokeInheritedProperties);
    v118 = *&v135[0];
    v115 = v134;
    v116 = v133;
    v114 = __swift_project_boxed_opaque_existential_1(&v132, v133);
    v75 = v119;
    CRRegister.wrappedValue.getter();
    for (j = v120; ; (*v70)(v75, j, v23))
    {
      __swift_project_boxed_opaque_existential_1(&v132, v133);
      v77 = v127;
      Ref.subscript.getter();
      CRRegister.wrappedValue.getter();
      outlined destroy of PKStrokeProperties(v77, type metadata accessor for PKStrokeInheritedProperties);
      if (v73(j, 1, v23) == 1)
      {
        break;
      }

      v126(v75, v23);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(j, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
    v78 = v121;
    Ref.subscript.getter();
    v126(v75, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    outlined destroy of PKStrokeProperties(v78, type metadata accessor for PKStrokeInheritedProperties);
    v135[0] = v129;
    v135[1] = v130;
    v135[2] = v131;
    v137.value.super.isa = v135;
    v79 = isa;
    v136.value.super.isa = isa;
    v80 = v118;
    v136.is_nil = v118;
    v81 = v125;
    *&v83 = PKStrokeStruct.bounds(path:ink:transform:)(v136, v137, v82);

    outlined destroy of PKStrokeProperties(v123, type metadata accessor for PKStrokePathStruct);
    outlined destroy of PKStrokeProperties(v81, type metadata accessor for PKStrokeStruct);
  }

  __swift_destroy_boxed_opaque_existential_0(&v132);
  return v83;
}

BOOL specialized static PKStrokeStructCache.BoundsParameters.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == v2)
    {
      return (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && a2[7] == a1[7];
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  return (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && a2[7] == a1[7];
}

uint64_t specialized static PKStrokeInheritedProperties.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v37 = a1;
  CRRegister.projectedValue.getter();
  v38 = a2;
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR, MEMORY[0x1E6995090]);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v15 + 8);
  v21(v17, v14);
  v21(v20, v14);
  if (a2 & 1) != 0 && (type metadata accessor for PKStrokeInheritedProperties(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKInk?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR, MEMORY[0x1E6995090]), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v23 = *(v36 + 8), v23(v10, v8), v23(v13, v8), (v22) && (v24 = v32, v25 = v35, CRRegister.projectedValue.getter(), v26 = v33, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGAffineTransform> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]), v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v28 = *(v34 + 8), v28(v26, v25), v28(v24, v25), (v27))
  {
    v29 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t specialized static PKStrokeProperties.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v95[-v9];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v95[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = &v95[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v95[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v95[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v95[-v21];
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v97 = v7;
  v98 = v5;
  v99 = v4;
  v23 = a2;
  v101 = type metadata accessor for PKStrokeProperties(0);
  v24 = v101[5];
  v25 = *(v18 + 48);
  v100 = a1;
  outlined init with copy of Date?(a1 + v24, v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = a2 + v24;
  v27 = a2;
  outlined init with copy of Date?(v26, &v22[v25], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v102 = v11;
  v28 = *(v11 + 48);
  if (v28(v22, 1, v10) == 1)
  {
    if (v28(&v22[v25], 1, v10) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_9;
    }

LABEL_7:
    v29 = v22;
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_16;
  }

  outlined init with copy of Date?(v22, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v28(&v22[v25], 1, v10) == 1)
  {
    (*(v102 + 8))(v17, v10);
    goto LABEL_7;
  }

  v30 = v102;
  v31 = v105;
  (*(v102 + 32))(v105, &v22[v25], v10);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v96 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v30 + 8);
  v32(v31, v10);
  v32(v17, v10);
  v27 = v23;
  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v96 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v33 = v101[6];
  v34 = *(v18 + 48);
  v35 = v100;
  v36 = v106;
  outlined init with copy of Date?(v100 + v33, v106, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of Date?(v27 + v33, &v36[v34], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v28(v36, 1, v10) != 1)
  {
    v37 = v104;
    outlined init with copy of Date?(v36, v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v28(&v36[v34], 1, v10) != 1)
    {
      v40 = v102;
      v41 = &v36[v34];
      v42 = v105;
      (*(v102 + 32))(v105, v41, v10);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v40 + 8);
      v44(v42, v10);
      v44(v37, v10);
      outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v43 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    (*(v102 + 8))(v37, v10);
    goto LABEL_14;
  }

  if (v28(&v36[v34], 1, v10) != 1)
  {
LABEL_14:
    v29 = v36;
    goto LABEL_15;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_19:
  v45 = v101;
  if (*(v35 + v101[7]) != *(v27 + v101[7]))
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR);
  v46 = v103;
  Ref.id.getter();
  v47 = v97;
  Ref.id.getter();
  v48 = CRKeyPath.rawValue.getter();
  v50 = v49;
  v51 = CRKeyPath.rawValue.getter();
  v53 = v52;
  v54 = specialized static Data.== infix(_:_:)(v48, v50, v51, v52);
  outlined consume of Data._Representation(v51, v53);
  outlined consume of Data._Representation(v48, v50);
  v55 = *(v98 + 8);
  v56 = v99;
  v55(v47, v99);
  v55(v46, v56);
  if (!v54)
  {
    goto LABEL_16;
  }

  v57 = v45[9];
  v58 = *(v35 + v57);
  v59 = *(v27 + v57);
  if (v58)
  {
    if (!v59)
    {
      goto LABEL_16;
    }

    v60 = *(*(v58 + 16) + 16);

    v61 = [v60 rawValue];
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = [*(*(v59 + 16) + 16) rawValue];
    v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    LOBYTE(v65) = specialized static Data.== infix(_:_:)(v62, v64, v66, v68);
    outlined consume of Data._Representation(v66, v68);
    outlined consume of Data._Representation(v62, v64);

    if ((v65 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v59)
  {
    goto LABEL_16;
  }

  v69 = v45[10];
  v70 = (v35 + v69);
  v71 = *(v35 + v69 + 32);
  v72 = v27 + v69;
  if (v71)
  {
    if ((v72[32] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v72[32])
    {
      goto LABEL_16;
    }

    v73 = v70[1];
    v74 = v70[2];
    v75 = v70[3];
    v76 = *v72;
    v77 = *(v72 + 1);
    v78 = *(v72 + 2);
    v79 = *(v72 + 3);
    v109[0] = _OSSwapInt64(*v70);
    v109[1] = _OSSwapInt64(v73);
    v109[2] = _OSSwapInt64(v74);
    v109[3] = _OSSwapInt64(v75);
    v35 = v100;
    v80 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v109, v110);
    v82 = v81;
    v107[0] = _OSSwapInt64(v76);
    v107[1] = _OSSwapInt64(v77);
    v107[2] = _OSSwapInt64(v78);
    v107[3] = _OSSwapInt64(v79);
    v83 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v107, v108);
    v85 = v84;
    LOBYTE(v77) = specialized static Data.== infix(_:_:)(v80, v82, v83, v84);
    outlined consume of Data._Representation(v83, v85);
    outlined consume of Data._Representation(v80, v82);
    if ((v77 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v86 = v45[11];
  v87 = (v35 + v86);
  v88 = *(v35 + v86 + 48);
  v89 = v27 + v86;
  if (v88)
  {
    if (v89[48])
    {
LABEL_36:
      _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSi_9Coherence10AnyCRValueVTt1g5(*(v35 + v45[12]), *(v27 + v45[12]));
      return v38 & 1;
    }
  }

  else if ((v89[48] & 1) == 0)
  {
    v90 = v87[1];
    v91 = v87[2];
    v92 = *v89;
    v93 = *(v89 + 1);
    v94 = *(v89 + 2);
    v110[0] = *v87;
    v110[1] = v90;
    v110[2] = v91;
    v110[3] = v92;
    v110[4] = v93;
    v110[5] = v94;
    if (static CGAffineTransform.== infix(_:_:)())
    {
      goto LABEL_36;
    }
  }

LABEL_16:
  v38 = 0;
  return v38 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane()
{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane and conformance PKStrokeClipPlane);
  }

  return result;
}

uint64_t specialized static PKStrokeStruct.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v24 = a1;
  CRRegister.projectedValue.getter();
  v25 = a2;
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR, MEMORY[0x1E6995090]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v13, v10);
  v17(v16, v10);
  if (a1 & 1) != 0 && (type metadata accessor for PKStrokeStruct(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKStrokeProperties> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR, MEMORY[0x1E6995090]), v18 = dispatch thunk of static Equatable.== infix(_:_:)(), v19 = *(v23 + 8), v19(v6, v4), v19(v9, v4), (v18))
  {
    v20 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLV_AC27CalculateDocumentControllerCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLVAC27CalculateDocumentControllerCGMd, &_ss18_DictionaryStorageCy8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLVAC27CalculateDocumentControllerCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SStMd, &_s10Foundation4UUIDV_SStMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_SStMd, &_s10Foundation4UUIDV_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMd, &_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit20AnyCanvasElementViewCGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit20AnyCanvasElementViewCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMd, &_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of Any(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6CD4F0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11CalculateUI0E15GraphExpressionCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_11CalculateUI0C15GraphExpressionCtMd, &_s10Foundation4UUIDV_11CalculateUI0C15GraphExpressionCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV11CalculateUI0E15GraphExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11CalculateUI0E15GraphExpressionCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_11CalculateUI0C15GraphExpressionCtMd, &_s10Foundation4UUIDV_11CalculateUI0C15GraphExpressionCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4UUIDVtMd, &_sSS_10Foundation4UUIDVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_sSS_10Foundation4UUIDVtMd, &_sSS_10Foundation4UUIDVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for UUID();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D0]);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995478]);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit5ColorV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Color(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      outlined init with copy of PKStrokeProperties(v12, v5, type metadata accessor for Color);
      specialized Set._Variant.insert(_:)(v8, v5);
      outlined destroy of PKStrokeProperties(v8, type metadata accessor for Color);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSbGMd, &_ss18_DictionaryStorageCySo11CFStringRefaSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, &v11, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence9CRKeyPathV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
  result = MEMORY[0x1DA6CD4F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVtMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGSo17CGAffineTransformVGMd, &_ss18_DictionaryStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGSo17CGAffineTransformVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVtMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 48 * v13);
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      *v16 = *v8;
      v16[1] = v17;
      v16[2] = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCtMd, &_s9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit17FormPageAnalyticsCGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit17FormPageAnalyticsCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCtMd, &_s9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMd, &_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for AnyCRValue();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

uint64_t outlined init with copy of PKStrokeProperties(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PKStrokeProperties(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UIColor and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of TaggedStroke(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PKStrokeProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PKStrokeProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for TaggedStroke.ObservableDifference(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeStruct>.ObservableDifference(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<CRSequence<Ref<CRRegister<TaggedStroke>>>>(319, &lazy cache variable for type metadata for Ref<CRSequence<Ref<CRRegister<TaggedStroke>>>>.ObservableDifference, MEMORY[0x1E69953A0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for Ref<PKStrokeStruct>.ObservableDifference(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Ref<PKStrokeStruct>.ObservableDifference)
  {
    type metadata accessor for PKStrokeStruct(255);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct, &protocol conformance descriptor for PKStrokeStruct);
    v1 = type metadata accessor for Ref.ObservableDifference();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Ref<PKStrokeStruct>.ObservableDifference);
    }
  }
}

void type metadata completion function for PKStrokeInheritedProperties.ObservableDifference(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for Ref<PKStrokeInheritedProperties>.ObservableDifference?, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for CRValueObservableDifference?, MEMORY[0x1E6995380]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PKStrokeInheritedProperties.MutatingAction(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKStrokeInheritedProperties>?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PKInk?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGAffineTransform>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GMR);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PKStrokeInheritedProperties.Partial(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKStrokeInheritedProperties>?>?, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PKInk?>?, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGAffineTransform>?, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PKStrokeStruct.ObservableDifference(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for Ref<PKStrokeInheritedProperties>.ObservableDifference?, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for CRValueObservableDifference?, MEMORY[0x1E6995380]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PKStrokeStruct.MutatingAction(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKStrokeInheritedProperties>>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PKStrokeProperties>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GMR);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_57Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = *(v13 + 48);

    return v14(a1, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 20);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = *(v15 + 56);

    return v16(a1, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 20);

    return v19(v20, a2, a2, v18);
  }
}

void type metadata completion function for PKStrokeStruct.Partial(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKStrokeInheritedProperties>>?, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PKStrokeProperties>?, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PKStrokeStructCache.BoundsParameters(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for PKStrokeStructCache.BoundsParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVSSGMd, &_ss18_DictionaryStorageCy10Foundation4DataVSSGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      outlined copy of Data._Representation(v5, v6);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E6969048], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_AC3RefVy8PaperKit20PDFAnnotationElementVGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_AA3RefVy8PaperKit20PDFAnnotationElementVGtMd, &_s9Coherence9CRKeyPathV_AA3RefVy8PaperKit20PDFAnnotationElementVGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC3RefVy8PaperKit20PDFAnnotationElementVGGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC3RefVy8PaperKit20PDFAnnotationElementVGGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_AA3RefVy8PaperKit20PDFAnnotationElementVGtMd, &_s9Coherence9CRKeyPathV_AA3RefVy8PaperKit20PDFAnnotationElementVGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMR);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVtMd, &_s10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVtMd, &_s10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 40 * v13);
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      v19 = *(v8 + 3);
      v20 = *(v8 + 4);
      *v16 = *v8;
      v16[1] = v17;
      v16[2] = v18;
      v16[3] = v19;
      v16[4] = v20;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlGMd, &_ss18_DictionaryStorageCySSyXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefayXlGMd, &_ss18_DictionaryStorageCySo11CFStringRefayXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_ySo21UITargetedDragPreviewCcTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v13 = *i;
      v7 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v9)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 16 * result) = v13;
      v10 = v5[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v5[2] = v12;
      if (!--v3)
      {

        return v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So6CGRectV_12CoreGraphics7CGFloatVtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemCSo6CGRectV_12CoreGraphics7CGFloatVtGMd, &_ss18_DictionaryStorageCySo10UIDragItemCSo6CGRectV_12CoreGraphics7CGFloatVtGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 3)
    {
      v13 = i[1];
      v14 = *i;
      v5 = *(i + 4);
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_8PaperKit22StickerDropPreviewInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemC8PaperKit22StickerDropPreviewInfoVGMd, &_ss18_DictionaryStorageCySo10UIDragItemC8PaperKit22StickerDropPreviewInfoVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 3)
    {
      v13 = i[1];
      v14 = *i;
      v5 = *(i + 4);
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaSo6UIFontCSgGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaSo6UIFontCSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMd, &_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence7CRAssetV8PaperKit0eF11PDFDocumentCGMd, &_ss18_DictionaryStorageCy9Coherence7CRAssetV8PaperKit0eF11PDFDocumentCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMd, &_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRAsset();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDV_SitMd, &_s8PaperKit9PDFPageIDV_SitMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMd, &_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s8PaperKit9PDFPageIDV_SitMd, &_s8PaperKit9PDFPageIDV_SitMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for PDFPageID(0);
      result = outlined init with take of TaggedStroke(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for PDFPageID);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_SitMd, &_s9Coherence9CRKeyPathV_SitMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_SitMd, &_s9Coherence9CRKeyPathV_SitMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_AC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_AA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGtMd, &_s9Coherence9CRKeyPathV_AA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_AA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGtMd, &_s9Coherence9CRKeyPathV_AA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17FormAnalyticsKeysO_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, Swift::Int))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v11 = *(i - 8);
      v12 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11, a4, a5);
      if (v14)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + result) = v11;
      *(v9[7] + 8 * result) = v12;
      v15 = v9[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v9[2] = v17;
      if (!--v5)
      {

        return v9;
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

double outlined consume of AsyncCache<Data, CGImageRef>.CacheState(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetV_SitMd, &_s9Coherence7CRAssetV_SitMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence7CRAssetVSiGMd, &_ss18_DictionaryStorageCy9Coherence7CRAssetVSiGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence7CRAssetV_SitMd, &_s9Coherence7CRAssetV_SitMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRAsset();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit0cD7PDFPageC_AC15PageOverlayView_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit0cD7PDFPageCAC15PageOverlayView_pGMd, &_ss18_DictionaryStorageCy8PaperKit0cD7PDFPageCAC15PageOverlayView_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v12 = *i;
      v5 = *(i - 1);
      v6 = v12;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_So13PDFAnnotationCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_So13PDFAnnotationCtMd, &_s9Coherence9CRKeyPathV_So13PDFAnnotationCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSo13PDFAnnotationCGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSo13PDFAnnotationCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s9Coherence9CRKeyPathV_So13PDFAnnotationCtMd, &_s9Coherence9CRKeyPathV_So13PDFAnnotationCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRKeyPath();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v10, &v17, a4, a5);
      v11 = v17;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = outlined init with take of Any(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22PDFDocumentWriteOptiona_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionayXlGMd, &_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionayXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVtMd, &_s10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVtMd, &_s10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of WeakCalculateExpression(&v5[v8], v7[7] + 8 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So8NSNumberCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So8NSNumberCtMd, &_s10Foundation4UUIDV_So8NSNumberCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo8NSNumberCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo8NSNumberCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_So8NSNumberCtMd, &_s10Foundation4UUIDV_So8NSNumberCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So9PKDrawingCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So9PKDrawingCtMd, &_s10Foundation4UUIDV_So9PKDrawingCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo9PKDrawingCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo9PKDrawingCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Date?(v9, v5, &_s10Foundation4UUIDV_So9PKDrawingCtMd, &_s10Foundation4UUIDV_So9PKDrawingCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      outlined copy of Data._Representation(v5, v6);
      outlined copy of AsyncCache<Data, CGImageRef>.CacheState(v7, v8, v9);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E6969048], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

id outlined copy of AsyncCache<Data, CGImageRef>.CacheState(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9Coherence28CRAttributeStringDecodingKey_pXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence28CRAttributeStringDecodingKey_pXpGMd, &_ss18_DictionaryStorageCySS9Coherence28CRAttributeStringDecodingKey_pXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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