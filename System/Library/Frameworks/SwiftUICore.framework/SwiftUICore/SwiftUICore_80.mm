uint64_t ProtobufEncoder.preferredBundleLanguage.getter()
{
  v1 = *(v0 + 32);
  if (one-time initialization token for preferredBundleLanguageKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.preferredBundleLanguageKey);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t encode #1 <A>(_:) in static CodableAttributedString.Range.encodeResolvable(_:textSegment:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CodableAttributedString.Range.EncodingWrapper(0, v10, v11, v10);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  (*(v7 + 16))(v9, a1, a4, v14);
  (*(v7 + 32))(v16, v9, a4);
  swift_getWitnessTable(protocol conformance descriptor for CodableAttributedString.Range.EncodingWrapper<A>, v12);
  v18 = ProtobufEncoder.codableField<A>(_:_:)(a3, v16, v12, v17);
  return (*(v13 + 8))(v16, v12, v18);
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K12DateIntervalV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v6;
  v24[2] = *(a1 + 32);
  v25 = *(a1 + 48);
  *&v20 = a2;
  outlined init with copy of ProtobufDecoder(v24, v22);
  v7 = ProtobufDecoder.dataField(_:)(&v20);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v24);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA22ResolvableDateIntervalVG_Tt1B5(v23);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v24);
    outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    if (v21)
    {
      outlined init with take of AnyTrackedValue(&v20, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      DynamicType = swift_getDynamicType();
      v12 = static ResolvableStringAttributeRepresentation.attribute.getter(DynamicType, *(v22[4] + 16));
      outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
      v13 = v21;
      if (v21)
      {
        v14 = __swift_project_boxed_opaque_existential_1(&v20, v21);
        *(&v19 + 1) = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
        __swift_destroy_boxed_opaque_existential_1(&v20);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
        v18 = 0u;
        v19 = 0u;
      }

      v16 = v12;
      specialized Dictionary.subscript.setter(&v18, v16);
      __swift_destroy_boxed_opaque_existential_1(v22);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval, &protocol witness table for ResolvableDateInterval, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v17 = *a4;
      *a4 = v16;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval, &protocol witness table for ResolvableDateInterval, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K12AbsoluteDateV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v6;
  v24[2] = *(a1 + 32);
  v25 = *(a1 + 48);
  *&v20 = a2;
  outlined init with copy of ProtobufDecoder(v24, v22);
  v7 = ProtobufDecoder.dataField(_:)(&v20);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v24);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA22ResolvableAbsoluteDateVG_Tt1B5(v23);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v24);
    outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    if (v21)
    {
      outlined init with take of AnyTrackedValue(&v20, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      DynamicType = swift_getDynamicType();
      v12 = static ResolvableStringAttributeRepresentation.attribute.getter(DynamicType, *(v22[4] + 16));
      outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
      v13 = v21;
      if (v21)
      {
        v14 = __swift_project_boxed_opaque_existential_1(&v20, v21);
        *(&v19 + 1) = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
        __swift_destroy_boxed_opaque_existential_1(&v20);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
        v18 = 0u;
        v19 = 0u;
      }

      v16 = v12;
      specialized Dictionary.subscript.setter(&v18, v16);
      __swift_destroy_boxed_opaque_existential_1(v22);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate, &protocol witness table for ResolvableAbsoluteDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v17 = *a4;
      *a4 = v16;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate, &protocol witness table for ResolvableAbsoluteDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K11CurrentDateV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v6;
  v24[2] = *(a1 + 32);
  v25 = *(a1 + 48);
  *&v20 = a2;
  outlined init with copy of ProtobufDecoder(v24, v22);
  v7 = ProtobufDecoder.dataField(_:)(&v20);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v24);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA21ResolvableCurrentDateVG_Tt1B5(v23);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v24);
    outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    if (v21)
    {
      outlined init with take of AnyTrackedValue(&v20, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      DynamicType = swift_getDynamicType();
      v12 = static ResolvableStringAttributeRepresentation.attribute.getter(DynamicType, *(v22[4] + 16));
      outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
      v13 = v21;
      if (v21)
      {
        v14 = __swift_project_boxed_opaque_existential_1(&v20, v21);
        *(&v19 + 1) = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
        __swift_destroy_boxed_opaque_existential_1(&v20);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
        v18 = 0u;
        v19 = 0u;
      }

      v16 = v12;
      specialized Dictionary.subscript.setter(&v18, v16);
      __swift_destroy_boxed_opaque_existential_1(v22);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate, &protocol witness table for ResolvableCurrentDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v17 = *a4;
      *a4 = v16;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate, &protocol witness table for ResolvableCurrentDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K5TimerV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v6;
  v24[2] = *(a1 + 32);
  v25 = *(a1 + 48);
  *&v20 = a2;
  outlined init with copy of ProtobufDecoder(v24, v22);
  v7 = ProtobufDecoder.dataField(_:)(&v20);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v24);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA15ResolvableTimerVG_Tt1B5(v23);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v24);
    outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    if (v21)
    {
      outlined init with take of AnyTrackedValue(&v20, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      DynamicType = swift_getDynamicType();
      v12 = static ResolvableStringAttributeRepresentation.attribute.getter(DynamicType, *(v22[4] + 16));
      outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
      v13 = v21;
      if (v21)
      {
        v14 = __swift_project_boxed_opaque_existential_1(&v20, v21);
        *(&v19 + 1) = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
        __swift_destroy_boxed_opaque_existential_1(&v20);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
        v18 = 0u;
        v19 = 0u;
      }

      v16 = v12;
      specialized Dictionary.subscript.setter(&v18, v16);
      __swift_destroy_boxed_opaque_existential_1(v22);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer, &protocol witness table for ResolvableTimer, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v17 = *a4;
      *a4 = v16;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer, &protocol witness table for ResolvableTimer, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K15CLKTextProviderV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v6;
  v24[2] = *(a1 + 32);
  v25 = *(a1 + 48);
  *&v20 = a2;
  outlined init with copy of ProtobufDecoder(v24, v22);
  v7 = ProtobufDecoder.dataField(_:)(&v20);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v24);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA25ResolvableCLKTextProviderVG_Tt1B5(v23);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v24);
    outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    if (v21)
    {
      outlined init with take of AnyTrackedValue(&v20, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      DynamicType = swift_getDynamicType();
      v12 = static ResolvableStringAttributeRepresentation.attribute.getter(DynamicType, *(v22[4] + 16));
      outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
      v13 = v21;
      if (v21)
      {
        v14 = __swift_project_boxed_opaque_existential_1(&v20, v21);
        *(&v19 + 1) = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
        __swift_destroy_boxed_opaque_existential_1(&v20);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
        v18 = 0u;
        v19 = 0u;
      }

      v16 = v12;
      specialized Dictionary.subscript.setter(&v18, v16);
      __swift_destroy_boxed_opaque_existential_1(v22);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>, &type metadata for ResolvableCLKTextProvider, &protocol witness table for ResolvableCLKTextProvider, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
      swift_beginAccess();
      v17 = *a4;
      *a4 = v16;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>, &type metadata for ResolvableCLKTextProvider, &protocol witness table for ResolvableCLKTextProvider, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K8ProgressV_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v6;
  v24[2] = *(a1 + 32);
  v25 = *(a1 + 48);
  *&v20 = a2;
  outlined init with copy of ProtobufDecoder(v24, v22);
  v7 = ProtobufDecoder.dataField(_:)(&v20);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v24);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA18ResolvableProgressVG_Tt1B5(v23);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v24);
    outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    if (v21)
    {
      outlined init with take of AnyTrackedValue(&v20, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      DynamicType = swift_getDynamicType();
      v12 = static ResolvableStringAttributeRepresentation.attribute.getter(DynamicType, *(v22[4] + 16));
      outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
      v13 = v21;
      if (v21)
      {
        v14 = __swift_project_boxed_opaque_existential_1(&v20, v21);
        *(&v19 + 1) = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
        __swift_destroy_boxed_opaque_existential_1(&v20);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
        v18 = 0u;
        v19 = 0u;
      }

      v16 = v12;
      specialized Dictionary.subscript.setter(&v18, v16);
      __swift_destroy_boxed_opaque_existential_1(v22);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress, &protocol witness table for ResolvableProgress, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      swift_beginAccess();
      v17 = *a4;
      *a4 = v16;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress, &protocol witness table for ResolvableProgress, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    }
  }
}

void _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA18TimeDataFormattingO_Ttg5Tf0nnns_n(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v6;
  v24[2] = *(a1 + 32);
  v25 = *(a1 + 48);
  *&v20 = a2;
  outlined init with copy of ProtobufDecoder(v24, v22);
  v7 = ProtobufDecoder.dataField(_:)(&v20);
  if (v4)
  {
    outlined destroy of ProtobufDecoder(v24);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA04TimeK10FormattingOG_Tt1B5(v23);
    outlined consume of Data._Representation(v9, v10);
    outlined destroy of ProtobufDecoder(v24);
    outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    if (v21)
    {
      outlined init with take of AnyTrackedValue(&v20, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      DynamicType = swift_getDynamicType();
      v12 = static ResolvableStringAttributeRepresentation.attribute.getter(DynamicType, *(v22[4] + 16));
      outlined init with copy of TimelineSchedule?(v23, &v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
      v13 = v21;
      if (v21)
      {
        v14 = __swift_project_boxed_opaque_existential_1(&v20, v21);
        *(&v19 + 1) = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
        __swift_destroy_boxed_opaque_existential_1(&v20);
      }

      else
      {
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
        v18 = 0u;
        v19 = 0u;
      }

      v16 = v12;
      specialized Dictionary.subscript.setter(&v18, v16);
      __swift_destroy_boxed_opaque_existential_1(v22);
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>, &type metadata for TimeDataFormatting, &protocol witness table for TimeDataFormatting, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
      swift_beginAccess();
      v17 = *a4;
      *a4 = v16;
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v23, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>, &type metadata for TimeDataFormatting, &protocol witness table for TimeDataFormatting, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v20, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    }
  }
}

double CodableAttributedString.Range.DecodingWrapper.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v3)
  {
    result = *v8;
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v9;
  }

  return result;
}

double *CodableNSParagraphStyle.encode(to:)(void *a1, id a2)
{
  v5 = [a2 horizontalAlignment];
  v6 = [a2 isFullyJustified];
  v7 = v5 == 3;
  if (v5 == 4)
  {
    v7 = 2;
  }

  if (v6)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v8);
  }

  v9 = [a2 lineBreakMode];
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_85;
  }

  if (v9 != 4)
  {
    v10 = v9;
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(v10);
  }

  v11 = [a2 lineBreakStrategy];
  if (v11 != 0xFFFF)
  {
    v12 = v11;
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v12);
  }

  [a2 lineSpacing];
  if (v13 == 0.0)
  {
    goto LABEL_24;
  }

  v2 = v13;
  v14 = fabs(v13);
  if (v14 >= 65536.0)
  {
    v15 = 33;
  }

  else
  {
    v15 = 37;
  }

  ProtobufEncoder.encodeVarint(_:)(v15);
  if (v14 >= 65536.0)
  {
    v18 = a1[1];
    v17 = v18 + 8;
    if (!__OFADD__(v18, 8))
    {
      if (a1[2] < v17)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v17) = v2;
      }

      else
      {
        a1[1] = v17;
        *(*a1 + v18) = v2;
      }

      goto LABEL_24;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v16 = a1[1];
  v17 = v16 + 4;
  if (__OFADD__(v16, 4))
  {
    __break(1u);
    goto LABEL_89;
  }

  *&v2 = v2;
  if (a1[2] < v17)
  {
    goto LABEL_94;
  }

  a1[1] = v17;
  *(*a1 + v16) = LODWORD(v2);
  while (1)
  {
LABEL_24:
    [a2 lineHeightMultiple];
    if (v19 == 0.0)
    {
      goto LABEL_35;
    }

    v2 = v19;
    v20 = fabs(v19);
    v21 = v20 >= 65536.0 ? 41 : 45;
    ProtobufEncoder.encodeVarint(_:)(v21);
    if (v20 >= 65536.0)
    {
      break;
    }

    v22 = a1[1];
    v17 = v22 + 4;
    if (!__OFADD__(v22, 4))
    {
      *&v2 = v2;
      if (a1[2] >= v17)
      {
        a1[1] = v17;
        *(*a1 + v22) = LODWORD(v2);
        goto LABEL_35;
      }

      goto LABEL_98;
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    *ProtobufEncoder.growBufferSlow(to:)(v17) = LODWORD(v2);
  }

  v23 = a1[1];
  v17 = v23 + 8;
  if (__OFADD__(v23, 8))
  {
    goto LABEL_91;
  }

  if (a1[2] < v17)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v17) = v2;
  }

  else
  {
    a1[1] = v17;
    *(*a1 + v23) = v2;
  }

  while (1)
  {
LABEL_35:
    [a2 maximumLineHeight];
    if (v24 != 0.0)
    {
      v2 = v24;
      v25 = fabs(v24);
      if (v25 >= 65536.0)
      {
        v26 = 49;
      }

      else
      {
        v26 = 53;
      }

      ProtobufEncoder.encodeVarint(_:)(v26);
      if (v25 >= 65536.0)
      {
        v28 = a1[1];
        v17 = v28 + 8;
        if (__OFADD__(v28, 8))
        {
          goto LABEL_93;
        }

        if (a1[2] < v17)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v17) = v2;
        }

        else
        {
          a1[1] = v17;
          *(*a1 + v28) = v2;
        }
      }

      else
      {
        v27 = a1[1];
        v17 = v27 + 4;
        if (__OFADD__(v27, 4))
        {
          goto LABEL_92;
        }

        *&v2 = v2;
        if (a1[2] < v17)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v17) = LODWORD(v2);
        }

        else
        {
          a1[1] = v17;
          *(*a1 + v27) = LODWORD(v2);
        }
      }
    }

    [a2 minimumLineHeight];
    if (v29 == 0.0)
    {
      break;
    }

    v2 = v29;
    v30 = fabs(v29);
    if (v30 >= 65536.0)
    {
      v31 = 57;
    }

    else
    {
      v31 = 61;
    }

    ProtobufEncoder.encodeVarint(_:)(v31);
    if (v30 >= 65536.0)
    {
      v33 = a1[1];
      v17 = v33 + 8;
      if (!__OFADD__(v33, 8))
      {
        if (a1[2] < v17)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v17) = v2;
        }

        else
        {
          a1[1] = v17;
          *(*a1 + v33) = v2;
        }

        break;
      }
    }

    else
    {
      v32 = a1[1];
      v17 = v32 + 4;
      if (!__OFADD__(v32, 4))
      {
        *&v2 = v2;
        if (a1[2] < v17)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v17) = LODWORD(v2);
        }

        else
        {
          a1[1] = v17;
          *(*a1 + v32) = LODWORD(v2);
        }

        break;
      }

      __break(1u);
    }

    __break(1u);
