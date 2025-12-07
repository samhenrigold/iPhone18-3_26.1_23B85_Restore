void specialized closure #1 in DynamicBody.updateValue()(double *a1, uint64_t a2, char *a3, uint64_t (*a4)(void), void (*a5)(void, double, double))
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v33 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v33) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v12 = 1;
  }

  else
  {
    v12 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v12;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v17 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v6 = v17;
    swift_once();
    v17 = v6;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    v6 = a5;
    if (v15 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v31 - v19;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      a5 = v6;
LABEL_13:
      v24 = -v23;
      while ((v15 + v24) | v22)
      {
        if (!v13)
        {
          goto LABEL_39;
        }

        v26 = v13 + v22;
        if (v15 + v24 == 1)
        {
          v22 = 0;
        }

        else
        {
          v22 += *(v26 + 8);
        }

        v25 = *(v26 + 12);
        --v24;
        if (v25 < 0)
        {
          *&v20[8 * v21] = v25 & 0x7FFFFFFF;
          v23 = -v24;
          if (!__OFADD__(v21++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v21 < 0)
      {
        __break(1u);
      }

      else
      {
        v28 = *(v18 + 616);
        if (*(v28 + 16) >= 0x45uLL)
        {
          if (*(v28 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v34 = v20;
              v35 = v21;
              v36 = OutputValue != 0;
              v37 = v17;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
              v17 = AGGraphAddTraceEvent();
            }
          }

LABEL_28:
          if ((*a3 & 1) == 0)
          {
            return;
          }

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v32 = v17;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v17 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v31) = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v15, v13, v14 | (v15 << 32), SBYTE4(v31), v32, 7);
  if (v5)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  v17 = MEMORY[0x193AC4820](v30, -1, -1);
  a5 = v6;
  if (*a3)
  {
LABEL_29:
    a5(v17, *a1, a1[1]);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(uint64_t a1, unsigned int *a2, char *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v38 = *(a2 + 4);
  v39 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v37 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v37) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = *a1;
      v30 = *(a1 + 16);
      v31 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v32, v30, v31, v26, v27, v28, v29);

      return;
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v35 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v20;
      while ((v11 + v21) | v19)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v19;
        if (v11 + v21 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v18] = v22 & 0x7FFFFFFF;
          v20 = -v21;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v38 = v17;
              v39 = v18;
              v40 = OutputValue != 0;
              v41 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v36 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v36;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v35) = OutputValue != 0;
  v34 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v34, v11, v9, v10 | (v11 << 32), SBYTE4(v35), v36, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v34, -1, -1);
    goto LABEL_28;
  }

  MEMORY[0x193AC4820](v34, -1, -1);
  __break(1u);
}

void specialized closure #1 in DynamicBody.updateValue()(uint64_t a1, uint64_t a2, char *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  v30 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v30) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_39;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1)
        {
          if (static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v31 = v15;
            v32 = v16;
            v33 = OutputValue != 0;
            v34 = v13;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }
        }

LABEL_28:
        if ((*a3 & 1) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v29 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v29;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v25 = v9;
  v26 = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v25 | (v10 << 32), v26, v29, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
  if (*a3)
  {
LABEL_29:
    specialized closure #1 in GestureBodyAccessor.updateBody(of:changed:)();
  }
}

{
  v36 = *MEMORY[0x1E69E9840];
  v32 = *(a2 + 8);
  v33 = *(a2 + 16);
  v31 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v31) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = v12;
    swift_once();
    v12 = v26;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v29 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v32 = v15;
          v33 = v18;
          v34 = OutputValue != 0;
          v35 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = OutputValue != 0;
  v28 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v28, v10, v8, v9 | (v10 << 32), v29, v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v28, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v28, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 8);
    v24 = *a1;
    v25 = *(a1 + 9);
    outlined copy of Environment<ButtonSizing>.Content(v24, v23);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v24, v23 | (v25 << 8));
    outlined consume of Environment<ButtonSizing>.Content(v24, v23);
  }
}

{
  v5 = v3;
  v45 = *MEMORY[0x1E69E9840];
  v39 = *(a2 + 8);
  LODWORD(v35[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v35) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v33 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v20;
      while ((v12 + v22) | v19)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v19;
        if (v12 + v22 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v21] = v23 & 0x7FFFFFFF;
          v20 = -v22;
          if (!__OFADD__(v21++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v21 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            *&v39 = v18;
            *(&v39 + 1) = v21;
            LOBYTE(v40) = v5 != 0;
            BYTE1(v40) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v33) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v33);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v32 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v32, v12, v10, v11 | (v12 << 32), v5 != 0, SBYTE4(v33), 7);
  if (v4)
  {

    MEMORY[0x193AC4820](v32, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v32, -1, -1);
LABEL_28:
  v27 = *(a1 + 32);
  v28 = *(a1 + 64);
  v36 = *(a1 + 48);
  v37 = v28;
  v38 = *(a1 + 80);
  v29 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v29;
  v35[2] = v27;
  v30 = *a3;
  v39 = v35[0];
  v40 = v29;
  v41 = v27;
  v42 = v36;
  v43 = v28;
  v44 = v38;
  if (v30 == 1)
  {
    outlined init with copy of SafeAreaPaddingModifier(v35, &v34);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v39);
    outlined destroy of SafeAreaPaddingModifier(v35);
  }
}

{
  v36 = *MEMORY[0x1E69E9840];
  v32 = *(a2 + 8);
  v31 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v31) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = v12;
    swift_once();
    v12 = v26;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v29 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v32 = v15;
          *(&v32 + 1) = v18;
          LOBYTE(v33) = OutputValue != 0;
          BYTE1(v33) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v29) = OutputValue != 0;
  v28 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v28, v10, v8, v9 | (v10 << 32), SBYTE4(v29), v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v28, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v28, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 40);
    v24 = *(a1 + 32);
    v25 = *(a1 + 16);
    v32 = *a1;
    v33 = v25;
    v34 = v24;
    v35 = v23;
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v32);
  }
}

{
  v35 = *MEMORY[0x1E69E9840];
  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  v30 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v30) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v31 = v15;
          v32 = v18;
          v33 = OutputValue != 0;
          v34 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v29 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v29;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v25 = v9;
  v26 = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v25 | (v10 << 32), v26, v29, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)();
  }
}

{
  v38 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v33 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>, &type metadata for Text), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>, &type metadata for Text);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v28 = v12;
    swift_once();
    v12 = v28;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v31 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v34 = v15;
          v35 = v18;
          v36 = OutputValue != 0;
          v37 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v32 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v31 = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v10, v8, v9 | (v10 << 32), v31, v32, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 24);
    v24 = *(a1 + 16);
    v27 = a1;
    v25 = *a1;
    v26 = *(v27 + 8);
    outlined copy of Text.Storage(v25, v26, v24);

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25, v26, v24, v23);
    outlined consume of Text.Storage(v25, v26, v24);
  }
}

{
  v33 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v29 = v15;
          v30 = v18;
          v31 = OutputValue != 0;
          v32 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), SBYTE4(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*(a1 + 16), *a1, *(a1 + 8));
  }
}

{
  v33 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v29 = v15;
          v30 = v18;
          v31 = OutputValue != 0;
          v32 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), SBYTE4(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*(a1 + 16), *a1, *(a1 + 8), *(a1 + 24));
  }
}

void specialized closure #1 in DynamicBody.updateValue()(unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v29 = v15;
          v30 = v18;
          v31 = OutputValue != 0;
          v32 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), SBYTE4(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(*a1);
  }
}

{
  v37 = *MEMORY[0x1E69E9840];
  v33 = *(a2 + 8);
  v34 = *(a2 + 16);
  v32 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v27 = v12;
    swift_once();
    v12 = v27;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v30 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v33 = v15;
          v34 = v18;
          v35 = OutputValue != 0;
          v36 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v30) = OutputValue != 0;
  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v10, v8, v9 | (v10 << 32), SBYTE4(v30), v31, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 2);
    v24 = *a1;
    v25 = *(a1 + 1);
    v26 = v23;
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v24, v25, v26);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(double *a1, unsigned int *a2, char *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v38 = *(a2 + 4);
  v39 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v37 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v37) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = a1[1];
      v30 = a1[2];
      v31 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v32, v31, v26, v27, v28, v29, v30);

      return;
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v35 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v19;
      while ((v11 + v21) | v18)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v18;
        if (v11 + v21 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v20] = v22 & 0x7FFFFFFF;
          v19 = -v21;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v38 = v17;
              v39 = v20;
              v40 = OutputValue != 0;
              v41 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v36 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v36;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v35) = OutputValue != 0;
  v34 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v34, v11, v9, v10 | (v11 << 32), SBYTE4(v35), v36, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v34, -1, -1);
    goto LABEL_28;
  }

  MEMORY[0x193AC4820](v34, -1, -1);
  __break(1u);
}

{
  v41 = *MEMORY[0x1E69E9840];
  v37 = *(a2 + 4);
  v38 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v36 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v36) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = a1[1];
      v30 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v31, v30, v26, v27, v28, v29);

      return;
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v34 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v19;
      while ((v11 + v21) | v18)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v18;
        if (v11 + v21 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v20] = v22 & 0x7FFFFFFF;
          v19 = -v21;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v37 = v17;
              v38 = v20;
              v39 = OutputValue != 0;
              v40 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v35 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v35;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v34) = OutputValue != 0;
  v33 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v33, v11, v9, v10 | (v11 << 32), SBYTE4(v34), v35, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v33, -1, -1);
    goto LABEL_28;
  }

  MEMORY[0x193AC4820](v33, -1, -1);
  __break(1u);
}

{
  v43 = *MEMORY[0x1E69E9840];
  v39 = *(a2 + 4);
  v40 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v38 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v38) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = a1[1];
      v30 = a1[2];
      v31 = a1[3];
      v32 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v33, v32, v26, v27, v28, v29, v30, v31);

      return;
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v36 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v19;
      while ((v11 + v21) | v18)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v18;
        if (v11 + v21 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v20] = v22 & 0x7FFFFFFF;
          v19 = -v21;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v39 = v17;
              v40 = v20;
              v41 = OutputValue != 0;
              v42 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v37 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v37;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v36) = OutputValue != 0;
  v35 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v35, v11, v9, v10 | (v11 << 32), SBYTE4(v36), v37, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v35, -1, -1);
    goto LABEL_28;
  }

  MEMORY[0x193AC4820](v35, -1, -1);
  __break(1u);
}

