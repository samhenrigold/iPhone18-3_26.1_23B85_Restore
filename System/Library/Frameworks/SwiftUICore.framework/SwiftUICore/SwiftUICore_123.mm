uint64_t _s7SwiftUI18TimeDataFormattingO13ConfigurationV04makeF04from6format11sizeVariant28secondsUpdateFrequencyBudgetAEy_xq_G13configuration_Sb5exacttx_q_AA08TextSizeK0VSdtFZAA0cD6SourceVAA10Foundation4DateVRszlE0V7StorageOyAT_G_AA17SystemFormatStyleO5TimerVTt4B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v63 = a2;
  v65 = a1;
  type metadata accessor for (SystemFormatStyle.Timer, Bool)(0, &lazy cache variable for type metadata for (SystemFormatStyle.Timer, Bool), type metadata accessor for SystemFormatStyle.Timer);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v60 - v13;
  v14 = type metadata accessor for SystemFormatStyle.Timer(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.Timer>(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, &lazy cache variable for type metadata for (style: SystemFormatStyle.Timer, exact: Bool), type metadata accessor for SystemFormatStyle.Timer);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v60 - v21;
  v24 = *(v23 + 56);
  v62 = specialized FormatStyle.exactSizeVariant(_:)(&v60 - v21, a4);
  v22[v24] = v62 & 1;
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(a3, v19, type metadata accessor for SystemFormatStyle.Timer);
  type metadata accessor for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v73, &v66);
    v25 = *&v67[8];
    v26 = *&v67[16];
    __swift_project_boxed_opaque_existential_1(&v66, *&v67[8]);
    *&v73 = a4;
    LOBYTE(v25) = (*(v26 + 24))(&v71, &v73, v25, v26, a5);
    v27 = v72;
    __swift_project_boxed_opaque_existential_1(&v71, v72);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    v28 = v63;
    DiscreteFormatStyle.paused<A>(accordingTo:)(v63, v27, v12, v29, &v73);
    v74[24] = v25 & 1;
    __swift_destroy_boxed_opaque_existential_1(&v71);
  }

  else
  {
    *&v67[8] = v14;
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer, protocol conformance descriptor for SystemFormatStyle.Timer);
    *&v67[16] = v30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
    _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(a3, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.Timer);
    v60 = *&v67[8];
    v32 = __swift_project_boxed_opaque_existential_1(&v66, *&v67[8]);
    v72 = v60;
    v33 = __swift_allocate_boxed_opaque_existential_1(&v71);
    _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v32, v33, type metadata accessor for SystemFormatStyle.Timer);
    v34 = static Duration.seconds(_:)();
    v36 = v35;
    v37 = (v32 + *(v14 + 36));
    v38 = *v37;
    v39 = v37[1];
    v40 = static Duration.< infix(_:_:)();
    if (v40)
    {
      v41 = v34;
    }

    else
    {
      v41 = v38;
    }

    if (v40)
    {
      v42 = v36;
    }

    else
    {
      v42 = v39;
    }

    v43 = (v33 + *(v14 + 40));
    *v43 = v41;
    v43[1] = v42;
    v44 = v72;
    v45 = __swift_project_boxed_opaque_existential_1(&v71, v72);
    *&v68 = a4;
    v46 = *(v44 - 8);
    MEMORY[0x1EEE9AC00](v45);
    v48 = &v60 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = FormatStyle.exactSizeVariant(_:)(v48, &v68, v44);
    *&v74[8] = v44;
    v50 = __swift_allocate_boxed_opaque_existential_1(&v73);
    (*(v46 + 32))(v50, v48, v44);
    v74[24] = v49 & 1;
    type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(0, &lazy cache variable for type metadata for (style: UpdateFrequencyDependentFormatStyle, exact: Bool), &lazy cache variable for type metadata for UpdateFrequencyDependentFormatStyle, &protocol descriptor for UpdateFrequencyDependentFormatStyle);
    v51 = v61;
    swift_dynamicCast();
    LOBYTE(v51) = v10[*(v51 + 48)];
    outlined init with take of SystemFormatStyle.DateOffset(v10, v16, type metadata accessor for SystemFormatStyle.Timer);
    __swift_destroy_boxed_opaque_existential_1(&v71);
    v28 = v63;
    specialized DiscreteFormatStyle.paused<A>(accordingTo:)(v63, &v73);
    outlined destroy of ResolvableAbsoluteDate(v16, type metadata accessor for SystemFormatStyle.Timer);
    v74[24] = v51;
  }

  __swift_destroy_boxed_opaque_existential_1(&v66);
  v52 = v64;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v28, v64);
  specialized DiscreteFormatStyle.paused<A>(accordingTo:)(v28, &v71);
  outlined destroy of (style: SystemFormatStyle.Timer, exact: Bool)(v22, &lazy cache variable for type metadata for (style: SystemFormatStyle.Timer, exact: Bool), type metadata accessor for SystemFormatStyle.Timer);
  if (*&v74[8])
  {
    outlined init with copy of AnyTrackedValue(&v73, &v66);
    v67[24] = v74[24];
  }

  else
  {
    v66 = v73;
    *v67 = *v74;
    *&v67[9] = *&v74[9];
  }

  if (*&v67[8])
  {
    outlined init with take of AnyTrackedValue(&v66, &v68);
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v70 = 0;
  }

  v53 = v65;
  outlined init with take of Date?(v52, v65, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage, type metadata accessor for TimeDataSource<Date><A>.DateStorage);
  type metadata accessor for TimeDataFormatting.Configuration<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>(0, &lazy cache variable for type metadata for TimeDataFormatting.Configuration<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>, type metadata accessor for TimeDataFormatting.Configuration);
  v55 = v54;
  outlined init with take of AnyTrackedValue(&v71, v53 + *(v54 + 52));
  v56 = v53 + *(v55 + 56);
  v57 = v69;
  *v56 = v68;
  *(v56 + 16) = v57;
  *(v56 + 32) = v70;
  if (v62)
  {
    if (*&v74[8])
    {
      __swift_destroy_boxed_opaque_existential_1(&v73);
    }

    return 1;
  }

  else
  {
    *&v67[9] = *&v74[9];
    *v67 = *v74;
    v66 = v73;
    if (*&v74[8])
    {
      v59 = v67[24];
      __swift_destroy_boxed_opaque_existential_1(&v66);
      return v59;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _s7SwiftUI18TimeDataFormattingO13ConfigurationV04makeF04from6format11sizeVariant28secondsUpdateFrequencyBudgetAEy_xq_G13configuration_Sb5exacttx_q_AA08TextSizeK0VSdtFZAA0cD6SourceVAA10Foundation4DateVRszlE0V7StorageOyAT_G_AA17SystemFormatStyleO0V6OffsetVTt4B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v52 = a2;
  v54 = a1;
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v49 - v10;
  type metadata accessor for (SystemFormatStyle.Timer, Bool)(0, &lazy cache variable for type metadata for (SystemFormatStyle.DateOffset, Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.DateOffset>(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, &lazy cache variable for type metadata for (style: SystemFormatStyle.DateOffset, exact: Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v49 - v21;
  v24 = *(v23 + 56);
  v51 = specialized FormatStyle.exactSizeVariant(_:)(&v49 - v21, a4);
  v22[v24] = v51 & 1;
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(a3, v19, type metadata accessor for SystemFormatStyle.DateOffset);
  type metadata accessor for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v62, &v55);
    v25 = *&v56[8];
    v26 = *&v56[16];
    __swift_project_boxed_opaque_existential_1(&v55, *&v56[8]);
    *&v62 = a4;
    LOBYTE(v25) = (*(v26 + 24))(&v60, &v62, v25, v26, a5);
    v27 = v61;
    __swift_project_boxed_opaque_existential_1(&v60, v61);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    v28 = v52;
    DiscreteFormatStyle.paused<A>(accordingTo:)(v52, v27, v9, v29, &v62);
    v63[24] = v25 & 1;
    __swift_destroy_boxed_opaque_existential_1(&v60);
  }

  else
  {
    *&v56[8] = v14;
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
    *&v56[16] = v30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
    _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(a3, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.DateOffset);
    v49 = *&v56[8];
    v32 = __swift_project_boxed_opaque_existential_1(&v55, *&v56[8]);
    v61 = v49;
    v33 = __swift_allocate_boxed_opaque_existential_1(&v60);
    _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v32, v33, type metadata accessor for SystemFormatStyle.DateOffset);
    *(v33 + *(v14 + 44)) = 2;
    v34 = v61;
    v35 = __swift_project_boxed_opaque_existential_1(&v60, v61);
    *&v57 = a4;
    v36 = *(v34 - 8);
    MEMORY[0x1EEE9AC00](v35);
    v38 = &v49 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    LOBYTE(v32) = FormatStyle.exactSizeVariant(_:)(v38, &v57, v34);
    *&v63[8] = v34;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v62);
    (*(v36 + 32))(v39, v38, v34);
    v63[24] = v32 & 1;
    type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(0, &lazy cache variable for type metadata for (style: UpdateFrequencyDependentFormatStyle, exact: Bool), &lazy cache variable for type metadata for UpdateFrequencyDependentFormatStyle, &protocol descriptor for UpdateFrequencyDependentFormatStyle);
    v40 = v50;
    swift_dynamicCast();
    LOBYTE(v40) = v13[*(v40 + 48)];
    outlined init with take of SystemFormatStyle.DateOffset(v13, v16, type metadata accessor for SystemFormatStyle.DateOffset);
    __swift_destroy_boxed_opaque_existential_1(&v60);
    v28 = v52;
    specialized DiscreteFormatStyle.paused<A>(accordingTo:)(v52, &v62);
    outlined destroy of ResolvableAbsoluteDate(v16, type metadata accessor for SystemFormatStyle.DateOffset);
    v63[24] = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(&v55);
  v41 = v53;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v28, v53);
  specialized DiscreteFormatStyle.paused<A>(accordingTo:)(v28, &v60);
  outlined destroy of (style: SystemFormatStyle.Timer, exact: Bool)(v22, &lazy cache variable for type metadata for (style: SystemFormatStyle.DateOffset, exact: Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  if (*&v63[8])
  {
    outlined init with copy of AnyTrackedValue(&v62, &v55);
    v56[24] = v63[24];
  }

  else
  {
    v55 = v62;
    *v56 = *v63;
    *&v56[9] = *&v63[9];
  }

  if (*&v56[8])
  {
    outlined init with take of AnyTrackedValue(&v55, &v57);
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
  }

  v42 = v54;
  outlined init with take of Date?(v41, v54, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage, type metadata accessor for TimeDataSource<Date><A>.DateStorage);
  type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>(0, &lazy cache variable for type metadata for TimeDataFormatting.Configuration<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>, type metadata accessor for TimeDataFormatting.Configuration);
  v44 = v43;
  outlined init with take of AnyTrackedValue(&v60, v42 + *(v43 + 52));
  v45 = v42 + *(v44 + 56);
  v46 = v58;
  *v45 = v57;
  *(v45 + 16) = v46;
  *(v45 + 32) = v59;
  if (v51)
  {
    if (*&v63[8])
    {
      __swift_destroy_boxed_opaque_existential_1(&v62);
    }

    return 1;
  }

  else
  {
    *&v56[9] = *&v63[9];
    *v56 = *v63;
    v55 = v62;
    if (*&v63[8])
    {
      v48 = v56[24];
      __swift_destroy_boxed_opaque_existential_1(&v55);
      return v48;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t specialized FormatStyle.exactSizeVariant(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for (SystemFormatStyle.Timer, Bool)(0, &lazy cache variable for type metadata for (SystemFormatStyle.Timer, Bool), type metadata accessor for SystemFormatStyle.Timer);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, &lazy cache variable for type metadata for (style: SystemFormatStyle.Timer, exact: Bool), type metadata accessor for SystemFormatStyle.Timer);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  *&v29 = type metadata accessor for SystemFormatStyle.Timer(0);
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer, protocol conformance descriptor for SystemFormatStyle.Timer);
  *(&v29 + 1) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v3, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.Timer);
  v23 = v29;
  v15 = v29;
  v16 = __swift_project_boxed_opaque_existential_1(v28, v29);
  v24 = a2;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = SystemFormatStyle.Timer.withSizeVariant(_:)(v19, &v24);
  v26 = v23;
  v20 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(v17 + 32))(v20, v19, v15);
  v27 = a2 & 1;
  type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(0, &lazy cache variable for type metadata for (style: SizeAdaptiveFormatStyle, exact: Bool), &lazy cache variable for type metadata for SizeAdaptiveFormatStyle, &protocol descriptor for SizeAdaptiveFormatStyle);
  swift_dynamicCast();
  v21 = v9[*(v7 + 48)];
  outlined init with take of SystemFormatStyle.DateOffset(v9, v12, type metadata accessor for SystemFormatStyle.Timer);
  __swift_destroy_boxed_opaque_existential_1(v28);
  outlined init with take of SystemFormatStyle.DateOffset(v12, a1, type metadata accessor for SystemFormatStyle.Timer);
  return v21;
}

{
  v3 = v2;
  type metadata accessor for (SystemFormatStyle.Timer, Bool)(0, &lazy cache variable for type metadata for (SystemFormatStyle.DateOffset, Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, &lazy cache variable for type metadata for (style: SystemFormatStyle.DateOffset, exact: Bool), type metadata accessor for SystemFormatStyle.DateOffset);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  *&v29 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
  *(&v29 + 1) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v3, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.DateOffset);
  v23 = v29;
  v15 = v29;
  v16 = __swift_project_boxed_opaque_existential_1(v28, v29);
  v24 = a2;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = SystemFormatStyle.DateOffset.withSizeVariant(_:)(v19, &v24);
  v26 = v23;
  v20 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(v17 + 32))(v20, v19, v15);
  v27 = a2 & 1;
  type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(0, &lazy cache variable for type metadata for (style: SizeAdaptiveFormatStyle, exact: Bool), &lazy cache variable for type metadata for SizeAdaptiveFormatStyle, &protocol descriptor for SizeAdaptiveFormatStyle);
  swift_dynamicCast();
  v21 = v9[*(v7 + 48)];
  outlined init with take of SystemFormatStyle.DateOffset(v9, v12, type metadata accessor for SystemFormatStyle.DateOffset);
  __swift_destroy_boxed_opaque_existential_1(v28);
  outlined init with take of SystemFormatStyle.DateOffset(v12, a1, type metadata accessor for SystemFormatStyle.DateOffset);
  return v21;
}

uint64_t ResolvableAbsoluteDate.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ResolvableAbsoluteDate.date.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ResolvableAbsoluteDate.style.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ResolvableAbsoluteDate(0);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v4) = v4[16];
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  return result;
}

uint64_t ResolvableAbsoluteDate.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableAbsoluteDate(0) + 24);
  v4 = type metadata accessor for Calendar();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableAbsoluteDate.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableAbsoluteDate(0) + 28);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableAbsoluteDate.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableAbsoluteDate(0) + 32);
  v4 = type metadata accessor for TimeZone();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableAbsoluteDate.CodingKeys()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x7261646E656C6163;
  v4 = 0x656C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x656E6F5A656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C797473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableAbsoluteDate.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ResolvableAbsoluteDate.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableAbsoluteDate.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableAbsoluteDate.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ResolvableAbsoluteDate.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  type metadata accessor for SystemFormatStyle.DateOffset?(0, &lazy cache variable for type metadata for SystemFormatStyle.DateOffset?, type metadata accessor for SystemFormatStyle.DateOffset);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for ResolvableAbsoluteDate(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyTrackedValue(a1, v38);
  result = ResolvableAbsoluteDate.init(from:)(v38, v16);
  if (!v2)
  {
    v18 = v41;
    v37 = 0;
    v19 = &v16[v14[5]];
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v19) = v19[16];
    v38[0] = v20;
    v39 = v21;
    v40 = v19;
    Text.DateStyle.format(for:)(v16, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of ResolvableAbsoluteDate(v16, type metadata accessor for ResolvableAbsoluteDate);
      result = _s10Foundation4DateVSgWOhTm_0(v6, &lazy cache variable for type metadata for SystemFormatStyle.DateOffset?, type metadata accessor for SystemFormatStyle.DateOffset);
      *v18 = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0;
    }

    else
    {
      v36 = v13;
      outlined init with take of SystemFormatStyle.DateOffset(v6, v13, type metadata accessor for SystemFormatStyle.DateOffset);
      type metadata accessor for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>(0);
      v22 = v18;
      *(v18 + 24) = v23;
      v24 = v23;
      lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset> and conformance TimeDataFormatting.Resolvable<A, B>, type metadata accessor for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>, protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>);
      v22[4] = v25;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
      (*(*(v27 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v27);
      v28 = v14[7];
      _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v36, v10, type metadata accessor for SystemFormatStyle.DateOffset);
      v29 = v7[9];
      v30 = type metadata accessor for Locale();
      (*(*(v30 - 8) + 24))(&v10[v29], &v16[v28], v30);
      v31 = v14[6];
      v32 = boxed_opaque_existential_1 + v24[15];
      _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v10, v32, type metadata accessor for SystemFormatStyle.DateOffset);
      v33 = v7[10];
      v34 = type metadata accessor for Calendar();
      (*(*(v34 - 8) + 24))(v32 + v33, &v16[v31], v34);
      outlined destroy of ResolvableAbsoluteDate(v10, type metadata accessor for SystemFormatStyle.DateOffset);
      *(v32 + v7[12]) = 0;
      _s7SwiftUI18TimeDataFormattingO13ConfigurationV04makeF04from6format11sizeVariant28secondsUpdateFrequencyBudgetAEy_xq_G13configuration_Sb5exacttx_q_AA08TextSizeK0VSdtFZAA0cD6SourceVAA10Foundation4DateVRszlE0V7StorageOyAT_G_AA17SystemFormatStyleO0V6OffsetVTt4B5(boxed_opaque_existential_1 + v24[17], boxed_opaque_existential_1, v32, 0, 0.0);
      *(boxed_opaque_existential_1 + v24[16]) = 0;
      *(boxed_opaque_existential_1 + v24[18]) = 0;
      outlined destroy of ResolvableAbsoluteDate(v36, type metadata accessor for SystemFormatStyle.DateOffset);
      return outlined destroy of ResolvableAbsoluteDate(v16, type metadata accessor for ResolvableAbsoluteDate);
    }
  }

  return result;
}

uint64_t ResolvableAbsoluteDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v38 = type metadata accessor for TimeZone();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Locale();
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Calendar();
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<ResolvableAbsoluteDate.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableAbsoluteDate.CodingKeys>, MEMORY[0x1E69E6F48]);
  v46 = v9;
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ResolvableAbsoluteDate(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();
  v48 = v11;
  v15 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v6;
  v34 = v12;
  v49 = v14;
  v18 = v42;
  v17 = v43;
  v50 = 0;
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v18 + 32);
  v20 = v49;
  v21 = v47;
  v47 = v7;
  v19(v49, v21);
  v53 = 1;
  lazy protocol witness table accessor for type Text.DateStyle and conformance Text.DateStyle();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v51;
  v23 = v52;
  v24 = v20 + v34[5];
  *v24 = v50;
  *(v24 + 8) = v22;
  *(v24 + 16) = v23;
  v50 = 2;
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B08]);
  v25 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v17;
  v27 = v34;
  (*(v26 + 32))(v20 + v34[6], v16, v25);
  v50 = 3;
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v29 = v39;
  v28 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v45 + 32))(v20 + v27[7], v29, v28);
  v50 = 4;
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
  v31 = v37;
  v30 = v38;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 8))(v48, v46);
  (*(v35 + 32))(v20 + v34[8], v31, v30);
  _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v20, v36, type metadata accessor for ResolvableAbsoluteDate);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of ResolvableAbsoluteDate(v20, type metadata accessor for ResolvableAbsoluteDate);
}