LABEL_98:
    *ProtobufEncoder.growBufferSlow(to:)(v17) = LODWORD(v2);
  }

  [a2 hyphenationFactor];
  if (v34 != 0.0)
  {
    *&v2 = v34;
    ProtobufEncoder.encodeVarint(_:)(0x45uLL);
    v35 = a1[1];
    v9 = v35 + 4;
    if (__OFADD__(v35, 4))
    {
      goto LABEL_86;
    }

    if (a1[2] < v9)
    {
      goto LABEL_87;
    }

    a1[1] = v9;
    *(*a1 + v35) = LODWORD(v2);
  }

  while (1)
  {
    if ([a2 allowsDefaultTighteningForTruncation])
    {
      ProtobufEncoder.encodeVarint(_:)(0x48uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    v36 = [a2 baseWritingDirection];
    if (v36 != -1)
    {
      v37 = v36;
      ProtobufEncoder.encodeVarint(_:)(0x50uLL);
      ProtobufEncoder.encodeVarint(_:)((2 * v37) ^ (v37 >> 63));
    }

    if ([a2 spansAllLines])
    {
      ProtobufEncoder.encodeVarint(_:)(0x58uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    v9 = [a2 compositionLanguage];
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    *ProtobufEncoder.growBufferSlow(to:)(v9) = LODWORD(v2);
  }

  v38 = v9;
  if (v9)
  {
    ProtobufEncoder.encodeVarint(_:)(0x60uLL);
    ProtobufEncoder.encodeVarint(_:)(v38);
  }

  v39 = [a2 baselineIntervalType];
  if (v39)
  {
    v40 = v39;
    ProtobufEncoder.encodeVarint(_:)(0x68uLL);
    ProtobufEncoder.encodeVarint(_:)(v40);
  }

  result = [a2 baselineInterval];
  if (v42 == 0.0)
  {
    return result;
  }

  v43 = v42;
  v44 = fabs(v42);
  if (v44 >= 65536.0)
  {
    v45 = 113;
  }

  else
  {
    v45 = 117;
  }

  ProtobufEncoder.encodeVarint(_:)(v45);
  if (v44 >= 65536.0)
  {
    v47 = a1[1];
    result = (v47 + 8);
    if (!__OFADD__(v47, 8))
    {
      if (a1[2] < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v43;
      }

      else
      {
        a1[1] = result;
        *(*a1 + v47) = v43;
      }

      return result;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v46 = a1[1];
  result = (v46 + 4);
  if (__OFADD__(v46, 4))
  {
    __break(1u);
    goto LABEL_105;
  }

  *&v43 = v43;
  if (a1[2] >= result)
  {
    a1[1] = result;
    *(*a1 + v46) = LODWORD(v43);
    return result;
  }

LABEL_106:
  result = ProtobufEncoder.growBufferSlow(to:)(result);
  *result = LODWORD(v43);
  return result;
}

void CodableTextAttachment.encode(to:)(uint64_t a1, void *a2)
{
  v5 = _NSTextAttachmentGetImage(a2);
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for CorePlatformImage();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system] = 0;
    *&v8[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage] = v6;
    v9 = v6;
    v8[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate] = _CorePlatformImageIsTemplate(0, v9);
    v25.receiver = v8;
    v25.super_class = v7;
    v10 = objc_msgSendSuper2(&v25, sel_init);
    specialized ProtobufEncoder.messageField<A>(_:_:)(1, v10);
  }

  else
  {
    v11 = _NSTextAttachmentGetContents(a2);
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v16 = *(a1 + 8);
      v17 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v18 = *(v17 + 2);
      v19 = *(v17 + 3);
      v20 = v18 + 1;
      if (v18 >= v19 >> 1)
      {
        v24 = v18 + 1;
        v21 = v17;
        v22 = *(v17 + 2);
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1, v21);
        v18 = v22;
        v20 = v24;
        v17 = v23;
      }

      *(v17 + 2) = v20;
      *&v17[8 * v18 + 32] = v16;
      *(a1 + 24) = v17;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
      }

      else
      {
        *(a1 + 8) = v16 + 1;
        Data.encode(to:)(a1, v13, v15);
        if (!v2)
        {
          ProtobufEncoder.endLengthDelimited()();
        }

        outlined consume of Data._Representation(v13, v15);
      }
    }

    else
    {
      lazy protocol witness table accessor for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void CodablePlatformFont.encode(to:)(void *a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for String.Encoding();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = CTFontCopyFontDescriptor(a2);
  if (CTFontIsSystemUIFont())
  {
    v13 = CTFontGetTextStyle();
    if (v13)
    {
      v14 = v13;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!v16 && v15 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {
        ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
        v40 = v119;
        static String.Encoding.utf8.getter();
        v41 = String.data(using:allowLossyConversion:)();
        v16 = v42;

        (*(v120 + 8))(v40, v121);
        if (v16 >> 60 == 15)
        {
          lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
          swift_allocError();
          swift_willThrow();
LABEL_54:

          return;
        }

        specialized Data._Representation.withUnsafeBytes<A>(_:)(v41, v16, a1);
        outlined consume of Data?(v41, v16);
      }

      v7 = 0x1E696A000uLL;
      if (CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965850]))
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 unsignedIntegerValue];
          if (v18)
          {
            v16 = v18;
            ProtobufEncoder.encodeVarint(_:)(0x30uLL);
            ProtobufEncoder.encodeVarint(_:)(v16);
          }
        }

        swift_unknownObjectRelease();
      }

      if (CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965880]))
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          DefaultTextStylePlatform = [v19 unsignedIntValue];
          swift_unknownObjectRelease();
          goto LABEL_47;
        }

        swift_unknownObjectRelease();
      }

      DefaultTextStylePlatform = CTFontDescriptorGetDefaultTextStylePlatform();
LABEL_47:
      ProtobufEncoder.encodeVarint(_:)(0x80uLL);
      ProtobufEncoder.encodeVarint(_:)(DefaultTextStylePlatform);
      if (CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965888]))
      {
        v118 = v12;
        objc_opt_self();
        v16 = swift_dynamicCastObjCClassUnconditional();
        ProtobufEncoder.encodeVarint(_:)(0x42uLL);
        v12 = a1[1];
        v43 = a1[3];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_161:
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
          v43 = isUniquelyReferenced_nonNull_native;
        }

        v4 = *(v43 + 2);
        v45 = *(v43 + 3);
        if (v4 >= v45 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v4 + 1, 1, v43);
          v43 = isUniquelyReferenced_nonNull_native;
        }

        *(v43 + 2) = v4 + 1;
        *(v43 + v4 + 4) = v12;
        a1[3] = v43;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        a1[1] = v12 + 1;
        CodableFontTraits.encode(to:)(a1, v16);
        v4 = v7;
        v12 = v118;
        if (v7)
        {

          goto LABEL_54;
        }

        ProtobufEncoder.endLengthDelimited()();

        v7 = 0x1E696A000uLL;
      }

      if (CTFontCopyAttribute(a2, *MEMORY[0x1E6965878]))
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          swift_unknownObjectRelease();
          goto LABEL_68;
        }

        *&v123 = 0;
        BYTE8(v123) = 1;
        static UInt._conditionallyBridgeFromObjectiveC(_:result:)();
        swift_unknownObjectRelease();
        if (BYTE8(v123) != 1)
        {
          v46 = v123;
          ProtobufEncoder.encodeVarint(_:)(0x88uLL);
          ProtobufEncoder.encodeVarint(_:)(v46);
        }
      }

LABEL_68:
      Size = CTFontGetSize(a2);
      if (Size == 0.0)
      {
        goto LABEL_79;
      }

      v3 = Size;
      v51 = fabs(Size);
      if (v51 >= 65536.0)
      {
        v52 = 57;
      }

      else
      {
        v52 = 61;
      }

      ProtobufEncoder.encodeVarint(_:)(v52);
      if (v51 >= 65536.0)
      {
        v54 = a1[1];
        isUniquelyReferenced_nonNull_native = v54 + 8;
        if (!__OFADD__(v54, 8))
        {
          if (a1[2] < isUniquelyReferenced_nonNull_native)
          {
            *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v3;
          }

          else
          {
            a1[1] = isUniquelyReferenced_nonNull_native;
            *(*a1 + v54) = v3;
          }

LABEL_79:
          v55 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69657A8]);
          if (v55)
          {
            v56 = v55;
            ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
            v57 = *(a1 + 1);
            v129 = *a1;
            v130 = v57;
            v131 = a1[4];
            v58 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v56);
            if (v4)
            {
              swift_unknownObjectRelease();
              goto LABEL_156;
            }

            v60 = v58;
            v16 = v59;
            specialized Data._Representation.withUnsafeBytes<A>(_:)(v58, v59, a1);
            v4 = 0;
            swift_unknownObjectRelease();
            outlined consume of Data._Representation(v60, v16);
          }

          v61 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965680]);
          if (v61)
          {
            *&v123 = v61;
            type metadata accessor for [Int : CGFloat](0, &lazy cache variable for type metadata for [Int : CGFloat], MEMORY[0x1E69E6530], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6540]);
            if (swift_dynamicCast())
            {
              v43 = *&v122;
              if (*(*&v122 + 16))
              {
                v118 = v12;
                v113 = v4;
                v62 = (*&v122 + 64);
                v63 = 1 << *(*&v122 + 32);
                v64 = -1;
                if (v63 < 64)
                {
                  v64 = ~(-1 << v63);
                }

                v12 = v64 & *(*&v122 + 64);
                v65 = (v63 + 63) >> 6;

                v66 = 0;
                v14 = MEMORY[0x1E69E7CC8];
                v115 = (v43 + 64);
                v114 = v65;
                v117 = a1;
                v116 = v43;
                while (v12)
                {
                  v4 = v66;
LABEL_96:
                  v67 = (v4 << 9) | (8 * __clz(__rbit64(v12)));
                  v3 = *(*(v43 + 7) + v67);
                  *&v123 = *(*(v43 + 6) + v67);
                  a1 = dispatch thunk of CustomStringConvertible.description.getter();
                  v7 = v68;
                  v16 = swift_isUniquelyReferenced_nonNull_native();
                  *&v123 = v14;
                  a2 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v7);
                  v70 = v14[2];
                  v71 = (v69 & 1) == 0;
                  isUniquelyReferenced_nonNull_native = v70 + v71;
                  if (__OFADD__(v70, v71))
                  {
                    goto LABEL_163;
                  }

                  v72 = v69;
                  if (v14[3] >= isUniquelyReferenced_nonNull_native)
                  {
                    if ((v16 & 1) == 0)
                    {
                      specialized _NativeDictionary.copy()();
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(isUniquelyReferenced_nonNull_native, v16);
                    isUniquelyReferenced_nonNull_native = specialized __RawDictionaryStorage.find<A>(_:)(a1, v7);
                    if ((v72 & 1) != (v73 & 1))
                    {
                      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                      __break(1u);
                      return;
                    }

                    a2 = isUniquelyReferenced_nonNull_native;
                  }

                  v12 &= v12 - 1;
                  if (v72)
                  {

                    v14 = v123;
                    *(*(v123 + 56) + 8 * a2) = v3;
                  }

                  else
                  {
                    v14 = v123;
                    *(v123 + 8 * (a2 >> 6) + 64) |= 1 << a2;
                    v74 = (v14[6] + 16 * a2);
                    *v74 = a1;
                    v74[1] = v7;
                    *(v14[7] + 8 * a2) = v3;
                    v75 = v14[2];
                    v76 = __OFADD__(v75, 1);
                    v77 = v75 + 1;
                    if (v76)
                    {
                      goto LABEL_164;
                    }

                    v14[2] = v77;
                  }

                  v66 = v4;
                  a1 = v117;
                  v43 = v116;
                  v62 = v115;
                  v65 = v114;
                }

                while (1)
                {
                  v4 = v66 + 1;
                  if (__OFADD__(v66, 1))
                  {
                    __break(1u);
                    goto LABEL_161;
                  }

                  if (v4 >= v65)
                  {
                    break;
                  }

                  v12 = *(&v62->isa + v4);
                  ++v66;
                  if (v12)
                  {
                    goto LABEL_96;
                  }
                }

                ProtobufEncoder.encodeVarint(_:)(0x52uLL);
                v78 = *(a1 + 1);
                v126 = *a1;
                v127 = v78;
                v128 = a1[4];
                v79 = v113;
                v80 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v14);
                if (v79)
                {

                  v82 = &v133;
                  goto LABEL_113;
                }

                v87 = v80;
                v88 = v81;

                specialized Data._Representation.withUnsafeBytes<A>(_:)(v87, v88, a1);
                outlined consume of Data._Representation(v87, v88);
                v12 = v118;
              }

              else
              {
              }
            }
          }

          v89 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69658F0]);
          if (!v89)
          {
            goto LABEL_124;
          }

          *&v123 = v89;
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_124;
          }

          v3 = v122;
          if (v122 == 0.0)
          {
            goto LABEL_124;
          }

          ProtobufEncoder.encodeVarint(_:)(0x59uLL);
          v90 = a1[1];
          v83 = v90 + 8;
          if (!__OFADD__(v90, 8))
          {
            if (a1[2] >= v83)
            {
              a1[1] = v83;
              v91 = (*a1 + v90);
LABEL_123:
              *v91 = v3;
LABEL_124:
              v92 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965788]);
              if (v92)
              {
                *&v123 = v92;
                if (swift_dynamicCast())
                {
                  v93 = *&v122;
                  if (v122 != 0.0)
                  {
                    ProtobufEncoder.encodeVarint(_:)(0x60uLL);
                    ProtobufEncoder.encodeVarint(_:)((2 * v93) ^ (v93 >> 63));
                  }
                }
              }

              v94 = COERCE_DOUBLE(CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69656F0]));
              if (v94 == 0.0 || (v122 = v94, (swift_dynamicCast() & 1) == 0))
              {
LABEL_133:
                v95 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69657E0]);
                if (!v95 || (*&v123 = v95, (swift_dynamicCast() & 1) == 0) || (v96 = v122, v122 == 0.0))
                {
LABEL_140:
                  v100 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E69657F8]);
                  if (!v100)
                  {
                    goto LABEL_156;
                  }

                  *&v123 = v100;
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_156;
                  }

                  v101 = v122;
                  if (v122 == 0.0)
                  {
                    goto LABEL_156;
                  }

                  v102 = fabs(v122);
                  if (v102 >= 65536.0)
                  {
                    v103 = 121;
                  }

                  else
                  {
                    v103 = 125;
                  }

                  ProtobufEncoder.encodeVarint(_:)(v103);
                  if (v102 >= 65536.0)
                  {
                    v110 = a1[1];
                    v105 = v110 + 8;
                    if (!__OFADD__(v110, 8))
                    {
                      if (a1[2] < v105)
                      {
                        v111 = ProtobufEncoder.growBufferSlow(to:)(v105);
                      }

                      else
                      {
                        a1[1] = v105;
                        v111 = (*a1 + v110);
                      }

                      *v111 = v101;
                      goto LABEL_156;
                    }
                  }

                  else
                  {
                    v104 = a1[1];
                    v105 = v104 + 4;
                    if (!__OFADD__(v104, 4))
                    {
                      *&v101 = v101;
                      if (a1[2] >= v105)
                      {
                        a1[1] = v105;
                        *(*a1 + v104) = LODWORD(v101);
                        goto LABEL_156;
                      }

LABEL_178:
                      *ProtobufEncoder.growBufferSlow(to:)(v105) = LODWORD(v101);
                      goto LABEL_156;
                    }

                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_178;
                }

                ProtobufEncoder.encodeVarint(_:)(0x71uLL);
                v97 = a1[1];
                v98 = v97 + 8;
                if (__OFADD__(v97, 8))
                {
                  __break(1u);
                }

                else if (a1[2] >= v98)
                {
                  a1[1] = v98;
                  v99 = (*a1 + v97);
LABEL_139:
                  *v99 = v96;
                  goto LABEL_140;
                }

                v99 = ProtobufEncoder.growBufferSlow(to:)(v98);
                goto LABEL_139;
              }

              if (v123 == __PAIR128__(0xE000000000000000, 0) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                goto LABEL_133;
              }

              ProtobufEncoder.encodeVarint(_:)(0x6AuLL);
              v106 = v119;
              static String.Encoding.utf8.getter();
              v107 = String.data(using:allowLossyConversion:)();
              v109 = v108;

              (*(v120 + 8))(v106, v121);
              if (v109 >> 60 != 15)
              {
                specialized Data._Representation.withUnsafeBytes<A>(_:)(v107, v109, a1);
                outlined consume of Data?(v107, v109);
                goto LABEL_133;
              }

              lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
              goto LABEL_42;
            }

LABEL_173:
            v91 = ProtobufEncoder.growBufferSlow(to:)(v83);
            goto LABEL_123;
          }

LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        goto LABEL_166;
      }

      v53 = a1[1];
      isUniquelyReferenced_nonNull_native = v53 + 4;
      if (!__OFADD__(v53, 4))
      {
        *&v3 = v3;
        if (a1[2] >= isUniquelyReferenced_nonNull_native)
        {
          a1[1] = isUniquelyReferenced_nonNull_native;
          *(*a1 + v53) = LODWORD(v3);
          goto LABEL_79;
        }

        goto LABEL_167;
      }

LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v3);
      goto LABEL_79;
    }

    Options = CTFontDescriptorGetOptions();
    if (Options)
    {
      v35 = Options;
      ProtobufEncoder.encodeVarint(_:)(0x20uLL);
      ProtobufEncoder.encodeVarint(_:)(v35);
    }

