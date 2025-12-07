uint64_t getEnumTagSinglePayload for CustomProgressView(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 64) + ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80));
  if (v7 + 1 > 0xA)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 10;
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v12 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  v18 = *(v9 + 64);
  if (!v11)
  {
    ++v18;
  }

  v19 = *(v10 + 80);
  v20 = *(v13 + 80);
  v21 = *(v13 + 64);
  if (!v15)
  {
    ++v21;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v8 + v19 + 1;
  v23 = v21 + 7;
  if (v17 < a2)
  {
    v24 = ((v23 + ((v18 + v20 + (v22 & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v25 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = a2 - v17 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v28)
    {
      v29 = *(a1 + v24);
      if (v29)
      {
LABEL_35:
        v30 = v29 - 1;
        if (v25)
        {
          v30 = 0;
          v31 = *a1;
        }

        else
        {
          v31 = 0;
        }

        return v17 + (v31 | v30) + 1;
      }
    }
  }

  v32 = (a1 + v22) & ~v19;
  if (v12 == v17)
  {
    if (v11 >= 2)
    {
      v33 = (*(v10 + 48))(v32);
      goto LABEL_53;
    }

    return 0;
  }

  v34 = (v32 + v18 + v20) & ~v20;
  if (v16 == v17)
  {
    if (v15 >= 2)
    {
      v33 = (*(v14 + 48))(v34, v15, *(a3 + 24));
LABEL_53:
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v36 = *((v23 + v34) & 0xFFFFFFFFFFFFFFF8);
  if (v36 >= 0xFFFFFFFF)
  {
    LODWORD(v36) = -1;
  }

  if ((v36 + 1) >= 2)
  {
    return v36;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for CustomProgressView(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(type metadata accessor for Date() - 8);
  v10 = *(v9 + 64) + ((*(v9 + 64) + *(v9 + 80)) & ~*(v9 + 80));
  if (v10 + 1 > 0xA)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 10;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a4 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(*(*(a4 + 16) - 8) + 64);
  v19 = *(v12 + 80);
  v20 = *(v16 + 80);
  if (v17)
  {
    v21 = v17 - 1;
  }

  else
  {
    v21 = 0;
  }

  if (v14 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v14;
  }

  if (v22 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  if (!v13)
  {
    ++v18;
  }

  v23 = v11 + v19 + 1;
  if (v17)
  {
    v24 = *(v16 + 64);
  }

  else
  {
    v24 = *(v16 + 64) + 1;
  }

  v25 = v24 + 7;
  v26 = ((v25 + ((v18 + v20 + (v23 & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 < a3)
  {
    if (((v25 + ((v18 + v20 + (v23 & ~v19)) & ~v20)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a3 - v22 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v8 = v28;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v22)
  {
    if (((v25 + ((v18 + v20 + (v23 & ~v19)) & ~v20)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a2 - v22;
    }

    else
    {
      v29 = 1;
    }

    if (((v25 + ((v18 + v20 + (v23 & ~v19)) & ~v20)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v30 = ~v22 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v26) = v29;
      }

      else
      {
        *(a1 + v26) = v29;
      }
    }

    else if (v8)
    {
      *(a1 + v26) = v29;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *(a1 + v26) = 0;
  }

  else if (v8)
  {
    *(a1 + v26) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return;
  }

LABEL_50:
  v31 = (a1 + v23) & ~v19;
  if (v14 == v22)
  {
    v32 = *(v12 + 56);

    v32(v31, a2 + 1);
  }

  else
  {
    v33 = (v31 + v18 + v20) & ~v20;
    if (v21 == v22)
    {
      v34 = *(v16 + 56);

      v34(v33, a2 + 1, v17, v15);
    }

    else
    {
      v35 = ((v25 + v33) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v35 = 0;
        *v35 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v35 = a2;
      }
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ProgressView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 80) | *(*(*(a3 + 24) - 8) + 80) | *(*(type metadata accessor for Date() - 8) + 80);
  *a1 = *a2;
  return  + ((v5 & 0xF8 ^ 0x1F8u) & (v5 + 16));
}

void type metadata accessor for Attribute<WidgetAuxiliaryTextImagePreference?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<WidgetAuxiliaryTextImagePreference?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?, &type metadata for WidgetAuxiliaryTextImagePreference);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<WidgetAuxiliaryTextImagePreference?>);
    }
  }
}

void type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *initializeBufferWithCopyOfBuffer for ResolvedProgressView(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      type metadata accessor for ClosedRange<Date>(0);
      v9((a1 + *(v10 + 36)), (a2 + *(v10 + 36)), v8);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
      *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v13 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v13) = *(a2 + v13);
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t destroy for ResolvedProgressView(uint64_t a1)
{
  type metadata accessor for ProgressViewValue(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = type metadata accessor for Date();
    v6 = *(*(v3 - 8) + 8);
    (v6)((v3 - 8), a1, v3);
    type metadata accessor for ClosedRange<Date>(0);
    v5 = a1 + *(v4 + 36);

    return v6(v5, v3);
  }

  return result;
}

_BYTE *initializeWithCopy for ResolvedProgressView(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>(0);
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v11] = a2[v11];
  a1[a3[7]] = a2[a3[7]];
  return a1;
}

_BYTE *assignWithCopy for ResolvedProgressView(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>(0);
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  a1[a3[5]] = a2[a3[5]];
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  return a1;
}

_BYTE *initializeWithTake for ResolvedProgressView(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 32);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>(0);
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v11] = a2[v11];
  a1[a3[7]] = a2[a3[7]];
  return a1;
}

_BYTE *assignWithTake for ResolvedProgressView(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 32);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>(0);
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v11] = a2[v11];
  a1[a3[7]] = a2[a3[7]];
  return a1;
}

void type metadata accessor for (ClosedRange<Date>, Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ClosedRange<Date>, Bool))
  {
    type metadata accessor for ClosedRange<Date>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool));
    }
  }
}

double outlined copy of WidgetAuxiliaryTextImagePreference?(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t outlined consume of WidgetAuxiliaryTextImagePreference?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined assign with take of WidgetAuxiliaryViewMetadata?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Progress?, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC7SwiftUI29PresentationOptionsPreferenceVSg_Tt1g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        outlined init with copy of PresentationOptionsPreference?(v3, v5);
        v5 += 144;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of PresentationOptionsPreference?(v3);
    return v4;
  }

  return result;
}

void specialized _UIHostingView.beginDescendingAllowUIKitAnimations(depth:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  ++*(v1 + v3);
  v4 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  v5 = [v1 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v7;
    v48 = a1;
    if (v6 >> 62)
    {
      break;
    }

    v9 = v6 & 0xFFFFFFFFFFFFFF8;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        v11 = v6 & 0xFFFFFFFFFFFFFF8;
        v12 = v6;
      }

      else
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v12 & 0xFFFFFFFFFFFFFF8;
      }

      swift_arrayDestroy();
      if (v10)
      {
        if (v12 >> 62)
        {
          v47 = __CocoaSet.count.getter();
          if (__OFSUB__(v47, v10))
          {
            goto LABEL_85;
          }

          memmove((v11 + 32), (v11 + 8 * v10 + 32), 8 * (v47 - v10));
          v46 = __CocoaSet.count.getter();
        }

        else
        {
          v46 = *(v11 + 16);
          memmove((v11 + 32), (v11 + 8 * v10 + 32), 8 * (v46 - v10));
        }

        if (__OFADD__(v46, -v10))
        {
          goto LABEL_84;
        }

        *(v11 + 16) = v46 - v10;
      }

      goto LABEL_17;
    }

    if (!(*((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
LABEL_14:
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_15;
    }

LABEL_10:
    type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v12);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v12 + 16) = 0;
    *(v12 + 24) = (2 * (v16 >> 3)) | 1;
LABEL_15:

    if (!(v6 >> 62))
    {
      v9 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v17 = *(v9 + 16);
      v7 = v8;
      if (v17)
      {
        goto LABEL_18;
      }

      goto LABEL_69;
    }

    v17 = __CocoaSet.count.getter();
    if (v17)
    {
LABEL_18:
      v18 = 0;
      v52 = v17;
      v53 = v6 & 0xC000000000000001;
      v49 = v6 + 32;
      v50 = v6 & 0xFFFFFFFFFFFFFF8;
      v51 = v6;
      while (1)
      {
        if (v53)
        {
          v19 = MEMORY[0x18D00E9C0](v18, v6);
        }

        else
        {
          if (v18 >= *(v50 + 16))
          {
            goto LABEL_79;
          }

          v19 = *(v49 + 8 * v18);
        }

        v20 = v19;
        v21 = __OFADD__(v18, 1);
        v22 = v18 + 1;
        if (v21)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v60 = v19;
        type metadata accessor for UIKitAnimationCooperating();
        v23 = v20;
        if (swift_dynamicCast())
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v58, v61);
          v24 = v62;
          v25 = v63;
          __swift_project_boxed_opaque_existential_1(v61, v62);
          (*(v25 + 8))(v24, v25);
          outlined init with copy of _Benchmark(v61, v58);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
          }

          v27 = v7[2];
          v26 = v7[3];
          if (v27 >= v26 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v7);
          }

          v7[2] = v27 + 1;
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v58, &v7[5 * v27 + 4]);
          __swift_destroy_boxed_opaque_existential_1(v61);
        }

        else
        {
          v59 = 0;
          memset(v58, 0, sizeof(v58));
          outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v58, &lazy cache variable for type metadata for UIKitAnimationCooperating?, type metadata accessor for UIKitAnimationCooperating);
        }

        v56 = v23;
        v28 = [v23 v4[453]];
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v30 = v29 >> 62;
        if (v29 >> 62)
        {
          v31 = __CocoaSet.count.getter();
        }

        else
        {
          v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = v12 >> 62;
        if (v12 >> 62)
        {
          v33 = __CocoaSet.count.getter();
        }

        else
        {
          v33 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = v31;
        v21 = __OFADD__(v33, v31);
        v34 = v33 + v31;
        if (v21)
        {
          goto LABEL_75;
        }

        v54 = v22;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v32)
        {
          goto LABEL_44;
        }

        v35 = v12 & 0xFFFFFFFFFFFFFF8;
        if (v34 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = v12;
          goto LABEL_46;
        }

LABEL_45:
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v35 = v55 & 0xFFFFFFFFFFFFFF8;
LABEL_46:
        v36 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v30)
        {
          v38 = __CocoaSet.count.getter();
          if (v38)
          {
LABEL_50:
            if (((v37 >> 1) - v36) < v57)
            {
              goto LABEL_77;
            }

            if (v30)
            {
              if (v38 < 1)
              {
                goto LABEL_80;
              }

              type metadata accessor for UIViewController?(0, &lazy cache variable for type metadata for [UIView], &lazy cache variable for type metadata for UIView, 0x1E69DD250, MEMORY[0x1E69E62F8]);
              lazy protocol witness table accessor for type [UIView] and conformance [A]();
              for (i = 0; i != v38; ++i)
              {
                v41 = specialized protocol witness for Collection.subscript.read in conformance [A](v61, i, v29);
                v43 = *v42;
                (v41)(v61, 0);
                *(v35 + 8 * v36 + 32 + 8 * i) = v43;
              }

              v4 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
              v39 = v57;
            }

            else
            {
              v39 = v57;
              swift_arrayInitWithCopy();
            }

            v6 = v51;
            v18 = v54;
            v12 = v55;
            if (v39 >= 1)
            {
              v44 = *(v35 + 16);
              v21 = __OFADD__(v44, v39);
              v45 = v44 + v39;
              if (v21)
              {
                goto LABEL_78;
              }

              *(v35 + 16) = v45;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v38 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38)
          {
            goto LABEL_50;
          }
        }

        v18 = v54;
        v12 = v55;
        if (v57 > 0)
        {
          goto LABEL_76;
        }

LABEL_20:
        if (v18 == v52)
        {
          goto LABEL_69;
        }
      }

      if (!v32)
      {
        goto LABEL_45;
      }

LABEL_44:
      __CocoaSet.count.getter();
      goto LABEL_45;
    }

LABEL_69:

    a1 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
      goto LABEL_81;
    }

    v6 = v12;
    if (a1 <= 0)
    {

      return;
    }
  }

  v13 = __CocoaSet.count.getter();
  if (__CocoaSet.count.getter() < 0)
  {
    goto LABEL_82;
  }

  v14 = __CocoaSet.count.getter();
  if ((v13 & 0x8000000000000000) == 0 && v14 >= v13)
  {
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

void SheetBridge.presenterHasWindow.getter()
{
  v0 = SheetBridge.presenter.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 view];

    if (v2)
    {
      v3 = [v2 window];

      if (v3)
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t SheetBridge.presentationState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  return outlined init with copy of PresentationState(v1 + v3, a1);
}

double SheetBridge.lastEnvironment.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + direct field offset for SheetBridge.lastEnvironment + 8);
  *a1 = *(v1 + direct field offset for SheetBridge.lastEnvironment);
  a1[1] = v2;

  return result;
}

void closure #2 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:)(void *a1, uint64_t (*a2)(), uint64_t a3, char a4)
{
  v8 = [a1 transitionCoordinator];
  if (!v8)
  {
LABEL_6:
    if ((a4 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_7:
    v11 = [a1 presentingViewController];
    if (!v11)
    {
      v11 = a1;
    }

    v25 = a2;
    v26 = a3;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed () -> ();
    v24 = &block_descriptor_32;
    v14 = _Block_copy(&v21);

    [v11 dismissViewControllerAnimated:1 completion:v14];
    _Block_release(v14);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [a1 presentationController];
  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v11 = v10;
  if ([v10 dismissing])
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v25 = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
    v26 = v12;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v24 = &block_descriptor_38;
    v13 = _Block_copy(&v21);

    [v9 animateAlongsideTransition:0 completion:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
LABEL_10:

    return;
  }

  swift_unknownObjectRelease();

  if (a4)
  {
    goto LABEL_7;
  }

LABEL_12:
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #2 in closure #2 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:);
  *(v17 + 24) = v16;
  v25 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v26 = v17;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed () -> ();
  v24 = &block_descriptor_29_0;
  v18 = _Block_copy(&v21);

  v19 = a1;

  [v15 _performWithoutDeferringTransitions_];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void closure #2 in closure #2 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 presentingViewController];
  if (!v6)
  {
    v6 = a1;
  }

  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_41;
  v7 = _Block_copy(v8);

  [v6 dismissViewControllerAnimated:0 completion:v7];
  _Block_release(v7);
}

Swift::Void __swiftcall SheetBridge.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(UISheetPresentationController a1)
{
  v3 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v1 + v3, v5);
  v4 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v5);
  if (v4)
  {
    specialized PresentationHostingController.didChangeSelectedDetent(sheet:)(a1.super.super.isa);
  }
}

void specialized PresentationHostingController.didChangeSelectedDetent(sheet:)(void *a1)
{
  v2 = v1;
  v4 = direct field offset for UIHostingController.host;
  v5 = *(v1 + direct field offset for UIHostingController.host);
  specialized _UIHostingView.beginDescendingAllowUIKitAnimations(depth:)(10);
  v7 = v6;

  v8 = *(v2 + v4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = v8;
  onNextMainRunLoop(do:)();

  v11 = direct field offset for PresentationHostingController.lastPresentationOptions;
  swift_beginAccess();
  outlined init with copy of PresentationOptionsPreference?(v2 + v11, v41);
  if (!*&v41[0])
  {
    outlined destroy of PresentationOptionsPreference?(v41);
    return;
  }

  v49 = v41[6];
  v50[0] = v42[0];
  *(v50 + 10) = *(v42 + 10);
  v45 = v41[2];
  v46 = v41[3];
  v47 = v41[4];
  v48 = v41[5];
  v43 = v41[0];
  v44 = v41[1];
  v12 = [a1 selectedDetentIdentifier];
  if (!v12)
  {
    outlined destroy of PresentationOptionsPreference(&v43);
    return;
  }

  v13 = v12;
  if (!v44)
  {
    outlined destroy of PresentationOptionsPreference(&v43);

    return;
  }

  v14 = v43;
  v15 = v43 + 56;
  v16 = 1 << *(v43 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v43 + 56);
  v38 = *(&v43 + 1);
  v39 = v44;
  outlined copy of Binding<Int>?(*(&v43 + 1), v44);
  v19 = (v16 + 63) >> 6;
  v37 = *MEMORY[0x1E69DE3B0];
  v36 = *MEMORY[0x1E69DE3B8];

  v20 = 0;
  while (v18)
  {
LABEL_13:
    v23 = __clz(__rbit64(v18));
    v24 = *(*(v14 + 48) + ((v20 << 10) | (16 * v23)));
    v25 = *(*(v14 + 48) + ((v20 << 10) | (16 * v23)) + 8);
    v26 = v25 >> 62;
    v40 = v24;
    if ((v25 >> 62) <= 1)
    {
      if (v26)
      {
        *&v41[0] = 0x3A746867696548;
        v27 = 0xE700000000000000;
      }

      else
      {
        *&v41[0] = 0x6E6F697463617246;
        v27 = 0xE90000000000003ALL;
      }

      *(&v41[0] + 1) = v27;
      v28 = Double.description.getter();
      goto LABEL_20;
    }

    if (v26 == 2)
    {
      *&v41[0] = 0x3A6D6F74737543;
      *(&v41[0] + 1) = 0xE700000000000000;
      v28 = _typeName(_:qualified:)();
LABEL_20:
      MEMORY[0x18D00C9B0](v28);

      v29 = MEMORY[0x18D00C850](*&v41[0], *(&v41[0] + 1));

      goto LABEL_25;
    }

    if (v24 | v25 ^ 0xC000000000000000)
    {
      v30 = v37;
    }

    else
    {
      v30 = v36;
    }

    v29 = v30;
LABEL_25:
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {

      v35 = v40;
LABEL_31:
      v41[0] = v35;
      dispatch thunk of AnyLocation.set(_:transaction:)();

      outlined destroy of PresentationOptionsPreference(&v43);
      outlined consume of Binding<NavigationSplitViewColumn>?(v38, v39);
      return;
    }

    v18 &= v18 - 1;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {

      v35 = v40;
      goto LABEL_31;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v35 = xmmword_18CD848D0;
      goto LABEL_31;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void @objc SheetBridge.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SheetBridge.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(v4);
}

Swift::Void __swiftcall SheetBridge._sheetPresentationControllerDidChangeHosting(_:)(UISheetPresentationController a1)
{
  v3 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v1 + v3, v12);
  v4 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v12);
  if (v4)
  {
    if (([(objc_class *)a1.super.super.isa _isHosting]& 1) != 0)
    {
      v5 = [v4 view];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_opt_self() clearColor];
        [v6 setBackgroundColor_];

        v8 = *&v4[direct field offset for UIHostingController.host];
        v9 = v4;
        v10 = v8;
        v11 = specialized _UIHostingView.base.getter();
        UIHostingViewBase.safeAreaRegions.setter();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void @objc SheetBridge._sheetPresentationControllerDidChangeHosting(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SheetBridge._sheetPresentationControllerDidChangeHosting(_:)(v4);
}

uint64_t closure #1 in variable initialization expression of SheetBridge.clientNeedsOutOfWindowPresentationSuppression()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000013 && 0x800000018CD43BD0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

void @objc SheetBridge.presentationControllerDidAttemptToDismiss(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized SheetBridge.presentationControllerDidAttemptToDismiss(_:)();
}

Swift::Void __swiftcall SheetBridge.didBeginInteractiveDismissal(_:)(UIViewController *a1)
{
  v2 = v1;
  v4 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v2 + v4, v6);
  v5 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v6);
  if (v5)
  {

    if (v5 == a1)
    {
      type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
      lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
      if (static SemanticFeature.isEnabled.getter())
      {
        swift_beginAccess();
        PresentationState.presentationDidBeginInteractiveDismissal()();
        swift_endAccess();
      }
    }
  }
}

Swift::Void __swiftcall SheetBridge.didDismissViewController(_:wasPreempted:modifierRemoved:)(UIViewController *_, Swift::Bool wasPreempted, Swift::Bool modifierRemoved)
{
  if (!wasPreempted)
  {
    v4 = v3;
    if (modifierRemoved)
    {
      type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
      lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
      if (static SemanticFeature.isEnabled.getter())
      {
        swift_beginAccess();
        PresentationState.dismiss(willPresentAgain:hasNoModifier:)(0, 1);
        swift_endAccess();
      }
    }

    v6 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v4 + v6, v13);
    PresentationState.delayedPresentation.getter(v15);
    outlined destroy of PresentationState(v13);
    swift_beginAccess();
    PresentationState.presentationDidDisappear()();
    swift_endAccess();
    outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v15, v11);
    if (*&v11[0])
    {
      v13[4] = v11[4];
      v13[5] = v11[5];
      *v14 = *v12;
      *&v14[9] = *&v12[9];
      v13[0] = v11[0];
      v13[1] = v11[1];
      v13[2] = v11[2];
      v13[3] = v11[3];
      v7 = SheetBridge.presenter.getter();
      if (v7)
      {
        v8 = v7;
        outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(v13, v11);
        v9 = *&v12[16];
        outlined destroy of SheetPreference(v11);
        if (v9)
        {
          if (v9 == _)
          {
            v10 = v9;
            specialized PresentationHostingController.resetSheetControllerOscillationDetection()();
          }
        }

        SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(v13, v8, v14[24], *&v14[16], 0);
      }

      outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v15, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
      outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(v13);
    }

    else
    {
      outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v15, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
      outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v11, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
    }
  }
}

uint64_t specialized PresentationHostingController.resetSheetControllerOscillationDetection()()
{
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  v1 = direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration;
  swift_beginAccess();
  outlined assign with take of PresentationOptionsPreference?(&v4, v0 + v1);
  result = swift_endAccess();
  v3 = *(v0 + direct field offset for PresentationHostingController.oscillationDetector);
  if (v3)
  {
    memset(v11, 0, sizeof(v11));
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    swift_beginAccess();
    *(v3 + 16) = _sSa9repeating5countSayxGx_SitcfC7SwiftUI29PresentationOptionsPreferenceVSg_Tt1g5(&v4, *(*(v3 + 16) + 16));
  }

  return result;
}

Swift::Void __swiftcall SheetBridge.didDismissViewController(_:wasPreempted:)(UIViewController *_, Swift::Bool wasPreempted)
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  static Log.presentation.getter();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_18BD4A000, v9, v10, "Non-sheet-bridge-originated dismissal finished", v11, 2u);
      MEMORY[0x18D0110E0](v11, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
  }

  SheetBridge.didDismissViewController(_:wasPreempted:modifierRemoved:)(_, wasPreempted, 0);
}