id static ResolvableAbsoluteDate.attribute.getter()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableAbsoluteDate.attribute;

  return v1;
}

uint64_t ResolvableAbsoluteDate.invalidationConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ResolvableAbsoluteDate(0) + 20));
  v4 = *v3;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (v5)
  {
    if (v6 >= 2 || v3[16] == 3 || (v3[8] & 0x80) != 0)
    {
      v7 = type metadata accessor for Date();
      (*(*(v7 - 8) + 16))(a1, v1, v7);
      type metadata accessor for ResolvableAttributeConfiguration(0);
    }

    else
    {
      *a1 = 0x404E000000000000;
      *(a1 + 8) = 0;
      type metadata accessor for ResolvableAttributeConfiguration(0);
    }
  }

  else
  {
    type metadata accessor for ResolvableAttributeConfiguration(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ResolvableAbsoluteDate.encode(to:)(void *a1, double a2)
{
  v4 = v2;
  type metadata accessor for KeyedDecodingContainer<ResolvableAbsoluteDate.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableAbsoluteDate.CodingKeys>, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[0] = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v11 = v4 + *(type metadata accessor for ResolvableAbsoluteDate(0) + 20);
    v12 = *v11;
    v13 = *(v11 + 8);
    LOBYTE(v11) = *(v11 + 16);
    v16[0] = v12;
    v17 = v13;
    v18 = v11;
    v15[7] = 1;
    lazy protocol witness table accessor for type Text.DateStyle and conformance Text.DateStyle();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[0] = 2;
    type metadata accessor for Calendar();
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[0] = 3;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[0] = 4;
    type metadata accessor for TimeZone();
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

id protocol witness for static ResolvableStringAttributeFamily.attribute.getter in conformance ResolvableAbsoluteDate()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableAbsoluteDate.attribute;

  return v1;
}

uint64_t ResolvableAbsoluteDate.hash(into:)(uint64_t a1)
{
  type metadata accessor for Date();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = (v1 + *(type metadata accessor for ResolvableAbsoluteDate(0) + 20));
  MEMORY[0x193AC11A0](*v2);
  v3 = v2[16];
  if (v3 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v3);
  }

  if (v2[16] == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v2 + 1);
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v4);
  }

  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int ResolvableAbsoluteDate.hashValue.getter()
{
  Hasher.init(_seed:)();
  ResolvableAbsoluteDate.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvableAbsoluteDate()
{
  Hasher.init(_seed:)();
  ResolvableAbsoluteDate.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableAbsoluteDate(uint64_t a1)
{
  Hasher.init(_seed:)();
  ResolvableAbsoluteDate.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t specialized DiscreteFormatStyle.paused<A>(accordingTo:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  type metadata accessor for SystemFormatStyle.DateOffset?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, v7);
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v15 = 1;
  v16 = (*(*(v14 - 8) + 48))(v7, 1, v14);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if (v16 != 1)
  {
    (*(*(v17 - 8) + 32))(v10, v7, v17);
    v15 = 0;
  }

  (*(v18 + 56))(v10, v15, 1, v17);
  v19 = MEMORY[0x1E6969530];
  outlined init with take of Date?(v10, v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], type metadata accessor for SystemFormatStyle.DateOffset?);
  v20 = (*(v18 + 48))(v13, 1, v17);
  _s10Foundation4DateVSgWOhTm_0(v13, &lazy cache variable for type metadata for Date?, v19);
  if (v20 == 1)
  {
    a2[3] = type metadata accessor for SystemFormatStyle.Timer(0);
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer, protocol conformance descriptor for SystemFormatStyle.Timer);
    a2[4] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  }

  else
  {
    type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>(0);
    v24 = v23;
    a2[3] = v23;
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer> and conformance PausedFormatStyle<A, B>, type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>, protocol conformance descriptor for PausedFormatStyle<A, B>);
    a2[4] = v25;
    v26 = __swift_allocate_boxed_opaque_existential_1(a2);
    outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, v26);
    boxed_opaque_existential_1 = (v26 + *(v24 + 52));
  }

  return _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v2, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.Timer);
}

{
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  type metadata accessor for SystemFormatStyle.DateOffset?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, v7);
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v15 = 1;
  v16 = (*(*(v14 - 8) + 48))(v7, 1, v14);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if (v16 != 1)
  {
    (*(*(v17 - 8) + 32))(v10, v7, v17);
    v15 = 0;
  }

  (*(v18 + 56))(v10, v15, 1, v17);
  v19 = MEMORY[0x1E6969530];
  outlined init with take of Date?(v10, v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], type metadata accessor for SystemFormatStyle.DateOffset?);
  v20 = (*(v18 + 48))(v13, 1, v17);
  _s10Foundation4DateVSgWOhTm_0(v13, &lazy cache variable for type metadata for Date?, v19);
  if (v20 == 1)
  {
    a2[3] = type metadata accessor for SystemFormatStyle.DateOffset(0);
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
    a2[4] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  }

  else
  {
    type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>(0);
    v24 = v23;
    a2[3] = v23;
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset> and conformance PausedFormatStyle<A, B>, type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>, protocol conformance descriptor for PausedFormatStyle<A, B>);
    a2[4] = v25;
    v26 = __swift_allocate_boxed_opaque_existential_1(a2);
    outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, v26);
    boxed_opaque_existential_1 = (v26 + *(v24 + 52));
  }

  return _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(v2, boxed_opaque_existential_1, type metadata accessor for SystemFormatStyle.DateOffset);
}

uint64_t type metadata accessor for ResolvableAbsoluteDate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ResolvableAbsoluteDate;
  if (!type metadata singleton initialization cache for ResolvableAbsoluteDate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>)
  {
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    v3 = v2;
    v4 = type metadata accessor for SystemFormatStyle.DateOffset(255);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    v6 = v5;
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
    v10[0] = v3;
    v10[1] = v4;
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = &protocol witness table for AttributedString;
    v8 = type metadata accessor for TimeDataFormatting.Resolvable(a1, v10);
    if (!v9)
    {
      atomic_store(v8, &lazy cache variable for type metadata for TimeDataFormatting.Resolvable<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>);
    }
  }
}

void lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAbsoluteDate.CodingKeys, &unk_1F007F958, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAbsoluteDate.CodingKeys, &unk_1F007F958, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAbsoluteDate.CodingKeys, &unk_1F007F958, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableAbsoluteDate.CodingKeys, &unk_1F007F958, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Text.DateStyle and conformance Text.DateStyle()
{
  if (!lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.DateStyle, &type metadata for Text.DateStyle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.DateStyle, &type metadata for Text.DateStyle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle);
  }
}

uint64_t _s7SwiftUI17SystemFormatStyleO10DateOffsetVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for KeyedDecodingContainer<ResolvableAbsoluteDate.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type ResolvableAbsoluteDate.CodingKeys and conformance ResolvableAbsoluteDate.CodingKeys();
    v7 = a3(a1, &unk_1F007F958, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t specialized static ResolvableAbsoluteDate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static Date.== infix(_:_:)())
  {
    v4 = type metadata accessor for ResolvableAbsoluteDate(0);
    v5 = v4[5];
    v6 = *(a1 + v5 + 8);
    v7 = *(a1 + v5 + 16);
    v15[0] = *(a1 + v5);
    v16 = v6;
    v17 = v7;
    v8 = a2 + v5;
    v9 = *v8;
    v10 = *(v8 + 8);
    LOBYTE(v8) = *(v8 + 16);
    v12[0] = v9;
    v13 = v10;
    v14 = v8;
    if (specialized static Text.DateStyle.== infix(_:_:)(v15, v12) & 1) != 0 && (MEMORY[0x193ABDC80](a1 + v4[6], a2 + v4[6]) & 1) != 0 && (MEMORY[0x193ABDB20](a1 + v4[7], a2 + v4[7]))
    {

      JUMPOUT(0x193ABDE90);
    }
  }

  return 0;
}

void instantiation function for generic protocol witness table for ResolvableAbsoluteDate(uint64_t a1)
{
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type ResolvableAbsoluteDate and conformance ResolvableAbsoluteDate, type metadata accessor for ResolvableAbsoluteDate, protocol conformance descriptor for ResolvableAbsoluteDate);
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type ResolvableAbsoluteDate and conformance ResolvableAbsoluteDate, type metadata accessor for ResolvableAbsoluteDate, protocol conformance descriptor for ResolvableAbsoluteDate);
  *(a1 + 16) = v3;
}

char *initializeBufferWithCopyOfBuffer for ResolvableAbsoluteDate(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = &a1[v8];
    v11 = &a2[v8];
    *v10 = *v11;
    v10[16] = v11[16];
    v12 = type metadata accessor for Calendar();
    (*(*(v12 - 8) + 16))(&a1[v9], &a2[v9], v12);
    v13 = a3[7];
    v14 = type metadata accessor for Locale();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    v15 = a3[8];
    v16 = type metadata accessor for TimeZone();
    (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
  }

  return a1;
}

uint64_t destroy for ResolvableAbsoluteDate(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a2[6];
  v6 = type metadata accessor for Calendar();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a2[7];
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a2[8];
  v10 = type metadata accessor for TimeZone();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1 + v9, v10);
}

uint64_t initializeWithCopy for ResolvableAbsoluteDate(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  v11 = type metadata accessor for Calendar();
  (*(*(v11 - 8) + 16))(a1 + v8, a2 + v8, v11);
  v12 = a3[7];
  v13 = type metadata accessor for Locale();
  (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
  v14 = a3[8];
  v15 = type metadata accessor for TimeZone();
  (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t assignWithCopy for ResolvableAbsoluteDate(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  v10 = *(v9 + 8);
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 8) = v10;
  v11 = a3[6];
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  v13 = a3[7];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 24))(a1 + v13, a2 + v13, v14);
  v15 = a3[8];
  v16 = type metadata accessor for TimeZone();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  return a1;
}

uint64_t initializeWithTake for ResolvableAbsoluteDate(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 16) = *(v10 + 16);
  v11 = type metadata accessor for Calendar();
  (*(*(v11 - 8) + 32))(a1 + v8, a2 + v8, v11);
  v12 = a3[7];
  v13 = type metadata accessor for Locale();
  (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
  v14 = a3[8];
  v15 = type metadata accessor for TimeZone();
  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t assignWithTake for ResolvableAbsoluteDate(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);
  v11 = type metadata accessor for Calendar();
  (*(*(v11 - 8) + 40))(a1 + v8, a2 + v8, v11);
  v12 = a3[7];
  v13 = type metadata accessor for Locale();
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = a3[8];
  v15 = type metadata accessor for TimeZone();
  (*(*(v15 - 8) + 40))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t type metadata completion function for ResolvableAbsoluteDate(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Calendar();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Locale();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TimeZone();
        if (v5 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t specialized ResolvableAbsoluteDate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void type metadata accessor for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.Timer>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.Timer>)
  {
    v2 = type metadata accessor for SystemFormatStyle.Timer(255);
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer, protocol conformance descriptor for SystemFormatStyle.Timer);
    v5 = type metadata accessor for _MixedAoDFrequencyFormatInitializer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.Timer>);
    }
  }
}

unint64_t type metadata accessor for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>()
{
  result = lazy cache variable for type metadata for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>;
  if (!lazy cache variable for type metadata for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>)
  {
    type metadata accessor for Date();
    type metadata accessor for AttributedString();
    result = swift_getExtendedExistentialTypeMetadata_unique();
    atomic_store(result, &lazy cache variable for type metadata for any MixedAoDFrequencyFormatInitializer<Self.MixedAoDFrequencyFormatInitializer.FormatInput == Date, Self.MixedAoDFrequencyFormatInitializer.FormatOutput == AttributedString>);
  }

  return result;
}

void type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for AnyTrackedValue(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined init with take of SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ResolvableAbsoluteDate(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TimeDataSource<Date><A>.DateStorage(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void type metadata accessor for SystemFormatStyle.DateOffset?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for TimeDataFormatting.Configuration<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    v7 = v6;
    v8 = type metadata accessor for SystemFormatStyle.Timer(255);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    v10 = v9;
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer, protocol conformance descriptor for SystemFormatStyle.Timer);
    v14[0] = v7;
    v14[1] = v8;
    v14[2] = v10;
    v14[3] = v11;
    v12 = a3(a1, v14);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void type metadata accessor for (SystemFormatStyle.Timer, Bool)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.DateOffset>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.DateOffset>)
  {
    v2 = type metadata accessor for SystemFormatStyle.DateOffset(255);
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
    v5 = type metadata accessor for _MixedAoDFrequencyFormatInitializer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _MixedAoDFrequencyFormatInitializer<SystemFormatStyle.DateOffset>);
    }
  }
}

void type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined destroy of (style: SystemFormatStyle.Timer, exact: Bool)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for (style: SystemFormatStyle.Timer, exact: Bool)(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for PausedFormatStyle<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    v7 = v6;
    v8 = type metadata accessor for SystemFormatStyle.DateOffset(255);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    v10 = v9;
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
    v14[0] = v7;
    v14[1] = v8;
    v14[2] = v10;
    v14[3] = v11;
    v12 = a3(a1, v14);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

NSAttributedString __swiftcall AnyCustomTextAttachment.nsAttributedString(with:)(Swift::OpaquePointer with)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = one-time initialization token for coreTextRunDelegate;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static NSAttributedStringKey.coreTextRunDelegate;
  callbacks.version = 1;
  callbacks.dealloc = @objc closure #1 in AnyCustomTextAttachment.runDelegate.getter;
  callbacks.getAscent = @objc closure #2 in AnyCustomTextAttachment.runDelegate.getter;
  callbacks.getDescent = @objc closure #3 in AnyCustomTextAttachment.runDelegate.getter;
  callbacks.getWidth = @objc closure #4 in AnyCustomTextAttachment.runDelegate.getter;

  v4 = CTRunDelegateCreate(&callbacks, v1);
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  type metadata accessor for CTRunDelegateRef(0);
  callbacks.getDescent = v6;
  callbacks.version = v5;
  outlined init with take of Any(&callbacks, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v3, isUniquelyReferenced_nonNull_native);
  if (one-time initialization token for customAttachment != -1)
  {
    swift_once();
  }

  v8 = static NSAttributedStringKey.customAttachment;
  callbacks.getDescent = type metadata accessor for AnyCustomTextAttachment();
  callbacks.version = v1;
  outlined init with take of Any(&callbacks, v15);

  v9 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v8, v9);
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v11 = MEMORY[0x193ABEC20](12369903, 0xA300000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type [TextAttributeModifierBase] and conformance [A](&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithString:v11 attributes:isa];

  return v13;
}

uint64_t initializeWithCopy for LineAttachment(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Layout.Line.Line(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithCopy for LineAttachment(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Layout.Line.Line(*a2, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Layout.Line.Line(v7, v8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for LineAttachment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Layout.Line.Line(v5, v6);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for LineAttachment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 96))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LineAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void LineAttachment.customAttributes.getter(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v48 = *(v1 + 16);
  v5 = v48;
  outlined copy of Text.Layout.Line.Line(v4, v3);
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5)
    {
      v8 = v4;
      v9 = _NSTextLineFragmentGetCTLine(v8);

      if (!v9)
      {
        if (!v6)
        {
          goto LABEL_52;
        }

        goto LABEL_10;
      }
    }

    else
    {
      outlined copy of Text.Layout.Line.Line(v4, v3);

      v9 = v4;
    }

    RunCount = CTLineGetRunCount();

    if (v6 == RunCount)
    {
LABEL_52:
      outlined consume of Text.Layout.Line.Line(v4, v3);
      *a1 = v7;
      return;
    }

    if (!v5)
    {
      outlined copy of Text.Layout.Line.Line(v4, v3);

      outlined copy of Text.Layout.Line.Line(v4, v3);

      outlined copy of Text.Layout.Line.Line(v4, v3);

      v12 = v4;
      v14 = v4;
      goto LABEL_14;
    }

LABEL_10:
    v11 = v4;
    v12 = _NSTextLineFragmentGetCTLine(v11);

    if (!v12)
    {
      goto LABEL_59;
    }

    outlined copy of Text.Layout.Line.Line(v4, v3);

    v13 = v11;
    v14 = _NSTextLineFragmentGetCTLine(v13);

    if (!v14)
    {
      v15 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v15 = CTLineGetRunCount();

LABEL_15:
    if (v6 >= v15)
    {
      break;
    }

    if (one-time initialization token for customAttributes != -1)
    {
      swift_once();
    }

    v16 = static NSAttributedStringKey.customAttributes;
    v17 = CTLineGetRunAtIndex();
    v18 = _CTRunGetAttributeValueForKey(v17, v16);

    if (v18)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47[0] = v45;
    v47[1] = v46;
    if (*(&v46 + 1))
    {
      if (swift_dynamicCast())
      {
        v19 = v45 >> 62;
        if (v45 >> 62)
        {
          v20 = __CocoaSet.count.getter();
        }

        else
        {
          v20 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v21 = v7 >> 62;
        if (v7 >> 62)
        {
          v22 = __CocoaSet.count.getter();
        }

        else
        {
          v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v43 = v20;
        v23 = __OFADD__(v22, v20);
        v24 = v22 + v20;
        if (v23)
        {
          goto LABEL_54;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v21)
          {
            goto LABEL_45;
          }

          v25 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v24 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_46;
          }

          v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (!v19)
          {
            goto LABEL_33;
          }

LABEL_47:
          v44 = v26;
          v38 = a1;
          v39 = v25;
          v28 = __CocoaSet.count.getter();
          v26 = v44;
          v25 = v39;
          a1 = v38;
          v19 = v45 >> 62;
          ++v6;
          if (!v28)
          {
            goto LABEL_48;
          }

LABEL_34:
          if (((v26 >> 1) - v27) < v43)
          {
            goto LABEL_56;
          }

          v41 = v5;
          v42 = v7;
          v29 = v25 + 8 * v27 + 32;
          v40 = v25;
          if (v19)
          {
            if (v28 < 1)
            {
              goto LABEL_58;
            }

            v30 = v28;
            type metadata accessor for [TextAttributeModifierBase](0);
            lazy protocol witness table accessor for type [TextAttributeModifierBase] and conformance [A](&lazy protocol witness table cache variable for type [TextAttributeModifierBase] and conformance [A], type metadata accessor for [TextAttributeModifierBase], MEMORY[0x1E69E6340]);
            v31 = 0;
            v32 = v45;
            do
            {
              v33 = specialized protocol witness for Collection.subscript.read in conformance [A](v47, v31, v32);
              v35 = *v34;

              (v33)(v47, 0);
              v32 = v45;
              *(v29 + 8 * v31++) = v35;
            }

            while (v30 != v31);
          }

          else
          {
            type metadata accessor for TextAttributeModifierBase();
            swift_arrayInitWithCopy();
          }

          v7 = v42;
          v5 = v41;
          if (v43 > 0)
          {
            v36 = *(v40 + 16);
            v23 = __OFADD__(v36, v43);
            v37 = v36 + v43;
            if (v23)
            {
              goto LABEL_57;
            }

            *(v40 + 16) = v37;
          }
        }

        else
        {
          if (v21)
          {
LABEL_45:
            __CocoaSet.count.getter();
          }

LABEL_46:
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v25 = v7 & 0xFFFFFFFFFFFFFF8;
          v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (v19)
          {
            goto LABEL_47;
          }

LABEL_33:
          v28 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          ++v6;
          if (v28)
          {
            goto LABEL_34;
          }

LABEL_48:

          if (v43 > 0)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {

        ++v6;
      }
    }

    else
    {

      outlined destroy of Any?(v47);
      ++v6;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

double protocol witness for TextAttachment.draw(with:in:) in conformance LineAttachment(__int128 *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 40);
  v7 = *a2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = *a1;
  v14 = v6;
  outlined copy of Text.Layout.Line.Line(v3, v4);
  outlined copy of Text.Layout.Line.Line(v3, v4);
  GraphicsContext.draw(_:options:)(&v10, 0, v7, v8);
  outlined consume of Text.Layout.Line.Line(v10, v11);

  return outlined consume of Text.Layout.Line.Line(v3, v4);
}

void type metadata accessor for [TextAttributeModifierBase](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [TextAttributeModifierBase])
  {
    type metadata accessor for TextAttributeModifierBase();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [TextAttributeModifierBase]);
    }
  }
}

void lazy protocol witness table accessor for type [TextAttributeModifierBase] and conformance [A](unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

double EnvironmentValues.writingMode.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011WritingModeK0023_82074A2E22E8635055FCB3O8D5E40280LLVG_Ttg5(v4, *v2);
  }

  return result;
}

void key path getter for EnvironmentValues.writingMode : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.writingMode : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011WritingModeK0023_82074A2E22E8635055FCB3O8D5E40280LLVG_Ttg5(v4, *a2);
  }

  return result;
}