LABEL_31:
    v36 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965808]);
    if (v36)
    {
      v16 = v36;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v37 = a1;
        if (static String._unconditionallyBridgeFromObjectiveC(_:)())
        {
          v39 = 0;
        }

        else
        {
          v39 = v38 == 0xE000000000000000;
        }

        if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
          v7 = v119;
          static String.Encoding.utf8.getter();
          v47 = String.data(using:allowLossyConversion:)();
          v49 = v48;

          (*(v120 + 8))(v7, v121);
          if (v49 >> 60 == 15)
          {
            lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
            swift_allocError();
            swift_willThrow();
            swift_unknownObjectRelease();
            goto LABEL_156;
          }

          specialized Data._Representation.withUnsafeBytes<A>(_:)(v47, v49, v37);
          swift_unknownObjectRelease();
          outlined consume of Data?(v47, v49);
        }

        a1 = v37;
        goto LABEL_68;
      }

      swift_unknownObjectRelease();
    }

    lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error();
LABEL_42:
    swift_allocError();
    swift_willThrow();
    goto LABEL_156;
  }

  if (CTFontDescriptorIsAppleFont())
  {
    goto LABEL_31;
  }

  v21 = a1[2];
  v123 = *a1;
  v124 = v21;
  v125 = *(a1 + 3);
  ProtobufEncoder.archiveOptions.getter(&v122);
  v22 = MEMORY[0x1E69658E8];
  if ((LOBYTE(v122) & 4) != 0)
  {
    v22 = MEMORY[0x1E6965838];
  }

  v23 = *v22;
  if (!CTFontDescriptorCopyAttribute(v12, v23))
  {
LABEL_63:
    lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error();
    swift_allocError();
    swift_willThrow();

    goto LABEL_156;
  }

  v115 = v23;
  v117 = a1;
  type metadata accessor for CFURLRef(0);
  v116 = swift_dynamicCastUnknownClassUnconditional();
  v24 = CFURLCopyScheme(v116);
  v25 = MEMORY[0x193ABEC20](1701603686, 0xE400000000000000);
  v26 = v25;
  if (!v24)
  {

    goto LABEL_62;
  }

  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
  v27 = static _CFObject.== infix(_:_:)();

  if ((v27 & 1) == 0)
  {
LABEL_62:

    v23 = v115;
    goto LABEL_63;
  }

  v118 = v12;
  a1 = v117;
  v28 = v117[2];
  v123 = *v117;
  v124 = v28;
  v125 = *(v117 + 3);
  ProtobufEncoder.archiveOptions.getter(&v122);
  if ((LOBYTE(v122) & 4) != 0)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v12 = a1[1];
    v29 = a1[3];
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v2;
    if (v83)
    {
      goto LABEL_108;
    }
  }

  else
  {
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v12 = a1[1];
    v29 = a1[3];
    v10 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    *&v29[8 * v31 + 32] = v12;
    a1[3] = v29;
    if (!__OFADD__(v12, 1))
    {
      a1[1] = v12 + 1;
      v32 = v116;
      specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(a2, a1, v32);
      v4 = v2;
      v12 = v118;
      v33 = v115;
      if (v2)
      {

LABEL_156:
        return;
      }

      v112 = v115;
      ProtobufEncoder.endLengthDelimited()();

      goto LABEL_31;
    }

    __break(1u);
  }

  v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
  v29 = v83;
LABEL_108:
  v85 = *(v29 + 2);
  v84 = *(v29 + 3);
  if (v85 >= v84 >> 1)
  {
    v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v29);
    v29 = v83;
  }

  *(v29 + 2) = v85 + 1;
  *&v29[8 * v85 + 32] = v12;
  a1 = v117;
  v117[3] = v29;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_172;
  }

  a1[1] = v12 + 1;
  v86 = v113;
  URL.encode(to:)(a1);
  v4 = v86;
  v12 = v118;
  if (!v86)
  {
    ProtobufEncoder.endLengthDelimited()();

    (*(v8 + 8))(v10, v7);
    goto LABEL_31;
  }

  (*(v8 + 8))(v10, v7);

  v82 = &v132;
LABEL_113:
}

void specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(void *a1, uint64_t (*a2)(uint64_t))
{
  v6 = type metadata accessor for OSSignpostID();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 2);
  v46 = *v2;
  v47 = v9;
  v48 = *(v2 + 24);
  v10 = ProtobufEncoder.archiveWriter.getter();
  if (v10)
  {
    v11 = v10;
    v45 = a1;
    lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
    v13 = v12;
    v14 = a1;
    v43 = v13;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v15 = v11[19];
    if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(&v46), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      swift_endAccess();
      outlined destroy of AnyHashable(&v46);
      if (one-time initialization token for archiving != -1)
      {
        goto LABEL_18;
      }

      while (1)
      {
        v19 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v19, static OSSignposter.archiving);
        lazy protocol witness table accessor for type Int and conformance Int();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v20, v21);
        static OSSignpostID.exclusive.getter();
        v22 = OSSignposter.logHandle.getter();
        v23 = static os_signpost_type_t.event.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v24 = swift_slowAlloc();
          LODWORD(v43) = v23;
          v25 = v18;
          v26 = v24;
          *v24 = 134217984;
          *(v24 + 4) = v25;
          v27 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18D018000, v22, v43, v27, "addAttachment.cacheHit", "index=%{name=index}ld", v26, 0xCu);
          v28 = v26;
          v18 = v25;
          MEMORY[0x193AC4820](v28, -1, -1);
        }

        v44[1](v8, v6);
        if ((v18 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        swift_once();
      }
    }

    else
    {
      swift_endAccess();
      v29 = outlined destroy of AnyHashable(&v46);
      v30 = a2(v29);
      if (v3)
      {
        goto LABEL_10;
      }

      v6 = v30;
      v36 = v31;
      v44 = v14;
      outlined copy of Data._Representation(v30, v31);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v6, v36, &v46);
      v8 = v47;
      v37 = v46;
      v38 = specialized Collection<>.firstIndex(of:)(v46, *(&v46 + 1), v47, v11[4]);
      if (v39)
      {
        v46 = v37;
        LODWORD(v47) = v8;
        BYTE4(v47) = 0;
        outlined copy of Data._Representation(v6, v36);
        specialized ArchiveWriter.addAttachment(hash:from:)(&v46, v11, v6, v36);
      }

      v18 = v38;
      outlined consume of Data._Representation(v6, v36);
      v45 = v44;
      v40 = v44;
      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v11[19];
      v11[19] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, &v46, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v46);
      v11[19] = v49;
      swift_endAccess();
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_17;
      }
    }

    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v18);
LABEL_10:

    return;
  }

  v32 = (a2)();
  if (!v3)
  {
    v34 = v32;
    v35 = v33;
    ProtobufEncoder.dataField(_:_:)(2, v32, v33);
    outlined consume of Data._Representation(v34, v35);
  }
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance CodablePlatformFont@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized CodablePlatformFont.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t protocol witness for Decodable.init(from:) in conformance CodablePlatformFont@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized CodableByProtobuf.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized CodableByProtobuf.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v11.super.isa;
    v6 = v12;
    outlined copy of Data._Representation(v11.super.isa, v12);
    ProtobufDecoder.init(_:)(v11.super.isa, v12, &v11);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = dispatch thunk of Decoder.userInfo.getter();

    v13 = v7;
    ContentTransition.Style.init(from:)(&v11, &v10);
    outlined consume of Data._Representation(isa, v6);
    *a2 = v10;
    v8 = v11.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t specialized CodableByProtobuf.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v11.super.isa;
    v6 = v12;
    outlined copy of Data._Representation(v11.super.isa, v12);
    ProtobufDecoder.init(_:)(v11.super.isa, v12, &v11);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = dispatch thunk of Decoder.userInfo.getter();

    v13 = v7;
    CodableNSAttributes.init(from:)(&v11, &v10);
    outlined consume of Data._Representation(isa, v6);
    *a2 = v10;
    v8 = v11.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t specialized CodableByProtobuf.encode(to:)(void *a1, uint64_t a2)
{
  v10[5] = a2;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v2)
  {
    v6 = a1[3];
    v7 = result;
    v8 = a1;
    v9 = v5;
    __swift_project_boxed_opaque_existential_1(v8, v6);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v7, v9);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

{
  v10[5] = a2;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v2)
  {
    v6 = a1[3];
    v7 = result;
    v8 = a1;
    v9 = v5;
    __swift_project_boxed_opaque_existential_1(v8, v6);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v7, v9);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

uint64_t specialized CodableByProtobuf.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v12[5] = a2;
  v12[6] = a3;
  v13 = a4;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v4)
  {
    v8 = a1[3];
    v9 = result;
    v10 = a1;
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(v10, v8);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v9, v11);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t specialized CodableByProtobuf.encode(to:)(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v12[5] = a2;
  v12[6] = a3;
  v13 = a4;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v4)
  {
    v8 = a1[3];
    v9 = result;
    v10 = a1;
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(v10, v8);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v9, v11);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t specialized CodableByProtobuf.encode(to:)(void *a1, char a2)
{
  v11 = a2;
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in CodableByProtobuf.encode(to:));
  if (!v2)
  {
    v6 = a1[3];
    v7 = result;
    v8 = a1;
    v9 = v5;
    __swift_project_boxed_opaque_existential_1(v8, v6);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v7, v9);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