uint64_t one-time initialization function for willDismiss()
{
  result = MEMORY[0x18D00C850](0xD000000000000016, 0x800000018CD43B00);
  static SheetBridgeNotifications.willDismiss = result;
  return result;
}

void *specialized closure #1 in PresentationHostingController.didChangeSelectedDetent(sheet:)(void *result, uint64_t a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *result) + 0x80);
  v3 = *(result + v2);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + v2) = v5 & ~(v5 >> 31);
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = (a2 + 32);
      do
      {
        v8 = v7[3];
        v9 = v7[4];
        __swift_project_boxed_opaque_existential_1(v7, v8);
        result = (*(v9 + 16))(v8, v9);
        v7 += 5;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSo16UIViewControllerCSg_Tt1g5Tf4gn_nTm(void *result, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = result;
    type metadata accessor for UIViewController?(0, a3, a4, a5, MEMORY[0x1E69E6720]);
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v8 = v7;
    *(v7 + 16) = a2;
    *(v7 + 32) = v6;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = (v7 + 40);
      do
      {
        *v10++ = v6;
        v11 = v6;
        --v9;
      }

      while (v9);
    }

    v12 = v6;
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for PresentationHostingController<AnyView>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(0, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool))
  {
    type metadata accessor for PresentationHostingController<AnyView>?(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
    }
  }
}

void type metadata accessor for PresentationHostingController<AnyView>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PresentationHostingController<AnyView>?)
  {
    type metadata accessor for PresentationHostingController<AnyView>(255, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PresentationHostingController<AnyView>?);
    }
  }
}

uint64_t outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(uint64_t a1)
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PresentationOptionsPreference?(uint64_t a1)
{
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void specialized SheetBridge.presentationControllerDidAttemptToDismiss(_:)()
{
  v1 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v0 + v1, v8);
  v2 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v8);
  if (v2)
  {
    v3 = *&v2[direct field offset for UIHostingController.host];
    v5 = specialized _UIHostingView.sheetBridge.getter(v3, v4);

    if (v5)
    {
      v7 = *&v5[direct field offset for SheetBridge.interactiveDismissHandler];
      v6 = *&v5[direct field offset for SheetBridge.interactiveDismissHandler + 8];
      outlined copy of AppIntentExecutor?(v7, v6);

      if (v7)
      {
        v7();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v6);
      }
    }
  }
}

unint64_t type metadata accessor for UIKitAnimationCooperating()
{
  result = lazy cache variable for type metadata for UIKitAnimationCooperating;
  if (!lazy cache variable for type metadata for UIKitAnimationCooperating)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIKitAnimationCooperating);
  }

  return result;
}

uint64_t outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for UIViewController?(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [UIView] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIView] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIView] and conformance [A])
  {
    type metadata accessor for UIViewController?(255, &lazy cache variable for type metadata for [UIView], &lazy cache variable for type metadata for UIView, 0x1E69DD250, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [UIView] and conformance [A]);
  }

  return result;
}

uint64_t LabeledContent<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>)
{
  v17 = *(type metadata accessor for LabeledContent(0, MEMORY[0x1E6981148], a7, a4) + 40);
  closure #1 in LabeledContent<>.init(_:content:)(a5, a6, a7);
  *a9 = closure #2 in LabeledContent<>.init(_:content:)(a1, a2, a3, a4);
  *(a9 + 8) = v18;
  *(a9 + 16) = v19 & 1;
  *(a9 + 24) = v20;
  *(a9 + v17) = 1;
}

uint64_t closure #2 in LabeledContent<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t LabeledContent<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for LabeledContent(0, MEMORY[0x1E6981148], a4, a4) + 40);
  closure #1 in LabeledContent<>.init<A>(_:content:)(a2, a3, a4);
  *a8 = closure #2 in LabeledContent<>.init<A>(_:content:)(a1, a4, a5, a6, a7);
  *(a8 + 8) = v17;
  *(a8 + 16) = v18 & 1;
  *(a8 + 24) = v19;
  *(a8 + v16) = 1;
  v20 = *(*(a5 - 8) + 8);

  return v20(a1, a5);
}

uint64_t closure #1 in LabeledContent<>.init<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a3);
}

uint64_t closure #2 in LabeledContent<>.init<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return Text.init<A>(_:)();
}

uint64_t LabeledContent<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v11 = *(type metadata accessor for LabeledContent(0, MEMORY[0x1E6981148], a4, a4) + 40);
  closure #1 in LabeledContent<>.init(_:content:)(a2, a3, a4);
  *a6 = closure #2 in LabeledContent<>.init(_:content:)(a1);
  *(a6 + 8) = v12;
  *(a6 + 16) = v13 & 1;
  *(a6 + 24) = v14;
  *(a6 + v11) = 1;
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = *(*(v15 - 8) + 8);

  return v16(a1, v15);
}

uint64_t closure #1 in LabeledContent<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a3);
}

uint64_t closure #2 in LabeledContent<>.init(_:content:)(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return Text.init(_:)();
}

uint64_t LabeledContent<>.init<A>(_:value:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  closure #1 in LabeledContent<>.init<A>(_:value:)(a5, v22);
  v11 = v22[0];
  v12 = v22[1];
  v13 = v24;
  v25 = v23;
  v14 = Text.init(_:tableName:bundle:comment:)();
  LOBYTE(v22[0]) = v15 & 1;
  v16 = v25;
  *a8 = v14;
  *(a8 + 8) = v17;
  *(a8 + 16) = v15 & 1;
  *(a8 + 24) = v18;
  *(a8 + 32) = v11;
  *(a8 + 40) = v12;
  *(a8 + 48) = v16;
  *(a8 + 56) = v13;
  v19 = *(a6 - 8);
  *(a8 + 64) = 1;
  v20 = *(v19 + 8);

  return v20(a5, a6);
}

uint64_t LabeledContent<>.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a3 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v17, a1, v15);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a2;
  LabeledContent<>.init<A>(_:content:)(v17, partial apply for closure #1 in LabeledContent<>.init<A, B>(_:value:), v21, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981138], a5, v27);
  (*(v14 + 8))(a1, a3);
  v18 = v27[3];
  *(a7 + 32) = v27[2];
  *(a7 + 48) = v18;
  *(a7 + 64) = v28;
  v19 = v27[1];
  *a7 = v27[0];
  *(a7 + 16) = v19;
  return (*(*(a4 - 8) + 8))(a2, a4);
}

uint64_t closure #1 in LabeledContent<>.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
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

uint64_t LabeledContent<>.init<A>(_:value:format:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10)
{
  closure #1 in LabeledContent<>.init<A>(_:value:format:)(a5, a6, a7, v25);
  v14 = v25[0];
  v13 = v25[1];
  v15 = v27;
  v28 = v26;
  v16 = Text.init(_:tableName:bundle:comment:)();
  LOBYTE(v25[0]) = v17 & 1;
  v18 = v28;
  *a9 = v16;
  *(a9 + 8) = v19;
  *(a9 + 16) = v17 & 1;
  *(a9 + 24) = v20;
  *(a9 + 32) = v14;
  *(a9 + 40) = v13;
  *(a9 + 48) = v18;
  *(a9 + 56) = v15;
  *(a9 + 64) = 1;
  (*(*(a7 - 8) + 8))(a6, a7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(*(AssociatedTypeWitness - 8) + 8);

  return v22(a5, AssociatedTypeWitness);
}

uint64_t LabeledContent<>.init<A, B>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a8;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = v27;
  v34 = a2;
  v35 = a3;
  LabeledContent<>.init<A>(_:content:)(v20, partial apply for closure #1 in LabeledContent<>.init<A, B>(_:value:format:), v28, MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138], a6, v36);
  (*(v17 + 8))(a1, a4);
  v22 = v36[3];
  *(a9 + 32) = v36[2];
  *(a9 + 48) = v22;
  *(a9 + 64) = v37;
  v23 = v36[1];
  *a9 = v36[0];
  *(a9 + 16) = v23;
  (*(*(a5 - 8) + 8))(a3, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
}

uint64_t closure #1 in LabeledContent<>.init<A, B>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a6@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v16 + 16))(&v21 - v15, a1, v14);
  (*(v10 + 16))(v12, a2, a3);
  result = Text.init<A>(_:format:)();
  *a6 = result;
  *(a6 + 8) = v18;
  *(a6 + 16) = v19 & 1;
  *(a6 + 24) = v20;
  return result;
}

uint64_t LabeledContent<>.init<A>(_:value:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v30 = a1;
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = *(v9 + 16);
  v16(&v30 - v14, a1, v8, v13);
  closure #1 in LabeledContent<>.init<A>(_:value:)(a2, v35);
  v17 = v35[1];
  v33 = v35[0];
  v31 = v37;
  v38 = v36;
  (v16)(v11, v15, v8);
  v18 = Text.init(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v30, v8);
  v25(v15, v8);
  LOBYTE(v35[0]) = v22 & 1;
  v26 = v38;
  *a5 = v18;
  *(a5 + 8) = v20;
  *(a5 + 16) = v22 & 1;
  v27 = v32;
  v28 = v33;
  *(a5 + 24) = v24;
  *(a5 + 32) = v28;
  *(a5 + 40) = v17;
  *(a5 + 48) = v26;
  *(a5 + 56) = v31;
  *(a5 + 64) = 1;
  return (*(*(v27 - 8) + 8))(v34);
}

uint64_t closure #1 in LabeledContent<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
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

uint64_t LabeledContent<>.init<A>(_:value:format:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a4;
  v41 = a6;
  v43 = a2;
  v44 = a5;
  v42 = a3;
  v37 = a1;
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = *(v12 + 16);
  v19(&v36 - v17, a1, v11, v16);
  v20 = a3;
  v21 = v40;
  closure #1 in LabeledContent<>.init<A>(_:value:format:)(a2, v20, v40, v45);
  v41 = v45[0];
  v38 = v47;
  v39 = v45[1];
  v48 = v46;
  (v19)(v14, v18, v11);
  v22 = Text.init(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *(v12 + 8);
  v29(v37, v11);
  v29(v18, v11);
  LOBYTE(v45[0]) = v26 & 1;
  v30 = v48;
  *a7 = v22;
  *(a7 + 8) = v24;
  *(a7 + 16) = v26 & 1;
  v32 = v41;
  v31 = v42;
  *(a7 + 24) = v28;
  *(a7 + 32) = v32;
  v33 = v38;
  *(a7 + 40) = v39;
  *(a7 + 48) = v30;
  *(a7 + 56) = v33;
  *(a7 + 64) = 1;
  (*(*(v21 - 8) + 8))(v31, v21);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(v43, AssociatedTypeWitness);
}

uint64_t closure #1 in LabeledContent<>.init<A>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v16 + 16))(&v21 - v15, a1, v14);
  (*(v10 + 16))(v12, a2, a3);
  result = Text.init<A>(_:format:)();
  *a6 = result;
  *(a6 + 8) = v18;
  *(a6 + 16) = v19 & 1;
  *(a6 + 24) = v20;
  return result;
}

uint64_t getEnumTagSinglePayload for LabeledContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFD)
  {
    v11 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_30:
      if (v5 == v11)
      {
        return (*(v4 + 48))();
      }

      v22 = (a1 + v12) & ~v9;
      if (v8 == v11)
      {
        return (*(v7 + 48))(v22, v8, v6);
      }

      v23 = *(v22 + v10);
      v24 = v23 >= 2;
      v25 = v23 - 2;
      if (!v24)
      {
        v25 = -1;
      }

      if (v25 + 1 >= 2)
      {
        return v25;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v10 + (v12 & ~v9) == -1)
  {
    v21 = 0;
  }

  else
  {
    if (v14 <= 3)
    {
      v20 = v10 + (v12 & ~v9) + 1;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  return v11 + (v21 | v19) + 1;
}

char *storeEnumTagSinglePayload for LabeledContent(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFD)
  {
    v12 = 253;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
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
          v17 = v22;
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
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
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
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 2;
    }
  }

  return result;
}

double outlined copy of HoverEffectPhaseOverride.Storage(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }

LABEL_6:

    return result;
  }

  if (v1 == 2 || v1 == 3)
  {
    goto LABEL_6;
  }

  return result;
}

double outlined consume of HoverEffectPhaseOverride.Storage(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }

LABEL_6:

    return result;
  }

  if (v1 == 2 || v1 == 3)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _HoverEffectActivationBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _HoverEffectActivationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t static Color.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UTType?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  UTType.init(_identifier:allowUndeclared:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UTType?(v4);
    static UTType.item.getter();
    lazy protocol witness table accessor for type Color and conformance Color();
    return DataRepresentation.init(exportedContentType:exporting:)();
  }

  else
  {
    v23 = *(v6 + 32);
    v23(v14, v4, v5);
    v26 = v6;
    v16 = *(v6 + 16);
    v16(v11, v14, v5);
    v16(v8, v14, v5);
    v27 = v11;
    v17 = *(v6 + 80);
    v25 = a1;
    v18 = (v17 + 16) & ~v17;
    v24 = swift_allocObject();
    v19 = v23;
    v23((v24 + v18), v8, v5);
    v16(v8, v14, v5);
    v20 = swift_allocObject();
    v19(v20 + v18, v8, v5);
    v21 = lazy protocol witness table accessor for type Color and conformance Color();
    MEMORY[0x18D000CA0](v27, &async function pointer to partial apply for closure #1 in static Color.transferRepresentation.getter, v24, &async function pointer to partial apply for closure #2 in static Color.transferRepresentation.getter, v20, MEMORY[0x1E69815C0], v21);
    return (*(v26 + 8))(v14, v5);
  }
}

void type metadata accessor for UTType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UTType?)
  {
    type metadata accessor for UTType();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UTType?);
    }
  }
}

uint64_t closure #1 in static Color.transferRepresentation.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](closure #1 in static Color.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static Color.transferRepresentation.getter()
{
  v1 = v0[4];
  type metadata accessor for UIColor();

  v3 = UIColor.init(_:)(v2);
  v0[6] = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = closure #1 in static Color.transferRepresentation.getter;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x6174614464616F6CLL, 0xEE00293A726F6628, partial apply for closure #1 in UIColor.loadData(for:), v4, v6);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in static Color.transferRepresentation.getter;
  }

  else
  {

    v2 = closure #1 in static Color.transferRepresentation.getter;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in static Color.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;

  return MEMORY[0x1EEE6DFA0](closure #2 in static Color.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static Color.transferRepresentation.getter()
{
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = UTType.identifier.getter();
  v4 = MEMORY[0x18D00C850](v3);

  v0[2] = 0;
  v5 = [v1 objectWithItemProviderData:isa typeIdentifier:v4 error:v0 + 2];

  v6 = v0[2];
  if (v5)
  {
    v7 = v0[3];
    type metadata accessor for UIKitPlatformColorDefinition(0);
    v8 = v6;
    *v7 = Color.init(_platformColor:definition:)();
  }

  else
  {
    v10 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in static Color.errorRepresentation.getter()
{
  return MEMORY[0x1EEE6DFA0](closure #1 in static Color.errorRepresentation.getter, 0, 0);
}

{
  v1 = type metadata accessor for TransferableError();
  lazy protocol witness table accessor for type DataRepresentation<Color> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8], MEMORY[0x1E6965BE0]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E6965BC8], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t partial apply for closure #1 in static Color.transferRepresentation.getter(uint64_t *a1)
{
  v4 = *(type metadata accessor for UTType() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in static Color.transferRepresentation.getter;

  return closure #1 in static Color.transferRepresentation.getter(a1, v1 + v5);
}

uint64_t partial apply for closure #1 in static Color.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t partial apply for closure #2 in static Color.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for UTType() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in static Color.transferRepresentation.getter(a1, a2, a3, v3 + v9);
}

void type metadata accessor for DataRepresentation<Color>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DataRepresentation<Color>)
  {
    lazy protocol witness table accessor for type Color and conformance Color();
    v1 = type metadata accessor for DataRepresentation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DataRepresentation<Color>);
    }
  }
}

void closure #1 in UIColor.loadData(for:)(uint64_t a1, void *a2)
{
  type metadata accessor for CheckedContinuation<Data, Error>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = UTType.identifier.getter();
  v9 = MEMORY[0x18D00C850](v8);

  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = partial apply for closure #1 in closure #1 in UIColor.loadData(for:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_18;
  v12 = _Block_copy(aBlock);

  v13 = [a2 loadDataWithTypeIdentifier:v9 forItemProviderCompletionHandler:v12];
  _Block_release(v12);
}

void type metadata accessor for CheckedContinuation<Data, Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CheckedContinuation<Data, Error>)
  {
    type metadata accessor for Error();
    v1 = type metadata accessor for CheckedContinuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CheckedContinuation<Data, Error>);
    }
  }
}

uint64_t closure #1 in closure #1 in UIColor.loadData(for:)(uint64_t a1, unint64_t a2, id a3)
{
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      v4 = type metadata accessor for TransferableError();
      lazy protocol witness table accessor for type DataRepresentation<Color> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8], MEMORY[0x1E6965BE0]);
      swift_allocError();
      (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6965BC8], v4);
      a3 = 0;
    }

    v6 = a3;
    type metadata accessor for CheckedContinuation<Data, Error>(0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    type metadata accessor for CheckedContinuation<Data, Error>(0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t partial apply for closure #1 in closure #1 in UIColor.loadData(for:)(uint64_t a1, unint64_t a2, void *a3)
{
  type metadata accessor for CheckedContinuation<Data, Error>(0);

  return closure #1 in closure #1 in UIColor.loadData(for:)(a1, a2, a3);
}

double thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  outlined consume of Data?(v4, v8);

  return result;
}

uint64_t lazy protocol witness table accessor for type DataRepresentation<Color> and conformance DataRepresentation<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t View.onInteractiveResizeChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for OnInteractiveResizeChangeModifier);
}

uint64_t static OnInteractiveResizeChangeModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v12 = *(a2 + 3);
  v7 = a2[5];
  v8 = *(a2 + 4);
  v14 = *(a2 + 3);
  v15 = v8;
  v16 = *(a2 + 20);
  lazy protocol witness table accessor for type InteractiveResizeInput and conformance InteractiveResizeInput();

  PropertyList.subscript.getter();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher();
  Attribute.init<A>(body:value:flags:update:)();
  v9 = AGGraphSetFlags();
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v13 = v7;
  return a3(v9, v11);
}

void OnInteractiveResizeChangeModifier.ActionDispatcher.updateValue()()
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v2 = *WeakValue;
    if (v2 != *(v0 + 12))
    {
      Value = AGGraphGetValue();
      v5 = *Value;
      v4 = Value[1];
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;
      *(v6 + 32) = v2;
      swift_retain_n();
      static Update.enqueueAction(reason:_:)();

      *(v0 + 12) = v2;
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance OnInteractiveResizeChangeModifier(int *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t *))
{
  lazy protocol witness table accessor for type InteractiveResizeInput and conformance InteractiveResizeInput();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher();
  Attribute.init<A>(body:value:flags:update:)();
  v5 = AGGraphSetFlags();
  return a3(v5, a2);
}

unint64_t lazy protocol witness table accessor for type InteractiveResizeInput and conformance InteractiveResizeInput()
{
  result = lazy protocol witness table cache variable for type InteractiveResizeInput and conformance InteractiveResizeInput;
  if (!lazy protocol witness table cache variable for type InteractiveResizeInput and conformance InteractiveResizeInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InteractiveResizeInput, &unk_1EFFAAEA0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InteractiveResizeInput and conformance InteractiveResizeInput);
  }

  return result;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance InteractiveResizeInput@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static InteractiveResizeInput.defaultValue;
  *a1 = static InteractiveResizeInput.defaultValue;
  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance InteractiveResizeChangeViewGraphFeature()
{
  v1 = *v0;
  v3 = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type InteractiveResizeInput and conformance InteractiveResizeInput();
  result = PropertyList.subscript.setter();
  *(v1 + 20) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher()
{
  result = lazy protocol witness table cache variable for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher;
  if (!lazy protocol witness table cache variable for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnInteractiveResizeChangeModifier.ActionDispatcher, &unk_1EFFAAE70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher);
  }

  return result;
}

void *_IntelligenceSupport.SummarySymbolHost.__allocating_init(rootView:)(unsigned __int8 *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized _UIHostingView.init(rootView:)(*a1, *(a1 + 1), *(a1 + 2));
  v5 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v4;
}

uint64_t @objc _IntelligenceSupport.SummarySymbolHost.isOn.getter(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  return *(a1 + v2);
}

uint64_t _IntelligenceSupport.SummarySymbolHost.isOn.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  swift_beginAccess();
  return *(v0 + v1);
}

void @objc _IntelligenceSupport.SummarySymbolHost.isOn.setter(void *a1, uint64_t a2, char a3)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  *(a1 + v5) = a3;
  v6 = a1;
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t _IntelligenceSupport.SummarySymbolHost.isOn.setter(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  *(v1 + v3) = a1;
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t key path setter for _IntelligenceSupport.SummarySymbolHost.isOn : _IntelligenceSupport.SummarySymbolHost(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  swift_beginAccess();
  *(v3 + v4) = v2;
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void (*_IntelligenceSupport.SummarySymbolHost.isOn.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return _IntelligenceSupport.SummarySymbolHost.isOn.modify;
}

void _IntelligenceSupport.SummarySymbolHost.isOn.modify(uint64_t a1)
{
  v1 = *a1;
  *(*(*a1 + 24) + *(*a1 + 32)) = *(*a1 + 40);
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  free(v1);
}

id @objc _IntelligenceSupport.SummarySymbolHost.font.getter(void *a1)
{
  v1 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x60));
  swift_beginAccess();
  return v1[1];
}

id _IntelligenceSupport.SummarySymbolHost.font.getter()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  swift_beginAccess();
  v2 = *(v1 + 1);

  return v2;
}

void @objc _IntelligenceSupport.SummarySymbolHost.font.setter(void *a1, uint64_t a2, void *a3)
{
  v5 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = a3;
  v9 = a1;
  v10 = *(v5 + 1);
  *v5 = v6;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void _IntelligenceSupport.SummarySymbolHost.font.setter(void *a1)
{
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = a1;
  v7 = *(v3 + 1);
  *v3 = v4;
  *(v3 + 1) = v6;
  *(v3 + 2) = v5;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

id key path getter for _IntelligenceSupport.SummarySymbolHost.font : _IntelligenceSupport.SummarySymbolHost@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0x60);
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = v4;

  return v4;
}