void specialized closure #1 in DynamicBody.updateValue()(uint64_t *a1, unsigned int *a2, char *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = *(a2 + 4);
  v37 = *(a2 + 5);

  v7 = *AGGraphGetValue();

  v35 = v7;
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v35) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v8 = 1;
  }

  else
  {
    v8 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v8;
  v9 = *(a2 + 4);
  v10 = a2[10];
  v11 = a2[11];
  OutputValue = AGGraphGetOutputValue();
  v13 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v13;
    swift_once();
    v13 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
LABEL_28:
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 16);
      v29 = *a3;

      specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v30, v29, v26, v27, v28);

      return;
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v7 = v3;
    if (v11 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v33 - v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_13:
      v21 = -v19;
      while ((v11 + v21) | v18)
      {
        if (!v9)
        {
          goto LABEL_36;
        }

        v23 = v9 + v18;
        if (v11 + v21 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 += *(v23 + 8);
        }

        v22 = *(v23 + 12);
        --v21;
        if (v22 < 0)
        {
          *&v17[8 * v20] = v22 & 0x7FFFFFFF;
          v19 = -v21;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v25 = *(v15 + 616);
        if (*(v25 + 16) >= 0x45uLL)
        {
          if (*(v25 + 100) == 1)
          {
            if (static CustomEventTrace.recorder)
            {
              *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
              v36 = v17;
              v37 = v20;
              v38 = OutputValue != 0;
              v39 = v14;
              type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
              AGGraphAddTraceEvent();
            }
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  v34 = v13;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v13 = v34;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v33) = OutputValue != 0;
  v32 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v32, v11, v9, v10 | (v11 << 32), SBYTE4(v33), v34, 7);
  if (!v7)
  {
    MEMORY[0x193AC4820](v32, -1, -1);
    goto LABEL_28;
  }

  MEMORY[0x193AC4820](v32, -1, -1);
  __break(1u);
}

void specialized closure #1 in DynamicBody.updateValue()(uint64_t a1, uint64_t a2, char *a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(void))
{
  v34 = a6;
  v40 = *MEMORY[0x1E69E9840];
  v36 = *(a2 + 8);
  v37 = *(a2 + 16);
  v35 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v35) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v12 = 1;
  }

  else
  {
    v12 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v12;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v17 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v28 = v17;
    swift_once();
    v17 = v28;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v15 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v31 - v19;
      v21 = 0;
      v22 = 0;
      v23 = 0;
LABEL_13:
      v24 = -v22;
      while ((v15 + v24) | v21)
      {
        if (!v13)
        {
          goto LABEL_38;
        }

        v26 = v13 + v21;
        if (v15 + v24 == 1)
        {
          v21 = 0;
        }

        else
        {
          v21 += *(v26 + 8);
        }

        v25 = *(v26 + 12);
        --v24;
        if (v25 < 0)
        {
          *&v20[8 * v23] = v25 & 0x7FFFFFFF;
          v22 = -v24;
          if (!__OFADD__(v23++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v36 = v20;
          v37 = v23;
          v38 = OutputValue != 0;
          v39 = v18;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v33 = v17;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v17 = v33;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v32 = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v15, v13, v14 | (v15 << 32), v32, v33, 7);
  if (v6)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(a5, v34);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(double *a1, uint64_t a2, char *a3, uint64_t (*a4)(void), uint64_t a5, double *a6)
{
  v36 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v38 = *(a2 + 8);
  v39 = *(a2 + 16);
  v37 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v37) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v13 = 1;
  }

  else
  {
    v13 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v13;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v18 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = v18;
    swift_once();
    v18 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v7 = a1;
    a1 = a6;
    if (v16 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v18);
      v22 = &v33 - v21;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      a6 = a1;
      a1 = v7;
LABEL_13:
      v26 = -v24;
      while ((v16 + v26) | v23)
      {
        if (!v14)
        {
          goto LABEL_38;
        }

        v28 = v14 + v23;
        if (v16 + v26 == 1)
        {
          v23 = 0;
        }

        else
        {
          v23 += *(v28 + 8);
        }

        v27 = *(v28 + 12);
        --v26;
        if (v27 < 0)
        {
          *&v22[8 * v25] = v27 & 0x7FFFFFFF;
          v24 = -v26;
          if (!__OFADD__(v25++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v25 < 0)
      {
        __break(1u);
      }

      else
      {
        v30 = *(v20 + 616);
        if (*(v30 + 16) >= 0x45uLL)
        {
          if (*(v30 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v38 = v22;
            v39 = v25;
            v40 = OutputValue != 0;
            v41 = v19;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v35 = v18;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v18 = v35;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v34 = OutputValue != 0;
  v32 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v32, v16, v14, v15 | (v16 << 32), v34, v35, 7);
  if (v6)
  {

    MEMORY[0x193AC4820](v32, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v32, -1, -1);
  a6 = a1;
  a1 = v7;
LABEL_28:
  if (*a3 == 1)
  {
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v36, a6, *a1);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(uint64_t *a1, uint64_t a2, char *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v33 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v33) & 1) != 0 || (*a3 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v28 = v12;
    swift_once();
    v12 = v28;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v31 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v34 = v15;
          v35 = v18;
          v36 = OutputValue != 0;
          v37 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v32 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v31) = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v10, v8, v9 | (v10 << 32), SBYTE4(v31), v32, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = a1[2];
    v24 = a1[3];
    v27 = a1;
    v25 = *a1;
    v26 = v27[1];

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25, v26, v23, v24);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(char **a1, uint64_t a2, char *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v33 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<Path, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v28 = v12;
    swift_once();
    v12 = v28;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v31 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v34 = v15;
          v35 = v18;
          LOBYTE(v36) = OutputValue != 0;
          BYTE1(v36) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v32 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v31) = OutputValue != 0;
  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v10, v8, v9 | (v10 << 32), SBYTE4(v31), v32, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v24 = a1[2];
    v23 = a1[3];
    v25 = a1[1];
    v34 = *a1;
    v26 = v34;
    v35 = v25;
    v36 = v24;
    v37 = v23;
    v27 = *(a1 + 32);
    v38 = v27;
    outlined copy of Path.Storage(v34, v25, v24, v23, v27);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v34);
    outlined consume of Path.Storage(v26, v25, v24, v23, v27);
  }
}

{
  v32 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  *&v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v29 = v15;
          *&v30 = v18;
          BYTE8(v30) = OutputValue != 0;
          BYTE9(v30) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), SBYTE4(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v29 = *a1;
    v30 = *(a1 + 1);
    v31 = *(a1 + 3);

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v29);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(unsigned __int8 *a1, uint64_t a2, char *a3, uint64_t (*a4)(void), unsigned __int8 *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = *(a2 + 8);
  v37 = *(a2 + 16);
  v35 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v35) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v12 = 1;
  }

  else
  {
    v12 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v12;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v17 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v6 = v17;
    swift_once();
    v17 = v6;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v6 = a1;
    a1 = a5;
    if (v15 < 129)
    {
LABEL_12:
      v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
      v22 = &v33 - v21;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      a5 = a1;
      a1 = v6;
LABEL_13:
      v26 = -v24;
      while ((v15 + v26) | v23)
      {
        if (!v13)
        {
          goto LABEL_38;
        }

        v28 = v13 + v23;
        if (v15 + v26 == 1)
        {
          v23 = 0;
        }

        else
        {
          v23 += *(v28 + 8);
        }

        v27 = *(v28 + 12);
        --v26;
        if (v27 < 0)
        {
          *&v22[8 * v25] = v27 & 0x7FFFFFFF;
          v24 = -v26;
          if (!__OFADD__(v25++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v25 < 0)
      {
        __break(1u);
      }

      else
      {
        v30 = *(v20 + 616);
        if (*(v30 + 16) >= 0x45uLL)
        {
          if (*(v30 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v36 = v22;
            v37 = v25;
            v38 = OutputValue != 0;
            v39 = v19;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v34 = v17;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v17 = v34;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v33) = OutputValue != 0;
  v32 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v32, v15, v13, v14 | (v15 << 32), SBYTE4(v33), v34, 7);
  if (v5)
  {

    MEMORY[0x193AC4820](v32, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v32, -1, -1);
  a5 = a1;
  a1 = v6;
LABEL_28:
  if (*a3 == 1)
  {
    (a5)(*a1, v18);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(const void *a1, uint64_t a2, char *a3)
{
  v30[48] = *MEMORY[0x1E69E9840];
  v30[0] = *(a2 + 8);
  v30[1] = *(a2 + 16);
  v29 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v29) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v6 = 1;
  }

  else
  {
    v6 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v6;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v11 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v22 = v11;
    swift_once();
    v11 = v22;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v9 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v11);
      v14 = &v25 - v13;
      v15 = 0;
      v16 = 0;
      v17 = 0;
LABEL_13:
      v18 = -v16;
      while ((v9 + v18) | v15)
      {
        if (!v7)
        {
          goto LABEL_38;
        }

        v20 = v7 + v15;
        if (v9 + v18 == 1)
        {
          v15 = 0;
        }

        else
        {
          v15 += *(v20 + 8);
        }

        v19 = *(v20 + 12);
        --v18;
        if (v19 < 0)
        {
          *&v14[8 * v17] = v19 & 0x7FFFFFFF;
          v16 = -v18;
          if (!__OFADD__(v17++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v17 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v30[0] = v14;
          v30[1] = v17;
          LOBYTE(v30[2]) = OutputValue != 0;
          BYTE1(v30[2]) = v12;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v27 = v11;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v11 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v26 = OutputValue != 0;
  v24 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v24, v9, v7, v8 | (v9 << 32), v26, v27, 7);
  if (v28)
  {

    MEMORY[0x193AC4820](v24, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v24, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    memcpy(v30, a1, 0x180uLL);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v30);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(char **a1, uint64_t a2, char *a3, uint64_t (*a4)(void), uint64_t a5, unint64_t *a6, void (*a7)(void))
{
  v37 = a5;
  v38 = a6;
  v43 = *MEMORY[0x1E69E9840];
  v40 = *(a2 + 8);
  *&v41 = *(a2 + 16);
  v39 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v39) & 1) != 0 || (*a3 & 1) != 0 || (a4(0), !AGGraphGetOutputValue()))
  {
    v13 = 1;
  }

  else
  {
    v13 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v13;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 20);
  a4(0);
  OutputValue = AGGraphGetOutputValue();
  v18 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v29 = a7;
    v30 = v18;
    swift_once();
    v18 = v30;
    a7 = v29;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v36 = a7;
    if (v16 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v18);
      v21 = &v34 - v20;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      a7 = v36;
LABEL_13:
      v25 = -v23;
      while ((v16 + v25) | v22)
      {
        if (!v14)
        {
          goto LABEL_38;
        }

        v27 = v14 + v22;
        if (v16 + v25 == 1)
        {
          v22 = 0;
        }

        else
        {
          v22 += *(v27 + 8);
        }

        v26 = *(v27 + 12);
        --v25;
        if (v26 < 0)
        {
          *&v21[8 * v24] = v26 & 0x7FFFFFFF;
          v23 = -v25;
          if (!__OFADD__(v24++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v24 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v40 = v21;
          *&v41 = v24;
          BYTE8(v41) = OutputValue != 0;
          BYTE9(v41) = v19;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          a7 = v36;
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v35 = v18;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v18 = v35;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v32 = OutputValue != 0;
  v33 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v33, v16, v14, v15 | (v16 << 32), v32, v35, 7);
  if (v7)
  {

    MEMORY[0x193AC4820](v33, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v33, -1, -1);
  a7 = v36;
LABEL_28:
  if (*a3 == 1)
  {
    v40 = *a1;
    v41 = *(a1 + 1);
    v42 = *(a1 + 3);

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v40, v37, v38, a7);
  }
}

uint64_t specialized LazyLayoutComputer.updateValue()()
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = *(v0 + 4);
    v4 = *(v0 + 12);
    Value = AGGraphGetValue();
    v6 = *(Value + 8);
    v17 = *Value;
    v16 = v6;
    v7 = *(Value + 16);
    HIDWORD(v15) = *(Value + 20);
    type metadata accessor for LazyLayoutViewCache();
    v8 = *AGGraphGetValue();

    v9 = AGGraphGetValue();
    v18 = &v15;
    v10 = *(*v9 + 320);
    v11 = *(*v9 + 328);
    v19 = 1;
    v20 = v7;
    v21 = v17;
    v22 = v6;
    v23 = v7;
    v12 = HIDWORD(v15);
    v24 = HIDWORD(v15);
    v25 = v2;
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v8;
    v30 = v10;
    v31 = v11;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v43 = 1;
    MEMORY[0x1EEE9AC00](v9);
    MEMORY[0x1EEE9AC00](v13);
    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v14, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
    v21 = v17;
    v22 = v16;
    v23 = v7;
    v24 = v12;
    v25 = v2;
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v8;
    v30 = v10;
    v31 = v11;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 1;
    return outlined destroy of LazyLayoutComputer<LazyHStackLayout>.Engine(&v21);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = *(v0 + 4);
    v4 = *(v0 + 12);
    Value = AGGraphGetValue();
    v6 = *(Value + 8);
    v17 = *Value;
    v16 = v6;
    v7 = *(Value + 16);
    HIDWORD(v15) = *(Value + 20);
    type metadata accessor for LazyLayoutViewCache();
    v8 = *AGGraphGetValue();

    v9 = AGGraphGetValue();
    v18 = &v15;
    v10 = *(*v9 + 320);
    v11 = *(*v9 + 328);
    v19 = 1;
    v20 = v7;
    v21 = v17;
    v22 = v6;
    v23 = v7;
    v12 = HIDWORD(v15);
    v24 = HIDWORD(v15);
    v25 = v2;
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v8;
    v30 = v10;
    v31 = v11;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v43 = 1;
    MEMORY[0x1EEE9AC00](v9);
    MEMORY[0x1EEE9AC00](v13);
    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v14, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
    v21 = v17;
    v22 = v16;
    v23 = v7;
    v24 = v12;
    v25 = v2;
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v8;
    v30 = v10;
    v31 = v11;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 1;
    return outlined destroy of LazyLayoutComputer<LazyVStackLayout>.Engine(&v21);
  }

  return result;
}

uint64_t specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter()
{
  AGGraphClearUpdate();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, &v5);
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  AGGraphSetUpdate();
  v1 = *(&v6 + 1);
  if (*(&v6 + 1))
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    v3 = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(&v5);
  }

  else
  {
    outlined destroy of ViewList?(&v5, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
    v3 = 1;
  }

  return v3 & 1;
}

void specialized LazySubviewPlacements.updateValue()()
{
  v9 = v0;
  v220 = *MEMORY[0x1E69E9840];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue() || !AGGraphHasDeadlinePassed())
  {
    type metadata accessor for LazyLayoutViewCache();
    v10 = *AGGraphGetValue();
    swift_beginAccess();
    v11 = *AGGraphGetValue() >> 1;
    LODWORD(v167) = *(v9 + 452);
    if (LODWORD(v167) != v11)
    {
      *(v9 + 452) = v11;
      LOBYTE(v10) = 1;
      LOBYTE(v196) = 1;
      v12 = *(v9 + 408);
      *&v209[80] = *(v9 + 392);
      *&v209[96] = v12;
      *&v209[112] = *(v9 + 424);
      *&v209[121] = *(v9 + 433);
      v13 = *(v9 + 344);
      *&v209[16] = *(v9 + 328);
      *&v209[32] = v13;
      v14 = *(v9 + 376);
      *&v209[48] = *(v9 + 360);
      *&v209[64] = v14;
      v15 = *(v9 + 280);
      v206 = *(v9 + 264);
      v207 = v15;
      v16 = *(v9 + 312);
      v208 = *(v9 + 296);
      *v209 = v16;
      outlined destroy of PositionState(&v206);
      *(v9 + 264) = 0;
      *(v9 + 272) = 0u;
      *(v9 + 288) = 0u;
      *(v9 + 304) = 0u;
      *(v9 + 320) = 0u;
      *(v9 + 336) = 0u;
      *(v9 + 352) = 0u;
      *(v9 + 368) = 0u;
      *(v9 + 384) = 0u;
      *(v9 + 400) = 0u;
      *(v9 + 416) = 0u;
      *(v9 + 432) = 0u;
      *(v9 + 448) = 1;
      v1 = *MEMORY[0x1E695F050];
      v2 = *(MEMORY[0x1E695F050] + 8);
      v3 = *(MEMORY[0x1E695F050] + 16);
      v4 = *(MEMORY[0x1E695F050] + 24);
      v17 = *(v9 + 96);
      v18 = *(v9 + 112);
      v19 = *(v9 + 144);
      v198 = *(v9 + 128);
      v199 = v19;
      v196 = v17;
      v197 = v18;
      v20 = *(v9 + 160);
      v21 = *(v9 + 176);
      v22 = *(v9 + 192);
      LODWORD(v202) = *(v9 + 208);
      r1.origin = v21;
      r1.size = v22;
      v200 = v20;
      outlined destroy of PlacementState(&v196);
      v23 = MEMORY[0x1E69E7CC0];
      *(v9 + 96) = MEMORY[0x1E69E7CC0];
      *(v9 + 104) = v23;
      *(v9 + 112) = v1;
      *(v9 + 120) = v2;
      *(v9 + 128) = v3;
      *(v9 + 136) = v4;
      *(v9 + 144) = v1;
      *(v9 + 152) = v2;
      *(v9 + 160) = v3;
      *(v9 + 168) = v4;
      *(v9 + 176) = v1;
      *(v9 + 184) = v2;
      *(v9 + 192) = v3;
      *(v9 + 200) = v4;
      *(v9 + 208) = 0;

      *(v9 + 256) = 0;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0;
    }

    Value = AGGraphGetValue();
    v25 = 0;
    if (*(*Value + 341) == 1)
    {
      v25 = *(AGGraphGetValue() + 20);
    }

    v165 = v25;
    HIDWORD(v136) = *(v9 + 12);
    v26 = AGGraphGetValue();
    v166 = v27;
    v29 = *v26;
    v28 = *(v26 + 8);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v31 = CurrentAttribute;
      v164 = v11;
      v137 = *MEMORY[0x1E698D3F8];
      v33 = *(v26 + 32);
      v32 = *(v26 + 40);
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      v36 = *(v9 + 16);
      v162 = *(v9 + 36);
      v37 = *(v9 + 8);
      type metadata accessor for CGPoint(0);

      LODWORD(v136) = v37;
      v38 = AGGraphGetValue();
      v173 = *v38;
      v170 = v38[1];
      v39 = AGGraphGetValue();
      r2 = *v39;
      limit = v39[1];

      AGGraphGetValue();

      v40 = *AGGraphGetValue();

      v41 = *(AGGraphGetValue() + 20);
      AGGraphGetValue();

      v42 = *AGGraphGetValue();

      v43 = v33 - (v173 - v35);
      v206 = 0u;
      v207 = 0u;
      v44 = v32 - (v170 - v34);
      v208 = 0u;
      memset(v209, 0, 64);
      v209[64] = 1;
      *&v196 = v29;
      *(&v196 + 1) = v28;
      *&v197 = v173;
      *(&v197 + 1) = v170;
      *&v198 = v43;
      *(&v198 + 1) = v44;
      specialized ViewTransform.forEach(inverted:_:)(0, &v196, &v206, 0.0);
      v45 = *&v207;
      if (v209[64])
      {
        v45 = r2;
      }

      v155 = v45;
      if (v209[64])
      {
        v46 = limit;
      }

      else
      {
        v46 = *(&v207 + 1);
      }

      v154 = v46;
      v47 = 0.0;
      if (v209[64])
      {
        v48 = 0.0;
      }

      else
      {
        v48 = *&v208;
      }

      if (v209[64])
      {
        v49 = 0.0;
      }

      else
      {
        v49 = *(&v208 + 1);
      }

      v151 = v49;
      v152 = v48;
      if (v209[64])
      {
        v50 = 0.0;
      }

      else
      {
        v50 = *v209;
      }

      if (v209[64])
      {
        v51 = 0.0;
      }

      else
      {
        v51 = *&v209[8];
      }

      v149 = v51;
      v150 = v50;
      if (v209[64])
      {
        v52 = r2;
      }

      else
      {
        v52 = *&v209[48];
      }

      if (v209[64])
      {
        v53 = limit;
      }

      else
      {
        v53 = *&v209[56];
      }

      recta = v53;
      v160 = v52;
      if (v209[64])
      {
        v54 = 0.0;
      }

      else
      {
        v54 = *&v209[40];
      }

      if (v209[64])
      {
        v55 = 0.0;
      }

      else
      {
        v55 = *&v209[32];
      }

      if (v209[64])
      {
        v56 = r2;
      }

      else
      {
        v56 = *&v209[16];
      }

      if (v209[64])
      {
        v57 = limit;
      }

      else
      {
        v57 = *&v209[24];
      }

      if (v209[64])
      {
        v58 = 0.0;
      }

      else
      {
        v58 = *&v206;
      }

      if (v209[64])
      {
        v59 = 0.0;
      }

      else
      {
        v59 = *(&v206 + 1);
      }

      v146 = v57;
      v147 = v56;
      v145 = v59;
      if (v40 == 1)
      {
        v60 = v58;
        v61 = v59;
        v62 = r2 - CGRectGetMaxX(*(&v56 - 2));
        v148 = v55 + v62 - v58;
        v153 = v54 + v59 - v59;
        v58 = v62;
      }

      else
      {
        v148 = v55;
        v153 = v54;
      }

      memset(v209, 0, 64);
      v208 = 0u;
      v207 = 0u;
      v206 = 0u;
      v209[64] = 1;
      *&v196 = v29;
      *(&v196 + 1) = v28;
      *&v197 = v173;
      *(&v197 + 1) = v170;
      *&v198 = v43;
      *(&v198 + 1) = v44;
      specialized ViewTransform.forEach(inverted:_:)(0, &v196, &v206, v170);
      v63 = *&v207;
      if (v209[64])
      {
        v63 = r2;
      }

      v142 = v63;
      if (v209[64])
      {
        v64 = limit;
      }

      else
      {
        v64 = *(&v207 + 1);
      }

      if (v209[64])
      {
        v65 = 0.0;
      }

      else
      {
        v65 = *&v208;
      }

      if (v209[64])
      {
        v66 = 0.0;
      }

      else
      {
        v66 = *(&v208 + 1);
      }

      v140 = v66;
      v141 = v65;
      if (v209[64])
      {
        v67 = 0.0;
      }

      else
      {
        v67 = *v209;
      }

      if (v209[64])
      {
        v68 = 0.0;
      }

      else
      {
        v68 = *&v209[8];
      }

      v138 = v68;
      v139 = v67;
      if (v209[64])
      {
        v69 = r2;
      }

      else
      {
        v69 = *&v209[48];
      }

      if (v209[64])
      {
        v70 = limit;
      }

      else
      {
        v70 = *&v209[56];
      }

      v143 = v70;
      v144 = v69;
      if (v209[64])
      {
        v71 = 0.0;
      }

      else
      {
        v71 = *&v209[40];
      }

      if (v209[64])
      {
        v72 = 0.0;
      }

      else
      {
        v72 = *&v209[32];
      }

      if (v209[64])
      {
        v73 = r2;
      }

      else
      {
        v73 = *&v209[16];
      }

      if (v209[64])
      {
        v74 = limit;
      }

      else
      {
        v74 = *&v209[24];
      }

      if (v209[64])
      {
        v75 = 0.0;
      }

      else
      {
        v75 = *&v206;
      }

      if ((v209[64] & 1) == 0)
      {
        v47 = *(&v206 + 1);
      }

      if (v40)
      {
        v222.origin.x = v75;
        v222.origin.y = v47;
        v222.size.width = v73;
        v222.size.height = v74;
        v76 = r2 - CGRectGetMaxX(v222);
        v72 = v72 + v76 - v75;
        v71 = v71 + v47 - v47;
        v75 = v76;
      }

      LODWORD(v206) = v31;
      *(&v206 + 4) = __PAIR64__(v36, v31);
      HIDWORD(v206) = v162;
      *&v77 = v173;
      *(&v77 + 1) = v170;
      v78 = r2;
      *&v79 = r2;
      *(&v79 + 1) = limit;
      v208 = v79;
      v207 = v77;
      *v209 = v41;
      *&v209[8] = v58;
      *&v209[16] = v145;
      *&v209[24] = v155;
      *&v209[32] = v154;
      *&v209[40] = v152;
      *&v209[48] = v151;
      *&v209[56] = v150;
      *&v209[64] = v149;
      *&v209[72] = v147;
      *&v209[80] = v146;
      *&v209[88] = v148;
      *&v209[96] = v153;
      *&v209[104] = v160;
      *&v209[112] = recta;
      *&v209[120] = v75;
      *&v209[128] = v47;
      *&v209[136] = v142;
      v210 = v64;
      v211 = v141;
      v212 = v140;
      v213 = v139;
      v214 = v138;
      v215 = v73;
      v216 = v74;
      v217.origin.x = v72;
      v217.origin.y = v71;
      v217.size.width = v144;
      v217.size.height = v143;
      v218 = __PAIR128__(*&limit, *&r2);
      v219 = v42;
      v181 = v217;
      v186 = *&v209[72];
      v187 = *&v209[88];
      v182 = *&v209[8];
      v183 = *&v209[24];
      v184 = *&v209[40];
      v185 = *&v209[56];
      v200 = *&v209[72];
      r1 = *&v209[88];
      v196 = *&v209[8];
      v197 = *&v209[24];
      v198 = *&v209[40];
      v199 = *&v209[56];
      if (v42)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&limit, *&r2));
        v78 = r2;
      }

      x = r1.origin.x;
      y = r1.origin.y;
      width = r1.size.width;
      height = r1.size.height;
      v180 = r1;
      v200 = *&v209[72];
      r1 = *&v209[88];
      v196 = *&v209[8];
      v197 = *&v209[24];
      v198 = *&v209[40];
      v199 = *&v209[56];
      if (v42)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&limit, *&v78));
        v78 = r2;
      }

      v84 = 0;
      v85 = 0;
      v86 = limit;
      v223 = CGRectIntersection(r1, *(&v78 - 2));
      v169 = v223.origin.x;
      v172 = v223.origin.y;
      v87 = v223.size.width;
      v88 = v223.size.height;
      OutputValue = AGGraphGetOutputValue();
      if (LODWORD(v167) != v164 || !OutputValue)
      {
        size = v217.size;
        *(v9 + 272) = v217.origin;
        *(v9 + 288) = size;
        *(v9 + 304) = x;
        *(v9 + 312) = y;
        *(v9 + 320) = width;
        *(v9 + 328) = height;
        v91 = *&v209[104];
        *(v9 + 336) = *&v209[88];
        *(v9 + 352) = v91;
      }

      v163 = v88;
      v167 = v87;
      if (LOBYTE(v166))
      {
        *(v9 + 456) = 0;
        *(v9 + 464) = 0;
        *(v9 + 472) = 1;
      }

      v237.origin.x = 0.0;
      v237.origin.y = 0.0;
      v237.size.width = 0.0;
      v237.size.height = 0.0;
      v224.origin.x = x;
      v224.origin.y = y;
      v224.size.width = width;
      v224.size.height = height;
      LOBYTE(v10) = CGRectEqualToRect(v224, v237);
      v28 = (v9 + 112);
      v166 = *(v9 + 112);
      v161 = *(v9 + 120);
      v159 = *(v9 + 128);
      v1 = *(v9 + 144);
      rect = *(v9 + 136);
      v2 = *(v9 + 152);
      v3 = *(v9 + 160);
      v4 = *(v9 + 168);
      v5 = *(v9 + 176);
      v6 = *(v9 + 184);
      v7 = *(v9 + 192);
      v8 = *(v9 + 200);
      if (one-time initialization token for v7 == -1)
      {
LABEL_104:
        v92 = (v28 - 1);
        v93 = static Semantics.v7;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
LABEL_108:
            v225.origin.x = v5;
            v225.origin.y = v6;
            v225.size.width = v7;
            v225.size.height = v8;
            IsNull = CGRectIsNull(v225);
            goto LABEL_114;
          }
        }

        else if (static Semantics.forced < v93)
        {
          goto LABEL_108;
        }

        v226.origin.x = v1;
        v226.origin.y = v2;
        v226.size.width = v3;
        v226.size.height = v4;
        if (CGRectIsNull(v226))
        {
          v95 = 0;
          v96 = v172;
          v97 = v169;
          if (v10)
          {
            goto LABEL_117;
          }

          goto LABEL_133;
        }

        v227.origin.x = v166;
        v227.size.width = v159;
        v227.origin.y = v161;
        v227.size.height = rect;
        IsNull = CGRectIsNull(v227);
LABEL_114:
        v96 = v172;
        v97 = v169;
        if (IsNull || (*&v196 = v136, (AGGraphAnyInputsChanged() & 1) != 0))
        {
LABEL_116:
          v95 = 0;
          if (v10)
          {
LABEL_117:
            v98 = v165;
            goto LABEL_141;
          }

          goto LABEL_133;
        }

        v238.size.width = *(v9 + 400);
        v238.size.height = *(v9 + 408);
        v238.origin.x = 0.0;
        v238.origin.y = 0.0;
        v228 = CGRectIntersection(*(v9 + 304), v238);
        v99 = v228.origin.x;
        v100 = v228.origin.y;
        v101 = v228.size.width;
        v102 = v228.size.height;
        LOBYTE(v191) = 2;
        v228.origin.x = v169;
        v228.origin.y = v172;
        v228.size.width = v167;
        v228.size.height = v163;
        if (!CGRectIsEmpty(v228))
        {
          if ((specialized getter of needsToPlace #1 in LazySubviewPlacements.updateValue()(&v191, v9, 1, v169, v172, v167, v163, v99, v100, v101, v102) & 1) == 0)
          {
            v229.origin.x = v169;
            v229.origin.y = v172;
            v229.size.width = v167;
            v229.size.height = v163;
            limita = CGRectGetMinX(v229);
            v230.origin.x = v166;
            v230.origin.y = v161;
            v230.size.width = v159;
            v230.size.height = rect;
            r2a = CGRectGetMinX(v230);
            v231.origin.x = v166;
            v231.origin.y = v161;
            v231.size.width = v159;
            v231.size.height = rect;
            MaxX = CGRectGetMaxX(v231);
            v232.origin.x = v169;
            v232.origin.y = v96;
            v232.size.width = v167;
            v232.size.height = v163;
            v168 = CGRectGetMaxX(v232);
            v233.origin.x = v169;
            v233.origin.y = v96;
            v233.size.width = v167;
            v233.size.height = v163;
            MinY = CGRectGetMinY(v233);
            v234.origin.x = v166;
            v234.origin.y = v161;
            v234.size.width = v159;
            v234.size.height = rect;
            v156 = CGRectGetMinY(v234);
            v235.origin.x = v166;
            v235.origin.y = v161;
            v235.size.width = v159;
            v235.size.height = rect;
            MaxY = CGRectGetMaxY(v235);
            v104 = v97;
            v105 = MaxY;
            v236.origin.x = v104;
            v236.origin.y = v96;
            v236.size.width = v167;
            v236.size.height = v163;
            v106 = CGRectGetMaxY(v236);
            v107 = *(**AGGraphGetValue() + 360);

            v109 = v107(v108);

            if (v109)
            {
              v110 = v163 / 3.0;
              if (MaxX - v168 < v167 / 3.0)
              {
                v111 = (2 * (limita - r2a < v167 / 3.0)) | 8;
              }

              else
              {
                v111 = 2 * (limita - r2a < v167 / 3.0);
              }

              if (MinY - v156 < v110)
              {
                ++v111;
              }

              if (v105 - v106 < v110)
              {
                v112 = v111 | 4;
              }

              else
              {
                v112 = v111;
              }

              LOBYTE(v95) = 0;
              *(*AGGraphGetValue() + 312) = v112;
            }

            else
            {
              LOBYTE(v95) = 0;
            }

            v98 = v165;
LABEL_141:
            *&v191 = *v92;

            if (*(*AGGraphGetValue() + 341) == 1 && v98)
            {
              v200 = v186;
              r1 = v187;
              v196 = v182;
              v197 = v183;
              v198 = v184;
              v199 = v185;
              Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(&v196, v98 & 1, (v98 >> 1) & 1);
              AGGraphGetValue();

              LazyLayoutViewCache.updatePrefetchPhases()();
            }

            else
            {
              AGGraphGetValue();

              LazyLayoutViewCache.updatePrefetchPhases()();

              if ((v95 & 1) == 0 && AGGraphGetOutputValue())
              {
                goto LABEL_147;
              }
            }

            *&v196 = v191;
            AGGraphSetOutputValue();
LABEL_147:

            specialized $defer #1 <A>() in LazySubviewPlacements.updateValue()(v9, &v181, &v180, &v206, outlined init with copy of LazySubviewPlacements<LazyHStackLayout>, outlined destroy of LazySubviewPlacements<LazyHStackLayout>);

            return;
          }

          goto LABEL_116;
        }

        if (v10)
        {
          LOBYTE(v95) = 0;
          v98 = v165;
          goto LABEL_141;
        }

        v95 = 1;
LABEL_133:
        v113 = AGGraphGetValue();
        v114 = *(MEMORY[0x1E695F050] + 16);
        *&v188[8] = *MEMORY[0x1E695F050];
        ++*(*v113 + 228);
        *v188 = MEMORY[0x1E69E7CC0];
        *&v188[24] = v114;
        v188[40] = 0;
        v189 = 0uLL;
        v190 = 0;
        if (v95)
        {
          v28[4] = 0u;
          v28[5] = 0u;
          v28[2] = 0u;
          v28[3] = 0u;
          *v28 = 0u;
          v28[1] = 0u;
          *(*AGGraphGetValue() + 312) = 0;
        }

        else
        {
          specialized LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(&v206, v188, &v181, &v180);
        }

        v98 = v165;
        AGGraphGetValue();
        v115 = AGGraphGetCurrentAttribute();
        if (v115 == v137)
        {
          __break(1u);
        }

        v116 = v115;
        v117 = v190;
        v118 = *v92;
        v119 = v181.size;

        LazyLayoutViewCache.commitPlacedSubviews(from:to:wasCancelled:context:containingSize:)(v118, v188, v117, v116, v119.width, v119.height);

        if (v95)
        {
          v198 = *&v188[32];
          v199 = v189;
          LOBYTE(v200) = v190;
          v121 = *v188;
          v120 = *&v188[16];
        }

        else
        {
          v122 = DWORD2(v206);
          KeyPath = swift_getKeyPath();
          LODWORD(v191) = v122;
          *(&v191 + 1) = KeyPath;
          type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v122);
          v179 = KeyPath;
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>, &type metadata for EnvironmentValues, &type metadata for LazySubviewMinorSizingConfiguration, MEMORY[0x1E69E77A8]);

          dispatch thunk of Hashable.hash(into:)();
          Hasher._finalize()();
          lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>();
          lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>();
          LOBYTE(v196) = 0;
          v124 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
          v125 = *(v124 + 1);
          v126 = *v124;

          LOWORD(v196) = 257;
          SizingState.prepare(minorSizing:properties:viewSize:)(v126, v125, &v196, r2, limit);

          v193 = *&v188[32];
          v194 = v189;
          v195 = v190;
          v191 = *v188;
          v192 = *&v188[16];
          LODWORD(v179) = v165;
          PlacementState.update(placements:visibleRect:pinnedSubviews:sizingState:)(&v191, &v179, v97, v96, v167, v163);
          v198 = v193;
          v199 = v194;
          LOBYTE(v200) = v195;
          v121 = v191;
          v120 = v192;
        }

        v196 = v121;
        v197 = v120;
        outlined destroy of _LazyLayout_Placements(&v196);
        v127 = *(v9 + 408);
        v203 = *(v9 + 392);
        v204 = v127;
        v205[0] = *(v9 + 424);
        *(v205 + 9) = *(v9 + 433);
        v128 = *(v9 + 344);
        v200 = *(v9 + 328);
        r1.origin = v128;
        v129 = *(v9 + 376);
        r1.size = *(v9 + 360);
        v202 = v129;
        v130 = *(v9 + 280);
        v196 = *(v9 + 264);
        v197 = v130;
        v131 = *(v9 + 312);
        v198 = *(v9 + 296);
        v199 = v131;
        v132 = *(v9 + 96);
        outlined init with copy of PositionState(&v196, &v191);
        AGGraphGetValue();
        _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6HStackV0V_Tt2t3B5(v132, &v206, &v191);
        outlined destroy of PositionState(&v196);
        v133 = v191;

        *(v9 + 416) = v133;
        v134 = *AGGraphGetValue();
        v135 = *(v9 + 128);
        *(v134 + 232) = *(v9 + 112);
        *(v134 + 248) = v135;
        LOBYTE(v95) = 1;
        goto LABEL_141;
      }
    }

    swift_once();
    goto LABEL_104;
  }

  AGGraphCancelUpdate();
}

{
  v9 = v0;
  v220 = *MEMORY[0x1E69E9840];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue() || !AGGraphHasDeadlinePassed())
  {
    type metadata accessor for LazyLayoutViewCache();
    v10 = *AGGraphGetValue();
    swift_beginAccess();
    v11 = *AGGraphGetValue() >> 1;
    LODWORD(v167) = *(v9 + 452);
    if (LODWORD(v167) != v11)
    {
      *(v9 + 452) = v11;
      LOBYTE(v10) = 1;
      LOBYTE(v196) = 1;
      v12 = *(v9 + 408);
      *&v209[80] = *(v9 + 392);
      *&v209[96] = v12;
      *&v209[112] = *(v9 + 424);
      *&v209[121] = *(v9 + 433);
      v13 = *(v9 + 344);
      *&v209[16] = *(v9 + 328);
      *&v209[32] = v13;
      v14 = *(v9 + 376);
      *&v209[48] = *(v9 + 360);
      *&v209[64] = v14;
      v15 = *(v9 + 280);
      v206 = *(v9 + 264);
      v207 = v15;
      v16 = *(v9 + 312);
      v208 = *(v9 + 296);
      *v209 = v16;
      outlined destroy of PositionState(&v206);
      *(v9 + 264) = 0;
      *(v9 + 272) = 0u;
      *(v9 + 288) = 0u;
      *(v9 + 304) = 0u;
      *(v9 + 320) = 0u;
      *(v9 + 336) = 0u;
      *(v9 + 352) = 0u;
      *(v9 + 368) = 0u;
      *(v9 + 384) = 0u;
      *(v9 + 400) = 0u;
      *(v9 + 416) = 0u;
      *(v9 + 432) = 0u;
      *(v9 + 448) = 1;
      v1 = *MEMORY[0x1E695F050];
      v2 = *(MEMORY[0x1E695F050] + 8);
      v3 = *(MEMORY[0x1E695F050] + 16);
      v4 = *(MEMORY[0x1E695F050] + 24);
      v17 = *(v9 + 96);
      v18 = *(v9 + 112);
      v19 = *(v9 + 144);
      v198 = *(v9 + 128);
      v199 = v19;
      v196 = v17;
      v197 = v18;
      v20 = *(v9 + 160);
      v21 = *(v9 + 176);
      v22 = *(v9 + 192);
      LODWORD(v202) = *(v9 + 208);
      r1.origin = v21;
      r1.size = v22;
      v200 = v20;
      outlined destroy of PlacementState(&v196);
      v23 = MEMORY[0x1E69E7CC0];
      *(v9 + 96) = MEMORY[0x1E69E7CC0];
      *(v9 + 104) = v23;
      *(v9 + 112) = v1;
      *(v9 + 120) = v2;
      *(v9 + 128) = v3;
      *(v9 + 136) = v4;
      *(v9 + 144) = v1;
      *(v9 + 152) = v2;
      *(v9 + 160) = v3;
      *(v9 + 168) = v4;
      *(v9 + 176) = v1;
      *(v9 + 184) = v2;
      *(v9 + 192) = v3;
      *(v9 + 200) = v4;
      *(v9 + 208) = 0;

      *(v9 + 256) = 0;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0;
    }

    Value = AGGraphGetValue();
    v25 = 0;
    if (*(*Value + 341) == 1)
    {
      v25 = *(AGGraphGetValue() + 20);
    }

    v165 = v25;
    HIDWORD(v136) = *(v9 + 12);
    v26 = AGGraphGetValue();
    v166 = v27;
    v29 = *v26;
    v28 = *(v26 + 8);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v31 = CurrentAttribute;
      v164 = v11;
      v137 = *MEMORY[0x1E698D3F8];
      v33 = *(v26 + 32);
      v32 = *(v26 + 40);
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      v36 = *(v9 + 16);
      v162 = *(v9 + 36);
      v37 = *(v9 + 8);
      type metadata accessor for CGPoint(0);

      LODWORD(v136) = v37;
      v38 = AGGraphGetValue();
      v173 = *v38;
      v170 = v38[1];
      v39 = AGGraphGetValue();
      r2 = *v39;
      limit = v39[1];

      AGGraphGetValue();

      v40 = *AGGraphGetValue();

      v41 = *(AGGraphGetValue() + 20);
      AGGraphGetValue();

      v42 = *AGGraphGetValue();

      v43 = v33 - (v173 - v35);
      v206 = 0u;
      v207 = 0u;
      v44 = v32 - (v170 - v34);
      v208 = 0u;
      memset(v209, 0, 64);
      v209[64] = 1;
      *&v196 = v29;
      *(&v196 + 1) = v28;
      *&v197 = v173;
      *(&v197 + 1) = v170;
      *&v198 = v43;
      *(&v198 + 1) = v44;
      specialized ViewTransform.forEach(inverted:_:)(0, &v196, &v206, 0.0);
      v45 = *&v207;
      if (v209[64])
      {
        v45 = r2;
      }

      v155 = v45;
      if (v209[64])
      {
        v46 = limit;
      }

      else
      {
        v46 = *(&v207 + 1);
      }

      v154 = v46;
      v47 = 0.0;
      if (v209[64])
      {
        v48 = 0.0;
      }

      else
      {
        v48 = *&v208;
      }

      if (v209[64])
      {
        v49 = 0.0;
      }

      else
      {
        v49 = *(&v208 + 1);
      }

      v151 = v49;
      v152 = v48;
      if (v209[64])
      {
        v50 = 0.0;
      }

      else
      {
        v50 = *v209;
      }

      if (v209[64])
      {
        v51 = 0.0;
      }

      else
      {
        v51 = *&v209[8];
      }

      v149 = v51;
      v150 = v50;
      if (v209[64])
      {
        v52 = r2;
      }

      else
      {
        v52 = *&v209[48];
      }

      if (v209[64])
      {
        v53 = limit;
      }

      else
      {
        v53 = *&v209[56];
      }

      recta = v53;
      v160 = v52;
      if (v209[64])
      {
        v54 = 0.0;
      }

      else
      {
        v54 = *&v209[40];
      }

      if (v209[64])
      {
        v55 = 0.0;
      }

      else
      {
        v55 = *&v209[32];
      }

      if (v209[64])
      {
        v56 = r2;
      }

      else
      {
        v56 = *&v209[16];
      }

      if (v209[64])
      {
        v57 = limit;
      }

      else
      {
        v57 = *&v209[24];
      }

      if (v209[64])
      {
        v58 = 0.0;
      }

      else
      {
        v58 = *&v206;
      }

      if (v209[64])
      {
        v59 = 0.0;
      }

      else
      {
        v59 = *(&v206 + 1);
      }

      v146 = v57;
      v147 = v56;
      v145 = v59;
      if (v40 == 1)
      {
        v60 = v58;
        v61 = v59;
        v62 = r2 - CGRectGetMaxX(*(&v56 - 2));
        v148 = v55 + v62 - v58;
        v153 = v54 + v59 - v59;
        v58 = v62;
      }

      else
      {
        v148 = v55;
        v153 = v54;
      }

      memset(v209, 0, 64);
      v208 = 0u;
      v207 = 0u;
      v206 = 0u;
      v209[64] = 1;
      *&v196 = v29;
      *(&v196 + 1) = v28;
      *&v197 = v173;
      *(&v197 + 1) = v170;
      *&v198 = v43;
      *(&v198 + 1) = v44;
      specialized ViewTransform.forEach(inverted:_:)(0, &v196, &v206, v170);
      v63 = *&v207;
      if (v209[64])
      {
        v63 = r2;
      }

      v142 = v63;
      if (v209[64])
      {
        v64 = limit;
      }

      else
      {
        v64 = *(&v207 + 1);
      }

      if (v209[64])
      {
        v65 = 0.0;
      }

      else
      {
        v65 = *&v208;
      }

      if (v209[64])
      {
        v66 = 0.0;
      }

      else
      {
        v66 = *(&v208 + 1);
      }

      v140 = v66;
      v141 = v65;
      if (v209[64])
      {
        v67 = 0.0;
      }

      else
      {
        v67 = *v209;
      }

      if (v209[64])
      {
        v68 = 0.0;
      }

      else
      {
        v68 = *&v209[8];
      }

      v138 = v68;
      v139 = v67;
      if (v209[64])
      {
        v69 = r2;
      }

      else
      {
        v69 = *&v209[48];
      }

      if (v209[64])
      {
        v70 = limit;
      }

      else
      {
        v70 = *&v209[56];
      }

      v143 = v70;
      v144 = v69;
      if (v209[64])
      {
        v71 = 0.0;
      }

      else
      {
        v71 = *&v209[40];
      }

      if (v209[64])
      {
        v72 = 0.0;
      }

      else
      {
        v72 = *&v209[32];
      }

      if (v209[64])
      {
        v73 = r2;
      }

      else
      {
        v73 = *&v209[16];
      }

      if (v209[64])
      {
        v74 = limit;
      }

      else
      {
        v74 = *&v209[24];
      }

      if (v209[64])
      {
        v75 = 0.0;
      }

      else
      {
        v75 = *&v206;
      }

      if ((v209[64] & 1) == 0)
      {
        v47 = *(&v206 + 1);
      }

      if (v40)
      {
        v222.origin.x = v75;
        v222.origin.y = v47;
        v222.size.width = v73;
        v222.size.height = v74;
        v76 = r2 - CGRectGetMaxX(v222);
        v72 = v72 + v76 - v75;
        v71 = v71 + v47 - v47;
        v75 = v76;
      }

      LODWORD(v206) = v31;
      *(&v206 + 4) = __PAIR64__(v36, v31);
      HIDWORD(v206) = v162;
      *&v77 = v173;
      *(&v77 + 1) = v170;
      v78 = r2;
      *&v79 = r2;
      *(&v79 + 1) = limit;
      v208 = v79;
      v207 = v77;
      *v209 = v41;
      *&v209[8] = v58;
      *&v209[16] = v145;
      *&v209[24] = v155;
      *&v209[32] = v154;
      *&v209[40] = v152;
      *&v209[48] = v151;
      *&v209[56] = v150;
      *&v209[64] = v149;
      *&v209[72] = v147;
      *&v209[80] = v146;
      *&v209[88] = v148;
      *&v209[96] = v153;
      *&v209[104] = v160;
      *&v209[112] = recta;
      *&v209[120] = v75;
      *&v209[128] = v47;
      *&v209[136] = v142;
      v210 = v64;
      v211 = v141;
      v212 = v140;
      v213 = v139;
      v214 = v138;
      v215 = v73;
      v216 = v74;
      v217.origin.x = v72;
      v217.origin.y = v71;
      v217.size.width = v144;
      v217.size.height = v143;
      v218 = __PAIR128__(*&limit, *&r2);
      v219 = v42;
      v181 = v217;
      v186 = *&v209[72];
      v187 = *&v209[88];
      v182 = *&v209[8];
      v183 = *&v209[24];
      v184 = *&v209[40];
      v185 = *&v209[56];
      v200 = *&v209[72];
      r1 = *&v209[88];
      v196 = *&v209[8];
      v197 = *&v209[24];
      v198 = *&v209[40];
      v199 = *&v209[56];
      if (v42)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&limit, *&r2));
        v78 = r2;
      }

      x = r1.origin.x;
      y = r1.origin.y;
      width = r1.size.width;
      height = r1.size.height;
      v180 = r1;
      v200 = *&v209[72];
      r1 = *&v209[88];
      v196 = *&v209[8];
      v197 = *&v209[24];
      v198 = *&v209[40];
      v199 = *&v209[56];
      if (v42)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&limit, *&v78));
        v78 = r2;
      }

      v84 = 0;
      v85 = 0;
      v86 = limit;
      v223 = CGRectIntersection(r1, *(&v78 - 2));
      v169 = v223.origin.x;
      v172 = v223.origin.y;
      v87 = v223.size.width;
      v88 = v223.size.height;
      OutputValue = AGGraphGetOutputValue();
      if (LODWORD(v167) != v164 || !OutputValue)
      {
        size = v217.size;
        *(v9 + 272) = v217.origin;
        *(v9 + 288) = size;
        *(v9 + 304) = x;
        *(v9 + 312) = y;
        *(v9 + 320) = width;
        *(v9 + 328) = height;
        v91 = *&v209[104];
        *(v9 + 336) = *&v209[88];
        *(v9 + 352) = v91;
      }

      v163 = v88;
      v167 = v87;
      if (LOBYTE(v166))
      {
        *(v9 + 456) = 0;
        *(v9 + 464) = 0;
        *(v9 + 472) = 1;
      }

      v237.origin.x = 0.0;
      v237.origin.y = 0.0;
      v237.size.width = 0.0;
      v237.size.height = 0.0;
      v224.origin.x = x;
      v224.origin.y = y;
      v224.size.width = width;
      v224.size.height = height;
      LOBYTE(v10) = CGRectEqualToRect(v224, v237);
      v28 = (v9 + 112);
      v166 = *(v9 + 112);
      v161 = *(v9 + 120);
      v159 = *(v9 + 128);
      v1 = *(v9 + 144);
      rect = *(v9 + 136);
      v2 = *(v9 + 152);
      v3 = *(v9 + 160);
      v4 = *(v9 + 168);
      v5 = *(v9 + 176);
      v6 = *(v9 + 184);
      v7 = *(v9 + 192);
      v8 = *(v9 + 200);
      if (one-time initialization token for v7 == -1)
      {
LABEL_104:
        v92 = (v28 - 1);
        v93 = static Semantics.v7;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
LABEL_108:
            v225.origin.x = v5;
            v225.origin.y = v6;
            v225.size.width = v7;
            v225.size.height = v8;
            IsNull = CGRectIsNull(v225);
            goto LABEL_114;
          }
        }

        else if (static Semantics.forced < v93)
        {
          goto LABEL_108;
        }

        v226.origin.x = v1;
        v226.origin.y = v2;
        v226.size.width = v3;
        v226.size.height = v4;
        if (CGRectIsNull(v226))
        {
          v95 = 0;
          v96 = v172;
          v97 = v169;
          if (v10)
          {
            goto LABEL_117;
          }

          goto LABEL_133;
        }

        v227.origin.x = v166;
        v227.size.width = v159;
        v227.origin.y = v161;
        v227.size.height = rect;
        IsNull = CGRectIsNull(v227);