void (*EnvironmentValues.writingMode.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.writingMode.modify;
}

void EnvironmentValues.writingMode.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011WritingModeK0023_82074A2E22E8635055FCB3O8D5E40280LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

double View.writingMode(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);

  return result;
}

uint64_t Text.WritingMode.init(protobufValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    if (result == 1)
    {
      *a2 = 1;
    }

    else
    {
      *a2 = 2;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance Text.WritingMode@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result == 1)
  {
    *a2 = 1;
  }

  else if (result)
  {
    *a2 = 2;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void lazy protocol witness table accessor for type Text.WritingMode.Storage and conformance Text.WritingMode.Storage()
{
  if (!lazy protocol witness table cache variable for type Text.WritingMode.Storage and conformance Text.WritingMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.WritingMode.Storage, &type metadata for Text.WritingMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.WritingMode.Storage and conformance Text.WritingMode.Storage);
  }
}

void lazy protocol witness table accessor for type Text.WritingMode and conformance Text.WritingMode()
{
  if (!lazy protocol witness table cache variable for type Text.WritingMode and conformance Text.WritingMode)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.WritingMode, &type metadata for Text.WritingMode, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.WritingMode and conformance Text.WritingMode);
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.WritingMode>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.WritingMode>)
  {
    v4 = type metadata accessor for _EnvironmentKeyWritingModifier(0, &type metadata for Text.WritingMode, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.WritingMode>);
    }
  }
}

uint64_t NSTextHorizontalAlignment.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.TextAlignment();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6965568])
  {
    v8 = 2;
LABEL_7:
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v7 == *MEMORY[0x1E6965578])
  {
    v8 = 4;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x1E6965570])
  {
    v8 = 3;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t EnvironmentValues.avoidsOrphans.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3) & 1;
  }

  v5 = a1(v3);

  return v5 & 1;
}

void *EnvironmentValues.hyphenationDisabled.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

void EnvironmentValues.minimumScaleFactor.setter(double a1)
{
  if (a1 <= 1.0 && a1 > 0.0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = *v1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(v1, v3);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018MinimumScaleFactorK0VG_Ttg5(v4, *v1);
  }
}

uint64_t NSTextHorizontalAlignment.init(in:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.TextAlignment();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-v10];
  v12 = *a1;
  v13 = *(a1 + 8);
  v29 = *a1;
  v30 = v13;
  v14 = EnvironmentValues.multilineTextAlignment.getter();
  if (v13)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v12, &v28);

    v15 = v28;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v12, &v27);

    if (v27)
    {
LABEL_3:
      v16 = *(v3 + 104);
      if (v14)
      {
        v17 = MEMORY[0x1E6965568];
        if (v14 == 1)
        {
          v18 = *MEMORY[0x1E6965578];
        }

        else
        {
          v18 = *MEMORY[0x1E6965570];
        }
      }

      else
      {
        v17 = MEMORY[0x1E6965568];
        v18 = *MEMORY[0x1E6965568];
      }

      goto LABEL_23;
    }
  }

  else
  {
    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v12);
    if (v19)
    {
      v15 = *(v19 + 72);
    }

    else
    {
      v15 = 0;
    }

    v28 = v15;
    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v12);
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v27 = v21;

    if (v21)
    {
      goto LABEL_3;
    }
  }

  if (!v14)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v22 = MEMORY[0x1E6965570];
    goto LABEL_20;
  }

  if (v14 == 1)
  {
    v22 = MEMORY[0x1E6965578];
LABEL_20:
    (*(v3 + 104))(v8, *v22, v2);
    v17 = MEMORY[0x1E6965568];
    goto LABEL_24;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v17 = MEMORY[0x1E6965568];
  v18 = *MEMORY[0x1E6965568];
  v16 = *(v3 + 104);
LABEL_23:
  v16(v8, v18, v2);
LABEL_24:
  (*(v3 + 32))(v11, v8, v2);
  (*(v3 + 16))(v5, v11, v2);
  v23 = (*(v3 + 88))(v5, v2);
  if (v23 == *v17)
  {
    v24 = 2;
LABEL_30:
    (*(v3 + 8))(v11, v2);
    return v24;
  }

  if (v23 == *MEMORY[0x1E6965578])
  {
    v24 = 4;
    goto LABEL_30;
  }

  if (v23 == *MEMORY[0x1E6965570])
  {
    v24 = 3;
    goto LABEL_30;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int Text.TruncationMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

unint64_t Text.TruncationMode.init(protobufValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2010003u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableTextCase.CodingKeys()
{
  if (*v0)
  {
    return 0x7361637265776F6CLL;
  }

  else
  {
    return 0x7361637265707075;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance CodableTextCase.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7361637265707075 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7361637265776F6CLL && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableTextCase.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableTextCase.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableTextCase.LowercaseCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableTextCase.LowercaseCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableTextCase.UppercaseCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableTextCase.UppercaseCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableTextCase.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>, lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys, &unk_1F0080040, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableTextCase.UppercaseCodingKeys>, lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys, &unk_1F0080020, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableTextCase.CodingKeys>, lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys, &unk_1F0080000, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys();
    v15 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys();
    v15 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

uint64_t CodableTextCase.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableTextCase.LowercaseCodingKeys>, lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys, &unk_1F0080040, MEMORY[0x1E69E6F48]);
  v29 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v5;
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableTextCase.UppercaseCodingKeys>, lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys, &unk_1F0080020, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableTextCase.CodingKeys>, lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys, &unk_1F0080000, v3);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys();
  v14 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v15 = v31;
  v16 = v32;
  v34 = a1;
  v17 = v30;
  v18 = v33;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v35 = v19;
  v36 = v19 + 32;
  v37 = 0;
  v38 = v20;
  v21 = specialized Collection<>.popFirst()();
  if (v21 == 2 || v37 != v38 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v24 = &type metadata for CodableTextCase;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v39 = v21;
  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v15, v29);
  }

  else
  {
    v40 = 0;
    lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v9, v27);
  }

  (*(v17 + 8))(v13, v11);
  swift_unknownObjectRelease();
  *v18 = v39 & 1;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void (*EnvironmentValues.multilineTextAlignment.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = *v1;
  *(v3 + 32) = v1[1];
  *(v3 + 40) = EnvironmentValues.multilineTextAlignment.getter();
  return EnvironmentValues.multilineTextAlignment.modify;
}

void EnvironmentValues.multilineTextAlignment.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013TextAlignmentF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013TextAlignmentK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void EnvironmentValues.explicitTruncationMode.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 72);
    }

    else
    {
      v5 = 3;
    }

    *a1 = v5;
  }
}

void (*EnvironmentValues.truncationMode.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = &v11;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5, &v11);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (!v8)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }

    v7 = (v8 + 9);
  }

  v9 = *v7;
  if (*v7 == 3)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v4 + 40) = v9;
  return EnvironmentValues.truncationMode.modify;
}

void key path getter for EnvironmentValues.explicitTruncationMode : EnvironmentValues(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 3;
    }
  }

  *a2 = v4;
}

uint64_t (*EnvironmentValues.explicitTruncationMode.modify(char **a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 3;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.explicitTruncationMode.modify;
}

void EnvironmentValues.textCase.getter(void (*a1)(uint64_t), void (*a2)(uint64_t, uint64_t *))
{
  v3 = *v2;
  if (v2[1])
  {

    a1(v3);
  }

  else
  {
    a2(v3, &v5);
  }
}

void (*EnvironmentValues.defaultTextFieldTruncationMode.modify(char **a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 3;
    }

    *(v4 + 40) = v9;
  }

  return EnvironmentValues.defaultTextFieldTruncationMode.modify;
}

void (*EnvironmentValues.lineSpacing.modify(double **a1))(double **a1, uint64_t a2)
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
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011LineSpacingI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.lineSpacing.modify;
}

void EnvironmentValues.bodyHeadOutdent.getter(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (v2[1])
  {

    a1(v3);
  }

  else
  {
    a2(v3);
  }
}

uint64_t (*EnvironmentValues._lineHeightMultiple.modify(double **a1))(uint64_t a1, uint64_t a2)
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
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018LineHeightMultipleI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues._lineHeightMultiple.modify;
}

void (*EnvironmentValues.lineHeightMultiple.modify(double **a1))(double **a1, uint64_t a2)
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
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018LineHeightMultipleI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.lineHeightMultiple.modify;
}

void (*EnvironmentValues.maximumLineHeight.modify(double **a1))(double **a1, uint64_t a2)
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
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MaximumLineHeightI0VG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.maximumLineHeight.modify;
}

void (*EnvironmentValues.minimumLineHeight.modify(double **a1))(double **a1, uint64_t a2)
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
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MinimumLineHeightI0VG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.minimumLineHeight.modify;
}

void (*EnvironmentValues.hyphenationFactor.modify(double **a1))(double **a1, uint64_t a2)
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
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017HyphenationFactorI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.hyphenationFactor.modify;
}

void key path getter for EnvironmentValues.hyphenationDisabled : EnvironmentValues(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
}

void (*EnvironmentValues.hyphenationDisabled.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.hyphenationDisabled.modify;
}

void EnvironmentValues.hyphenationDisabled.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019HyphenationDisabledF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019HyphenationDisabledK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void (*EnvironmentValues.allowsTightening.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016AllowsTighteningI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.allowsTightening.modify;
}

double EnvironmentValues.hyphenationDisabled.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *, __n128), void (*a3)(uint64_t, void, __n128))
{
  v6 = v3;
  v8 = *v6;
  swift_retain_n();
  (a2)(v6, a1, &v10);

  if (v6[1])
  {
    (a3)(v8, *v6);
  }

  return result;
}

void (*EnvironmentValues.avoidsOrphans.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = v1[1];
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013AvoidsOrphansI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.avoidsOrphans.modify;
}

void EnvironmentValues.allowsTightening.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *, __n128), void (*a4)(void, void, __n128))
{
  v7 = *a1;
  v8 = *(*a1 + 48);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  (a3)(v10, v11, v12);

  if (v9)
  {
    (a4)(v7[3], *v7[2]);
  }

  free(v7);
}

void (*EnvironmentValues.minimumScaleFactor.modify(double **a1))(double **a1)
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
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018MinimumScaleFactorI0VG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 1.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.minimumScaleFactor.modify;
}

void EnvironmentValues.minimumScaleFactor.modify(double **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2 <= 1.0 && v2 > 0.0)
  {
    v4 = **a1;
  }

  else
  {
    v4 = 1.0;
  }

  swift_retain_n();
  v5 = *(v1 + 5);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(*(v1 + 3), v4);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018MinimumScaleFactorK0VG_Ttg5(*(v1 + 4), **(v1 + 3));
  }

  free(v1);
}

void EnvironmentValues.lineSpacing.setter(void (*a1)(void *, uint64_t *, double), void (*a2)(uint64_t, void, __n128), double a3)
{
  v7 = *v3;
  swift_retain_n();
  a1(v3, &v8, a3);

  if (v3[1])
  {
    (a2)(v7, *v3);
  }
}

void (*EnvironmentValues.bodyHeadOutdent.modify(double **a1))(double **a1, uint64_t a2)
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
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BodyHeadOutdentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.bodyHeadOutdent.modify;
}

void EnvironmentValues.lineSpacing.modify(double **a1, char a2, void (*a3)(void, void *, double), void (*a4)(void, void, __n128))
{
  v7 = *a1;
  v8 = **a1;
  swift_retain_n();
  v9 = *(v7 + 5);
  if (a2)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v7 + 2;
  }

  a3(*(v7 + 3), v10, v8);

  if (v9)
  {
    (a4)(*(v7 + 4), **(v7 + 3));
  }

  free(v7);
}

void (*EnvironmentValues.textCase.modify(char **a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 2;
    }

    *(v4 + 40) = v9;
  }

  return EnvironmentValues.textCase.modify;
}

void EnvironmentValues.truncationMode.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *, __n128), void (*a4)(void, void, __n128))
{
  v7 = *a1;
  v8 = *(*a1 + 40);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  (a3)(v10, v11, v12);

  if (v9)
  {
    (a4)(v7[3], *v7[2]);
  }

  free(v7);
}

double View.multilineTextAlignment(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);

  return result;
}

double View.hyphenationDisabled(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v9 = a1;
  View.environment<A>(_:_:)(KeyPath, &v9, a2, a3);

  return result;
}

double View.truncationMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);

  return result;
}

void key path getter for EnvironmentValues.textCase : EnvironmentValues, serialized(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v2 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v2, a2);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(*a1, a2);
  }
}

void lazy protocol witness table accessor for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.LowercaseCodingKeys, &unk_1F0080040, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.LowercaseCodingKeys, &unk_1F0080040, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.LowercaseCodingKeys, &unk_1F0080040, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.LowercaseCodingKeys and conformance CodableTextCase.LowercaseCodingKeys);
  }
}

void lazy protocol witness table accessor for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.UppercaseCodingKeys, &unk_1F0080020, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.UppercaseCodingKeys, &unk_1F0080020, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.UppercaseCodingKeys, &unk_1F0080020, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.UppercaseCodingKeys and conformance CodableTextCase.UppercaseCodingKeys);
  }
}

void lazy protocol witness table accessor for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.CodingKeys, &unk_1F0080000, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.CodingKeys, &unk_1F0080000, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.CodingKeys, &unk_1F0080000, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase.CodingKeys, &unk_1F0080000, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase.CodingKeys and conformance CodableTextCase.CodingKeys);
  }
}

void type metadata accessor for KeyedEncodingContainer<CodableTextCase.LowercaseCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type Text.TruncationMode and conformance Text.TruncationMode()
{
  if (!lazy protocol witness table cache variable for type Text.TruncationMode and conformance Text.TruncationMode)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.TruncationMode, &type metadata for Text.TruncationMode, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.TruncationMode and conformance Text.TruncationMode);
  }
}

void lazy protocol witness table accessor for type Text.Case and conformance Text.Case()
{
  if (!lazy protocol witness table cache variable for type Text.Case and conformance Text.Case)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Case, &type metadata for Text.Case, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Case and conformance Text.Case);
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.Case?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Case?>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for Text.Case?, &type metadata for Text.Case, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Case?>);
    }
  }
}

uint64_t Image.init(_:scale:orientation:label:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, double a7)
{
  v13 = a5 & 1;
  type metadata accessor for ImageProviderBox<Image.CGImageProvider>(0);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a7;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = v13;
  *(result + 64) = a6;
  *(result + 72) = 0;
  return result;
}

double CGImageRef.size.getter()
{
  Width = CGImageGetWidth(v0);
  CGImageGetHeight(v0);
  return Width;
}

uint64_t initializeWithCopy for Image.CGImageProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 48);
  v7 = v4;
  if (v6)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    *(a1 + 48) = v6;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for Image.CGImageProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v7)
    {
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      v10 = *(a2 + 40);
      outlined copy of Text.Storage(v8, v9, v10);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *(a1 + 24) = v8;
      *(a1 + 32) = v9;
      *(a1 + 40) = v10;
      outlined consume of Text.Storage(v11, v12, v13);
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      outlined destroy of Text(a1 + 24);
      v17 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v17;
    }
  }

  else if (v7)
  {
    v14 = *(a2 + 24);
    v15 = *(a2 + 32);
    v16 = *(a2 + 40);
    outlined copy of Text.Storage(v14, v15, v16);
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
    *(a1 + 40) = v16;
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v18 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v18;
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for Image.CGImageProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  if (!*(a1 + 48))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 48);
  if (!v5)
  {
    outlined destroy of Text(a1 + 24);
LABEL_5:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_6;
  }

  v6 = *(a2 + 40);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 48) = v5;