uint64_t key path setter for _IntelligenceSupport.SummarySymbolHost.font : _IntelligenceSupport.SummarySymbolHost(void **a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0x60));
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v2;
  v7 = *(v3 + 1);
  *v3 = v4;
  *(v3 + 1) = v6;
  *(v3 + 2) = v5;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void (*_IntelligenceSupport.SummarySymbolHost.font.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  *(v3 + 40) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 1);
  *(v4 + 24) = v7;
  v8 = v7;
  return _IntelligenceSupport.SummarySymbolHost.font.modify;
}

void _IntelligenceSupport.SummarySymbolHost.font.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = (*(*a1 + 32) + *(*a1 + 40));
  v6 = *v5;
  v7 = *v4;
  v8 = v7;
  v9 = *(v5 + 1);
  *v5 = v6;
  *(v5 + 1) = v7;
  if (a2)
  {
    v10 = v7;

    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

    v8 = *v4;
  }

  else
  {

    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  free(v3);
}

id @objc _IntelligenceSupport.SummarySymbolHost.foregroundColor.getter(void *a1)
{
  v1 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v2 = v6;
  v3 = v7;
  v4 = _IntelligenceSupport.AnimatingSummarySymbol.color.getter();

  return v4;
}

uint64_t _IntelligenceSupport.SummarySymbolHost.foregroundColor.getter()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  swift_beginAccess();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v2 = v6;
  v3 = v7;
  v4 = _IntelligenceSupport.AnimatingSummarySymbol.color.getter();

  return v4;
}

void @objc _IntelligenceSupport.SummarySymbolHost.foregroundColor.setter(void *a1, uint64_t a2, void *a3)
{
  v5 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  v6 = *(v5 + 1);
  v7 = *(v5 + 2);
  v14 = *v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  v8 = a3;
  v9 = a1;
  v10 = v6;
  v11 = v7;
  _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
  v13 = *(v5 + 1);
  v12 = *(v5 + 2);
  *v5 = v14;
  *(v5 + 8) = v15;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void _IntelligenceSupport.SummarySymbolHost.foregroundColor.setter(void *a1)
{
  v2 = v1;
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v12 = *v4;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  v7 = a1;
  v8 = v5;
  v9 = v6;
  _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
  v11 = *(v4 + 1);
  v10 = *(v4 + 2);
  *v4 = v12;
  *(v4 + 8) = v13;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void key path getter for _IntelligenceSupport.SummarySymbolHost.foregroundColor : _IntelligenceSupport.SummarySymbolHost(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0x60);
  swift_beginAccess();
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v4 = v7;
  v5 = v8;
  v6 = _IntelligenceSupport.AnimatingSummarySymbol.color.getter();

  *a2 = v6;
}

uint64_t key path setter for _IntelligenceSupport.SummarySymbolHost.foregroundColor : _IntelligenceSupport.SummarySymbolHost(void **a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0x60));
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v12 = *v3;
  *&v13 = v4;
  *(&v13 + 1) = v5;
  v6 = v2;
  v7 = v4;
  v8 = v5;
  _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
  v10 = *(v3 + 1);
  v9 = *(v3 + 2);
  *v3 = v12;
  *(v3 + 8) = v13;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void (*_IntelligenceSupport.SummarySymbolHost.foregroundColor.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  *(v3 + 40) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v11 = *(v6 + 1);
  v12 = *(v6 + 2);
  v7 = v11;
  v8 = v12;
  v9 = _IntelligenceSupport.AnimatingSummarySymbol.color.getter();

  *(v4 + 24) = v9;
  return _IntelligenceSupport.SummarySymbolHost.foregroundColor.modify;
}

void _IntelligenceSupport.SummarySymbolHost.foregroundColor.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = (*(*a1 + 32) + *(*a1 + 40));
  if (a2)
  {
    v6 = *(v5 + 1);
    v7 = *(v5 + 2);
    v20 = *v5;
    *&v22 = v6;
    *(&v22 + 1) = v7;
    v8 = v3;
    v9 = v6;
    v10 = v7;
    _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
    v11 = *(v5 + 1);
    v12 = *(v5 + 2);
    *v5 = v20;
    *(v5 + 8) = v22;

    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  else
  {
    v13 = *(v5 + 1);
    v14 = *(v5 + 2);
    v21 = *v5;
    *&v23 = v13;
    *(&v23 + 1) = v14;
    v15 = v3;
    v16 = v13;
    v17 = v14;
    _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
    v18 = *(v5 + 1);
    v19 = *(v5 + 2);
    *v5 = v21;
    *(v5 + 8) = v23;

    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  free(v2);
}

double @objc _IntelligenceSupport.SummarySymbolHost.baseline.getter(void *a1)
{
  v1 = a1;
  static VerticalAlignment.firstTextBaseline.getter();
  [v1 bounds];
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  ViewRendererHost.alignment(of:at:)();
  v3 = v2;

  return v3;
}

double _IntelligenceSupport.SummarySymbolHost.baseline.getter(uint64_t a1)
{
  static VerticalAlignment.firstTextBaseline.getter();
  [v1 bounds];
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(0);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);

  ViewRendererHost.alignment(of:at:)();
  return result;
}

id _IntelligenceSupport.SummarySymbolHost.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *_IntelligenceSupport.SummarySymbolHost.init(rootView:)(unsigned __int8 *a1)
{
  v1 = specialized _UIHostingView.init(rootView:)(*a1, *(a1 + 1), *(a1 + 2));
  v2 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v1;
}

void type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>)
  {
    v2 = lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol();
    v4 = type metadata accessor for _UIHostingView(a1, MEMORY[0x1E697FB28], v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

id _IntelligenceSupport.SummarySymbolHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _IntelligenceSupport.SummarySymbolHost(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for _IntelligenceSupport.SummarySymbolHost(uint64_t a1)
{
  result = type metadata singleton initialization cache for _IntelligenceSupport.SummarySymbolHost;
  if (!type metadata singleton initialization cache for _IntelligenceSupport.SummarySymbolHost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.indexViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IndexViewStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance IndexViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type IndexViewBody and conformance IndexViewBody();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance IndexViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type IndexViewBody and conformance IndexViewBody();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t IndexViewStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance IndexViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for IndexViewStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance IndexViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for IndexViewStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t destroy for _IndexViewStyleConfiguration(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + 24));
}

uint64_t initializeWithCopy for _IndexViewStyleConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = a2[2];
  v5 = *(a2 + 3);
  *(a1 + 48) = v5;
  v6 = v5;
  v7 = **(v5 - 8);

  v7(a1 + 24, a2 + 3, v6);
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = a2[10];
  v10 = v8;

  return a1;
}

uint64_t *assignWithCopy for _IndexViewStyleConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  __swift_assign_boxed_opaque_existential_1(a1 + 3, a2 + 3);
  v4 = a2[8];
  v5 = a1[8];
  a1[8] = v4;
  v6 = v4;

  a1[9] = a2[9];

  a1[10] = a2[10];
  return a1;
}

uint64_t *assignWithTake for _IndexViewStyleConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  __swift_destroy_boxed_opaque_existential_1(a1 + 3);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  v4 = a2[8];
  v5 = a1[8];
  a1[7] = a2[7];
  a1[8] = v4;

  a1[9] = a2[9];

  a1[10] = a2[10];
  return a1;
}