LABEL_114:
        v96 = v172;
        v97 = v169;
        if (IsNull || (*&v196 = v136, (AGGraphAnyInputsChanged() & 1) != 0))
        {
LABEL_116:
          v95 = 0;
          if (v10)
          {
LABEL_117:
            v98 = v165;
            goto LABEL_141;
          }

          goto LABEL_133;
        }

        v238.size.width = *(v9 + 400);
        v238.size.height = *(v9 + 408);
        v238.origin.x = 0.0;
        v238.origin.y = 0.0;
        v228 = CGRectIntersection(*(v9 + 304), v238);
        v99 = v228.origin.x;
        v100 = v228.origin.y;
        v101 = v228.size.width;
        v102 = v228.size.height;
        LOBYTE(v191) = 2;
        v228.origin.x = v169;
        v228.origin.y = v172;
        v228.size.width = v167;
        v228.size.height = v163;
        if (!CGRectIsEmpty(v228))
        {
          if ((specialized getter of needsToPlace #1 in LazySubviewPlacements.updateValue()(&v191, v9, 2, v169, v172, v167, v163, v99, v100, v101, v102) & 1) == 0)
          {
            v229.origin.x = v169;
            v229.origin.y = v172;
            v229.size.width = v167;
            v229.size.height = v163;
            limita = CGRectGetMinX(v229);
            v230.origin.x = v166;
            v230.origin.y = v161;
            v230.size.width = v159;
            v230.size.height = rect;
            r2a = CGRectGetMinX(v230);
            v231.origin.x = v166;
            v231.origin.y = v161;
            v231.size.width = v159;
            v231.size.height = rect;
            MaxX = CGRectGetMaxX(v231);
            v232.origin.x = v169;
            v232.origin.y = v96;
            v232.size.width = v167;
            v232.size.height = v163;
            v168 = CGRectGetMaxX(v232);
            v233.origin.x = v169;
            v233.origin.y = v96;
            v233.size.width = v167;
            v233.size.height = v163;
            MinY = CGRectGetMinY(v233);
            v234.origin.x = v166;
            v234.origin.y = v161;
            v234.size.width = v159;
            v234.size.height = rect;
            v156 = CGRectGetMinY(v234);
            v235.origin.x = v166;
            v235.origin.y = v161;
            v235.size.width = v159;
            v235.size.height = rect;
            MaxY = CGRectGetMaxY(v235);
            v104 = v97;
            v105 = MaxY;
            v236.origin.x = v104;
            v236.origin.y = v96;
            v236.size.width = v167;
            v236.size.height = v163;
            v106 = CGRectGetMaxY(v236);
            v107 = *(**AGGraphGetValue() + 360);

            v109 = v107(v108);

            if (v109)
            {
              v110 = v163 / 3.0;
              if (MaxX - v168 < v167 / 3.0)
              {
                v111 = (2 * (limita - r2a < v167 / 3.0)) | 8;
              }

              else
              {
                v111 = 2 * (limita - r2a < v167 / 3.0);
              }

              if (MinY - v156 < v110)
              {
                ++v111;
              }

              if (v105 - v106 < v110)
              {
                v112 = v111 | 4;
              }

              else
              {
                v112 = v111;
              }

              LOBYTE(v95) = 0;
              *(*AGGraphGetValue() + 312) = v112;
            }

            else
            {
              LOBYTE(v95) = 0;
            }

            v98 = v165;
LABEL_141:
            *&v191 = *v92;

            if (*(*AGGraphGetValue() + 341) == 1 && v98)
            {
              v200 = v186;
              r1 = v187;
              v196 = v182;
              v197 = v183;
              v198 = v184;
              v199 = v185;
              Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(&v196, 2 * (v98 & 1u), v98 & 2);
              AGGraphGetValue();

              LazyLayoutViewCache.updatePrefetchPhases()();
            }

            else
            {
              AGGraphGetValue();

              LazyLayoutViewCache.updatePrefetchPhases()();

              if ((v95 & 1) == 0 && AGGraphGetOutputValue())
              {
                goto LABEL_147;
              }
            }

            *&v196 = v191;
            AGGraphSetOutputValue();
LABEL_147:

            specialized $defer #1 <A>() in LazySubviewPlacements.updateValue()(v9, &v181, &v180, &v206, outlined init with copy of LazySubviewPlacements<LazyVStackLayout>, outlined destroy of LazySubviewPlacements<LazyVStackLayout>);

            return;
          }

          goto LABEL_116;
        }

        if (v10)
        {
          LOBYTE(v95) = 0;
          v98 = v165;
          goto LABEL_141;
        }

        v95 = 1;
LABEL_133:
        v113 = AGGraphGetValue();
        v114 = *(MEMORY[0x1E695F050] + 16);
        *&v188[8] = *MEMORY[0x1E695F050];
        ++*(*v113 + 228);
        *v188 = MEMORY[0x1E69E7CC0];
        *&v188[24] = v114;
        v188[40] = 0;
        v189 = 0uLL;
        v190 = 0;
        if (v95)
        {
          v28[4] = 0u;
          v28[5] = 0u;
          v28[2] = 0u;
          v28[3] = 0u;
          *v28 = 0u;
          v28[1] = 0u;
          *(*AGGraphGetValue() + 312) = 0;
        }

        else
        {
          specialized LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(&v206, v188, &v181, &v180);
        }

        v98 = v165;
        AGGraphGetValue();
        v115 = AGGraphGetCurrentAttribute();
        if (v115 == v137)
        {
          __break(1u);
        }

        v116 = v115;
        v117 = v190;
        v118 = *v92;
        v119 = v181.size;

        LazyLayoutViewCache.commitPlacedSubviews(from:to:wasCancelled:context:containingSize:)(v118, v188, v117, v116, v119.width, v119.height);

        if (v95)
        {
          v198 = *&v188[32];
          v199 = v189;
          LOBYTE(v200) = v190;
          v121 = *v188;
          v120 = *&v188[16];
        }

        else
        {
          v122 = DWORD2(v206);
          KeyPath = swift_getKeyPath();
          LODWORD(v191) = v122;
          *(&v191 + 1) = KeyPath;
          type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v122);
          v179 = KeyPath;
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>, &type metadata for EnvironmentValues, &type metadata for LazySubviewMinorSizingConfiguration, MEMORY[0x1E69E77A8]);

          dispatch thunk of Hashable.hash(into:)();
          Hasher._finalize()();
          lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>();
          lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>();
          LOBYTE(v196) = 0;
          v124 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
          v125 = *(v124 + 1);
          v126 = *v124;

          LOWORD(v196) = 514;
          SizingState.prepare(minorSizing:properties:viewSize:)(v126, v125, &v196, r2, limit);

          v193 = *&v188[32];
          v194 = v189;
          v195 = v190;
          v191 = *v188;
          v192 = *&v188[16];
          LODWORD(v179) = v165;
          PlacementState.update(placements:visibleRect:pinnedSubviews:sizingState:)(&v191, &v179, v97, v96, v167, v163);
          v198 = v193;
          v199 = v194;
          LOBYTE(v200) = v195;
          v121 = v191;
          v120 = v192;
        }

        v196 = v121;
        v197 = v120;
        outlined destroy of _LazyLayout_Placements(&v196);
        v127 = *(v9 + 408);
        v203 = *(v9 + 392);
        v204 = v127;
        v205[0] = *(v9 + 424);
        *(v205 + 9) = *(v9 + 433);
        v128 = *(v9 + 344);
        v200 = *(v9 + 328);
        r1.origin = v128;
        v129 = *(v9 + 376);
        r1.size = *(v9 + 360);
        v202 = v129;
        v130 = *(v9 + 280);
        v196 = *(v9 + 264);
        v197 = v130;
        v131 = *(v9 + 312);
        v198 = *(v9 + 296);
        v199 = v131;
        v132 = *(v9 + 96);
        outlined init with copy of PositionState(&v196, &v191);
        AGGraphGetValue();
        _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6VStackV0V_Tt2t3B5(v132, &v206, &v191);
        outlined destroy of PositionState(&v196);
        v133 = v191;

        *(v9 + 416) = v133;
        v134 = *AGGraphGetValue();
        v135 = *(v9 + 128);
        *(v134 + 232) = *(v9 + 112);
        *(v134 + 248) = v135;
        LOBYTE(v95) = 1;
        goto LABEL_141;
      }
    }

    swift_once();
    goto LABEL_104;
  }

  AGGraphCancelUpdate();
}