LABEL_6:
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t static _FillMaskEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v52 = a6;
  v53 = a5;
  v59 = a4;
  v60 = a3;
  v55 = a7;
  v100 = *MEMORY[0x1E69E9840];
  v49 = *a1;
  v8 = *(a2 + 48);
  v96 = *(a2 + 32);
  v97 = v8;
  v98 = *(a2 + 64);
  v99 = *(a2 + 80);
  v9 = *(a2 + 16);
  v94 = *a2;
  v95 = v9;
  v58 = v8;
  v57 = DWORD2(v8);
  v56 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v8);
  v54 = v94;
  v50 = *(&v95 + 1);
  v51 = DWORD2(v94);
  v10 = v96;
  v11 = *a2;
  v63 = *(&v95 + 1);
  v12 = v95;
  v13 = *(a2 + 52);
  v91 = *(a2 + 36);
  v92 = v13;
  v93 = v11;
  v61 = DWORD1(v96);
  v62 = DWORD1(v98);
  v14 = *(a2 + 72);
  v68 = *(a2 + 80);
  v67 = v14;
  swift_beginAccess();
  LODWORD(v81) = *(v95 + 16);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(&v94, &v85);
  lazy protocol witness table accessor for type MaskDefaultForeground and conformance MaskDefaultForeground();
  v15 = Attribute.init<A>(body:value:flags:update:)();
  v64 = 1;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_3(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 256;
  *(v18 + 88) = v17;

  v19 = v10 | 0x20;
  if (v56)
  {
    v87 = v96;
    v88 = v97;
    v89 = v98;
    v90 = v99;
    v85 = v94;
    v86 = v95;
    swift_beginAccess();
    v20 = CachedEnvironment.animatedPosition(for:)(&v85);
    swift_endAccess();
  }

  else
  {
    v20 = v62;
  }

  *(&v83[2] + 1) = *(a2 + 72);
  *&v82 = v18;
  *(&v82 + 1) = v63;
  LODWORD(v83[0]) = v10 | 0x20;
  *(&v83[1] + 4) = *(a2 + 52);
  *(v83 + 4) = *(a2 + 36);
  DWORD1(v83[2]) = v20;
  v79[0] = v83[0];
  v79[1] = v83[1];
  v79[2] = v83[2];
  v81 = *a2;
  v84 = *(a2 + 80);
  v80 = v84;
  v77 = v81;
  v78 = v82;
  v21 = outlined init with copy of _ViewInputs(&v81, &v85);
  v60(v66, v21, &v77);
  v87 = v79[0];
  v88 = v79[1];
  v89 = v79[2];
  v90 = v80;
  v85 = v77;
  v86 = v78;
  outlined destroy of _ViewInputs(&v85);
  v23 = v61;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v58) & 1) == 0)
  {
LABEL_18:
    v77 = v93;
    *&v78 = v18;
    *(&v78 + 1) = v63;
    LODWORD(v79[0]) = v19;
    *(v79 + 4) = v91;
    *(&v79[1] + 4) = v92;
    DWORD1(v79[2]) = v20;
    *(&v79[2] + 1) = v67;
    v80 = v68;
    result = outlined destroy of _ViewInputs(&v77);
    v44 = v55;
    *v55 = v66[0];
    v44[1] = v66[1];
    return result;
  }

  LODWORD(v60) = v19;
  v62 = v20;
  v48 = v12;
  if (v53 == &type metadata for ForegroundStyle)
  {
    v79[0] = v96;
    v79[1] = v97;
    v79[2] = v98;
    v80 = v99;
    v77 = v94;
    v78 = v95;
    LOBYTE(v72[0]) = 0;
    swift_beginAccess();
    v65[0] = 1;
    v24 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v77, v72, 0x100000000);
    swift_endAccess();
  }

  else
  {
    if (*(v53[-1].Description + 8))
    {
      closure #1 in static _FillMaskEffect._makeView(modifier:inputs:body:)(1, v53, v52, v22);
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v26 = *(v12 + 16);
    v65[0] = 0;
    v79[0] = v96;
    v79[1] = v97;
    v79[2] = v98;
    v80 = v99;
    v77 = v94;
    v78 = v95;
    _ViewInputs.materialSubstrate.getter(&v69);
    v72[0] = v50;
    v72[1] = v51;
    v72[2] = HIDWORD(v50);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)(OffsetAttribute2, *MEMORY[0x1E698D3F8], v26, v65, &v69, v61 & 1, v72, v70);
    MEMORY[0x1EEE9AC00](v27);
    v29 = type metadata accessor for ShapeStyleResolver(0, v53, v52, v28);
    v47[2] = v29;
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyleResolver<A>, v29);
    v47[3] = v30;
    v23 = v61;
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_3(0, &lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>, &type metadata for _ShapeStyle_Pack, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v70, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_3, v47, v29, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
    v79[0] = v70[2];
    v79[1] = v70[3];
    *&v79[2] = v71;
    v77 = v70[0];
    v78 = v70[1];
    (*(*(v29 - 8) + 8))(&v77, v29);
    v24 = v72[0];
    AGGraphSetFlags();
  }

  v33 = ++lastIdentity;
  v19 = v60;
  if ((v23 & 0x100) == 0)
  {
    v34 = *MEMORY[0x1E698D3F8];
LABEL_12:
    v79[0] = v96;
    v79[1] = v97;
    v79[2] = v98;
    v80 = v99;
    v77 = v94;
    v78 = v95;
    v35 = v48;
    swift_beginAccess();
    v36 = CachedEnvironment.animatedPosition(for:)(&v77);
    v79[0] = v96;
    v79[1] = v97;
    v79[2] = v98;
    v80 = v99;
    v77 = v94;
    v78 = v95;
    v37 = CachedEnvironment.animatedCGSize(for:)(&v77);
    swift_endAccess();
    v38 = *(v35 + 16);
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v66[0]);
    if ((v39 & 0x100000000) == 0)
    {
      v34 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v40 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v54, v77);
    if (v40)
    {
      v41 = *(v40 + 72);
    }

    else
    {
      v41 = 0;
    }

    *&v77 = __PAIR64__(v24, v33);
    *(&v77 + 1) = __PAIR64__(v37, v36);
    *&v78 = __PAIR64__(v38, DWORD1(v98));
    DWORD2(v78) = v34;
    BYTE12(v78) = v41;
    HIWORD(v78) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type FillMaskDisplayList and conformance FillMaskDisplayList();
    v42 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v77) = 0;
    PreferencesOutputs.subscript.setter(v42, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v20 = v62;
    goto LABEL_18;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v54, &v77);
  result = AGWeakAttributeGetAttribute();
  v34 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    LODWORD(v70[0]) = v33;
    v45 = Attribute<A>.subscript.modify(&v77, result);
    v46 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v70);
    (v45)(&v77, 0, v46);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static _FillMaskEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for _FillMaskEffect(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

void FillMaskDisplayList.updateValue()()
{
  v57 = *MEMORY[0x1E69E9840];
  if (v0[6] == *MEMORY[0x1E698D3F8] || (Value = AGGraphGetValue(), v3 = *Value, !*(*Value + 16)))
  {
    *&__src[0] = MEMORY[0x1E69E7CC0];
    WORD4(__src[0]) = 0;
    HIDWORD(__src[0]) = 0;
    AGGraphSetOutputValue();

    return;
  }

  v4 = v2;
  v5 = *(Value + 8);
  v6 = *(Value + 12);

  v34 = *AGGraphGetValue();
  if (((v4 | v7) & 1) != 0 || !*(v0 + 15))
  {

    v10 = ++static DisplayList.Version.lastValue;
    if (static DisplayList.Version.lastValue)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v8 = v0[4];
  LODWORD(__src[0]) = v0[2];
  DWORD1(__src[0]) = v8;

  v9 = AGGraphAnyInputsChanged();
  v10 = ++static DisplayList.Version.lastValue;
  if (v9)
  {
    if (v10)
    {
LABEL_7:
      v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
LABEL_11:
      *(v0 + 15) = v11;
      goto LABEL_12;
    }

LABEL_10:
    LOWORD(v11) = 0;
    goto LABEL_11;
  }

LABEL_12:
  type metadata accessor for CGPoint(0);
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = AGGraphGetValue();
  v16 = v13 - *v15;
  v17 = v14 - v15[1];
  type metadata accessor for CGSize(0);
  v18 = AGGraphGetValue();
  v19 = *v18;
  v20 = v18[1];
  v52 = 0uLL;
  *&v53 = v19;
  *(&v53 + 1) = v20;
  *&v54[8] = xmmword_18DDD08E0;
  *&v54[32] = v5 | (v6 << 32) | 0x40000000;
  *&v54[40] = 0;
  *&v54[24] = v3;
  *v54 = v10;
  LOBYTE(__src[0]) = *(v0 + 28);
  DisplayList.Item.canonicalize(options:)(__src);
  *&v51[80] = 0;
  *&v51[72] = 0x20000000;
  memset(v51, 0, 72);
  v55[0] = v52;
  v55[1] = v53;
  v55[2] = *v54;
  *v56 = *&v54[16];
  *&v56[12] = *&v54[28];
  v32 = *v56;
  v33 = v53;
  v30 = *v54;
  v31 = v52;
  v21 = *&v54[40];
  v22 = (*&v54[28] >> 32) & 0xFFFFFFFFC000FFFFLL;
  v23 = *v0;
  v24 = *(v0 + 15);
  v25 = *(v0 + 28);
  v26 = v0[5];
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  outlined init with copy of DisplayList.Item(v55, __dst);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[0] = v31;
  __src[1] = v33;
  __src[2] = v30;
  __src[3] = v32;
  *&__src[4] = v22;
  *(&__src[4] + 1) = v21;
  DWORD2(__src[6]) = 0x80000000;
  WORD6(__src[6]) = v24;
  *&__src[7] = v16;
  *(&__src[7] + 1) = v17;
  *&__src[8] = v19;
  *(&__src[8] + 1) = v20;
  *&__src[10] = v16;
  *(&__src[10] + 1) = v17;
  *&__src[11] = v19;
  *(&__src[11] + 1) = v20;
  __src[12] = v10;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v23;
  BYTE12(__src[14]) = v25;
  LODWORD(__src[15]) = v26;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v51, __src, v34);

  v27 = (*&v51[72] >> 28) & 3;
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = *(v0 + 28);

      DisplayList.init(_:)(v29, &v39);
      __dst[0] = __src[7];
      __dst[1] = __src[8];
      *(&__dst[2] + 8) = xmmword_18DDA6ED0;
      *(&__dst[3] + 1) = v39;
      *&__dst[4] = WORD4(v39) | (HIDWORD(v39) << 32) | 0x40000000;
      DWORD2(__dst[4]) = DWORD2(__src[14]);
      *&__dst[2] = *&__src[12];
      LOBYTE(v39) = v28;
      DisplayList.Item.canonicalize(options:)(&v39);
      v48 = __dst[2];
      v49[0] = __dst[3];
      *(v49 + 12) = *(&__dst[3] + 12);
      v46 = __dst[0];
      v47 = __dst[1];
      v44[2] = __dst[2];
      v45[0] = __dst[3];
      *(v45 + 12) = *(&__dst[3] + 12);
      v44[0] = __dst[0];
      v44[1] = __dst[1];
      outlined init with copy of DisplayList.Item(&v46, &v39);
      DisplayList.init(_:)(v44, &v35);
      v41 = __dst[2];
      *v42 = __dst[3];
      *&v42[12] = *(&__dst[3] + 12);
      v39 = __dst[0];
      v40 = __dst[1];
      outlined destroy of DisplayList.Item(&v39);
      __dst[2] = *&v51[40];
      __dst[3] = *&v51[56];
      *(&__dst[3] + 12) = *&v51[68];
      __dst[0] = *&v51[8];
      __dst[1] = *&v51[24];
      outlined destroy of _ShapeStyle_RenderedLayers.Layers(__dst);
      memset(&v51[8], 0, 64);
      *&v51[72] = 0x20000000;
      *&v51[80] = 0;
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
      v36 = 0;
      v37 = 0;
      __dst[2] = *&v51[40];
      __dst[3] = *&v51[56];
      *(&__dst[3] + 12) = *&v51[68];
      __dst[0] = *&v51[8];
      __dst[1] = *&v51[24];
      outlined destroy of _ShapeStyle_RenderedLayers.Layers(__dst);
    }
  }

  else
  {
    __dst[0] = *&v51[8];
    __dst[1] = *&v51[24];
    __dst[2] = *&v51[40];
    __dst[3] = *&v51[56];
    *&__dst[4] = *&v51[72] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v51[80];
    v39 = *&v51[8];
    v40 = *&v51[24];
    v41 = *&v51[40];
    *v42 = *&v51[56];
    *&v42[16] = *&v51[72] & 0xFFFFFFFFCFFFFFFFLL;
    *&v42[24] = *&v51[80];
    outlined init with copy of DisplayList.Item(&v39, &v46);
    DisplayList.init(_:)(__dst, &v35);
    __dst[2] = *&v51[40];
    __dst[3] = *&v51[56];
    *(&__dst[3] + 12) = *&v51[68];
    __dst[0] = *&v51[8];
    __dst[1] = *&v51[24];
    outlined destroy of _ShapeStyle_RenderedLayers.Layers(__dst);
    memset(&v51[8], 0, 64);
    *&v51[72] = 0x20000000;
    *&v51[80] = 0;
  }

  *&v39 = v35;
  WORD4(v39) = v36;
  HIDWORD(v39) = v37;
  AGGraphSetOutputValue();
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);
  v48 = *v54;
  v49[0] = *&v54[16];
  *(v49 + 12) = *&v54[28];
  v46 = v52;
  v47 = v53;
  outlined destroy of DisplayList.Item(&v46);

  v41 = *&v51[32];
  *v42 = *&v51[48];
  *&v42[16] = *&v51[64];
  v43 = *&v51[80];
  v39 = *v51;
  v40 = *&v51[16];
  outlined destroy of _ShapeStyle_RenderedLayers(&v39);
}

void lazy protocol witness table accessor for type FillMaskDisplayList and conformance FillMaskDisplayList()
{
  if (!lazy protocol witness table cache variable for type FillMaskDisplayList and conformance FillMaskDisplayList)
  {
    swift_getWitnessTable(protocol conformance descriptor for FillMaskDisplayList, &unk_1F0080348, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FillMaskDisplayList and conformance FillMaskDisplayList);
  }
}

void static PlatformScrollEdgeEffectTagDefinition.apply(inputs:body:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_beginAccess();
  if (static PlatformScrollEdgeEffectTagDefinition.definition)
  {
    v9 = (*(static PlatformScrollEdgeEffectTagDefinition.definition + 10))(v8);
    v10 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    v15[3] = v10;
    v15[4] = *(a1 + 64);
    v16 = *(a1 + 80);
    v11 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v11;
    static PlatformScrollEdgeEffectTagDefinition._apply<A>(_:inputs:body:)(v9, v15, a2, a3, v9, v12);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *a4 = v13;
  a4[1] = v14;
}

void static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)(void *a1)
{
  swift_beginAccess();
  if (!static PlatformScrollEdgeEffectTagDefinition.definition)
  {
    static PlatformScrollEdgeEffectTagDefinition.definition = a1;
  }
}

uint64_t static PlatformScrollEdgeEffectTagDefinition._apply<A>(_:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 48);
  v28[2] = *(v13 + 32);
  v28[3] = v14;
  v28[4] = *(v13 + 64);
  v29 = *(v13 + 80);
  v15 = *(v13 + 16);
  v28[0] = *v13;
  v28[1] = v15;
  (*(v16 + 16))(v17, v16);
  v27 = a5;
  v18 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in Attribute.init(value:), v26, a5, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  _GraphValue.init(_:)(v25, &v25);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = *(a6 + 8);
  v22 = *(v21 + 24);

  v22(&v25, v28, partial apply for closure #1 in static PlatformScrollEdgeEffectTagDefinition._apply<A>(_:inputs:body:), v20, a5, v21);

  return (*(v10 + 8))(v12, a5);
}

Swift::Void __swiftcall _ViewInputs.enableLegacyScrollEdgeEffectTag()()
{
  if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5() & 1) == 0)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(v0, 1);
  }
}

Swift::Void __swiftcall _GraphInputs.enableLegacyScrollEdgeEffectTag()()
{
  if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5() & 1) == 0)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(v0, 1);
  }
}

void *static EnableLegacyScrollEdgeEffectTag._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v29 = *(a2 + 32);
  v30 = v4;
  v6 = *(a2 + 48);
  v31 = *(a2 + 64);
  v7 = *(a2 + 16);
  v28[0] = *a2;
  v28[1] = v7;
  v24 = v29;
  v25 = v6;
  v26 = *(a2 + 64);
  v32 = *(a2 + 80);
  v27 = *(a2 + 80);
  v22 = v28[0];
  v23 = v5;
  outlined init with copy of _ViewInputs(v28, v20);
  if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5() & 1) == 0)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(&v22, 1);
  }

  v16[2] = v24;
  v16[3] = v25;
  v16[4] = v26;
  v17 = v27;
  v16[0] = v22;
  v16[1] = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v10 = v22;
  v11 = v23;
  v8 = outlined init with copy of _ViewInputs(v16, v20);
  a3(v8, &v10);
  v18[2] = v12;
  v18[3] = v13;
  v18[4] = v14;
  v19 = v15;
  v18[0] = v10;
  v18[1] = v11;
  outlined destroy of _ViewInputs(v18);
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  return outlined destroy of _ViewInputs(v20);
}

uint64_t partial apply for closure #1 in static PlatformScrollEdgeEffectTagDefinition._apply<A>(_:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return v3(a1, v7);
}

double ResolvedShadowStyle.insets.getter()
{
  result = 0.0;
  if ((*(v0 + 52) & 1) == 0)
  {
    return *(v0 + 40) + *(v0 + 24) * -2.8;
  }

  return result;
}

uint64_t ResolvedShadowStyle.init(color:radius:offset:midpoint:kind:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, float a7@<S3>)
{
  v7 = *a2;
  LODWORD(v8) = *(result + 16);
  *a3 = *result;
  *(a3 + 16) = v8;
  *(a3 + 24) = a4;
  *(a3 + 32) = a5;
  *(a3 + 40) = a6;
  *(a3 + 48) = a7;
  *(a3 + 52) = v7;
  return result;
}

double ResolvedShadowStyle.animatableData.setter(uint64_t a1)
{
  v3 = *a1;
  v4.i64[0] = 0x3C0000003C000000;
  v4.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v11 = *a1;
    swift_once();
    v4.i64[0] = 0x3C0000003C000000;
    v4.i64[1] = 0x3C0000003C000000;
    v3 = v11;
  }

  v10 = vmulq_f32(v3, v4);
  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v5 = v10.f32[0];
    v7 = v10.i32[2];
    v6 = v10.i32[1];
    v8 = v10.i32[3];
  }

  else
  {
    v13 = 2;
    v12 = v10;
    v5 = ResolvedGradient.ColorSpace.convertOut(_:)(&v12);
  }

  *v1 = v5;
  *(v1 + 4) = v6;
  *(v1 + 8) = v7;
  *(v1 + 12) = v8;
  result = *(a1 + 32);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 40) = result;
  return result;
}

double one-time initialization function for drop()
{
  qword_1EAB20090 = 0;
  result = 0.0;
  static ShadowStyle.drop = 0u;
  *&qword_1EAB20080 = 0u;
  dword_1EAB20098 = 1056964608;
  return result;
}

double static ShadowStyle.drop.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for drop != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = static ShadowStyle.drop;
  v3 = qword_1EAB20080;
  v4 = unk_1EAB20088;
  v5 = qword_1EAB20090;
  v6 = dword_1EAB20098;
  *a1 = static ShadowStyle.drop;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return outlined copy of ShadowStyle.Storage(v2, *(&v2 + 1));
}

double one-time initialization function for inner()
{
  static ShadowStyle.inner = 1;
  result = 0.0;
  *algn_1EAB200A8 = 0u;
  unk_1EAB200B8 = 0u;
  dword_1EAB200C8 = 1056964608;
  return result;
}

double static ShadowStyle.inner.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for inner != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static ShadowStyle.inner;
  v3 = *algn_1EAB200A8;
  v4 = qword_1EAB200B0;
  v5 = unk_1EAB200B8;
  v6 = qword_1EAB200C0;
  v7 = dword_1EAB200C8;
  *a1 = static ShadowStyle.inner;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return outlined copy of ShadowStyle.Storage(v2, v3);
}

double ShadowStyle.midpoint(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = a2;
  *(a1 + 40) = v8;
  return outlined copy of ShadowStyle.Storage(v3, v4);
}

float _ShadowShapeStyle.init(style:shadowStyle:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for _ShadowShapeStyle(0, a3, a4, v9) + 36);
  v11 = *(a2 + 32);
  result = *(a2 + 40);
  v13 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v13;
  *(v10 + 32) = v11;
  *(v10 + 40) = result;
  return result;
}

double _ShadowShapeStyle.shadowStyle.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  return outlined copy of ShadowStyle.Storage(v4, v5);
}

__n128 _ShadowShapeStyle.shadowStyle.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 36);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  outlined consume of ShadowStyle.Storage(*v4, *(v4 + 8));
  result = *a1;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

double closure #2 in _ShadowShapeStyle._apply(to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2 + *(type metadata accessor for _ShadowShapeStyle(0, a3, a4, a4) + 36);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  v13 = *(v7 + 40);
  *a5 = a1;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  *(a5 + 48) = v13;
  outlined copy of ShadowStyle.Storage(v8, v9);

  return result;
}

float ResolvedShadowStyle.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 ResolvedShadowStyle.color.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

void (*ResolvedShadowStyle.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  ResolvedShadowStyle.animatableData.getter(v3 + 80);
  return ResolvedShadowStyle.animatableData.modify;
}

void ResolvedShadowStyle.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  ResolvedShadowStyle.animatableData.setter(v3);

  free(v2);
}

double protocol witness for Animatable.animatableData.getter in conformance ResolvedShadowStyle@<D0>(uint64_t a1@<X8>)
{
  ResolvedShadowStyle.animatableData.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance ResolvedShadowStyle(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  ResolvedShadowStyle.animatableData.getter(v3 + 80);
  return ResolvedShadowStyle.animatableData.modify;
}

void ResolvedShadowStyle.encode(to:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 52);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_32:
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    v9 = isUniquelyReferenced_nonNull_native;
    goto LABEL_20;
  }

  *(a1 + 8) = v8 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  ProtobufEncoder.endLengthDelimited()();
  if (v4 != 0.0)
  {
    v12 = fabs(v4);
    if (v12 >= 65536.0)
    {
      v13 = 17;
    }

    else
    {
      v13 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v13);
    if (v12 < 65536.0)
    {
      v14 = *(a1 + 8);
      v15 = v14 + 4;
      if (!__OFADD__(v14, 4))
      {
        *&v4 = v4;
        if (*(a1 + 16) >= v15)
        {
          *(a1 + 8) = v15;
          *(*a1 + v14) = LODWORD(v4);
          goto LABEL_17;
        }

LABEL_38:
        *ProtobufEncoder.growBufferSlow(to:)(v15) = LODWORD(v4);
        goto LABEL_17;
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v16 = *(a1 + 8);
    v15 = v16 + 8;
    if (__OFADD__(v16, 8))
    {
      goto LABEL_37;
    }

    if (*(a1 + 16) < v15)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v15) = v4;
    }

    else
    {
      *(a1 + 8) = v15;
      *(*a1 + v16) = v4;
    }
  }