uint64_t getEnumTagSinglePayload for _IndexViewStyleConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for _IndexViewStyleConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexViewBody and conformance IndexViewBody()
{
  result = lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody;
  if (!lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexViewBody, &type metadata for IndexViewBody, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody;
  if (!lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexViewBody, &type metadata for IndexViewBody, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexViewStyleModifier<DefaultIndexViewStyle> and conformance IndexViewStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type IndexViewStyleModifier<DefaultIndexViewStyle> and conformance IndexViewStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type IndexViewStyleModifier<DefaultIndexViewStyle> and conformance IndexViewStyleModifier<A>)
  {
    type metadata accessor for IndexViewStyleModifier<DefaultIndexViewStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for IndexViewStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewStyleModifier<DefaultIndexViewStyle> and conformance IndexViewStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for IndexViewStyleModifier<DefaultIndexViewStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexViewStyleModifier<DefaultIndexViewStyle>)
  {
    v2 = lazy protocol witness table accessor for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle();
    v4 = type metadata accessor for IndexViewStyleModifier(a1, &type metadata for DefaultIndexViewStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for IndexViewStyleModifier<DefaultIndexViewStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle()
{
  result = lazy protocol witness table cache variable for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle;
  if (!lazy protocol witness table cache variable for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultIndexViewStyle, &type metadata for DefaultIndexViewStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle);
  }

  return result;
}

uint64_t static Section<>._makeRows(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *(&v49 + 1) = a6;
  v50 = a8;
  v42 = a9;
  v131 = *MEMORY[0x1E69E9840];
  v13 = a2[7];
  v127 = a2[6];
  v128 = v13;
  v129 = a2[8];
  v14 = a2[3];
  v123 = a2[2];
  v124 = v14;
  v15 = a2[5];
  v125 = a2[4];
  v126 = v15;
  v16 = a2[1];
  v121 = *a2;
  v17 = *a1;
  v130 = *(a2 + 18);
  v122 = v16;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v70 = a7;
  v71 = a8;
  v43 = a7;
  LODWORD(v109[0]) = v17;
  v18 = v17;
  v45 = v17;
  *&v49 = a5;
  type metadata accessor for Section(255, a3, a4, a5);
  v19 = type metadata accessor for _GraphValue();
  type metadata accessor for Binding<Bool>?(0);
  v44 = v19;
  _GraphValue.subscript.getter();
  v47 = HIDWORD(v130);
  v120 = v130;
  v40 = v107[0];
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v113 = v123;
  v114 = v124;
  v115 = v125;
  v116 = v126;
  v111 = v121;
  v112 = v122;
  LODWORD(v107[0]) = HIDWORD(v130);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(&v121, v109);
  lazy protocol witness table accessor for type SectionHeaderTrait and conformance SectionHeaderTrait();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  v48 = &v40;
  v61 = a3;
  v62 = a4;
  v63 = __PAIR128__(*(&v49 + 1), a5);
  v21 = *(&v49 + 1);
  v64 = a7;
  v22 = v50;
  v65 = v50;
  LODWORD(v75) = v18;
  _GraphValue.subscript.getter();
  v107[6] = v117;
  v107[7] = v118;
  v107[8] = v119;
  v107[2] = v113;
  v107[3] = v114;
  v107[4] = v115;
  v107[5] = v116;
  v107[0] = v111;
  v107[1] = v112;
  v108 = __PAIR64__(v20, v120);
  v41 = v20;
  v103 = v117;
  v104 = v118;
  v105 = v119;
  v106 = __PAIR64__(v20, v120);
  v99 = v113;
  v100 = v114;
  v101 = v115;
  v102 = v116;
  v97 = v111;
  v98 = v112;
  v23 = *(v21 + 48);
  outlined init with copy of _TableRowInputs(v107, v109);
  v23(v85, v72, &v97, a3, v21);
  v109[6] = v103;
  v109[7] = v104;
  v109[8] = v105;
  v110 = v106;
  v109[2] = v99;
  v109[3] = v100;
  v109[4] = v101;
  v109[5] = v102;
  v109[0] = v97;
  v109[1] = v98;
  outlined destroy of _TableRowInputs(v109);
  v46 = *&v85[0];
  LODWORD(v48) = DWORD2(v85[0]);
  v93 = v127;
  v94 = v128;
  v95 = v129;
  v96 = v130;
  v89 = v123;
  v90 = v124;
  v91 = v125;
  v92 = v126;
  v87 = v121;
  v88 = v122;
  LODWORD(v85[0]) = v47;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(&v121, &v97);
  lazy protocol witness table accessor for type DepthTrait and conformance DepthTrait();
  v24 = Attribute.init<A>(body:value:flags:update:)();
  v55 = a3;
  v56 = a4;
  v57 = v49;
  v58 = v21;
  v25 = v43;
  v59 = v43;
  v60 = v22;
  LODWORD(v53) = v45;
  _GraphValue.subscript.getter();
  v85[6] = v93;
  v85[7] = v94;
  v85[8] = v95;
  v85[2] = v89;
  v85[3] = v90;
  v85[4] = v91;
  v85[5] = v92;
  v85[0] = v87;
  v85[1] = v88;
  v86 = __PAIR64__(v24, v96);
  v47 = v24;
  v81 = v93;
  v82 = v94;
  v83 = v95;
  v84 = __PAIR64__(v24, v96);
  v77 = v89;
  v78 = v90;
  v79 = v91;
  v80 = v92;
  v75 = v87;
  v76 = v88;
  v26 = *(v25 + 48);
  outlined init with copy of _TableRowInputs(v85, &v97);
  v26(v72, &v51, &v75, a4, v25);
  v103 = v81;
  v104 = v82;
  v105 = v83;
  v106 = v84;
  v99 = v77;
  v100 = v78;
  v101 = v79;
  v102 = v80;
  v97 = v75;
  v98 = v76;
  outlined destroy of _TableRowInputs(&v97);
  v27 = *&v72[0];
  v28 = DWORD2(v72[0]);
  *&v75 = v46;
  DWORD2(v75) = v48;
  v29 = PreferencesOutputs.subscript.getter();
  if ((v29 & 0x100000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v30 = v29;

  v53 = v27;
  v54 = v28;
  v31 = PreferencesOutputs.subscript.getter();
  if ((v31 & 0x100000000) != 0)
  {
    goto LABEL_5;
  }

  v32 = v31;

  *&v72[0] = __PAIR64__(v30, v40);
  DWORD2(v72[0]) = v32;
  MEMORY[0x1EEE9AC00](v33);
  *&v75 = a3;
  *(&v75 + 1) = a4;
  v76 = v49;
  *&v77 = v25;
  *(&v77 + 1) = v50;
  v34 = type metadata accessor for Section<>.HierarchicalTableRowList(0, &v75);
  *(&v40 - 2) = v34;
  *(&v40 - 1) = swift_getWitnessTable(protocol conformance descriptor for Section<A, B, C><>.HierarchicalTableRowList, v34);
  _s7SwiftUI7BindingVySbGMaTm_2(0, &lazy cache variable for type metadata for Attribute<TableRowList>, &type metadata for TableRowList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v72, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11, (&v40 - 8), v34, MEMORY[0x1E69E73E0], v35, MEMORY[0x1E69E7410], v36);
  v37 = v75;
  v38 = PreferencesOutputs.init()();
  v51 = *(&v129 + 1);
  v52 = v130;
  MEMORY[0x1EEE9AC00](v38);
  *(&v40 - 4) = v37;
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  v72[6] = v93;
  v72[7] = v94;
  v72[8] = v95;
  v72[2] = v89;
  v72[3] = v90;
  v72[4] = v91;
  v72[5] = v92;
  v72[0] = v87;
  v72[1] = v88;
  v73 = v96;
  v74 = v47;
  outlined destroy of _TableRowInputs(v72);
  v81 = v117;
  v82 = v118;
  v83 = v119;
  v77 = v113;
  v78 = v114;
  v79 = v115;
  v80 = v116;
  v75 = v111;
  v76 = v112;
  v84 = __PAIR64__(v41, v120);
  return outlined destroy of _TableRowInputs(&v75);
}

uint64_t closure #1 in static Section<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Section(0, a2, a3, a4);
  v6 = *(v5 + 52);
  v12[2] = v5;
  type metadata accessor for Binding<Bool>?(0);
  v8 = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t closure #2 in static Section<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for Section(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #3 in static Section<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Section(0, a2, a3, a4);
  v7 = *(v6 + 44);
  v11[2] = v6;
  v11[3] = a3;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, partial apply for closure #1 in static PointerOffset.of(_:), v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t closure #1 in Section<>.HeaderViewVisitor.visit<A, B>(rowValue:view:children:traits:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  result = AnyView.init<A>(_:)();
  *a3 = result;
  return result;
}

uint64_t Section<>.HierarchicalTableRowList.value.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of TableRowList(Value, v29);
  v17 = AGGraphGetValue();
  outlined init with copy of TableRowList(v17, v27);
  type metadata accessor for Binding<Bool>?(0);
  v18 = AGGraphGetValue();
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;
  v26[5] = a8;
  a9[3] = type metadata accessor for Section<>.HierarchicalGenerator(0, v26);
  a9[4] = &protocol witness table for Section<A, B, C><>.HierarchicalGenerator;
  v22 = swift_allocObject();
  v23 = v29[1];
  *(v22 + 16) = v29[0];
  *(v22 + 32) = v23;
  v24 = v27[1];
  *(v22 + 56) = v27[0];
  *a9 = v22;
  *(v22 + 48) = v30;
  *(v22 + 72) = v24;
  *(v22 + 88) = v28;
  *(v22 + 96) = v19;
  *(v22 + 104) = v20;
  *(v22 + 112) = v21;
  return outlined copy of Binding<Int>?(v19, v20);
}

uint64_t Section<>.HierarchicalGenerator.visitRows<A>(applying:from:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v10 = *(a3 + 48);
  v11 = *(a3 + 24);
  v41 = v10;
  v40 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v33 - v13;
  v14 = *(v5 + 80);
  v15 = *(v5 + 88);
  v16 = *(v5 + 96);
  if (v15 && (v44 = *(v5 + 80), v45 = v15, LOBYTE(v46) = v16 & 1, _s7SwiftUI7BindingVySbGMaTm_2(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](v55), (v55[0] & 1) == 0))
  {
    v56 = &type metadata for EmptyTableRowGenerator;
    v57 = &protocol witness table for EmptyTableRowGenerator;
    if (*a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    outlined init with copy of TableRowList(v5 + 40, v55);
    if (*a2)
    {
LABEL_4:
      v17 = v56;
      v18 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v19 = (v18[1])(a1, a2, v42, a5, v17, v18);
      goto LABEL_10;
    }
  }

  v34 = a5;
  v35 = v12;
  v36 = a1;
  v20 = *(a3 + 16);
  v21 = *(a3 + 56);
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v33 = *(a3 + 32);
  outlined init with copy of TableRowList(v5, v49);
  v22 = v50;
  v23 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v24 = *(v23 + 8);
  v44 = v20;
  v45 = v40;
  v46 = v33;
  v47 = v41;
  v48 = v21;
  v25 = type metadata accessor for Section<>.HeaderViewVisitor(0, &v44);
  v24(&v53, &v52, v25, &protocol witness table for Section<A, B, C><>.HeaderViewVisitor, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v49);
  if (v54)
  {
    v43 = v54;
  }

  else
  {
    ViewTraitCollection.init()();
  }

  v26 = v35;
  v27 = v34;
  v44 = v14;
  v45 = v15;
  LOBYTE(v46) = v16;

  outlined copy of Binding<Int>?(v14, v15);
  ViewTraitCollection.subscript.setter();
  v28 = AssociatedTypeWitness;
  v29 = v38;
  (*(*(AssociatedTypeWitness - 8) + 56))(v38, 1, 1, AssociatedTypeWitness);
  v49[0] = v53;
  outlined init with copy of TableRowList(v55, &v44);
  v30 = *(v27 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v19 = v30(v29, v49, &v44, &v43, v28, MEMORY[0x1E6981910], AssociatedConformanceWitness, MEMORY[0x1E6981900], v42, v27);

  outlined destroy of Binding<Bool>(&v44, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);

  (*(v39 + 8))(v29, v26);

LABEL_10:
  outlined destroy of TableRowList(v55);
  return v19 & 1;
}

uint64_t Section<>.HierarchicalGenerator.count.getter()
{
  v1 = v0;
  outlined init with copy of TableRowList(v0, v8);
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  LOBYTE(v2) = TableRowGenerator.isEmpty.getter(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v2)
  {
    return 1;
  }

  outlined init with copy of TableRowList(v1, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7 = (*(v6 + 16))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v7;
}

uint64_t static Section<>._tableRowCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[7];
  v29 = a1[6];
  v30 = v9;
  v31 = a1[8];
  v32 = *(a1 + 18);
  v10 = a1[3];
  v25 = a1[2];
  v26 = v10;
  v11 = a1[5];
  v27 = a1[4];
  v28 = v11;
  v12 = a1[1];
  v23 = *a1;
  v24 = v12;
  result = (*(a6 + 56))(&v23, a3, a6, a4);
  if ((v14 & 1) == 0)
  {
    v15 = a1[7];
    v29 = a1[6];
    v30 = v15;
    v31 = a1[8];
    v32 = *(a1 + 18);
    v16 = a1[3];
    v25 = a1[2];
    v26 = v16;
    v17 = a1[5];
    v27 = a1[4];
    v28 = v17;
    v18 = a1[1];
    v23 = *a1;
    v24 = v18;
    v19 = result;
    v20 = (*(a5 + 56))(&v23, a2, a5);
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    result = v19 + v22;
    if (__OFADD__(v19, v22))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static Section<>._containsOutlineSymbol(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[7];
  v25 = a1[6];
  v26 = v9;
  v27 = a1[8];
  v28 = *(a1 + 18);
  v10 = a1[3];
  v21 = a1[2];
  v22 = v10;
  v11 = a1[5];
  v23 = a1[4];
  v24 = v11;
  v12 = a1[1];
  v19 = *a1;
  v20 = v12;
  if ((*(a5 + 64))(&v19))
  {
    v13 = 1;
  }

  else
  {
    v14 = a1[7];
    v25 = a1[6];
    v26 = v14;
    v27 = a1[8];
    v28 = *(a1 + 18);
    v15 = a1[3];
    v21 = a1[2];
    v22 = v15;
    v16 = a1[5];
    v23 = a1[4];
    v24 = v16;
    v17 = a1[1];
    v19 = *a1;
    v20 = v17;
    v13 = (*(a6 + 64))(&v19, a3, a6);
  }

  return v13 & 1;
}

uint64_t Section<>.init<A, B>(header:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v29[1] = a3;
  v30 = a2;
  v31 = a8;
  v29[0] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32[0] = a5;
  v32[1] = a6;
  v32[2] = AssociatedConformanceWitness;
  v32[3] = a7;
  v20 = type metadata accessor for TableHeaderRowContent(0, v32);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v29 - v22;
  (*(v15 + 16))(v18, a1, a6, v21);
  v24 = (*(v15 + 32))(v23, v18, a6);
  v30(v24);
  (*(v15 + 8))(a1, a6);
  v26 = type metadata accessor for EmptyTableRowContent(0, a5, AssociatedConformanceWitness, v25);
  return Section.init(header:content:footer:)(v23, v13, v27, v20, v29[0], v26, v31);
}

uint64_t Section<>.init<A, B>(content:header:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v28[0] = a3;
  v28[1] = a2;
  v29 = a1;
  v30 = a7;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31[0] = a5;
  v31[1] = a6;
  v31[2] = AssociatedConformanceWitness;
  v31[3] = a8;
  v19 = type metadata accessor for TableHeaderRowContent(0, v31);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v28 - v21;
  (v28[0])(v20);
  v23 = (*(v14 + 32))(v22, v17, a6);
  v29(v23);
  v25 = type metadata accessor for EmptyTableRowContent(0, a5, AssociatedConformanceWitness, v24);
  return Section.init(header:content:footer:)(v22, v12, v26, v19, a4, v25, v30);
}

uint64_t Section<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = Text.init(_:tableName:bundle:comment:)();
  *(&v24 + 1) = v12;
  v25 = v13 & 1;
  v26 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = MEMORY[0x1E6981148];
  v17 = (*(*(MEMORY[0x1E6981148] - 8) + 32))(&v27, &v24, MEMORY[0x1E6981148]);
  v24 = v27;
  v25 = v28;
  v26 = v29;
  a2(v17);
  v23[0] = a4;
  v23[1] = v16;
  v23[2] = AssociatedConformanceWitness;
  v23[3] = MEMORY[0x1E6981138];
  v18 = type metadata accessor for TableHeaderRowContent(0, v23);
  v20 = type metadata accessor for EmptyTableRowContent(0, a4, AssociatedConformanceWitness, v19);
  return Section.init(header:content:footer:)(&v24, v11, v21, v18, a3, v20, a5);
}

uint64_t Section<>.init<A, B>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a8@<X8>)
{
  v31 = a2;
  v32 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v15 + 16))(&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19, v17);
  *&v34 = Text.init<A>(_:)();
  *(&v34 + 1) = v20;
  v35 = v21 & 1;
  v36 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = MEMORY[0x1E6981148];
  v25 = (*(*(MEMORY[0x1E6981148] - 8) + 32))(&v37, &v34, MEMORY[0x1E6981148]);
  v34 = v37;
  v35 = v38;
  v36 = v39;
  v31(v25);
  (*(v15 + 8))(a1, a5);
  v33[0] = a4;
  v33[1] = v24;
  v33[2] = AssociatedConformanceWitness;
  v33[3] = MEMORY[0x1E6981138];
  v26 = type metadata accessor for TableHeaderRowContent(0, v33);
  v28 = type metadata accessor for EmptyTableRowContent(0, a4, AssociatedConformanceWitness, v27);
  return Section.init(header:content:footer:)(&v34, v13, v29, v26, a3, v28, v32);
}

uint64_t Section<>.init<A>(content:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a1();
  v12 = type metadata accessor for EmptyTableRowContent(0, a3, AssociatedConformanceWitness, v11);
  return Section.init(header:content:footer:)(v12, v9, v13, v12, a2, v12, a4);
}

uint64_t Section<>.init<A, B>(isExpanded:content:header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26[1] = a6;
  v27 = a5;
  v30 = a3;
  v28 = a1;
  v29 = a2;
  v15 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a11);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31[0] = a9;
  v31[1] = a10;
  v31[2] = AssociatedConformanceWitness;
  v31[3] = a12;
  v19 = type metadata accessor for TableHeaderRowContent(255, v31);
  v21 = type metadata accessor for EmptyTableRowContent(255, a9, AssociatedConformanceWitness, v20);
  v22 = a8 + *(type metadata accessor for Section(0, v19, a7, v21) + 52);
  v23 = a4();
  v27(v23);
  result = (*(v15 + 32))(a8, v17, a10);
  v25 = v29;
  *v22 = v28;
  *(v22 + 8) = v25;
  *(v22 + 16) = v30;
  return result;
}

uint64_t Section<>.init<A>(_:isExpanded:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  Section<>.init<A, B>(isExpanded:content:header:)(a5, a6, a7, a8, partial apply for closure #1 in Section<>.init<A>(_:isExpanded:content:), v14, a11, a9, a12, MEMORY[0x1E6981148], a13, MEMORY[0x1E6981138]);
}

uint64_t Section<>.init<A, B>(_:isExpanded:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a6;
  v15 = a7;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = a1;
  Section<>.init<A, B>(isExpanded:content:header:)(a2, a3, a4, a5, partial apply for closure #1 in Section<>.init<A, B>(_:isExpanded:content:), v13, a6, a8, a7, MEMORY[0x1E6981148], a10, MEMORY[0x1E6981138]);
  return (*(*(a9 - 8) + 8))(a1, a9);
}

uint64_t closure #1 in Section<>.init<A, B>(_:isExpanded:content:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
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

uint64_t static EmptyTableRowContent._makeRows(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 136);
  v4 = *(a2 + 144);
  PreferencesOutputs.init()();
  v8 = &type metadata for EmptyTableRowGenerator;
  v9 = &protocol witness table for EmptyTableRowGenerator;
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of TableRowList(&v6);
  v6 = v3;
  v7 = v4;
  return PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t closure #1 in TableHeaderRowContent.tableRowBody.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

unint64_t lazy protocol witness table accessor for type SectionHeaderTrait and conformance SectionHeaderTrait()
{
  result = lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait;
  if (!lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F4B0], MEMORY[0x1E697F4C0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DepthTrait and conformance DepthTrait()
{
  result = lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait;
  if (!lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DA38], MEMORY[0x1E697DA48], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for EmptyTableRowContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for EmptyTableRowContent<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized Section<>.HeaderViewVisitor.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = *a3;
  v14[1] = *(a4 + 16);
  v15 = *(a4 + 32);
  v16 = a5;
  v17 = a6;
  v18 = *(a4 + 40);
  v19 = *(a4 + 56);
  v20 = a7;
  v21 = a8;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Section<>.HeaderViewVisitor.visit<A, B>(rowValue:view:children:traits:), v14, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v11, &v22);
  v12 = v22;

  *v9 = v12;

  v9[1] = v10;
  return 0;
}

double destroy for Section<>.HierarchicalGenerator(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(a1 + 5);
  if (a1[11])
  {
  }

  return result;
}

uint64_t initializeWithCopy for Section<>.HierarchicalGenerator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  v6 = *(a2 + 88);
  if (v6)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v6;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  return a1;
}

uint64_t assignWithCopy for Section<>.HierarchicalGenerator(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1((a1 + 40), (a2 + 40));
  v4 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (v4)
    {
      *(a1 + 80) = *(a2 + 80);

      *(a1 + 88) = *(a2 + 88);

      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1 + 80, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v5 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  return a1;
}

uint64_t assignWithTake for Section<>.HierarchicalGenerator(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  if (!*(a1 + 88))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 88);
  if (!v5)
  {
    outlined destroy of Binding<Bool>(a1 + 80, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
LABEL_5:
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    return a1;
  }

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = v5;

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for Section<>.HierarchicalGenerator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Section<>.HierarchicalGenerator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Section<>.HeaderViewVisitor(void *a1)
{
}

uint64_t *initializeBufferWithCopyOfBuffer for Section<>.HeaderViewVisitor(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for Section<>.HeaderViewVisitor(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for Section<>.HeaderViewVisitor(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t SystemSegmentItem.accessibilityIdentifier.getter()
{
  outlined init with copy of PlatformItemList.Item.Accessibility?(v0 + 536, v7);
  if (!v8)
  {
    outlined destroy of PlatformItemList.Item.Accessibility?(v7, type metadata accessor for PlatformItemList.Item.Accessibility?);
    return 0;
  }

  outlined init with copy of AccessibilityProperties(v7, v5);
  outlined destroy of PlatformItemList.Item.Accessibility(v7);
  v1 = v5[0];
  v2 = v5[1];
  v3 = v6;

  outlined destroy of AccessibilityProperties(v5);
  if (!v2)
  {
    return 0;
  }

  if (v3 >= 2)
  {

    return 0;
  }

  return v1;
}

uint64_t SystemSegmentItem.accessibilityHint.getter()
{
  outlined init with copy of PlatformItemList.Item.Accessibility?(v0 + 536, v9);
  if (v10)
  {
    AccessibilityProperties.hints.getter();
    v7 = v11;
    v8 = v12;
    v5 = 0;
    v6 = 0;

    MEMORY[0x18D005BE0](&v4, v1);
    v2 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();

    outlined destroy of PlatformItemList.Item.Accessibility(v9);
  }

  else
  {
    outlined destroy of PlatformItemList.Item.Accessibility?(v9, type metadata accessor for PlatformItemList.Item.Accessibility?);
    return 0;
  }

  return v2;
}

char *initializeBufferWithCopyOfBuffer for SystemSegmentItem(char *a1, char **a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = &v6[(v5 + 16) & ~v5];
    goto LABEL_58;
  }

  v8 = a2[1];
  v7 = a2[2];
  *(a1 + 1) = v8;
  *(a1 + 2) = v7;
  *(a1 + 3) = a2[3];
  a1[32] = *(a2 + 32);
  v9 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v9;
  a1[56] = *(a2 + 56);
  v10 = a2[24];
  v11 = v6;
  v12 = v8;

  if (v10 >> 1 != 4294967294)
  {
    v22 = *(a2 + 72);
    if (v22 == 255)
    {
      *(a1 + 8) = a2[8];
      a1[72] = *(a2 + 72);
    }

    else
    {
      v23 = a2[8];
      outlined copy of GraphicsImage.Contents(v23, *(a2 + 72));
      *(a1 + 8) = v23;
      a1[72] = v22;
      v10 = a2[24];
    }

    *(a1 + 10) = a2[10];
    *(a1 + 88) = *(a2 + 11);
    a1[104] = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    a1[170] = *(a2 + 170);
    a1[171] = *(a2 + 171);
    if (v10 >> 1 == 0xFFFFFFFF)
    {
      v24 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v24;
    }

    else
    {
      v25 = a2[22];
      v26 = a2[23];
      v27 = a2[25];
      outlined copy of AccessibilityImageLabel(v25, v26, v10, v27);
      *(a1 + 22) = v25;
      *(a1 + 23) = v26;
      *(a1 + 24) = v10;
      *(a1 + 25) = v27;
    }

    v28 = a2[27];
    *(a1 + 26) = a2[26];
    *(a1 + 27) = v28;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    a1[232] = *(a2 + 232);
    v29 = a2[30];
    *(a1 + 30) = v29;
    *(a1 + 124) = *(a2 + 124);
    a1[250] = *(a2 + 250);
    swift_unknownObjectRetain();

    v30 = v29;
    v18 = a2[33];
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_15:
    v31 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v31;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_16;
  }

  v13 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v13;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v14 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v14;
  v15 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v15;
  v16 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v16;
  v17 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v17;
  v18 = a2[33];
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_4:
  *(a1 + 32) = a2[32];
  *(a1 + 33) = v18;
  v19 = a2[34];

  if (v19 >= 2)
  {
    v20 = v19;
  }

  *(a1 + 34) = v19;
  *(a1 + 70) = *(a2 + 70);
  a1[284] = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v21 = a2[37];
  *(a1 + 36) = a2[36];
  *(a1 + 37) = v21;

LABEL_16:
  v32 = a2[42];
  v105 = v4;
  if (v32 >> 2 == 0xFFFFFFFF)
  {
    v33 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v33;
    *(a1 + 50) = a2[50];
    v34 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v34;
    v35 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v35;
  }

  else
  {
    v36 = a2[38];
    v37 = a2[39];
    v38 = a2[40];
    v39 = a2[41];
    v40 = a2[43];
    v41 = a2[44];
    v42 = a2[45];
    v95 = a2[46];
    v96 = a2[47];
    v98 = a2[48];
    v100 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v36, v37, v38, v39, v32, v40, v41, v42, v95, v96, v98, v100, __dsta);
    *(a1 + 38) = v36;
    *(a1 + 39) = v37;
    *(a1 + 40) = v38;
    *(a1 + 41) = v39;
    *(a1 + 42) = v32;
    *(a1 + 43) = v40;
    *(a1 + 44) = v41;
    *(a1 + 45) = v42;
    *(a1 + 46) = v95;
    *(a1 + 47) = v96;
    *(a1 + 48) = v98;
    *(a1 + 49) = v100;
    v4 = v105;
    *(a1 + 50) = __dsta;
  }

  v43 = a2[52];
  if (v43 == 1)
  {
    v44 = *(a2 + 57);
    *(a1 + 440) = *(a2 + 55);
    *(a1 + 456) = v44;
    a1[472] = *(a2 + 472);
    v45 = *(a2 + 53);
    *(a1 + 408) = *(a2 + 51);
    *(a1 + 424) = v45;
    goto LABEL_29;
  }

  *(a1 + 102) = *(a2 + 102);
  a1[412] = *(a2 + 412);
  if (v43)
  {
    v46 = a2[53];
    *(a1 + 52) = v43;
    *(a1 + 53) = v46;

    v47 = a2[54];
    if (v47)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(a1 + 27) = *(a2 + 27);
    v49 = a2[56];
    if (v49)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_28;
  }

  *(a1 + 26) = *(a2 + 26);
  v47 = a2[54];
  if (!v47)
  {
    goto LABEL_26;
  }

LABEL_23:
  v48 = a2[55];
  *(a1 + 54) = v47;
  *(a1 + 55) = v48;

  v49 = a2[56];
  if (!v49)
  {
    goto LABEL_27;
  }

LABEL_24:
  v50 = a2[57];
  *(a1 + 56) = v49;
  *(a1 + 57) = v50;

LABEL_28:
  *(a1 + 58) = a2[58];
  a1[472] = *(a2 + 472);
LABEL_29:
  v51 = a2[61];
  *(a1 + 60) = a2[60];
  *(a1 + 61) = v51;
  *(a1 + 62) = a2[62];
  a1[504] = *(a2 + 504);
  v52 = a2[64];

  if (v52)
  {
    v53 = a2[65];
    *(a1 + 64) = v52;
    *(a1 + 65) = v53;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  a1[528] = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 536, a2 + 67, 0x130uLL);
    goto LABEL_44;
  }

  *(a1 + 67) = a2[67];
  *(a1 + 68) = a2[68];
  a1[552] = *(a2 + 552);
  *(a1 + 70) = a2[70];
  a1[568] = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  a1[592] = *(a2 + 592);
  v54 = a1 + 600;
  v55 = a2 + 75;
  v56 = a2[78];

  if (!v56)
  {
    v58 = *(a2 + 77);
    *v54 = *v55;
    *(a1 + 616) = v58;
    *(a1 + 79) = a2[79];
LABEL_39:
    *(a1 + 80) = a2[80];

    goto LABEL_40;
  }

  if (v56 != 1)
  {
    *(a1 + 78) = v56;
    *(a1 + 79) = a2[79];
    (**(v56 - 1))(a1 + 600, a2 + 75, v56);
    goto LABEL_39;
  }

  v57 = *(a2 + 77);
  *v54 = *v55;
  *(a1 + 616) = v57;
  *(a1 + 632) = *(a2 + 79);
LABEL_40:
  *(a1 + 81) = a2[81];
  a1[656] = *(a2 + 656);
  v59 = a1 + 664;
  v60 = a2 + 83;
  v61 = a2[97];
  if (v61 == 1)
  {
    v62 = *(a2 + 97);
    *(a1 + 760) = *(a2 + 95);
    *(a1 + 776) = v62;
    *(a1 + 792) = *(a2 + 99);
    a1[808] = *(a2 + 808);
    v63 = *(a2 + 89);
    *(a1 + 696) = *(a2 + 87);
    *(a1 + 712) = v63;
    v64 = *(a2 + 93);
    *(a1 + 728) = *(a2 + 91);
    *(a1 + 744) = v64;
    v65 = *(a2 + 85);
    *v59 = *v60;
    *(a1 + 680) = v65;
  }

  else
  {
    *v59 = *v60;
    a1[672] = *(a2 + 672);
    *(a1 + 85) = a2[85];
    a1[688] = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    a1[691] = *(a2 + 691);
    a1[692] = *(a2 + 692);
    *(a1 + 87) = a2[87];
    v66 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v66;
    *(a1 + 92) = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    a1[768] = *(a2 + 768);
    *(a1 + 97) = v61;
    *(a1 + 49) = *(a2 + 49);
    *(a1 + 100) = a2[100];
    a1[808] = *(a2 + 808);
  }

  *(a1 + 102) = a2[102];
  *(a1 + 103) = a2[103];
  *(a1 + 104) = a2[104];

LABEL_44:
  v67 = a1 + 840;
  v68 = a2 + 105;
  v69 = a2[108];
  if (!v69)
  {
    v71 = *(a2 + 107);
    *v67 = *v68;
    *(a1 + 856) = v71;
    *(a1 + 109) = a2[109];
    v72 = a2[110];
    if (!v72)
    {
LABEL_50:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_51;
    }

LABEL_48:
    v73 = a2[111];
    *(a1 + 110) = v72;
    *(a1 + 111) = v73;

    goto LABEL_51;
  }

  if (v69 != 1)
  {
    *(a1 + 108) = v69;
    *(a1 + 109) = a2[109];
    (**(v69 - 1))(v67, v68);
    v72 = a2[110];
    if (!v72)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v70 = *(a2 + 107);
  *v67 = *v68;
  *(a1 + 856) = v70;
  *(a1 + 872) = *(a2 + 109);
  *(a1 + 111) = a2[111];
LABEL_51:
  v74 = a2[112];
  *(a1 + 112) = v74;
  *(a1 + 113) = a2[113];
  *(a1 + 114) = a2[114];
  *(a1 + 115) = a2[115];
  *(a1 + 116) = a2[116];
  *(a1 + 117) = a2[117];
  *(a1 + 118) = a2[118];
  *(a1 + 476) = *(a2 + 476);
  a1[954] = *(a2 + 954);
  v75 = *(v4 + 112);
  __dst = &a1[v75];
  v76 = a2 + v75;
  v77 = type metadata accessor for CommandOperation(0);
  v99 = *(v77 - 8);
  v101 = *(v99 + 48);
  v78 = v74;

  if (v101(v76, 1, v77))
  {
    type metadata accessor for CommandOperation?(0);
    memcpy(__dst, v76, *(*(v79 - 8) + 64));
    v80 = v105;
  }

  else
  {
    *__dst = *v76;
    v81 = *(v77 + 20);
    v82 = &__dst[v81];
    v83 = &v76[v81];
    v102 = v76;
    v84 = v77;
    v85 = *v83;
    v86 = *(v83 + 1);
    v87 = v83[16];
    outlined copy of Text.Storage(*v83, v86, v87);
    *v82 = v85;
    *(v82 + 1) = v86;
    v82[16] = v87;
    *(v82 + 3) = *(v83 + 3);
    v88 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v89 = type metadata accessor for UUID();
    v97 = *(*(v89 - 8) + 16);

    v97(&v82[v88], &v83[v88], v89);
    v90 = *(v84 + 24);
    v91 = &__dst[v90];
    v92 = &v102[v90];
    if (*v92)
    {
      v93 = v92[1];
      *v91 = *v92;
      *(v91 + 1) = v93;
    }

    else
    {
      *v91 = *v92;
    }

    v80 = v105;
    (*(v99 + 56))(__dst, 0, 1, v84);
  }

  a1[v80[29]] = *(a2 + v80[29]);
  a1[v80[30]] = *(a2 + v80[30]);
  a1[v80[31]] = *(a2 + v80[31]);
  a1[v80[32]] = *(a2 + v80[32]);
  a1[v80[33]] = *(a2 + v80[33]);
  *&a1[v80[34]] = *(a2 + v80[34]);
LABEL_58:

  return a1;
}

void type metadata accessor for CommandOperation?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CommandOperation?)
  {
    type metadata accessor for CommandOperation(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CommandOperation?);
    }
  }
}

double destroy for SystemSegmentItem(uint64_t a1)
{

  v2 = *(a1 + 192);
  v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v4 = *(a1 + 72);
    if (v4 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 64), v4);
      v2 = *(a1 + 192);
      v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v3 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v2, *(a1 + 200));
    }

    swift_unknownObjectRelease();
  }

  if (*(a1 + 264))
  {

    v5 = *(a1 + 272);
    if (v5 >= 2)
    {
    }
  }

  v6 = *(a1 + 336);
  if (v6 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v6, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
  }

  v7 = *(a1 + 416);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_20;
    }
  }

  if (*(a1 + 432))
  {
  }

  if (*(a1 + 448))
  {
  }

LABEL_20:

  if (*(a1 + 512))
  {
  }

  if (*(a1 + 816))
  {

    v8 = *(a1 + 624);
    if (v8)
    {
      if (v8 == 1)
      {
LABEL_27:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_30;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 600));
    }

    goto LABEL_27;
  }

LABEL_30:
  v9 = *(a1 + 864);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 840));
  }

  if (*(a1 + 880))
  {
  }

LABEL_35:

  v10 = a1 + *(type metadata accessor for PlatformItemList.Item(0) + 112);
  v11 = type metadata accessor for CommandOperation(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = v10 + *(v11 + 20);
    outlined consume of Text.Storage(*v12, *(v12 + 8), *(v12 + 16));

    v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
    if (*(v10 + *(v11 + 24)))
    {
    }
  }

  return result;
}

uint64_t initializeWithCopy for SystemSegmentItem(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  *(a1 + 56) = *(a2 + 56);
  v8 = *(a2 + 192);
  v9 = v4;
  v10 = v5;

  if (v8 >> 1 != 4294967294)
  {
    v20 = *(a2 + 72);
    if (v20 == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v21 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v21, *(a2 + 72));
      *(a1 + 64) = v21;
      *(a1 + 72) = v20;
      v8 = *(a2 + 192);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v8 >> 1 == 0xFFFFFFFF)
    {
      v22 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v22;
    }

    else
    {
      v23 = *(a2 + 176);
      v24 = *(a2 + 184);
      v25 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v23, v24, v8, v25);
      *(a1 + 176) = v23;
      *(a1 + 184) = v24;
      *(a1 + 192) = v8;
      *(a1 + 200) = v25;
    }

    v26 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v26;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v27 = *(a2 + 240);
    *(a1 + 240) = v27;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v28 = v27;
    v16 = *(a2 + 264);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_13:
    v29 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v29;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_14;
  }

  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v12 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v12;
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v14;
  v15 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v15;
  v16 = *(a2 + 264);
  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_3:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v16;
  v17 = *(a2 + 272);

  if (v17 >= 2)
  {
    v18 = v17;
  }

  *(a1 + 272) = v17;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v19 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v19;