void CodableCGFont.encode(to:)(void *a1, CGFontRef graphicsFont)
{
  v4 = CTFontCreateWithGraphicsFont(graphicsFont, 1.0, 0, 0);
  ProtobufEncoder.encodeVarint(_:)(0x22uLL);
  v5 = a1[1];
  v6 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  a1[3] = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    a1[1] = v5 + 1;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v10 = v4;

    specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v10, closure #1 in ProtobufEncoder.encodeAttachedMessage<A, B>(_:for:)specialized partial apply);
    if (v2)
    {
    }

    else
    {

      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

void CodableFontTraits.encode(to:)(void *a1, void *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  v9 = MEMORY[0x1E69E7CA0];
  if (*(&v46 + 1))
  {
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v10 = v43;
      v11 = v9;
      v12 = v8;
      v13 = v4;
      v14 = v5;
      v15 = [v43 unsignedIntegerValue];
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      v16 = v15;
      v5 = v14;
      v4 = v13;
      v8 = v12;
      v9 = v11;
      ProtobufEncoder.encodeVarint(_:)(v16);
    }
  }

  else
  {
    outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
  }

  if ([a2 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
    goto LABEL_18;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = v43;
  [v43 floatValue];
  v19 = v18;
  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v20 = a1[1];
  v21 = v20 + 4;
  if (__OFADD__(v20, 4))
  {
    __break(1u);
    goto LABEL_65;
  }

  if (a1[2] < v21)
  {
    goto LABEL_67;
  }

  a1[1] = v21;
  for (i = (*a1 + v20); ; i = ProtobufEncoder.growBufferSlow(to:)(v21))
  {
    *i = v19;

LABEL_18:
    if ([a2 objectForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v17 = v43;
        [v43 floatValue];
        v19 = v23;
        ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
        v24 = a1[1];
        v21 = v24 + 4;
        if (__OFADD__(v24, 4))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1[2] < v21)
        {
          v25 = ProtobufEncoder.growBufferSlow(to:)(v21);
        }

        else
        {
          a1[1] = v21;
          v25 = (*a1 + v24);
        }

        *v25 = v19;
      }
    }

    else
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
    }

    if ([a2 objectForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (!*(&v46 + 1))
    {
      outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
      goto LABEL_38;
    }

    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v17 = v43;
    [v43 floatValue];
    v19 = v26;
    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v27 = a1[1];
    v21 = v27 + 4;
    if (!__OFADD__(v27, 4))
    {
      break;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  if (a1[2] < v21)
  {
    v28 = ProtobufEncoder.growBufferSlow(to:)(v21);
  }

  else
  {
    a1[1] = v21;
    v28 = (*a1 + v27);
  }

  *v28 = v19;

LABEL_38:
  if (!*MEMORY[0x1E69658E0])
  {
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if ([a2 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_49;
    }

    v41 = v4;
    v29 = v5;
    if (!v43 && v44 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      goto LABEL_49;
    }

    ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
    v36 = v8;
    static String.Encoding.utf8.getter();
    v37 = String.data(using:allowLossyConversion:)();
    v39 = v38;

    (*(v29 + 8))(v36, v41);
    if (v39 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      v42 = swift_allocError();
      swift_willThrow();
      return;
    }

    v40 = v42;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v37, v39, a1);
    v42 = v40;
    outlined consume of Data?(v37, v39);
  }

  else
  {
    outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
  }

LABEL_49:
  if (!*MEMORY[0x1E69657D8])
  {
    goto LABEL_73;
  }

  if ([a2 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v30 = v43;
      [v43 floatValue];
      v32 = v31;
      ProtobufEncoder.encodeVarint(_:)(0x35uLL);
      v33 = a1[1];
      v34 = v33 + 4;
      if (__OFADD__(v33, 4))
      {
        __break(1u);
      }

      else if (a1[2] >= v34)
      {
        a1[1] = v34;
        v35 = (*a1 + v33);
LABEL_58:
        *v35 = v32;

        return;
      }

      v35 = ProtobufEncoder.growBufferSlow(to:)(v34);
      goto LABEL_58;
    }
  }

  else
  {
    outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v47, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
  }
}

uint64_t ProtobufEncoder.preferredCompositionLanguage.getter()
{
  v1 = *(v0 + 32);
  if (one-time initialization token for preferredCompositionLanguage != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.preferredCompositionLanguage);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  type metadata accessor for CTCompositionLanguage(0);
  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CodablePlatformFont()
{
  Hasher.init(_seed:)();
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodablePlatformFont(uint64_t a1)
{
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodablePlatformFont(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodablePlatformFont(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

void specialized ObjectCache.subscript.getter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for (key: Locale.Key, hash: Int, value: String)?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ObjectCache<Locale.Key, String>.Item(0);
  v61 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  type metadata accessor for (key: Locale.Key, hash: Int, value: String)(0);
  v16 = v15;
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v52 - v19;
  Hasher.init(_seed:)();
  v20 = type metadata accessor for Locale.Components();
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components, MEMORY[0x1E69695E8], MEMORY[0x1E69695F0]);
  v59 = a1;
  dispatch thunk of Hashable.hash(into:)();
  v63 = Hasher._finalize()();
  v21 = 4 * (v63 & 7);
  v55 = v2;
  v22 = *(v2 + 32);

  os_unfair_lock_lock(v22 + 4);
  v23 = *&v22[6]._os_unfair_lock_opaque;
  v24 = *(v23 + 16);
  v58 = v21;
  if (v21 >= v24)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v2 = 0;
  v25 = 0;
  v26 = *(v8 + 72);
  v27 = (v57 + 48);
  v54 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v8 = v54 + 4 * v26 * (v63 & 7);
  v28 = 0x80000000;
  v20 = v58;
  v62 = v22;
  while (1)
  {
    v67 = v28;
    outlined init with copy of ResolvableTextSegmentAttribute.Value(v23 + v8, v14, type metadata accessor for ObjectCache<Locale.Key, String>.Item);
    outlined init with take of ResolvableTextSegmentAttribute.Value(v14, v6, type metadata accessor for (key: Locale.Key, hash: Int, value: String)?);
    if ((*v27)(v6, 1, v16) == 1)
    {
      break;
    }

    v65 = v25;
    v29 = v66;
    outlined init with take of ResolvableTextSegmentAttribute.Value(v6, v66, type metadata accessor for (key: Locale.Key, hash: Int, value: String));
    if (*(v29 + *(v16 + 48)) == v63 && (MEMORY[0x193ABDA30](v66, v59) & 1) != 0)
    {
      LODWORD(v2) = v22[8]._os_unfair_lock_opaque + 1;
      v22[8]._os_unfair_lock_opaque = v2;
      v40 = *&v22[6]._os_unfair_lock_opaque;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v22[6]._os_unfair_lock_opaque = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    v30 = *&v22[6]._os_unfair_lock_opaque;
    if (v20 >= *(v30 + 16))
    {
      goto LABEL_31;
    }

    os_unfair_lock_opaque = v22[8]._os_unfair_lock_opaque;
    v31 = v27;
    v32 = v14;
    v33 = v6;
    v34 = v60;
    outlined init with copy of ResolvableTextSegmentAttribute.Value(v30 + v8, v60, type metadata accessor for ObjectCache<Locale.Key, String>.Item);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v66, type metadata accessor for (key: Locale.Key, hash: Int, value: String));
    v35 = v26;
    v36 = v16;
    v37 = *(v34 + *(v61 + 44));
    v38 = v34;
    v6 = v33;
    v14 = v32;
    v27 = v31;
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v38, type metadata accessor for ObjectCache<Locale.Key, String>.Item);
    v39 = os_unfair_lock_opaque - v37;
    v16 = v36;
    v26 = v35;
    v22 = v62;
    v28 = v67;
    if (v67 <= v39)
    {
      v28 = v39;
    }

    v25 = v65;
    if (v67 < v39)
    {
      v25 = v2;
    }

    if (v2 == 3)
    {
LABEL_18:
      v65 = v25;
      v22 = 0;
      goto LABEL_23;
    }

LABEL_5:
    v23 = *&v22[6]._os_unfair_lock_opaque;
    ++v20;
    v8 += v26;
    ++v2;
    if (v20 >= *(v23 + 16))
    {
      goto LABEL_30;
    }
  }

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for (key: Locale.Key, hash: Int, value: String)?);
  v28 = 0x7FFFFFFF;
  if (v67 == 0x7FFFFFFF)
  {
    if (v2 == 3)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  if (v2 != 3)
  {
    v25 = v2;
    goto LABEL_5;
  }

  v22 = 0;
  v65 = 3;
LABEL_23:
  while (1)
  {
    v43 = v59;
    os_unfair_lock_unlock(v62 + 4);

    if (v22)
    {
      break;
    }

    v20 = v26;
    v44 = v55;
    (*(v55 + 16))(v68, v43);
    v6 = *(v44 + 32);

    os_unfair_lock_lock(v6 + 4);
    v2 = v58 + v65;
    if (__OFADD__(v58, v65))
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      v45 = v68[0];
      v22 = v68[1];
      v46 = *(v16 + 48);
      v8 = v56;
      v47 = (v56 + *(v16 + 64));
      outlined init with copy of ResolvableTextSegmentAttribute.Value(v43, v56, type metadata accessor for Locale.Key);
      *(v8 + v46) = v63;
      *v47 = v45;
      v47[1] = v22;
      (*(v57 + 56))(v8, 0, 1, v16);
      v48 = v6[8]._os_unfair_lock_opaque + 1;
      v6[8]._os_unfair_lock_opaque = v48;
      *(v8 + *(v61 + 44)) = v48;
      v26 = *&v6[6]._os_unfair_lock_opaque;

      v49 = swift_isUniquelyReferenced_nonNull_native();
      *&v6[6]._os_unfair_lock_opaque = v26;
      if (v49)
      {
        if ((v2 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }
    }

    *&v6[6]._os_unfair_lock_opaque = specialized _ArrayBuffer._consumeAndCreateNew()(v50);

    v26 = *&v6[6]._os_unfair_lock_opaque;
    if ((v2 & 0x8000000000000000) != 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_27:
    if (v2 < *(v26 + 16))
    {
      outlined assign with take of ObjectCache<Locale.Key, String>.Item(v56, v26 + v54 + v2 * v20);
      os_unfair_lock_unlock(v6 + 4);

      return;
    }

LABEL_35:
    __break(1u);
LABEL_36:

    *&v22[6]._os_unfair_lock_opaque = specialized _ArrayBuffer._consumeAndCreateNew()(v51);

    v40 = *&v22[6]._os_unfair_lock_opaque;
LABEL_20:
    if (v20 >= *(v40 + 16))
    {
      __break(1u);
      return;
    }

    *(v40 + *(v61 + 44) + v8) = v2;
    *&v22[6]._os_unfair_lock_opaque = v40;
    v42 = v53;
    outlined init with take of ResolvableTextSegmentAttribute.Value(v66, v53, type metadata accessor for (key: Locale.Key, hash: Int, value: String));
    v22 = *(v42 + *(v16 + 64) + 8);
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v42, type metadata accessor for Locale.Key);
  }
}

void _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA30ResolvableTextSegmentAttributeO5ValueV_Tt1B5(uint64_t a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [ResolvableTextSegmentAttribute.Value](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ResolvableTextSegmentAttribute.Value] and conformance <A> [A], type metadata accessor for [ResolvableTextSegmentAttribute.Value], lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value and conformance ResolvableTextSegmentAttribute.Value);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v7 + 16))
    {
      v6 = *(type metadata accessor for ResolvableTextSegmentAttribute.Value(0) - 8);
      outlined init with copy of ResolvableTextSegmentAttribute.Value(v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a3, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA04TimeK10FormattingOG_Tt1B5(uint64_t a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v6 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v6 + 32, a3, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>, &type metadata for TimeDataFormatting, &protocol witness table for TimeDataFormatting, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA18ResolvableProgressVG_Tt1B5(uint64_t a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableProgress> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v6 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v6 + 32, a3, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress, &protocol witness table for ResolvableProgress, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA25ResolvableCLKTextProviderVG_Tt1B5(uint64_t a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v6 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v6 + 32, a3, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>, &type metadata for ResolvableCLKTextProvider, &protocol witness table for ResolvableCLKTextProvider, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA15ResolvableTimerVG_Tt1B5(uint64_t a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableTimer> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v6 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v6 + 32, a3, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer, &protocol witness table for ResolvableTimer, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA21ResolvableCurrentDateVG_Tt1B5(uint64_t a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v6 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v6 + 32, a3, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate, &protocol witness table for ResolvableCurrentDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA22ResolvableAbsoluteDateVG_Tt1B5(uint64_t a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v6 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v6 + 32, a3, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate, &protocol witness table for ResolvableAbsoluteDate, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA23CodableAttributedStringV5RangeV15DecodingWrapper33_3C93C430CC5ED2F702DA0C4F8C84B538LLVy__AA22ResolvableDateIntervalVG_Tt1B5(uint64_t a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>] and conformance <A> [A], type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>], lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v6 + 16))
    {
      outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(v6 + 32, a3, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval, &protocol witness table for ResolvableDateInterval, type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>);
    }

    else
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA11JSONCodableVySDySSSdGG_Tt1B5(void *a3@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for [JSONCodable<[String : Double]>](0);
  lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [JSONCodable<[String : Double]>] and conformance <A> [A], type metadata accessor for [JSONCodable<[String : Double]>], lazy protocol witness table accessor for type JSONCodable<[String : Double]> and conformance JSONCodable<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v4)
  {
    goto LABEL_2;
  }

  if (!*(v7 + 16))
  {

    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
LABEL_2:

    return;
  }

  v6 = *(v7 + 32);

  *a3 = v6;
}

uint64_t specialized closure #1 in ProtobufEncoder.encodeAttachedMessage<A, B>(_:for:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Data.Deallocator();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = a1;

  CodablePlatformFont.encode(to:)(&v14, a2);
  if (v2)
  {
    free(v14);
    v9 = v17;
  }

  else
  {
    if (v14)
    {
      v10 = v15;
      v11 = v14;
      (*(v6 + 104))(v8, *MEMORY[0x1E6969000], v5);
      v9 = specialized Data.init(bytesNoCopy:count:deallocator:)(v11, v10, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()@<X0>(uint64_t a1@<X8>)
{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    specialized Color.ResolvedHDR.init(from:)(v1, &v9);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          *a1 = v9;
          *(a1 + 16) = v10;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    ResolvedShadowStyle.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    GraphicsFilter.VibrantColorMatrix.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    GraphicsFilter.EDRGainMultiply.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    GraphicsFilter.DisplacementMap.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    _RotationEffect.Data.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()@<X0>(_OWORD *a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    *v12 = 1065353216;
    *&v12[12] = 0;
    *&v12[4] = 0;
    *&v12[20] = 0x3F80000000000000;
    *&v12[28] = 0uLL;
    *&v12[44] = 0x3F80000000000000uLL;
    *&v12[60] = 0;
    *&v12[68] = 0;
    *&v12[72] = 1065353216;
    closure #1 in _ColorMatrix.init(from:)(v12, v1, &v11);
    v5 = *&v12[48];
    a1[2] = *&v12[32];
    a1[3] = v5;
    a1[4] = *&v12[64];
    v6 = *&v12[16];
    *a1 = *v12;
    a1[1] = v6;
    v7 = v1[5];
    if (*(v7 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
LABEL_5:
          v9 = v8 - 1;
          v10 = *(v7 + 8 * v9 + 32);
          *(v7 + 16) = v9;
          v1[5] = v7;
          v1[2] = v10;
          return result;
        }

LABEL_9:
        __break(1u);
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()@<X0>(_DWORD *a1@<X8>)
{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    StrongHash.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()()
{
  result = ProtobufDecoder.beginMessage()();
  if (!v1)
  {
    specialized Color.Resolved.init(from:)(v0);
    v5 = *(v0 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_7:
          v3 = v6 - 1;
          v4 = *(v5 + 8 * v3 + 32);
          *(v5 + 16) = v3;
          *(v0 + 40) = v5;
          *(v0 + 16) = v4;
          return result;
        }

        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()@<X0>(double *a1@<X8>)
{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    _Rotation3DEffect.Data.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  _sypSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt8>, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 48 * a1);
  *(v11 + 25) = *(a3 + 25);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 4 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 640 * a1), __src, 0x27CuLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = a5[7] + 16 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of AnyTrackedValue(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of AnyTrackedValue(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 4 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3 & 1;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5 & 1;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = (a4[7] + 80 * result);
  v5 = a3[4];
  v4[3] = a3[3];
  v4[4] = v5;
  v6 = a3[2];
  v4[1] = a3[1];
  v4[2] = v6;
  *v4 = *a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 32 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2 & 1;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  v5 = (a3[7] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a1;
  v67 = a2;

  v4 = String.init<A>(_:)();
  v7 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v7 = static String._copying(_:)(v4, v5, v6);
    v37 = v36;

    v5 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v7 & 0x1000000000000000) != 0)
    {
      v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = _StringObject.sharedUTF8.getter();
      v9 = v65;
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v20 = v9 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (v8)
          {
            v24 = 0;
            v25 = v8 + 1;
            while (1)
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v21)
              {
                if (v26 < 0x41 || v26 >= v22)
                {
                  if (v26 < 0x61 || v26 >= v23)
                  {
                    goto LABEL_125;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v24 * a3;
              if ((v24 * a3) >> 64 == (v24 * a3) >> 63)
              {
                v24 = v28 + (v26 + v27);
                if (!__OFADD__(v28, (v26 + v27)))
                {
                  ++v25;
                  if (--v20)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (v8)
        {
          v32 = 0;
          while (1)
          {
            v33 = *v8;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_125;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a3;
            if ((v32 * a3) >> 64 == (v32 * a3) >> 63)
            {
              v32 = v35 + (v33 + v34);
              if (!__OFADD__(v35, (v33 + v34)))
              {
                ++v8;
                if (--v9)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a3 + 48;
        v13 = a3 + 55;
        v14 = a3 + 87;
        if (a3 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (v8)
        {
          v15 = 0;
          v16 = v8 + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                if (v17 < 0x61 || v17 >= v14)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v15 * a3;
            if ((v15 * a3) >> 64 == (v15 * a3) >> 63)
            {
              v15 = v19 - (v17 + v18);
              if (!__OFSUB__(v19, (v17 + v18)))
              {
                ++v16;
                if (--v11)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v38 = HIBYTE(v5) & 0xF;
  v66 = v7;
  v67 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v38)
      {
        v57 = 0;
        v58 = a3 + 48;
        v59 = a3 + 55;
        v60 = a3 + 87;
        if (a3 > 10)
        {
          v58 = 58;
        }

        else
        {
          v60 = 97;
          v59 = 65;
        }

        v61 = &v66;
        while (1)
        {
          v62 = *v61;
          if (v62 < 0x30 || v62 >= v58)
          {
            if (v62 < 0x41 || v62 >= v59)
            {
              if (v62 < 0x61 || v62 >= v60)
              {
                goto LABEL_125;
              }

              v63 = -87;
            }

            else
            {
              v63 = -55;
            }
          }

          else
          {
            v63 = -48;
          }

          v64 = v57 * a3;
          if ((v57 * a3) >> 64 == (v57 * a3) >> 63)
          {
            v57 = v64 + (v62 + v63);
            if (!__OFADD__(v64, (v62 + v63)))
            {
              v61 = (v61 + 1);
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a3 + 48;
        v42 = a3 + 55;
        v43 = a3 + 87;
        if (a3 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v66 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_125;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a3;
          if ((v40 * a3) >> 64 == (v40 * a3) >> 63)
          {
            v40 = v47 - (v45 + v46);
            if (!__OFSUB__(v47, (v45 + v46)))
            {
              ++v44;
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v49 = 0;
      v50 = a3 + 48;
      v51 = a3 + 55;
      v52 = a3 + 87;
      if (a3 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v66 + 1;
      while (1)
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_125;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v49 * a3;
        if ((v49 * a3) >> 64 == (v49 * a3) >> 63)
        {
          v49 = v56 + (v54 + v55);
          if (!__OFADD__(v56, (v54 + v55)))
          {
            ++v53;
            if (--v48)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = String.subscript.getter();
  v7 = static String._copying(_:)(v3, v4, v5, v6);

  return v7;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x193ABEE20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v7, 0, 14);
      v4 = v7;
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
LABEL_7:
    specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
    return;
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v7[0] = a1;
  LOWORD(v7[1]) = a2;
  BYTE2(v7[1]) = BYTE2(a2);
  BYTE3(v7[1]) = BYTE3(a2);
  BYTE4(v7[1]) = BYTE4(a2);
  BYTE5(v7[1]) = BYTE5(a2);
  v4 = v7 + BYTE6(a2);
LABEL_9:
  ProtobufEncoder.encodeData(_:)(v7, v4);
}

{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      [*(a3 + 160) fileDescriptor];
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:

    specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
    goto LABEL_9;
  }

  v6 = a1;
  v7 = a2;
  v8 = BYTE2(a2);
  v9 = BYTE3(a2);
  v10 = BYTE4(a2);
  v11 = BYTE5(a2);
  FileArchiveWriter.appendBytes(_:size:)(&v6, BYTE6(a2));
LABEL_9:
}

void specialized closure #1 in CodableByProtobuf.encode(to:)(void *a1, void *a2, unint64_t *a3)
{
  v4 = *a3;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = dispatch thunk of Encoder.userInfo.getter();

  a1[4] = v5;
  CodablePlatformFont.encode(to:)(a1, v4);
}

void specialized closure #1 in CodableByProtobuf.encode(to:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v3;
  ResolvedGradient.encode(to:)(a1);
}

{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v3;
  AccessibilityText.encode(to:)(a1);
}

{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v3;
  CodableNSAttributes.encode(to:)(a1);
}

uint64_t specialized closure #1 in CodableByProtobuf.encode(to:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v3;
  return ContentTransition.Style.encode(to:)(a1);
}

uint64_t specialized static CodableAttributedString.Range.encodeResolvable(_:textSegment:to:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v95 = a2;
  type metadata accessor for ResolvableTextSegmentAttribute.Value?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v94 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimelineSchedule?(a1, v99, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation, &protocol descriptor for ResolvableStringAttributeRepresentation);
  v15 = v100;
  if (!v100)
  {
    outlined destroy of _DisplayList_AnyEffectAnimator?(v99, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation, &protocol descriptor for ResolvableStringAttributeRepresentation);
    v102 = 0u;
    v103 = 0u;
    v104 = 0;
    return outlined destroy of _DisplayList_AnyEffectAnimator?(&v102, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation, &protocol descriptor for ResolvableStringAttributeRepresentation);
  }

  v93 = v9;
  v91 = v11;
  v16 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  v17 = *(a3 + 2);
  *v98 = *a3;
  *&v98[16] = v17;
  *&v98[24] = *(a3 + 24);
  ProtobufEncoder.archiveOptions.getter(v97);
  v96 = v97[1];
  (*(v16 + 32))(&v102, &v96, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v99);
  if (!*(&v103 + 1))
  {
    return outlined destroy of _DisplayList_AnyEffectAnimator?(&v102, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation, &protocol descriptor for ResolvableStringAttributeRepresentation);
  }

  v92 = v8;
  outlined init with take of AnyTrackedValue(&v102, v105);
  __swift_project_boxed_opaque_existential_1(v105, v106);
  DynamicType = swift_getDynamicType();
  v19 = static ResolvableStringAttributeRepresentation.attribute.getter(DynamicType, v107);
  v20 = one-time initialization token for attribute;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  v114 = v21;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    v26 = 16;
    v27 = v114;
LABEL_8:

LABEL_13:
    v31 = v93;
    goto LABEL_14;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v30 = v114;

  if (v29)
  {
    v26 = 16;
    goto LABEL_13;
  }

  v38 = one-time initialization token for attribute;
  v90 = v30;
  if (v38 != -1)
  {
    swift_once();
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {
    v26 = 17;
    v27 = v90;
    goto LABEL_8;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v44 = v90;

  if (v43)
  {
    v26 = 17;
    goto LABEL_13;
  }

  v55 = one-time initialization token for attribute;
  v27 = v44;
  if (v55 != -1)
  {
    swift_once();
  }

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;
  if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
  {
    v26 = 18;
    goto LABEL_8;
  }

  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v60)
  {
    v26 = 18;
    goto LABEL_13;
  }

  v61 = one-time initialization token for attribute;
  v27 = v27;
  if (v61 != -1)
  {
    swift_once();
  }

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;
  if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
  {
    v26 = 19;
    goto LABEL_8;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v66)
  {
    v26 = 19;
    goto LABEL_13;
  }

  v67 = one-time initialization token for attribute;
  v27 = v27;
  if (v67 != -1)
  {
    swift_once();
  }

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;
  if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
  {
    v26 = 31;
    goto LABEL_8;
  }

  v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v72)
  {
    v26 = 31;
    goto LABEL_13;
  }

  v73 = one-time initialization token for attribute;
  v27 = v27;
  if (v73 != -1)
  {
    swift_once();
  }

  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;
  if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
  {
    v26 = 33;
    goto LABEL_8;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v78)
  {
    v26 = 33;
    goto LABEL_13;
  }

  v79 = v27;
  v27 = MEMORY[0x193ABEC20](0xD000000000000024, 0x800000018DD773F0);
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
  {

    v26 = 35;
    goto LABEL_8;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v84)
  {
    v26 = 35;
    v31 = v93;
LABEL_14:
    v32 = v92;
    v33 = v106;
    v34 = __swift_project_boxed_opaque_existential_1(v105, v106);
    encode #1 <A>(_:) in static CodableAttributedString.Range.encodeResolvable(_:textSegment:to:)(v34, a3, v26, v33);
    if (v3)
    {
    }

    else
    {
      outlined init with copy of AnyTrackedValue(v105, v99);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation, &protocol descriptor for ResolvableStringAttributeRepresentation);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation, &protocol descriptor for ConfigurationBasedResolvableStringAttributeRepresentation);
      if (swift_dynamicCast())
      {
        outlined init with take of AnyTrackedValue(v98, &v102);
        v35 = *(&v103 + 1);
        v36 = v104;
        __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
        (*(v36 + 40))(v35, v36);
        ProtobufEncoder.encodeVarint(_:)(0xA2uLL);
        v37 = a3[1];
        v111 = *a3;
        v112 = v37;
        v113 = *(a3 + 4);
        v45 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v14);
        v47 = v46;
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v45, v46, a3);
        outlined consume of Data._Representation(v45, v47);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v14, type metadata accessor for ResolvableAttributeConfiguration);
        __swift_destroy_boxed_opaque_existential_1(&v102);
      }

      else
      {
        memset(v98, 0, sizeof(v98));
        outlined destroy of _DisplayList_AnyEffectAnimator?(v98, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation, &protocol descriptor for ConfigurationBasedResolvableStringAttributeRepresentation);
      }

      outlined init with copy of ResolvableTextSegmentAttribute.Value(v95, v32, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
      v48 = (*(v94 + 48))(v32, 1, v31);
      v49 = v91;
      if (v48 == 1)
      {

        outlined destroy of ResolvableTextSegmentAttribute.Value?(v32, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
      }

      else
      {
        outlined init with take of ResolvableTextSegmentAttribute.Value(v32, v91, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        v50 = *(v31 + 20);

        *(v49 + v50) = v114;
        ProtobufEncoder.encodeVarint(_:)(0x112uLL);
        v51 = a3[1];
        v108 = *a3;
        v109 = v51;
        v110 = *(a3 + 4);
        v52 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v49);
        v54 = v53;
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v52, v53, a3);
        outlined consume of Data._Representation(v52, v54);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v49, type metadata accessor for ResolvableTextSegmentAttribute.Value);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v105);
  }

  _sypSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_18DDA6EB0;
  *&v102 = 0;
  *(&v102 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  *&v102 = 0;
  *(&v102 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  MEMORY[0x193ABEDD0](0xD000000000000020, 0x800000018DD77440);
  v99[0] = v79;
  type metadata accessor for NSAttributedStringKey(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
  v86 = StaticString.description.getter();
  MEMORY[0x193ABEDD0](v86);

  MEMORY[0x193ABEDD0](58, 0xE100000000000000);
  v99[0] = 84;
  v87 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v87);

  MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
  v88 = v102;
  *(v85 + 56) = MEMORY[0x1E69E6158];
  *(v85 + 32) = v88;
  print(_:separator:terminator:)();

  return __swift_destroy_boxed_opaque_existential_1(v105);
}

CTFontDescriptorRef specialized static CodablePlatformFont.fontDescriptor(from:matching:with:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_22:
    v19 = a4;
    v20 = __CocoaSet.count.getter();
    a4 = v19;
    v26 = v20;
    if (v20)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    return 0;
  }

LABEL_3:
  v22 = a4;
  v5 = 0;
  v25 = v4 & 0xC000000000000001;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  v7 = *MEMORY[0x1E6965808];
  v8 = MEMORY[0x1E69E7C98];
  while (1)
  {
    if (v25)
    {
      v9 = MEMORY[0x193AC03C0](v5, v4);
    }

    else
    {
      if (v5 >= *(v6 + 16))
      {
        goto LABEL_21;
      }

      v9 = *(v4 + 8 * v5 + 32);
    }

    CopyWithAttributes = v9;
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (!CTFontDescriptorCopyAttribute(v9, v7) || (swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_5;
    }

    if (v27 == a2 && v28 == a3)
    {
      break;
    }

    v12 = v8;
    v13 = v4;
    v14 = v7;
    v15 = v6;
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_18;
    }

    v6 = v15;
    v7 = v14;
    v4 = v13;
    v8 = v12;
LABEL_5:
    ++v5;
    if (v11 == v26)
    {
      return 0;
    }
  }

LABEL_18:
  if (*(v22 + 16))
  {
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
    v17 = CopyWithAttributes;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v17, isa);
  }

  return CopyWithAttributes;
}

char *specialized CodableTextAttachment.init(from:)(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
LABEL_51:
    a1[3] = 0;
    return v4;
  }

  while (1)
  {
    v7 = a1[3];
    if (v7)
    {
      v8 = a1[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_52;
      }

      a1[3] = 0;
    }

    v7 = ProtobufDecoder.decodeVarint()(v7);
    if (v1)
    {
      goto LABEL_53;
    }

    if (v7 < 8)
    {
LABEL_52:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_53:

      return v4;
    }

LABEL_11:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      goto LABEL_4;
    }

    if (v9 == 2)
    {
      break;
    }

    if (v9 == 1)
    {
      if ((v7 & 7) != 2)
      {
        goto LABEL_52;
      }

      ProtobufDecoder.beginMessage()();
      if (v1)
      {
        goto LABEL_53;
      }

      CodablePlatformImage.init(from:)(a1, &v33);
      v2 = a1[5];
      if (!*(v2 + 2))
      {
        goto LABEL_61;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = *(v2 + 2);
        if (!v10)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v10 = *(v2 + 2);
        if (!v10)
        {
          goto LABEL_62;
        }
      }

      v11 = v10 - 1;
      v6 = *&v2[8 * v11 + 32];
      *(v2 + 2) = v11;
      a1[5] = v2;
      a1[2] = v6;
      v2 = v33;
      v12 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
      swift_beginAccess();
      _NSTextAttachmentSetImage(v4, *&v2[v12]);

      goto LABEL_4;
    }

    v25 = v7 & 7;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v27 = ProtobufDecoder.decodeVarint()(v7);
        if (v1)
        {
          goto LABEL_53;
        }

        if (v27 < 0)
        {
          goto LABEL_64;
        }

        v26 = a1[1] + v27;
        if (v6 < v26)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v25 != 5)
        {
          goto LABEL_52;
        }

        v26 = a1[1] + 4;
        if (v6 < v26)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      if ((v7 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v7);
        if (v1)
        {
          goto LABEL_53;
        }

        goto LABEL_4;
      }

      if (v25 != 1)
      {
        goto LABEL_52;
      }

      v26 = a1[1] + 8;
      if (v6 < v26)
      {
        goto LABEL_52;
      }
    }

    a1[1] = v26;
LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      a1[3] = 0;
      return v4;
    }
  }

  if ((v7 & 7) != 2)
  {
    goto LABEL_52;
  }

  v2 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    v2 = isUniquelyReferenced_nonNull_native;
  }

  v15 = *(v2 + 2);
  v14 = *(v2 + 3);
  if (v15 >= v14 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v2);
    v2 = isUniquelyReferenced_nonNull_native;
  }

  *(v2 + 2) = v15 + 1;
  *&v2[8 * v15 + 32] = v6;
  a1[5] = v2;
  v16 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v1)
  {
    goto LABEL_53;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = a1[1] + v16;
    if (v6 < v17)
    {
      goto LABEL_52;
    }

    a1[2] = v17;
    Data.init(from:)(a1);
    v20 = a1[5];
    if (!*(v20 + 2))
    {
      goto LABEL_63;
    }

    v2 = v18;
    v21 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = *(v20 + 2);
      if (!v22)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v22 = *(v20 + 2);
      if (!v22)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v23 = v22 - 1;
    v6 = *&v20[8 * v23 + 32];
    *(v20 + 2) = v23;
    a1[5] = v20;
    a1[2] = v6;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v4 setContents_];

    outlined consume of Data._Representation(v2, v21);
    goto LABEL_4;
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  __break(1u);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v30 = *(v28 + 2);
  if (v30)
  {
    goto LABEL_58;
  }

  __break(1u);
  v28 = a1[5];
  if (!*(v28 + 2))
  {
    __break(1u);
LABEL_67:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
    v28 = result;
    v30 = *(result + 2);
    if (!v30)
    {
      goto LABEL_68;
    }

LABEL_58:
    v31 = v30 - 1;
    v32 = *&v28[8 * v31 + 32];
    *(v28 + 2) = v31;

    a1[5] = v28;
    a1[2] = v32;
    return v4;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_67;
  }

  v30 = *(v28 + 2);
  if (v30)
  {
    goto LABEL_58;
  }

LABEL_68:
  __break(1u);
  return result;
}

char *specialized CodableAdaptiveImageGlyph.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
LABEL_41:
    a1[3] = 0;
LABEL_42:
    lazy protocol witness table accessor for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error();
    v6 = swift_allocError();
    swift_willThrow();
    return v6;
  }

  v6 = 0;
  while (1)
  {
    v7 = a1[3];
    if (v7)
    {
      v8 = a1[4];
      if (v4 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v4)
      {
        goto LABEL_43;
      }

      a1[3] = 0;
    }

    v7 = ProtobufDecoder.decodeVarint()(v7);
    if (v1)
    {
      goto LABEL_44;
    }

    if (v7 < 8)
    {
LABEL_43:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_44:

      return v6;
    }

LABEL_11:
    v9 = v7 & 7;
    if ((v7 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((v7 & 7) > 1)
    {
      if (v9 == 2)
      {
        v25 = ProtobufDecoder.decodeVarint()(v7);
        if (v1)
        {
          goto LABEL_44;
        }

        if (v25 < 0)
        {
          goto LABEL_51;
        }

        v24 = a1[1] + v25;
        if (v5 < v24)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_43;
        }

        v24 = a1[1] + 4;
        if (v5 < v24)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      if ((v7 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v7);
        if (v1)
        {
          goto LABEL_44;
        }

        goto LABEL_4;
      }

      if (v9 != 1)
      {
        goto LABEL_43;
      }

      v24 = a1[1] + 8;
      if (v5 < v24)
      {
        goto LABEL_43;
      }
    }

    a1[1] = v24;
LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      a1[3] = 0;
      if (v6)
      {
        return v6;
      }

      goto LABEL_42;
    }
  }

  if (v9 != 2)
  {
    goto LABEL_43;
  }

  v2 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
    v2 = isUniquelyReferenced_nonNull_native;
  }

  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  if (v12 >= v11 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v2);
    v2 = isUniquelyReferenced_nonNull_native;
  }

  *(v2 + 16) = v12 + 1;
  *(v2 + 8 * v12 + 32) = v5;
  a1[5] = v2;
  v13 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v1)
  {
    goto LABEL_44;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = a1[1] + v13;
    if (v5 < v14)
    {
      goto LABEL_43;
    }

    a1[2] = v14;
    Data.init(from:)(a1);
    v17 = a1[5];
    if (!*(v17 + 2))
    {
      goto LABEL_50;
    }

    v2 = v15;
    v18 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = *(v17 + 2);
      if (!v19)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v19 = *(v17 + 2);
      if (!v19)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v20 = v19 - 1;
    v5 = *&v17[8 * v20 + 32];
    *(v17 + 2) = v20;
    a1[5] = v17;
    a1[2] = v5;
    v21 = objc_allocWithZone(MEMORY[0x1E69DB780]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v23 = [v21 initWithImageContent_];

    outlined consume of Data._Representation(v2, v18);
    v6 = v23;
    goto LABEL_4;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v29 = result;
  v30 = *(result + 2);
  if (v30)
  {
    v27 = v30 - 1;
    v28 = *&result[8 * v27 + 32];
    *(result + 2) = v27;

    a1[5] = v29;
    a1[2] = v28;
    return v6;
  }

  __break(1u);
  return result;
}

void *assignWithCopy for CodableAttributedString.Range(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for CodableAttributedString.Range(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAttributedString.Range(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAttributedString.Range(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

char *specialized CodableCGFont.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    goto LABEL_88;
  }

  v6 = 0;
  while (1)
  {
    v7 = a1[3];
    if (v7)
    {
      v8 = a1[4];
      if (v4 < v8)
      {
        goto LABEL_9;
      }

      if (v8 < v4)
      {
        goto LABEL_90;
      }

      a1[3] = 0;
    }

    v7 = ProtobufDecoder.decodeVarint()(v7);
    if (v1)
    {
      goto LABEL_91;
    }

    if (v7 < 8)
    {
      goto LABEL_90;
    }

LABEL_9:
    v9 = v7 >> 3;
    v10 = v7 & 7;
    if (v7 >> 3 > 2)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v10 != 2)
      {
        goto LABEL_90;
      }

      v2 = a1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = isUniquelyReferenced_nonNull_native;
      }

      v31 = *(v2 + 2);
      v30 = *(v2 + 3);
      if (v31 >= v30 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v2);
        v2 = isUniquelyReferenced_nonNull_native;
      }

      *(v2 + 2) = v31 + 1;
      *&v2[8 * v31 + 32] = v5;
      a1[5] = v2;
      v32 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v1)
      {
        goto LABEL_91;
      }

      if (v32 < 0)
      {
        goto LABEL_104;
      }

      v33 = a1[1] + v32;
      if (v5 < v33)
      {
        goto LABEL_90;
      }

      a1[2] = v33;
      v34 = specialized CodablePlatformFont.init(from:)(a1);
      v26 = a1[5];
      if (!*(v26 + 2))
      {
        goto LABEL_108;
      }

      v2 = v34;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = *(v26 + 2);
        if (!v27)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
        v27 = *(v26 + 2);
        if (!v27)
        {
          goto LABEL_111;
        }
      }

LABEL_54:
      v35 = v27 - 1;
      v5 = *&v26[8 * v35 + 32];
      *(v26 + 2) = v35;
      a1[5] = v26;
      a1[2] = v5;
      v2 = v2;
      v36 = CTFontCopyGraphicsFont(v2, 0);

      v6 = v36;
      goto LABEL_67;
    }

    if (v9 == 2)
    {
      if (v10 != 2)
      {
        goto LABEL_90;
      }

      v2 = a1[5];
      v11 = swift_isUniquelyReferenced_nonNull_native();
      if ((v11 & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = v11;
      }

      v13 = *(v2 + 2);
      v12 = *(v2 + 3);
      if (v13 >= v12 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v2);
        v2 = v11;
      }

      *(v2 + 2) = v13 + 1;
      *&v2[8 * v13 + 32] = v5;
      a1[5] = v2;
      v14 = ProtobufDecoder.decodeVarint()(v11);
      if (v1)
      {
        goto LABEL_91;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = a1[1] + v14;
        if (v5 < v15)
        {
          goto LABEL_90;
        }

        a1[2] = v15;
        _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo9CGFontRefaSg_Tt0g503_s7a11UI13Codablel11V4fromAcA15cd43Vz_tKcfcSo0D3RefaSgAFzKXEfU_AI10Foundation4K6VXEfU_Tf1cn_n(a1);
        v17 = a1[5];
        if (!*(v17 + 2))
        {
          goto LABEL_110;
        }

        v2 = v16;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = *(v17 + 2);
          if (!v18)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v18 = *(v17 + 2);
          if (!v18)
          {
            goto LABEL_112;
          }
        }

LABEL_66:
        v43 = v18 - 1;
        v5 = *&v17[8 * v43 + 32];
        *(v17 + 2) = v43;

        a1[5] = v17;
        a1[2] = v5;
        v6 = v2;
LABEL_67:
        v1 = 0;
        goto LABEL_68;
      }

      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_115:
      __break(1u);
      do
      {
        __break(1u);
        v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v52 = *(v51 + 2);
        if (v52)
        {
          v46 = v52 - 1;
          v47 = *&v51[8 * v46 + 32];
          *(v51 + 2) = v46;

          a1[5] = v51;
          a1[2] = v47;
          return v6;
        }

        __break(1u);
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
        v48 = *(v2 + 2);
        if (v48)
        {
          goto LABEL_102;
        }

        __break(1u);
        v2 = a1[5];
        if (!*(v2 + 2))
        {
          goto LABEL_115;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v48 = *(v2 + 2);
          if (v48)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v48 = *(v2 + 2);
          if (v48)
          {
            goto LABEL_102;
          }
        }

        __break(1u);
        v2 = a1[5];
      }

      while (!*(v2 + 2));
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v48 = *(v2 + 2);
        if (v48)
        {
LABEL_102:
          v49 = v48 - 1;
          v50 = *&v2[8 * v49 + 32];
          *(v2 + 2) = v49;

          a1[5] = v2;
          a1[2] = v50;
          return v6;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v2 = result;
        v48 = *(result + 2);
        if (v48)
        {
          goto LABEL_102;
        }
      }

      __break(1u);
      return result;
    }

LABEL_38:
    if ((v7 & 7) > 1)
    {
      if (v10 == 2)
      {
        v44 = ProtobufDecoder.decodeVarint()(v7);
        if (v1)
        {
          goto LABEL_91;
        }

        if (v44 < 0)
        {
          goto LABEL_114;
        }

        v28 = a1[1] + v44;
        if (v5 < v28)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_90;
        }

        v28 = a1[1] + 4;
        if (v5 < v28)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      if ((v7 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v7);
        if (v1)
        {
          goto LABEL_91;
        }

        goto LABEL_68;
      }

      if (v10 != 1)
      {
        goto LABEL_90;
      }

      v28 = a1[1] + 8;
      if (v5 < v28)
      {
        goto LABEL_90;
      }
    }

    a1[1] = v28;
LABEL_68:
    v4 = a1[1];
    if (v4 >= v5)
    {
      a1[3] = 0;
      if (v6)
      {
        return v6;
      }

LABEL_89:
      lazy protocol witness table accessor for type CodableCGFont.Error and conformance CodableCGFont.Error();
      v6 = swift_allocError();
      swift_willThrow();
      return v6;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      if (v10 != 2)
      {
        goto LABEL_90;
      }

      v2 = a1[5];
      v19 = swift_isUniquelyReferenced_nonNull_native();
      if ((v19 & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = v19;
      }

      v21 = *(v2 + 2);
      v20 = *(v2 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v2);
        v2 = v19;
      }

      *(v2 + 2) = v21 + 1;
      *&v2[8 * v21 + 32] = v5;
      a1[5] = v2;
      v22 = ProtobufDecoder.decodeVarint()(v19);
      if (v1)
      {
        goto LABEL_91;
      }

      if (v22 < 0)
      {
        goto LABEL_106;
      }

      v23 = a1[1] + v22;
      if (v5 < v23)
      {
        goto LABEL_90;
      }

      a1[2] = v23;
      v24 = a1[6];
      swift_bridgeObjectRetain_n();
      _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA19CodablePlatformFontV_Tt0g503_s7a4UI15cd9V21decodef42MessagexyKAA0c9DecodableG0RzAA0c9Encodableu18RzlFx10Foundation4k11VKXEfU_AA19lmN5V_TG5SDys17CodingUserInfoKeyVypGTf1cn_n(a1, v24);
      v2 = v25;

      v26 = a1[5];
      if (!*(v26 + 2))
      {
        goto LABEL_107;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = *(v26 + 2);
        if (!v27)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
        v27 = *(v26 + 2);
        if (!v27)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_54;
    }

    goto LABEL_38;
  }

  if (v10 != 2)
  {
    goto LABEL_90;
  }

  v2 = a1[5];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  if ((v37 & 1) == 0)
  {
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    v2 = v37;
  }

  v39 = *(v2 + 2);
  v38 = *(v2 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v2);
    v2 = v37;
  }

  *(v2 + 2) = v39 + 1;
  *&v2[8 * v39 + 32] = v5;
  a1[5] = v2;
  v40 = ProtobufDecoder.decodeVarint()(v37);
  if (v1)
  {
    goto LABEL_91;
  }

  if (v40 < 0)
  {
    goto LABEL_105;
  }

  v41 = a1[1] + v40;
  if (v5 >= v41)
  {
    a1[2] = v41;
    _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo9CGFontRefaSg_Tt0g503_s7a11UI13Codablel11V4fromAcA15cd44Vz_tKcfcSo0D3RefaSgAFzKXEfU0_AI10Foundation4K6VXEfU_Tf1cn_n(a1);
    v17 = a1[5];
    if (!*(v17 + 2))
    {
      goto LABEL_109;
    }

    v2 = v42;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = *(v17 + 2);
      if (!v18)
      {
        goto LABEL_87;
      }

      goto LABEL_66;
    }

    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    v18 = *(v17 + 2);
    if (v18)
    {
      goto LABEL_66;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    a1[3] = 0;
    goto LABEL_89;
  }

LABEL_90:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_91:

  return v6;
}

unint64_t specialized CodableByProtobuf.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v9.super.isa;
    v5 = v10;
    outlined copy of Data._Representation(v9.super.isa, v10);
    ProtobufDecoder.init(_:)(v9.super.isa, v10, &v9);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = dispatch thunk of Decoder.userInfo.getter();

    v11 = v6;
    v3 = specialized CodablePlatformFont.init(from:)(&v9);
    outlined consume of Data._Representation(isa, v5);
    v7 = v9.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void lazy protocol witness table accessor for type Substring and conformance Substring()
{
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    swift_getWitnessTable(MEMORY[0x1E69E67D0], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }
}

uint64_t outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error()
{
  if (!lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodablePlatformFont.Error, &unk_1F004F898, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodablePlatformFont.Error, &unk_1F004F898, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error);
  }
}

void lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  if (!*a1)
  {
    v5 = a2(255);
    v7 = a3();
    swift_getWitnessTable(MEMORY[0x1E69E6330], v5, &v7);
    atomic_store(v6, a1);
  }
}

void partial apply for specialized closure #1 in CodableByProtobuf.encode(to:)(uint64_t a1)
{
  specialized closure #1 in CodableByProtobuf.encode(to:)(a1, *(v1 + 16));
}

{
  specialized closure #1 in CodableByProtobuf.encode(to:)(a1, *(v1 + 16));
}

{
  specialized closure #1 in CodableByProtobuf.encode(to:)(a1, *(v1 + 16));
}

void lazy protocol witness table accessor for type CodableCGFont.Error and conformance CodableCGFont.Error()
{
  if (!lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableCGFont.Error, &unk_1F004F7E0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableCGFont.Error, &unk_1F004F7E0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableCGFont.Error and conformance CodableCGFont.Error);
  }
}

void type metadata accessor for (key: Locale.Key, hash: Int, value: String)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: Locale.Key, hash: Int, value: String))
  {
    type metadata accessor for Locale.Key(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (key: Locale.Key, hash: Int, value: String));
    }
  }
}

uint64_t outlined assign with take of ObjectCache<Locale.Key, String>.Item(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObjectCache<Locale.Key, String>.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void lazy protocol witness table accessor for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error()
{
  if (!lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAdaptiveImageGlyph.Error, &unk_1F004F750, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAdaptiveImageGlyph.Error, &unk_1F004F750, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAdaptiveImageGlyph.Error and conformance CodableAdaptiveImageGlyph.Error);
  }
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval, &protocol witness table for ResolvableDateInterval);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>]);
    }
  }
}

void lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>, type metadata accessor for ResolvableDateInterval, &protocol witness table for ResolvableDateInterval);
    swift_getWitnessTable(protocol conformance descriptor for CodableAttributedString.Range.DecodingWrapper<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }
}

uint64_t outlined init with copy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate, &protocol witness table for ResolvableAbsoluteDate);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>]);
    }
  }
}

void lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate>, type metadata accessor for ResolvableAbsoluteDate, &protocol witness table for ResolvableAbsoluteDate);
    swift_getWitnessTable(protocol conformance descriptor for CodableAttributedString.Range.DecodingWrapper<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableAbsoluteDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate, &protocol witness table for ResolvableCurrentDate);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>]);
    }
  }
}

void lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate>, type metadata accessor for ResolvableCurrentDate, &protocol witness table for ResolvableCurrentDate);
    swift_getWitnessTable(protocol conformance descriptor for CodableAttributedString.Range.DecodingWrapper<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCurrentDate> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer, &protocol witness table for ResolvableTimer);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>]);
    }
  }
}

void lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableTimer> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableTimer> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableTimer>, type metadata accessor for ResolvableTimer, &protocol witness table for ResolvableTimer);
    swift_getWitnessTable(protocol conformance descriptor for CodableAttributedString.Range.DecodingWrapper<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableTimer> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>, &type metadata for ResolvableCLKTextProvider, &protocol witness table for ResolvableCLKTextProvider);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>]);
    }
  }
}

void lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>, &type metadata for ResolvableCLKTextProvider, &protocol witness table for ResolvableCLKTextProvider);
    swift_getWitnessTable(protocol conformance descriptor for CodableAttributedString.Range.DecodingWrapper<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }
}