LABEL_17:
  if (v3 == 0.0 && v5 == 0.0)
  {
    goto LABEL_24;
  }

  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_20:
  v19 = *(v9 + 2);
  v18 = *(v9 + 3);
  if (v19 >= v18 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v9);
    v9 = isUniquelyReferenced_nonNull_native;
  }

  *(v9 + 2) = v19 + 1;
  *&v9[8 * v19 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  *(a1 + 8) = v8 + 1;
  CGSize.encode(to:)(a1, v3, v5);
  ProtobufEncoder.endLengthDelimited()();
LABEL_24:
  if (v7)
  {
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)(v7);
  }

  if (v6 != 0.5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x2DuLL);
    v20 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v20 + 4;
    if (!__OFADD__(v20, 4))
    {
      if (*(a1 + 16) >= isUniquelyReferenced_nonNull_native)
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v20) = v6;
        return;
      }

LABEL_35:
      *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v6;
      return;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

BOOL specialized static ResolvedShadowStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), v2 ? (v3 = *(a1 + 32) == *(a2 + 32)) : (v3 = 0), v3 ? (v4 = *(a1 + 40) == *(a2 + 40)) : (v4 = 0), v4 ? (v5 = *(a1 + 48) == *(a2 + 48)) : (v5 = 0), v5))
  {
    return *(a1 + 52) == *(a2 + 52);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static ShadowStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v19 = *a1;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  outlined copy of ShadowStyle.Storage(v19, v2);
  outlined copy of ShadowStyle.Storage(v7, v8);
  LOBYTE(v7) = specialized static ShadowStyle.Storage.== infix(_:_:)(&v19, &v14);
  outlined consume of ShadowStyle.Storage(v14, v15);
  outlined consume of ShadowStyle.Storage(v19, v20);
  return v7 & (v6 == v12);
}

void type metadata accessor for _ShadowShapeStyle<AnyShapeStyle>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _ShadowShapeStyle<AnyShapeStyle>)
  {
    v4 = type metadata accessor for _ShadowShapeStyle(0, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _ShadowShapeStyle<AnyShapeStyle>);
    }
  }
}

BOOL specialized static ShadowStyle.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = *a1;
      outlined consume of ShadowStyle.Storage(*a1, v3);
      outlined consume of ShadowStyle.Storage(v6, v7);
      return v11 == v6;
    }

    goto LABEL_6;
  }

  v20 = *(a1 + 32);
  v13 = v3 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v7 & 0x8000000000000000) == 0)
  {

LABEL_6:
    v14 = v6;
    v15 = v7;
LABEL_7:
    outlined copy of ShadowStyle.Storage(v14, v15);
    outlined consume of ShadowStyle.Storage(v2, v3);
    outlined consume of ShadowStyle.Storage(v6, v7);
    return 0;
  }

  if (*a1 != v6)
  {
    outlined copy of ShadowStyle.Storage(v6, v7);
    v14 = v2;
    v15 = v3;
    goto LABEL_7;
  }

  if (v13 == (v7 & 0x7FFFFFFFFFFFFFFFLL))
  {
    outlined copy of ShadowStyle.Storage(v6, v7);
    v16 = v20;
    outlined copy of ShadowStyle.Storage(v2, v3);
    outlined consume of ShadowStyle.Storage(v2, v3);
    outlined consume of ShadowStyle.Storage(v6, v7);
    if (v5 != v9)
    {
      return 0;
    }

    return v16 == v10 && v4 == v8;
  }

  v19 = *(*v13 + 88);
  outlined copy of ShadowStyle.Storage(v6, v7);
  v17 = outlined copy of ShadowStyle.Storage(v2, v3);
  v18 = v19(v7 & 0x7FFFFFFFFFFFFFFFLL, v17);
  outlined consume of ShadowStyle.Storage(v2, v3);
  outlined consume of ShadowStyle.Storage(v6, v7);
  result = 0;
  if (v18)
  {
    v16 = v20;
    if (v5 == v9)
    {
      return v16 == v10 && v4 == v8;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type ShadowStyle.Kind and conformance ShadowStyle.Kind()
{
  if (!lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for ShadowStyle.Kind, &type metadata for ShadowStyle.Kind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind);
  }
}

{
  if (!lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for ShadowStyle.Kind, &type metadata for ShadowStyle.Kind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind);
  }
}

{
  if (!lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for ShadowStyle.Kind, &type metadata for ShadowStyle.Kind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind);
  }
}

{
  if (!lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for ShadowStyle.Kind, &type metadata for ShadowStyle.Kind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ShadowStyle.Kind and conformance ShadowStyle.Kind);
  }
}

void _s7SwiftUI14AnimatablePairVyACySfACySfACyS2fGGGACy12CoreGraphics7CGFloatVACyA2IGGGACyxq_GAA16VectorArithmeticAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

uint64_t initializeWithCopy for ShadowStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of ShadowStyle.Storage(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for ShadowStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of ShadowStyle.Storage(*a2, v5);
  v9 = *a1;
  v10 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  outlined consume of ShadowStyle.Storage(v9, v10);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ShadowStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  outlined consume of ShadowStyle.Storage(v5, v6);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShadowStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ShadowStyle(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 44) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      return result;
    }

    *(a1 + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for _ShadowShapeStyle(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ShadowShapeStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 44 > 0x18)
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
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    outlined copy of ShadowStyle.Storage(*v11, v13);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    *(v10 + 32) = v16;
    *(v10 + 40) = *(v11 + 40);
  }

  return v3;
}

uint64_t assignWithCopy for _ShadowShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  outlined copy of ShadowStyle.Storage(*v8, v10);
  v14 = *v7;
  v15 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  outlined consume of ShadowStyle.Storage(v14, v15);
  *(v7 + 40) = *(v8 + 40);
  return a1;
}

uint64_t initializeWithTake for _ShadowShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 28);
  v10 = v8[1];
  *v7 = *v8;
  v7[1] = v10;
  *(v7 + 28) = v9;
  return a1;
}

uint64_t assignWithTake for _ShadowShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 32);
  v9 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v7 + 16);
  *v9 = *v7;
  *(v9 + 16) = v12;
  *(v9 + 32) = v8;
  outlined consume of ShadowStyle.Storage(v10, v11);
  *(v9 + 40) = *(v7 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShadowShapeStyle(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v7 < a2 && *(a1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 44))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v9 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 1);
  if (v9 > 0x80000000)
  {
    return -v9;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for _ShadowShapeStyle(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 44;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v14 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v14 + 24) = 0u;
          *(v14 + 8) = 0u;
          *(v14 + 40) = 0;
          *v14 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *v14 = -a2 << 8;
          result = 0.0;
          *(v14 + 8) = 0u;
          *(v14 + 24) = 0u;
        }
      }

      else
      {
        v13 = *(v6 + 56);

        v13();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for ShadowStyle.Storage(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of ShadowStyle.Storage(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

uint64_t *assignWithCopy for ShadowStyle.Storage(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of ShadowStyle.Storage(*a2, v4);
  v8 = *a1;
  v9 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  outlined consume of ShadowStyle.Storage(v8, v9);
  return a1;
}

uint64_t assignWithTake for ShadowStyle.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  outlined consume of ShadowStyle.Storage(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShadowStyle.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ShadowStyle.Storage(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 40) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      return result;
    }

    *(a1 + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ShadowStyle.Storage(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result = *result;
  result[1] = v2;
  return result;
}

uint64_t _AnchoredShapeStyle.bounds.setter(uint64_t result, double a2, double a3, double a4, double a5)
{
  v6 = (v5 + *(result + 36));
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return result;
}

void *static _AnchoredShapeStyle._makeView<A>(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a1;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  v15[4] = *(a2 + 64);
  v16 = *(a2 + 80);
  v12 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v12;
  v13 = type metadata accessor for _AnchoredShapeStyle(0, a3, a5, a4);
  v17 = v10;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v17, v15, v13, a4, &protocol witness table for _AnchoredShapeStyle<A>, a6, a7);
}

uint64_t AnchoredResolvedPaint.draw(path:style:in:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = v5 + *(a5 + 36);
  v9 = *(v8 + 16);
  v10 = vdup_n_s32(*(a4 + 32));
  v11.i64[0] = v10.u32[0];
  v11.i64[1] = v10.u32[1];
  v12 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v11, 0x3FuLL)), *v8, vaddq_f64(*v8, *a4));
  v13 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v13;
  v16 = v6;
  v17 = v7;
  v18[0] = v12;
  v18[1] = v9;
  v19 = 0;
  return (*(*(a5 + 24) + 32))(a1, v15, a3, v18, *(a5 + 16));
}

uint64_t AnchoredResolvedPaint.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v11 = (v2 + *(a1 + 36));
  v12 = v11[1];
  v18[0] = *v11;
  v18[1] = v12;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  return AnimatablePair.init(_:_:)(v10, v18, AssociatedTypeWitness, v14, AssociatedConformanceWitness, v16, a2);
}

uint64_t AnchoredResolvedPaint.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized AnchoredResolvedPaint.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  v10[0] = AssociatedTypeWitness;
  v10[1] = v5;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v7;
  v8 = type metadata accessor for AnimatablePair(0, v10);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

void (*AnchoredResolvedPaint.animatableData.modify(uint64_t **a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[4] = a2;
  v6[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair(0, v7);
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  AnchoredResolvedPaint.animatableData.getter(a2, v16);
  return AnchoredResolvedPaint.animatableData.modify;
}

void AnchoredResolvedPaint.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    v8 = specialized AnchoredResolvedPaint.animatableData.setter(v3, v7);
    v9 = *(v6 + 8);
    v9(v3, v5, v8);
    (v9)(v4, v5);
  }

  else
  {
    v10 = specialized AnchoredResolvedPaint.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

BOOL static AnchoredResolvedPaint.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for AnchoredResolvedPaint(0, a3, a4, v8) + 36);
  return CGRectEqualToRect(*(a1 + v9), *(a2 + v9));
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance AnchoredResolvedPaint<A>(uint64_t a1, uint64_t a2)
{
  specialized AnchoredResolvedPaint.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  v10[0] = AssociatedTypeWitness;
  v10[1] = v5;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v7;
  v8 = type metadata accessor for AnimatablePair(0, v10);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

void (*protocol witness for Animatable.animatableData.modify in conformance AnchoredResolvedPaint<A>(uint64_t ***a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = AnchoredResolvedPaint.animatableData.modify(v4, a2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

uint64_t AnchoredResolvedPaint.encode(to:)(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 24) + 96))(a1, *(a2 + 16));
  if (!v3)
  {
    v6 = (v2 + *(a2 + 36));
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
    return specialized ProtobufEncoder.encodeMessage<A>(_:)(v7, v8, v9, v10);
  }

  return result;
}

uint64_t ShapeStyle.in(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v15 = *(a1 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, a1, v16);
  (*(v15 + 32))(a3, v18, a1);
  result = type metadata accessor for _AnchoredShapeStyle(0, a1, a2, v19);
  v21 = (a3 + *(result + 36));
  *v21 = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  return result;
}

double specialized AnchoredResolvedPaint.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v22 - v9;
  (*(v11 + 16))(&v22 - v9, a1, AssociatedTypeWitness, v8);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  v24[0] = AssociatedTypeWitness;
  v24[1] = v13;
  v24[2] = AssociatedConformanceWitness;
  v24[3] = v15;
  v16 = (a1 + *(type metadata accessor for AnimatablePair(0, v24) + 52));
  v17 = *(v6 + 32);
  v18 = *v16;
  v22 = v16[1];
  v23 = v18;
  v17(v10, v5, v6);
  v19 = (v2 + *(a2 + 36));
  v21 = v22;
  result = *&v23;
  *v19 = v23;
  v19[1] = v21;
  return result;
}

void instantiation function for generic protocol witness table for AnchoredResolvedPaint<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnchoredResolvedPaint<A>);
  *(a1 + 8) = v5;
  swift_getWitnessTable(protocol conformance descriptor for AnchoredResolvedPaint<A>, a2, WitnessTable);
  *(a1 + 16) = v6;
}

uint64_t *initializeBufferWithCopyOfBuffer for _AnchoredShapeStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t assignWithCopy for _AnchoredShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  return a1;
}

uint64_t initializeWithTake for _AnchoredShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  return a1;
}

uint64_t assignWithTake for _AnchoredShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  return a1;
}

void StrokeStyle.animatableData.setter(double a1, double a2, double a3)
{
  *v3 = a1;
  v3[2] = a2;
  v3[4] = a3;
}

double (*StrokeStyle.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  v2 = v1[2];
  v3 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  return StrokeStyle.animatableData.modify;
}

double StrokeStyle.animatableData.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[2] = v3;
  v1[4] = v4;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance StrokeStyle@<D0>(void *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance StrokeStyle(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[2] = v3;
  v1[4] = v4;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance StrokeStyle(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  v2 = v1[2];
  v3 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  return protocol witness for Animatable.animatableData.modify in conformance StrokeStyle;
}

void lazy protocol witness table accessor for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

uint64_t assignWithCopy for StrokeStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void *assignWithTake for StrokeStyle(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  return a1;
}

uint64_t View.gestureComponent<A>(_:name:relations:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a7;
  v28[0] = a5;
  v29 = a2;
  v30 = a4;
  v31 = a9;
  v14 = *(a8 - 8);
  v28[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 8);
  v21 = type metadata accessor for GestureComponentAttachmentModifier(0, v20, v18, v19);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v28 - v24;
  (*(v14 + 16))(v16, a1, a8, v23);
  v33[0] = v28[0];
  v33[1] = a6;
  v34 = 0;
  GestureComponentAttachmentModifier.init(component:name:relations:callbacks:)(v16, v29, a3, v30, v33, a8, v18, v25);
  View.modifier<A>(_:)();
  v26 = *(v22 + 8);

  return v26(v25, v21);
}

uint64_t View.gestureComponent<A>(_:name:relations:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a7;
  v27[0] = a5;
  v28 = a2;
  v29 = a4;
  v30 = a9;
  v15 = *(a8 - 8);
  v27[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GestureComponentAttachmentModifier(0, v19, a11, v18);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v27 - v23;
  (*(v15 + 16))(v17, a1, a8, v22);
  v32[0] = v27[0];
  v32[1] = a6;
  v33 = 1;
  GestureComponentAttachmentModifier.init(component:name:relations:callbacks:)(v17, v28, a3, v29, v32, a8, a11, v24);
  View.modifier<A>(_:)();
  v25 = *(v21 + 8);

  return v25(v24, v20);
}

uint64_t GestureComponentValues.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  type metadata accessor for Error();
  v5 = type metadata accessor for AsyncThrowingStream.Iterator();
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return MEMORY[0x1EEE6DB98](a1, v5);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GestureComponentValues<A>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return GestureComponentValues.AsyncIterator.next()(a1, a2);
}

uint64_t _s7SwiftUI22GestureComponentValuesV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = _s7SwiftUI22GestureComponentValuesV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t _s7SwiftUI22GestureComponentValuesV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(__n128 a1)
{
  v3 = *v2;
  v4 = *v2;

  if (v1)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t GestureComponentValues.AsyncIterator.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, unint64_t, void)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Error();
  v9 = a3(0, a2, v8, MEMORY[0x1E69E7288]);
  v10 = *(*(v9 - 8) + 32);

  return v10(a4, a1, v9);
}

uint64_t GestureComponentValues.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  type metadata accessor for Error();
  v4 = type metadata accessor for AsyncThrowingStream.Iterator();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AsyncThrowingStream();
  MEMORY[0x193ABF450](v7);
  return GestureComponentValues.AsyncIterator.init(base:)(v6, v3, MEMORY[0x1E69E87B8], a2);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GestureComponentValues<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GestureComponentValues.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t GestureComponentFailure.reason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GestureFailureReason();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GestureComponentFailure.reason.setter(uint64_t a1)
{
  v3 = type metadata accessor for GestureFailureReason();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GestureComponentFailure.init(reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GestureFailureReason();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata completion function for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Error();
  result = a4(319, v5, v6, MEMORY[0x1E69E7288]);
  if (v8 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  v10 = **(v9 - 8);

  return v10(a1, a2, v9);
}

uint64_t destroy for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, unint64_t, void))
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Error();
  v7 = a3(0, v5, v6, MEMORY[0x1E69E7288]);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t initializeWithCopy for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  (*(*(v9 - 8) + 16))(a1, a2, v9);
  return a1;
}

uint64_t assignWithCopy for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  (*(*(v9 - 8) + 24))(a1, a2, v9);
  return a1;
}

uint64_t initializeWithTake for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  (*(*(v9 - 8) + 32))(a1, a2, v9);
  return a1;
}

uint64_t assignWithTake for GestureComponentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  (*(*(v9 - 8) + 40))(a1, a2, v9);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for Error();
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);
  v10 = *(*(v9 - 8) + 48);

  return v10(a1, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, unint64_t, void))
{
  v8 = *(a4 + 16);
  v9 = type metadata accessor for Error();
  v10 = a5(0, v8, v9, MEMORY[0x1E69E7288]);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, a2, a2, v10);
}