LABEL_14:
  v30 = *(a2 + 336);
  if (v30 >> 2 == 0xFFFFFFFF)
  {
    v31 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v31;
    *(a1 + 400) = *(a2 + 400);
    v32 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v32;
    v33 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v33;
  }

  else
  {
    v34 = *(a2 + 304);
    v35 = *(a2 + 312);
    v36 = *(a2 + 320);
    v37 = *(a2 + 328);
    v38 = *(a2 + 344);
    v39 = *(a2 + 352);
    v40 = *(a2 + 360);
    v93 = *(a2 + 368);
    v95 = *(a2 + 376);
    v97 = *(a2 + 384);
    v100 = *(a2 + 392);
    __dsta = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v34, v35, v36, v37, v30, v38, v39, v40, v93, v95, v97, v100, __dsta);
    *(a1 + 304) = v34;
    *(a1 + 312) = v35;
    *(a1 + 320) = v36;
    *(a1 + 328) = v37;
    *(a1 + 336) = v30;
    *(a1 + 344) = v38;
    *(a1 + 352) = v39;
    *(a1 + 360) = v40;
    *(a1 + 368) = v93;
    *(a1 + 376) = v95;
    *(a1 + 384) = v97;
    *(a1 + 392) = v100;
    *(a1 + 400) = __dsta;
  }

  v41 = *(a2 + 416);
  if (v41 == 1)
  {
    v42 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v42;
    *(a1 + 472) = *(a2 + 472);
    v43 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v43;
    goto LABEL_27;
  }

  *(a1 + 408) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  if (v41)
  {
    v44 = *(a2 + 424);
    *(a1 + 416) = v41;
    *(a1 + 424) = v44;

    v45 = *(a2 + 432);
    if (v45)
    {
      goto LABEL_21;
    }

LABEL_24:
    *(a1 + 432) = *(a2 + 432);
    v47 = *(a2 + 448);
    if (v47)
    {
      goto LABEL_22;
    }

LABEL_25:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_26;
  }

  *(a1 + 416) = *(a2 + 416);
  v45 = *(a2 + 432);
  if (!v45)
  {
    goto LABEL_24;
  }

LABEL_21:
  v46 = *(a2 + 440);
  *(a1 + 432) = v45;
  *(a1 + 440) = v46;

  v47 = *(a2 + 448);
  if (!v47)
  {
    goto LABEL_25;
  }

LABEL_22:
  v48 = *(a2 + 456);
  *(a1 + 448) = v47;
  *(a1 + 456) = v48;

LABEL_26:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_27:
  v49 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v49;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v50 = *(a2 + 512);

  if (v50)
  {
    v51 = *(a2 + 520);
    *(a1 + 512) = v50;
    *(a1 + 520) = v51;
  }

  else
  {
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!*(a2 + 816))
  {
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_42;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v52 = (a1 + 600);
  v53 = (a2 + 600);
  v54 = *(a2 + 624);

  if (!v54)
  {
    v56 = *(a2 + 616);
    *v52 = *v53;
    *(a1 + 616) = v56;
    *(a1 + 632) = *(a2 + 632);
LABEL_37:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_38;
  }

  if (v54 != 1)
  {
    *(a1 + 624) = v54;
    *(a1 + 632) = *(a2 + 632);
    (**(v54 - 8))(a1 + 600, a2 + 600, v54);
    goto LABEL_37;
  }

  v55 = *(a2 + 616);
  *v52 = *v53;
  *(a1 + 616) = v55;
  *(a1 + 632) = *(a2 + 632);
LABEL_38:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v57 = (a1 + 664);
  v58 = (a2 + 664);
  v59 = *(a2 + 776);
  if (v59 == 1)
  {
    v60 = *(a2 + 776);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 776) = v60;
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    v61 = *(a2 + 712);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 712) = v61;
    v62 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v62;
    v63 = *(a2 + 680);
    *v57 = *v58;
    *(a1 + 680) = v63;
  }

  else
  {
    *v57 = *v58;
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 680) = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    v64 = *(a2 + 720);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 720) = v64;
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = v59;
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_42:
  v65 = (a1 + 840);
  v66 = (a2 + 840);
  v67 = *(a2 + 864);
  if (v67)
  {
    if (v67 == 1)
    {
      v68 = *(a2 + 856);
      *v65 = *v66;
      *(a1 + 856) = v68;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 888) = *(a2 + 888);
      goto LABEL_49;
    }

    *(a1 + 864) = v67;
    *(a1 + 872) = *(a2 + 872);
    (**(v67 - 8))(v65, v66);
    v70 = *(a2 + 880);
    if (!v70)
    {
      goto LABEL_48;
    }

LABEL_46:
    v71 = *(a2 + 888);
    *(a1 + 880) = v70;
    *(a1 + 888) = v71;

    goto LABEL_49;
  }

  v69 = *(a2 + 856);
  *v65 = *v66;
  *(a1 + 856) = v69;
  *(a1 + 872) = *(a2 + 872);
  v70 = *(a2 + 880);
  if (v70)
  {
    goto LABEL_46;
  }

LABEL_48:
  *(a1 + 880) = *(a2 + 880);
LABEL_49:
  v72 = *(a2 + 896);
  *(a1 + 896) = v72;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 954) = *(a2 + 954);
  v73 = type metadata accessor for PlatformItemList.Item(0);
  v74 = v73[28];
  __dst = (a1 + v74);
  v75 = (a2 + v74);
  v76 = type metadata accessor for CommandOperation(0);
  v96 = *(v76 - 8);
  v98 = *(v96 + 48);
  v77 = v72;

  if (v98(v75, 1, v76))
  {
    type metadata accessor for CommandOperation?(0);
    memcpy(__dst, v75, *(*(v78 - 8) + 64));
  }

  else
  {
    *__dst = *v75;
    v79 = *(v76 + 20);
    v80 = v75;
    v94 = v75;
    v81 = &__dst[v79];
    v82 = &v80[v79];
    v101 = v76;
    v83 = *&v80[v79];
    v84 = *&v80[v79 + 8];
    v85 = v80[v79 + 16];
    outlined copy of Text.Storage(v83, v84, v85);
    *v81 = v83;
    *(v81 + 1) = v84;
    v81[16] = v85;
    *(v81 + 3) = *(v82 + 3);
    v86 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v87 = type metadata accessor for UUID();
    v99 = *(*(v87 - 8) + 16);

    v99(&v81[v86], &v82[v86], v87);
    v88 = *(v101 + 24);
    v89 = &__dst[v88];
    v90 = &v94[v88];
    if (*v90)
    {
      v91 = v90[1];
      *v89 = *v90;
      v89[1] = v91;
    }

    else
    {
      *v89 = *v90;
    }

    (*(v96 + 56))(__dst, 0, 1, v101);
  }

  *(a1 + v73[29]) = *(a2 + v73[29]);
  *(a1 + v73[30]) = *(a2 + v73[30]);
  *(a1 + v73[31]) = *(a2 + v73[31]);
  *(a1 + v73[32]) = *(a2 + v73[32]);
  *(a1 + v73[33]) = *(a2 + v73[33]);
  *(a1 + v73[34]) = *(a2 + v73[34]);

  return a1;
}

uint64_t assignWithCopy for SystemSegmentItem(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 286;
  v5 = *a1;
  v6 = *a2;
  *a1 = *a2;
  v7 = v6;

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  *(a1 + 8) = v9;
  v10 = v9;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 192) >> 1 == 4294967294)
  {
    if (v11 == 0x1FFFFFFFCLL)
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      v14 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v14;
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
      v15 = *(a2 + 128);
      v16 = *(a2 + 144);
      v17 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v17;
      *(a1 + 128) = v15;
      *(a1 + 144) = v16;
      v18 = *(a2 + 192);
      v19 = *(a2 + 208);
      v20 = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v19;
      *(a1 + 224) = v20;
      *(a1 + 192) = v18;
    }

    else
    {
      v30 = *(a2 + 72);
      if (v30 == 255)
      {
        v36 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v36;
      }

      else
      {
        v31 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v31, *(a2 + 72));
        *(a1 + 64) = v31;
        *(a1 + 72) = v30;
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      v37 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v37;
      v38 = *(a2 + 136);
      v39 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v39;
      *(a1 + 136) = v38;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v40 = *(a2 + 192);
      if (v40 >> 1 == 0xFFFFFFFF)
      {
        v41 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v41;
      }

      else
      {
        v42 = *(a2 + 176);
        v43 = *(a2 + 184);
        v44 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v42, v43, *(a2 + 192), v44);
        *(a1 + 176) = v42;
        *(a1 + 184) = v43;
        *(a1 + 192) = v40;
        *(a1 + 200) = v44;
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v45 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v45;
      v46 = *(a2 + 240);
      *(a1 + 240) = v46;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v47 = v46;
    }
  }

  else if (v11 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    v21 = *(a2 + 112);
    v23 = *(a2 + 64);
    v22 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v21;
    *(a1 + 64) = v23;
    *(a1 + 80) = v22;
    v24 = *(a2 + 176);
    v26 = *(a2 + 128);
    v25 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v24;
    *(a1 + 128) = v26;
    *(a1 + 144) = v25;
    v28 = *(a2 + 208);
    v27 = *(a2 + 224);
    v29 = *(a2 + 192);
    *(a1 + 235) = *(a2 + 235);
    *(a1 + 208) = v28;
    *(a1 + 224) = v27;
    *(a1 + 192) = v29;
  }

  else
  {
    v32 = *(a2 + 72);
    if (*(a1 + 72) == 255)
    {
      if (v32 == 255)
      {
        v50 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v50;
      }

      else
      {
        v48 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v48, *(a2 + 72));
        *(a1 + 64) = v48;
        *(a1 + 72) = v32;
      }
    }

    else if (v32 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 64);
      v49 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v49;
    }

    else
    {
      v33 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v33, *(a2 + 72));
      v34 = *(a1 + 64);
      *(a1 + 64) = v33;
      v35 = *(a1 + 72);
      *(a1 + 72) = v32;
      outlined consume of GraphicsImage.Contents(v34, v35);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v51 = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 108) = v51;
    v52 = *(a2 + 136);
    v53 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v53;
    *(a1 + 136) = v52;
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    v54 = *(a2 + 192);
    v55 = v54 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
    {
      if (v55 == 0x1FFFFFFFELL)
      {
        v56 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v56;
      }

      else
      {
        v58 = *(a2 + 176);
        v59 = *(a2 + 184);
        v60 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v58, v59, *(a2 + 192), v60);
        *(a1 + 176) = v58;
        *(a1 + 184) = v59;
        *(a1 + 192) = v54;
        *(a1 + 200) = v60;
      }
    }

    else if (v55 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 176);
      v57 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v57;
    }

    else
    {
      v61 = *(a2 + 176);
      v62 = *(a2 + 184);
      v63 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v61, v62, *(a2 + 192), v63);
      v64 = *(a1 + 176);
      v65 = *(a1 + 184);
      v66 = *(a1 + 192);
      v67 = *(a1 + 200);
      *(a1 + 176) = v61;
      *(a1 + 184) = v62;
      *(a1 + 192) = v54;
      *(a1 + 200) = v63;
      outlined consume of AccessibilityImageLabel(v64, v65, v66, v67);
    }

    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    v68 = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 228) = v68;
    v69 = *(a1 + 240);
    v70 = *(a2 + 240);
    *(a1 + 240) = v70;
    v71 = v70;

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
  }

  v72 = *(a2 + 264);
  if (*(a1 + 264))
  {
    if (!v72)
    {
      outlined destroy of Image.NamedResolved(a1 + 256);
      v80 = *(a2 + 272);
      v79 = *(a2 + 288);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v80;
      *(a1 + 288) = v79;
      goto LABEL_44;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);

    v73 = *(a1 + 272);
    v74 = *(a2 + 272);
    if (v73 >= 2)
    {
      if (v74 >= 2)
      {
        *(a1 + 272) = v74;
        v83 = v74;

        goto LABEL_43;
      }

      v74 = *(a2 + 272);
    }

    else if (v74 >= 2)
    {
      *(a1 + 272) = v74;
      v75 = v74;
LABEL_43:
      v84 = *(a2 + 280);
      *(a1 + 284) = *(a2 + 284);
      *(a1 + 280) = v84;
      *(a1 + 285) = *(a2 + 285);
      *(a1 + 286) = *v4;
      *(a1 + 288) = *(a2 + 288);

      *(a1 + 296) = *(a2 + 296);

      goto LABEL_44;
    }

    *(a1 + 272) = v74;
    goto LABEL_43;
  }

  if (v72)
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    v76 = *(a2 + 272);

    if (v76 >= 2)
    {
      v77 = v76;
    }

    *(a1 + 272) = v76;
    v78 = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 280) = v78;
    *(a1 + 285) = *(a2 + 285);
    *(a1 + 286) = *(a2 + 286);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
  }

  else
  {
    v81 = *(a2 + 256);
    v82 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v82;
    *(a1 + 256) = v81;
  }

LABEL_44:
  v85 = *(a2 + 336);
  v86 = v85 & 0xFFFFFFFFFFFFFFFCLL;
  if (*(a1 + 336) >> 2 == 0xFFFFFFFFLL)
  {
    if (v86 == 0x3FFFFFFFCLL)
    {
      v87 = *(a2 + 304);
      v88 = *(a2 + 336);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 336) = v88;
      *(a1 + 304) = v87;
      v89 = *(a2 + 352);
      v90 = *(a2 + 368);
      v91 = *(a2 + 384);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 368) = v90;
      *(a1 + 384) = v91;
      *(a1 + 352) = v89;
    }

    else
    {
      v97 = *(a2 + 304);
      v98 = *(a2 + 312);
      v282 = v4;
      v99 = *(a2 + 320);
      v100 = *(a2 + 328);
      v101 = *(a2 + 344);
      v102 = *(a2 + 352);
      v103 = *(a2 + 360);
      v270 = *(a2 + 368);
      v272 = *(a2 + 376);
      v274 = *(a2 + 384);
      v276 = *(a2 + 392);
      v279 = *(a2 + 400);
      outlined copy of PlatformItemList.Item.SystemItem(v97, v98, v99, v100, v85, v101, v102, v103, v270, v272, v274, v276, v279);
      *(a1 + 304) = v97;
      *(a1 + 312) = v98;
      *(a1 + 320) = v99;
      *(a1 + 328) = v100;
      *(a1 + 336) = v85;
      *(a1 + 344) = v101;
      *(a1 + 352) = v102;
      *(a1 + 360) = v103;
      *(a1 + 368) = v270;
      *(a1 + 376) = v272;
      *(a1 + 384) = v274;
      *(a1 + 392) = v276;
      v4 = v282;
      *(a1 + 400) = v279;
    }
  }

  else if (v86 == 0x3FFFFFFFCLL)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    v93 = *(a2 + 320);
    v92 = *(a2 + 336);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v93;
    *(a1 + 336) = v92;
    v95 = *(a2 + 368);
    v94 = *(a2 + 384);
    v96 = *(a2 + 352);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 368) = v95;
    *(a1 + 384) = v94;
    *(a1 + 352) = v96;
  }

  else
  {
    v104 = *(a2 + 304);
    v105 = *(a2 + 312);
    v283 = v4;
    v106 = *(a2 + 320);
    v107 = *(a2 + 328);
    v108 = *(a2 + 344);
    v109 = *(a2 + 352);
    v110 = *(a2 + 360);
    v271 = *(a2 + 368);
    v273 = *(a2 + 376);
    v275 = *(a2 + 384);
    v277 = *(a2 + 392);
    v280 = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v104, v105, v106, v107, v85, v108, v109, v110, v271, v273, v275, v277, v280);
    v111 = *(a1 + 304);
    v112 = *(a1 + 312);
    v113 = *(a1 + 320);
    v114 = *(a1 + 328);
    v115 = *(a1 + 336);
    v116 = *(a1 + 344);
    v117 = *(a1 + 352);
    v118 = *(a1 + 360);
    v119 = *(a1 + 368);
    v120 = *(a1 + 384);
    v121 = *(a1 + 400);
    *(a1 + 304) = v104;
    *(a1 + 312) = v105;
    *(a1 + 320) = v106;
    *(a1 + 328) = v107;
    *(a1 + 336) = v85;
    *(a1 + 344) = v108;
    *(a1 + 352) = v109;
    *(a1 + 360) = v110;
    *(a1 + 368) = v271;
    *(a1 + 376) = v273;
    *(a1 + 384) = v275;
    *(a1 + 392) = v277;
    v4 = v283;
    *(a1 + 400) = v280;
    outlined consume of PlatformItemList.Item.SystemItem(v111, v112, v113, v114, v115, v116, v117, v118, v119, *(&v119 + 1), v120, SBYTE8(v120), v121);
  }

  v122 = (a1 + 408);
  v123 = *(a1 + 416);
  v124 = *(a2 + 416);
  if (v123 == 1)
  {
    if (v124 == 1)
    {
      *v122 = *(v4 + 122);
      v125 = *(v4 + 138);
      v126 = *(v4 + 154);
      v127 = *(v4 + 170);
      *(a1 + 472) = *(v4 + 186);
      *(a1 + 440) = v126;
      *(a1 + 456) = v127;
      *(a1 + 424) = v125;
      goto LABEL_85;
    }

    *(a1 + 408) = *(a2 + 408);
    *(a1 + 409) = *(a2 + 409);
    *(a1 + 410) = *(a2 + 410);
    *(a1 + 411) = *(a2 + 411);
    *(a1 + 412) = *(a2 + 412);
    v131 = *(a2 + 416);
    if (v131)
    {
      v132 = *(a2 + 424);
      *(a1 + 416) = v131;
      *(a1 + 424) = v132;

      v133 = *(a2 + 432);
      if (v133)
      {
LABEL_58:
        v134 = *(a2 + 440);
        *(a1 + 432) = v133;
        *(a1 + 440) = v134;

        goto LABEL_64;
      }
    }

    else
    {
      *(a1 + 416) = *(a2 + 416);
      v133 = *(a2 + 432);
      if (v133)
      {
        goto LABEL_58;
      }
    }

    *(a1 + 432) = *(a2 + 432);
LABEL_64:
    v137 = *(a2 + 448);
    if (!v137)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  if (v124 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    *v122 = *(v4 + 122);
    v128 = *(v4 + 154);
    v129 = *(v4 + 170);
    v130 = *(v4 + 138);
    *(a1 + 472) = *(v4 + 186);
    *(a1 + 440) = v128;
    *(a1 + 456) = v129;
    *(a1 + 424) = v130;
    goto LABEL_85;
  }

  *(a1 + 408) = *(v4 + 122);
  *(a1 + 409) = *(v4 + 123);
  *(a1 + 410) = *(v4 + 124);
  *(a1 + 411) = *(v4 + 125);
  *(a1 + 412) = *(a2 + 412);
  v135 = *(a2 + 416);
  if (v123)
  {
    if (v135)
    {
      v136 = *(a2 + 424);
      *(a1 + 416) = v135;
      *(a1 + 424) = v136;

      goto LABEL_70;
    }
  }

  else if (v135)
  {
    v138 = *(a2 + 424);
    *(a1 + 416) = v135;
    *(a1 + 424) = v138;

    goto LABEL_70;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_70:
  v139 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v139)
    {
      v140 = *(a2 + 440);
      *(a1 + 432) = v139;
      *(a1 + 440) = v140;

      goto LABEL_77;
    }
  }

  else if (v139)
  {
    v141 = *(a2 + 440);
    *(a1 + 432) = v139;
    *(a1 + 440) = v141;

    goto LABEL_77;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_77:
  v137 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v137)
    {
LABEL_81:
      v143 = *(a2 + 456);
      *(a1 + 448) = v137;
      *(a1 + 456) = v143;

      goto LABEL_84;
    }

LABEL_83:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_84;
  }

  if (!v137)
  {

    goto LABEL_83;
  }

  v142 = *(a2 + 456);
  *(a1 + 448) = v137;
  *(a1 + 456) = v142;