void specialized $defer #1 <A>() in LazySubviewPlacements.updateValue()(_OWORD *__src, _OWORD *a2, _OWORD *a3, uint64_t a4, void (*a5)(_DWORD *, uint64_t *), void (*a6)(_DWORD *, __n128))
{
  v10 = a2[1];
  __src[17] = *a2;
  __src[18] = v10;
  v11 = a3[1];
  __src[19] = *a3;
  __src[20] = v11;
  v12 = *(a4 + 12);
  v13 = *(a4 + 152);
  __src[21] = *(a4 + 136);
  __src[22] = v13;
  v14 = *MEMORY[0x1E698D3F8];
  v15 = 0uLL;
  if (v12 != *MEMORY[0x1E698D3F8])
  {
    v15 = *AGGraphGetValue();
  }

  v16 = *(a4 + 16);
  v17 = *(a4 + 32);
  __src[23] = v15;
  __src[24] = v16;
  __src[25] = v17;
  memcpy(__dst, __src, 0x1D9uLL);
  type metadata accessor for LazyLayoutViewCache();
  a5(__dst, &v20);
  v18 = *AGGraphGetValue();

  (a6)(__dst);
  v19 = *(__src + 10);
  *(v18 + 320) = *(__src + 232);
  if (*(__src + 249) == 1 && v19 != v14)
  {
    LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v19, *(__src + 32));
  }

  *(__src + 249) = 0;
}

uint64_t specialized getter of needsToPlace #1 in LazySubviewPlacements.updateValue()(_BYTE *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v11 = *a1;
  if (v11 == 2)
  {
    v14 = *(a2 + 176);
    v15 = *(a2 + 144);
    v41 = *(a2 + 160);
    v42 = v14;
    v16 = *(a2 + 176);
    v43 = *(a2 + 192);
    v17 = *(a2 + 112);
    v38[0] = *(a2 + 96);
    v38[1] = v17;
    v18 = *(a2 + 144);
    v20 = *(a2 + 96);
    v19 = *(a2 + 112);
    v39 = *(a2 + 128);
    v40 = v18;
    v34 = v41;
    v35 = v16;
    v36 = *(a2 + 192);
    v30 = v20;
    v31 = v19;
    v44 = *(a2 + 208);
    v37 = *(a2 + 208);
    v32 = v39;
    v33 = v15;
    outlined init with copy of PlacementState(v38, v45);
    LOBYTE(v11) = PlacementState.needsToPlace(newVisibleRect:oldVisibleRect:axes:)(a3, a4, a5, a6, a7, a8, a9, a10, a11);
    v45[4] = v34;
    v45[5] = v35;
    v45[6] = v36;
    v46 = v37;
    v45[0] = v30;
    v45[1] = v31;
    v45[2] = v32;
    v45[3] = v33;
    outlined destroy of PlacementState(v45);
    swift_beginAccess();
    *a1 = v11 & 1;
  }

  return v11 & 1;
}

uint64_t specialized LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(double *a1, uint64_t a2, CGRect *a3, CGRect *a4)
{
  v5 = v4;
  v56 = a3;
  v57 = a4;
  specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)(a1, specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:), v68);
  memcpy(v70, v68, sizeof(v70));
  v8 = v68[35];
  v9 = v68[36];
  v10 = v68[37];
  memcpy(v71, v70, sizeof(v71));
  v72 = v68[35];
  v73 = v68[36];
  v74 = v68[37];
  v55 = a1;
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(v71) == 1)
  {
    v11 = *(a1 + 35);
    v12 = *(a1 + 36);
    memcpy(v68, a1, 0x129uLL);
    if (*(v5 + 472))
    {
      goto LABEL_7;
    }
  }

  else
  {
    memcpy(v68, v70, 0x118uLL);
    v68[35] = v8;
    v68[36] = v9;
    v11 = v8;
    v12 = v9;
    LOBYTE(v68[37]) = v10;
    if (*(v5 + 472))
    {
      goto LABEL_7;
    }
  }

  v14 = *(v5 + 456);
  v13 = *(v5 + 464);
  memcpy(v64, v70, 0x118uLL);
  *&v64[280] = v8;
  *&v64[288] = v9;
  v64[296] = v10;
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(v64) == 1)
  {
    ScrollGeometry.translate(by:limit:)(__PAIR128__(v13, v14), __PAIR128__(v12, v11));
    ScrollGeometry.translate(by:limit:)(__PAIR128__(v13, v14), __PAIR128__(v12, v11));
  }

LABEL_7:
  memcpy(v69, v68, 0x129uLL);
  type metadata accessor for LazyLayoutViewCache();
  v15 = *AGGraphGetValue();
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v54[2] = v5;
  v54[3] = v69;
  v54[4] = a2;
  v18 = *(*v15 + 408);

  v18(v17, partial apply for specialized closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:), v54, v17, MEMORY[0x1E69E7CA8] + 8);

  if (*(a2 + 40) == 1)
  {
    v19 = *(v5 + 40);
    if (v19 != *MEMORY[0x1E698D3F8])
    {
      AGGraphGetValue();

      LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v19, 0);
    }
  }

  AGGraphClearUpdate();
  AGGraphGetValue();
  swift_beginAccess();
  v20 = *AGGraphGetValue();

  AGGraphSetUpdate();
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v21);
  v22 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v20, v68[0]);
  if (v22)
  {
    v23 = *(v22 + 72) == 2;
  }

  else
  {
    v23 = 0;
  }

  AGGraphGetValue();

  v24 = *AGGraphGetValue();

  result = AGGraphGetValue();
  v65[0] = 5;
  v26 = 0.0;
  if (*(v5 + 448))
  {
    v27 = 0.0;
  }

  else
  {
    v28 = *(v5 + 432);
    v29 = *(v5 + 440);
    v30 = v28 == 0.0;
    if (v29 != 0.0)
    {
      v30 = 0;
    }

    v27 = 0.0;
    if (!v30 && !v23)
    {
      v65[0] = 1;
      v26 = v29;
      v27 = v28;
    }
  }

  v31 = *(a2 + 48);
  v32 = *(a2 + 56);
  v33 = v31 == 0.0;
  if (v32 != 0.0)
  {
    v33 = 0;
  }

  if (!v33 && !v23)
  {
    v27 = v27 + v31;
    v26 = v26 + v32;
    v65[0] = 0;
  }

  v34 = v27 != 0.0;
  if (v26 != 0.0)
  {
    v34 = 1;
  }

  if (!v34 && !v23)
  {
    memcpy(v68, v5, 0x1D9uLL);
    v35 = *(a2 + 48);
    v66[2] = *(a2 + 32);
    v66[3] = v35;
    v67 = *(a2 + 64);
    v36 = *(a2 + 16);
    v66[0] = *a2;
    v66[1] = v36;
    outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(v68, v64);
    outlined init with copy of _LazyLayout_Placements(v66, v64);
    specialized LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(v66, v55, v65, 1, closure #1 in LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)partial apply, outlined init with copy of LazySubviewPlacements<LazyHStackLayout>, outlined destroy of LazySubviewPlacements<LazyHStackLayout>, _s7SwiftUI21LazySubviewPlacementsV26notPlacedAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F003oldD00S5Index4axes16placementContext10placementsSo6CGSizeVSgAA01_c7Layout_gD0V_SiAA4AxisO3SetVAA01_cz10_PlacementW0VAA01_cz1_E0VtFAA0c6HStackZ0V_Tt3B5);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    outlined destroy of _LazyLayout_Placements(v66);
    result = outlined destroy of LazySubviewPlacements<LazyHStackLayout>(v68);
    if ((v42 & 1) == 0)
    {
      v27 = v38;
      v26 = v40;
    }
  }

  if ((v24 & (v27 != 0.0)) != 0)
  {
    v43 = -v27;
  }

  else
  {
    v43 = v27;
  }

  if (v26 != 0.0 || v27 != 0.0)
  {
    v45 = v65[0];
    if (v65[0] != 5)
    {
      _s7SwiftUI21LazySubviewPlacementsV14logTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LL_6reasonySo6CGSizeV_AA0G6ReasonAELLOtFAA0C12HStackLayoutV_Tt1g5Tm(v65[0], v43, v26);
      v46 = v56;
      *v46 = CGRectOffset(*v56, v43, v26);
      v47 = v57;
      *v47 = CGRectOffset(*v57, v43, v26);
      *(v5 + 456) = v43;
      *(v5 + 464) = v26;
      *(v5 + 472) = 0;
      AGGraphClearUpdate();
      memcpy(v64, v5, sizeof(v64));
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(v64, v59);
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        outlined init with copy of AnyTrackedValue(WeakValue, v62);
      }

      else
      {
        v63 = 0;
        memset(v62, 0, sizeof(v62));
      }

      outlined destroy of LazySubviewPlacements<LazyHStackLayout>(v64);
      AGGraphSetUpdate();
      if (v45)
      {
        v49 = *&v64[32];
        AGGraphClearUpdate();
        v50 = v49 == *MEMORY[0x1E698D3F8] || *AGGraphGetValue() == 0;
        AGGraphSetUpdate();
        v51 = v45 == 1 || v50;
      }

      else
      {
        v51 = 0;
      }

      outlined init with copy of Scrollable?(v62, v59, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      v52 = v60;
      if (v60)
      {
        v53 = v61;
        __swift_project_boxed_opaque_existential_1(v59, v60);
        v58 = v51;
        (*(v53 + 32))(&v58, v52, v53, v43, v26);
        outlined destroy of ViewList?(v62, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
        result = __swift_destroy_boxed_opaque_existential_1(v59);
      }

      else
      {
        outlined destroy of ViewList?(v62, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
        result = outlined destroy of ViewList?(v59, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      }
    }
  }

  *(v5 + 432) = 0;
  *(v5 + 440) = 0;
  *(v5 + 448) = 1;
  return result;
}

{
  v5 = v4;
  v56 = a3;
  v57 = a4;
  specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)(a1, specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:), v68);
  memcpy(v70, v68, sizeof(v70));
  v8 = v68[35];
  v9 = v68[36];
  v10 = v68[37];
  memcpy(v71, v70, sizeof(v71));
  v72 = v68[35];
  v73 = v68[36];
  v74 = v68[37];
  v55 = a1;
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(v71) == 1)
  {
    v11 = *(a1 + 35);
    v12 = *(a1 + 36);
    memcpy(v68, a1, 0x129uLL);
    if (*(v5 + 472))
    {
      goto LABEL_7;
    }
  }

  else
  {
    memcpy(v68, v70, 0x118uLL);
    v68[35] = v8;
    v68[36] = v9;
    v11 = v8;
    v12 = v9;
    LOBYTE(v68[37]) = v10;
    if (*(v5 + 472))
    {
      goto LABEL_7;
    }
  }

  v14 = *(v5 + 456);
  v13 = *(v5 + 464);
  memcpy(v64, v70, 0x118uLL);
  *&v64[280] = v8;
  *&v64[288] = v9;
  v64[296] = v10;
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(v64) == 1)
  {
    ScrollGeometry.translate(by:limit:)(__PAIR128__(v13, v14), __PAIR128__(v12, v11));
    ScrollGeometry.translate(by:limit:)(__PAIR128__(v13, v14), __PAIR128__(v12, v11));
  }