void type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for CodableAttributedString.Range.DecodingWrapper(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress, &protocol witness table for ResolvableProgress);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>]);
    }
  }
}

void lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<ResolvableProgress> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableProgress> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableDateInterval>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<ResolvableProgress>, type metadata accessor for ResolvableProgress, &protocol witness table for ResolvableProgress);
    swift_getWitnessTable(protocol conformance descriptor for CodableAttributedString.Range.DecodingWrapper<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<ResolvableProgress> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }
}

void type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for CodableAttributedString.Range.DecodingWrapper(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>])
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>, &type metadata for TimeDataFormatting, &protocol witness table for TimeDataFormatting);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>]);
    }
  }
}

void lazy protocol witness table accessor for type CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting> and conformance CodableAttributedString.Range.DecodingWrapper<A>()
{
  if (!lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting> and conformance CodableAttributedString.Range.DecodingWrapper<A>)
  {
    type metadata accessor for CodableAttributedString.Range.DecodingWrapper<ResolvableCLKTextProvider>(255, &lazy cache variable for type metadata for CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>, &type metadata for TimeDataFormatting, &protocol witness table for TimeDataFormatting);
    swift_getWitnessTable(protocol conformance descriptor for CodableAttributedString.Range.DecodingWrapper<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting> and conformance CodableAttributedString.Range.DecodingWrapper<A>);
  }
}

void lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value and conformance ResolvableTextSegmentAttribute.Value()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value and conformance ResolvableTextSegmentAttribute.Value, type metadata accessor for ResolvableTextSegmentAttribute.Value, protocol conformance descriptor for ResolvableTextSegmentAttribute.Value);
}

{
  lazy protocol witness table accessor for type LinkDestination.Configuration and conformance LinkDestination.Configuration(&lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value and conformance ResolvableTextSegmentAttribute.Value, type metadata accessor for ResolvableTextSegmentAttribute.Value, protocol conformance descriptor for ResolvableTextSegmentAttribute.Value);
}

void lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont()
{
  if (!lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodablePlatformFont, &type metadata for CodablePlatformFont, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodablePlatformFont, &type metadata for CodablePlatformFont, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodablePlatformFont, &type metadata for CodablePlatformFont, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodablePlatformFont, &type metadata for CodablePlatformFont, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodablePlatformFont and conformance CodablePlatformFont);
  }
}

void lazy protocol witness table accessor for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error()
{
  if (!lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextAttachment.Error, &unk_1F004F668, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextAttachment.Error, &unk_1F004F668, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextAttachment.Error and conformance CodableTextAttachment.Error);
  }
}

void *destroy for CodableAttributedString.Range.DecodingWrapper(void *result)
{
  if (result[3])
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

__n128 initializeWithCopy for CodableAttributedString.Range.DecodingWrapper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  return result;
}

__n128 assignWithCopy for CodableAttributedString.Range.DecodingWrapper(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v3)
    {
      result.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(a1, a2, a3);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      result = *a2;
      v7 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v7;
    }
  }

  else if (v3)
  {
    *(a1 + 24) = v3;
    *(a1 + 32) = *(a2 + 32);
    (**(v3 - 8))(a3.n128_f64[0]);
  }

  else
  {
    result = *a2;
    v8 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v8;
  }

  return result;
}

__n128 assignWithTake for CodableAttributedString.Range.DecodingWrapper(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

void instantiation function for generic protocol witness table for CodablePlatformFont(uint64_t a1)
{
  lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
  *(a1 + 16) = v3;
}

void lazy protocol witness table accessor for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:)()
{
  if (!lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:))
  {
    swift_getWitnessTable(protocol conformance descriptor for DataKey #1 in closure #2 in CodablePlatformFont.encode(to:), &type metadata for DataKey #1 in closure #2 in CodablePlatformFont.encode(to:), v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:));
  }
}

{
  if (!lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:))
  {
    swift_getWitnessTable(protocol conformance descriptor for DataKey #1 in closure #2 in CodablePlatformFont.encode(to:), &type metadata for DataKey #1 in closure #2 in CodablePlatformFont.encode(to:), v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:));
  }
}

uint64_t VStack._tree.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _VStackLayout, *(a1 + 16), &protocol witness table for _VStackLayout);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t VStack._tree.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _VStackLayout, *(a2 + 16), &protocol witness table for _VStackLayout);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t static _VStackLayout.implicitRoot.getter()
{
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  return static HorizontalAlignment.center;
}

uint64_t VStackLayout.spacing.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

__n128 protocol witness for DerivedLayout.base.getter in conformance VStackLayout@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

void instantiation function for generic protocol witness table for VStackLayout(uint64_t a1)
{
  lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
  *(a1 + 8) = v2;
}