LABEL_84:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_85:
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v144 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v144)
    {
      v145 = *(a2 + 520);
      *(a1 + 512) = v144;
      *(a1 + 520) = v145;

      goto LABEL_92;
    }
  }

  else if (v144)
  {
    v146 = *(a2 + 520);
    *(a1 + 512) = v144;
    *(a1 + 520) = v146;

    goto LABEL_92;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_92:
  *(a1 + 528) = *(a2 + 528);
  v147 = *(a2 + 816);
  if (*(a1 + 816))
  {
    if (v147)
    {
      *(a1 + 536) = *(a2 + 536);
      *(a1 + 544) = *(a2 + 544);

      *(a1 + 552) = *(a2 + 552);
      *(a1 + 560) = *(a2 + 560);

      *(a1 + 568) = *(a2 + 568);
      v148 = *(a2 + 576);
      *(a1 + 592) = *(a2 + 592);
      *(a1 + 576) = v148;
      v149 = (a1 + 600);
      v150 = (a2 + 600);
      v151 = *(a1 + 624);
      v152 = *(a2 + 624);
      if (v151 != 1)
      {
        if (v152 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 600);
          v162 = *(a2 + 616);
          v161 = *(a2 + 632);
          *v149 = *v150;
          *(a1 + 616) = v162;
          *(a1 + 632) = v161;
        }

        else
        {
          if (v151)
          {
            if (v152)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 600), (a2 + 600));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 600);
              v180 = *(a2 + 632);
              v181 = *(a2 + 616);
              *v149 = *v150;
              *(a1 + 616) = v181;
              *(a1 + 632) = v180;
            }
          }

          else if (v152)
          {
            *(a1 + 624) = v152;
            *(a1 + 632) = *(a2 + 632);
            (**(v152 - 8))(a1 + 600, a2 + 600);
          }

          else
          {
            v182 = *v150;
            v183 = *(a2 + 616);
            *(a1 + 632) = *(a2 + 632);
            *v149 = v182;
            *(a1 + 616) = v183;
          }

          *(a1 + 640) = *(a2 + 640);
        }

        goto LABEL_124;
      }

      if (v152)
      {
        if (v152 == 1)
        {
          v153 = *v150;
          v154 = *(a2 + 632);
          *(a1 + 616) = *(a2 + 616);
          *(a1 + 632) = v154;
          *v149 = v153;
LABEL_124:
          v184 = *(a2 + 648);
          *(a1 + 656) = *(a2 + 656);
          *(a1 + 648) = v184;
          v185 = (a1 + 664);
          v186 = (a2 + 664);
          v187 = *(a2 + 776);
          if (*(a1 + 776) == 1)
          {
            if (v187 == 1)
            {
              v188 = *(a2 + 680);
              *v185 = *v186;
              *(a1 + 680) = v188;
              v189 = *(a2 + 696);
              v190 = *(a2 + 712);
              v191 = *(a2 + 744);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 744) = v191;
              *(a1 + 696) = v189;
              *(a1 + 712) = v190;
              v192 = *(a2 + 760);
              v193 = *(a2 + 776);
              v194 = *(a2 + 792);
              *(a1 + 808) = *(a2 + 808);
              *(a1 + 776) = v193;
              *(a1 + 792) = v194;
              *(a1 + 760) = v192;
            }

            else
            {
              v202 = *v186;
              *(a1 + 672) = *(a2 + 672);
              *v185 = v202;
              v203 = *(a2 + 680);
              *(a1 + 688) = *(a2 + 688);
              *(a1 + 680) = v203;
              *(a1 + 689) = *(a2 + 689);
              *(a1 + 690) = *(a2 + 690);
              *(a1 + 691) = *(v4 + 405);
              *(a1 + 692) = *(a2 + 692);
              *(a1 + 696) = *(a2 + 696);
              *(a1 + 704) = *(a2 + 704);
              *(a1 + 712) = *(a2 + 712);
              *(a1 + 720) = *(a2 + 720);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 736) = *(a2 + 736);
              *(a1 + 744) = *(a2 + 744);
              *(a1 + 745) = *(a2 + 745);
              *(a1 + 752) = *(a2 + 752);
              *(a1 + 760) = *(a2 + 760);
              *(a1 + 768) = *(a2 + 768);
              *(a1 + 776) = *(a2 + 776);
              v204 = *(a2 + 784);
              *(a1 + 800) = *(a2 + 800);
              *(a1 + 784) = v204;
              *(a1 + 808) = *(a2 + 808);
            }
          }

          else if (v187 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
            v195 = *(a2 + 680);
            *v185 = *v186;
            *(a1 + 680) = v195;
            v196 = *(a2 + 744);
            v198 = *(a2 + 696);
            v197 = *(a2 + 712);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 744) = v196;
            *(a1 + 696) = v198;
            *(a1 + 712) = v197;
            v200 = *(a2 + 776);
            v199 = *(a2 + 792);
            v201 = *(a2 + 760);
            *(a1 + 808) = *(a2 + 808);
            *(a1 + 776) = v200;
            *(a1 + 792) = v199;
            *(a1 + 760) = v201;
          }

          else
          {
            v205 = *v186;
            *(a1 + 672) = *(a2 + 672);
            *v185 = v205;
            v206 = *(a2 + 680);
            *(a1 + 688) = *(a2 + 688);
            *(a1 + 680) = v206;
            *(a1 + 689) = *(a2 + 689);
            *(a1 + 690) = *(a2 + 690);
            *(a1 + 691) = *(v4 + 405);
            *(a1 + 692) = *(a2 + 692);
            *(a1 + 696) = *(a2 + 696);
            *(a1 + 704) = *(a2 + 704);
            *(a1 + 712) = *(a2 + 712);
            *(a1 + 720) = *(a2 + 720);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 736) = *(a2 + 736);
            *(a1 + 744) = *(v4 + 458);
            *(a1 + 745) = *(v4 + 459);
            *(a1 + 752) = *(a2 + 752);
            *(a1 + 760) = *(a2 + 760);
            *(a1 + 768) = *(a2 + 768);
            *(a1 + 776) = *(a2 + 776);

            v207 = *(a2 + 784);
            *(a1 + 800) = *(a2 + 800);
            *(a1 + 784) = v207;
            *(a1 + 808) = *(a2 + 808);
          }

          *(a1 + 816) = *(a2 + 816);

          *(a1 + 824) = *(a2 + 824);

          *(a1 + 832) = *(a2 + 832);

          goto LABEL_132;
        }

        *(a1 + 624) = v152;
        *(a1 + 632) = *(a2 + 632);
        (**(v152 - 8))(a1 + 600, a2 + 600);
      }

      else
      {
        v178 = *v150;
        v179 = *(a2 + 616);
        *(a1 + 632) = *(a2 + 632);
        *v149 = v178;
        *(a1 + 616) = v179;
      }

      *(a1 + 640) = *(a2 + 640);

      goto LABEL_124;
    }

    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
LABEL_103:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_132;
  }

  if (!v147)
  {
    goto LABEL_103;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  v155 = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 576) = v155;
  v156 = (a1 + 600);
  v157 = (a2 + 600);
  v158 = *(a2 + 624);

  if (!v158)
  {
    v163 = *v157;
    v164 = *(a2 + 616);
    *(a1 + 632) = *(a2 + 632);
    *v156 = v163;
    *(a1 + 616) = v164;
LABEL_111:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_112;
  }

  if (v158 != 1)
  {
    *(a1 + 624) = v158;
    *(a1 + 632) = *(a2 + 632);
    (**(v158 - 8))(a1 + 600, a2 + 600, v158);
    goto LABEL_111;
  }

  v159 = *v157;
  v160 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v160;
  *v156 = v159;
LABEL_112:
  v165 = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 648) = v165;
  v166 = (a1 + 664);
  v167 = (a2 + 664);
  if (*(a2 + 776) == 1)
  {
    v168 = *(a2 + 680);
    *v166 = *v167;
    *(a1 + 680) = v168;
    v169 = *(a2 + 696);
    v170 = *(a2 + 712);
    v171 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v171;
    *(a1 + 696) = v169;
    *(a1 + 712) = v170;
    v172 = *(a2 + 760);
    v173 = *(a2 + 776);
    v174 = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 776) = v173;
    *(a1 + 792) = v174;
    *(a1 + 760) = v172;
  }

  else
  {
    v175 = *v167;
    *(a1 + 672) = *(a2 + 672);
    *v166 = v175;
    v176 = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 680) = v176;
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 690) = *(a2 + 690);
    *(a1 + 691) = *(v4 + 405);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 720) = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 745) = *(a2 + 745);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = *(a2 + 776);
    v177 = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 784) = v177;
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_132:
  v208 = (a1 + 840);
  v209 = (a2 + 840);
  v210 = *(a1 + 864);
  v211 = *(a2 + 864);
  if (v210 == 1)
  {
    if (v211)
    {
      if (v211 == 1)
      {
        v212 = *v209;
        v213 = *(a2 + 856);
        v214 = *(a2 + 872);
        *(a1 + 888) = *(a2 + 888);
        *(a1 + 856) = v213;
        *(a1 + 872) = v214;
        *v208 = v212;
        goto LABEL_156;
      }

      *(a1 + 864) = v211;
      *(a1 + 872) = *(a2 + 872);
      (**(v211 - 8))(a1 + 840, a2 + 840);
    }

    else
    {
      v218 = *v209;
      v219 = *(a2 + 856);
      *(a1 + 872) = *(a2 + 872);
      *v208 = v218;
      *(a1 + 856) = v219;
    }

    v220 = *(a2 + 880);
    if (!v220)
    {
      goto LABEL_155;
    }

LABEL_153:
    v226 = *(a2 + 888);
    *(a1 + 880) = v220;
    *(a1 + 888) = v226;

    goto LABEL_156;
  }

  if (v211 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    v216 = *(a2 + 856);
    v215 = *(a2 + 872);
    v217 = *v209;
    *(a1 + 888) = *(a2 + 888);
    *(a1 + 856) = v216;
    *(a1 + 872) = v215;
    *v208 = v217;
    goto LABEL_156;
  }

  if (v210)
  {
    if (v211)
    {
      __swift_assign_boxed_opaque_existential_1((a1 + 840), (a2 + 840));
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1 + 840);
      v221 = *(a2 + 872);
      v222 = *(a2 + 856);
      *v208 = *v209;
      *(a1 + 856) = v222;
      *(a1 + 872) = v221;
    }
  }

  else if (v211)
  {
    *(a1 + 864) = v211;
    *(a1 + 872) = *(a2 + 872);
    (**(v211 - 8))(a1 + 840, a2 + 840);
  }

  else
  {
    v223 = *v209;
    v224 = *(a2 + 856);
    *(a1 + 872) = *(a2 + 872);
    *v208 = v223;
    *(a1 + 856) = v224;
  }

  v220 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v220)
    {
      v225 = *(a2 + 888);
      *(a1 + 880) = v220;
      *(a1 + 888) = v225;

      goto LABEL_156;
    }

    goto LABEL_155;
  }

  if (v220)
  {
    goto LABEL_153;
  }

LABEL_155:
  *(a1 + 880) = *(a2 + 880);
LABEL_156:
  v227 = *(a1 + 896);
  v228 = *(a2 + 896);
  *(a1 + 896) = v228;
  v229 = v228;

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  *(a1 + 954) = *(a2 + 954);
  v230 = type metadata accessor for PlatformItemList.Item(0);
  v231 = v230[28];
  v232 = (a1 + v231);
  v233 = (a2 + v231);
  v234 = type metadata accessor for CommandOperation(0);
  v235 = *(v234 - 8);
  v236 = *(v235 + 48);
  v237 = v236(v232, 1, v234);
  v238 = v236(v233, 1, v234);
  if (!v237)
  {
    if (!v238)
    {
      *v232 = *v233;
      v253 = *(v234 + 20);
      v254 = &v232[v253];
      v285 = &v233[v253];
      v255 = *&v233[v253];
      v256 = *&v233[v253 + 8];
      v257 = v233[v253 + 16];
      outlined copy of Text.Storage(v255, v256, v257);
      v258 = *v254;
      v259 = *(v254 + 1);
      v260 = v254[16];
      *v254 = v255;
      *(v254 + 1) = v256;
      v254[16] = v257;
      outlined consume of Text.Storage(v258, v259, v260);
      *(v254 + 3) = *(v285 + 3);

      v261 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v262 = type metadata accessor for UUID();
      (*(*(v262 - 8) + 24))(&v254[v261], &v285[v261], v262);
      v263 = *(v234 + 24);
      v264 = &v232[v263];
      v265 = &v233[v263];
      v266 = *&v233[v263];
      if (*v264)
      {
        if (v266)
        {
          v267 = *(v265 + 1);
          *v264 = v266;
          v264[1] = v267;

          goto LABEL_168;
        }
      }

      else if (v266)
      {
        v269 = *(v265 + 1);
        *v264 = v266;
        v264[1] = v269;

        goto LABEL_168;
      }

      *v264 = *v265;
      goto LABEL_168;
    }

    outlined destroy of PlatformItemList.Item.Accessibility?(v232, type metadata accessor for CommandOperation);
    goto LABEL_162;
  }

  if (v238)
  {
LABEL_162:
    type metadata accessor for CommandOperation?(0);
    memcpy(v232, v233, *(*(v252 - 8) + 64));
    goto LABEL_168;
  }

  *v232 = *v233;
  v239 = *(v234 + 20);
  v240 = v233;
  v281 = v233;
  v284 = v232;
  v241 = &v232[v239];
  v242 = &v240[v239];
  v243 = *&v240[v239];
  v244 = *&v240[v239 + 8];
  v245 = v240[v239 + 16];
  outlined copy of Text.Storage(v243, v244, v245);
  *v241 = v243;
  *(v241 + 1) = v244;
  v241[16] = v245;
  *(v241 + 3) = *(v242 + 3);
  v246 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v247 = type metadata accessor for UUID();
  v278 = *(*(v247 - 8) + 16);

  v278(&v241[v246], &v242[v246], v247);
  v248 = *(v234 + 24);
  v249 = &v284[v248];
  v250 = &v281[v248];
  if (*v250)
  {
    v251 = v250[1];
    *v249 = *v250;
    v249[1] = v251;
  }

  else
  {
    *v249 = *v250;
  }

  (*(v235 + 56))(v284, 0, 1, v234);
LABEL_168:
  *(a1 + v230[29]) = *(a2 + v230[29]);
  *(a1 + v230[30]) = *(a2 + v230[30]);
  *(a1 + v230[31]) = *(a2 + v230[31]);
  *(a1 + v230[32]) = *(a2 + v230[32]);
  *(a1 + v230[33]) = *(a2 + v230[33]);
  *(a1 + v230[34]) = *(a2 + v230[34]);

  return a1;
}

uint64_t initializeWithTake for SystemSegmentItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v5;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v6 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v6;
  v7 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v7;
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  v9 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v9;
  v10 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v10;
  v11 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v11;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  v12 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v12;
  v13 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v13;
  v14 = *(a2 + 456);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = v14;
  *(a1 + 472) = *(a2 + 472);
  v15 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v15;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 489) = *(a2 + 489);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  memcpy((a1 + 536), (a2 + 536), 0x130uLL);
  v16 = *(a2 + 856);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 856) = v16;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v17 = type metadata accessor for PlatformItemList.Item(0);
  v18 = v17[28];
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  v21 = type metadata accessor for CommandOperation(0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21))
  {
    type metadata accessor for CommandOperation?(0);
    memcpy(v19, v20, *(*(v23 - 8) + 64));
  }

  else
  {
    *v19 = *v20;
    v24 = *(v21 + 20);
    v25 = &v19[v24];
    v26 = &v20[v24];
    v27 = *&v20[v24 + 16];
    *v25 = *&v20[v24];
    *(v25 + 1) = v27;
    v28 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 32))(&v25[v28], &v26[v28], v29);
    *&v19[*(v21 + 24)] = *&v20[*(v21 + 24)];
    (*(v22 + 56))(v19, 0, 1, v21);
  }

  *(a1 + v17[29]) = *(a2 + v17[29]);
  *(a1 + v17[30]) = *(a2 + v17[30]);
  *(a1 + v17[31]) = *(a2 + v17[31]);
  *(a1 + v17[32]) = *(a2 + v17[32]);
  *(a1 + v17[33]) = *(a2 + v17[33]);
  *(a1 + v17[34]) = *(a2 + v17[34]);
  return a1;
}

uint64_t assignWithTake for SystemSegmentItem(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 286;
  v5 = *a1;
  *a1 = *a2;

  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;

  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;

  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 192) >> 1 == 4294967294)
  {
LABEL_4:
    v9 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v9;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 235) = *(a2 + 235);
    v10 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v10;
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    v13 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v13;
    if (!*(a1 + 264))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (*(a2 + 192) >> 1 == 4294967294)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    goto LABEL_4;
  }

  v14 = *(a1 + 72);
  if (v14 != 255)
  {
    v15 = *(a2 + 72);
    if (v15 != 255)
    {
      v16 = *(a1 + 64);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v15;
      outlined consume of GraphicsImage.Contents(v16, v14);
      goto LABEL_11;
    }

    outlined destroy of GraphicsImage.Contents(a1 + 64);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  v17 = *(a1 + 192);
  *(a1 + 170) = *(a2 + 170);
  if (v17 >> 1 == 0xFFFFFFFF)
  {
LABEL_14:
    v19 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v19;
    goto LABEL_16;
  }

  v18 = *(a2 + 192);
  if (v18 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 176);
    goto LABEL_14;
  }

  v20 = *(a2 + 200);
  v21 = *(a1 + 176);
  v22 = *(a1 + 184);
  v23 = *(a1 + 200);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v18;
  *(a1 + 200) = v20;
  outlined consume of AccessibilityImageLabel(v21, v22, v17, v23);
LABEL_16:
  *(a1 + 208) = *(a2 + 208);
  swift_unknownObjectRelease();
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  v24 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  if (!*(a1 + 264))
  {
LABEL_21:
    v28 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v28;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_26;
  }

LABEL_17:
  v25 = *(a2 + 264);
  if (!v25)
  {
    outlined destroy of Image.NamedResolved(a1 + 256);
    goto LABEL_21;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v25;

  v26 = *(a1 + 272);
  v27 = *(a2 + 272);
  if (v26 >= 2)
  {
    if (v27 >= 2)
    {
      *(a1 + 272) = v27;
    }

    else
    {

      *(a1 + 272) = *(a2 + 272);
    }
  }

  else
  {
    *(a1 + 272) = v27;
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 286) = *v4;
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

LABEL_26:
  v29 = *(a1 + 336);
  if (v29 >> 2 == 0xFFFFFFFF)
  {
LABEL_29:
    v31 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v31;
    *(a1 + 400) = *(a2 + 400);
    v32 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v32;
    v33 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v33;
    goto LABEL_31;
  }

  v30 = *(a2 + 336);
  if (v30 >> 2 == 0xFFFFFFFF)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    goto LABEL_29;
  }

  v34 = *(a1 + 304);
  v35 = *(a1 + 312);
  v36 = *(a1 + 320);
  v37 = *(a1 + 328);
  v38 = *(a1 + 344);
  v39 = *(a1 + 352);
  v40 = *(a1 + 360);
  v41 = *(a1 + 368);
  v42 = *(a1 + 384);
  v43 = *(a1 + 400);
  v44 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v44;
  *(a1 + 336) = v30;
  v45 = *(v4 + 74);
  *(a1 + 344) = *(v4 + 58);
  *(a1 + 360) = v45;
  v46 = *(v4 + 106);
  *(a1 + 376) = *(v4 + 90);
  *(a1 + 392) = v46;
  outlined consume of PlatformItemList.Item.SystemItem(v34, v35, v36, v37, v29, v38, v39, v40, v41, *(&v41 + 1), v42, SBYTE8(v42), v43);
LABEL_31:
  v47 = *(a1 + 416);
  if (v47 == 1)
  {
LABEL_34:
    v49 = *(v4 + 138);
    v50 = *(v4 + 170);
    *(a1 + 440) = *(v4 + 154);
    *(a1 + 456) = v50;
    *(a1 + 472) = *(v4 + 186);
    *(a1 + 408) = *(v4 + 122);
    *(a1 + 424) = v49;
    goto LABEL_57;
  }

  v48 = *(a2 + 416);
  if (v48 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    goto LABEL_34;
  }

  *(a1 + 408) = *(v4 + 122);
  *(a1 + 409) = *(v4 + 123);
  *(a1 + 410) = *(v4 + 124);
  *(a1 + 411) = *(v4 + 125);
  *(a1 + 412) = *(a2 + 412);
  if (v47)
  {
    if (v48)
    {
      v51 = *(a2 + 424);
      *(a1 + 416) = v48;
      *(a1 + 424) = v51;

      goto LABEL_42;
    }
  }

  else if (v48)
  {
    v52 = *(a2 + 424);
    *(a1 + 416) = v48;
    *(a1 + 424) = v52;
    goto LABEL_42;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_42:
  v53 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v53)
    {
      v54 = *(a2 + 440);
      *(a1 + 432) = v53;
      *(a1 + 440) = v54;

      goto LABEL_49;
    }
  }

  else if (v53)
  {
    v55 = *(a2 + 440);
    *(a1 + 432) = v53;
    *(a1 + 440) = v55;
    goto LABEL_49;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_49:
  v56 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v56)
    {
      v58 = *(a2 + 456);
      *(a1 + 448) = v56;
      *(a1 + 456) = v58;
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_56;
  }

  if (!v56)
  {

    goto LABEL_55;
  }

  v57 = *(a2 + 456);
  *(a1 + 448) = v56;
  *(a1 + 456) = v57;

LABEL_56:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_57:
  v59 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v59;

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v60 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v60)
    {
      v61 = *(a2 + 520);
      *(a1 + 512) = v60;
      *(a1 + 520) = v61;

      goto LABEL_64;
    }
  }

  else if (v60)
  {
    v62 = *(a2 + 520);
    *(a1 + 512) = v60;
    *(a1 + 520) = v62;
    goto LABEL_64;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_64:
  *(a1 + 528) = *(a2 + 528);
  if (!*(a1 + 816))
  {
LABEL_71:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_83;
  }

  if (!*(a2 + 816))
  {
    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
    goto LABEL_71;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v63 = (a1 + 600);
  v64 = (a2 + 600);
  v65 = *(a1 + 624);
  if (v65 == 1)
  {
LABEL_69:
    v67 = *(a2 + 616);
    *v63 = *v64;
    *(a1 + 616) = v67;
    *(a1 + 632) = *(a2 + 632);
    goto LABEL_77;
  }

  v66 = *(a2 + 624);
  if (v66 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 600);
    goto LABEL_69;
  }

  if (v65)
  {
    v68 = (a1 + 600);
    if (v66)
    {
      __swift_destroy_boxed_opaque_existential_1(v68);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v68);
    }
  }

  v69 = *(a2 + 616);
  *v63 = *v64;
  *(a1 + 616) = v69;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);

LABEL_77:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v70 = (a1 + 664);
  v71 = (a2 + 664);
  if (*(a1 + 776) != 1)
  {
    v72 = *(a2 + 776);
    if (v72 != 1)
    {
      *v70 = *v71;
      *(a1 + 672) = *(a2 + 672);
      *(a1 + 680) = *(a2 + 680);
      *(a1 + 688) = *(a2 + 688);
      *(a1 + 689) = *(a2 + 689);
      *(a1 + 691) = *(v4 + 405);
      *(a1 + 692) = *(a2 + 692);
      *(a1 + 696) = *(a2 + 696);
      v77 = *(a2 + 720);
      *(a1 + 704) = *(a2 + 704);
      *(a1 + 720) = v77;
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 744) = *(v4 + 458);
      *(a1 + 745) = *(v4 + 459);
      *(a1 + 752) = *(a2 + 752);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 776) = v72;

      *(a1 + 784) = *(a2 + 784);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      goto LABEL_82;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
  }

  v73 = *(a2 + 776);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 776) = v73;
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  v74 = *(a2 + 712);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = v74;
  v75 = *(a2 + 744);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = v75;
  v76 = *(a2 + 680);
  *v70 = *v71;
  *(a1 + 680) = v76;
LABEL_82:
  *(a1 + 816) = *(a2 + 816);

  *(a1 + 824) = *(a2 + 824);

  *(a1 + 832) = *(a2 + 832);

LABEL_83:
  v78 = (a1 + 840);
  v79 = (a2 + 840);
  v80 = *(a1 + 864);
  if (v80 == 1)
  {
LABEL_86:
    v82 = *(a2 + 856);
    *v78 = *v79;
    *(a1 + 856) = v82;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 888) = *(a2 + 888);
    goto LABEL_87;
  }

  v81 = *(a2 + 864);
  if (v81 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    goto LABEL_86;
  }

  if (v80)
  {
    v101 = (a1 + 840);
    if (v81)
    {
      __swift_destroy_boxed_opaque_existential_1(v101);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v101);
    }
  }

  v115 = *(a2 + 856);
  *v78 = *v79;
  *(a1 + 856) = v115;
  *(a1 + 872) = *(a2 + 872);
  v116 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v116)
    {
      v117 = *(a2 + 888);
      *(a1 + 880) = v116;
      *(a1 + 888) = v117;

      goto LABEL_87;
    }
  }

  else if (v116)
  {
    v118 = *(a2 + 888);
    *(a1 + 880) = v116;
    *(a1 + 888) = v118;
    goto LABEL_87;
  }

  *(a1 + 880) = *(a2 + 880);