LABEL_7:
  memcpy(v69, v68, 0x129uLL);
  type metadata accessor for LazyLayoutViewCache();
  v15 = *AGGraphGetValue();
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v54[2] = v5;
  v54[3] = v69;
  v54[4] = a2;
  v18 = *(*v15 + 408);

  v18(v17, partial apply for specialized closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:), v54, v17, MEMORY[0x1E69E7CA8] + 8);

  if (*(a2 + 40) == 1)
  {
    v19 = *(v5 + 40);
    if (v19 != *MEMORY[0x1E698D3F8])
    {
      AGGraphGetValue();

      LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v19, 0);
    }
  }

  AGGraphClearUpdate();
  AGGraphGetValue();
  swift_beginAccess();
  v20 = *AGGraphGetValue();

  AGGraphSetUpdate();
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v21);
  v22 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v20, v68[0]);
  if (v22)
  {
    v23 = *(v22 + 72) == 2;
  }

  else
  {
    v23 = 0;
  }

  AGGraphGetValue();

  v24 = *AGGraphGetValue();

  result = AGGraphGetValue();
  v65[0] = 5;
  v26 = 0.0;
  if (*(v5 + 448))
  {
    v27 = 0.0;
  }

  else
  {
    v28 = *(v5 + 432);
    v29 = *(v5 + 440);
    v30 = v28 == 0.0;
    if (v29 != 0.0)
    {
      v30 = 0;
    }

    v27 = 0.0;
    if (!v30 && !v23)
    {
      v65[0] = 1;
      v26 = v29;
      v27 = v28;
    }
  }

  v31 = *(a2 + 48);
  v32 = *(a2 + 56);
  v33 = v31 == 0.0;
  if (v32 != 0.0)
  {
    v33 = 0;
  }

  if (!v33 && !v23)
  {
    v27 = v27 + v31;
    v26 = v26 + v32;
    v65[0] = 0;
  }

  v34 = v27 != 0.0;
  if (v26 != 0.0)
  {
    v34 = 1;
  }

  if (!v34 && !v23)
  {
    memcpy(v68, v5, 0x1D9uLL);
    v35 = *(a2 + 48);
    v66[2] = *(a2 + 32);
    v66[3] = v35;
    v67 = *(a2 + 64);
    v36 = *(a2 + 16);
    v66[0] = *a2;
    v66[1] = v36;
    outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(v68, v64);
    outlined init with copy of _LazyLayout_Placements(v66, v64);
    specialized LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(v66, v55, v65, 2, partial apply for closure #1 in LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:), outlined init with copy of LazySubviewPlacements<LazyVStackLayout>, outlined destroy of LazySubviewPlacements<LazyVStackLayout>, _s7SwiftUI21LazySubviewPlacementsV26notPlacedAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F003oldD00S5Index4axes16placementContext10placementsSo6CGSizeVSgAA01_c7Layout_gD0V_SiAA4AxisO3SetVAA01_cz10_PlacementW0VAA01_cz1_E0VtFAA0c6VStackZ0V_Tt3B5);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    outlined destroy of _LazyLayout_Placements(v66);
    result = outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v68);
    if ((v42 & 1) == 0)
    {
      v27 = v38;
      v26 = v40;
    }
  }

  if ((v24 & (v27 != 0.0)) != 0)
  {
    v43 = -v27;
  }

  else
  {
    v43 = v27;
  }

  if (v26 != 0.0 || v27 != 0.0)
  {
    v45 = v65[0];
    if (v65[0] != 5)
    {
      _s7SwiftUI21LazySubviewPlacementsV14logTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LL_6reasonySo6CGSizeV_AA0G6ReasonAELLOtFAA0C12HStackLayoutV_Tt1g5Tm(v65[0], v43, v26);
      v46 = v56;
      *v46 = CGRectOffset(*v56, v43, v26);
      v47 = v57;
      *v47 = CGRectOffset(*v57, v43, v26);
      *(v5 + 456) = v43;
      *(v5 + 464) = v26;
      *(v5 + 472) = 0;
      AGGraphClearUpdate();
      memcpy(v64, v5, sizeof(v64));
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(v64, v59);
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        outlined init with copy of AnyTrackedValue(WeakValue, v62);
      }

      else
      {
        v63 = 0;
        memset(v62, 0, sizeof(v62));
      }

      outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v64);
      AGGraphSetUpdate();
      if (v45)
      {
        v49 = *&v64[32];
        AGGraphClearUpdate();
        v50 = v49 == *MEMORY[0x1E698D3F8] || *AGGraphGetValue() == 0;
        AGGraphSetUpdate();
        v51 = v45 == 1 || v50;
      }

      else
      {
        v51 = 0;
      }

      outlined init with copy of Scrollable?(v62, v59, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      v52 = v60;
      if (v60)
      {
        v53 = v61;
        __swift_project_boxed_opaque_existential_1(v59, v60);
        v58 = v51;
        (*(v53 + 32))(&v58, v52, v53, v43, v26);
        outlined destroy of ViewList?(v62, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
        result = __swift_destroy_boxed_opaque_existential_1(v59);
      }

      else
      {
        outlined destroy of ViewList?(v62, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
        result = outlined destroy of ViewList?(v59, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
      }
    }
  }

  *(v5 + 432) = 0;
  *(v5 + 440) = 0;
  *(v5 + 448) = 1;
  return result;
}

void _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6HStackV0V_Tt2t3B5(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 208);
  v6 = *(a2 + 280);
  v7 = *(a2 + 288);
  v8 = *(a2 + 296);
  v9 = *(a2 + 104);
  v10 = *(a2 + 136);
  v15[4] = *(a2 + 120);
  v16 = v10;
  v17 = *(a2 + 152);
  v11 = *(a2 + 72);
  v15[0] = *(a2 + 56);
  v15[1] = v11;
  v15[2] = *(a2 + 88);
  v15[3] = v9;
  if (v8)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v7, v6));
  }

  v12 = swift_allocObject();
  v13 = *(&v17 + 1);
  *(v12 + 16) = v16;
  *(v12 + 32) = v5;
  *(v12 + 40) = v13;

  specialized Sequence.min(by:)(a1, v12, v15);
  if (*&v15[0])
  {
    v14 = *(*&v15[0] + 152);
    *a3 = *(*&v15[0] + 144);

    outlined destroy of GlassEntryView?(v15, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
  }

  else
  {

    v14 = 0;
    *a3 = 0;
  }

  a3[1] = v14;
}

void _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6VStackV0V_Tt2t3B5(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 200);
  v6 = *(a2 + 280);
  v7 = *(a2 + 288);
  v8 = *(a2 + 296);
  v9 = *(a2 + 104);
  v10 = *(a2 + 136);
  v15[4] = *(a2 + 120);
  v16 = v10;
  v17 = *(a2 + 152);
  v11 = *(a2 + 72);
  v15[0] = *(a2 + 56);
  v15[1] = v11;
  v15[2] = *(a2 + 88);
  v15[3] = v9;
  if (v8)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v7, v6));
  }

  v12 = swift_allocObject();
  v13 = v17;
  *(v12 + 16) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v5;

  specialized Sequence.min(by:)(a1, v12, v15);
  if (*&v15[0])
  {
    v14 = *(*&v15[0] + 152);
    *a3 = *(*&v15[0] + 144);

    outlined destroy of GlassEntryView?(v15, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
  }

  else
  {

    v14 = 0;
    *a3 = 0;
  }

  a3[1] = v14;
}

uint64_t specialized closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(_DWORD *, _DWORD *), uint64_t a6, void (*a7)(_DWORD *), void (*a8)(_DWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, __n128))
{
  memcpy(__dst, a2, 0x1D9uLL);
  a5(__dst, v23);
  Value = AGGraphGetValue();
  v14 = *Value;
  v15 = *(Value + 8);
  v16 = *(Value + 16);
  v17 = *(Value + 20);
  a7(__dst);
  memcpy(v23, a2, 0x1D9uLL);
  type metadata accessor for LazyLayoutViewCache();
  a5(v23, v21);
  AGGraphGetValue();

  a7(v23);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    LazyLayoutViewCache.subviews(context:)(result, v21);

    (a8)(v21, a3, a1, a4, v14, v15, v16 | (v17 << 32));
    return outlined destroy of _LazyLayout_Subviews(v21);
  }

  return result;
}

uint64_t _s7SwiftUI21LazySubviewPlacementsV14logTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LL_6reasonySo6CGSizeV_AA0G6ReasonAELLOtFAA0C12HStackLayoutV_Tt1g5Tm(unsigned __int8 a1, double a2, double a3)
{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  if (one-time initialization token for scroll != -1)
  {
    v25 = v7;
    swift_once();
    v7 = v25;
  }

  v10 = __swift_project_value_buffer(v7, static Log.scroll);
  outlined init with copy of ObservationTracking._AccessList?(v10, v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    return outlined destroy of ObservationTracking._AccessList?(v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 134218498;
    *(v16 + 4) = a2;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a3;
    v18 = 0xD000000000000013;
    *(v16 + 22) = 2080;
    v19 = 0x800000018DD759D0;
    if (a1 == 3)
    {
      v19 = 0x800000018DD759F0;
    }

    else
    {
      v18 = 0xD000000000000015;
    }

    if (a1 == 2)
    {
      v18 = 0x7377656976627573;
      v19 = 0xEF65676E61686320;
    }

    v20 = 0xD000000000000013;
    v21 = 0x800000018DD75A30;
    if (a1)
    {
      v20 = 0xD00000000000001CLL;
      v21 = 0x800000018DD75A10;
    }

    if (a1 <= 1u)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    if (a1 <= 1u)
    {
      v23 = v21;
    }

    else
    {
      v23 = v19;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_18D018000, v14, v15, "Adjusting content offset by %f, %f for reason: %s.", v16, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  return (*(v12 + 8))(v9, v11);
}

double specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, unint64_t, uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 48);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v7, __src[0]);
  if (!v8 || *(v8 + 76) == 255 || _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v7) == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_11;
  }

  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for ScrollTargetRole.Role?, &type metadata for ScrollTargetRole.Role, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v10 = (*Value & 0xFE) != 2 && (*Value & 1) == 0;
  if (!v10 || *(a1 + 32) == 0.0 || *(a1 + 40) == 0.0)
  {
    goto LABEL_11;
  }

  v12 = *(v3 + 96);
  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
    v14 = *(v13 + 144);
    v15 = *(v13 + 148);
    v16 = *(v13 + 152);

LABEL_15:
    a2(a1, v14 | (v15 << 32), v16);

    return result;
  }

  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);

  v17 = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(v17, __src);

  v18 = __src[3];
  v19 = __src[4];
  __swift_project_boxed_opaque_existential_1(__src, __src[3]);
  v20 = (*(v19 + 40))(v18, v19);
  if (v20)
  {
    v21 = v20;
    if ((*(*v20 + 88))(v20))
    {
      (*(*v21 + 96))(v22, 0);

      v14 = v22[0];
      v15 = HIDWORD(v22[0]);
      v16 = v22[1];
      __swift_destroy_boxed_opaque_existential_1(__src);
      goto LABEL_15;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(__src);
LABEL_11:
  _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
  memcpy(a3, __src, 0x129uLL);
  return result;
}

uint64_t specialized LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  AGGraphClearUpdate();
  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  swift_beginAccess();
  v10 = *AGGraphGetValue();

  AGGraphSetUpdate();
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v11);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v10, __src[0]);
  if (v12)
  {
    v13 = *(v12 + 72);

    if (v13 == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v60 = a1;
  Value = AGGraphGetValue();
  v15 = *MEMORY[0x1E698D3F8];
  if (*(*Value + 164) == *MEMORY[0x1E698D3F8])
  {
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    *&v90 = 0;
    outlined destroy of GlassEntryView?(&v85, &lazy cache variable for type metadata for ScrollPosition?, &type metadata for ScrollPosition, MEMORY[0x1E69E6720]);
LABEL_7:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    v16 = a4;
    goto LABEL_8;
  }

  v58 = a2;
  v59 = a3;
  v18 = a4;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);

  v19 = AGGraphGetValue();
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v19, __src, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(*__src[1] + 104))(1);
    outlined init with copy of ScrollPosition(&__src[2], &v85);
  }

  else
  {
    (*(*__src[1] + 120))(&v85);
  }

  outlined destroy of GlassEntryView?(__src, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  v100[2] = v87;
  v100[3] = v88;
  v100[4] = v89;
  v101 = v90;
  v100[0] = v85;
  v100[1] = v86;
  v20 = *(v5 + 32);
  AGGraphClearUpdate();
  if (v20 == v15)
  {
    AGGraphSetUpdate();
    v99 = 0;
    v21 = v60;
  }

  else
  {
    v22 = *AGGraphGetValue();
    AGGraphSetUpdate();
    v99 = 0;
    v21 = v60;
    if (v22)
    {
      goto LABEL_31;
    }
  }

  v23 = (v5 + 264);
  v24 = *(v5 + 408);
  v25 = *(v5 + 376);
  v80 = *(v5 + 392);
  v81 = v24;
  v26 = *(v5 + 408);
  v82[0] = *(v5 + 424);
  *(v82 + 9) = *(v5 + 433);
  v27 = *(v5 + 344);
  v28 = *(v5 + 312);
  v76 = *(v5 + 328);
  v77 = v27;
  v29 = *(v5 + 344);
  v30 = *(v5 + 376);
  v78 = *(v5 + 360);
  v79 = v30;
  v31 = *(v5 + 280);
  v73[0] = *(v5 + 264);
  v73[1] = v31;
  v32 = *(v5 + 312);
  v34 = *(v5 + 264);
  v33 = *(v5 + 280);
  v74 = *(v5 + 296);
  v75 = v32;
  v93 = v80;
  v94 = v26;
  v95[0] = *(v5 + 424);
  *(v95 + 9) = *(v5 + 433);
  v89 = v76;
  v90 = v29;
  v91 = v78;
  v92 = v25;
  v85 = v34;
  v86 = v33;
  v87 = v74;
  v88 = v28;
  memcpy(__src, v21, 0x129uLL);
  outlined init with copy of PositionState(v73, __dst);
  v35 = PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(__src, &v99);
  v83[8] = v93;
  v83[9] = v94;
  v84[0] = v95[0];
  *(v84 + 9) = *(v95 + 9);
  v83[4] = v89;
  v83[5] = v90;
  v83[6] = v91;
  v83[7] = v92;
  v83[0] = v85;
  v83[1] = v86;
  v83[2] = v87;
  v83[3] = v88;
  outlined destroy of PositionState(v83);
  if (v35)
  {
    specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
    memcpy(__src, v5, 0x1D9uLL);
    memcpy(__dst, v96, 0x129uLL);
    if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
    {
      v36 = "for new view content size";
      outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__src, &v85);
      v37 = 0xD000000000000014;
LABEL_25:
      v50 = v36 | 0x8000000000000000;
LABEL_26:
      _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12HStackLayoutV_Tt0g5(v37, v50);
      outlined destroy of LazySubviewPlacements<LazyHStackLayout>(__src);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v38 = *(v5 + 408);
  v39 = *(v5 + 376);
  v68 = *(v5 + 392);
  v69 = v38;
  v40 = *(v5 + 408);
  v70[0] = *(v5 + 424);
  *(v70 + 9) = *(v5 + 433);
  v41 = *(v5 + 344);
  v42 = *(v5 + 312);
  v64 = *(v5 + 328);
  v65 = v41;
  v43 = *(v5 + 344);
  v44 = *(v5 + 376);
  v66 = *(v5 + 360);
  v67 = v44;
  v45 = *(v5 + 280);
  v61[0] = *v23;
  v61[1] = v45;
  v46 = *(v5 + 312);
  v48 = *v23;
  v47 = *(v5 + 280);
  v62 = *(v5 + 296);
  v63 = v46;
  v93 = v68;
  v94 = v40;
  v95[0] = *(v5 + 424);
  *(v95 + 9) = *(v5 + 433);
  v89 = v64;
  v90 = v43;
  v91 = v66;
  v92 = v39;
  v85 = v48;
  v86 = v47;
  v87 = v62;
  v88 = v42;
  memcpy(__src, v21, 0x129uLL);
  v49 = PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(__src, &v99);
  v71[8] = v93;
  v71[9] = v94;
  v72[0] = v95[0];
  *(v72 + 9) = *(v95 + 9);
  v71[4] = v89;
  v71[5] = v90;
  v71[6] = v91;
  v71[7] = v92;
  v71[0] = v85;
  v71[1] = v86;
  v71[2] = v87;
  v71[3] = v88;
  outlined init with copy of PositionState(v61, __dst);
  outlined destroy of PositionState(v71);
  if (!v49)
  {
    v51 = AGGraphGetValue();
    v52 = *v51;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    v55 = *(v51 + 20);
    v56 = *AGGraphGetValue();

    LOBYTE(__src[0]) = v54;
    v57 = v54 | (v55 << 32);
    v21 = v60;
    LOBYTE(v52) = specialized PositionState.dispatchSubviewsChange<A>(context:layout:cache:)(v60, v52, v53, v57, v56);

    if (v52)
    {
      specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v60, v100, v58, v59, v96);
      memcpy(__src, v5, 0x1D9uLL);
      memcpy(__dst, v96, 0x129uLL);
      if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) == 1)
      {
        goto LABEL_27;
      }

      outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__src, &v85);
      v37 = 0x2077656E20726F66;
      v50 = 0xEF6469206E69616DLL;
      goto LABEL_26;
    }

LABEL_31:
    if (*(v5 + 264) != 1)
    {
      specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
      memcpy(__src, v5, 0x1D9uLL);
      memcpy(__dst, v96, 0x129uLL);
      if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
      {
        outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__src, &v85);
        _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12HStackLayoutV_Tt0g5(0xD000000000000011, 0x800000018DD75A50);
        outlined destroy of LazySubviewPlacements<LazyHStackLayout>(__src);
      }

      memcpy(v18, v96, 0x129uLL);
      result = outlined destroy of ScrollPosition(v100);
      goto LABEL_9;
    }

    outlined destroy of ScrollPosition(v100);
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    v16 = v18;
LABEL_8:
    result = memcpy(v16, __src, 0x129uLL);
LABEL_9:
    *(v5 + 264) = 1;
    return result;
  }

  specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
  memcpy(__src, v5, 0x1D9uLL);
  memcpy(__dst, v96, 0x129uLL);
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
  {
    v36 = "for initial state";
    outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__src, &v85);
    v37 = 0xD000000000000019;
    goto LABEL_25;
  }

LABEL_27:
  memcpy(v18, v96, 0x129uLL);
  result = outlined destroy of ScrollPosition(v100);
  *v23 = 1;
  return result;
}