void *initializeBufferWithCopyOfBuffer for VStack(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-18 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    (*(v4 + 16))((a1 + v5 + 17) & ~v5, (a2 + v5 + 17) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

uint64_t ArrayWith2Inline.storage.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for ArrayWith2Inline.Storage(0, *(a1 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4, v6);
}

uint64_t ArrayWith2Inline.storage.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ArrayWith2Inline.Storage(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t ArrayWith2Inline.init()(uint64_t a1, void x1_0, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ArrayWith2Inline.Storage(0, a1, a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for ArrayWith2Inline.Storage(0, a2, v4, v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = *(*(a3 - 8) + 32);
  v9(a4, a1, a3);
  v9(a4 + v8, a2, a3);
  type metadata accessor for ArrayWith2Inline.Storage(0, a3, v10, v11);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v81 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v72 = type metadata accessor for IteratorSequence();
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v68 - v9;
  v10 = type metadata accessor for Optional();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v84 = a2;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v78 = &v68 - v24;
  v82 = AssociatedTypeWitness;
  v79 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  v70 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v83 = &v68 - v28;
  v29 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = dispatch thunk of Sequence.underestimatedCount.getter();
  if (v33 < 3)
  {
    (*(v29 + 16))(v32, a1, a3);
    dispatch thunk of Sequence.makeIterator()();
    dispatch thunk of IteratorProtocol.next()();
    v39 = *(v18 + 48);
    if (v39(v17, 1, v84) == 1)
    {
      (*(v29 + 8))(a1, a3);
      (*(v79 + 8))(v83, v82);
      (*(v76 + 8))(v17, v77);
      type metadata accessor for ArrayWith2Inline.Storage(0, v84, v40, v41);
    }

    else
    {
      v68 = v18;
      v69 = a1;
      v45 = v78;
      v46 = v17;
      v47 = v84;
      v48 = *(v18 + 32);
      v48(v78, v46, v84);
      dispatch thunk of IteratorProtocol.next()();
      if (v39(v14, 1, v47) == 1)
      {
        (*(v29 + 8))(v69, a3);
        (*(v79 + 8))(v83, v82);
        (*(v76 + 8))(v14, v77);
        v48(v81, v45, v47);
        type metadata accessor for ArrayWith2Inline.Storage(0, v47, v49, v50);
      }

      else
      {
        v51 = v74;
        v48(v74, v14, v47);
        v52 = v73;
        dispatch thunk of IteratorProtocol.next()();
        if (v39(v52, 1, v47) != 1)
        {
          v48(v75, v52, v47);
          getContiguousArrayStorageType<A>(for:)(v47, v47);
          v57 = v68;
          v58 = *(v68 + 72);
          swift_allocObject();
          v59 = static Array._adoptStorage(_:count:)();
          v61 = v60;
          v62 = *(v57 + 16);
          v62(v60, v78, v84);
          v62(v61 + v58, v51, v84);
          v62(v61 + 2 * v58, v75, v84);
          v86 = v59;
          type metadata accessor for Array();
          _ViewInputs.base.modify();
          v85 = MEMORY[0x193AC0510](v86, v84);
          v63 = v79;
          v64 = v70;
          v65 = v82;
          (*(v79 + 16))(v70, v83, v82);
          MEMORY[0x193AC0720](v64, v65, AssociatedConformanceWitness);
          type metadata accessor for ContiguousArray();
          swift_getWitnessTable(MEMORY[0x1E69E6D00], v72);
          ContiguousArray.append<A>(contentsOf:)();
          (*(v29 + 8))(v69, a3);
          v66 = *(v57 + 8);
          v66(v75, v84);
          v66(v51, v84);
          v66(v78, v84);
          (*(v63 + 8))(v83, v65);
          v35 = v84;
          goto LABEL_13;
        }

        (*(v29 + 8))(v69, a3);
        (*(v79 + 8))(v83, v82);
        (*(v76 + 8))(v52, v77);
        v53 = *(swift_getTupleTypeMetadata2() + 48);
        v54 = v81;
        v48(v81, v78, v47);
        v48(v54 + v53, v51, v47);
        type metadata accessor for ArrayWith2Inline.Storage(0, v47, v55, v56);
      }
    }
  }

  else
  {
    v34 = v33;
    v35 = v84;
    if (type metadata accessor for Array() != a3 && type metadata accessor for ContiguousArray() != a3)
    {
      v36 = static Array._allocateUninitialized(_:)();
      v85 = MEMORY[0x193AC0510](v36, v35);
      ContiguousArray.reserveCapacity(_:)(v34);
      (*(v29 + 16))(v32, a1, a3);
      ContiguousArray.append<A>(contentsOf:)();
      (*(v29 + 8))(a1, a3);
LABEL_13:
      *v81 = v85;
      type metadata accessor for ArrayWith2Inline.Storage(0, v35, v37, v38);
      return swift_storeEnumTagMultiPayload();
    }

    (*(v29 + 16))(v32, a1, a3);
    v42 = Array.init<A>(_:)();
    (*(v29 + 8))(a1, a3);
    *v81 = v42;
    type metadata accessor for ArrayWith2Inline.Storage(0, v35, v43, v44);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for ArrayWith2Inline.Storage(0, v6, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  (*(v8 + 16))(&v18 - v10, v5, v7, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v13 == 2)
    {
      v15 = ContiguousArray.count.getter();

      return v15;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v17 = *(*(v6 - 8) + 8);
    v17(&v11[*(TupleTypeMetadata2 + 48)], v6);
    v17(v11, v6);
    return 2;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return 1;
  }

  return result;
}

void ArrayWith2Inline.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v19 = type metadata accessor for ArrayWith2Inline.Storage(0, v7, v17, v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  (*(v23 + 16))(&v30 - v21, v4, v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      ContiguousArray.subscript.getter();

      return;
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v25 = *(v8 + 32);
    v25(v16, v22, v7);
    if (!a1)
    {
      v25(a3, v16, v7);
      return;
    }

    goto LABEL_12;
  }

  v26 = *(swift_getTupleTypeMetadata2() + 48);
  v27 = *(v8 + 32);
  v27(v13, v22, v7);
  v27(v10, &v22[v26], v7);
  if (!a1)
  {
    (*(v8 + 8))(v10, v7);
    v28 = a3;
    v29 = v13;
LABEL_11:
    v27(v28, v29, v7);
    return;
  }

  if (a1 == 1)
  {
    (*(v8 + 8))(v13, v7);
    v28 = a3;
    v29 = v10;
    goto LABEL_11;
  }

LABEL_12:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t key path setter for ArrayWith2Inline.subscript(_:) : <A>ArrayWith2Inline<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - v6;
  v9 = *v8;
  (*(v10 + 16))(&v15 - v6, v5);
  v13 = type metadata accessor for ArrayWith2Inline(0, v4, v11, v12);
  return ArrayWith2Inline.subscript.setter(v7, v9, v13);
}

uint64_t ArrayWith2Inline.subscript.setter(char *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v14 = type metadata accessor for ArrayWith2Inline.Storage(0, v5, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v35 - v20);
  (*(v15 + 16))(&v35 - v20, v4, v14, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v40 = *v21;
      v25 = *(v15 + 8);
      v25(v4, v14);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ContiguousArray();
      ContiguousArray._makeMutableAndUnique()();
      if ((v39 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v40 + 16) > v39)
      {
        (*(v6 + 40))(v40 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v39, v38, v5);
        v25(v4, v14);
        *v4 = v40;
        return swift_storeEnumTagMultiPayload();
      }

      __break(1u);
    }

    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    if (!v39)
    {
      v23 = *(v15 + 8);
      v23(v4, v14);
      (*(v6 + 32))(v4, v38, v5);
      swift_storeEnumTagMultiPayload();
      return v23(v21, v14);
    }

    goto LABEL_16;
  }

  v37 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 + 48);
  v35 = TupleTypeMetadata2;
  v36 = v27;
  v28 = *(v6 + 32);
  v28(v11, v21, v5);
  v28(v8, (v21 + v36), v5);
  if (!v39)
  {
    (*(v6 + 8))(v11, v5);
    v29 = *(v35 + 48);
    v28(v17, v38, v5);
    v30 = &v17[v29];
    v31 = v8;
LABEL_13:
    v28(v30, v31, v5);
    swift_storeEnumTagMultiPayload();
    return (*(v15 + 40))(v37, v17, v14);
  }

  v32 = v8;
  v33 = v35;
  if (v39 == 1)
  {
    (*(v6 + 8))(v32, v5);
    v34 = *(v33 + 48);
    v28(v17, v11, v5);
    v30 = &v17[v34];
    v31 = v38;
    goto LABEL_13;
  }

LABEL_16:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*ArrayWith2Inline.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  ArrayWith2Inline.subscript.getter(a2, a3, v13);
  return ArrayWith2Inline.subscript.modify;
}

void ArrayWith2Inline.subscript.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    ArrayWith2Inline.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ArrayWith2Inline.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Int __swiftcall ArrayWith2Inline.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ArrayWith2Inline.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t ArrayWith2Inline._copyToContiguousArray()(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, a1);
  v4 = v3;
  v5 = type metadata accessor for LazySequence();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = *(a1 + 16);
  v17 = type metadata accessor for LazyMapSequence();
  MEMORY[0x1EEE9AC00](v17);
  v11 = type metadata accessor for ArrayWith2Inline.Storage(0, v8, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v12 + 16))(&v17 - v14, v1, v11, v13);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return ContiguousArray._copyToContiguousArray()();
  }

  (*(v12 + 8))(v15, v11);
  MEMORY[0x193ABEFB0](a1, v4);
  *(swift_allocObject() + 16) = v8;
  swift_getWitnessTable(MEMORY[0x1E69E6A68], v5);
  LazySequenceProtocol.map<A>(_:)();

  (*(v18 + 8))(v7, v5);
  swift_getWitnessTable(MEMORY[0x1E69E6CC8], v17);
  return Array.init<A>(_:)();
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>(void *a1, uint64_t *a2, uint64_t a3))()
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
  v6[4] = ArrayWith2Inline.subscript.modify(v6, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance ArrayWith2Inline<A>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  specialized MutableCollection<>.subscript.setter(a1, &v8, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, a3);
  v6 = type metadata accessor for Slice();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ArrayWith2Inline<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = ArrayWith2Inline.endIndex.getter(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
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
  v6[4] = ArrayWith2Inline.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

void (*ArrayWith2Inline.subscript.read(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  ArrayWith2Inline.subscript.getter(a2, a3, v9);
  return ArrayWith2Inline.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance ArrayWith2Inline<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>);

  return MutableCollection<>.subscript.getter(a1, a2, v6, a3);
}

void *protocol witness for Collection.indices.getter in conformance ArrayWith2Inline<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, a1);

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ArrayWith2Inline<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  (*(*(a1 - 8) + 32))(a2, v4, a1);
  swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, a1);
  result = type metadata accessor for IndexingIterator();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ArrayWith2Inline<A>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ArrayWith2Inline<A>(uint64_t a1)
{
  v3 = ArrayWith2Inline._copyToContiguousArray()(a1);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

void ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v92 = a1;
  v91 = a2;
  v86 = a5;
  v97 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v79 = *(TupleTypeMetadata2 - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v82 = &v73 - v8;
  v87 = a4;
  v83 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  v90 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v25 = type metadata accessor for ArrayWith2Inline.Storage(0, v7, v23, v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (&v73 - v27);
  v30 = v29;
  v31 = *(v29 + 16);
  v89 = v5;
  v31(&v73 - v27, v5, v25, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v95 = UnsafeMutableBufferPointer.init(start:count:)();
      v96 = v68;
      v92(&v95);
      return;
    }

    v94 = *v28;
    v39 = *(v30 + 8);
    v40 = v89;
    v39(v89, v25);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v41 = v93;
    v42 = *(v94 + 16);
    v43 = v94 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v95 = v43;
    v96 = v42;
    v44 = v81;
    v92(&v95);
    type metadata accessor for Error();
    if (v41)
    {
      if (v95)
      {
        if (v43 == v95)
        {
          if (v96 == v42)
          {

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (v95)
    {
      if (v43 == v95)
      {
        v69 = v87;
        if (v96 == v42)
        {
          v39(v40, v25);
          *v40 = v94;
          swift_storeEnumTagMultiPayload();
          (*(v83 + 32))(v86, v44, v69);
          return;
        }

LABEL_25:
        __break(1u);
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    v45 = TupleTypeMetadata2;
    v81 = *(TupleTypeMetadata2 + 12);
    v46 = v90;
    v47 = v90 + 32;
    v48 = *(v90 + 32);
    v49 = v85;
    v48(v85, v28, v7);
    v50 = v28 + v81;
    v81 = v25;
    v51 = v80;
    v77 = v47;
    v76 = v48;
    v48(v80, v50, v7);
    v52 = v46;
    v53 = v49;
    v54 = *(v45 + 48);
    v55 = *(v46 + 16);
    v56 = v82;
    v55(v82, v53, v7);
    v75 = v54;
    v57 = (v56 + v54);
    v58 = v51;
    v59 = v81;
    v55(v57, v58, v7);
    v60 = v89;
    v74 = *(v30 + 8);
    v74(v89, v59);
    v61 = swift_storeEnumTagMultiPayload();
    v78 = &v73;
    MEMORY[0x1EEE9AC00](v61);
    v62 = v87;
    *(&v73 - 4) = v7;
    *(&v73 - 3) = v62;
    v63 = v91;
    *(&v73 - 2) = v92;
    *(&v73 - 1) = v63;
    v64 = type metadata accessor for Error();
    v65 = TupleTypeMetadata2;
    v66 = v93;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v56, partial apply for closure #2 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:), (&v73 - 6), TupleTypeMetadata2, v64, v62, MEMORY[0x1E69E7288], &v95);
    if (v66)
    {
      (*(v79 + 8))(v56, v65);
      v67 = *(v52 + 8);
      v67(v58, v7);
      v67(v85, v7);
    }

    else
    {
      v70 = *(v52 + 8);
      v93 = 0;
      v70(v58, v7);
      v70(v85, v7);
      v74(v60, v59);
      v71 = *(TupleTypeMetadata2 + 12);
      v72 = v76;
      v76(v60, v56, v7);
      v72(&v60[v71], v56 + v75, v7);
      swift_storeEnumTagMultiPayload();
      (*(v83 + 32))(v86, v84, v62);
    }
  }

  else
  {
    v85 = *(v90 + 32);
    (v85)(v22, v28, v7);
    v33 = v89;
    v84 = *(v30 + 8);
    (v84)(v89, v25);
    v34 = swift_storeEnumTagMultiPayload();
    TupleTypeMetadata2 = &v73;
    MEMORY[0x1EEE9AC00](v34);
    v35 = v87;
    *(&v73 - 4) = v7;
    *(&v73 - 3) = v35;
    v36 = v91;
    *(&v73 - 2) = v92;
    *(&v73 - 1) = v36;
    v37 = type metadata accessor for Error();
    v38 = v93;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, partial apply for closure #1 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:), (&v73 - 6), v7, v37, v35, MEMORY[0x1E69E7288], &v95);
    if (v38)
    {
      (*(v90 + 8))(v22, v7);
    }

    else
    {
      (v84)(v33, v25);
      (v85)(v33, v22, v7);
      swift_storeEnumTagMultiPayload();
      (*(v83 + 32))(v86, v15, v35);
    }
  }
}

uint64_t closure #2 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Error();
  result = _sSpsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_Spyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lF(a4, 2, partial apply for closure #1 in closure #2 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:), v14, a1, TupleTypeMetadata2, a4, v12, a5, MEMORY[0x1E69E7288], &v19);
  if (v6)
  {
    *a6 = v19;
  }

  return result;
}

uint64_t ArrayWith2Inline.append(_:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v14 = type metadata accessor for ArrayWith2Inline.Storage(0, v5, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v38 - v20);
  (*(v15 + 16))(&v38 - v20, v3, v14, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v43 = *v21;
      v24 = *(v15 + 8);
      v24(v3, v14);
      swift_storeEnumTagMultiPayload();
      (*(v6 + 16))(v11, a1, v5);
      type metadata accessor for ContiguousArray();
      ContiguousArray.append(_:)();
      v24(v3, v14);
      *v3 = v43;
    }

    else
    {
      (*(v15 + 8))(v3, v14);
      (*(v6 + 16))(v3, a1, v5);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v26 = v11;
      v41 = v17;
      v42 = v11;
      v27 = *(TupleTypeMetadata2 + 48);
      v40 = a1;
      v28 = *(v6 + 32);
      v28(v26, v21, v5);
      v28(v8, (v21 + v27), v5);
      getContiguousArrayStorageType<A>(for:)(v5, v5);
      v29 = *(v6 + 72);
      v39 = 2 * v29;
      swift_allocObject();
      v38 = static Array._adoptStorage(_:count:)();
      v31 = v30;
      v32 = *(v6 + 16);
      v32(v30, v42, v5);
      v32(v31 + v29, v8, v5);
      v32(v31 + v39, v40, v5);
      v43 = v38;
      type metadata accessor for Array();
      _ViewInputs.base.modify();
      v33 = MEMORY[0x193AC0510](v43, v5);
      v34 = *(v6 + 8);
      v34(v8, v5);
      v34(v42, v5);
      v35 = v41;
      *v41 = v33;
      v36 = v35;
      swift_storeEnumTagMultiPayload();
      return (*(v15 + 40))(v3, v36, v14);
    }

    (*(v15 + 8))(v3, v14);
    v23 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v6 + 32))(v3, v21, v5);
    (*(v6 + 16))(v3 + v23, a1, v5);
  }

  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall ArrayWith2Inline.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v13 = type metadata accessor for ArrayWith2Inline.Storage(0, v10, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v20 - v16);
  if (a1 >= 3)
  {
    (*(v14 + 16))(v17, v3, v13, v15);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v18 = MEMORY[0x193AC05D0](*v17, v10);

      if (v18 >= a1)
      {
        return;
      }
    }

    else
    {
      (*(v14 + 8))(v17, v13);
    }

    v19 = static Array._allocateUninitialized(_:)();
    v21 = MEMORY[0x193AC0510](v19, v10);
    type metadata accessor for ContiguousArray();
    ContiguousArray.reserveCapacity(_:)(a1);
    (*(v6 + 16))(v8, v3, v4);
    swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, v4);
    ContiguousArray.append<A>(contentsOf:)();
    (*(v14 + 8))(v3, v13);
    *v3 = v21;
    swift_storeEnumTagMultiPayload();
  }
}

Swift::Void __swiftcall ArrayWith2Inline.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v5 = v4;
  v7 = type metadata accessor for ArrayWith2Inline.Storage(0, *(v1 + 16), v2, v3);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v14 - v10);
  (*(v8 + 16))(&v14 - v10, v4, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v15 = *v11;
    if (keepingCapacity)
    {
      v12 = *(v8 + 8);
      v12(v4, v7);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ContiguousArray();
      ContiguousArray.removeAll(keepingCapacity:)(1);
      v12(v4, v7);
      *v4 = v15;
    }

    else
    {

      (*(v8 + 8))(v4, v7);
    }
  }

  else
  {
    v13 = *(v8 + 8);
    v13(v11, v7);
    v13(v5, v7);
  }

  swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a1;
  v71 = a3;
  v74 = a2;
  swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, a4);
  v64 = v10;
  v11 = type metadata accessor for Slice();
  swift_getWitnessTable(MEMORY[0x1E69E74F8], v11);
  v13 = v12;
  v76 = v11;
  v77 = a5;
  v78 = v12;
  v79 = a6;
  v73 = a6;
  v14 = type metadata accessor for ConcatenatedCollection(255, &v76);
  swift_getWitnessTable(protocol conformance descriptor for ConcatenatedCollection<A, B>, v14);
  v76 = v14;
  v77 = v11;
  v61 = v15;
  v78 = v15;
  v79 = v13;
  v69 = v13;
  v62 = type metadata accessor for ConcatenatedCollection(0, &v76);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v55 - v16;
  v67 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v66 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v55 - v20;
  v65 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v75 = &v55 - v24;
  v72 = a5;
  v25 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 + 24);
  v33 = type metadata accessor for ArrayWith2Inline.Storage(0, v30, v31, v32);
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v36 = v6;
  v38 = (&v55 - v37);
  v39 = v36;
  (*(v34 + 16))(v35);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v76 = *v38;
    v40 = *(v34 + 8);
    v40(v39, v33);
    swift_storeEnumTagMultiPayload();
    (*(v25 + 16))(v28, v71, v72);
    type metadata accessor for ContiguousArray();
    ContiguousArray.replaceSubrange<A>(_:with:)();
    v40(v39, v33);
    *v39 = v76;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v56 = v38;
    v55 = v34;
    v57 = v30;
    v58 = v14;
    v76 = v70;
    v42 = MEMORY[0x1E69E6D20];
    type metadata accessor for PartialRangeUpTo<Int>(0, &lazy cache variable for type metadata for PartialRangeUpTo<Int>, MEMORY[0x1E69E6D20]);
    swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, a4);
    lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>, &lazy cache variable for type metadata for PartialRangeUpTo<Int>, v42, MEMORY[0x1E69E6D28]);
    v43 = v68;
    MutableCollection.subscript.getter();
    concatenate<A, B>(_:_:)(v43, v71, v11, v72, v69, v73, v75);
    v44 = *(v63 + 8);
    v44(v43, v11);
    v45 = a4;
    if (Collection.count.getter() == v74)
    {
      v46 = v65;
      v47 = v59;
      v48 = v58;
      (*(v65 + 16))(v59, v75, v58);
      swift_getWitnessTable(protocol conformance descriptor for ConcatenatedCollection<A, B>, v48);
      v49 = v66;
      ArrayWith2Inline.init<A>(_:)(v47, v57, v48, v66);
    }

    else
    {
      v76 = v74;
      v50 = MEMORY[0x1E69E6D08];
      type metadata accessor for PartialRangeUpTo<Int>(0, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
      lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>, &lazy cache variable for type metadata for PartialRangeFrom<Int>, v50, MEMORY[0x1E69E6D18]);
      v51 = v68;
      MutableCollection.subscript.getter();
      v52 = v60;
      v48 = v58;
      concatenate<A, B>(_:_:)(v75, v51, v58, v11, v61, v69, v60);
      v44(v51, v11);
      v53 = v62;
      swift_getWitnessTable(protocol conformance descriptor for ConcatenatedCollection<A, B>, v62);
      v49 = v66;
      ArrayWith2Inline.init<A>(_:)(v52, v57, v53, v66);
      v46 = v65;
    }

    v54 = v55;
    (*(v46 + 8))(v75, v48);
    (*(v67 + 40))(v39, v49, v45);
    return (*(v54 + 8))(v56, v33);
  }
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance ArrayWith2Inline<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ArrayWith2Inline.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance ArrayWith2Inline<A>(char *a1, uint64_t a2)
{
  ArrayWith2Inline.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t static ArrayWith2Inline<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v62 = a1;
  v63 = a2;
  v60 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v52 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v52 - v14;
  v61 = v15;
  v17 = type metadata accessor for ArrayWith2Inline.Storage(0, v15, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = *(TupleTypeMetadata2 - 8);
  v29 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v31 = &v52 - v30;
  v33 = &v52 + *(v32 + 48) - v30;
  v59 = v18;
  v34 = *(v18 + 16);
  v34(&v52 - v30, v62, v17, v29);
  (v34)(v33, v63, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (v34)(v20, v31, v17);
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_15;
      }

      v36 = static ContiguousArray<A>.== infix(_:_:)();
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_15;
      }

      v36 = 1;
    }