LABEL_87:
  v83 = *(a1 + 896);
  *(a1 + 896) = *(a2 + 896);

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v84 = type metadata accessor for PlatformItemList.Item(0);
  v85 = v84[28];
  v86 = (a1 + v85);
  v87 = (a2 + v85);
  v88 = type metadata accessor for CommandOperation(0);
  v89 = *(v88 - 8);
  v90 = *(v89 + 48);
  v91 = v90(v86, 1, v88);
  v92 = v90(v87, 1, v88);
  if (!v91)
  {
    if (!v92)
    {
      *v86 = *v87;
      v102 = *(v88 + 20);
      v103 = &v86[v102];
      v104 = &v87[v102];
      LOBYTE(v102) = v87[v102 + 16];
      v105 = *v103;
      v106 = *(v103 + 1);
      v107 = v103[16];
      *v103 = *v104;
      v103[16] = v102;
      outlined consume of Text.Storage(v105, v106, v107);
      *(v103 + 3) = *(v104 + 3);

      v108 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v109 = type metadata accessor for UUID();
      (*(*(v109 - 8) + 40))(&v103[v108], &v104[v108], v109);
      v110 = *(v88 + 24);
      v111 = &v86[v110];
      v112 = &v87[v110];
      v113 = *v112;
      if (*v111)
      {
        if (v113)
        {
          v114 = v112[1];
          *v111 = v113;
          v111[1] = v114;

          goto LABEL_93;
        }
      }

      else if (v113)
      {
        v119 = v112[1];
        *v111 = v113;
        v111[1] = v119;
        goto LABEL_93;
      }

      *v111 = *v112;
      goto LABEL_93;
    }

    outlined destroy of PlatformItemList.Item.Accessibility?(v86, type metadata accessor for CommandOperation);
    goto LABEL_92;
  }

  if (v92)
  {
LABEL_92:
    type metadata accessor for CommandOperation?(0);
    memcpy(v86, v87, *(*(v99 - 8) + 64));
    goto LABEL_93;
  }

  *v86 = *v87;
  v93 = *(v88 + 20);
  v94 = &v86[v93];
  v95 = &v87[v93];
  v96 = *&v87[v93 + 16];
  *v94 = *&v87[v93];
  *(v94 + 1) = v96;
  v97 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v98 = type metadata accessor for UUID();
  (*(*(v98 - 8) + 32))(&v94[v97], &v95[v97], v98);
  *&v86[*(v88 + 24)] = *&v87[*(v88 + 24)];
  (*(v89 + 56))(v86, 0, 1, v88);
LABEL_93:
  *(a1 + v84[29]) = *(a2 + v84[29]);
  *(a1 + v84[30]) = *(a2 + v84[30]);
  *(a1 + v84[31]) = *(a2 + v84[31]);
  *(a1 + v84[32]) = *(a2 + v84[32]);
  *(a1 + v84[33]) = *(a2 + v84[33]);
  *(a1 + v84[34]) = *(a2 + v84[34]);

  return a1;
}

uint64_t type metadata accessor for SystemSegmentItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemSegmentItem;
  if (!type metadata singleton initialization cache for SystemSegmentItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SystemSegmentItem(uint64_t a1)
{
  result = type metadata accessor for PlatformItemList.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void SystemSegmentItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*v1)
  {
    v3 = [*v1 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = PlatformItemList.Item.image.getter();
  if (v4)
  {
    v5 = v4;
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + 56));
  if (v2[61])
  {
    v6 = *(v2 + 504);
    v7 = v2[62];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    MEMORY[0x18D00F6F0](v7);
    MEMORY[0x18D00F6F0](v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemSegmentItem()
{
  Hasher.init(_seed:)();
  SystemSegmentItem.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemSegmentItem(uint64_t a1)
{
  Hasher.init(_seed:)();
  SystemSegmentItem.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SystemSegmentItem and conformance SystemSegmentItem()
{
  result = lazy protocol witness table cache variable for type SystemSegmentItem and conformance SystemSegmentItem;
  if (!lazy protocol witness table cache variable for type SystemSegmentItem and conformance SystemSegmentItem)
  {
    v3 = type metadata accessor for SystemSegmentItem(255);
    result = swift_getWitnessTable(protocol conformance descriptor for SystemSegmentItem, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SystemSegmentItem and conformance SystemSegmentItem);
  }

  return result;
}

BOOL specialized static SystemSegmentItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!v4)
  {
    v9 = *a2;
    if (!*a2)
    {
      goto LABEL_15;
    }

    v8 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v5 = [v4 string];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *a2;
  if (*a2)
  {
LABEL_7:
    v10 = [v9 string];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v8)
    {
      if (!v13)
      {
        goto LABEL_51;
      }

      if (v6 == v11 && v8 == v13)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v13)
    {
      goto LABEL_51;
    }

    goto LABEL_15;
  }

  if (v8)
  {
    goto LABEL_51;
  }

LABEL_15:
  v15 = PlatformItemList.Item.image.getter();
  v16 = PlatformItemList.Item.image.getter();
  if (v15)
  {
    if (!v16)
    {

      return 0;
    }

    v17 = v16;

    if (v15 != v17)
    {
      return 0;
    }
  }

  else if (v16)
  {

    return 0;
  }

  outlined init with copy of PlatformItemList.Item.Accessibility?(a1 + 536, v45);
  if (v46)
  {
    v18 = PlatformItemList.Item.Accessibility.resolvedPlainTextLabel.getter();
    v20 = v19;
    outlined destroy of PlatformItemList.Item.Accessibility(v45);
  }

  else
  {
    outlined destroy of PlatformItemList.Item.Accessibility?(v45, type metadata accessor for PlatformItemList.Item.Accessibility?);
    v18 = 0;
    v20 = 0;
  }

  outlined init with copy of PlatformItemList.Item.Accessibility?(a2 + 536, v45);
  if (!v46)
  {
    outlined destroy of PlatformItemList.Item.Accessibility?(v45, type metadata accessor for PlatformItemList.Item.Accessibility?);
    if (v20)
    {
      goto LABEL_51;
    }

    goto LABEL_36;
  }

  v21 = PlatformItemList.Item.Accessibility.resolvedPlainTextLabel.getter();
  v23 = v22;
  outlined destroy of PlatformItemList.Item.Accessibility(v45);
  if (!v20)
  {
    if (!v23)
    {
      goto LABEL_36;
    }

LABEL_51:

    return 0;
  }

  if (!v23)
  {
    goto LABEL_51;
  }

  if (v18 == v21 && v20 == v23)
  {

    goto LABEL_36;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  outlined init with copy of PlatformItemList.Item.Accessibility?(a1 + 536, v45);
  if (v46)
  {
    outlined init with copy of AccessibilityProperties(v45, &v42);
    outlined destroy of PlatformItemList.Item.Accessibility(v45);
    v26 = v42;
    v25 = v43;
    v27 = v44;

    outlined destroy of AccessibilityProperties(&v42);
  }

  else
  {
    outlined destroy of PlatformItemList.Item.Accessibility?(v45, type metadata accessor for PlatformItemList.Item.Accessibility?);
    v26 = 0;
    v25 = 0;
    v27 = 0;
  }

  outlined init with copy of PlatformItemList.Item.Accessibility?(a2 + 536, v45);
  if (!v46)
  {
    outlined destroy of PlatformItemList.Item.Accessibility?(v45, type metadata accessor for PlatformItemList.Item.Accessibility?);
    if (v25)
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  outlined init with copy of AccessibilityProperties(v45, &v42);
  outlined destroy of PlatformItemList.Item.Accessibility(v45);
  v29 = v42;
  v28 = v43;
  v30 = v44;

  outlined destroy of AccessibilityProperties(&v42);
  if (!v25)
  {
    if (v28)
    {
LABEL_50:

      goto LABEL_51;
    }

LABEL_53:

    goto LABEL_54;
  }

  if (!v28 || (v26 != v29 || v25 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_50;
  }

  if (v27 != v30)
  {
    return 0;
  }

LABEL_54:
  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v32 = *(a1 + 488);
  v33 = *(a2 + 488);
  if (!v32)
  {
    if (!v33)
    {

      return 1;
    }

    goto LABEL_68;
  }

  if (!v33)
  {
LABEL_68:

    goto LABEL_51;
  }

  v34 = *(a1 + 480);
  v35 = *(a1 + 496);
  v36 = *(a1 + 504);
  v37 = *(a2 + 480);
  v38 = *(a2 + 496);
  v39 = *(a2 + 504);
  if (v34 == v37 && v32 == v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v41 = v35 == v38 && v36 == v39;
  }

  else
  {

    v41 = 0;
  }

  swift_bridgeObjectRelease_n();
  return v41;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance ActiveDragDropSessions(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance ActiveDragDropSessions@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance ActiveDragDropSessions@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance ActiveDragDropSessions@<X0>(_BYTE *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

uint64_t ListDragAndDropControllerBase.activeSessions.didset()
{
  v1 = MEMORY[0x1E69E7D40];
  if (!*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70)))
  {
    swift_unknownObjectWeakAssign();
    v2 = MEMORY[0x1E69E7CC0];
    *(v0 + *((*v1 & *v0) + 0x88)) = MEMORY[0x1E69E7CC0];

    *(v0 + *((*v1 & *v0) + 0x80)) = v2;
  }

  return result;
}

Swift::Void __swiftcall ListDragAndDropControllerBase.prepareForDropSession(view:)(UIView *view)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  if ((*(v1 + v4) & 4) == 0)
  {
    *(v1 + v4) |= 4u;
  }

  ListDragAndDropControllerBase.activeSessions.didset();
  v5 = view;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v5)
  {
LABEL_5:

    v6 = *((*v3 & *v1) + 0x98);
    v7 = *(v1 + v6);
    *(v1 + v6) = v5;
  }

  else
  {
    while (1)
    {

      v8 = [(UIView *)v5 superview];
      if (!v8)
      {
        break;
      }

      v5 = v8;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        goto LABEL_5;
      }
    }
  }
}

void *ListDragAndDropControllerBase.resetAfterSession(_:)(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x78));
  swift_beginAccess();
  if (*v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[1] == 1;
  }

  if (v5)
  {
    return $defer #1 <A>() in ListDragAndDropControllerBase.resetAfterSession(_:)(v1);
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return $defer #1 <A>() in ListDragAndDropControllerBase.resetAfterSession(_:)(v1);
  }

  v7 = v4[1];
  v8 = v1;
  v9 = *(v1 + *((*v3 & *v1) + 0x98));
  if (v9)
  {
    v10 = result;
    v59 = &type metadata for DropInfoAdaptor;
    v60 = &protocol witness table for DropInfoAdaptor;
    v11 = swift_allocObject();
    *&v58 = v11;
    swift_unknownObjectWeakInit();
    v46 = 0;
    swift_unknownObjectWeakAssign();
    v12 = v9;

    [a1 locationInView_];
    v43 = v13;
    v44 = v14;
    v15 = MEMORY[0x1E697DF20];
    v16 = MEMORY[0x1E697DF18];
    type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, v15, v16);
    if (static SemanticFeature.isEnabled.getter())
    {
      hostingViewCoordinateSpace.getter();
      v42 = 1;
      v17 = *(*v10 + class metadata base offset for UIViewSnapshotResponder + 80);

      v17(&v38, v18);

      v35 = v38;
      v36 = v39;
      v37 = v40;
      type metadata accessor for CGPoint(0);
      ApplyViewTransform.convert(from:transform:)();
      outlined destroy of CoordinateSpace(v41);
    }

    v19 = v43;
    v20 = v44;
    v56 = v43;
    v57 = v44;
    if ([swift_unknownObjectRetain() localDragSession])
    {
      swift_unknownObjectRelease();
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = [a1 items];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23 >> 62)
    {
      v24 = __CocoaSet.count.getter();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if ([swift_unknownObjectRetain() localDragSession])
    {
      swift_unknownObjectRelease();
      v25 = &selRef_allowsMoveOperation;
      v26 = 3;
    }

    else
    {
      v25 = &selRef_isRestrictedToDraggingApplication;
      v26 = 4;
    }

    v27 = [a1 *v25];
    swift_unknownObjectRelease();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 1;
    }

    [v12 bounds];
    v30 = v29;
    v32 = v31;

    swift_unknownObjectRelease();

    v47 = a1;
    v48 = 6;
    v49 = v21;
    v50 = v24;
    v51 = v28;
    v52 = v30;
    v53 = v32;
    v54 = v19;
    v55 = v20;
    outlined init with take of DropInfoAdaptor(v45, v11 + 16);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v58, v61);
    (*(v7 + 8))(&v38, *v10, v7);
    v33 = *(&v39 + 1);
    if (*(&v39 + 1))
    {
      v34 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
      (*(v34 + 40))(v61, v33, v34);

      outlined destroy of DropInfo(v61);
      __swift_destroy_boxed_opaque_existential_1(&v38);
    }

    else
    {

      outlined destroy of DropInfo(v61);
      _s7SwiftUI12DropDelegate_pSgWOhTm_0(&v38, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate);
    }

    v1 = v8;
    return $defer #1 <A>() in ListDragAndDropControllerBase.resetAfterSession(_:)(v1);
  }

  __break(1u);
  return result;
}

uint64_t $defer #1 <A>() in ListDragAndDropControllerBase.resetAfterSession(_:)(void *a1)
{
  v8[0] = xmmword_18CD633F0;
  memset(&v8[1], 0, 57);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x78);
  swift_beginAccess();
  outlined assign with take of DropDestination?(v8, a1 + v3);
  swift_endAccess();
  v4 = *((*v2 & *a1) + 0x98);
  v5 = *(a1 + v4);
  *(a1 + v4) = 0;

  v6 = *((*v2 & *a1) + 0x70);
  if ((*(a1 + v6) & 4) != 0)
  {
    *(a1 + v6) &= ~4u;
  }

  return ListDragAndDropControllerBase.activeSessions.didset();
}

id ListDragAndDropControllerBase.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ListDragAndDropControllerBase(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void @objc ListDragAndDropControllerBase.__ivar_destroyer(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v7 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *a1) + 0x50), *((*MEMORY[0x1E69E7D40] & *a1) + 0x58), a4);
  (*(*(v7 - 8) + 8))(&a1[v6], v7);

  outlined destroy of DropDestination?(&a1[*((*v5 & *a1) + 0x78)], &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);

  outlined destroy of weak FallbackResponderProvider?(&a1[*((*v5 & *a1) + 0x90)]);
  v8 = *&a1[*((*v5 & *a1) + 0x98)];
}

uint64_t one-time initialization function for allowFakeMoves()
{
  result = closure #1 in variable initialization expression of allowFakeMoves();
  allowFakeMoves = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of allowFakeMoves()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000013 && 0x800000018CD43F70 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

id CollectionViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:targetsRow:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v53 = a4;
  v54 = a2;
  v61 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = v61;
  v9 = *(v61 + 168);
  v10 = *(v61 + 176);
  v11 = type metadata accessor for ShadowListDataSource(0, v9, *(v10 + 8), a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v62 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v59 = &v47 - v22;
  if ((a3 & 1) == 0)
  {
    goto LABEL_21;
  }

  v50 = v10;
  v51 = v9;
  v52 = v14;
  v23 = *&v5[*(v61 + 136)];
  v24 = *(v23 + 16);
  v25 = a1;
  if (!v24)
  {
    goto LABEL_17;
  }

  v57 = v20;
  v58 = a1;
  v48 = v12;
  v49 = v11;
  v26 = v19 + 16;
  v27 = *(v19 + 16);
  v28 = v59;
  v27(v59, v21);
  v29 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v30 = *(v26 + 56);
  v56 = (v26 + 16);
  v60 = v30;
  v61 = v26 - 8;
  v47 = v23;

  v55 = v27;
  v31 = v62;
  do
  {
    (v27)(v16, v29, v31);
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v32 = *v61;
      (*v61)(v16, v31);
    }

    else
    {
      v33 = v26;
      v34 = v57;
      (*v56)(v57, v16, v31);
      v35 = v5;
      v37 = closure #2 in CollectionViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:targetsRow:)(v34, v5, v58, v36);
      v32 = *v61;
      (*v61)(v34, v31);
      if ((v37 & 1) == 0)
      {

        v32(v59, v62);
        v25 = v58;
        v12 = v48;
        v11 = v49;
        v5 = v35;
        goto LABEL_17;
      }

      v5 = v35;
      v26 = v33;
      v28 = v59;
      v27 = v55;
    }

    v29 += v60;
    --v24;
  }

  while (v24);

  v32(v28, v62);
  v38 = objc_allocWithZone(MEMORY[0x1E69DC838]);
  if (v53)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  v40 = &selRef_initWithDropOperation_intent_;
  if ((v53 & 1) == 0)
  {
    v40 = &selRef_initWithDropOperation_dropLocation_;
  }

  result = [v38 *v40];
  v25 = v58;
  v12 = v48;
  v11 = v49;
  if (!result)
  {
LABEL_17:
    if (one-time initialization token for allowFakeMoves != -1)
    {
      v46 = v25;
      swift_once();
      v25 = v46;
    }

    if (!allowFakeMoves)
    {
      return [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
    }

    a1 = v25;
    v8 = *MEMORY[0x1E69E7D40] & *v5;
    v9 = v51;
    v14 = v52;
    v10 = v50;
LABEL_21:
    v42 = *(v8 + 96);
    swift_beginAccess();
    v43 = (*(v12 + 16))(v14, &v5[v42], v11);
    MEMORY[0x1EEE9AC00](v43);
    *(&v47 - 4) = v9;
    *(&v47 - 3) = v10;
    *(&v47 - 2) = v54;
    v44 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewDropProposal, 0x1E69DC838);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v11);
    ListCoreDataSource.visitContent<A>(atRow:visitor:)(a1, partial apply for closure #3 in CollectionViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:targetsRow:), (&v47 - 6), v11, v44, WitnessTable, &v63);
    (*(v12 + 8))(v14, v11);
    result = v63;
    if (v63)
    {
      return result;
    }

    return [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
  }

  return result;
}

uint64_t closure #2 in CollectionViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:targetsRow:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *a2) + 0xA8), *(*((*MEMORY[0x1E69E7D40] & *a2) + 0xB0) + 8), a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *((v8 & v7) + 0x60);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a2[v13], v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9);
  LOBYTE(a3) = ListCoreDataSource.canMoveCell(fromRowAt:to:)(a1, a3, v9, WitnessTable);
  (*(v10 + 8))(v12, v9);
  return a3 & 1;
}

id closure #3 in CollectionViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:targetsRow:)@<X0>(id a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:

    v16._rawValue = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  v21 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x18D00E9C0](v11, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = [v12 itemProvider];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v9 != v11);

  v16._rawValue = v21;
LABEL_12:
  v17 = type metadata accessor for ShadowListDataSource(255, a2, *(a3 + 8), v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v17);
  type metadata accessor for _RowVisitationContext(0, v17, WitnessTable, v19);
  LOBYTE(v17) = _RowVisitationContext.canHandleDropInsert(items:)(v16);

  v20 = objc_allocWithZone(MEMORY[0x1E69DC838]);
  if (v17)
  {
    result = [v20 initWithDropOperation:2 intent:1];
  }

  else
  {
    result = [v20 initWithDropOperation_];
  }

  *a4 = result;
  return result;
}

unint64_t CollectionViewListDragAndDropController.dragItem(at:collectionView:session:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8);
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0);
  v11 = type metadata accessor for ShadowListDataSource(0, v9, *(v10 + 8), a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [a2 cellForItemAtIndexPath_];

  if (v16)
  {
    type metadata accessor for AnyListCollectionViewCell();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v31 = a1;
      v18 = a3;
      v19 = MEMORY[0x1E69E7D40];
      v20 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0xA0))();
      if (v20)
      {
        v21 = v20;
        v22 = (*((*v19 & *v20) + 0x58))(v18);
        v30 = v22;
        if (v22 >> 62)
        {
          v23 = __CocoaSet.count.getter();
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = v31;
        if (v23)
        {
          return v30;
        }
      }

      else
      {

        a1 = v31;
      }
    }

    else
    {
    }
  }

  v25 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
  swift_beginAccess();
  v26 = (*(v12 + 16))(v14, &v5[v25], v11);
  MEMORY[0x1EEE9AC00](v26);
  *(&v30 - 2) = v9;
  *(&v30 - 1) = v10;
  type metadata accessor for [UIDragItem](0);
  v28 = v27;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v11);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(a1, partial apply for closure #1 in CollectionViewListDragAndDropController.dragItem(at:collectionView:session:), (&v30 - 4), v11, v28, WitnessTable, &v32);
  (*(v12 + 8))(v14, v11);
  if (v32)
  {
    return v32;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void closure #1 in CollectionViewListDragAndDropController.dragItem(at:collectionView:session:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = type metadata accessor for ShadowListDataSource(255, a2, *(a3 + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v6);
  type metadata accessor for _RowVisitationContext(0, v6, WitnessTable, v8);
  v9 = ViewTraitCollection.value<A>(for:defaultValue:)();
  v10 = v14[0];
  if (v14[0] && (v11 = v14[1], (v14[0])(v14, v9), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10, v11), (v12 = v14[0]) != 0))
  {
    type metadata accessor for Spacer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18CD69590;
    *(v13 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v13;
}

unint64_t CollectionViewListDragAndDropController.collectionView(_:itemsForBeginning:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI12DropDelegate_pSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18CD63400;
  (*(v8 + 16))(v10 + v9, a3, v7);
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x80)) = v10;

  return CollectionViewListDragAndDropController.dragItem(at:collectionView:session:)(a3, a1, a2, v11);
}