uint64_t initializeBufferWithCopyOfBuffer for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for GestureComponentFailure(uint64_t a1)
{
  v2 = type metadata accessor for GestureFailureReason();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for GestureComponentFailure(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata accessor for GestureComponentFailure(uint64_t a1)
{
  result = type metadata singleton initialization cache for GestureComponentFailure;
  if (!type metadata singleton initialization cache for GestureComponentFailure)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GestureComponentFailure(uint64_t a1)
{
  result = type metadata accessor for GestureFailureReason();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double Image.RenderingModeProvider.resolveNamedImage(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  v11 = *v2;
  v12 = *(v2 + 8);
  outlined init with copy of ImageResolutionContext(a1, v7);
  v13 = v7[1];
  v24 = *v7;
  v25 = v13;
  LOBYTE(v23[0]) = v12;

  v14 = EnvironmentValues.imageIsTemplate(renderingMode:)(v23);

  if ((v14 & 1) == 0)
  {
    v15 = *(v5 + 32);
    if (*(v7 + v15) == 8)
    {
      *(v7 + v15) = 1;
    }
  }

  outlined init with take of ImageResolutionContext(v7, v10);
  (*(*v11 + 88))(&v24, v10);
  v16 = v25;
  if (v25)
  {
    v17 = v10[1];
    v23[0] = *v10;
    v23[1] = v17;
    v22 = v12;

    v18 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v22);
    outlined destroy of ImageResolutionContext(v10);

    BYTE14(v26) = v18 & 1;
  }

  else
  {
    outlined destroy of ImageResolutionContext(v10);
  }

  *a2 = v24;
  *(a2 + 8) = v16;
  result = *&v26;
  v20 = v27;
  *(a2 + 16) = v26;
  *(a2 + 32) = v20;
  return result;
}

void specialized Sequence.reduce<A>(into:_:)(__int128 *a1@<X0>, void (*a2)(__int128 *, void *, double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23 = a2;
  v5 = a1[1];
  v20 = *a1;
  v21 = v5;
  v22 = *(a1 + 32);
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 68);
    while (1)
    {
      v8 = *(v7 - 36);
      v9 = *(v7 - 28);
      v10 = *(v7 - 20);
      v11 = *(v7 - 12);
      v12 = *(v7 - 4);
      v17[0] = v8;
      v17[1] = v9;
      v17[2] = v10;
      v17[3] = v11;
      v18 = v12;
      v19 = *v7;
      v13 = outlined copy of Path.Storage(v8, v9, v10, v11, v12);
      v23(&v20, v17, v13);
      if (v4)
      {
        break;
      }

      outlined consume of Path.Storage(v8, v9, v10, v11, v12);
      v7 += 6;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    outlined consume of Path.Storage(v8, v9, v10, v11, v12);
    outlined consume of Path.Storage(v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
  }

  else
  {
LABEL_5:
    v14 = v22;
    v15 = v21;
    *a4 = v20;
    *(a4 + 16) = v15;
    *(a4 + 32) = v14;
  }
}

uint64_t ContentShapePathData.transform.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentShapePathData.position.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

double ContentShapePathData.shapes.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void ContentShapePathData.shapes.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

uint64_t ContentShapePathData.init(transform:position:shapes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 4) = 0;
  *(a4 + 8) = a2;
  *(a4 + 12) = BYTE4(a2) & 1;
  *(a4 + 16) = v4;
  return result;
}

void static ContentShapePathData.defaultValue.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

Swift::Void __swiftcall MergedContentShapes.appending(contentsOf:)(SwiftUI::MergedContentShapes contentsOf)
{

  specialized Array.append<A>(contentsOf:)(v1);
}

unint64_t _ViewOutputs.appendContentPathPreference<A>(inputs:contentResponder:kinds:isHitTestable:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v42 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 48);
  v15 = *(a1 + 60);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v14);
  if (result)
  {
    v17 = a2();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v39[0] = __PAIR64__(OffsetAttribute2, v17);
    v39[1] = v15;
    v40 = a4;
    v41 = a5;
    MEMORY[0x1EEE9AC00](OffsetAttribute2);
    v36 = type metadata accessor for ContentResponderPathAppendingRule(0, a6, a7, v19);
    swift_getWitnessTable(protocol conformance descriptor for ContentResponderPathAppendingRule<A>, v36);
    v37 = v20;
    type metadata accessor for Attribute<(_:)>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v39, closure #1 in Attribute.init<A>(_:)partial apply, &v35, v36, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
    v23 = v38;
    v39[0] = v14;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v24 = *(v14 + 16);
    if (result != v24)
    {
      if (result >= v24)
      {
        __break(1u);
      }

      if (*(v14 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        v25 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA20ContentShapePathDataV_TtB5(*v8);
        v26 = *MEMORY[0x1E698D3F8];
        if ((v25 & 0x100000000) == 0)
        {
          v26 = v25;
        }

        v39[0] = __PAIR64__(v26, v23);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
        type metadata accessor for PreferenceTransform<ContentShapePathData>(0, v27, v28, v29);
        lazy protocol witness table accessor for type PreferenceTransform<ContentShapePathData> and conformance PreferenceTransform<A>(v30, v31, v32, v33);
        v34 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v39[0]) = 0;
        return PreferencesOutputs.subscript.setter(v34, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  return result;
}

uint64_t (*ContentShapePathAppendingRule.value.getter(uint64_t a1))()
{
  v3 = *(v1 + 4);
  v4 = swift_allocObject();
  v5 = *v1;
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  return partial apply for closure #1 in ContentShapePathAppendingRule.value.getter;
}

uint64_t closure #1 in ContentShapePathAppendingRule.value.getter(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v11 = *(a5 - 8);
  v35 = HIDWORD(a3);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for ContentShapePathAppendingRule(0, v15, v16, v14) + 16);
  Value = AGGraphGetValue();
  (*(*(v17 - 8) + 16))(v13, Value, v17);
  type metadata accessor for CGSize(0);
  v19 = AGGraphGetValue();
  (*(a6 + 24))(v38, a5, a6, 0.0, 0.0, *v19, v19[1]);
  v20 = v38[0];
  v21 = v38[1];
  v23 = v38[2];
  v22 = v38[3];
  HIDWORD(v34) = v39;
  (*(v11 + 8))(v13, a5);
  v24 = a1[2];
  if (!v24)
  {

    *a1 = v9;
    a1[1] = 0x100000000;
    v24 = MEMORY[0x1E69E7CC0];
    a1[2] = MEMORY[0x1E69E7CC0];
  }

  if (*MEMORY[0x1E698D3F8] == v8)
  {
    v25 = 1;
LABEL_6:
    result = swift_isUniquelyReferenced_nonNull_native();
    a1[2] = v24;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
      v24 = result;
      a1[2] = result;
    }

    v28 = v24[2];
    v27 = v24[3];
    if (v28 >= v27 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
      v24 = result;
    }

    v24[2] = v28 + 1;
    v29 = &v24[7 * v28];
    v29[4] = v25;
    goto LABEL_11;
  }

  v25 = *AGGraphGetValue();
  v24 = a1[2];
  if (v25)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  a1[2] = v24;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    v24 = result;
    a1[2] = result;
  }

  v33 = v24[2];
  v32 = v24[3];
  if (v33 >= v32 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v24);
    v24 = result;
  }

  v24[2] = v33 + 1;
  v29 = &v24[7 * v33];
  v29[4] = 1;
LABEL_11:
  v29[5] = v20;
  v29[6] = v21;
  v29[7] = v23;
  v29[8] = v22;
  *(v29 + 72) = BYTE4(v34);
  v30 = v37;
  *(v29 + 73) = v36;
  *(v29 + 75) = v30;
  v31 = v35;
  *(v29 + 19) = v9;
  *(v29 + 20) = v31;
  a1[2] = v24;
  return result;
}

uint64_t MergedContentShapes.addPath(_:forKinds:transform:position:)(uint64_t *a1, uint64_t *a2, int a3, int a4)
{
  v7 = a1[1];
  v26 = *a1;
  v9 = a1[2];
  v8 = a1[3];
  v10 = *(a1 + 32);
  v11 = *a2;
  v12 = *v4;
  if (*a2)
  {
    v13 = *(a1 + 1);
    v29 = *a1;
    v30 = v13;
    v31 = *(a1 + 32);
    outlined init with copy of Path.Storage(&v29, &v27);
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v12;
    v15 = a4;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      v12 = result;
      *v4 = result;
    }

    v17 = v12[2];
    v16 = v12[3];
    if (v17 >= v16 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v12);
      v12 = result;
    }

    v12[2] = v17 + 1;
    v18 = &v12[7 * v17];
    v18[4] = v11;
    v18[5] = v26;
    v18[6] = v7;
    v18[7] = v9;
    v18[8] = v8;
    *(v18 + 72) = v10;
    v19 = v28;
    *(v18 + 73) = v27;
    *(v18 + 75) = v19;
    *(v18 + 19) = a3;
    *(v18 + 20) = v15;
  }

  else
  {
    v20 = *(a1 + 1);
    v29 = *a1;
    v30 = v20;
    v31 = *(a1 + 32);
    outlined init with copy of Path.Storage(&v29, &v27);
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v12;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      v12 = result;
      *v4 = result;
    }

    v22 = v12[2];
    v21 = v12[3];
    if (v22 >= v21 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v12);
      v12 = result;
    }

    v12[2] = v22 + 1;
    v23 = &v12[7 * v22];
    v23[4] = 1;
    v23[5] = v26;
    v23[6] = v7;
    v23[7] = v9;
    v23[8] = v8;
    *(v23 + 72) = v10;
    v24 = v28;
    *(v23 + 73) = v27;
    *(v23 + 75) = v24;
    *(v23 + 19) = a3;
    *(v23 + 20) = a4;
  }

  *v4 = v12;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ContentShapePathAppendingRule<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ContentShapePathAppendingRule.value.getter(a1);
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ContentShapePathAppendingRule.value.getter;
  *(result + 24) = v4;
  *a2 = partial apply for specialized closure #1 in StatefulRule<>.update<A>(modify:create:);
  a2[1] = result;
  return result;
}

uint64_t (*ContentResponderPathAppendingRule.value.getter(uint64_t a1))()
{
  v3 = swift_allocObject();
  v4 = *v1;
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v1 + 2);
  return partial apply for closure #1 in ContentResponderPathAppendingRule.value.getter;
}

uint64_t closure #1 in ContentResponderPathAppendingRule.value.getter(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v40 = a3;
  v10 = *(a5 - 8);
  v11 = HIDWORD(a4);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContentResponderPathAppendingRule(0, v15, v16, v14);
  v18 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == v11 || (result = AGGraphGetValue(), *result == 1))
  {
    if (v18 == v8)
    {
      v20 = 1;
    }

    else
    {
      v20 = *AGGraphGetValue();
    }

    v39 = HIDWORD(v40);
    v21 = *(v17 + 16);
    Value = AGGraphGetValue();
    (*(*(v21 - 8) + 16))(v13, Value, v21);
    type metadata accessor for CGSize(0);
    v23 = AGGraphGetValue();
    v24 = *v23;
    v25 = v23[1];
    v41 = v20;
    (*(a6 + 24))(v42, &v41, a5, a6, v24, v25);
    v27 = v42[0];
    v26 = v42[1];
    v29 = v42[2];
    v28 = v42[3];
    v30 = v43;
    (*(v10 + 8))(v13, a5);
    v31 = a1[2];
    if (!v31)
    {

      *a1 = v40;
      a1[1] = 0x100000000;
      v31 = MEMORY[0x1E69E7CC0];
      a1[2] = MEMORY[0x1E69E7CC0];
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a1[2] = v31;
    if (v20)
    {
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        v31 = result;
        a1[2] = result;
      }

      v33 = v31[2];
      v32 = v31[3];
      if (v33 >= v32 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
        v31 = result;
      }

      v31[2] = v33 + 1;
      v34 = &v31[7 * v33];
      v34[4] = v20;
    }

    else
    {
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        v31 = result;
        a1[2] = result;
      }

      v36 = v31[2];
      v35 = v31[3];
      if (v36 >= v35 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v31);
        v31 = result;
      }

      v31[2] = v36 + 1;
      v34 = &v31[7 * v36];
      v34[4] = 1;
    }

    v34[5] = v27;
    v34[6] = v26;
    v34[7] = v29;
    v34[8] = v28;
    *(v34 + 72) = v30;
    v37 = BYTE2(v41);
    *(v34 + 73) = v41;
    *(v34 + 75) = v37;
    v38 = v39;
    *(v34 + 19) = v40;
    *(v34 + 20) = v38;
    a1[2] = v31;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ContentResponderPathAppendingRule<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  ContentResponderPathAppendingRule.value.getter(a1);
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ContentResponderPathAppendingRule.value.getter;
  *(result + 24) = v4;
  *a2 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
  a2[1] = result;
  return result;
}

__n128 ContentResponderPathDataRule.value.getter@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x1E698D3F8] == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = *AGGraphGetValue();
  }

  Value = AGGraphGetValue();
  (*(v9 + 16))(v11, Value, a3);
  type metadata accessor for CGSize(0);
  v15 = AGGraphGetValue();
  v16 = *v15;
  v17 = v15[1];
  v27 = v13;
  (*(a4 + 24))(v28, &v27, a3, a4, v16, v17);
  v25 = v28[1];
  v26 = v28[0];
  v18 = v29;
  (*(v9 + 8))(v11, a3);
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
  }

  if (v13 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v13;
  }

  v19[2] = v21 + 1;
  v23 = &v19[7 * v21];
  v23[4] = v22;
  result = v26;
  *(v23 + 7) = v25;
  *(v23 + 5) = result;
  *(v23 + 72) = v18;
  *(v23 + 76) = a1;
  *a5 = a1;
  *(a5 + 4) = 0;
  *(a5 + 8) = HIDWORD(a1);
  *(a5 + 12) = 0;
  *(a5 + 16) = v19;
  return result;
}

void *ContentShapePath.kinds.getter@<X0>(void *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*ContentShapePath.kinds.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = *v1;
  *a1 = *AGGraphGetValue();
  return ContentShapePath.kinds.modify;
}

uint64_t (*ContentShapePath.$kinds.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return DefaultLayoutResponderFilter.$children.modify;
}

void *ContentShapePath.fallbackKinds.getter@<X0>(void *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*ContentShapePath.fallbackKinds.modify(uint64_t a1))()
{
  *(a1 + 16) = *(v1 + 4);
  *a1 = *AGGraphGetValue();
  return ContentShapePath.fallbackKinds.modify;
}

_DWORD *(*ContentShapePath.$fallbackKinds.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return SecondaryLayerGeometryQuery.$layoutDirection.modify;
}

double ContentShapePath.transform.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;

  return result;
}

double key path getter for ContentShapePath.transform : ContentShapePath@<D0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *a2 = *Value;
  *(a2 + 8) = v4;
  v5 = *(Value + 32);
  *(a2 + 16) = *(Value + 16);
  *(a2 + 32) = v5;

  return result;
}

double ContentShapePath.transform.setter(uint64_t a1)
{
  AGGraphSetValue();

  return result;
}

void (*ContentShapePath.transform.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x64uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = *(v1 + 8);
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 32);
  *v4 = *Value;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;

  return ContentShapePath.transform.modify;
}

void ContentShapePath.transform.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[6] = **a1;
  v2[7] = v3;
  v4 = *(v2 + 2);
  *(v2 + 4) = *(v2 + 1);
  *(v2 + 5) = v4;
  AGGraphSetValue();

  free(v2);
}

_DWORD *(*ContentShapePath.$transform.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return _ViewInputs.time.modify;
}

void (*ContentShapePath.position.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 40) = *(v1 + 12);
  type metadata accessor for CGPoint(0);
  *(v4 + 32) = v5;
  *v4 = *AGGraphGetValue();
  return SecondaryLayerGeometryQuery.primaryPosition.modify;
}

_DWORD *(*ContentShapePath.$position.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return SecondaryLayerGeometryQuery.$primarySize.modify;
}

uint64_t ContentShapePath.coordinateSpace.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();

  return outlined init with copy of CoordinateSpace(Value, a1);
}

uint64_t key path setter for ContentShapePath.coordinateSpace : ContentShapePath(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  outlined init with copy of CoordinateSpace(a1, v4);
  outlined init with copy of CoordinateSpace(v4, v3);
  AGGraphSetValue();
  outlined destroy of CoordinateSpace(v3);
  return outlined destroy of CoordinateSpace(v4);
}

uint64_t ContentShapePath.coordinateSpace.setter(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  outlined init with copy of CoordinateSpace(a1, v3);
  AGGraphSetValue();
  outlined destroy of CoordinateSpace(a1);
  return outlined destroy of CoordinateSpace(v3);
}

void (*ContentShapePath.coordinateSpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x5CuLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 44) = *(v1 + 16);
  Value = AGGraphGetValue();
  outlined init with copy of CoordinateSpace(Value, v4);
  return ContentShapePath.coordinateSpace.modify;
}

void ContentShapePath.coordinateSpace.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of CoordinateSpace(*a1, v2 + 48);
    AGGraphSetValue();
    outlined destroy of CoordinateSpace(v2 + 48);
  }

  else
  {
    AGGraphSetValue();
  }

  outlined destroy of CoordinateSpace(v2);

  free(v2);
}

uint64_t (*ContentShapePath.$coordinateSpace.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return ContentShapePath.$coordinateSpace.modify;
}

void ContentShapePath.data.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0uLL;
    v4 = 1;
  }

  else
  {
    type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
    v5 = *AGGraphGetValue();

    v3 = v5;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
}

unint64_t ContentShapePath.$data.getter()
{
  LODWORD(v1) = *(v0 + 20);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t ContentShapePath.$data.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 20) = v2;
  return result;
}

_BYTE *(*ContentShapePath.$data.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 20);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return SecondaryLayerGeometryQuery.$secondaryLayoutComputer.modify;
}