{
  v5 = v4;
  AGGraphClearUpdate();
  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  swift_beginAccess();
  v10 = *AGGraphGetValue();

  AGGraphSetUpdate();
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v11);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v10, __src[0]);
  if (v12)
  {
    v13 = *(v12 + 72);

    if (v13 == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v60 = a1;
  Value = AGGraphGetValue();
  v15 = *MEMORY[0x1E698D3F8];
  if (*(*Value + 164) == *MEMORY[0x1E698D3F8])
  {
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    *&v90 = 0;
    outlined destroy of GlassEntryView?(&v85, &lazy cache variable for type metadata for ScrollPosition?, &type metadata for ScrollPosition, MEMORY[0x1E69E6720]);
LABEL_7:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    v16 = a4;
    goto LABEL_8;
  }

  v58 = a2;
  v59 = a3;
  v18 = a4;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);

  v19 = AGGraphGetValue();
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v19, __src, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(*__src[1] + 104))(1);
    outlined init with copy of ScrollPosition(&__src[2], &v85);
  }

  else
  {
    (*(*__src[1] + 120))(&v85);
  }

  outlined destroy of GlassEntryView?(__src, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  v100[2] = v87;
  v100[3] = v88;
  v100[4] = v89;
  v101 = v90;
  v100[0] = v85;
  v100[1] = v86;
  v20 = *(v5 + 32);
  AGGraphClearUpdate();
  if (v20 == v15)
  {
    AGGraphSetUpdate();
    v99 = 0;
    v21 = v60;
  }

  else
  {
    v22 = *AGGraphGetValue();
    AGGraphSetUpdate();
    v99 = 0;
    v21 = v60;
    if (v22)
    {
      goto LABEL_31;
    }
  }

  v23 = (v5 + 264);
  v24 = *(v5 + 408);
  v25 = *(v5 + 376);
  v80 = *(v5 + 392);
  v81 = v24;
  v26 = *(v5 + 408);
  v82[0] = *(v5 + 424);
  *(v82 + 9) = *(v5 + 433);
  v27 = *(v5 + 344);
  v28 = *(v5 + 312);
  v76 = *(v5 + 328);
  v77 = v27;
  v29 = *(v5 + 344);
  v30 = *(v5 + 376);
  v78 = *(v5 + 360);
  v79 = v30;
  v31 = *(v5 + 280);
  v73[0] = *(v5 + 264);
  v73[1] = v31;
  v32 = *(v5 + 312);
  v34 = *(v5 + 264);
  v33 = *(v5 + 280);
  v74 = *(v5 + 296);
  v75 = v32;
  v93 = v80;
  v94 = v26;
  v95[0] = *(v5 + 424);
  *(v95 + 9) = *(v5 + 433);
  v89 = v76;
  v90 = v29;
  v91 = v78;
  v92 = v25;
  v85 = v34;
  v86 = v33;
  v87 = v74;
  v88 = v28;
  memcpy(__src, v21, 0x129uLL);
  outlined init with copy of PositionState(v73, __dst);
  v35 = PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(__src, &v99);
  v83[8] = v93;
  v83[9] = v94;
  v84[0] = v95[0];
  *(v84 + 9) = *(v95 + 9);
  v83[4] = v89;
  v83[5] = v90;
  v83[6] = v91;
  v83[7] = v92;
  v83[0] = v85;
  v83[1] = v86;
  v83[2] = v87;
  v83[3] = v88;
  outlined destroy of PositionState(v83);
  if (v35)
  {
    specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
    memcpy(__src, v5, 0x1D9uLL);
    memcpy(__dst, v96, 0x129uLL);
    if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
    {
      v36 = "for new view content size";
      outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__src, &v85);
      v37 = 0xD000000000000014;
LABEL_25:
      v50 = v36 | 0x8000000000000000;
LABEL_26:
      _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12VStackLayoutV_Tt0g5(v37, v50);
      outlined destroy of LazySubviewPlacements<LazyVStackLayout>(__src);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v38 = *(v5 + 408);
  v39 = *(v5 + 376);
  v68 = *(v5 + 392);
  v69 = v38;
  v40 = *(v5 + 408);
  v70[0] = *(v5 + 424);
  *(v70 + 9) = *(v5 + 433);
  v41 = *(v5 + 344);
  v42 = *(v5 + 312);
  v64 = *(v5 + 328);
  v65 = v41;
  v43 = *(v5 + 344);
  v44 = *(v5 + 376);
  v66 = *(v5 + 360);
  v67 = v44;
  v45 = *(v5 + 280);
  v61[0] = *v23;
  v61[1] = v45;
  v46 = *(v5 + 312);
  v48 = *v23;
  v47 = *(v5 + 280);
  v62 = *(v5 + 296);
  v63 = v46;
  v93 = v68;
  v94 = v40;
  v95[0] = *(v5 + 424);
  *(v95 + 9) = *(v5 + 433);
  v89 = v64;
  v90 = v43;
  v91 = v66;
  v92 = v39;
  v85 = v48;
  v86 = v47;
  v87 = v62;
  v88 = v42;
  memcpy(__src, v21, 0x129uLL);
  v49 = PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(__src, &v99);
  v71[8] = v93;
  v71[9] = v94;
  v72[0] = v95[0];
  *(v72 + 9) = *(v95 + 9);
  v71[4] = v89;
  v71[5] = v90;
  v71[6] = v91;
  v71[7] = v92;
  v71[0] = v85;
  v71[1] = v86;
  v71[2] = v87;
  v71[3] = v88;
  outlined init with copy of PositionState(v61, __dst);
  outlined destroy of PositionState(v71);
  if (!v49)
  {
    v51 = AGGraphGetValue();
    v52 = *v51;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    v55 = *(v51 + 20);
    v56 = *AGGraphGetValue();

    LOBYTE(__src[0]) = v54;
    v57 = v54 | (v55 << 32);
    v21 = v60;
    LOBYTE(v52) = specialized PositionState.dispatchSubviewsChange<A>(context:layout:cache:)(v60, v52, v53, v57, v56);

    if (v52)
    {
      specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v60, v100, v58, v59, v96);
      memcpy(__src, v5, 0x1D9uLL);
      memcpy(__dst, v96, 0x129uLL);
      if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) == 1)
      {
        goto LABEL_27;
      }

      outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__src, &v85);
      v37 = 0x2077656E20726F66;
      v50 = 0xEF6469206E69616DLL;
      goto LABEL_26;
    }

LABEL_31:
    if (*(v5 + 264) != 1)
    {
      specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
      memcpy(__src, v5, 0x1D9uLL);
      memcpy(__dst, v96, 0x129uLL);
      if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
      {
        outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__src, &v85);
        _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12VStackLayoutV_Tt0g5(0xD000000000000011, 0x800000018DD75A50);
        outlined destroy of LazySubviewPlacements<LazyVStackLayout>(__src);
      }

      memcpy(v18, v96, 0x129uLL);
      result = outlined destroy of ScrollPosition(v100);
      goto LABEL_9;
    }

    outlined destroy of ScrollPosition(v100);
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    v16 = v18;
LABEL_8:
    result = memcpy(v16, __src, 0x129uLL);
LABEL_9:
    *(v5 + 264) = 1;
    return result;
  }

  specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v21, v100, v58, v59, v96);
  memcpy(__src, v5, 0x1D9uLL);
  memcpy(__dst, v96, 0x129uLL);
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
  {
    v36 = "for initial state";
    outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__src, &v85);
    v37 = 0xD000000000000019;
    goto LABEL_25;
  }

LABEL_27:
  memcpy(v18, v96, 0x129uLL);
  result = outlined destroy of ScrollPosition(v100);
  *v23 = 1;
  return result;
}

void *specialized LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v9 = a1;
  v12 = a1[11];
  v11 = a1[12];
  v13 = a1[31];
  v14 = a1[32];
  v15 = *(a1 + 35);
  v16 = *(a1 + 36);
  outlined init with copy of ScrollPosition.Storage(a2, edge);
  v17 = *edge;
  if (v57 > 2u)
  {
    if (v57 == 3)
    {
      v21 = *edge - v13;
      v22 = v12 - v14;
      goto LABEL_19;
    }

    if (v57 == 4)
    {
      v21 = v11 - v13;
      v22 = *edge - v14;
      goto LABEL_19;
    }

LABEL_29:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(v58);
    v42 = v58;
    return memcpy(a5, v42, 0x129uLL);
  }

  if (v57)
  {
    if (v57 == 1)
    {
      v18 = *(v9 + 23);
      v19 = *(v9 + 27);
      v58[2] = *(v9 + 25);
      v58[3] = v19;
      v58[4] = *(v9 + 29);
      v20 = *(v9 + 21);
      v58[1] = v18;
      v58[0] = v20;
      v58[6] = *(v9 + 33);
      *&v58[5] = v13;
      *(&v58[5] + 1) = v14;
      *&v17 = ScrollGeometry.targetRect(edge:)(edge[0]);
    }

    else
    {
      v59.origin.y = *&edge[8];
    }

    v21 = v17 - v13;
    v22 = v59.origin.y - v14;
    goto LABEL_19;
  }

  v50 = *edge;
  v51 = v55;
  *v52 = *v56;
  *&v52[9] = *&v56[9];
  *&v58[0] = a3;
  *(&v58[0] + 1) = a4;
  v23 = _ViewList_ID.allExplicitIDs.getter();
  v24 = *(v23 + 16);
  if (!v24)
  {

    outlined destroy of ScrollPosition.ViewID(&v50);
    goto LABEL_29;
  }

  v44 = v9;
  __src = v6;
  v25 = 0;
  v26 = 0.0;
  v27 = 1;
  v28 = 32;
  do
  {
    v29 = v23;
    (*(**(v23 + v28) + 104))(v58);
    v30 = *(&v58[1] + 1);
    v31 = __swift_project_boxed_opaque_existential_1(v58, *(&v58[1] + 1));
    v32 = ScrollPosition.matches<A>(id:)(v31, v30);

    __swift_destroy_boxed_opaque_existential_1(v58);
    if (v32)
    {
      if (v27)
      {
        v33 = *(&v51 + 1);
        v46 = *v52;
        v34 = __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        memcpy(__dst, __src, 0x1D9uLL);
        memcpy(v48, __src, sizeof(v48));
        memcpy(v47, v44, 0x129uLL);
        v35 = *&v52[8];
        v36 = *&v52[16];
        v37 = v52[24];
        outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(__dst, v58);
        type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPlacements);
        v25 = LazySubviewPlacements.makeViewIDTranslation<A>(_:viewID:anchor:)(v47, v34, v35, v36, v37, v38, v33, v46);
        v26 = v39;
        v27 = v40;

        memcpy(v58, v48, 0x1D9uLL);
        outlined destroy of LazySubviewPlacements<LazyHStackLayout>(v58);
      }

      else
      {

        v27 = 0;
      }
    }

    else
    {
    }

    v28 += 8;
    --v24;
    v23 = v29;
  }

  while (v24);

  outlined destroy of ScrollPosition.ViewID(&v50);
  if (v27)
  {
    goto LABEL_29;
  }

  *&v21 = v25;
  v22 = v26;
  v9 = v44;
  v6 = __src;
LABEL_19:
  if (fabs(v21) < 0.01 && fabs(v22) < 0.01)
  {
    goto LABEL_29;
  }

  memcpy(v58, v6, 0x1D9uLL);
  if (specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter())
  {
    memcpy(v53, v9, 0x129uLL);
    ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v22, *&v21), __PAIR128__(v16, v15));
    ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v22, *&v21), __PAIR128__(v16, v15));
    v41 = v53[32] - v14;
    *(v6 + 54) = v53[31] - v13;
    *(v6 + 55) = v41;
    *(v6 + 448) = 0;
    memcpy(__dst, v53, 0x129uLL);
    _ViewInputs.base.modify();
  }

  else
  {
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__dst);
  }

  v42 = __dst;
  return memcpy(a5, v42, 0x129uLL);
}

{
  v6 = v5;
  v9 = a1;
  v12 = a1[11];
  v11 = a1[12];
  v13 = a1[31];
  v14 = a1[32];
  v15 = *(a1 + 35);
  v16 = *(a1 + 36);
  outlined init with copy of ScrollPosition.Storage(a2, edge);
  v17 = *edge;
  if (v57 > 2u)
  {
    if (v57 == 3)
    {
      v21 = *edge - v13;
      v22 = v12 - v14;
      goto LABEL_19;
    }

    if (v57 == 4)
    {
      v21 = v11 - v13;
      v22 = *edge - v14;
      goto LABEL_19;
    }

LABEL_29:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(v58);
    v42 = v58;
    return memcpy(a5, v42, 0x129uLL);
  }

  if (v57)
  {
    if (v57 == 1)
    {
      v18 = *(v9 + 23);
      v19 = *(v9 + 27);
      v58[2] = *(v9 + 25);
      v58[3] = v19;
      v58[4] = *(v9 + 29);
      v20 = *(v9 + 21);
      v58[1] = v18;
      v58[0] = v20;
      v58[6] = *(v9 + 33);
      *&v58[5] = v13;
      *(&v58[5] + 1) = v14;
      *&v17 = ScrollGeometry.targetRect(edge:)(edge[0]);
    }

    else
    {
      v59.origin.y = *&edge[8];
    }

    v21 = v17 - v13;
    v22 = v59.origin.y - v14;
    goto LABEL_19;
  }

  v50 = *edge;
  v51 = v55;
  *v52 = *v56;
  *&v52[9] = *&v56[9];
  *&v58[0] = a3;
  *(&v58[0] + 1) = a4;
  v23 = _ViewList_ID.allExplicitIDs.getter();
  v24 = *(v23 + 16);
  if (!v24)
  {

    outlined destroy of ScrollPosition.ViewID(&v50);
    goto LABEL_29;
  }

  v44 = v9;
  __src = v6;
  v25 = 0;
  v26 = 0.0;
  v27 = 1;
  v28 = 32;
  do
  {
    v29 = v23;
    (*(**(v23 + v28) + 104))(v58);
    v30 = *(&v58[1] + 1);
    v31 = __swift_project_boxed_opaque_existential_1(v58, *(&v58[1] + 1));
    v32 = ScrollPosition.matches<A>(id:)(v31, v30);

    __swift_destroy_boxed_opaque_existential_1(v58);
    if (v32)
    {
      if (v27)
      {
        v33 = *(&v51 + 1);
        v46 = *v52;
        v34 = __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        memcpy(__dst, __src, 0x1D9uLL);
        memcpy(v48, __src, sizeof(v48));
        memcpy(v47, v44, 0x129uLL);
        v35 = *&v52[8];
        v36 = *&v52[16];
        v37 = v52[24];
        outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(__dst, v58);
        type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPlacements);
        v25 = LazySubviewPlacements.makeViewIDTranslation<A>(_:viewID:anchor:)(v47, v34, v35, v36, v37, v38, v33, v46);
        v26 = v39;
        v27 = v40;

        memcpy(v58, v48, 0x1D9uLL);
        outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v58);
      }

      else
      {

        v27 = 0;
      }
    }

    else
    {
    }

    v28 += 8;
    --v24;
    v23 = v29;
  }

  while (v24);

  outlined destroy of ScrollPosition.ViewID(&v50);
  if (v27)
  {
    goto LABEL_29;
  }

  *&v21 = v25;
  v22 = v26;
  v9 = v44;
  v6 = __src;
LABEL_19:
  if (fabs(v21) < 0.01 && fabs(v22) < 0.01)
  {
    goto LABEL_29;
  }

  memcpy(v58, v6, 0x1D9uLL);
  if (specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter())
  {
    memcpy(v53, v9, 0x129uLL);
    ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v22, *&v21), __PAIR128__(v16, v15));
    ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v22, *&v21), __PAIR128__(v16, v15));
    v41 = v53[32] - v14;
    *(v6 + 54) = v53[31] - v13;
    *(v6 + 55) = v41;
    *(v6 + 448) = 0;
    memcpy(__dst, v53, 0x129uLL);
    _ViewInputs.base.modify();
  }

  else
  {
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__dst);
  }

  v42 = __dst;
  return memcpy(a5, v42, 0x129uLL);
}

BOOL specialized PositionState.dispatchSubviewsChange<A>(context:layout:cache:)(unsigned int *__src, uint64_t a2, char *a3, uint64_t a4, unsigned int *a5)
{
  memcpy(v41, __src, sizeof(v41));
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  AGGraphGetValue();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(v5 + 160);
  if (!v16)
  {
    return 0;
  }

  v31 = a3;
  v29 = a2;
  v30 = a4 & 0xFFFFFFFF00000000;
  v28 = *(v5 + 152);
  v17 = *(*a5 + 400);
  v32 = v16;

  v17(v12, v12);
  LazyLayoutViewCache.subviews(context:)(*__src, v37);
  v36 = MEMORY[0x1E69E7CC0];
  memcpy(v40, v41, 0x129uLL);
  LOBYTE(v33) = a4 & 1;
  specialized LazyStack<>.estimatedPlacement(subviews:context:cache:in:)(v37, v40, v14, &v35, v29, v31, v30 | a4 & 1);
  v18 = *(v5 + 144);
  v38[8] = *(v5 + 128);
  v38[9] = v18;
  v39[0] = *(v5 + 160);
  *(v39 + 9) = *(v5 + 169);
  v19 = *(v5 + 80);
  v38[4] = *(v5 + 64);
  v38[5] = v19;
  v20 = *(v5 + 112);
  v38[6] = *(v5 + 96);
  v38[7] = v20;
  v21 = *(v5 + 16);
  v38[0] = *v5;
  v38[1] = v21;
  v22 = *(v5 + 48);
  v38[2] = *(v5 + 32);
  v38[3] = v22;
  v23 = v36;
  outlined init with copy of PositionState(v38, &v33);
  _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6HStackV0V_Tt2t3B5(v23, __src, &v33);

  outlined destroy of PositionState(v38);
  v24 = v34;
  if (!v34)
  {
    outlined destroy of _LazyLayout_Subviews(v37);
    outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v14);

    return 1;
  }

  v25 = v32;
  if (v33 != v28)
  {

    outlined destroy of _LazyLayout_Subviews(v37);
    outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v14);

    swift_bridgeObjectRelease_n();
    return 1;
  }

  swift_bridgeObjectRetain_n();
  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v24, v25);

  outlined destroy of _LazyLayout_Subviews(v37);
  outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v14);
  swift_bridgeObjectRelease_n();

  return (v26 & 1) == 0;
}

{
  memcpy(v41, __src, sizeof(v41));
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  AGGraphGetValue();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(v5 + 160);
  if (!v16)
  {
    return 0;
  }

  v31 = a3;
  v29 = a2;
  v30 = a4 & 0xFFFFFFFF00000000;
  v28 = *(v5 + 152);
  v17 = *(*a5 + 400);
  v32 = v16;

  v17(v12, v12);
  LazyLayoutViewCache.subviews(context:)(*__src, v37);
  v36 = MEMORY[0x1E69E7CC0];
  memcpy(v40, v41, 0x129uLL);
  LOBYTE(v33) = a4 & 1;
  specialized LazyStack<>.estimatedPlacement(subviews:context:cache:in:)(v37, v40, v14, &v35, v29, v31, v30 | a4 & 1);
  v18 = *(v5 + 144);
  v38[8] = *(v5 + 128);
  v38[9] = v18;
  v39[0] = *(v5 + 160);
  *(v39 + 9) = *(v5 + 169);
  v19 = *(v5 + 80);
  v38[4] = *(v5 + 64);
  v38[5] = v19;
  v20 = *(v5 + 112);
  v38[6] = *(v5 + 96);
  v38[7] = v20;
  v21 = *(v5 + 16);
  v38[0] = *v5;
  v38[1] = v21;
  v22 = *(v5 + 48);
  v38[2] = *(v5 + 32);
  v38[3] = v22;
  v23 = v36;
  outlined init with copy of PositionState(v38, &v33);
  _s7SwiftUI13PositionState33_3D73F7C05789F75EB77CBB3485F8A0F0LLV6mainID8subviews7context6layoutAA010_ViewList_O0VSgSayAA25_LazyLayout_PlacedSubviewVG_AA01_uV17_PlacementContextVxtAA0uV0RzlFAA0u6VStackV0V_Tt2t3B5(v23, __src, &v33);

  outlined destroy of PositionState(v38);
  v24 = v34;
  if (!v34)
  {
    outlined destroy of _LazyLayout_Subviews(v37);
    outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v14);

    return 1;
  }

  v25 = v32;
  if (v33 != v28)
  {

    outlined destroy of _LazyLayout_Subviews(v37);
    outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v14);

    swift_bridgeObjectRelease_n();
    return 1;
  }

  swift_bridgeObjectRetain_n();
  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v24, v25);

  outlined destroy of _LazyLayout_Subviews(v37);
  outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v14);
  swift_bridgeObjectRelease_n();

  return (v26 & 1) == 0;
}