Class @objc CollectionViewListDragAndDropController.collectionView(_:itemsForBeginning:at:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a1;
  CollectionViewListDragAndDropController.collectionView(_:itemsForBeginning:at:)(v12, a4, v11);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

Class @objc CollectionViewListDragAndDropController.collectionView(_:itemsForAddingTo:at:point:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a1;
  specialized CollectionViewListDragAndDropController.collectionView(_:itemsForAddingTo:at:point:)(v12, a4, v11);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

void @objc CollectionViewListDragAndDropController.collectionView(_:dragSessionDidEnd:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = a1;
  specialized CollectionViewListDragAndDropController.collectionView(_:dragSessionDidEnd:)();

  swift_unknownObjectRelease();
}

id CollectionViewListDragAndDropController.collectionView(_:dragPreviewParametersForItemAt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a2;
  v39 = a1;
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8);
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0);
  v8 = type metadata accessor for ShadowListDataSource(0, v6, *(v7 + 8), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v12 = MEMORY[0x1E697E518];
  v13 = MEMORY[0x1E697E510];
  type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_1>, MEMORY[0x1E697E518], MEMORY[0x1E697E510]);
  v14 = v13;
  v15 = MEMORY[0x1E69E7D40];
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_1>, v12, v14);
  v16 = static SemanticFeature.isEnabled.getter();
  v17 = *((*v15 & *v4) + 0x60);
  swift_beginAccess();
  (*(v9 + 16))(v11, &v5[v17], v8);
  v42 = v6;
  v43 = v7;
  v18 = v40;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(v18, partial apply for closure #1 in CollectionViewListDragAndDropController.collectionView(_:dragPreviewParametersForItemAt:), v41, v8, MEMORY[0x1E69E6370], WitnessTable, v44);
  (*(v9 + 8))(v11, v8);
  if (LOBYTE(v44[0]) == 2)
  {
    if (v16)
    {
      v20 = 0;
      goto LABEL_6;
    }

    return 0;
  }

  if (((v16 | LOBYTE(v44[0])) & 1) == 0)
  {
    return 0;
  }

  v20 = v16 ^ 1 | LOBYTE(v44[0]);
LABEL_6:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22 = [v39 cellForItemAtIndexPath_];

  result = 0;
  if (!v22)
  {
    return result;
  }

  type metadata accessor for AnyListCollectionViewCell();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    v26 = v22;
    v27 = [v25 window];
    if (v27)
    {

      v28 = MEMORY[0x18D00ABE0]();
      v48 = 0u;
      v49 = 0u;
      v50 = 6;
      if ((*((*v15 & *v25) + 0x90))(v28))
      {
        type metadata accessor for ViewResponder();
        if (swift_dynamicCastClass())
        {
          v51[0] = 2;
          hostingViewCoordinateSpace.getter();
          v46 = 1;
          dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();

          outlined destroy of CoordinateSpace(v44);
        }

        else
        {
        }
      }

      v44[0] = v48;
      v44[1] = v49;
      v45 = v50;
      if (v20 & 1 | ((Path.isEmpty.getter() & 1) == 0))
      {
        v29 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
        v30 = [v25 traitCollection];

        v31 = [v30 userInterfaceIdiom];
        if (v31 != 6)
        {
          v32 = objc_opt_self();
          v33 = v29;
          v34 = [v32 clearColor];
          [v33 setBackgroundColor_];
        }

        v35 = v44;
        if ((Path.isEmpty.getter() & 1) == 0)
        {
          v36 = [v25 contentView];
          [v36 frame];

          v35 = v51;
          Path.offsetBy(dx:dy:)();
          outlined destroy of Path(v44);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath, 0x1E69DC728);
          v37 = v29;
          outlined init with copy of Path(v51, v47);
          v38 = UIBezierPath.init(_:)(v51);
          [v37 setVisiblePath_];
        }

        outlined destroy of Path(v35);
        static Update.end()();
        goto LABEL_23;
      }

      outlined destroy of Path(v44);
      static Update.end()();
    }

    else
    {
    }
  }

  v29 = 0;
LABEL_23:

  return v29;
}

uint64_t closure #1 in CollectionViewListDragAndDropController.collectionView(_:dragPreviewParametersForItemAt:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = type metadata accessor for ShadowListDataSource(255, a1, *(a2 + 8), a3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for _RowVisitationContext(0, v5, WitnessTable, v7);
  result = _RowVisitationContext.wantsClippedBackground.getter(v8);
  *a4 = result & 1;
  return result;
}

id CollectionViewListDragAndDropController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v119 = a3;
  v108 = a1;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v4;
  v9 = *(v8 + 0xA8);
  v10 = *(*(v8 + 176) + 8);
  v11 = *(v10 + 8);
  v12 = type metadata accessor for ShadowRowCollection(0, v9, v11, a4);
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v100 - v13;
  v15 = type metadata accessor for ShadowSectionCollection(0, v9, v11, v14);
  v113 = *(v15 - 8);
  v114 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v100 - v16;
  v118 = type metadata accessor for ShadowListDataSource(0, v9, v10, v17);
  v111 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v100 - v18;
  _s7SwiftUI12DropDelegate_pSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v100 - v23;
  v25 = type metadata accessor for IndexPath();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v101 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v116 = &v100 - v29;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v100 - v32;
  v34 = [a2 localDragSession];
  Strong = swift_unknownObjectWeakLoadStrong();
  v36 = Strong;
  v104 = a2;
  v115 = v26;
  if (!v34)
  {
    if (!Strong)
    {
      LODWORD(v109) = 1;
      v38 = v116;
      goto LABEL_21;
    }

LABEL_8:
    swift_unknownObjectRelease();
    v38 = v116;
    goto LABEL_9;
  }

  if (!Strong)
  {
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v37 = v34 == v36;
  v38 = v116;
  if (!v37)
  {
LABEL_9:
    outlined init with copy of _DraggingModifier?(v119, v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI12DropDelegate_pSgMaTm_0);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      _s7SwiftUI12DropDelegate_pSgWOhTm_0(v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
LABEL_20:
      LODWORD(v109) = 0;
      goto LABEL_21;
    }

    (*(v26 + 32))(v33, v24, v25);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v40 = [v108 cellForItemAtIndexPath_];

    if (v40)
    {
      type metadata accessor for AnyListCollectionViewCell();
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        v42 = *v7;
        v43 = *&v5[*((*v7 & *v5) + 0x98)];
        if (!v43)
        {
          v26 = v115;
          (*(v115 + 8))(v33, v25);

          goto LABEL_20;
        }

        v109 = v40;
        v44 = (*((*v41 & v42) + 0xA0))();
        if (v44)
        {
          v45 = v25;
          v46 = *((*v7 & *v44) + 0x50);
          v47 = v44;
          v48 = v43;
          v49 = v46();
          v25 = v45;
          v50 = v49;
          v52 = v51;

          if (v50)
          {
            v53 = *((*v7 & *v5) + 0x78);
            swift_beginAccess();

            v54 = v52;
            v55 = v48;
            v56 = specialized static UIDropProposal.fromActiveDrop(_:session:responder:host:)(&v5[v53], v104, v50, v54, v48);
            swift_endAccess();

            if ([v56 operation] == 2)
            {
              v57 = [v56 operation];
              v58 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation:v57 intent:2];

              (*(v115 + 8))(v33, v25);
              return v58;
            }

            v26 = v115;
            (*(v115 + 8))(v33, v25);

            goto LABEL_39;
          }
        }

        else
        {
          v98 = v43;
        }

        v99 = v115;
        (*(v115 + 8))(v33, v25);

        v26 = v99;
LABEL_39:
        LODWORD(v109) = 0;
        v38 = v116;
        goto LABEL_21;
      }
    }

    (*(v26 + 8))(v33, v25);
    goto LABEL_20;
  }

  LODWORD(v109) = 1;
LABEL_21:
  v59 = v7;
  v60 = v111;
  outlined init with copy of _DraggingModifier?(v119, v21, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI12DropDelegate_pSgMaTm_0);
  v61 = *(v26 + 48);
  v62 = v61(v21, 1, v25);
  v110 = v25;
  v102 = v61;
  v103 = v26 + 48;
  if (v62 == 1)
  {
    CollectionViewListDragAndDropController.validIndexPath(in:)(v108, &selRef_numberOfItemsInSection_);
    v63 = v61(v21, 1, v25);
    v64 = v117;
    v65 = v118;
    v66 = v38;
    if (v63 != 1)
    {
      _s7SwiftUI12DropDelegate_pSgWOhTm_0(v21, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    }
  }

  else
  {
    (*(v26 + 32))(v38, v21, v25);
    v64 = v117;
    v65 = v118;
    v66 = v38;
  }

  v67 = v5;
  v68 = *((*v59 & *v5) + 0x60);
  swift_beginAccess();
  v69 = v60[2];
  v69(v64, &v67[v68], v65);
  v70 = v112;
  ShadowListDataSource.sectionIDs.getter(v65, v71, v112);
  v111 = v60[1];
  (v111)(v64, v65);
  v72 = v114;
  v73 = specialized ViewLeafView.platformView.getter(v114);
  (*(v113 + 8))(v70, v72);
  v74 = v73;
  v75 = v66;
  if (IndexPath.section.getter() < v73 && (v114 = IndexPath.row.getter(), v77 = v117, v76 = v118, v69(v117, &v67[v68], v118), v78 = IndexPath.section.getter(), v79 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v76), v80 = v105, ListDiffable.rowIDs(forSectionAtOffset:)(v78, v76, v79), (v111)(v77, v76), v81 = v80, v82 = v107, v83 = ShadowRowCollection.count.getter(v107), (*(v106 + 8))(v81, v82), v84 = v114 < v83, v75 = v116, v84))
  {
    v85 = v110;
    v86 = v102(v119, 1, v110) != 1;
    v58 = CollectionViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:targetsRow:)(v75, v104, v109, v86);
    (*(v115 + 8))(v75, v85);
  }

  else if (v109 || v74 < 1 || (v87 = &v67[v68], v89 = v117, v88 = v118, v69(v117, v87, v118), WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v88), v91 = v105, ListDiffable.rowIDs(forSectionAtOffset:)(0, v88, WitnessTable), (v111)(v89, v88), v92 = v107, swift_getWitnessTable(protocol conformance descriptor for ShadowRowCollection<A>, v107), LOBYTE(v89) = Collection.isEmpty.getter(), (*(v106 + 8))(v91, v92), (v89 & 1) != 0))
  {
    v58 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
    (*(v115 + 8))(v75, v110);
  }

  else
  {
    v94 = v101;
    MEMORY[0x18D0006A0](0, 0);
    v95 = v110;
    v96 = v102(v119, 1, v110) != 1;
    v58 = CollectionViewListDragAndDropController.dropProposal(indexPath:session:isLocalSession:targetsRow:)(v94, v104, 0, v96);
    v97 = *(v115 + 8);
    v97(v94, v95);
    v97(v75, v95);
  }

  return v58;
}

void CollectionViewListDragAndDropController.collectionView(_:performDropWith:)(void *a1, id a2)
{
  v5 = v2;
  v174 = a1;
  v7 = *v2;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v170 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
  v10 = v170[1];
  v11 = *((v9 & v7) + 0xA8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for DropCoordinator(0, TupleTypeMetadata2, v13, v14);
  v178 = *(v15 - 8);
  v179 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v177 = &v165 - v16;
  v172 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v171 = &v165 - v18;
  v188 = TupleTypeMetadata2;
  v21 = type metadata accessor for DropCoordinator.Operation(0, TupleTypeMetadata2, v19, v20);
  v186 = *(v21 - 8);
  v187 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v185 = (&v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v184 = &v165 - v24;
  v167 = v10;
  v168 = v11;
  v26 = type metadata accessor for ShadowListDataSource(0, v11, v10, v25);
  v182 = *(v26 - 8);
  v183 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v181 = &v165 - v27;
  v28 = type metadata accessor for IndexPath();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v169 = &v165 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v173 = &v165 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v175 = &v165 - v37;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v180 = &v165 - v40;
  v41 = [a2 proposal];
  v42 = [v41 operation];

  if (!v42)
  {
    goto LABEL_67;
  }

  v176 = v29;
  v43 = &v5[*((*v8 & *v5) + 0x78)];
  swift_beginAccess();
  if (*v43 || *(v43 + 1) != 1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v45 = Strong;
      v46 = *&v5[*((*v8 & *v5) + 0x98)];
      if (v46)
      {
        v188 = *(v43 + 1);
        v47 = v46;
        a2 = [a2 session];
        v211 = &type metadata for DropInfoAdaptor;
        v212 = &protocol witness table for DropInfoAdaptor;
        v187 = swift_allocObject();
        *&v210 = v187;
        swift_unknownObjectWeakInit();
        v198 = 0;
        swift_unknownObjectWeakAssign();
        v48 = v47;
        v31 = v45;

        [a2 locationInView_];
        v195 = v49;
        v196 = v50;
        v51 = MEMORY[0x1E697DF20];
        v52 = MEMORY[0x1E697DF18];
        type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18]);
        lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, v51, v52);
        if (static SemanticFeature.isEnabled.getter())
        {
          hostingViewCoordinateSpace.getter();
          v194 = 1;
          v53 = *(*v45 + class metadata base offset for UIViewSnapshotResponder + 80);

          v53(v192, v54);

          v189 = v192[0];
          v190 = v192[1];
          v191 = v192[2];
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convert(from:transform:)();

          outlined destroy of CoordinateSpace(&v193);
        }

        v3 = v195;
        v4 = v196;
        v208 = v195;
        v209 = v196;
        v55 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
        if ([a2 localDragSession])
        {
          swift_unknownObjectRelease();
          v56 = 0;
        }

        else
        {
          v56 = 1;
        }

        v136 = [a2 items];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
        v137 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v137 >> 62))
        {
          v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_47:

          if ([swift_unknownObjectRetain() *(v55 + 1840)])
          {
            swift_unknownObjectRelease();
            v139 = &selRef_allowsMoveOperation;
            v140 = 3;
          }

          else
          {
            v139 = &selRef_isRestrictedToDraggingApplication;
            v140 = 4;
          }

          v141 = v187;
          v142 = [a2 *v139];
          swift_unknownObjectRelease();
          if (v142)
          {
            v143 = v140;
          }

          else
          {
            v143 = 1;
          }

          [v48 bounds];
          v145 = v144;
          v147 = v146;

          swift_unknownObjectRelease();

          v199 = a2;
          LOBYTE(v200) = 6;
          v201 = v56;
          v202 = v138;
          v203 = v143;
          v204 = v145;
          v205 = v147;
          v206 = v3;
          v207 = v4;
          outlined init with take of DropInfoAdaptor(&v197, v141 + 16);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v210, v192);
          v148 = *v31;
          v193 = v31;
          (*(v188 + 8))(&v189, v148);
          v149 = *(&v190 + 1);
          if (*(&v190 + 1))
          {
            v150 = v191;
            __swift_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
            (*(v150 + 16))(v192, v149, v150);

            outlined destroy of DropInfo(v192);
            __swift_destroy_boxed_opaque_existential_1(&v189);
          }

          else
          {

            outlined destroy of DropInfo(v192);
            _s7SwiftUI12DropDelegate_pSgWOhTm_0(&v189, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate);
          }

          goto LABEL_67;
        }

LABEL_71:
        v138 = __CocoaSet.count.getter();
        goto LABEL_47;
      }
    }
  }

  v57 = [objc_msgSend(a2 session)];
  swift_unknownObjectRelease();
  v58 = swift_unknownObjectWeakLoadStrong();
  v59 = v58;
  v166 = v28;
  if (v57)
  {
    if (v58)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v60 = v57 != v59;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v58)
  {
LABEL_15:
    swift_unknownObjectRelease();
    v60 = 1;
    goto LABEL_17;
  }

  v60 = 0;
LABEL_17:
  v61 = [a2 items];
  v56 = type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UICollectionViewDropItem, &protocolRef_UICollectionViewDropItem);
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v62 >> 62)
  {
    v63 = __CocoaSet.count.getter();
  }

  else
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v63 != 1 || v60 || v42 != 3)
  {
    v106 = [a2 destinationIndexPath];
    v107 = v176;
    if (v106)
    {
      v108 = v106;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v180 = *(v188 + 48);
      v109 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
      swift_beginAccess();
      v111 = v182;
      v110 = v183;
      v112 = &v5[v109];
      v113 = v181;
      (*(v182 + 16))(v181, v112, v183);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v110);
      v115 = v184;
      v116 = ListDiffable.rowIndex(at:)(v184, v31, v110, WitnessTable);
      v117 = *(v111 + 8);
      v56 = v111 + 8;
      v117(v113, v110);
      (*(v107 + 8))(v31, v166);
      *&v180[v115] = v116;
    }

    else
    {
      v180 = *(v188 + 48);
      v118 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
      swift_beginAccess();
      v119 = v181;
      v120 = v182;
      v31 = v183;
      (*(v182 + 16))(v181, &v5[v118], v183);
      v121 = v173;
      CollectionViewListDragAndDropController.validIndexPath(in:)(v174, &selRef_numberOfItemsInSection_);
      v122 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v31);
      v123 = v171;
      v124 = ListDiffable.rowIndex(at:)(v171, v121, v31, v122);
      (*(v107 + 8))(v121, v166);
      v125 = *(v120 + 8);
      v56 = v120 + 8;
      v125(v119, v31);
      *&v180[v123] = v124;
      v115 = v184;
      (*(v172 + 32))(v184, v123, v188);
    }

    v126 = v187;
    swift_storeEnumTagMultiPayload();
    (*(v186 + 16))(v185, v115, v126);
    v127 = [objc_msgSend(a2 session)];
    swift_unknownObjectRelease();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v48 >> 62)
    {
      v55 = __CocoaSet.count.getter();
      if (v55)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v55 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
LABEL_35:
        *&v192[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v55 < 0)
        {
          goto LABEL_70;
        }

        v128 = 0;
        do
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v129 = MEMORY[0x18D00E9C0](v128, v48);
          }

          else
          {
            v129 = *(v48 + 8 * v128 + 32);
          }

          v130 = v129;
          v128 = (v128 + 1);
          v131 = [v129 itemProvider];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v55 != v128);

        v133 = *&v192[0];
        v115 = v184;
LABEL_66:
        v161 = v177;
        v162 = DropCoordinator.init(operation:items:)(v185, v133, v188, v177, v132);
        v163 = MEMORY[0x1EEE9AC00](v162);
        *(&v165 - 2) = v5;
        *(&v165 - 1) = v161;
        v164(partial apply for closure #4 in CollectionViewListDragAndDropController.collectionView(_:performDropWith:), v163);
        (*(v186 + 8))(v115, v187);
        (*(v178 + 8))(v161, v179);
        goto LABEL_67;
      }
    }

    v133 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

  v55 = [a2 items];
  v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v165 = a2;
  v65 = v176;
  if ((v64 & 0xC000000000000001) == 0)
  {
    v48 = MEMORY[0x1E69E7D40];
    v31 = v180;
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = *(v64 + 32);
      swift_unknownObjectRetain();
      goto LABEL_24;
    }

    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v66 = MEMORY[0x18D00E9C0](0, v64);
  v48 = MEMORY[0x1E69E7D40];
  v31 = v180;
LABEL_24:

  v67 = [v66 sourceIndexPath];
  swift_unknownObjectRelease();
  if (!v67)
  {
LABEL_67:
    $defer #1 <A>() in CollectionViewListDragAndDropController.collectionView(_:performDropWith:)(v5);
    return;
  }

  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = [v165 destinationIndexPath];
  if (!v68)
  {
    (*(v65 + 8))(v31, v166);
    goto LABEL_67;
  }

  v188 = v56;
  v69 = v175;
  v70 = v68;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v71 = *((*v48 & *v5) + 0x60);
  swift_beginAccess();
  v72 = v31;
  v73 = v181;
  v74 = v182;
  v75 = v183;
  (*(v182 + 16))(v181, &v5[v71], v183);
  v76 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v75);
  LOBYTE(v71) = ListCoreDataSource.canMoveCell(fromRowAt:to:)(v72, v69, v75, v76);
  (*(v74 + 8))(v73, v75);
  if ((v71 & 1) == 0)
  {
    v134 = *(v65 + 8);
    v135 = v166;
    v134(v69, v166);
    v134(v72, v135);
    goto LABEL_67;
  }

  v187 = [v174 dataSource];
  v77 = v72;
  if (v187)
  {
    v78 = v168;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v82 = type metadata accessor for SelectionManagerBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v81);
    v83 = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v82);
    v197 = v78;
    v198 = v82;
    v199 = v170;
    v200 = v83;
    type metadata accessor for UICollectionViewListCoordinatorBase(0, &v197);
    v84 = swift_dynamicCastClass();
    v85 = v165;
    if (v84)
    {
      v86 = *((*MEMORY[0x1E69E7D40] & *v84) + 0xD8);
      LODWORD(v186) = *(v84 + v86);
      *(v84 + v86) = 1;
      v87 = *(v65 + 16);
      v88 = v77;
      v89 = v84;
      v185 = v84;
      v90 = v173;
      v91 = v166;
      v87(v173, v88, v166);
      v87(v169, v175, v91);
      v92 = *(v176 + 80);
      v93 = (v92 + 40) & ~v92;
      v94 = (v30 + v92 + v93) & ~v92;
      v95 = swift_allocObject();
      v96 = v170;
      *(v95 + 2) = v78;
      *(v95 + 3) = v96;
      *(v95 + 4) = v89;
      v97 = *(v176 + 32);
      v97(&v95[v93], v90, v91);
      v97(&v95[v94], v169, v91);
      v98 = v174;
      *&v95[(v30 + v94 + 7) & 0xFFFFFFFFFFFFFFF8] = v174;
      v99 = swift_allocObject();
      v100 = partial apply for closure #1 in CollectionViewListDragAndDropController.collectionView(_:performDropWith:);
      *(v99 + 16) = partial apply for closure #1 in CollectionViewListDragAndDropController.collectionView(_:performDropWith:);
      *(v99 + 24) = v95;
      v201 = partial apply for thunk for @callee_guaranteed () -> ();
      v202 = v99;
      v197 = MEMORY[0x1E69E9820];
      v198 = 1107296256;
      v199 = thunk for @escaping @callee_guaranteed () -> ();
      v200 = &block_descriptor_19;
      v101 = _Block_copy(&v197);
      swift_unknownObjectRetain();
      v102 = v98;

      v103 = swift_allocObject();
      *(v103 + 16) = v185;
      *(v103 + 24) = v186;
      v201 = partial apply for closure #2 in CollectionViewListDragAndDropController.collectionView(_:performDropWith:);
      v202 = v103;
      v197 = MEMORY[0x1E69E9820];
      v198 = 1107296256;
      v77 = v180;
      v199 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v200 = &block_descriptor_17;
      v104 = _Block_copy(&v197);
      swift_unknownObjectRetain();
      v65 = v176;

      [v102 performBatchUpdates:v101 completion:v104];
      _Block_release(v104);
      v105 = v101;
      v85 = v165;
      _Block_release(v105);
    }

    else
    {
      v100 = 0;
      v95 = 0;
    }

    v151 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0;
    v95 = 0;
    v151 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    v85 = v165;
  }

  v152 = [v85 v151[232]];
  v153 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v153 & 0xC000000000000001) != 0)
  {
    v155 = MEMORY[0x18D00E9C0](0, v153);
    v154 = v175;
    goto LABEL_62;
  }

  v154 = v175;
  if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v155 = *(v153 + 32);
    swift_unknownObjectRetain();
LABEL_62:

    v156 = [v155 dragItem];
    swift_unknownObjectRelease();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v158 = [v165 dropItem:v156 toItemAtIndexPath:isa];
    swift_unknownObjectRelease();

    v159 = *(v65 + 8);
    v160 = v166;
    v159(v154, v166);
    v159(v77, v160);
    $defer #1 <A>() in CollectionViewListDragAndDropController.collectionView(_:performDropWith:)(v5);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v100, v95);
    return;
  }

  __break(1u);
}