uint64_t ContentShapePath.init(kinds:fallbackKinds:transform:position:size:coordinateSpace:data:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, int a6@<W6>, _DWORD *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void ContentShapePath.value.getter(uint64_t a1@<X8>)
{
  v3 = 0;
  if (v1[5] == *MEMORY[0x1E698D3F8])
  {
    LOBYTE(v4) = 6;
    v5 = 0;
LABEL_52:
    *a1 = v3;
    *(a1 + 16) = v5;
    *(a1 + 32) = v4;
    return;
  }

  v7 = v1[2];
  v6 = v1[3];
  type metadata accessor for Attribute<ContentShapePathData>(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v9 = Value[2];
  if (!v9)
  {
    LOBYTE(v4) = 6;
    v5 = 0;
    v3 = 0;
    goto LABEL_52;
  }

  if ((*Value & 0x100000000) == 0)
  {
    v10 = Value[1];
    v11 = v7 == *Value && (v10 & 0x100000000) == 0;
    if (v11 && v6 == v10)
    {
      *&v35[0] = Value[2];
      swift_bridgeObjectRetain_n();
      *&v39[0] = *AGGraphGetValue();
      MergedContentShapes.unconvertedPath(for:)(v39, &v41);
      v32 = v41;
      v30 = v42;
      v4 = v43;

      if (v4 <= 2)
      {
        if (v4 >= 2)
        {
          x = *(*&v32.x + 16);
          y = *(*&v32.x + 24);
          width = *(*&v32.x + 32);
          height = *(*&v32.x + 40);
        }

        else
        {
          y = v32.y;
          x = v32.x;
          height = v30.height;
          width = v30.width;
        }

        if (!CGRectIsNull(*&x))
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (v4 != 5)
      {
        if (v4 != 6)
        {
          goto LABEL_37;
        }

LABEL_49:
        *&v39[0] = v9;
        *&v37[0] = *AGGraphGetValue();
        MergedContentShapes.unconvertedPath(for:)(v37, v35);
        v33 = v35[0];
        v31 = v35[1];
        LOBYTE(v4) = v36;
        outlined destroy of Path(&v41);

        goto LABEL_50;
      }

      if (*(*&v32.x + 16))
      {
        if (*(*&v32.x + 16) != 1)
        {
          v28 = one-time initialization token for bufferCallbacks;

          if (v28 != -1)
          {
            swift_once();
          }

LABEL_48:
          IsEmpty = RBPathIsEmpty();
          outlined destroy of Path(&v41);
          if ((IsEmpty & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }
      }

      else if (!*(*&v32.x + 24))
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }
  }

  v17 = AGGraphGetValue();
  outlined init with copy of CoordinateSpace(v17, v35);
  v18 = *AGGraphGetValue();
  *&v39[0] = v9;
  *&v37[0] = v18;
  v19 = MergedContentShapes.matchingPaths(for:)(v37, &v41);
  v20 = v41;
  MEMORY[0x1EEE9AC00](v19);
  v41 = 0u;
  v42 = 0;
  v43 = 6;
  specialized Sequence.reduce<A>(into:_:)(&v41, partial apply for closure #1 in MergedContentShapes.path(coordinateSpace:kinds:), v20, v37);
  v32 = v37[0];
  v30 = v37[1];
  v4 = v38;

  outlined destroy of CoordinateSpace(v35);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (!CGRectIsNull(*(*&v32.x + 16)))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v44.origin = v32;
      v44.size = v30;
      if (!CGRectIsNull(v44))
      {
        goto LABEL_51;
      }
    }

    goto LABEL_45;
  }

  if (v4 == 5)
  {
    v21 = *&v32.x;
    if (*(*&v32.x + 16))
    {
      if (*(*&v32.x + 16) != 1)
      {
        v22 = one-time initialization token for bufferCallbacks;

        if (v22 != -1)
        {
          swift_once();
        }

LABEL_44:
        v23 = RBPathIsEmpty();
        outlined destroy of Path(v37);
        if (v23)
        {
          goto LABEL_45;
        }

LABEL_51:

        v3 = v32;
        v5 = v30;
        goto LABEL_52;
      }

LABEL_24:

      goto LABEL_44;
    }

    goto LABEL_38;
  }

  if (v4 == 6)
  {
LABEL_45:
    v24 = AGGraphGetValue();
    outlined init with copy of CoordinateSpace(v24, v35);
    v25 = *AGGraphGetValue();
    v34[1] = v9;
    v34[0] = v25;
    v26 = MergedContentShapes.matchingPaths(for:)(v34, v39);
    v27 = *&v39[0];
    MEMORY[0x1EEE9AC00](v26);
    specialized Sequence.reduce<A>(into:_:)(&v41, closure #1 in MergedContentShapes.path(coordinateSpace:kinds:)partial apply, v27, v39);
    v33 = v39[0];
    v31 = v39[1];
    LOBYTE(v4) = v40;

    outlined destroy of Path(v37);
    outlined destroy of CoordinateSpace(v35);
LABEL_50:
    v5 = v31;
    v3 = v33;
    goto LABEL_52;
  }

LABEL_37:
  v21 = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_38:
  if (*(v21 + 24))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

void MergedContentShapes.unconvertedPath(for:)(CGFloat *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *&v65 = *v2;
  v62.x = v4;
  MergedContentShapes.matchingPaths(for:)(&v62, v68);
  v5 = v68[0];
  v62 = 0;
  v63 = 0u;
  v6 = 6;
  v64 = 6;
  v7 = *(v68[0] + 2);
  if (!v7)
  {
    recta = 0;
    rect_16a = 0uLL;
LABEL_64:

    *a2 = recta;
    *(a2 + 16) = rect_16a;
    *(a2 + 32) = v6;
    return;
  }

  v51 = a2;
  v8 = 0;
  v9 = v68[0] + 32;
  rect_16 = *(v68[0] + 2);
  while (v8 < *(v5 + 2))
  {
    v10 = v9[32];
    v11 = *(v9 + 1);
    v65 = *v9;
    v66 = v11;
    v67 = v10;
    v12 = v65;
    v13 = v11;
    if (v10 <= 2)
    {
      if (v10 >= 2)
      {
        v14 = *(v65 + 16);
        v15 = *(v65 + 24);
        v16 = *(v65 + 32);
        v17 = *(v65 + 40);

        v70.origin.x = v14;
        v70.origin.y = v15;
        v70.size.width = v16;
        v70.size.height = v17;
        if (!CGRectIsNull(v70))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v69.size.height = *(&v11 + 1);
        *&v69.size.width = v11;
        v69.origin.y = *(&v65 + 1);
        *&v69.origin.x = v65;
        if (!CGRectIsNull(v69))
        {
          goto LABEL_23;
        }
      }

LABEL_3:
      outlined destroy of Path(&v65);
      goto LABEL_4;
    }

    if (v10 == 5)
    {
      if (*(v65 + 16))
      {
        if (*(v65 + 16) == 1)
        {
          outlined init with copy of Path(&v65, v61);

          v7 = rect_16;
        }

        else
        {
          outlined init with copy of Path(&v65, v61);
          v18 = one-time initialization token for bufferCallbacks;

          if (v18 != -1)
          {
            swift_once();
          }
        }
      }

      else
      {
        if (!*(v65 + 24))
        {
          goto LABEL_66;
        }

        outlined init with copy of Path(&v65, v61);
      }

      IsEmpty = RBPathIsEmpty();
      outlined destroy of Path(&v65);
      if ((IsEmpty & 1) == 0)
      {
LABEL_23:
        v20 = *(&v63 + 1);
        v21 = v64;
        switch(v64)
        {
          case 2:
            v25 = *(*&v62.x + 16);
            v22 = *(*&v62.x + 32);
            v23 = *(*&v62.x + 40);
            v55 = *(*&v62.x + 56);
            v56 = *(*&v62.x + 48);
            if (v10 != 2)
            {
              goto LABEL_30;
            }

            break;
          case 1:
            v23 = *(&v63 + 1);
            v22 = *&v63;
            if (vabdd_f64(*&v63, *(&v63 + 1)) >= 0.001)
            {
              goto LABEL_59;
            }

            v24 = *&v63 * 0.5;
LABEL_29:
            v55 = v24;
            v56 = v24;
            v25 = v62;
            if (v10 != 2)
            {
LABEL_30:
              if (v10 == 1)
              {
                v30 = *(&v13 + 1);
                v29 = *&v13;
                if (vabdd_f64(*&v13, *(&v13 + 1)) >= 0.001)
                {
                  goto LABEL_59;
                }

                v53 = v62;
                v26 = v63;
                v28 = *(&v12 + 1);
                v27 = *&v12;
                v31 = *&v13 * 0.5;
              }

              else
              {
                if (v10)
                {
                  goto LABEL_59;
                }

                v53 = v62;
                v26 = v63;
                v28 = *(&v12 + 1);
                v27 = *&v12;
                v30 = *(&v13 + 1);
                v29 = *&v13;
                v31 = 0.0;
              }

              v54 = v31;
              goto LABEL_38;
            }

            break;
          case 0:
            v23 = *(&v63 + 1);
            v22 = *&v63;
            v24 = 0.0;
            goto LABEL_29;
          default:
LABEL_59:
            v68[1] = 0;
            v68[2] = 0;
            v68[0] = 0x3FF0000000000000;
            v68[3] = 0x3FF0000000000000;
            v68[4] = 0;
            v68[5] = 0;
            Path.addPath(_:transform:)(&v65, v68);
LABEL_60:
            outlined destroy of Path(&v65);
            goto LABEL_61;
        }

        v53 = v62;
        v26 = v63;
        v27 = *(v12 + 16);
        v28 = *(v12 + 24);
        v29 = *(v12 + 32);
        v30 = *(v12 + 40);
        v31 = *(v12 + 56);
        v54 = *(v12 + 48);
LABEL_38:
        v52 = v31;
        y = v25.y;
        v71.origin = v25;
        v71.size.width = v22;
        v71.size.height = v23;
        rect = v25.x;
        v72 = CGRectInset(v71, -0.001, -0.001);
        v82.origin.x = v27;
        v82.origin.y = v28;
        v82.size.width = v29;
        v82.size.height = v30;
        if (CGRectContainsRect(v72, v82))
        {
          v33 = rect;
          if (v56 <= v54 && v55 <= v52)
          {
            goto LABEL_60;
          }

          v34 = y;
          v35 = v22;
          v36 = v23;
          v37 = fabs(CGRectGetWidth(*&v33)) * 0.5;
          v73.origin.x = rect;
          v73.origin.y = y;
          v73.size.width = v22;
          v73.size.height = v23;
          v38 = fabs(CGRectGetHeight(v73)) * 0.5;
          if (v38 >= v37)
          {
            v38 = v37;
          }

          v39 = v56;
          if (v38 < v56)
          {
            v39 = v38;
          }

          if (v38 >= v55)
          {
            v38 = v55;
          }

          v40 = v39 * 0.292893219;
          v41 = v38 * 0.292893219;
          v74.origin.x = rect;
          v74.origin.y = y;
          v74.size.width = v22;
          v74.size.height = v23;
          v75 = CGRectInset(v74, v40, v41);
          v83.origin.x = v27;
          v83.origin.y = v28;
          v83.size.width = v29;
          v83.size.height = v30;
          if (CGRectContainsRect(v75, v83))
          {
            goto LABEL_60;
          }
        }

        v76.origin.x = v27;
        v76.origin.y = v28;
        v76.size.width = v29;
        v76.size.height = v30;
        v77 = CGRectInset(v76, -0.001, -0.001);
        v84.origin.x = rect;
        v84.origin.y = y;
        v84.size.width = v22;
        v84.size.height = v23;
        v42 = CGRectContainsRect(v77, v84);
        v43 = v53;
        if (!v42)
        {
          goto LABEL_59;
        }

        v44 = v26;
        if (v54 > v56 || v52 > v55)
        {
          v78.origin.x = v27;
          v78.origin.y = v28;
          v78.size.width = v29;
          v78.size.height = v30;
          v45 = fabs(CGRectGetWidth(v78)) * 0.5;
          v79.origin.x = v27;
          v79.origin.y = v28;
          v79.size.width = v29;
          v79.size.height = v30;
          v46 = fabs(CGRectGetHeight(v79)) * 0.5;
          if (v46 >= v45)
          {
            v46 = v45;
          }

          v47 = v54;
          if (v46 < v54)
          {
            v47 = v46;
          }

          if (v46 >= v52)
          {
            v46 = v52;
          }

          v48 = v47 * 0.292893219;
          v49 = v46 * 0.292893219;
          v80.origin.x = v27;
          v80.origin.y = v28;
          v80.size.width = v29;
          v80.size.height = v30;
          v81 = CGRectInset(v80, v48, v49);
          v85.origin.x = rect;
          v85.origin.y = y;
          v85.size.width = v22;
          v85.size.height = v23;
          v50 = CGRectContainsRect(v81, v85);
          v43 = v53;
          v44 = v26;
          if (!v50)
          {
            goto LABEL_59;
          }
        }

        outlined consume of Path.Storage(*&v43.x, *&v43.y, v44, v20, v21);
        v62 = v65;
        v63 = v66;
        v64 = v67;
LABEL_61:
        v7 = rect_16;
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    if (v10 != 6)
    {
      goto LABEL_67;
    }

LABEL_4:
    ++v8;
    v9 += 48;
    if (v7 == v8)
    {
      recta = v62;
      rect_16a = v63;
      v6 = v64;
      a2 = v51;
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double MergedContentShapes.path(coordinateSpace:kinds:)@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v8 = *a1;
  *&v9[0] = v4;
  MergedContentShapes.matchingPaths(for:)(&v8, v11);
  v5 = *&v11[0];
  memset(v11, 0, sizeof(v11));
  v12 = 6;
  specialized Sequence.reduce<A>(into:_:)(v11, closure #1 in MergedContentShapes.path(coordinateSpace:kinds:)partial apply, v5, v9);

  result = *v9;
  v7 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v10;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ContentShapePath@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double protocol witness for Rule.value.getter in conformance ContentShapePath@<D0>(uint64_t a1@<X8>)
{
  ContentShapePath.value.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double ConvertiblePath.converted(to:)@<D0>(int8x16_t *a1@<X8>)
{
  v3 = v1[1];
  v19 = *v1;
  v20 = v3;
  v21 = *(v1 + 32);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 24);
  v9 = *(Value + 32);
  v10 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v11 = AGGraphGetValue();
  v12.n128_u64[0] = *v11;
  v13 = *(v11 + 8);
  v14 = v9 - (*v11 - v7);
  v22[0] = v5;
  v22[1] = v6;
  v22[2] = v12.n128_u64[0];
  *&v22[3] = v13;
  *&v22[4] = v14;
  *&v22[5] = v10 - (v13 - v8);
  Path.mapPoints(_:)(partial apply for closure #1 in Path.convert(to:transform:), v17, v12);
  outlined destroy of ViewTransform(v22);
  result = *v17[0].i64;
  v16 = v17[1];
  *a1 = v17[0];
  a1[1] = v16;
  a1[2].i8[0] = v18;
  return result;
}

char *MergedContentShapes.matchingPaths(for:)@<X0>(char *result@<X0>, char **a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v18 = *v2 + 76;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v18 + 56 * v5);
  while (1)
  {
    if (!v5)
    {
      *a2 = v6;
      return result;
    }

    v8 = v7;
    if (--v5 >= *(v4 + 16))
    {
      break;
    }

    v7 -= 7;
    if (v3 && (*(v8 - 100) & v3) != 0)
    {
      v9 = *(v8 - 84);
      v10 = *(v8 - 76);
      v11 = *(v8 - 68);
      v12 = *(v8 - 60);
      v13 = *v7;
      v19 = *(v8 - 92);
      outlined copy of Path.Storage(v19, v9, v10, v11, v12);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v15 + 1;
      v16 = &v6[48 * v15];
      *(v16 + 4) = v19;
      *(v16 + 5) = v9;
      *(v16 + 6) = v10;
      *(v16 + 7) = v11;
      v16[64] = v12;
      *(v16 + 68) = v13;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for Attribute<ContentShapePathData>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ContentShapePathData);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void specialized static ContentShapePathData.reduce(value:nextValue:)(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  v3 = (a1 + 16);
  if (*(a1 + 16))
  {
    a2(&v7);
    if (v8)
    {
      if (*v3)
      {

        specialized Array.append<A>(contentsOf:)(v4);
        if (*v3)
        {
          *a1 = 0;
          *(a1 + 4) = 1;

          *(a1 + 8) = 0;
          *(a1 + 12) = 1;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    a2(&v7);
    v6 = v7;
    v5 = v8;

    *a1 = v6;
    *(a1 + 16) = v5;
  }
}

void type metadata accessor for PreferenceTransform<ContentShapePathData>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for PreferenceTransform<ContentShapePathData>)
  {
    v4 = type metadata accessor for PreferenceTransform(0, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for PreferenceTransform<ContentShapePathData>);
    }
  }
}

void lazy protocol witness table accessor for type PreferenceTransform<ContentShapePathData> and conformance PreferenceTransform<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type PreferenceTransform<ContentShapePathData> and conformance PreferenceTransform<A>)
  {
    type metadata accessor for PreferenceTransform<ContentShapePathData>(255, a2, a3, a4);
    swift_getWitnessTable(protocol conformance descriptor for PreferenceTransform<A>, v6, v4, v5);
    atomic_store(v7, &lazy protocol witness table cache variable for type PreferenceTransform<ContentShapePathData> and conformance PreferenceTransform<A>);
  }
}

uint64_t partial apply for closure #1 in MergedContentShapes.path(coordinateSpace:kinds:)()
{
  return partial apply for closure #1 in MergedContentShapes.path(coordinateSpace:kinds:)();
}

{
  ConvertiblePath.converted(to:)(v1);
  Path.formTrivialUnion(_:)(v1);
  return outlined destroy of Path(v1);
}

void lazy protocol witness table accessor for type ContentShapePath and conformance ContentShapePath()
{
  if (!lazy protocol witness table cache variable for type ContentShapePath and conformance ContentShapePath)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentShapePath, &type metadata for ContentShapePath, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentShapePath and conformance ContentShapePath);
  }
}

uint64_t assignWithCopy for ContentShapePathData(uint64_t a1, int *a2)
{
  v3 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v3;
  v4 = a2[2];
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 2);

  return a1;
}

uint64_t assignWithTake for ContentShapePathData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for ConvertiblePath(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t assignWithCopy for ConvertiblePath(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ConvertiblePath(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConvertiblePath(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 44))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ConvertiblePath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t outlined destroy of Locale.LanguageCode?(uint64_t a1)
{
  type metadata accessor for Locale.LanguageCode?(0, &lazy cache variable for type metadata for Locale.LanguageCode?, MEMORY[0x1E6969610], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TypesettingLanguage.Resolved.fontModifier.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 17))
  {
    if (*(v0 + 17) == 1)
    {
      if (one-time initialization token for languageModifiers != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (!*(static AnyFontModifier.languageModifiers + 2) || (specialized __RawDictionaryStorage.find<A>(_:)(v2, v1), (v4 & 1) == 0))
      {
        swift_endAccess();
        type metadata accessor for AnyDynamicFontModifier<LanguageFontModifier>(0);
        v5 = swift_allocObject();
        *(v5 + 16) = v2;
        *(v5 + 24) = v1;
        swift_beginAccess();
        outlined copy of TypesettingLanguage.Resolved(v2, v1, v3, 1u);
        outlined copy of TypesettingLanguage.Resolved(v2, v1, v3, 1u);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = static AnyFontModifier.languageModifiers;
        static AnyFontModifier.languageModifiers = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, v2, v1, isUniquelyReferenced_nonNull_native);
        v7 = v2;
        v8 = v1;
        v9 = v3;
        v10 = 1;
LABEL_16:
        outlined consume of TypesettingLanguage.Resolved(v7, v8, v9, v10);
        static AnyFontModifier.languageModifiers = v14;
        swift_endAccess();
        return;
      }

      goto LABEL_14;
    }
  }

  else if (v3)
  {
    if (one-time initialization token for languageModifiers != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(static AnyFontModifier.languageModifiers + 2) || (specialized __RawDictionaryStorage.find<A>(_:)(v2, v1), (v11 & 1) == 0))
    {
      swift_endAccess();
      type metadata accessor for AnyDynamicFontModifier<LanguageFontModifier>(0);
      v12 = swift_allocObject();
      *(v12 + 16) = v2;
      *(v12 + 24) = v1;
      swift_beginAccess();
      outlined copy of TypesettingLanguage.Resolved(v2, v1, v3, 0);
      outlined copy of TypesettingLanguage.Resolved(v2, v1, v3, 0);

      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = static AnyFontModifier.languageModifiers;
      static AnyFontModifier.languageModifiers = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v2, v1, v13);
      v7 = v2;
      v8 = v1;
      v9 = v3;
      v10 = 0;
      goto LABEL_16;
    }

LABEL_14:
    swift_endAccess();
  }
}

uint64_t static TypesettingLanguage.explicit(from:)@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v5 = v4;
  v6 = *(v4 + 48);

  Locale.Language.init(identifier:)();
  *(a3 + v6) = 0;
  v7 = *(*(v5 - 8) + 56);

  return v7(a3, 0, 2, v5);
}

uint64_t static TypesettingLanguage.explicit(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v5 = v4;
  v6 = *(v4 + 48);
  v7 = type metadata accessor for Locale.Language();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v6) = 1;
  v8 = *(*(v5 - 8) + 56);

  return v8(a2, 0, 2, v5);
}

void LanguageFontModifier.modify(descriptor:in:)(CTFontDescriptorRef *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *MEMORY[0x1E69656F0];
  if (CTFontDescriptorCopyAttribute(*a1, *MEMORY[0x1E69656F0]))
  {

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<(CFStringRef, String)>(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    *(inited + 32) = v8;
    *(inited + 40) = a3;
    *(inited + 48) = a4;
    v10 = v8;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, String)(inited + 32, &lazy cache variable for type metadata for (CFStringRef, String), type metadata accessor for CFStringRef, MEMORY[0x1E69E6158]);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v7, isa);

    *a1 = CopyWithAttributes;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LanguageFontModifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LanguageFontModifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LanguageFontModifier(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

double View.typesettingLanguage(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = type metadata accessor for Locale.Language();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  KeyPath = swift_getKeyPath();
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 17) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v8 + 32))(v12 + v11, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.typesettingLanguage(_:isEnabled:), v12, a3);

  return result;
}

uint64_t key path setter for EnvironmentValues.typesettingConfiguration : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for TypesettingConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TypesettingLanguage.Storage(a1, v4, type metadata accessor for TypesettingConfiguration);
  return EnvironmentValues.typesettingConfiguration.setter(v4);
}

uint64_t closure #1 in View.typesettingLanguage(_:isEnabled:)(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    outlined destroy of TypesettingLanguage(result, type metadata accessor for TypesettingLanguage);
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
    v6 = v5;
    v7 = *(v5 + 48);
    v8 = type metadata accessor for Locale.Language();
    (*(*(v8 - 8) + 16))(v4, a3, v8);
    *(v4 + v7) = 1;
    (*(*(v6 - 8) + 56))(v4, 0, 2, v6);
    result = type metadata accessor for TypesettingConfiguration(0);
    v9 = v4 + *(result + 20);
    *v9 = 0;
    *(v9 + 8) = 1;
  }

  return result;
}

{
  if (a2)
  {
    v3 = result;
    outlined assign with copy of TypesettingLanguage(a3, result);
    result = type metadata accessor for TypesettingConfiguration(0);
    v4 = v3 + *(result + 20);
    *v4 = 0;
    *(v4 + 8) = 1;
  }

  return result;
}

double View.typesettingLanguage(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TypesettingLanguage(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  KeyPath = swift_getKeyPath();
  outlined init with copy of TypesettingLanguage.Storage(a1, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TypesettingLanguage);
  v10 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  outlined init with take of TypesettingLanguage(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.typesettingLanguage(_:isEnabled:), v11, a3);

  return result;
}

uint64_t LanguageTextModifier.modify(style:environment:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7SwiftUI20LanguageTextModifier_language;
  v3 = a1 + *(type metadata accessor for Text.Style(0) + 84);
  outlined assign with copy of TypesettingLanguage(v1 + v2, v3);
  result = type metadata accessor for TypesettingConfiguration(0);
  v5 = v3 + *(result + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t LanguageTextModifier.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC7SwiftUI20LanguageTextModifier_language;

    v5 = specialized static TypesettingLanguage.Storage.== infix(_:_:)(v3 + v4, v1 + v4);

    return v5;
  }

  return result;
}

uint64_t LanguageTextModifier.__deallocating_deinit()
{
  outlined destroy of TypesettingLanguage(v0 + OBJC_IVAR____TtC7SwiftUI20LanguageTextModifier_language, type metadata accessor for TypesettingLanguage);

  return swift_deallocClassInstance();
}

uint64_t Text.typesettingLanguage(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  v12 = type metadata accessor for TypesettingLanguage(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
    v16 = v15;
    v17 = *(v15 + 48);
    v18 = type metadata accessor for Locale.Language();
    (*(*(v18 - 8) + 16))(v14, a1, v18);
    v14[v17] = 1;
    (*(*(v16 - 8) + 56))(v14, 0, 2, v16);
    type metadata accessor for LanguageTextModifier(0);
    v19 = swift_allocObject();
    outlined init with take of TypesettingLanguage(v14, v19 + OBJC_IVAR____TtC7SwiftUI20LanguageTextModifier_language);
    outlined copy of Text.Storage(a3, a4, a5 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
    }

    v21 = *(a6 + 2);
    v20 = *(a6 + 3);
    if (v21 >= v20 >> 1)
    {
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, a6);
    }

    *(a6 + 2) = v21 + 1;
    v22 = &a6[16 * v21];
    *(v22 + 4) = v19;
    v22[40] = -64;
  }

  else
  {
    outlined copy of Text.Storage(a3, a4, a5 & 1);
  }

  return a3;
}

{
  v12 = type metadata accessor for TypesettingLanguage(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v21[-v14];
  if (a2)
  {
    outlined init with copy of TypesettingLanguage.Storage(a1, &v21[-v14], type metadata accessor for TypesettingLanguage);
    type metadata accessor for LanguageTextModifier(0);
    v16 = swift_allocObject();
    outlined init with take of TypesettingLanguage(v15, v16 + OBJC_IVAR____TtC7SwiftUI20LanguageTextModifier_language);
    outlined copy of Text.Storage(a3, a4, a5 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
    }

    v18 = *(a6 + 2);
    v17 = *(a6 + 3);
    if (v18 >= v17 >> 1)
    {
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, a6);
    }

    *(a6 + 2) = v18 + 1;
    v19 = &a6[16 * v18];
    *(v19 + 4) = v16;
    v19[40] = -64;
  }

  else
  {
    outlined copy of Text.Storage(a3, a4, a5 & 1);
  }

  return a3;
}

void type metadata accessor for AnyDynamicFontModifier<LanguageFontModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageFontModifier>)
  {
    lazy protocol witness table accessor for type LanguageFontModifier and conformance LanguageFontModifier();
    v4 = type metadata accessor for AnyDynamicFontModifier(a1, &type metadata for LanguageFontModifier, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageFontModifier>);
    }
  }
}