void specialized LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)(uint64_t a1, double *a2, uint64_t *a3, void (*a4)(float64x2_t *__return_ptr, uint64_t, __int128 *))
{
  v8 = *a3;
  outlined init with copy of _LazyLayout_Placements(a3, v71);
  specialized Sequence.min(by:)(v8, a4, &v65);
  outlined destroy of _LazyLayout_Placements(a3);
  v72 = v68;
  v73 = v69;
  v71[1] = v66;
  v71[2] = v67;
  v71[0] = v65;
  v74 = v70;
  v9 = *(&v65 + 1);
  v75 = v66;
  v76 = v67;
  if (!*(&v65 + 1))
  {
    return;
  }

  v10 = *(v4 + 96);
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_27:
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v71, type metadata accessor for (offset: Int, element: _LazyLayout_PlacedSubview)?);
    return;
  }

  v44 = a2;
  v12 = 0;
  v13 = v72;
  v14 = v73;
  v15 = v10 + 32;
  v45 = v4;
  v46 = *(v4 + 104);
  v47 = v70;
  v49 = v10 + 32;
  v50 = *(v10 + 16);
  v48 = *(&v65 + 1);
  while (1)
  {
    v16 = (v15 + 80 * v12);
    v65 = *v16;
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[4];
    v68 = v16[3];
    v69 = v19;
    v66 = v17;
    v67 = v18;
    if ((*(v65 + 173) & 1) == 0 && (*(v65 + 174) & 1) == 0 && *(v65 + 144) == *(v9 + 144) && *(v65 + 148) == *(v9 + 148))
    {
      break;
    }

LABEL_6:
    if (++v12 == v11)
    {
      goto LABEL_27;
    }
  }

  v20 = *(v65 + 152);
  v21 = *(v9 + 152);
  v22 = *(v20 + 16);
  if (v22 != *(v21 + 16))
  {

LABEL_5:

    v15 = v49;
    v11 = v50;
    goto LABEL_6;
  }

  if (v22)
  {
    v23 = v20 == v21;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {

LABEL_30:

    v64[0] = *v16;
    v34 = v16[1];
    v35 = v16[2];
    v36 = v16[4];
    v64[3] = v16[3];
    v64[4] = v36;
    v64[1] = v34;
    v64[2] = v35;
    v58 = v9;
    v59 = v75;
    v60 = v76;
    v61 = v13;
    v62 = v14;
    v63 = v47;
    outlined init with copy of _LazyLayout_PlacedSubview(v64, v57);
    _LazyLayout_PlacedSubview.size.getter();
    v38 = v37;
    v40 = v39;
    v58 = v9;
    v59 = v75;
    v60 = v76;
    v61 = v13;
    v62 = v14;
    v63 = v47;
    _LazyLayout_PlacedSubview.size.getter();
    if (v12 >= *(v46 + 16))
    {
      goto LABEL_40;
    }

    v41 = v46 + 32 * v12;
    v42 = *&v14 - *&v13 * v38 - v44[31] - (*(v41 + 32) - v45[34]) - (v44[2] - v45[48]);
    v43 = *(&v14 + 1) - *(&v13 + 1) * v40 - v44[32] - (*(v41 + 40) - v45[35]) - (v44[3] - v45[49]);
    if (!Axis.Set.contains(_:)(SwiftUI_Axis_horizontal))
    {
      v42 = 0.0;
    }

    if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical))
    {
      v43 = 0.0;
    }

    if (v42 == 0.0 && v43 == 0.0)
    {
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v71, type metadata accessor for (offset: Int, element: _LazyLayout_PlacedSubview)?);
      outlined destroy of _LazyLayout_PlacedSubview(v64);
    }

    else
    {
      specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter();
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v71, type metadata accessor for (offset: Int, element: _LazyLayout_PlacedSubview)?);
      outlined destroy of _LazyLayout_PlacedSubview(v64);
    }
  }

  else
  {
    outlined init with copy of _LazyLayout_PlacedSubview(&v65, v64);

    v24 = 0;
    while (v22)
    {
      v26 = *(v20 + v24 + 32);
      v25 = *(v20 + v24 + 40);
      v27 = *(v20 + v24 + 48);
      v28 = *(v20 + v24 + 52);
      v29 = *(v21 + v24 + 40);
      v30 = *(v21 + v24 + 48);
      v31 = *(v21 + v24 + 52);
      if (v26 != *(v21 + v24 + 32) && (v32 = *(*v26 + 112), v55 = *(v20 + v24 + 48), v56 = *(v20 + v24 + 52), v54 = *(v21 + v24 + 52), v53 = *(v20 + v24 + 40), v52 = *(v21 + v24 + 48), v51 = *(v21 + v24 + 40), , v33 = , LOBYTE(v32) = v32(v33), , , v29 = v51, v30 = v52, v25 = v53, v31 = v54, v27 = v55, v28 = v56, (v32 & 1) == 0) || v25 != v29 || v27 != v30 || v28 != v31)
      {
        outlined destroy of _LazyLayout_PlacedSubview(&v65);

        v9 = v48;
        goto LABEL_5;
      }

      v24 += 24;
      if (!--v22)
      {
        outlined destroy of _LazyLayout_PlacedSubview(&v65);

        v9 = v48;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }
}

uint64_t _s7SwiftUI21LazySubviewPlacementsV20logAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LLyys12StaticStringVFAA0C12HStackLayoutV_Tt0g5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  if (one-time initialization token for scroll != -1)
  {
    v18 = v4;
    swift_once();
    v4 = v18;
  }

  v7 = __swift_project_value_buffer(v4, static Log.scroll);
  outlined init with copy of ObservationTracking._AccessList?(v7, v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return outlined destroy of ObservationTracking._AccessList?(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = StaticString.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_18D018000, v11, v12, "Attempting anchor translation (%s).", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x193AC4820](v14, -1, -1);
    MEMORY[0x193AC4820](v13, -1, -1);
  }

  return (*(v9 + 8))(v6, v8);
}

void specialized LazySubviewPlacements.placedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(uint64_t *a1, unint64_t a2, uint64_t a3, double *a4, uint64_t a5)
{
  v5 = *(*a5 + 16);
  if (!v5)
  {
    return;
  }

  v6 = 0;
  v7 = *a5 + 32;
  v8 = *a1;
  while (1)
  {
    v9 = (v7 + 80 * v6);
    v53 = *v9;
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[4];
    v56 = v9[3];
    v57[0] = v12;
    v54 = v10;
    v55 = v11;
    if (*(v8 + 173) != 1 && *(v8 + 174) != 1 && *(v8 + 144) == *(v53 + 144) && *(v8 + 148) == *(v53 + 148))
    {
      v13 = *(v8 + 152);
      v14 = *(v53 + 152);
      v15 = *(v13 + 16);
      if (v15 == *(v14 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v6 == v5)
    {
      return;
    }
  }

  if (!v15 || v13 == v14)
  {
    outlined init with copy of _LazyLayout_PlacedSubview(&v53, &v48);
  }

  else
  {
    v40 = v7;
    v41 = v5;
    outlined init with copy of _LazyLayout_PlacedSubview(&v53, &v48);

    v16 = 0;
    do
    {
      v18 = *(v13 + v16 + 32);
      v17 = *(v13 + v16 + 40);
      v19 = *(v13 + v16 + 48);
      v20 = *(v13 + v16 + 52);
      v21 = *(v14 + v16 + 40);
      v22 = *(v14 + v16 + 48);
      v23 = *(v14 + v16 + 52);
      if (v18 != *(v14 + v16 + 32) && (v24 = *(*v18 + 112), v46 = *(v13 + v16 + 48), v47 = *(v13 + v16 + 52), v45 = *(v14 + v16 + 52), v44 = *(v13 + v16 + 40), v43 = *(v14 + v16 + 48), v42 = *(v14 + v16 + 40), , v25 = , LOBYTE(v24) = v24(v25), , , v21 = v42, v22 = v43, v17 = v44, v23 = v45, v19 = v46, v20 = v47, (v24 & 1) == 0) || v17 != v21 || v19 != v22 || v20 != v23)
      {

        outlined destroy of _LazyLayout_PlacedSubview(&v53);
        v7 = v40;
        v5 = v41;
        goto LABEL_4;
      }

      v16 += 24;
      --v15;
    }

    while (v15);
  }

  v26 = *(&v55 + 1);
  v28 = v56;
  v27 = *v57;
  v50 = v55;
  v51 = v56;
  v52 = v57[0];
  v48 = v53;
  v49 = v54;
  _LazyLayout_PlacedSubview.size.getter();
  v30 = v29;
  v32 = v31;
  v50 = v55;
  v51 = v56;
  v52 = v57[0];
  v48 = v53;
  v49 = v54;
  _LazyLayout_PlacedSubview.size.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v33 = *(v39 + 104);
  if (*(v33 + 16) <= a2)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v34 = v33 + 32 * a2;
  v35 = *(&v28 + 1) - v26 * v30 - a4[31] - (*(v34 + 32) - *(v39 + 272)) - (a4[2] - *(v39 + 384));
  v36 = v27 - *&v28 * v32 - a4[32] - (*(v34 + 40) - *(v39 + 280)) - (a4[3] - *(v39 + 392));
  if (!Axis.Set.contains(_:)(SwiftUI_Axis_horizontal))
  {
    v35 = 0.0;
  }

  if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical))
  {
    v36 = 0.0;
  }

  if (v35 == 0.0 && v36 == 0.0)
  {
    outlined destroy of _LazyLayout_PlacedSubview(&v53);
  }

  else
  {
    specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter();
    outlined destroy of _LazyLayout_PlacedSubview(&v53);
  }
}

void _s7SwiftUI21LazySubviewPlacementsV26notPlacedAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LL03oldD00S5Index4axes16placementContext10placementsSo6CGSizeVSgAA01_c7Layout_gD0V_SiAA4AxisO3SetVAA01_cz10_PlacementW0VAA01_cz1_E0VtFAA0c6HStackZ0V_Tt3B5(uint64_t a1, unint64_t a2, int a3, double *a4)
{
  v5 = v4;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - v12;
  type metadata accessor for LazyLayoutViewCache();
  v14 = *(*AGGraphGetValue() + 280);
  Value = AGGraphGetValue();
  if ((v14 & 0x8000000000000000) != 0)
  {
    return;
  }

  v33 = a2;
  v16 = *(*Value + 288);
  v38 = 1;
  v17 = 3;
  if (v14 > 3)
  {
    v17 = v14;
  }

  v36 = v17 - 3;
  v37 = 0;
  v35 = v17 - 3;
  v18 = v16 + 3;
  if (__OFADD__(v16, 3))
  {
    __break(1u);
    goto LABEL_22;
  }

  v32[1] = a3;
  AGGraphGetValue();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = CurrentAttribute;

  LazyLayoutViewCache.subviews(context:)(v20, v34);

  MEMORY[0x1EEE9AC00](v21);
  *&v32[-8] = &v35;
  *&v32[-6] = a1;
  *&v32[-4] = &v37;
  *&v32[-2] = v18;
  v39[0] = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v36, v39, closure #1 in LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)partial apply, &v32[-12]);
  if (v38)
  {
LABEL_9:
    outlined destroy of _LazyLayout_Subviews(v34);
    return;
  }

  v22 = v37;
  v23 = *(**AGGraphGetValue() + 400);

  v23(v11, v11);

  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 20);
  LOBYTE(v39[0]) = *(v24 + 16);
  specialized LazyStack<>.boundingRect(at:subviews:context:cache:)(v22, v34, a4, v13, v25, v26, LOBYTE(v39[0]) | (v27 << 32), v39);
  if (v40)
  {
    outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v13);
    goto LABEL_9;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v28 = *(v5 + 104);
  if (*(v28 + 16) <= v33)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v29 = v28 + 32 * v33;
  v30 = *v39 - a4[31] - (*(v29 + 32) - *(v5 + 272)) - (a4[2] - *(v5 + 384));
  v31 = *&v39[1] - a4[32] - (*(v29 + 40) - *(v5 + 280)) - (a4[3] - *(v5 + 392));
  if (!Axis.Set.contains(_:)(SwiftUI_Axis_horizontal))
  {
    v30 = 0.0;
  }

  if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical))
  {
    v31 = 0.0;
  }

  if (v30 != 0.0 || v31 != 0.0)
  {
    specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter();
  }

  outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v13);
  outlined destroy of _LazyLayout_Subviews(v34);
}

void _s7SwiftUI21LazySubviewPlacementsV26notPlacedAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LL03oldD00S5Index4axes16placementContext10placementsSo6CGSizeVSgAA01_c7Layout_gD0V_SiAA4AxisO3SetVAA01_cz10_PlacementW0VAA01_cz1_E0VtFAA0c6VStackZ0V_Tt3B5(uint64_t a1, unint64_t a2, int a3, double *a4)
{
  v5 = v4;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - v12;
  type metadata accessor for LazyLayoutViewCache();
  v14 = *(*AGGraphGetValue() + 280);
  Value = AGGraphGetValue();
  if ((v14 & 0x8000000000000000) != 0)
  {
    return;
  }

  v33 = a2;
  v16 = *(*Value + 288);
  v38 = 1;
  v17 = 3;
  if (v14 > 3)
  {
    v17 = v14;
  }

  v36 = v17 - 3;
  v37 = 0;
  v35 = v17 - 3;
  v18 = v16 + 3;
  if (__OFADD__(v16, 3))
  {
    __break(1u);
    goto LABEL_22;
  }

  v32[1] = a3;
  AGGraphGetValue();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = CurrentAttribute;

  LazyLayoutViewCache.subviews(context:)(v20, v34);

  MEMORY[0x1EEE9AC00](v21);
  *&v32[-8] = &v35;
  *&v32[-6] = a1;
  *&v32[-4] = &v37;
  *&v32[-2] = v18;
  v39[0] = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v36, v39, partial apply for closure #1 in LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:), &v32[-12]);
  if (v38)
  {
LABEL_9:
    outlined destroy of _LazyLayout_Subviews(v34);
    return;
  }

  v22 = v37;
  v23 = *(**AGGraphGetValue() + 400);

  v23(v11, v11);

  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 20);
  LOBYTE(v39[0]) = *(v24 + 16);
  specialized LazyStack<>.boundingRect(at:subviews:context:cache:)(v22, v34, a4, v13, v25, v26, LOBYTE(v39[0]) | (v27 << 32), v39);
  if (v40)
  {
    outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v13);
    goto LABEL_9;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v28 = *(v5 + 104);
  if (*(v28 + 16) <= v33)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v29 = v28 + 32 * v33;
  v30 = *v39 - a4[31] - (*(v29 + 32) - *(v5 + 272)) - (a4[2] - *(v5 + 384));
  v31 = *&v39[1] - a4[32] - (*(v29 + 40) - *(v5 + 280)) - (a4[3] - *(v5 + 392));
  if (!Axis.Set.contains(_:)(SwiftUI_Axis_horizontal))
  {
    v30 = 0.0;
  }

  if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical))
  {
    v31 = 0.0;
  }

  if (v30 != 0.0 || v31 != 0.0)
  {
    specialized LazySubviewPlacements.allowsContentOffsetAdjustments.getter();
  }

  outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v13);
  outlined destroy of _LazyLayout_Subviews(v34);
}

uint64_t _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12HStackLayoutV_Tt0g5(uint64_t a1, unint64_t a2)
{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  if (one-time initialization token for scroll != -1)
  {
    v16 = v5;
    swift_once();
    v5 = v16;
  }

  v8 = __swift_project_value_buffer(v5, static Log.scroll);
  outlined init with copy of ObservationTracking._AccessList?(v8, v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    return outlined destroy of ObservationTracking._AccessList?(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v18);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    _os_log_impl(&dword_18D018000, v12, v13, "%s: Placing default subviews %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v15, -1, -1);
    MEMORY[0x193AC4820](v14, -1, -1);
  }

  return (*(v10 + 8))(v7, v9);
}

uint64_t _s7SwiftUI21LazySubviewPlacementsV19logDefaultPlacement33_3D73F7C05789F75EB77CBB3485F8A0F0LLyySSFAA0C12VStackLayoutV_Tt0g5(uint64_t a1, unint64_t a2)
{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  if (one-time initialization token for scroll != -1)
  {
    v16 = v5;
    swift_once();
    v5 = v16;
  }

  v8 = __swift_project_value_buffer(v5, static Log.scroll);
  outlined init with copy of ObservationTracking._AccessList?(v8, v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    return outlined destroy of ObservationTracking._AccessList?(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v18);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    _os_log_impl(&dword_18D018000, v12, v13, "%s: Placing default subviews %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v15, -1, -1);
    MEMORY[0x193AC4820](v14, -1, -1);
  }

  return (*(v10 + 8))(v7, v9);
}

uint64_t specialized lessThan #1 <A>(_:_:) in DynamicContainerInfo.updateValue()(uint64_t result, unsigned int a2, uint64_t a3)
{
  result = result;
  v5 = *(a3 + 136);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x193AC03C0]();
  }

  else
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  v7 = *(v6 + 64);

  result = a2;
  v8 = *(a3 + 136);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x193AC03C0](a2);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_7:
    v10 = *(v9 + 64);

    return v7 < v10;
  }

LABEL_11:
  __break(1u);
  return result;
}