LABEL_20:
    v28 = v59;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    (v34)(v23, v31, v17);
    v37 = v61;
    v38 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v43 = *(v60 + 8);
      v43(&v23[v38], v37);
      v43(v23, v37);
      goto LABEL_15;
    }

    v39 = v60;
    v40 = *(v60 + 32);
    v40(v58, v23, v37);
    v40(v55, v33, v37);
    v40(v56, &v23[v38], v37);
    v41 = v54;
    v40(v54, &v33[v38], v37);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v42 = v56;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v36 = 0;
      v42 = v56;
    }

    v50 = *(v39 + 8);
    v50(v41, v37);
    v50(v42, v37);
    v50(v55, v37);
    v50(v58, v37);
    goto LABEL_20;
  }

  (v34)(v26, v31, v17);
  if (!swift_getEnumCaseMultiPayload())
  {
    v45 = v60;
    v44 = v61;
    v46 = *(v60 + 32);
    v47 = v52;
    v46(v52, v26, v61);
    v48 = v53;
    v46(v53, v33, v44);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *(v45 + 8);
    v49(v48, v44);
    v49(v47, v44);
    goto LABEL_20;
  }

  (*(v60 + 8))(v26, v61);
LABEL_15:
  v36 = 0;
  v17 = TupleTypeMetadata2;
LABEL_21:
  (*(v28 + 8))(v31, v17);
  return v36 & 1;
}

double ArrayWith2Inline.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a2;
  v6 = type metadata accessor for ArrayWith2Inline(0, a2, a3, a4);
  _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayWith2Inline.init(arrayLiteral:), v9, a1, a2, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410], v7);

  return result;
}

uint64_t closure #1 in ArrayWith2Inline.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1;
  v9 = a2;
  v6 = type metadata accessor for UnsafeBufferPointer();
  swift_getWitnessTable(MEMORY[0x1E69E6058], v6, v8, v9);
  return ArrayWith2Inline.init<A>(_:)(&v8, a3, v6, a4);
}

uint64_t _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v14, v15, v16, v17, v18, v19, v20, v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

void getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  }

  else
  {

    type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(unint64_t, uint64_t, char *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v29 = a1;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v25 = v30;
    result = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v29, a2, a3, a4, a5, a6, v27, v18);
    v15 = v18;
    if (v25)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v19 = ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v19 = a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = a3;
      }

      v22 = *(v21 + 16);
    }

    v23 = v30;
    result = (v29)(v19, v22, v15);
    if (v23)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(unint64_t, uint64_t, char *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedObject = _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(v14, v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = AssociatedObject[2];

  v19 = v23;
  result = (a1)(AssociatedObject + v17, v18, v13);
  if (v19)
  {
    return (*(v11 + 32))(v22, v13, a6);
  }

  return result;
}

void *_ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v6 = type metadata accessor for _ArrayBuffer();
      swift_getWitnessTable(MEMORY[0x1E69E6AC8], v6);
      v4 = _copyCollectionToContiguousArray<A>(_:)();

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for PartialRangeUpTo<Int>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for PartialRangeUpTo<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double associated type witness table accessor for Collection.SubSequence : RandomAccessCollection in ArrayWith2Inline<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74F0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : MutableCollection in ArrayWith2Inline<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74E0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in ArrayWith2Inline<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : RangeReplaceableCollection in ArrayWith2Inline<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E7500], a1, &v5, WitnessTable);
}

uint64_t type metadata completion function for ArrayWith2Inline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ArrayWith2Inline.Storage(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double destroy for ArrayWith2Inline(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  v6 = v4 + v5;
  if (((v4 + v5) & ~v5) + v4 > v4)
  {
    v4 += (v4 + v5) & ~v5;
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  v7 = a1[v4];
  v8 = v7 - 3;
  if (v7 >= 3)
  {
    if (v4 <= 3)
    {
      v9 = v4;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_19;
      }

      v10 = *a1;
    }

    else if (v9 == 2)
    {
      v10 = *a1;
    }

    else if (v9 == 3)
    {
      v10 = *a1 | (a1[2] << 16);
    }

    else
    {
      v10 = *a1;
    }

    v11 = (v10 | (v8 << (8 * v4))) + 3;
    v7 = v10 + 3;
    if (v4 < 4)
    {
      v7 = v11;
    }
  }

LABEL_19:
  if (v7 == 2)
  {
  }

  else
  {
    if (v7 == 1)
    {
      v14 = ~v5;
      v17 = *(v3 + 8);
      v15 = a1;
      v17();
      a1 = (&v15[v6] & v14);
      v13 = v2;
      v12 = v17;
    }

    else
    {
      if (v7)
      {
        return result;
      }

      v12 = *(v3 + 8);
      v13 = *(a2 + 16);
    }

    (v12)(a1, v13);
  }

  return result;
}

_BYTE *initializeWithCopy for ArrayWith2Inline(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  if (((v6 + v7) & ~v7) + v6 > v6)
  {
    v6 += (v6 + v7) & ~v7;
  }

  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = a2[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_20:
  switch(v10)
  {
    case 2u:
      *__dst = *a2;
      __dst[v9] = 2;

      return __dst;
    case 1u:
      v15 = ~v7;
      v16 = *(v5 + 16);
      (v16)(__dst);
      v16(&__dst[v8] & v15, &a2[v8] & v15, v4);
      __dst[v9] = 1;
      return __dst;
    case 0u:
      (*(v5 + 16))(__dst);
      __dst[v9] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v9 + 1);
}

unsigned __int8 *assignWithCopy for ArrayWith2Inline(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  if (((v7 + v8) & ~v8) + v7 > v7)
  {
    v7 += (v7 + v8) & ~v8;
  }

  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = __dst[v10];
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_21;
      }

      v14 = *__dst;
    }

    else if (v13 == 2)
    {
      v14 = *__dst;
    }

    else if (v13 == 3)
    {
      v14 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v14 = *__dst;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_21:
  v16 = ~v8;
  switch(v11)
  {
    case 2u:

      break;
    case 1u:
      v17 = *(v6 + 8);
      v17(__dst, v5);
      v17((&__dst[v9] & v16), v5);
      break;
    case 0u:
      (*(v6 + 8))(__dst, v5);
      break;
  }

  v18 = __src[v10];
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_41;
      }

      v21 = *__src;
    }

    else if (v20 == 2)
    {
      v21 = *__src;
    }

    else if (v20 == 3)
    {
      v21 = *__src | (__src[2] << 16);
    }

    else
    {
      v21 = *__src;
    }

    v22 = (v21 | (v19 << (8 * v10))) + 3;
    v18 = v21 + 3;
    if (v10 < 4)
    {
      v18 = v22;
    }
  }

LABEL_41:
  switch(v18)
  {
    case 2u:
      *__dst = *__src;
      __dst[v10] = 2;

      return __dst;
    case 1u:
      v23 = *(v6 + 16);
      v23(__dst, __src, v5);
      v23((&__dst[v9] & v16), (&__src[v9] & v16), v5);
      __dst[v10] = 1;
      return __dst;
    case 0u:
      (*(v6 + 16))(__dst, __src, v5);
      __dst[v10] = 0;
      return __dst;
  }

  return memcpy(__dst, __src, v10 + 1);
}

void *initializeWithTake for ArrayWith2Inline(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  if (((v5 + v6) & ~v6) + v5 > v5)
  {
    v5 += (v5 + v6) & ~v6;
  }

  if (v5 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v5;
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_20:
  if (v9 == 2)
  {
    *result = *a2;
    *(result + v8) = 2;
  }

  else if (v9 == 1)
  {
    v15 = ~v6;
    v16 = *(v4 + 32);
    v17 = result;
    v16();
    (v16)((v17 + v7) & v15, &a2[v7] & v15, v3);
    result = v17;
    *(v17 + v8) = 1;
  }

  else if (v9)
  {

    return memcpy(result, a2, v8 + 1);
  }

  else
  {
    v14 = result;
    (*(v4 + 32))();
    result = v14;
    *(v14 + v8) = 0;
  }

  return result;
}

unsigned __int8 *assignWithTake for ArrayWith2Inline(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  if (((v7 + v8) & ~v8) + v7 > v7)
  {
    v7 += (v7 + v8) & ~v8;
  }

  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = __dst[v10];
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_21;
      }

      v14 = *__dst;
    }

    else if (v13 == 2)
    {
      v14 = *__dst;
    }

    else if (v13 == 3)
    {
      v14 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v14 = *__dst;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_21:
  v16 = ~v8;
  switch(v11)
  {
    case 2u:

      break;
    case 1u:
      v17 = *(v6 + 8);
      v17(__dst, v5);
      v17((&__dst[v9] & v16), v5);
      break;
    case 0u:
      (*(v6 + 8))(__dst, v5);
      break;
  }

  v18 = __src[v10];
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_41;
      }

      v21 = *__src;
    }

    else if (v20 == 2)
    {
      v21 = *__src;
    }

    else if (v20 == 3)
    {
      v21 = *__src | (__src[2] << 16);
    }

    else
    {
      v21 = *__src;
    }

    v22 = (v21 | (v19 << (8 * v10))) + 3;
    v18 = v21 + 3;
    if (v10 < 4)
    {
      v18 = v22;
    }
  }

LABEL_41:
  switch(v18)
  {
    case 2u:
      *__dst = *__src;
      v24 = 2;
      goto LABEL_47;
    case 1u:
      v23 = *(v6 + 32);
      v23(__dst, __src, v5);
      v23((&__dst[v9] & v16), (&__src[v9] & v16), v5);
      v24 = 1;
LABEL_47:
      __dst[v10] = v24;
      return __dst;
    case 0u:
      (*(v6 + 32))(__dst, __src, v5);
      __dst[v10] = 0;
      return __dst;
  }

  return memcpy(__dst, __src, v10 + 1);
}

uint64_t getEnumTagSinglePayload for ArrayWith2Inline(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 > v4)
  {
    v4 = v5;
  }

  v6 = 8;
  if (v4 > 8)
  {
    v6 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_27;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 252) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_27:
      v13 = *(a1 + v6);
      if (v13 >= 4)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_27;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 253;
}