uint64_t outlined assign with take of TypesettingLanguage.Storage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage.Storage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL specialized static TypesettingLanguage.Resolved.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  if (*(a1 + 17))
  {
    if (v5 == 1)
    {
      if (v9 == 1)
      {
        v10 = *a1;
        if (v3 != v7 || v2 != v6)
        {
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of TypesettingLanguage.Resolved(v7, v6, v8, 1u);
          outlined copy of TypesettingLanguage.Resolved(v3, v2, v4, 1u);
          outlined consume of TypesettingLanguage.Resolved(v3, v2, v4, 1u);
          outlined consume of TypesettingLanguage.Resolved(v7, v6, v8, 1u);
          return v12 & 1;
        }

        outlined copy of TypesettingLanguage.Resolved(v10, v2, v8, 1u);
        outlined copy of TypesettingLanguage.Resolved(v3, v2, v4, 1u);
        outlined consume of TypesettingLanguage.Resolved(v3, v2, v4, 1u);
        v19 = v3;
        v20 = v2;
        v21 = v8;
        v22 = 1;
        goto LABEL_26;
      }
    }

    else if (v9 == 2 && (v6 | v7) == 0 && v8 == 0)
    {
      outlined consume of TypesettingLanguage.Resolved(*a1, v2, v4, 2u);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 2;
LABEL_26:
      outlined consume of TypesettingLanguage.Resolved(v19, v20, v21, v22);
      return 1;
    }

LABEL_23:
    outlined copy of TypesettingLanguage.Resolved(*a2, *(a2 + 8), v8, v9);
    outlined copy of TypesettingLanguage.Resolved(v3, v2, v4, v5);
    outlined consume of TypesettingLanguage.Resolved(v3, v2, v4, v5);
    outlined consume of TypesettingLanguage.Resolved(v7, v6, v8, v9);
    return 0;
  }

  if (*(a2 + 17))
  {
    goto LABEL_23;
  }

  v14 = *a1;
  if (v3 == v7 && v2 == v6)
  {
    outlined copy of TypesettingLanguage.Resolved(v14, v2, v8, 0);
    outlined copy of TypesettingLanguage.Resolved(v3, v2, v4, 0);
    outlined consume of TypesettingLanguage.Resolved(v3, v2, v4, 0);
    outlined consume of TypesettingLanguage.Resolved(v3, v2, v8, 0);
    return v4 == v8;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of TypesettingLanguage.Resolved(v7, v6, v8, 0);
  outlined copy of TypesettingLanguage.Resolved(v3, v2, v4, 0);
  outlined consume of TypesettingLanguage.Resolved(v3, v2, v4, 0);
  outlined consume of TypesettingLanguage.Resolved(v7, v6, v8, 0);
  result = 0;
  if (v16)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t partial apply for closure #1 in View.typesettingLanguage(_:isEnabled:)(uint64_t a1)
{
  return partial apply for closure #1 in View.typesettingLanguage(_:isEnabled:)(a1, MEMORY[0x1E6969720], closure #1 in View.typesettingLanguage(_:isEnabled:));
}

{
  return partial apply for closure #1 in View.typesettingLanguage(_:isEnabled:)(a1, type metadata accessor for TypesettingLanguage, closure #1 in View.typesettingLanguage(_:isEnabled:));
}

uint64_t outlined init with take of TypesettingLanguage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in View.typesettingLanguage(_:isEnabled:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 17) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

void lazy protocol witness table accessor for type TypesettingLanguage.Flags and conformance TypesettingLanguage.Flags()
{
  if (!lazy protocol witness table cache variable for type TypesettingLanguage.Flags and conformance TypesettingLanguage.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TypesettingLanguage.Flags, &type metadata for TypesettingLanguage.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TypesettingLanguage.Flags and conformance TypesettingLanguage.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TypesettingLanguage.Flags and conformance TypesettingLanguage.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TypesettingLanguage.Flags, &type metadata for TypesettingLanguage.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TypesettingLanguage.Flags and conformance TypesettingLanguage.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TypesettingLanguage.Flags and conformance TypesettingLanguage.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TypesettingLanguage.Flags, &type metadata for TypesettingLanguage.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TypesettingLanguage.Flags and conformance TypesettingLanguage.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TypesettingLanguage.Flags and conformance TypesettingLanguage.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TypesettingLanguage.Flags, &type metadata for TypesettingLanguage.Flags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TypesettingLanguage.Flags and conformance TypesettingLanguage.Flags);
  }
}

void *initializeBufferWithCopyOfBuffer for TypesettingLanguage(void *a1, void *a2)
{
  v4 = *(type metadata accessor for TypesettingLanguage.Storage(0) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 2, v7))
  {
    v13 = type metadata accessor for Locale.Language();
    (*(*(v13 - 8) + 16))(a1, a2, v13);
    *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
    (*(v9 + 56))(a1, 0, 2, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t outlined destroy of (CFStringRef, String)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *initializeWithTake for TypesettingLanguage(void *a1, const void *a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 2, v4))
  {
    v7 = *(*(type metadata accessor for TypesettingLanguage.Storage(0) - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = type metadata accessor for Locale.Language();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    *(a1 + *(v5 + 48)) = *(a2 + *(v5 + 48));
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }
}

void *initializeBufferWithCopyOfBuffer for TypesettingLanguage.Storage(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 2, v7))
  {
    v13 = type metadata accessor for Locale.Language();
    (*(*(v13 - 8) + 16))(a1, a2, v13);
    *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
    (*(v9 + 56))(a1, 0, 2, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

_BYTE *assignWithCopy for TypesettingLanguage.Storage(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for Locale.Language();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      a1[*(v7 + 48)] = a2[*(v7 + 48)];
      (*(v8 + 56))(a1, 0, 2, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      v15 = type metadata accessor for Locale.Language();
      (*(*(v15 - 8) + 24))(a1, a2, v15);
      a1[*(v7 + 48)] = a2[*(v7 + 48)];
      return a1;
    }

    outlined destroy of (CFStringRef, String)(a1, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

void *initializeWithTake for TypesettingLanguage.Storage(void *a1, const void *a2, uint64_t a3)
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
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

_BYTE *assignWithTake for TypesettingLanguage.Storage(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for Locale.Language();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      a1[*(v7 + 48)] = a2[*(v7 + 48)];
      (*(v8 + 56))(a1, 0, 2, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      v15 = type metadata accessor for Locale.Language();
      (*(*(v15 - 8) + 40))(a1, a2, v15);
      a1[*(v7 + 48)] = a2[*(v7 + 48)];
      return a1;
    }

    outlined destroy of (CFStringRef, String)(a1, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t getEnumTag for TypesettingLanguage.Storage(uint64_t a1)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t destructiveInjectEnumTag for TypesettingLanguage.Storage(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t initializeBufferWithCopyOfBuffer for TypesettingLanguage.Resolved(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of TypesettingLanguage.Resolved(*a2, v4, v6, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return a1;
}

uint64_t assignWithCopy for TypesettingLanguage.Resolved(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of TypesettingLanguage.Resolved(*a2, v4, v6, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  v10 = *(a1 + 17);
  *(a1 + 17) = v5;
  outlined consume of TypesettingLanguage.Resolved(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for TypesettingLanguage.Resolved(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 17);
  v7 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of TypesettingLanguage.Resolved(v4, v5, v7, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TypesettingLanguage.Resolved(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 18))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TypesettingLanguage.Resolved(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TypesettingLanguage.Resolved(uint64_t a1)
{
  if (*(a1 + 17) <= 1u)
  {
    return *(a1 + 17);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for TypesettingLanguage.Resolved(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 17) = a2;
  return result;
}

uint64_t type metadata completion function for LanguageTextModifier(uint64_t a1)
{
  result = type metadata accessor for TypesettingLanguage.Storage(319);
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

void type metadata accessor for _ContiguousArrayStorage<(CFStringRef, String)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, String)>)
  {
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(255, &lazy cache variable for type metadata for (CFStringRef, String), type metadata accessor for CFStringRef, MEMORY[0x1E69E6158]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, String)>);
    }
  }
}

uint64_t outlined assign with copy of TypesettingLanguage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized static AnyFontModifier.languageModifier(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for languageModifiers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static AnyFontModifier.languageModifiers;
  if (*(static AnyFontModifier.languageModifiers + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for AnyDynamicFontModifier<LanguageFontModifier>(0);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = static AnyFontModifier.languageModifiers;
    static AnyFontModifier.languageModifiers = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, a2, isUniquelyReferenced_nonNull_native);

    static AnyFontModifier.languageModifiers = v10;
    swift_endAccess();
  }

  return v7;
}

Swift::Double __swiftcall ViewGraphRenderDelegate.renderIntervalForDisplayLink(timestamp:)(SwiftUI::Time timestamp)
{
  return 0.0166666667;
}

{
  return 0.0166666667;
}

double key path setter for Transaction.scrollTargetAnchor : Transaction(uint64_t a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(a2, v3, v4, v5);

  return result;
}

void (*Transaction.scrollTargetAnchor.modify(uint64_t *a1))(Swift::UInt ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  *(v4 + 48) = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v5);
  *(v4 + 56) = 0;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8 & 1;
  return Transaction.scrollTargetAnchor.modify;
}

void Transaction.scrollTargetAnchor.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(*a1 + 16);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v1[5], v3, v2, v4);

  free(v1);
}

uint64_t (*Transaction._disablesPageScrollAnimations.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V027DisabledPageScrollAnimationF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction._disablesPageScrollAnimations.modify;
}

uint64_t Transaction.isPageScrollAnimated.getter(void *a1)
{
  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (!v2)
  {
LABEL_5:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v3 = v2[9];
  if (v3)
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
    if (!v4 || (v4[9] & 1) == 0)
    {
      LOBYTE(v3) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V027DisabledPageScrollAnimationF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(a1) ^ 1;
      return v3 & 1;
    }

    goto LABEL_5;
  }

  return v3 & 1;
}

void (*Transaction.scrollPositionUpdatePreservesVelocity.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V023ScrollPreservesVelocityF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.scrollPositionUpdatePreservesVelocity.modify;
}

double key path setter for Transaction._disablesPageScrollAnimations : Transaction(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *, __n128))
{
  v7 = *a1;

  (a5)(a2, v7, &v9);

  return result;
}

void (*Transaction.disablesPageScrollAnimations.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V027DisabledPageScrollAnimationF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.disablesPageScrollAnimations.modify;
}

void Transaction._disablesPageScrollAnimations.modify(uint64_t a1, char a2, void (*a3)(void, uint64_t, void *, __n128))
{
  v5 = *a1;
  v6 = *(*a1 + 40);

  if (a2)
  {
    v7 = v6;
    v8 = v5;
  }

  else
  {
    v8 = v5 + 1;
    v7 = v6;
  }

  (a3)(v5[2], v7, v8);

  free(v5);
}

Swift::Int ScrollContentOffsetAdjustmentBehavior.Role.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

double key path setter for Transaction.scrollContentOffsetAdjustmentBehavior : Transaction(char *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V031ScrollContentAdjustmentBehaviorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2B5(a2, v3);

  return result;
}

double Transaction.scrollContentOffsetAdjustmentBehavior.setter(char *a1)
{
  v2 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V031ScrollContentAdjustmentBehaviorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2B5(v1, v2);

  return result;
}

void (*Transaction.scrollContentOffsetAdjustmentBehavior.modify(uint64_t *a1))(uint64_t ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v7 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v8 = *v1;
  *(v3 + 24) = v8;
  type metadata accessor for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>(0, v4, v5, v6);
  BloomFilter.init(hashValue:)(v9);
  v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v8, v13);
  if (v10)
  {
    v11 = *(v10 + 72);
  }

  else
  {
    v11 = 0;
  }

  *(v7 + 32) = v11;
  return Transaction.scrollContentOffsetAdjustmentBehavior.modify;
}

void Transaction.scrollContentOffsetAdjustmentBehavior.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V031ScrollContentAdjustmentBehaviorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2B5(v1[2], v2);

  free(v1);
}

void type metadata accessor for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>)
  {
    v4 = type metadata accessor for TransactionPropertyKey(0, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>);
    }
  }
}

void lazy protocol witness table accessor for type ScrollContentOffsetAdjustmentBehavior.Role and conformance ScrollContentOffsetAdjustmentBehavior.Role()
{
  if (!lazy protocol witness table cache variable for type ScrollContentOffsetAdjustmentBehavior.Role and conformance ScrollContentOffsetAdjustmentBehavior.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollContentOffsetAdjustmentBehavior.Role, &type metadata for ScrollContentOffsetAdjustmentBehavior.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollContentOffsetAdjustmentBehavior.Role and conformance ScrollContentOffsetAdjustmentBehavior.Role);
  }
}

uint64_t keypath_get_3Tm@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result & 1;
  return result;
}

void NSAttributedString.firstAttribute<A>(_:name:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v7 = [v3 length];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in NSAttributedString.firstAttribute<A>(_:name:);
  *(v9 + 24) = v8;
  v11[4] = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v11[3] = &block_descriptor_16;
  v10 = _Block_copy(v11);

  [v3 enumerateAttribute:a1 inRange:0 options:v7 usingBlock:{0, v10}];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

uint64_t closure #1 in NSAttributedString.firstAttribute<A>(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-v15];
  outlined init with copy of Any?(a1, v20);
  type metadata accessor for Any?();
  v17 = swift_dynamicCast();
  v18 = *(a6 - 8);
  (*(v18 + 56))(v16, v17 ^ 1u, 1, a6);
  (*(v11 + 40))(a5, v16, v10);
  (*(v11 + 16))(v13, a5, v10);
  LODWORD(a6) = (*(v18 + 48))(v13, 1, a6);
  result = (*(v11 + 8))(v13, v10);
  if (a6 != 1)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t NSMutableAttributedString.addUniformAttribute(_:value:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  [v2 addAttribute:a1 value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v2, sel_length)}];

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall NSMutableAttributedString.addUniformAttributes(_:)(Swift::OpaquePointer a1)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v1 addAttributes:isa range:{0, objc_msgSend(v1, sel_length)}];
}

Swift::Void __swiftcall NSMutableAttributedString.mergeAttributes(_:in:)(Swift::OpaquePointer _, __C::_NSRange_optional in)
{
  length = in.value.length;
  location = in.value.location;
  if (in.is_nil)
  {
    length = [v2 length];
    location = 0;
  }

  if (length)
  {
    v24 = MEMORY[0x1E69E7CC8];
    v5 = swift_allocObject();
    *(v5 + 16) = &v24;
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #1 in NSMutableAttributedString.mergeAttributes(_:in:);
    *(v6 + 24) = v5;
    aBlock[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_22;
    v7 = _Block_copy(aBlock);

    [v2 enumerateAttributesInRange:location options:length usingBlock:{0, v7}];
    _Block_release(v7);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v22 = v2;
      [v2 setAttributes:isa range:{location, length}];

      v9 = v24;
      v10 = v24 + 64;
      v11 = 1 << *(v24 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v24 + 64);
      v14 = (v11 + 63) >> 6;

      v15 = 0;
      while (v13)
      {
        v16 = v15;
LABEL_13:
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = (*(v9 + 48) + 16 * (v17 | (v16 << 6)));
        v19 = *v18;
        v20 = v18[1];

        v21 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v22 addAttributes:v21 range:{v19, v20}];
      }

      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          return;
        }

        v13 = *(v10 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void closure #1 in NSMutableAttributedString.mergeAttributes(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a5;
  *a5 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *a5 = v10;
}

void NSAttributedString.runs(in:)(uint64_t a1, id a2, char a3)
{
  v11 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    a2 = [v3 length];
    a1 = 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in NSAttributedString.runs(in:);
  *(v7 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_32;
  v8 = _Block_copy(aBlock);

  [v3 enumerateAttributesInRange:a1 options:a2 usingBlock:{0, v8}];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t closure #1 in NSAttributedString.runs(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v9;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  v9[2] = v12 + 1;
  v13 = &v9[3 * v12];
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a1;
  return result;
}