void specialized DynamicContainerInfo.unremoveItem(at:)(unint64_t a1)
{
  v3 = *(v1 + 136);
  v4 = v3 + 8 * a1;
  v5 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v6 = *(v4 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_38;
  }

  v6 = MEMORY[0x193AC03C0](a1, *(v1 + 136));
LABEL_5:
  swift_beginAccess();
  v7 = *(v6 + 84);

  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      --*(v1 + 160);
      if (v5)
      {
        v10 = MEMORY[0x193AC03C0](a1, v3);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

      *(v10 + 72) = 0;

      v13 = 1;
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      --*(v1 + 168);
      if (v5)
      {
        v11 = MEMORY[0x193AC03C0](a1, v3);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
        {
LABEL_45:
          __break(1u);
          return;
        }

        v11 = *(v4 + 32);
      }

      v16 = *(v11 + 16);

      AGSubgraphAddChild();
      AGSubgraphApply();

      v13 = 0;
      if (!v5)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (v5)
    {
      v8 = MEMORY[0x193AC03C0](a1, v3);
      v9 = MEMORY[0x193AC03C0](a1, v3);
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v9 = swift_retain_n();
      v8 = v9;
    }

    v12 = *(v9 + 80);

    *(v8 + 80) = v12 + 1;

    v13 = 0;
    if (!v5)
    {
LABEL_27:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v15 = *(v4 + 32);
          v14 = *(v15 + 48);

          goto LABEL_30;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  v14 = *(MEMORY[0x193AC03C0](a1, v3) + 48);
  swift_unknownObjectRelease();
  v15 = MEMORY[0x193AC03C0](a1, v3);
LABEL_30:
  if (!v14)
  {
    v13 = 1;
  }

  swift_beginAccess();
  *(v15 + 84) = v13;

  if ((v13 & 1) == 0)
  {
    *(v1 + 196) = 1;
    AGGraphGetCurrentAttribute();
    v17 = AGCreateWeakAttribute();
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.continueTransaction<A>(_:)(v17);
  }
}

uint64_t specialized GeometryReader.Child.updateValue()()
{
  v102 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ObservationTracking._AccessList();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v56 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v18 = *(v0 + 24) + 1;
  *(v0 + 24) = v18;
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    LODWORD(v64) = *MEMORY[0x1E698D3F8];
    v57 = v4;
    v58 = v14;
    v68 = v17;
    v69 = v2;
    v65 = v9;
    v19 = v18;
    v59 = v0;
    v62 = *(v0 + 20);
    v20 = AGCreateWeakAttribute();
    v21 = v20;
    v63 = HIDWORD(v20);
    v22 = AGCreateWeakAttribute();
    v61 = HIDWORD(v22);
    v23 = AGCreateWeakAttribute();
    v24 = v23;
    v60 = HIDWORD(v23);
    v25 = AGCreateWeakAttribute();
    v26 = v25;
    v27 = HIDWORD(v25);
    v2 = AGCreateWeakAttribute();
    v28 = AGCreateWeakAttribute();
    *&v70 = __PAIR64__(v63, v21);
    *(&v70 + 1) = __PAIR64__(v61, v22);
    v71 = v24;
    v72 = v60;
    v73 = v26;
    v74 = v27;
    v75 = v2;
    v76 = v28;
    v77 = v19;
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v29 = static ObservationCenter._current;
  swift_beginAccess();
  v30 = pthread_getspecific(v29[2]);
  if (!v30)
  {
    v31 = swift_slowAlloc();
    pthread_setspecific(v29[2], v31);
    *(&v95 + 1) = type metadata accessor for ObservationCenter();
    *&v94 = v29[3];
    outlined init with take of Any(&v94, v31);

    v30 = v31;
  }

  outlined init with copy of Any(v30, &v94);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v32 = v78;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v34 = v69;
  v35 = v65;
  if (CurrentAttribute == v64)
  {
    __break(1u);
LABEL_20:
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    *(v32 + 24) = v29;
    goto LABEL_9;
  }

  v36 = v1;
  LODWORD(v63) = CurrentAttribute;
  swift_beginAccess();
  v64 = *(v32 + 24);
  *(v32 + 24) = MEMORY[0x1E69E7CC0];
  v37 = v58;
  (v34[7])(v58, 1, 1, v1);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v39 = *(StatusReg + 848);
  *(StatusReg + 848) = v37;
  specialized closure #1 in GeometryReader.Child.updateValue()(&v70, &v94);
  *(StatusReg + 848) = v39;
  v90 = v98;
  v91 = v99;
  v92 = v100;
  v93 = v101;
  v86 = v94;
  v87 = v95;
  v88 = v96;
  v89 = v97;
  v40 = v68;
  outlined init with take of ObservationTracking._AccessList?(v37, v68);
  v41 = v66;
  outlined init with copy of ObservationTracking._AccessList?(v40, v66, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((v34[6])(v41, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v42 = v41;
    goto LABEL_12;
  }

  v2 = v34[4];
  (v2)(v35, v41, v1);
  (v34[2])(v67, v35, v1);
  v29 = *(v32 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 24) = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v45 = v29[2];
  v44 = v29[3];
  if (v45 >= v44 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v29);
  }

  v29[2] = v45 + 1;
  v46 = v29 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + v69[9] * v45;
  v34 = v69;
  (v2)(v46, v67, v1);
  v36 = v1;
  *(v32 + 24) = v29;
  (v34[1])(v35, v1);
  v42 = v68;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v42, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v47 = *(v32 + 24);
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = v57;
    v51 = v34[2];
    v50 = v34 + 2;
    v68 = *(v32 + 24);
    v69 = v51;
    v52 = v47 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v53 = v50[7];

    v54 = v63;
    do
    {
      (v69)(v49, v52, v36);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v54, v49);
      (*(v50 - 1))(v49, v36);
      v52 += v53;
      --v48;
    }

    while (v48);
  }

  *(v32 + 24) = v64;

  v82 = v90;
  v83 = v91;
  v84 = v92;
  v85 = v93;
  v78 = v86;
  v79 = v87;
  v80 = v88;
  v81 = v89;
  type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(0);
  AGGraphSetOutputValue();
  v82 = v90;
  v83 = v91;
  v84 = v92;
  v85 = v93;
  v78 = v86;
  v79 = v87;
  v80 = v88;
  v81 = v89;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v78, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>);
}

{
  v87 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ObservationTracking._AccessList();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v59 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = (*(v0 + 24) + 1);
  *(v0 + 24) = v18;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v20 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v59 = v4;
    v60 = v14;
    LODWORD(v66) = v20;
    v71 = v17;
    v67 = v9;
    v68 = v2;
    v61 = v0;
    v64 = *(v0 + 20);
    v21 = v18;
    v18 = AGCreateWeakAttribute();
    v65 = HIDWORD(v18);
    v22 = AGCreateWeakAttribute();
    v23 = v22;
    v63 = HIDWORD(v22);
    v24 = AGCreateWeakAttribute();
    v25 = v24;
    v62 = HIDWORD(v24);
    v26 = AGCreateWeakAttribute();
    v27 = v26;
    v28 = HIDWORD(v26);
    v29 = AGCreateWeakAttribute();
    v30 = v29;
    v31 = HIDWORD(v29);
    v32 = AGCreateWeakAttribute();
    v72 = v18;
    v73 = v65;
    v74 = v23;
    v75 = v63;
    v76 = v25;
    v77 = v62;
    v78 = v27;
    v79 = v28;
    v80 = v30;
    v81 = v31;
    v82 = v32;
    v83 = v21;
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v33 = static ObservationCenter._current;
  swift_beginAccess();
  v34 = pthread_getspecific(v33[2]);
  if (!v34)
  {
    v35 = swift_slowAlloc();
    pthread_setspecific(v33[2], v35);
    *&v86[24] = type metadata accessor for ObservationCenter();
    *v86 = v33[3];
    outlined init with take of Any(v86, v35);

    v34 = v35;
  }

  outlined init with copy of Any(v34, v86);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v36 = v84[0];
  v37 = AGGraphGetCurrentAttribute();
  v39 = v67;
  v38 = v68;
  if (v37 == v66)
  {
    __break(1u);
LABEL_20:
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
    *(v69 + 24) = v33;
    goto LABEL_9;
  }

  v40 = v37;
  swift_beginAccess();
  v66 = *(v36 + 24);
  *(v36 + 24) = MEMORY[0x1E69E7CC0];
  v41 = v60;
  (*(v38 + 56))(v60, 1, 1, v1);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v43 = *(StatusReg + 848);
  *(StatusReg + 848) = v41;
  specialized closure #1 in GeometryReader.Child.updateValue()(v61);
  *(StatusReg + 848) = v43;
  LODWORD(v65) = v40;
  memcpy(v85, v86, sizeof(v85));
  v44 = v71;
  outlined init with take of ObservationTracking._AccessList?(v41, v71);
  v45 = v69;
  outlined init with copy of ObservationTracking._AccessList?(v44, v69, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v38 + 48))(v45, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v46 = v45;
    goto LABEL_12;
  }

  v18 = *(v38 + 32);
  (v18)(v39, v45, v1);
  (*(v38 + 16))(v70, v39, v1);
  v33 = *(v36 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v36;
  *(v36 + 24) = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v49 = v33[2];
  v48 = v33[3];
  if (v49 >= v48 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v33);
  }

  v33[2] = v49 + 1;
  (v18)(v33 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v49, v70, v1);
  v36 = v69;
  *(v69 + 24) = v33;
  (*(v38 + 8))(v39, v1);
  v46 = v71;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v46, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v70 = *(v36 + 24);
  v50 = *(v70 + 2);
  if (v50)
  {
    v52 = *(v38 + 16);
    v51 = v38 + 16;
    v71 = v52;
    v53 = v36;
    v54 = &v70[(*(v51 + 64) + 32) & ~*(v51 + 64)];
    v55 = *(v51 + 56);

    v56 = v65;
    v57 = v59;
    do
    {
      v71(v57, v54, v1);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v56, v57);
      (*(v51 - 8))(v57, v1);
      v54 += v55;
      --v50;
    }

    while (v50);

    v70 = *(v53 + 24);
    v36 = v53;
  }

  *(v36 + 24) = v66;

  memcpy(v84, v85, sizeof(v84));
  type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, GlassEntryView>(0);
  AGGraphSetOutputValue();
  memcpy(v84, v85, sizeof(v84));
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v84, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, GlassEntryView>);
}

void specialized closure #1 in GeometryReader.Child.updateValue()(__int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v32[2] = a2;
  type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v31[0] = *Value;
  v31[1] = v6;
  if ((v8 & 2) != 0)
  {
    _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v67);
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v66 = v74;
    v59 = v67;
    v60 = v68;
    v61 = v69;
    v62 = v70;
    MEMORY[0x1EEE9AC00](v10);
    v30[2] = &v59;
    v30[3] = partial apply for specialized closure #1 in closure #1 in GeometryReader.Child.updateValue();
    v30[4] = v32;
    v30[5] = v31;
    v11 = objc_opt_self();

    if ([v11 isMainThread])
    {
      v12 = a2[1];
      v51 = *a2;
      v52 = v12;
      v53 = a2[2];
      LODWORD(v54) = *(a2 + 12);
      v7(&v35, &v51);
      _ViewInputs.base.modify();
      v55 = v63;
      v56 = v64;
      v57 = v65;
      v58 = v66;
      v51 = v59;
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v61 = v37;
      v62 = v38;
      v59 = v35;
      v60 = v36;
      v65 = v41;
      v66 = v42;
      v63 = v39;
      v64 = v40;
      outlined destroy of ObservationTracking._AccessList?(&v51, &lazy cache variable for type metadata for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>?, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
      *(v13 + 24) = v30;
      v14 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      *&v51 = partial apply for thunk for @callee_guaranteed () -> ();
      *(&v51 + 1) = v13;
      *&v52 = v14;
      DWORD2(v52) = CurrentAttribute;
      v16 = one-time initialization token for _lock;

      if (v16 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, &v51, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v17 = v52;

      LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

      if (v17)
      {
        __break(1u);
      }
    }

    v47 = v63;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v43 = v59;
    v44 = v60;
    v45 = v61;
    v46 = v62;
    v57 = v65;
    v58 = v66;
    v55 = v63;
    v56 = v64;
    v53 = v61;
    v54 = v62;
    v51 = v59;
    v52 = v60;
    if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v51) == 1)
    {
      __break(1u);
    }

    else
    {
      v18 = v48;
      v19 = v47;
      v20 = v48;
      a3[4] = v47;
      a3[5] = v18;
      v21 = v50;
      v22 = v49;
      v23 = v50;
      a3[6] = v49;
      a3[7] = v21;
      v24 = v44;
      v25 = v43;
      v26 = v44;
      *a3 = v43;
      a3[1] = v24;
      v27 = v46;
      v28 = v45;
      v29 = v46;
      a3[2] = v45;
      a3[3] = v27;
      v34[2] = v61;
      v34[3] = v62;
      v34[0] = v59;
      v34[1] = v60;
      v34[6] = v65;
      v34[7] = v66;
      v34[4] = v63;
      v34[5] = v64;
      v37 = v28;
      v38 = v29;
      v35 = v25;
      v36 = v26;
      v41 = v22;
      v42 = v23;
      v39 = v19;
      v40 = v20;
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v35, &v33, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>);
      outlined destroy of ObservationTracking._AccessList?(v34, &lazy cache variable for type metadata for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>?, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    }
  }

  else
  {
    v9 = a2[1];
    v67 = *a2;
    v68 = v9;
    v69 = a2[2];
    LODWORD(v70) = *(a2 + 12);

    (v7)(&v67);
  }
}

void specialized closure #1 in GeometryReader.Child.updateValue()(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v28 = *MEMORY[0x1E69E9840];
  v20[2] = v1;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v19[0] = *Value;
  v19[1] = v6;
  if ((v8 & 2) != 0)
  {
    _s7SwiftUI14GlassEntryView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVSgWOi0_(v27);
    v10 = memcpy(v26, v27, sizeof(v26));
    MEMORY[0x1EEE9AC00](v10);
    v18[2] = v26;
    v18[3] = partial apply for specialized closure #1 in closure #1 in GeometryReader.Child.updateValue();
    v18[4] = v20;
    v18[5] = v19;
    v11 = objc_opt_self();

    if ([v11 isMainThread])
    {
      v12 = *(v2 + 16);
      *v25 = *v2;
      *&v25[16] = v12;
      *&v25[32] = *(v2 + 32);
      *&v25[48] = *(v2 + 48);
      (v7)(v23, v25);
      _ViewInputs.base.modify();
      memcpy(v25, v26, sizeof(v25));
      memcpy(v26, v23, sizeof(v26));
      outlined destroy of GlassEntryView?(v25, &lazy cache variable for type metadata for GlassEntryView?, &type metadata for GlassEntryView, MEMORY[0x1E69E6720]);
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
      *(v13 + 24) = v18;
      v14 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      *v25 = thunk for @callee_guaranteed () -> ()partial apply;
      *&v25[8] = v13;
      *&v25[16] = v14;
      *&v25[24] = CurrentAttribute;
      v16 = one-time initialization token for _lock;

      if (v16 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, v25, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v17 = *&v25[16];

      LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

      if (v17)
      {
        __break(1u);
      }
    }

    memcpy(v24, v26, sizeof(v24));
    memcpy(v25, v26, sizeof(v25));
    if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(v25) == 1)
    {
      __break(1u);
    }

    else
    {
      memcpy(v4, v24, 0x2A8uLL);
      memcpy(v22, v26, sizeof(v22));
      memcpy(v23, v24, sizeof(v23));
      outlined init with copy of GlassEntryView(v23, &v21);
      outlined destroy of GlassEntryView?(v22, &lazy cache variable for type metadata for GlassEntryView?, &type metadata for GlassEntryView, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v9 = *(v2 + 16);
    v27[0] = *v2;
    v27[1] = v9;
    v27[2] = *(v2 + 32);
    LODWORD(v27[3]) = *(v2 + 48);

    v7(v27);
  }
}

void specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(const void *a1, int a2, uint64_t a3)
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v7 = CurrentAttribute;
    v8 = memcpy(v16, a1, sizeof(v16));
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = v16;
    v11 = v7;
    v12 = v7;
    v13 = a2;
    v14 = v7;
    v15 = a3;
    MEMORY[0x1EEE9AC00](v9);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v10, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v7 = CurrentAttribute;
    v8 = memcpy(v16, a1, sizeof(v16));
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = v16;
    v11 = v7;
    v12 = v7;
    v13 = a2;
    v14 = v7;
    v15 = a3;
    MEMORY[0x1EEE9AC00](v9);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v10, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
  }
}

void specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v8 = CurrentAttribute;
    v9 = CurrentAttribute | (CurrentAttribute << 32);

    specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(v3, v9, a2, v8, a3, a1);
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v8 = CurrentAttribute;
    v9 = CurrentAttribute | (CurrentAttribute << 32);

    specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(v3, v9, a2, v8, a3, a1);
  }
}

void specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v23[40] = *MEMORY[0x1E69E9840];
  v17 = a6;
  v18 = &v17;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v11 = *OutputValue;
    v12 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v13 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v13 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for ViewLayoutEngine);
      v15 = MEMORY[0x1EEE9AC00](v14);
      (*(*v11 + 80))(v15);

      v23[0] = v11;
      v23[1] = v12 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA019FlexibleButtonFrameD0V_Tt3B5(v6, v9, v8, a5, v23);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA019FlexibleButtonFrameC0VG_Tt1B5(v23, &v16);
    AGGraphSetOutputValue();
  }
}

{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v23[40] = *MEMORY[0x1E69E9840];
  v17 = a6;
  v18 = &v17;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v11 = *OutputValue;
    v12 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v13 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v13 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for ViewLayoutEngine);
      v15 = MEMORY[0x1EEE9AC00](v14);
      (*(*v11 + 80))(v15);

      v23[0] = v11;
      v23[1] = v12 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA019FlexibleButtonFrameD0V_Tt3B5(v6, v9, v8, a5, v23);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA019FlexibleButtonFrameC0VG_Tt1B5(v23, &v16);
    AGGraphSetOutputValue();
  }
}

void specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, unint64_t a2, Swift::UInt32 a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[41] = *MEMORY[0x1E69E9840];
  v19[0] = a6;
  v19[1] = a7;
  v19[4] = v19;
  v19[5] = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v13 = *OutputValue;
    v14 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v15 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v15 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for ViewLayoutEngine);
      v17 = MEMORY[0x1EEE9AC00](v16);
      (*(*v13 + 80))(v17);

      v23[0] = v13;
      v23[1] = v14 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_ZStackD0V_Tt3B5Tm(a6, a7, a3, a4, a5, v23);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_ZStackC0VG_Tt1B5Tm(v23, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<ZStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<ZStackLayout>>, &v18);
    AGGraphSetOutputValue();
  }
}

{
  v23[41] = *MEMORY[0x1E69E9840];
  v19[0] = a6;
  v19[1] = a7;
  v19[4] = v19;
  v19[5] = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v13 = *OutputValue;
    v14 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v15 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v15 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for ViewLayoutEngine);
      v17 = MEMORY[0x1EEE9AC00](v16);
      (*(*v13 + 80))(v17);

      v23[0] = v13;
      v23[1] = v14 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_ZStackD0V_Tt3B5Tm(a6, a7, a3, a4, a5, v23);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_ZStackC0VG_Tt1B5Tm(v23, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<ZStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<ZStackLayout>>, &v18);
    AGGraphSetOutputValue();
  }
}

void *specialized DynamicLayoutComputer.updateValue()()
{
  Value = AGGraphGetValue();
  result = memcpy(__dst, Value, sizeof(__dst));
  if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 4);
    outlined init with copy of GlassEntryLayout(__dst, v10);
    v4 = AGGraphGetValue();
    v5 = *(v4 + 8);
    v6 = *(v4 + 32);
    v7 = *(v4 + 40);
    v8 = *(v4 + 44);
    v10[0] = *v4;
    v10[1] = v5;
    v11 = *(v4 + 16);
    v12 = v6;
    v13 = v7;
    v14 = v8;

    v9 = specialized DynamicLayoutMap.attributes(info:)(v10);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(__dst, v3, v9);

    return outlined destroy of GlassEntryLayout(__dst);
  }

  return result;
}

uint64_t specialized DynamicLayoutComputer.updateValue()()
{
  result = AGGraphGetValue();
  v2 = *(result + 16);
  v18[0] = *result;
  v18[1] = v2;
  v4 = *(result + 48);
  v3 = *(result + 64);
  v5 = *(result + 80);
  v18[2] = *(result + 32);
  v19 = v5;
  v18[3] = v4;
  v18[4] = v3;
  if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 4);
    outlined init with copy of GlassEffectLayout(v18, v13);
    Value = AGGraphGetValue();
    v8 = *(Value + 8);
    v9 = *(Value + 32);
    v10 = *(Value + 40);
    v11 = *(Value + 44);
    v13[0] = *Value;
    v13[1] = v8;
    v14 = *(Value + 16);
    v15 = v9;
    v16 = v10;
    v17 = v11;

    v12 = specialized DynamicLayoutMap.attributes(info:)(v13);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v18, v6, v12);

    return outlined destroy of GlassEffectLayout(v18);
  }

  return result;
}

void specialized ViewLayoutEngine.update(layout:context:children:)(const void *a1, unint64_t a2, Swift::UInt32 a3, int a4, uint64_t a5)
{
  v6 = v5;
  v15 = *MEMORY[0x1E69E9840];

  *(v6 + 488) = a4;
  *(v6 + 496) = a5;
  v12[0] = a3;
  KeyPath = swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  v11 = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  __dst[0] = 0;
  LOBYTE(a5) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v6 + 504) = a5;
  memcpy(__dst, v6, sizeof(__dst));
  outlined init with copy of GlassEntryLayout(a1, v12);
  outlined destroy of GlassEntryLayout(__dst);
  memcpy(v6, a1, 0x1E8uLL);
  LOBYTE(v12[0]) = 1;
  LOBYTE(v11) = 1;
  *(v6 + 528) = 0u;
  *(v6 + 544) = 0u;
  *(v6 + 512) = 0u;
  *(v6 + 560) = 1;
  *(v6 + 568) = 0u;
  *(v6 + 584) = 0u;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 1;
  *(v6 + 624) = 0u;
  *(v6 + 640) = 0u;
  *(v6 + 656) = 0u;
  *(v6 + 672) = 1;

  *(v6 + 712) = MEMORY[0x1E69E7CC0];
  *(v6 + 720) = 0u;
  *(v6 + 736) = 0;
  *(v6 + 737) = v12[0];
  *(v6 + 740) = *(v12 + 3);
  *(v6 + 744) = 0u;
  *(v6 + 760) = 0;
  *(v6 + 761) = v11;
  *(v6 + 764) = *(&v11 + 3);
  *(v6 + 784) = 0;
  *(v6 + 768) = 0u;

  *(v6 + 792) = 0;
}