uint64_t closure #2 in AlertsEntryView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertsEntryView(0);
  v10 = (a1 + v9[13]);
  v11 = *v10;
  v12 = v10[1];
  v35 = v11;
  v33 = v12;
  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.wrappedValue.getter();
  v13 = v38;
  v14 = (a1 + v9[12]);
  v15 = *v14;
  v16 = v14[1];
  v35 = *v14;
  v36 = v16;
  State.wrappedValue.getter();
  if (v13 <= v38)
  {
    v35 = v15;
    v36 = v16;
    State.wrappedValue.getter();
    v17 = v38;
    v30 = v5;
    v31 = v3;
    v19 = *a1;
    v18 = a1[1];
    v32 = v2;
    v27 = a1[2];
    v28 = v18;
    v35 = v19;
    v36 = v18;
    v37 = v27;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMR);
    MEMORY[0x20F30B100](&v38);
    TargetZone.type.getter();

    v29 = *(a1 + v9[8]);
    v21 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v29);
    v22 = *(v34 + 8);
    v22(v8, v6);
    v35 = v19;
    v36 = v28;
    v37 = v27;
    MEMORY[0x20F30B100](&v38, v20);
    TargetZone.type.getter();

    v23 = v30;
    TargetZone.ZoneType.primaryType.getter();
    v22(v8, v6);
    Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(v21, v17, v23, v29, *(a1 + v9[9]));
    v25 = v24;
    (*(v31 + 8))(v23, v32);
    v35 = v11;
    v36 = v33;
    v38 = v25;
    State.wrappedValue.setter();
  }

  return AlertsEntryView.updateTargetZone()();
}

void Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(double a1, double a2, uint64_t a3, void *a4, void *a5)
{
  v8 = type metadata accessor for TargetZone.PrimaryType();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277D7DEC0], v8, v10);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8], MEMORY[0x277D7DEE0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v36[1] == v36[0])
  {
    (*(v9 + 8))(v12, v8);

    goto LABEL_4;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v9 + 8))(v12, v8);

  if (v13)
  {
LABEL_4:
    v14 = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
    if ([a4 effectiveTypeIdentifier] == 13)
    {
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a1 > -9.22337204e18)
        {
          if (a1 < 9.22337204e18)
          {
            v15 = v14 + a1;
            if (!__OFADD__(v14, a1))
            {
              v16 = FIUIDistanceTypeForActivityType();
              v17 = [a5 unitManager];
              if (v17)
              {
                v18 = v17;
                [v17 distanceInMetersForDistanceInUserUnit:v16 distanceType:v15];
                v20 = v19;

                v21 = objc_opt_self();
                v22 = [v21 hourUnit];
                v23 = [objc_opt_self() quantityWithUnit:v22 doubleValue:1.0];

                v24 = [v21 secondUnit];
                [v23 doubleValueForUnit_];
                v26 = v25;

                MEMORY[0x20F30D360](v20, v26);
                return;
              }

              goto LABEL_26;
            }

            goto LABEL_24;
          }

          goto LABEL_22;
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a1 > -9.22337204e18)
      {
        if (a1 < 9.22337204e18)
        {
          v27 = v14 - a1;
          if (!__OFSUB__(v14, a1))
          {
            v28 = FIUIDistanceTypeForActivityType();
            v29 = [a5 unitManager];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 userDistanceHKUnitForDistanceType_];

              v32 = [objc_opt_self() quantityWithUnit:v31 doubleValue:1.0];
              v33 = [objc_opt_self() meterUnit];
              [v32 doubleValueForUnit_];
              v35 = v34;

              MEMORY[0x20F30D360](v35, v27);
              return;
            }

            goto LABEL_27;
          }

          goto LABEL_25;
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t AlertsEntryView.updateTargetZone()()
{
  v0 = type metadata accessor for TargetZone.ZoneType();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for AlertsEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd, &_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMR);
  State.wrappedValue.getter();
  if (v3)
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  State.wrappedValue.getter();
  State.wrappedValue.getter();
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  State.wrappedValue.getter();
  type metadata accessor for TargetZone();
  swift_allocObject();
  TargetZone.init(type:min:max:enabled:)();
  State.wrappedValue.getter();
  if (v3 && v3 != 1)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  dispatch thunk of TargetZone.enabled.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMR);
  return Binding.wrappedValue.setter();
}

uint64_t closure #3 in AlertsEntryView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertsEntryView(0);
  v10 = (a1 + v9[12]);
  v11 = *v10;
  v12 = v10[1];
  v35 = v11;
  v33 = v12;
  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.wrappedValue.getter();
  v13 = v38;
  v14 = (a1 + v9[13]);
  v15 = *v14;
  v16 = v14[1];
  v35 = *v14;
  v36 = v16;
  State.wrappedValue.getter();
  if (v38 <= v13)
  {
    v35 = v15;
    v36 = v16;
    State.wrappedValue.getter();
    v17 = v38;
    v30 = v5;
    v31 = v3;
    v19 = *a1;
    v18 = a1[1];
    v32 = v2;
    v27 = a1[2];
    v28 = v18;
    v35 = v19;
    v36 = v18;
    v37 = v27;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMR);
    MEMORY[0x20F30B100](&v38);
    TargetZone.type.getter();

    v29 = *(a1 + v9[8]);
    v21 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v29);
    v22 = *(v34 + 8);
    v22(v8, v6);
    v35 = v19;
    v36 = v28;
    v37 = v27;
    MEMORY[0x20F30B100](&v38, v20);
    TargetZone.type.getter();

    v23 = v30;
    TargetZone.ZoneType.primaryType.getter();
    v22(v8, v6);
    Double.subtract(valueInUserUnit:primaryType:activityType:formattingManager:)(v21, v17, v23, v29, *(a1 + v9[9]));
    v25 = v24;
    (*(v31 + 8))(v23, v32);
    v35 = v11;
    v36 = v33;
    v38 = v25;
    State.wrappedValue.setter();
  }

  return AlertsEntryView.updateTargetZone()();
}

void Double.subtract(valueInUserUnit:primaryType:activityType:formattingManager:)(double a1, double a2, uint64_t a3, void *a4, void *a5)
{
  v8 = type metadata accessor for TargetZone.PrimaryType();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277D7DEC0], v8, v10);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8], MEMORY[0x277D7DEE0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v36[1] == v36[0])
  {
    (*(v9 + 8))(v12, v8);

    goto LABEL_4;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v9 + 8))(v12, v8);

  if (v13)
  {
LABEL_4:
    v14 = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
    if ([a4 effectiveTypeIdentifier] == 13)
    {
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a1 > -9.22337204e18)
        {
          if (a1 < 9.22337204e18)
          {
            v15 = v14 - a1;
            if (!__OFSUB__(v14, a1))
            {
              v16 = FIUIDistanceTypeForActivityType();
              v17 = [a5 unitManager];
              if (v17)
              {
                v18 = v17;
                [v17 distanceInMetersForDistanceInUserUnit:v16 distanceType:v15];
                v20 = v19;

                v21 = objc_opt_self();
                v22 = [v21 hourUnit];
                v23 = [objc_opt_self() quantityWithUnit:v22 doubleValue:1.0];

                v24 = [v21 secondUnit];
                [v23 doubleValueForUnit_];
                v26 = v25;

                MEMORY[0x20F30D360](v20, v26);
                return;
              }

              goto LABEL_26;
            }

            goto LABEL_24;
          }

          goto LABEL_22;
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a1 > -9.22337204e18)
      {
        if (a1 < 9.22337204e18)
        {
          v27 = v14 + a1;
          if (!__OFADD__(v14, a1))
          {
            v28 = FIUIDistanceTypeForActivityType();
            v29 = [a5 unitManager];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 userDistanceHKUnitForDistanceType_];

              v32 = [objc_opt_self() quantityWithUnit:v31 doubleValue:1.0];
              v33 = [objc_opt_self() meterUnit];
              [v32 doubleValueForUnit_];
              v35 = v34;

              MEMORY[0x20F30D360](v35, v27);
              return;
            }

            goto LABEL_27;
          }

          goto LABEL_25;
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t closure #6 in AlertsEntryView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AlertConfigurationContext();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlertsEntryView(0);
  (*(v3 + 16))(v5, a1 + *(v6 + 40), v2);
  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x277D7E4B8])
  {
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 96))(v5, v2);
  v7 = type metadata accessor for ConfigurationType();
  (*(*(v7 - 8) + 8))(v5, v7);
  return AlertsEntryView.updateTargetZone()();
}

uint64_t closure #7 in AlertsEntryView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlertConfigurationContext();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlertsEntryView(0);
  (*(v7 + 104))(v9, *MEMORY[0x277D7E4C0], v6);
  v10 = static AlertConfigurationContext.== infix(_:_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v17 = *a1;
    v18 = *(a1 + 1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMR);
    MEMORY[0x20F30B100](v19, v12);
    v19[3] = type metadata accessor for TargetZone();
    v19[4] = MEMORY[0x277D7DF00];
    v13 = static TargetZoneStorage.save(_:for:useLegacyUniqueIdentifier:)();
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    if ((v13 & 1) == 0)
    {
      static WOLog.app.getter();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_20C66F000, v14, v15, "Failed to save target zone", v16, 2u);
        MEMORY[0x20F30E080](v16, -1, -1);
      }

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t closure #1 in AlertsEntryView.alertStylePicker()(_BYTE *a1, uint64_t a2)
{
  v3 = type metadata accessor for AlertConfigurationContext();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    type metadata accessor for AlertsEntryView(0);
    (*(v4 + 104))(v6, *MEMORY[0x277D7E4C0], v3);
    v7 = static AlertConfigurationContext.== infix(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t closure #2 in AlertsEntryView.alertStylePicker()(uint64_t a1)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI16RangedAlertStyleOGMd, &_sSay9WorkoutUI16RangedAlertStyleOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_07WorkoutB016RangedAlertStyleOQo_AA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_07WorkoutB016RangedAlertStyleOQo_AA31AccessibilityAttachmentModifierVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [RangedAlertStyle] and conformance [A], &_sSay9WorkoutUI16RangedAlertStyleOGMd, &_sSay9WorkoutUI16RangedAlertStyleOGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #2 in AlertsEntryView.alertStylePicker()(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_07WorkoutB016RangedAlertStyleOQo_Md, &_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_07WorkoutB016RangedAlertStyleOQo_MR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = *a1;
  v16 = RangedAlertStyle.displayString.getter(v6);
  v17 = v7;
  lazy protocol witness table accessor for type String and conformance String();
  *v5 = Text.init<A>(_:)();
  *(v5 + 1) = v8;
  v5[16] = v9 & 1;
  *(v5 + 3) = v10;
  v5[32] = v6;
  v5[33] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CB5DA80;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v12 = qword_27C7E86F0;
  *(v11 + 32) = static WorkoutAccessibilityIdentifier.AlertsEntryView.picker;
  *(v11 + 40) = v12;

  *(v11 + 48) = RangedAlertStyle.displayString.getter(v6);
  *(v11 + 56) = v13;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  BidirectionalCollection<>.joined(separator:)();

  v14 = lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  v16 = MEMORY[0x277CE0BD8];
  v17 = &type metadata for RangedAlertStyle;
  v18 = MEMORY[0x277CE0BC8];
  v19 = v14;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #4 in AlertsEntryView.alertStylePicker()(uint64_t *a1)
{
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  LOBYTE(v38) = *(a1 + 24);
  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd, &_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMR);
  State.wrappedValue.getter();
  v37 = v7;
  if (LOBYTE(v41) && LOBYTE(v41) == 1)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return AlertsEntryView.updateTargetZone()();
    }
  }

  v12 = type metadata accessor for AlertsEntryView(0);
  v13 = (a1 + v12[13]);
  v14 = *v13;
  v15 = v13[1];
  v38 = v14;
  v36 = v15;
  v39 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.wrappedValue.getter();
  v16 = v41;
  v17 = (a1 + v12[12]);
  v18 = *v17;
  v19 = v17[1];
  v38 = *v17;
  v39 = v19;
  State.wrappedValue.getter();
  if (v16 <= v41)
  {
    v38 = v18;
    v39 = v19;
    State.wrappedValue.getter();
    v20 = v41;
    v34 = v3;
    v35 = v2;
    v21 = *a1;
    v33 = v5;
    v22 = a1[1];
    v30 = a1[2];
    v31 = v21;
    v38 = v21;
    v39 = v22;
    v40 = v30;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMR);
    MEMORY[0x20F30B100](&v41);
    TargetZone.type.getter();

    v32 = *(a1 + v12[8]);
    v24 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v32);
    v25 = *(v37 + 8);
    v25(v9, v6);
    v38 = v31;
    v39 = v22;
    v40 = v30;
    MEMORY[0x20F30B100](&v41, v23);
    TargetZone.type.getter();

    v26 = v33;
    TargetZone.ZoneType.primaryType.getter();
    v25(v9, v6);
    Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(v24, v20, v26, v32, *(a1 + v12[9]));
    v28 = v27;
    (*(v34 + 8))(v26, v35);
    v38 = v14;
    v39 = v36;
    v41 = v28;
    State.wrappedValue.setter();
  }

  return AlertsEntryView.updateTargetZone()();
}

uint64_t closure #1 in AlertsEntryView.alertTypePicker()(uint64_t a1)
{
  v2 = type metadata accessor for AlertsEntryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[1] = *(a1 + *(v5 + 36));
  swift_getKeyPath();
  outlined init with copy of AlertsEntryView(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlertsEntryView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of AlertsEntryView(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlertsEntryView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd, &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11WorkoutCore10TargetZoneC0M4TypeOQo_0jB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11WorkoutCore10TargetZoneC0M4TypeOQo_0jB015BodyHyphenationVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance [A], &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd, &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE88]);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in AlertsEntryView.alertTypePicker()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  type metadata accessor for AlertsEntryView(0);
  TargetZone.ZoneType.displayString(activityType:)();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA24_TagTraitWritingModifierVy11WorkoutCore10TargetZoneC0M4TypeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA24_TagTraitWritingModifierVy11WorkoutCore10TargetZoneC0M4TypeOGGMR) + 36);
  v13 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_TagTraitWritingModifierVy11WorkoutCore10TargetZoneC0J4TypeOGMd, &_s7SwiftUI24_TagTraitWritingModifierVy11WorkoutCore10TargetZoneC0J4TypeOGMR);
  *(v12 + *(result + 36)) = 1;
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v11;
  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedE0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedE0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAA4TextV11WorkoutCore10TargetZoneC0P4TypeOAA7ForEachVySayAVGAvA08ModifiedD0VyAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_AVQo_0mB015BodyHyphenationVGGG_AA07DefaultkJ0VQo_AIGSg_AGyAikAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA_yAkAEALyQrqd__AaMRd__lFQOyAOyAIA3_011RangedAlertJ0OAXySayA18_GA18_A_yAkAEA0__A1_Qrqd___SbtSHRd__lFQOyAQ_A18_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedkJ0VQo_A3_09ClearListJ033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A18_Qo_AIGAGyAIA3_0K6ButtonVAIGSgAGyAqEyA36__A36_tGAIGSgtGAEyA33__A11_SgA36_SgA39_SgtGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAA4TextV11WorkoutCore10TargetZoneC0P4TypeOAA7ForEachVySayAVGAvA08ModifiedD0VyAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_AVQo_0mB015BodyHyphenationVGGG_AA07DefaultkJ0VQo_AIGSg_AGyAikAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA_yAkAEALyQrqd__AaMRd__lFQOyAOyAIA3_011RangedAlertJ0OAXySayA18_GA18_A_yAkAEA0__A1_Qrqd___SbtSHRd__lFQOyAQ_A18_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedkJ0VQo_A3_09ClearListJ033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A18_Qo_AIGAGyAIA3_0K6ButtonVAIGSgAGyAqEyA36__A36_tGAIGSgtGAEyA33__A11_SgA36_SgA39_SgtGGMR);
    v1 = MEMORY[0x277CE14C0];
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMR, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_80()
{
  v1 = (type metadata accessor for AlertsEntryView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[8];
  v4 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);

  v5 = v1[12];
  v6 = type metadata accessor for AlertConfigurationContext();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in AlertsEntryView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AlertsEntryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t PickerButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMd, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB014PacePickerViewVAF06AlertshI0VGAA14NavigationLinkVyAA6VStackVyAA05TupleI0VyAA4TextV_AStGGAKG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB014PacePickerViewVAF06AlertshI0VGAA14NavigationLinkVyAA6VStackVyAA05TupleI0VyAA4TextV_AStGGAKG_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = static Platform.current.getter();
  if (v10)
  {
    v13[0] = v13;
    MEMORY[0x28223BE20](v10);
    v13[1] = a1;
    v13[-2] = v1;
    PickerButton.pickerView()(&v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PacePickerViewVAD06AlertsgH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PacePickerViewVAD06AlertsgH0VGMR);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>();
    NavigationLink.init(destination:label:)();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMd, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMR, MEMORY[0x277CDD938]);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    PickerButton.pickerView()(&v14);
    v12 = v15;
    *v9 = v14;
    v9[8] = v12;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PacePickerViewVAD06AlertsgH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PacePickerViewVAD06AlertsgH0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMd, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMR, MEMORY[0x277CDD938]);
    return _ConditionalContent<>.init(storage:)();
  }
}

void PickerButton.pickerView()(uint64_t *a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v103 = &v102 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v107 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v102 - v5;
  v6 = type metadata accessor for TargetZone.ZoneType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v112 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v104 = &v102 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v102 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v102 - v15;
  v114 = type metadata accessor for PickerButton(0);
  v17 = v114[8];
  v18 = *MEMORY[0x277D7DE48];
  v111 = *(v7 + 104);
  v111(v16, v18, v6);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE98]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v113 = v6;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v119 == v117)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v20 = v16;
  v21 = v113;
  v108 = *(v7 + 8);
  v109 = v7 + 8;
  v108(v20, v113);

  v22 = v17;
  if (v19)
  {
    goto LABEL_11;
  }

  v111(v13, *MEMORY[0x277D7DE40], v21);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v119 == v117)
  {
    v108(v13, v21);

    v22 = v17;
    goto LABEL_11;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v108(v13, v21);

  v22 = v17;
  if (v23)
  {
    goto LABEL_11;
  }

  v24 = v104;
  v111(v104, *MEMORY[0x277D7DE60], v21);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v119 == v117)
  {
    v108(v24, v21);

    goto LABEL_11;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v108(v24, v21);

  if (v25)
  {
LABEL_11:
    v26 = v21;
    v27 = *v2;
    v28 = *(v2 + 8);
    v31 = *(v7 + 16);
    v29 = (v7 + 16);
    v30 = v31;
    v32 = (v2 + v22);
    v33 = v112;
    v31(v112, v32, v26);
    static Platform.current.getter();
    v34 = Platform.rawValue.getter();
    if (v34 == Platform.rawValue.getter())
    {
      v36 = *(v2 + 40);
      object = *(v2 + 48);
    }

    else
    {
      v36 = 0;
      object = 0;
    }

    v37 = v114;
    v38 = *(v2 + 24);
    v39 = *(v2 + 32);
    *&v119 = *(v2 + 16);
    *(&v119 + 1) = v38;
    v120 = v39;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
    Binding.projectedValue.getter();
    v40 = *(v2 + v37[11]);
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_54:
      __break(1u);
    }

    else if (v40 > -9.22337204e18)
    {
      if (v40 < 9.22337204e18)
      {
        v103 = v36;
        v104 = v29;
        v41 = v117;
        v42 = v118;
        v114 = v40;
        type metadata accessor for PacePickerViewModel(0);
        v43 = swift_allocObject();
        v44 = OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel__currentPaceDisplay;
        *&v119 = 0;
        *(&v119 + 1) = 0xE000000000000000;
        v45 = v106;
        Published.init(initialValue:)();
        (*(v107 + 32))(v43 + v44, v45, v110);
        *(v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerArray) = MEMORY[0x277D84F90];
        *(v43 + 16) = v41;
        *(v43 + 32) = v42;
        *(v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_activityType) = v28;
        *(v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_formattingManager) = v27;
        v30(v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_targetZoneType, v33, v113);

        v110 = *(&v41 + 1);

        v46 = v28;
        v47 = v27;
        [v46 effectiveTypeIdentifier];
        v48 = FIUIDistanceTypeForActivityType();
        MEMORY[0x20F30D340](v48);
        if (object)
        {
          countAndFlagsBits = v103;
        }

        else
        {
          v50 = String.workoutLocalized()();
          countAndFlagsBits = v50._countAndFlagsBits;
          object = v50._object;
        }

        v51 = (v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerTitle);
        *v51 = countAndFlagsBits;
        v51[1] = object;
        v52 = v114;
        *(v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_step) = v114;
        *(v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_minimumSelectablePace) = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
        *(v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_maximumSelectablePace) = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
        *&v119 = v41;
        *(&v119 + 1) = v110;
        v120 = v42;
        MEMORY[0x20F30B100](&v117, v111);
        v53 = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
        swift_beginAccess();
        *&v117 = v53;
        Published.init(initialValue:)();
        swift_endAccess();
        if (v52)
        {
          v107 = v41;
          v54 = *(v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_maximumSelectablePace);
          v55 = *(v43 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_minimumSelectablePace);
          v56 = v54 >= v55;
          if (v52 > 0)
          {
            v56 = v55 >= v54;
          }

          if (!v56)
          {
            v64 = OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerArray;
            do
            {
              v66 = v55 + v52;
              v67 = __OFADD__(v55, v52);
              if (__OFADD__(v55, v52))
              {
                v68 = (v66 >> 63) ^ 0x8000000000000000;
              }

              else
              {
                v68 = v55 + v52;
              }

              v69 = *(v43 + v64);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v43 + v64) = v69;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 2) + 1, 1, v69);
                *(v43 + v64) = v69;
              }

              v72 = *(v69 + 2);
              v71 = *(v69 + 3);
              if (v72 >= v71 >> 1)
              {
                v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v69);
              }

              *(v69 + 2) = v72 + 1;
              *&v69[8 * v72 + 32] = v55;
              *(v43 + v64) = v69;
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter(&v119);

              if (v55 < v119)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter(&v119);

                if (v67)
                {
                  __break(1u);
                  goto LABEL_54;
                }

                if (v119 < v66)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter(&v119);

                  v73 = v119;
                  v74 = *(v43 + v64);
                  v75 = swift_isUniquelyReferenced_nonNull_native();
                  *(v43 + v64) = v74;
                  if ((v75 & 1) == 0)
                  {
                    v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
                    *(v43 + v64) = v74;
                  }

                  v77 = *(v74 + 2);
                  v76 = *(v74 + 3);
                  if (v77 >= v76 >> 1)
                  {
                    v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v74);
                  }

                  *(v74 + 2) = v77 + 1;
                  *&v74[8 * v77 + 32] = v73;
                  *(v43 + v64) = v74;
                }
              }

              v65 = v54 >= v68;
              v52 = v114;
              if (v114 > 0)
              {
                v65 = v68 >= v54;
              }

              v55 = v68;
            }

            while (!v65);
          }

          v57 = *(v43 + 24);
          v58 = *(v43 + 32);
          *&v119 = *(v43 + 16);
          *(&v119 + 1) = v57;
          v120 = v58;
          MEMORY[0x20F30B100](&v117, v111);
          v59 = TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)();
          v61 = v60;
          swift_getKeyPath();
          swift_getKeyPath();
          *&v119 = v59;
          *(&v119 + 1) = v61;

          static Published.subscript.setter();

          v108(v112, v113);
          *&v117 = v43;
          BYTE8(v117) = 0;
          goto LABEL_25;
        }

        goto LABEL_57;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    __break(1u);
    goto LABEL_56;
  }

  v79 = *v2;
  v78 = *(v2 + 8);
  v80 = v103;
  (*(v7 + 16))(v103, v2 + v22, v21);
  (*(v7 + 56))(v80, 0, 1, v21);
  v81 = *(v2 + 24);
  v82 = *(v2 + 32);
  *&v119 = *(v2 + 16);
  *(&v119 + 1) = v81;
  v120 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  Binding.projectedValue.getter();
  v84 = v117;
  v85 = *(v2 + v114[9]);
  v86 = v118;
  v87 = *(v2 + v114[10]);
  v88 = *(v2 + v114[11]);
  static Platform.current.getter();
  v89 = Platform.rawValue.getter();
  if (v89 == Platform.rawValue.getter())
  {
    v91 = *(v2 + 40);
    v90 = *(v2 + 48);
  }

  else
  {
    v91 = TargetZone.ZoneType.stepperText(activityType:)(v78);
    v90 = v92;
  }

  type metadata accessor for AlertsPickerViewModel(0);
  v93 = swift_allocObject();
  v94 = OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel__currentValueDisplay;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  v95 = v106;
  Published.init(initialValue:)();
  (*(v107 + 32))(v93 + v94, v95, v110);
  *(v93 + 16) = v84;
  *(v93 + 32) = v86;
  v119 = v84;
  v120 = v86;

  MEMORY[0x20F30B100](&v116, v83);
  v96 = v116;
  swift_beginAccess();
  v115 = v96;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v93 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_minimumSelectableValue) = v85;
  *(v93 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_maximumSelectableValue) = v87;
  *(v93 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_step) = v88;
  v97 = (v93 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText);
  *v97 = v91;
  v97[1] = v90;
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  *(v93 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_color) = Color.init(uiColor:)();
  if (v88 != 0.0)
  {
    specialized _copySequenceToContiguousArray<A>(_:)(v85, v87, v88);
    *(v93 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerValues) = v98;
    *(v93 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_activityType) = v78;
    *(v93 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_formattingManager) = v79;
    v99 = v103;
    outlined init with copy of PickerButton?(v103, v93 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_targetZoneType, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
    v100 = v78;
    v101 = v79;
    AlertsPickerViewModel.updateValueDisplay()();

    outlined destroy of TupleView<(PickerButton, PickerButton)>?(v99, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
    *&v117 = v93;
    BYTE8(v117) = 1;
LABEL_25:
    lazy protocol witness table accessor for type PacePickerView and conformance PacePickerView();
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    _ConditionalContent<>.init(storage:)();
    v62 = BYTE8(v119);
    v63 = v105;
    *v105 = v119;
    *(v63 + 8) = v62;
    return;
  }

LABEL_58:
  __break(1u);
}

__n128 closure #2 in PickerButton.navigationLinkPickerView()@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #2 in PickerButton.navigationLinkPickerView()(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

double closure #1 in closure #2 in PickerButton.navigationLinkPickerView()@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v36 = a1[5];
  v37 = v4;
  lazy protocol witness table accessor for type String and conformance String();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Color.gray.getter();
  v10 = Text.foregroundColor(_:)();
  v32 = v11;
  v33 = v10;
  v31 = v12;
  v34 = v13;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  type metadata accessor for PickerButton(0);
  v14 = a1[3];
  v15 = a1[4];
  v36 = a1[2];
  v37 = v14;
  v38 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  MEMORY[0x20F30B100](&v35, v16);
  v36 = TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)();
  v37 = v17;
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Color.white.getter();
  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  LOBYTE(v36) = v31 & 1;
  LOBYTE(v35) = v27 & 1;
  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = v23;
  *(a2 + 40) = v25;
  *(a2 + 48) = v27 & 1;
  *(a2 + 56) = v29;
  outlined copy of Text.Storage(v33, v32, v31 & 1);

  outlined copy of Text.Storage(v23, v25, v27 & 1);

  outlined consume of Text.Storage(v23, v25, v27 & 1);

  outlined consume of Text.Storage(v33, v32, v31 & 1);

  return result;
}

uint64_t lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AlertsEntryView(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of TupleView<(PickerButton, PickerButton)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AlertsEntryView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11WorkoutCore10TargetZoneC0M4TypeOQo_0jB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11WorkoutCore10TargetZoneC0M4TypeOQo_0jB015BodyHyphenationVGMR);
    type metadata accessor for TargetZone.ZoneType();
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE88]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type BodyHyphenation and conformance BodyHyphenation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMR);
    type metadata accessor for SegmentedPickerStyle();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, RangedAlertStyle, ForEach<[RangedAlertStyle], RangedAlertStyle, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMR, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ClearListStyle and conformance ClearListStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in AlertsEntryView.alertTypePicker()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AlertsEntryView(0);

  return closure #1 in closure #1 in AlertsEntryView.alertTypePicker()(a1, a2);
}

uint64_t outlined init with copy of AlertsEntryView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PickerButton(uint64_t a1)
{
  v2 = type metadata accessor for PickerButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_07WorkoutB016RangedAlertStyleOQo_AA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_07WorkoutB016RangedAlertStyleOQo_AA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata completion function for PickerButton(uint64_t a1)
{
  _sSo23FIUIWorkoutActivityTypeCMaTm_10(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  if (v1 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_10(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    if (v2 <= 0x3F)
    {
      type metadata accessor for State<RangedAlertStyle>(319, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TargetZone.ZoneType();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for State<RangedAlertStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PacePickerViewVAD06AlertsgH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PacePickerViewVAD06AlertsgH0VGMR);
    lazy protocol witness table accessor for type PacePickerView and conformance PacePickerView();
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PacePickerView and conformance PacePickerView()
{
  result = lazy protocol witness table cache variable for type PacePickerView and conformance PacePickerView;
  if (!lazy protocol witness table cache variable for type PacePickerView and conformance PacePickerView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacePickerView and conformance PacePickerView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of PickerButton?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(PickerButton, PickerButton)>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PacePickerView, AlertsPickerView>, NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PacePickerView, AlertsPickerView>, NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PacePickerView, AlertsPickerView>, NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PacePickerViewVAD06AlertsgH0VGAA14NavigationLinkVyAA6VStackVyAA05TupleH0VyAA4TextV_AQtGGAIGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PacePickerViewVAD06AlertsgH0VGAA14NavigationLinkVyAA6VStackVyAA05TupleH0VyAA4TextV_AQtGGAIGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMd, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMR, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PacePickerView, AlertsPickerView>, NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

id WorkoutSafetyCheckIn.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t WorkoutSafetyCheckIn.isMessagesAppInstalled.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

char *WorkoutSafetyCheckIn.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn__isMessagesAppInstalled;
  v17 = 1;
  Published.init(initialValue:)();
  v6 = *(v2 + 32);
  v6(&v0[v5], v4, v1);
  v7 = OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn__isIMessageAccountEnabled;
  v17 = 1;
  Published.init(initialValue:)();
  v6(&v0[v7], v4, v1);
  v0[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isMessageAppInstalledInitialized] = 0;
  v0[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isIMessageAccountEnabledInitialized] = 0;
  if ([objc_opt_self() zelkovaWorkoutEnabled])
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D4AB68]) init];
  }

  else
  {
    v8 = 0;
  }

  *&v0[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_sessionManager] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D4AA68]) init];
  *&v0[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_appDeletionManager] = v9;
  v10 = type metadata accessor for WorkoutSafetyCheckIn(0);
  v16.receiver = v0;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_appDeletionManager];
  v13 = v11;
  [v12 addObserver_];
  type metadata accessor for DispatchUtilities();
  *(swift_allocObject() + 16) = v13;
  static DispatchUtilities.ensureMainQueueOrAsync(block:)();

  return v13;
}

uint64_t type metadata accessor for WorkoutSafetyCheckIn(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutSafetyCheckIn;
  if (!type metadata singleton initialization cache for WorkoutSafetyCheckIn)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void closure #1 in WorkoutSafetyCheckIn.init()(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_sessionManager];
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v6[4] = partial apply for closure #1 in closure #1 in WorkoutSafetyCheckIn.init();
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
    v6[3] = &block_descriptor_70;
    v4 = _Block_copy(v6);
    v5 = a1;

    [v1 checkIMessageAccountEnabledWithHandler_];
    _Block_release(v4);
  }
}

double closure #1 in closure #1 in WorkoutSafetyCheckIn.init()(char a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static WOLog.safety.getter();
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = a2;
      v22 = v14;
      *v13 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v15 = Optional.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20C66F000, v11, v12, "[SafetyCheckIn] error when fetching iMessage account enabled status: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    type metadata accessor for DispatchUtilities();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a1 & 1;
    v20 = a3;
    static DispatchUtilities.ensureMainQueueOrAsync(block:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutSafetyCheckIn.init()(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  result = static Published.subscript.setter();
  v3[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isIMessageAccountEnabledInitialized] = 1;
  if (v3[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isMessageAppInstalledInitialized] == 1)
  {
    return WorkoutSafetyCheckIn.submitCheckInButtonDisplayedMetric()();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id WorkoutSafetyCheckIn.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "[SafetyCheckIn] deinit", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for WorkoutSafetyCheckIn(0);
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

Swift::Void __swiftcall WorkoutSafetyCheckIn.removeAppDeletionManagerObserver()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "[SafetyCheckIn] removeAppDeletionManagerObserver", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  [*(v1 + OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_appDeletionManager) removeObserver_];
}

double closure #7 in WorkoutSafetyCheckIn.shouldDisplaySafetyCheckIn(for:startSource:startPoolSwim:completion:)(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  static WOLog.safety.getter();
  v17 = a1;
  v18 = a3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v50 = v9;
    v52 = v8;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138413058;
    *(v21 + 4) = v17;
    *v22 = a1;
    *(v21 + 12) = 1024;
    *(v21 + 14) = a2 & 1;
    *(v21 + 18) = 2112;
    v23 = v17;
    if (a3)
    {
      v24 = a3;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v21 + 20) = v25;
    v22[1] = v26;
    *(v21 + 28) = 2112;
    v27 = [objc_opt_self() currentThread];
    *(v21 + 30) = v27;
    v22[2] = v27;
    _os_log_impl(&dword_20C66F000, v19, v20, "[SafetyCheckIn] fetched current session state: %@, isActiveDevice: %{BOOL}d, error: %@, thread: %@", v21, 0x26u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v22, -1, -1);
    MEMORY[0x20F30E080](v21, -1, -1);
    v8 = v52;
    v9 = v50;
  }

  v28 = *(v9 + 8);
  v28(v16, v8);
  if (a1)
  {
    v29 = v17;
    v30 = [v29 isActiveState] ^ 1;
    static WOLog.safety.getter();
    v31 = v29;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v52 = v8;
      v35 = v34;
      v36 = swift_slowAlloc();
      *v35 = 67109378;
      *(v35 + 4) = v30;
      *(v35 + 8) = 2112;
      *(v35 + 10) = v31;
      *v36 = a1;
      v37 = v31;
      _os_log_impl(&dword_20C66F000, v32, v33, "[SafetyCheckIn] display prompt: %{BOOL}d, current session state: %@", v35, 0x12u);
      outlined destroy of NSObject?(v36);
      MEMORY[0x20F30E080](v36, -1, -1);
      v38 = v35;
      v8 = v52;
      MEMORY[0x20F30E080](v38, -1, -1);
    }

    v28(v13, v8);
    type metadata accessor for DispatchUtilities();
    v39 = swift_allocObject();
    *(v39 + 16) = v53;
    *(v39 + 24) = v54;
    *(v39 + 32) = v30;

    static DispatchUtilities.ensureMainQueueOrAsync(block:)();
  }

  else
  {
    v40 = v51;
    static WOLog.safety.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v8;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = 0;
      *v45 = 0;
      _os_log_impl(&dword_20C66F000, v41, v42, "[SafetyCheckIn] current session state in not available: %@, not displaying prompt", v44, 0xCu);
      outlined destroy of NSObject?(v45);
      MEMORY[0x20F30E080](v45, -1, -1);
      v46 = v44;
      v8 = v43;
      MEMORY[0x20F30E080](v46, -1, -1);
    }

    v28(v40, v8);
    type metadata accessor for DispatchUtilities();
    v47 = swift_allocObject();
    *(v47 + 16) = v53;
    *(v47 + 24) = v54;

    static DispatchUtilities.ensureMainQueueOrAsync(block:)();
  }

  return result;
}

BOOL WorkoutConfiguration.supportsSafetyCheckInPrompt.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v1 = v0;
    v2 = MultiSportWorkoutConfiguration.subConfigs.getter();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_19:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v7 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F30C990](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v11 = [v10 supportsSafetyCheckInPrompt];

      v12 = __OFADD__(v7, v11);
      v7 += v11;
      ++v6;
      if (v12)
      {
        goto LABEL_18;
      }
    }

    return v7 > 0;
  }

  else
  {
    v14 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v15 = [v14 supportsSafetyCheckInPrompt];

    return v15;
  }
}

uint64_t WorkoutSafetyCheckIn.showCheckInSessionButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() zelkovaWorkoutEnabled];
  type metadata accessor for SafetyMonitorCoordinator();
  v7 = static SafetyMonitorCoordinator.shared.getter();
  v8 = dispatch thunk of SafetyMonitorCoordinator.shouldDisallowBasedOnRegulatoryDomain.getter();

  v9 = 0;
  if (v6 && (v8 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((&v18 + 1));

    if (BYTE1(v18) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v18);

      v9 = v18;
    }

    else
    {
      v9 = 0;
    }
  }

  static WOLog.safety.getter();
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v17 = v3;
    v14 = v13;
    *v13 = 67110144;
    *(v13 + 4) = v9;
    *(v13 + 8) = 1024;
    *(v13 + 10) = v6;
    *(v13 + 14) = 1024;
    *(v13 + 16) = v8 & 1;
    *(v13 + 20) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((&v18 + 3));

    *(v14 + 22) = BYTE3(v18);

    *(v14 + 26) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((&v18 + 2));

    *(v14 + 28) = BYTE2(v18);

    _os_log_impl(&dword_20C66F000, v11, v12, "[SafetyCheckIn] showCheckInSessionButton: %{BOOL}d (Zelkova_Workout feature flag enabled: %{BOOL}d, shouldDisallowBasedOnRegulatoryDomain: %{BOOL}d, isMessagesAppInstalled: %{BOOL}d, isIMessageAccountEnabled: %{BOOL}d", v14, 0x20u);
    v15 = v14;
    v3 = v17;
    MEMORY[0x20F30E080](v15, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t WorkoutSafetyCheckIn.submitCheckInButtonDisplayedMetric()()
{
  v0 = type metadata accessor for MetricsManager.CheckInButtonNotDisplayedReason();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutSafetyCheckIn.showCheckInSessionButton.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((&v7 + 1));

  if (BYTE1(v7) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v7);

    if (v7 == 1)
    {
      v4 = MEMORY[0x277D4AF28];
    }

    else
    {
      v4 = MEMORY[0x277D4AF20];
    }

    (*(v1 + 104))(v3, *v4, v0);
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D4AF18], v0);
  }

  type metadata accessor for MetricsManager();
  static MetricsManager.submitFitnessCheckInButtonDisplayed(isDisplayed:notDisplayedReason:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutSafetyCheckIn@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutSafetyCheckIn(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t WorkoutSafetyCheckIn.onMessagesAppInstalled()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t closure #1 in WorkoutSafetyCheckIn.onMessagesAppInstalled()(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  result = static Published.subscript.setter();
  v3[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isMessageAppInstalledInitialized] = 1;
  if (v3[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isIMessageAccountEnabledInitialized] == 1)
  {
    return WorkoutSafetyCheckIn.submitCheckInButtonDisplayedMetric()();
  }

  return result;
}

void key path getter for WorkoutSafetyCheckIn.isMessagesAppInstalled : WorkoutSafetyCheckIn(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

uint64_t key path setter for WorkoutSafetyCheckIn.isMessagesAppInstalled : WorkoutSafetyCheckIn(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  result = static Published.subscript.setter();
  v11[*a7] = 1;
  if (v11[*a8] == 1)
  {
    return WorkoutSafetyCheckIn.submitCheckInButtonDisplayedMetric()();
  }

  return result;
}

uint64_t specialized static WorkoutSafetyCheckIn.isSafetyCheckInAvailable(for:)(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  if (a1 <= 0x14 && ((1 << a1) & 0x180500) != 0)
  {
    static WOLog.safety.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39 = v12;
      *v11 = 136315138;
      v13 = NLWorkoutStartSourceDescription();
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v37 = v15;
      v38 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v27 = Optional.description.getter();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v39);

      *(v11 + 4) = v30;
      _os_log_impl(&dword_20C66F000, v9, v10, "[SafetyCheckIn] unavailable for startSource: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F30E080](v12, -1, -1);
      MEMORY[0x20F30E080](v11, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return 0;
  }

  else
  {
    static WOLog.safety.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315138;
      v22 = NLWorkoutStartSourceDescription();
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v37 = v24;
      v38 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v32 = Optional.description.getter();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v39);

      *(v20 + 4) = v35;
      _os_log_impl(&dword_20C66F000, v18, v19, "[SafetyCheckIn] available for startSource: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F30E080](v21, -1, -1);
      MEMORY[0x20F30E080](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 1;
  }
}

uint64_t specialized static WorkoutSafetyCheckIn.isSafetyCheckInAvailable(for:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  LODWORD(v9) = WorkoutConfiguration.supportsSafetyCheckInPrompt.getter();
  if (v9)
  {
    static WOLog.safety.getter();
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42 = v9;
      v9 = v15;
      v43 = v15;
      *v13 = 136315394;
      type metadata accessor for MultiSportWorkoutConfiguration();
      v16 = swift_dynamicCastClass();
      v17 = v16 == 0;
      if (v16)
      {
        v18 = 0x707369746C756D20;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = 0xE000000000000000;
      }

      else
      {
        v19 = 0xEB0000000074726FLL;
      }

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v43);
      v41 = v2;
      v21 = v20;

      *(v13 + 4) = v21;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v10;
      v22 = v10;
      _os_log_impl(&dword_20C66F000, v11, v12, "[SafetyCheckIn] available for%s configuration: %@", v13, 0x16u);
      outlined destroy of NSObject?(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v9);
      v23 = v9;
      LOBYTE(v9) = v42;
      MEMORY[0x20F30E080](v23, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);

      (*(v3 + 8))(v8, v41);
      return v9 & 1;
    }

    v37 = *(v3 + 8);
    v38 = v8;
LABEL_20:
    v37(v38, v2);
    return v9 & 1;
  }

  static WOLog.safety.getter();
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v25, v26))
  {

    v37 = *(v3 + 8);
    v38 = v5;
    goto LABEL_20;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v42 = v9;
  v9 = v29;
  v43 = v29;
  *v27 = 136315394;
  type metadata accessor for MultiSportWorkoutConfiguration();
  v30 = swift_dynamicCastClass();
  v31 = v30 == 0;
  if (v30)
  {
    v32 = 0x707369746C756D20;
  }

  else
  {
    v32 = 0;
  }

  v41 = v2;
  if (v31)
  {
    v33 = 0xE000000000000000;
  }

  else
  {
    v33 = 0xEB0000000074726FLL;
  }

  v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v43);

  *(v27 + 4) = v34;
  *(v27 + 12) = 2112;
  *(v27 + 14) = v24;
  *v28 = v24;
  v35 = v24;
  _os_log_impl(&dword_20C66F000, v25, v26, "[SafetyCheckIn] unavailable for%s configuration: %@", v27, 0x16u);
  outlined destroy of NSObject?(v28);
  MEMORY[0x20F30E080](v28, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v36 = v9;
  LOBYTE(v9) = v42;
  MEMORY[0x20F30E080](v36, -1, -1);
  MEMORY[0x20F30E080](v27, -1, -1);

  (*(v3 + 8))(v5, v41);
  return v9 & 1;
}

unint64_t specialized static WorkoutSafetyCheckIn.isSafetyCheckInEnabled()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = MEMORY[0x20F30D310](v5);
  v9 = MEMORY[0x20F30D300]();
  v10 = v9;
  LODWORD(v11) = v8 | v9;
  static WOLog.safety.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v1;
    v37 = v15;
    v34 = v15;
    *v14 = 67110146;
    *(v14 + 4) = v11 & 1;
    *(v14 + 8) = 2080;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v11;
    v18 = v3;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v37);

    *(v14 + 10) = v19;
    *(v14 + 18) = 1024;
    *(v14 + 20) = v8;
    *(v14 + 24) = 2080;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);
    v3 = v18;

    *(v14 + 26) = v11;
    LOBYTE(v11) = v35;
    *(v14 + 34) = 1024;
    *(v14 + 36) = v10 & 1;
    _os_log_impl(&dword_20C66F000, v12, v13, "[SafetyCheckIn] enabled: %{BOOL}d, workout settings (%s: %{BOOL}d | %s: %{BOOL}d)", v14, 0x28u);
    v22 = v34;
    swift_arrayDestroy();
    v1 = v36;
    MEMORY[0x20F30E080](v22, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);
  }

  v23 = *(v1 + 1);
  v23(v7, v0);
  if (v10)
  {
    MEMORY[0x20F30D370](0);
    static WOLog.safety.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v3;
      v37 = v27;
      v28 = v27;
      *v26 = 136315138;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_20C66F000, v24, v25, "[SafetyCheckIn] disabled %s one time prompt", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x20F30E080](v28, -1, -1);
      MEMORY[0x20F30E080](v26, -1, -1);

      v32 = v36;
    }

    else
    {

      v32 = v3;
    }

    v23(v32, v0);
  }

  return v11 & 1;
}

double specialized WorkoutSafetyCheckIn.shouldDisplaySafetyCheckIn(for:startSource:startPoolSwim:completion:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v86 = a3;
  v87 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v83 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v83 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v83 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  if (![objc_opt_self() zelkovaWorkoutEnabled])
  {
    static WOLog.safety.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_20C66F000, v44, v45, "[SafetyCheckIn] disabled because Zelkova_Workout feature flag is disabled", v46, 2u);
      MEMORY[0x20F30E080](v46, -1, -1);
    }

    (*(v85 + 8))(v11, v84);
    type metadata accessor for DispatchUtilities();
    v47 = swift_allocObject();
    *(v47 + 16) = v86;
    *(v47 + 24) = v87;

    goto LABEL_28;
  }

  if (![*(v5 + OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_appDeletionManager) isMessagesAppInstalled])
  {
    static WOLog.safety.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_20C66F000, v48, v49, "[SafetyCheckIn] disabled because Messages app is not installed", v50, 2u);
      MEMORY[0x20F30E080](v50, -1, -1);
    }

    (*(v85 + 8))(v14, v84);
    type metadata accessor for DispatchUtilities();
    v51 = swift_allocObject();
    *(v51 + 16) = v86;
    *(v51 + 24) = v87;

    goto LABEL_28;
  }

  if ((specialized static WorkoutSafetyCheckIn.isSafetyCheckInAvailable(for:)(a2) & 1) == 0)
  {
    static WOLog.safety.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v94 = v55;
      *v54 = 136315138;
      v56 = NLWorkoutStartSourceDescription();
      if (v56)
      {
        v57 = v56;
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      aBlock = v58;
      v89 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v74 = Optional.description.getter();
      v76 = v75;

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v94);

      *(v54 + 4) = v77;
      _os_log_impl(&dword_20C66F000, v52, v53, "[SafetyCheckIn] prompt is not available for startSource: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x20F30E080](v55, -1, -1);
      MEMORY[0x20F30E080](v54, -1, -1);
    }

    (*(v85 + 8))(v17, v84);
    type metadata accessor for DispatchUtilities();
    v78 = swift_allocObject();
    *(v78 + 16) = v86;
    *(v78 + 24) = v87;

    goto LABEL_28;
  }

  if ((specialized static WorkoutSafetyCheckIn.isSafetyCheckInAvailable(for:)(a1) & 1) == 0)
  {
    static WOLog.safety.getter();
    v61 = a1;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315138;
      v66 = WorkoutConfiguration.logString.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &aBlock);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_20C66F000, v62, v63, "[SafetyCheckIn] prompt is not available for configuration: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x20F30E080](v65, -1, -1);
      MEMORY[0x20F30E080](v64, -1, -1);
    }

    (*(v85 + 8))(v20, v84);
    type metadata accessor for DispatchUtilities();
    v69 = swift_allocObject();
    *(v69 + 16) = v86;
    *(v69 + 24) = v87;

    goto LABEL_28;
  }

  if ((specialized static WorkoutSafetyCheckIn.isSafetyCheckInEnabled()() & 1) == 0)
  {
    static WOLog.safety.getter();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_20C66F000, v70, v71, "[SafetyCheckIn] prompt is not enabled in workout settings", v72, 2u);
      MEMORY[0x20F30E080](v72, -1, -1);
    }

    (*(v85 + 8))(v23, v84);
    type metadata accessor for DispatchUtilities();
    v73 = swift_allocObject();
    *(v73 + 16) = v86;
    *(v73 + 24) = v87;

    goto LABEL_28;
  }

  v30 = *(v5 + OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_sessionManager);
  if (!v30)
  {
    static WOLog.safety.getter();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_20C66F000, v79, v80, "[SafetyCheckIn] prompt is not available because session manager is not initialized", v81, 2u);
      MEMORY[0x20F30E080](v81, -1, -1);
    }

    (*(v85 + 8))(v26, v84);
    type metadata accessor for DispatchUtilities();
    v82 = swift_allocObject();
    *(v82 + 16) = v86;
    *(v82 + 24) = v87;

LABEL_28:
    static DispatchUtilities.ensureMainQueueOrAsync(block:)();

    return result;
  }

  v31 = v30;
  static WOLog.safety.getter();
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v35 = 136315138;
    v37 = WorkoutConfiguration.logString.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &aBlock);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_20C66F000, v33, v34, "[SafetyCheckIn] prompt is available and enabled, fetching current session state, configuration: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x20F30E080](v36, -1, -1);
    MEMORY[0x20F30E080](v35, -1, -1);
  }

  (*(v85 + 8))(v29, v84);
  v40 = swift_allocObject();
  v41 = v87;
  *(v40 + 16) = v86;
  *(v40 + 24) = v41;
  v92 = partial apply for closure #7 in WorkoutSafetyCheckIn.shouldDisplaySafetyCheckIn(for:startSource:startPoolSwim:completion:);
  v93 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v89 = 1107296256;
  v90 = thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ();
  v91 = &block_descriptor_58;
  v42 = _Block_copy(&aBlock);

  [v31 fetchCurrentSessionStateWithHandler_];
  _Block_release(v42);

  return result;
}

double block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void type metadata completion function for WorkoutSafetyCheckIn(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id ActivityTypeRoom.init(activityType:activityMoveMode:activityPausedRingsObserver:healthStore:occurrenceStore:inferenceClient:isPresentingQuickWorkoutSwitch:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  type metadata accessor for WorkoutVoiceAvailabilityProvider();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08], MEMORY[0x277D7DC98]);
  *a8 = Environment.init<A>(_:)();
  *(a8 + 8) = v15 & 1;
  _sSo21FIUIFormattingManagerCMaTm_12(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
  *(a8 + 16) = EnvironmentObject.init()();
  *(a8 + 24) = v16;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  *(a8 + 56) = EnvironmentObject.init()();
  *(a8 + 64) = v17;
  *(a8 + 72) = a1;
  *(a8 + 80) = a2;
  v18 = type metadata accessor for ActivityTypeRoom(0);
  *(a8 + v18[12]) = a3;
  *(a8 + v18[13]) = a5;
  *(a8 + 88) = a4;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a4;
  v19[5] = a5;
  *(a8 + 32) = _s9WorkoutUI16ActivityTypeRoomV08activityD00F8MoveMode0F19PausedRingsObserver11healthStore010occurrenceM015inferenceClient017isPresentingQuickA6SwitchACSo011FIUIWorkoutcD0C_So010HKActivitygH0V0A4Core0cijK0CSo08HKHealthM0CAO0a23ConfigurationOccurrenceM0C19FitnessIntelligence09InferenceP0VSbtcfcAO0aY10DataSourceCycfu_TA_1;
  *(a8 + 40) = v19;
  *(a8 + 48) = 0;
  v20 = v18[11];
  v21 = type metadata accessor for InferenceClient();
  (*(*(v21 - 8) + 32))(a8 + v20, a6, v21);
  *(a8 + v18[14]) = a7;
  v22 = a1;
  v23 = a5;

  return a4;
}

uint64_t _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ActivityTypeRoom(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivityTypeRoom;
  if (!type metadata singleton initialization cache for ActivityTypeRoom)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t implicit closure #1 in ActivityTypeRoom.init(activityType:activityMoveMode:activityPausedRingsObserver:healthStore:occurrenceStore:inferenceClient:isPresentingQuickWorkoutSwitch:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  objc_allocWithZone(type metadata accessor for WorkoutConfigurationDataSource());
  v7 = a1;
  v8 = a3;
  v9 = a4;
  return WorkoutConfigurationDataSource.init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)();
}

id ActivityTypeRoom.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v69);
  v68 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v59 - v4;
  v5 = type metadata accessor for WorkoutConfigurationFilterType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v71 = type metadata accessor for InferenceClient();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityTypeRoomPhone(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV07WorkoutB021ActivityTypeRoomPhoneV_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV07WorkoutB021ActivityTypeRoomPhoneV_GMR);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  if (static Platform.current.getter())
  {
    swift_storeEnumTagMultiPayload();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ActivityTypeRoomPhone and conformance ActivityTypeRoomPhone, type metadata accessor for ActivityTypeRoomPhone, &protocol conformance descriptor for ActivityTypeRoomPhone);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v72 = v19;
    v74 = v21;
    v23 = *(v1 + 10);
    v60 = *(v1 + 9);
    v61 = v23;
    v24 = *(v1 + 11);
    v25 = type metadata accessor for ActivityTypeRoom(0);
    v26 = *&v1[*(v25 + 52)];
    v27 = *(v25 + 44);
    v73 = v11;
    v28 = *(v11 + 16);
    v62 = v26;
    v63 = v28;
    v64 = v13;
    v28(v13, &v1[v27], v71);
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08], MEMORY[0x277D7DC98]);
    v29 = v24;
    *v16 = Environment.init<A>(_:)();
    v16[8] = v30 & 1;
    _sSo21FIUIFormattingManagerCMaTm_12(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
    lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
    *(v16 + 2) = EnvironmentObject.init()();
    *(v16 + 3) = v31;
    *(v16 + 7) = implicit closure #2 in implicit closure #1 in variable initialization expression of ActivityTypeRoomPhone._devicesProvider;
    *(v16 + 8) = 0;
    v16[72] = 0;
    type metadata accessor for ConfigurationNavigationModel(0);
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    *(v16 + 10) = EnvironmentObject.init()();
    *(v16 + 11) = v32;
    (*(v6 + 104))(v10, *MEMORY[0x277D7DC30], v5);
    (*(v6 + 16))(v66, v10, v5);
    State.init(wrappedValue:)();
    (*(v6 + 8))(v10, v5);
    v33 = type metadata accessor for UUID();
    v34 = v67;
    (*(*(v33 - 8) + 56))(v67, 1, 1, v33);
    outlined init with copy of UUID?(v34, v68);
    State.init(wrappedValue:)();
    outlined destroy of UUID?(v34);
    v35 = v60;
    v36 = v61;
    *(v16 + 12) = v60;
    *(v16 + 13) = v36;
    *(v16 + 14) = v29;
    v37 = swift_allocObject();
    v37[2] = v35;
    v37[3] = v36;
    v38 = v35;
    v39 = v62;
    v37[4] = v29;
    v37[5] = v39;
    *(v16 + 4) = _s9WorkoutUI21ActivityTypeRoomPhoneV08activityD00G8MoveMode0G19PausedRingsObserver11healthStore010occurrenceN015inferenceClientACSo011FIUIWorkoutcD0C_So010HKActivityhI0V0A4Core0cjkL0CSo08HKHealthN0CAN0a23ConfigurationOccurrenceN0C19FitnessIntelligence09InferenceQ0VtcfcAN0aV10DataSourceCycfu_TA_0;
    *(v16 + 5) = v37;
    v16[48] = 0;
    v63(&v16[v14[12]], v64, v71);
    v40 = objc_opt_self();
    v41 = v38;
    v42 = v29;
    v43 = v41;
    v44 = v39;
    result = [v40 fiui:v43 supportedGoalTypesForActivityType:v36 activityMoveMode:?];
    if (result)
    {
      v45 = result;
      _sSo21FIUIFormattingManagerCMaTm_12(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v46 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {
        v49 = v73;
        v48 = v74;
        v68 = v16;
        v69 = v14;
        if (!i)
        {
          break;
        }

        v50 = 0;
        v16 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v51 = MEMORY[0x20F30C990](v50, v46);
          }

          else
          {
            if (v50 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v51 = *(v46 + 8 * v50 + 32);
          }

          v14 = v51;
          v52 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          v53 = [v51 unsignedIntegerValue];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v55 = *(v16 + 2);
          v54 = *(v16 + 3);
          v14 = (v55 + 1);
          if (v55 >= v54 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v16);
          }

          *(v16 + 2) = v14;
          *&v16[8 * v55 + 32] = v53;
          ++v50;
          v56 = v52 == i;
          v49 = v73;
          v48 = v74;
          if (v56)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

      v16 = MEMORY[0x277D84F90];
LABEL_21:

      (*(v49 + 8))(v64, v71);
      v57 = v68;
      *&v68[*(v69 + 60)] = v16;
      v58 = v65;
      outlined init with take of ActivityTypeRoomPhone(v57, v65);
      outlined init with copy of ActivityTypeRoomPhone(v58, v48);
      swift_storeEnumTagMultiPayload();
      _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ActivityTypeRoomPhone and conformance ActivityTypeRoomPhone, type metadata accessor for ActivityTypeRoomPhone, &protocol conformance descriptor for ActivityTypeRoomPhone);
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of ActivityTypeRoomPhone(v58);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t objectdestroyTm_81()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of ActivityTypeRoomPhone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityTypeRoomPhone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ActivityTypeRoomPhone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityTypeRoomPhone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ActivityTypeRoomPhone(uint64_t a1)
{
  v2 = type metadata accessor for ActivityTypeRoomPhone(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for ActivityTypeRoom(uint64_t a1)
{
  type metadata accessor for Environment<WorkoutVoiceAvailabilityProvider>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<FIUIFormattingManager>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StateObject<WorkoutConfigurationDataSource>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>(319);
        if (v4 <= 0x3F)
        {
          _sSo21FIUIFormattingManagerCMaTm_12(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
          if (v5 <= 0x3F)
          {
            type metadata accessor for HKActivityMoveMode(319);
            if (v6 <= 0x3F)
            {
              _sSo21FIUIFormattingManagerCMaTm_12(319, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
              if (v7 <= 0x3F)
              {
                type metadata accessor for InferenceClient();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ActivityPausedRingsObserver();
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for WorkoutConfigurationOccurrenceStore();
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<WorkoutVoiceAvailabilityProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<WorkoutVoiceAvailabilityProvider>)
  {
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<WorkoutVoiceAvailabilityProvider>);
    }
  }
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_12(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, ActivityTypeRoomPhone> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ActivityTypeRoomPhone> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ActivityTypeRoomPhone> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV07WorkoutB021ActivityTypeRoomPhoneVGMd, &_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV07WorkoutB021ActivityTypeRoomPhoneVGMR);
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ActivityTypeRoomPhone and conformance ActivityTypeRoomPhone, type metadata accessor for ActivityTypeRoomPhone, &protocol conformance descriptor for ActivityTypeRoomPhone);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ActivityTypeRoomPhone> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t WorkoutBuddyStatePublisher.State.iconName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x277D7DB80] && v7 != *MEMORY[0x277D7DB90])
  {
    (*(v3 + 8))(v6, v2);
  }

  return 0x6D726F6665766177;
}

void WorkoutBuddyStatePublisher.State.foregroundColor.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7DB80])
  {
    static Color.red.getter();
    return;
  }

  if (v7 == *MEMORY[0x277D7DB90] || v7 == *MEMORY[0x277D7DB88])
  {
    static Color.gray.getter();
    return;
  }

  v9 = [objc_opt_self() keyColors];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 nonGradientTextColor];

  if (!v11)
  {
LABEL_14:
    __break(1u);
    return;
  }

  Color.init(uiColor:)();
  (*(v3 + 8))(v6, v2);
}

uint64_t WorkoutBuddyStatePublisher.State.accessibilityDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7DB98])
  {
    v8 = "AX_WORKOUT_BUDDY_LOADING";
LABEL_5:
    v9 = v8 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v13 = v9 | 0x8000000000000000;
    v14 = 0xD000000000000018;
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277D7DBA0])
  {
    v8 = "AX_WORKOUT_BUDDY_TALKING";
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x277D7DBA8])
  {
    v15 = "AX_WORKOUT_BUDDY_DISCONNECTED";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v14 = 0xD00000000000001ALL;
  }

  else if (v7 == *MEMORY[0x277D7DB80])
  {
    v15 = "AX_WORKOUT_BUDDY_MUTED";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v14 = 0xD00000000000001DLL;
  }

  else if (v7 == *MEMORY[0x277D7DB90])
  {
    v15 = "AX_WORKOUT_BUDDY_NOT_AVAILABLE";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v14 = 0xD000000000000016;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
  }

  else
  {
    if (v7 != *MEMORY[0x277D7DB88])
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    v15 = "tEnabledInitialized";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v14 = 0xD00000000000001ELL;
  }

  v13 = v15 | 0x8000000000000000;
LABEL_25:
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, *&v11, v10, v16, *(&v20 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t SessionControl.dataLinkCommand.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  if (v3 <= 1)
  {
    if (*(v1 + 24))
    {
      v4 = MEMORY[0x277D7E030];
    }

    else
    {
      v4 = MEMORY[0x277D7E028];
    }

    goto LABEL_29;
  }

  if (*(v1 + 24) <= 3u)
  {
    if (v3 == 2)
    {
      v4 = MEMORY[0x277D7E018];
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (v3 != 5)
  {
    goto LABEL_36;
  }

  v5 = *v1;
  if (!(v1[1] | v1[2] | *v1))
  {
    goto LABEL_36;
  }

  if (v5 == 1 && *(v1 + 1) == 0)
  {
    v4 = MEMORY[0x277D7E000];
    goto LABEL_29;
  }

  if (v5 == 2 && *(v1 + 1) == 0)
  {
    v4 = MEMORY[0x277D7E040];
    goto LABEL_29;
  }

  if (v5 == 3 && *(v1 + 1) == 0)
  {
    v4 = MEMORY[0x277D7E010];
    goto LABEL_29;
  }

  if (v5 == 4 && *(v1 + 1) == 0)
  {
    v4 = MEMORY[0x277D7E008];
    goto LABEL_29;
  }

  if (v5 == 5 && *(v1 + 1) == 0)
  {
LABEL_36:
    while (1)
    {
LABEL_32:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v6 = *(v1 + 1) == 0 && v5 == 6;
  v4 = MEMORY[0x277D7E038];
  if (v6)
  {
    v4 = MEMORY[0x277D7E020];
  }

LABEL_29:
  v7 = *v4;
  v8 = type metadata accessor for DataLinkCommand();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

BOOL specialized static SessionControl.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v15[0] = *a1;
  v15[1] = v3;
  v15[2] = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v9 != 1)
        {
          goto LABEL_62;
        }

LABEL_20:
        outlined destroy of (SessionControl, SessionControl)(v15);
        return v2 == v6;
      }

      if (v9 == 2)
      {
        goto LABEL_20;
      }
    }

    else if (!v9)
    {
      goto LABEL_20;
    }

LABEL_62:
    outlined copy of SessionControl(v6, v7, v8, v9);
    outlined destroy of (SessionControl, SessionControl)(v15);
    return 0;
  }

  if (v5 != 3)
  {
    if (v5 != 4)
    {
      v12 = v4 | v3;
      if (v4 | v3 | v2)
      {
        if (v2 != 1 || v12)
        {
          if (v2 != 2 || v12)
          {
            if (v2 != 3 || v12)
            {
              if (v2 != 4 || v12)
              {
                if (v2 != 5 || v12)
                {
                  if (v2 != 6 || v12)
                  {
                    if (v9 != 5 || v6 != 7)
                    {
                      goto LABEL_62;
                    }
                  }

                  else if (v9 != 5 || v6 != 6)
                  {
                    goto LABEL_62;
                  }
                }

                else if (v9 != 5 || v6 != 5)
                {
                  goto LABEL_62;
                }
              }

              else if (v9 != 5 || v6 != 4)
              {
                goto LABEL_62;
              }
            }

            else if (v9 != 5 || v6 != 3)
            {
              goto LABEL_62;
            }
          }

          else if (v9 != 5 || v6 != 2)
          {
            goto LABEL_62;
          }
        }

        else if (v9 != 5 || v6 != 1)
        {
          goto LABEL_62;
        }

        if (v8 | v7)
        {
          goto LABEL_62;
        }
      }

      else if (v9 != 5 || v8 | v7 | v6)
      {
        goto LABEL_62;
      }

LABEL_61:
      outlined destroy of (SessionControl, SessionControl)(v15);
      return 1;
    }

    if (v9 == 4)
    {
      if (v2 != v6 || v3 != v7)
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of SessionControl(v6, v7, v8, 4u);
        outlined copy of SessionControl(v2, v3, v4, 4u);
        outlined destroy of (SessionControl, SessionControl)(v15);
        return v14 & 1;
      }

      outlined copy of SessionControl(v2, v3, v8, 4u);
      outlined copy of SessionControl(v2, v3, v4, 4u);
      goto LABEL_61;
    }

LABEL_18:
    v10 = v9;

    LOBYTE(v9) = v10;
    goto LABEL_62;
  }

  if (v9 != 3)
  {
    goto LABEL_18;
  }

  if (v2 == v6 && v3 == v7)
  {
    outlined copy of SessionControl(v2, v3, v8, 3u);
    outlined copy of SessionControl(v2, v3, v4, 3u);
    outlined destroy of (SessionControl, SessionControl)(v15);
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of SessionControl(v6, v7, v8, 3u);
    outlined copy of SessionControl(v2, v3, v4, 3u);
    outlined destroy of (SessionControl, SessionControl)(v15);
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  return v4 == v8;
}

unint64_t lazy protocol witness table accessor for type [SessionControl] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SessionControl] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SessionControl] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI14SessionControlOGMd, &_sSay9WorkoutUI14SessionControlOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SessionControl] and conformance [A]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9WorkoutUI14SessionControlO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for SessionControl(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionControl(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SessionControl(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t outlined destroy of (SessionControl, SessionControl)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14SessionControlO_ACtMd, &_s9WorkoutUI14SessionControlO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for GoalRingView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for GoalRingView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GoalRingView.makeUIView(context:)(double a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for ARUIRingsViewWrapper();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage] = 0;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_storedRingsView] = 0;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal] = a5;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_diameter] = a1;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_thickness] = a2;
  *&v10[v11] = a3;
  v17.receiver = v10;
  v17.super_class = v9;
  v12 = a5;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ARUIRingsViewWrapper.resetRingsView()();
  v14 = [objc_opt_self() clearColor];
  v15 = UIView.backgroundColor(_:)();

  return v15;
}

void GoalRingView.updateUIView(_:context:)(uint64_t a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v9 = *(a1 + OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal);
  *(a1 + OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal) = a6;
  type metadata accessor for NLSessionActivityGoal();
  v10 = a6;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    ARUIRingsViewWrapper.resetRingsView()();
  }

  *(a1 + OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage) = a4;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = partial apply for closure #1 in ARUIRingsViewWrapper.setCompletionPercentage(animated:);
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_38;
  v13 = _Block_copy(v14);

  [v11 animateWithDuration:v13 animations:4 curve:0 completion:1.0];
  _Block_release(v13);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GoalRingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GoalRingView and conformance GoalRingView();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance GoalRingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GoalRingView and conformance GoalRingView();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance GoalRingView(uint64_t a1)
{
  lazy protocol witness table accessor for type GoalRingView and conformance GoalRingView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double RaceRowConstants.verticalClippedHeight.getter(uint64_t a1)
{
  static Platform.current.getter();
  v2 = Platform.rawValue.getter();
  if (v2 == Platform.rawValue.getter())
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;
  }

  else
  {
    v5 = 62.0;
  }

  static Platform.current.getter();
  v6 = Platform.rawValue.getter();
  if (v6 == Platform.rawValue.getter())
  {
    v7 = [objc_opt_self() mainScreen];
    [v7 bounds];
    v9 = v8;
  }

  else
  {
    v9 = 62.0;
  }

  return v1[6] + v1[2] / *v1 * (v5 * (v1[2] / v1[3])) + v1[5] / *v1 * (v9 * (v1[2] / v1[3]));
}

double specialized RaceRowConstants.init()@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for snapshotTotalHeight != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = static RaceRouteSnapshotConstants.snapshotTotalHeight;
  if (one-time initialization token for snapshotTotalWidth != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static RaceRouteSnapshotConstants.snapshotTotalWidth;
  if (one-time initialization token for snapshotRouteHeight != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v3 = static RaceRouteSnapshotConstants.snapshotRouteHeight;
  if (one-time initialization token for snapshotRouteWidth != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v4 = static RaceRouteSnapshotConstants.snapshotRouteWidth;
  if (one-time initialization token for snapshotRouteTopPadding != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v5 = static RaceRouteSnapshotConstants.snapshotRouteTopPadding;
  if (one-time initialization token for snapshotRouteBottomPadding != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v6 = static RaceRouteSnapshotConstants.snapshotRouteBottomPadding;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = 8.5;
  *(a1 + 48) = xmmword_20CB87A90;
  return result;
}

uint64_t getEnumTagSinglePayload for RaceRowConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RaceRowConstants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t static MirroredStartProvider.shared.getter()
{
  started = type metadata accessor for MirroredStartProvider();

  return MEMORY[0x2821FEAF0](started, &unk_27C7DDD78);
}

void specialized MirroredStartProvider.supportsMirroredStart.getter()
{
  v29 = type metadata accessor for WorkoutDeviceType();
  v0 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v27 = &v20 - v3;
  v4 = type metadata accessor for WorkoutDevice();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutFeatures();
  v31[3] = v7;
  v31[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DDB0], v7);
  LOBYTE(v7) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v31);
  if ((v7 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    type metadata accessor for WorkoutDevicesProvider();
    v9 = static WorkoutDevicesProvider.shared.getter();
    v10 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

    v26 = *(v10 + 16);
    if (v26)
    {
      v11 = 0;
      v25 = v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v24 = v30 + 16;
      v23 = *MEMORY[0x277D7D9D8];
      v12 = (v0 + 8);
      v21 = (v30 + 8);
      v22 = (v0 + 104);
      while (v11 < *(v10 + 16))
      {
        (*(v30 + 16))(v6, v25 + *(v30 + 72) * v11, v4);
        v13 = v27;
        WorkoutDevice.type.getter();
        v15 = v28;
        v14 = v29;
        (*v22)(v28, v23, v29);
        v16 = static WorkoutDeviceType.== infix(_:_:)();
        v17 = v4;
        v18 = *v12;
        (*v12)(v15, v14);
        v18(v13, v14);
        if (v16)
        {
          v19 = WorkoutDevice.isTestDevice.getter();
          (*v21)(v6, v17);
          v4 = v17;
          if ((v19 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          (*v21)(v6, v17);
          v4 = v17;
        }

        if (v26 == ++v11)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
    }
  }
}

unint64_t lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures()
{
  result = lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures)
  {
    type metadata accessor for WorkoutFeatures();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceCroppedMapView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for RaceCroppedMapView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 closure #1 in RaceCroppedMapView.body.getter@<Q0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  GeometryProxy.size.getter();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v7 = Image.resizable(capInsets:resizingMode:)();
  (*(v4 + 8))(v6, v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18.n128_u8[0] = 1;
  *&v14[6] = v15;
  *&v14[22] = v16;
  *&v14[38] = v17;
  GeometryProxy.size.getter();
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  GeometryProxy.size.getter();
  static Alignment.bottom.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = *&v14[16];
  *(a2 + 18) = *v14;
  *(a2 + 34) = v8;
  *(a2 + 50) = *&v14[32];
  *(a2 + 64) = *&v14[46];
  v9 = v20;
  *(a2 + 72) = v21[0];
  v10 = v21[2];
  *(a2 + 88) = v21[1];
  *(a2 + 104) = v10;
  result = v18;
  v12 = v19;
  *(a2 + 152) = v9;
  *(a2 + 136) = v12;
  *(a2 + 120) = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance RaceCroppedMapView@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v11[3] = *(v1 + 48);
  v11[4] = v4;
  v12 = *(v1 + 80);
  v5 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v5;
  v11[2] = v3;
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  *a1 = partial apply for closure #1 in RaceCroppedMapView.body.getter;
  a1[1] = v6;
  return outlined init with copy of RaceCroppedMapView(v11, v10);
}

unint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, _FrameLayout>> and conformance GeometryReader<A>()
{
  result = lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, _FrameLayout>> and conformance GeometryReader<A>;
  if (!lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, _FrameLayout>> and conformance GeometryReader<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGALGALGGMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGALGALGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, _FrameLayout>> and conformance GeometryReader<A>);
  }

  return result;
}

id ContributorBridge.__allocating_init(contributor:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___SMContributor_contributor;
  v5 = type metadata accessor for Contributor();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id ContributorBridge.init(contributor:)(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR___SMContributor_contributor;
  v5 = type metadata accessor for Contributor();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v2[v4], a1, v5);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ContributorBridge(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t type metadata accessor for ContributorBridge(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContributorBridge;
  if (!type metadata singleton initialization cache for ContributorBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @objc ContributorBridge.identifier.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x20F30BAD0](v5, v7);

  return v8;
}

uint64_t ContributorBridge.role.getter(uint64_t a1)
{
  result = Contributor.role.getter();
  if ((v3 & 1) == 0)
  {
    outlined consume of PortableEnum<ContributorRole>(result, v2, 0);
    return 6;
  }

  return result;
}

id ContributorBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContributorBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContributorBridge(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for ContributorBridge(uint64_t a1)
{
  result = type metadata accessor for Contributor();
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

void static WorkoutChartColors.elevation()(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 elevationColors];
  v4 = [v3 valueDisplayColor];

  v5 = [v2 elevationColors];
  v6 = [v5 nonGradientTextColor];

  if (v6)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.250980392 green:0.250980392 blue:0.250980392 alpha:1.0];
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
    *a1 = v4;
    a1[1] = v6;
    a1[2] = v7;
    a1[3] = v8;
    a1[5] = 0;
    a1[6] = 0;
    a1[4] = 0;
  }

  else
  {
    __break(1u);
  }
}

void static WorkoutChartColors.power()(void *a1@<X8>)
{
  v2 = [objc_opt_self() whiteColor];
  v3 = [objc_opt_self() powerColors];
  v4 = [v3 nonGradientTextColor];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.250980392 green:0.250980392 blue:0.250980392 alpha:1.0];
    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
    v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.490196078 green:0.596078431 blue:0.0 alpha:0.1];
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:0.53];
    v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.301960784 green:0.474509804 blue:0.0 alpha:1.0];
    *a1 = v2;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
    a1[4] = v7;
    a1[5] = v8;
    a1[6] = v9;
  }

  else
  {
    __break(1u);
  }
}

id WorkoutChartColors.highlightColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *WorkoutChartColors.gradientStartColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *WorkoutChartColors.gradientEndColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *WorkoutChartColors.lineMarkColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t getEnumTagSinglePayload for WorkoutChartColors(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for WorkoutChartColors(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutConfigurationThumbnailView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationThumbnailView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WorkoutConfigurationThumbnailView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA6VStackVyAIyAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0N0VSgFQOyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA0_yAUSgGG_Qo_A4_GAA12_ScaleEffectVG_ANyAIyAPyAA4TextVA0_ySiSgGG_APyAPyAA0F0VyAPyA18_A0_yAZ0V0OGGSgGA7_GA4_GtGGtGGALtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA6VStackVyAIyAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0N0VSgFQOyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA0_yAUSgGG_Qo_A4_GAA12_ScaleEffectVG_ANyAIyAPyAA4TextVA0_ySiSgGG_APyAPyAA0F0VyAPyA18_A0_yAZ0V0OGGSgGA7_GA4_GtGGtGGALtGGMR);
  closure #1 in WorkoutConfigurationThumbnailView.body.getter(a1, a2, a3, a4, (a5 + *(v10 + 44)));
  LOBYTE(a4) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGMR) + 36);
  *v19 = a4;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  LOBYTE(a4) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GMR) + 36);
  *v28 = a4;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  LOBYTE(a4) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GMR) + 36);
  *v37 = a4;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  LOBYTE(a4) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GMR) + 36);
  *v46 = a4;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v47 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGMR) + 36));
  *v47 = v51;
  v47[1] = v52;
  v47[2] = v53;
  WorkoutConfiguration.displayThumbnailColor.getter();
  v48 = Color.init(uiColor:)();
  LOBYTE(a4) = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGAA016_BackgroundStyleQ0VyAZGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGAA016_BackgroundStyleQ0VyAZGGMR);
  v50 = a5 + *(result + 36);
  *v50 = v48;
  *(v50 + 8) = a4;
  return result;
}

uint64_t closure #1 in WorkoutConfigurationThumbnailView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v40 = a1;
  v47 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMR);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-v8];
  MEMORY[0x28223BE20](v10);
  v45 = &v36[-v11];
  v12 = type metadata accessor for Locale.Language();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Locale.current.getter();
  Locale.language.getter();
  v20 = *(v17 + 8);
  v20(v19, v16);
  v38 = Locale.Language.characterDirection.getter();
  v21 = *(v13 + 8);
  v21(v15, v12);
  static Locale.current.getter();
  Locale.language.getter();
  v39 = v20;
  v20(v19, v16);
  v22 = Locale.Language.characterDirection.getter();
  v41 = v12;
  v21(v15, v12);
  if (v22 == 2)
  {
    v23 = static HorizontalAlignment.trailing.getter();
  }

  else
  {
    v23 = static HorizontalAlignment.leading.getter();
  }

  v37 = v38 == 2;
  LODWORD(v38) = v38 != 2;
  *v9 = v23;
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAWyAPSgGG_Qo_A_GAA12_ScaleEffectVG_AA0F0VyAIyAKyAA4TextVAWySiSgGG_AKyAKyAA6HStackVyAKyA15_AWyAU0T0OGGSgGA2_GA_GtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAWyAPSgGG_Qo_A_GAA12_ScaleEffectVG_AA0F0VyAIyAKyAA4TextVAWySiSgGG_AKyAKyAA6HStackVyAKyA15_AWyAU0T0OGGSgGA2_GA_GtGGtGGMR);
  closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter(v40, v42, v43, v44, &v9[*(v24 + 44)]);
  v25 = v9;
  v26 = v45;
  outlined init with take of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v25, v45, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMR);
  static Locale.current.getter();
  Locale.language.getter();
  v39(v19, v16);
  v27 = Locale.Language.characterDirection.getter();
  v21(v15, v41);
  v28 = v27 == 2;
  v29 = v27 != 2;
  v30 = v46;
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v26, v46, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMR);
  v31 = v47;
  *v47 = 0;
  v32 = v38;
  *(v31 + 8) = v37;
  *(v31 + 9) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSg_AA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAJyAA0F0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAOSgGG_Qo_AZGAA12_ScaleEffectVG_AFyAHyAJyAA4TextVAVySiSgGG_AJyAJyAA6HStackVyAJyA12_AVyAT0R0OGGSgGA1_GAZGtGGtGGADtMd, &_s7SwiftUI6SpacerVSg_AA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAJyAA0F0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAOSgGG_Qo_AZGAA12_ScaleEffectVG_AFyAHyAJyAA4TextVAVySiSgGG_AJyAJyAA6HStackVyAJyA12_AVyAT0R0OGGSgGA1_GAZGtGGtGGADtMR);
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v30, v31 + *(v33 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMR);
  v34 = v31 + *(v33 + 64);
  *v34 = 0;
  v34[8] = v29;
  v34[9] = v28;
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v26, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMR);
  return outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v30, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMR);
}

id closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = (&v75 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v18 = type metadata accessor for Locale.Language();
  v87 = *(v18 - 8);
  v88 = v18;
  MEMORY[0x28223BE20](v18);
  v83 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  v84 = *(v20 - 8);
  v85 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v75 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGMR);
  MEMORY[0x28223BE20](v79);
  v82 = &v75 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMR);
  MEMORY[0x28223BE20](v81);
  v89 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v80 = &v75 - v29;
  v31 = MEMORY[0x28223BE20](v30);
  v86 = &v75 - v32;
  v33 = [a1 symbolName];
  v92 = a5;
  v93 = v12;
  v78 = v17;
  v77 = a4;
  v76 = a3;
  v91 = a1;
  if (v33)
  {
    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = Image.init(systemName:)();
  }

  else
  {
    result = FIUIStaticWorkoutIconImage();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v37 = result;
    v38 = [result imageWithRenderingMode_];

    v35 = Image.init(uiImage:)();
  }

  v39 = v35;
  WorkoutConfiguration.displayColor.getter();
  v40 = Color.init(uiColor:)();
  v94 = a2;
  v41 = v40;
  KeyPath = swift_getKeyPath();
  v43 = type metadata accessor for Font.Design();
  (*(*(v43 - 8) + 56))(v25, 1, 1, v43);
  v44 = static Font.system(size:weight:design:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v25, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v45 = swift_getKeyPath();
  v95 = v39;
  v96 = KeyPath;
  v97 = v41;
  v98 = v45;
  v99 = v44;
  static Font.Weight.regular.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v46 = v82;
  View.fontWeight(_:)();

  WorkoutConfiguration.displayColor.getter();
  v47 = Color.init(uiColor:)();
  v48 = swift_getKeyPath();
  v49 = (v46 + *(v79 + 36));
  *v49 = v48;
  v49[1] = v47;
  static Locale.current.getter();
  v50 = v83;
  Locale.language.getter();
  v51 = v85;
  v84 = *(v84 + 8);
  (v84)(v22, v85);
  v52 = Locale.Language.characterDirection.getter();
  v53 = v88;
  v54 = *(v87 + 8);
  v54(v50, v88);
  if (v52 == 2)
  {
    v55 = -1.0;
  }

  else
  {
    v55 = 1.0;
  }

  static UnitPoint.center.getter();
  v57 = v56;
  v59 = v58;
  v60 = v80;
  outlined init with take of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v46, v80, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGMR);
  v61 = v60 + *(v81 + 36);
  *v61 = v55;
  *(v61 + 8) = 0x3FF0000000000000;
  *(v61 + 16) = v57;
  *(v61 + 24) = v59;
  v62 = v86;
  outlined init with take of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v60, v86, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMR);
  static Locale.current.getter();
  Locale.language.getter();
  (v84)(v22, v51);
  v63 = Locale.Language.characterDirection.getter();
  v54(v50, v53);
  if (v63 == 2)
  {
    v64 = static HorizontalAlignment.trailing.getter();
  }

  else
  {
    v64 = static HorizontalAlignment.leading.getter();
  }

  v65 = v78;
  v66 = v77;
  v67 = v76;
  v68 = v90;
  *v90 = v64;
  *(v68 + 8) = 0;
  *(v68 + 16) = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AKyAKyAA6HStackVyAKyArOyAA5ImageV5ScaleOGGSgGAOyAA4FontVSgGGAOyAA5ColorVSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AKyAKyAA6HStackVyAKyArOyAA5ImageV5ScaleOGGSgGAOyAA4FontVSgGGAOyAA5ColorVSgGGtGGMR);
  closure #1 in closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter(v91, v94, v67, v66, (v68 + *(v69 + 44)));
  outlined init with take of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v68, v65, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMR);
  v70 = v89;
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v62, v89, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMR);
  v71 = v62;
  v72 = v93;
  outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v65, v93, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMR);
  v73 = v92;
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v70, v92, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMR);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVG_AA6VStackVyAA05TupleE0VyACyAA4TextVAOySiSgGG_ACyACyAA6HStackVyACyA9_AOyAM0O0OGGSgGAVGASGtGGtMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVG_AA6VStackVyAA05TupleE0VyACyAA4TextVAOySiSgGG_ACyACyAA6HStackVyACyA9_AOyAM0O0OGGSgGAVGASGtGGtMR);
  outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v72, v73 + *(v74 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMR);
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v65, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMR);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v71, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMR);
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v72, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMR);
  return outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v70, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMR);
}

void closure #1 in closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v58 = a3;
  v59 = a4;
  v57 = a2;
  v5 = a1;
  v55 = a1;
  v64 = a5;
  v6 = type metadata accessor for Font.PrivateDesign();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMR) - 8;
  MEMORY[0x28223BE20](v63);
  v62 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53[-v14];
  v16 = [v5 localizedName];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v65 = v17;
  v66 = v19;
  lazy protocol witness table accessor for type String and conformance String();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v5) = v23;
  v24 = type metadata accessor for Font.Design();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  static Font.system(size:weight:design:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v15, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v20, v22, v5 & 1);

  static Font.Weight.bold.getter();
  v30 = Text.fontWeight(_:)();
  v32 = v31;
  LOBYTE(v5) = v33;
  outlined consume of Text.Storage(v25, v27, v29 & 1);

  static Color.white.getter();
  v34 = Text.foregroundColor(_:)();
  v36 = v35;
  v54 = v37;
  v39 = v38;

  outlined consume of Text.Storage(v30, v32, v5 & 1);

  KeyPath = swift_getKeyPath();
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGSgGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGSgGMR);
  closure #1 in closure #1 in closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter(v58, v59, &v11[*(v41 + 44)]);
  static Font.Weight.medium.getter();
  v42 = v56;
  static Font.PrivateDesign.compact.getter();
  v43 = static Font.system(size:weight:design:)();
  (*(v60 + 8))(v42, v61);
  v44 = swift_getKeyPath();
  v45 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGMR) + 36)];
  *v45 = v44;
  v45[1] = v43;
  WorkoutConfiguration.displayColor.getter();
  v46 = Color.init(uiColor:)();
  v47 = swift_getKeyPath();
  v48 = v62;
  v49 = &v11[*(v63 + 44)];
  *v49 = v47;
  v49[1] = v46;
  outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v11, v48, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMR);
  v50 = v64;
  *v64 = v34;
  v50[1] = v36;
  LOBYTE(v46) = v54 & 1;
  *(v50 + 16) = v54 & 1;
  v50[3] = v39;
  v50[4] = KeyPath;
  v50[5] = 0;
  *(v50 + 48) = 1;
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyACyAA6HStackVyACyAjGyAA5ImageV5ScaleOGGSgGAGyAA4FontVSgGGAGyAA5ColorVSgGGtMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyACyAA6HStackVyACyAjGyAA5ImageV5ScaleOGGSgGAGyAA4FontVSgGGAGyAA5ColorVSgGGtMR);
  outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v48, v51 + *(v52 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMR);
  outlined copy of Text.Storage(v34, v36, v46);

  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v11, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMR);
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v48, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMR);
  outlined consume of Text.Storage(v34, v36, v46);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter@<X0>(uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA5ImageV5ScaleOGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v11);
  if (a3)
  {
    v37 = &v37 - v13;
    v38 = v12;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
    type metadata accessor for RaceWorkoutConfiguration();
    v16 = swift_dynamicCastClass();
    v39 = a4;
    if (!v16)
    {
      type metadata accessor for MultiSportWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        _HKWorkoutGoalType.symbolName.getter();
      }

      else
      {
        WorkoutConfiguration.displaySymbolName.getter();
      }
    }

    Image.init(_internalSystemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
    v20._countAndFlagsBits = a2;
    v20._object = a3;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v20);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
    LocalizedStringKey.init(stringInterpolation:)();
    v22 = Text.init(_:tableName:bundle:comment:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    KeyPath = swift_getKeyPath();
    v30 = &v10[*(v8 + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v32 = *MEMORY[0x277CE1050];
    v33 = type metadata accessor for Image.Scale();
    (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
    *v30 = swift_getKeyPath();
    *v10 = v22;
    *(v10 + 1) = v24;
    v10[16] = v26 & 1;
    *(v10 + 3) = v28;
    *(v10 + 4) = KeyPath;
    *(v10 + 5) = 0;
    v10[48] = 1;
    v34 = v37;
    outlined init with take of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v10, v37, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA5ImageV5ScaleOGGMR);
    v35 = v34;
    v36 = v39;
    outlined init with take of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v35, v39, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA5ImageV5ScaleOGGMR);
    return (*(v38 + 56))(v36, 0, 1, v8);
  }

  else
  {
    v17 = *(v12 + 56);

    return v17(a4, 1, 1, v8, v14);
  }
}

uint64_t outlined init with take of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_12(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGAA016_BackgroundStyleQ0VyAZGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGAA016_BackgroundStyleQ0VyAZGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGMR);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAEyAA15ModifiedContentVyALyAA0E0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_AJyAEyALyAA4TextVAXySiSgGG_ALyALyACyALyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAHtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAEyAA15ModifiedContentVyALyAA0E0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_AJyAEyALyAA4TextVAXySiSgGG_ALyALyACyALyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAHtGGMR, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_3(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SessionCurrentView.description.getter()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0x567972616D6D7573;
  v4 = 0x6174537472656C61;
  if (v1 != 4)
  {
    v4 = 0x6F69737365536E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x776F64746E756F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int SessionCurrentView.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SessionCurrentView()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SessionCurrentView(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SessionCurrentView and conformance SessionCurrentView()
{
  result = lazy protocol witness table cache variable for type SessionCurrentView and conformance SessionCurrentView;
  if (!lazy protocol witness table cache variable for type SessionCurrentView and conformance SessionCurrentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionCurrentView and conformance SessionCurrentView);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SessionCurrentView()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0x567972616D6D7573;
  v4 = 0x6174537472656C61;
  if (v1 != 4)
  {
    v4 = 0x6F69737365536E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x776F64746E756F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for SessionCurrentView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionCurrentView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 AlertConfigurationView.init(viewModel:activityType:formattingManager:workoutConfiguration:activityMoveMode:sessionContext:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a5;
  v55 = a7;
  v56 = a4;
  v11 = type metadata accessor for AlertConfigurationContext();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v51);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v42 - v16);
  v18 = type metadata accessor for AlertConfigurationSessionContext();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v21;
  if (a1)
  {
    v25 = v56;
    v26 = a1;
  }

  else
  {
    v45 = v13;
    v46 = v11;
    v47 = 0;
    v27 = a6;
    v28 = *(v19 + 16);
    v29 = v22;
    v50 = v27;
    v28(&v42 - v21, v23);
    type metadata accessor for ActivityPersistingViewModel(0);
    swift_allocObject();
    v44 = v56;
    v48 = a2;
    v30 = a2;
    v49 = a3;
    v43 = a3;
    *v17 = specialized ActivityPersistingViewModel.init(activityType:formattingManager:)(v30, v43);
    swift_storeEnumTagMultiPayload();
    (v28)(v29, v24, v18);
    type metadata accessor for AlertConfigurationViewModel(0);
    v26 = swift_allocObject();
    ObservationRegistrar.init()();
    (*(v19 + 8))(v24, v18);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v17, v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    v31 = v43;
    *(v26 + 16) = v30;
    *(v26 + 24) = v31;
    v32 = v52;
    outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v17, v52, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd, &_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMR) + 48);
      v34 = type metadata accessor for ConfigurationType();
      v35 = v45;
      (*(*(v34 - 8) + 32))(v45, v32 + v33, v34);
      v36 = MEMORY[0x277D7E4B8];
      v37 = v46;
      v38 = v53;
    }

    else
    {
      _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v32, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
      v36 = MEMORY[0x277D7E4C0];
      v37 = v46;
      v38 = v53;
      v35 = v45;
    }

    (*(v38 + 104))(v35, *v36, v37);
    (*(v38 + 32))(v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v35, v37);
    *(v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration) = v56;
    *(v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) = v54;
    (*(v19 + 32))(v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v29, v18);
    a3 = v49;
    a6 = v50;
    a2 = v48;
    v25 = v44;
  }

  AlertConfigurationView.init(viewModel:)(v26, v57);

  (*(v19 + 8))(a6, v18);
  v39 = v57[3];
  v40 = v55;
  *(v55 + 32) = v57[2];
  *(v40 + 48) = v39;
  *(v40 + 64) = v57[4];
  result = v57[1];
  *v40 = v57[0];
  *(v40 + 16) = result;
  return result;
}

void AlertConfigurationView.init(viewModel:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TargetZone.PrimaryType();
  v71 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v63 - v7;
  MEMORY[0x28223BE20](v8);
  v67 = &v63 - v9;
  MEMORY[0x28223BE20](v10);
  v82 = &v63 - v11;
  MEMORY[0x28223BE20](v12);
  v68 = &v63 - v13;
  MEMORY[0x28223BE20](v14);
  v84 = &v63 - v15;
  MEMORY[0x28223BE20](v16);
  v83 = &v63 - v17;
  v86 = type metadata accessor for TargetZone.ZoneType();
  v69 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v76 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v77 = &v63 - v20;
  MEMORY[0x28223BE20](v21);
  v78 = &v63 - v22;
  v23 = type metadata accessor for AlertConfigurationContext();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PowerZonesEntryViewModelCSgMd, &_s9WorkoutUI24PowerZonesEntryViewModelCSgMR);
  State.init(wrappedValue:)();
  v28 = v90;
  v27 = v91;
  v29 = *(a1 + 16);

  v30 = v29;
  v31 = FIUIWorkoutActivityType.supportsPowerZoneAlerts()();

  if (v31)
  {
    (*(v24 + 16))(v26, a1 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v23);
    type metadata accessor for PowerZonesEntryViewModel(0);
    swift_allocObject();
    v32 = PowerZonesEntryViewModel.init(configurationContext:)(v26);

    v27 = 0;
    v28 = v32;
  }

  v33 = AlertConfigurationViewModel.readTargetZones()();
  v34 = v33;
  v70 = a1;
  v66 = a2;
  v64 = v28;
  if (v33 >> 62)
  {
    goto LABEL_61;
  }

  v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  LODWORD(v79) = *MEMORY[0x277D7DEC0];
  v65 = v27;
  if (v35)
  {
    v36 = 0;
    v74 = v34 & 0xFFFFFFFFFFFFFF8;
    v75 = (v34 & 0xC000000000000001);
    v72 = (v71 + 104);
    v73 = (v69 + 8);
    v37 = (v71 + 8);
    do
    {
      if (v75)
      {
        v38 = MEMORY[0x20F30C990](v36, v34);
        v27 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v36 >= *(v74 + 16))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v35 = __CocoaSet.count.getter();
          goto LABEL_5;
        }

        v27 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_17;
        }
      }

      v39 = v78;
      v85 = v38;
      TargetZone.type.getter();
      TargetZone.ZoneType.primaryType.getter();
      (*v73)(v39, v86);
      v87 = *v72;
      v87(v84, v79, v4);
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8], MEMORY[0x277D7DEE0]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v90 == v88 && v91 == v89)
      {
        v41 = *v37;
        (*v37)(v84, v4);
        v41(v83, v4);

LABEL_20:

        goto LABEL_21;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = *v37;
      (*v37)(v84, v4);
      v41(v83, v4);

      if (v40)
      {
        goto LABEL_20;
      }

      ++v36;
    }

    while (v27 != v35);
  }

  v42 = v71;
  v43 = v68;
  v87 = *(v71 + 104);
  v87(v68, v79, v4);
  v85 = specialized static AlertConfigurationView.defaultTargetZone(primaryType:configurationContext:)(v43, v70 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext);
  v41 = *(v42 + 8);
  v41(v43, v4);
LABEL_21:
  v34 = v67;
  v44 = AlertConfigurationViewModel.readTargetZones()();
  v27 = v44;
  if (v44 >> 62)
  {
    v45 = __CocoaSet.count.getter();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v83) = *MEMORY[0x277D7DED0];
  if (v45)
  {
    v46 = 0;
    v78 = (v27 & 0xFFFFFFFFFFFFFF8);
    v79 = v27 & 0xC000000000000001;
    v72 = (v71 + 104);
    v73 = (v69 + 8);
    v74 = v27;
    v75 = (v71 + 8);
    while (1)
    {
      if (v79)
      {
        v47 = MEMORY[0x20F30C990](v46, v27);
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v46 >= *(v78 + 2))
        {
          goto LABEL_59;
        }

        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      v49 = v77;
      v84 = v47;
      TargetZone.type.getter();
      TargetZone.ZoneType.primaryType.getter();
      (*v73)(v49, v86);
      v87(v34, v83, v4);
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8], MEMORY[0x277D7DEE0]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v90 == v88 && v91 == v89)
      {
        break;
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41(v34, v4);
      v41(v82, v4);

      if (v50)
      {
        goto LABEL_38;
      }

      ++v46;
      v27 = v74;
      if (v48 == v45)
      {
        goto LABEL_36;
      }
    }

    v41(v34, v4);
    v41(v82, v4);

LABEL_38:
  }

  else
  {
LABEL_36:

    v51 = v68;
    v87(v68, v83, v4);
    v84 = specialized static AlertConfigurationView.defaultTargetZone(primaryType:configurationContext:)(v51, v70 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext);
    v41(v51, v4);
  }

  v52 = AlertConfigurationViewModel.readTargetZones()();
  v53 = v52;
  if (v52 >> 62)
  {
    v54 = __CocoaSet.count.getter();
  }

  else
  {
    v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v83) = *MEMORY[0x277D7DEC8];
  if (v54)
  {
    v27 = 0;
    v82 = (v53 & 0xC000000000000001);
    v79 = v53 & 0xFFFFFFFFFFFFFF8;
    v74 = v71 + 104;
    v75 = (v69 + 8);
    v77 = (v71 + 8);
    v78 = v53;
    while (1)
    {
      if (v82)
      {
        v55 = MEMORY[0x20F30C990](v27, v53);
        v34 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v27 >= *(v79 + 16))
        {
          goto LABEL_60;
        }

        v55 = *(v53 + 8 * v27 + 32);

        v34 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      v56 = v76;
      TargetZone.type.getter();
      TargetZone.ZoneType.primaryType.getter();
      (*v75)(v56, v86);
      v87(v81, v83, v4);
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8], MEMORY[0x277D7DEE0]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v90 == v88 && v91 == v89)
      {
        break;
      }

      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41(v81, v4);
      v41(v80, v4);

      v53 = v78;
      if (v57)
      {
        goto LABEL_56;
      }

      ++v27;
      if (v34 == v54)
      {
        goto LABEL_54;
      }
    }

    v41(v81, v4);
    v41(v80, v4);

LABEL_56:
    v59 = v70;
  }

  else
  {
LABEL_54:

    v58 = v68;
    v87(v68, v83, v4);
    v59 = v70;
    v55 = specialized static AlertConfigurationView.defaultTargetZone(primaryType:configurationContext:)(v58, v70 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext);

    v41(v58, v4);
  }

  v60 = v66;
  *v66 = v59;
  v60[1] = 0;
  v61 = v65;
  v60[2] = v64;
  v60[3] = v61;
  v62 = v84;
  v60[4] = v85;
  v60[5] = 0;
  v60[6] = v62;
  v60[7] = 0;
  v60[8] = v55;
  v60[9] = 0;
}

uint64_t AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v312 = a2;
  LODWORD(v339) = a1;
  v344 = a3;
  v4 = type metadata accessor for PowerZonesAlertZoneType();
  MEMORY[0x28223BE20](v4 - 8);
  v302 = &v301 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = type metadata accessor for PowerZonesEntryView(0);
  v310 = *(v314 - 8);
  v6 = *(v310 + 64);
  MEMORY[0x28223BE20](v314);
  v303 = &v301 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v304 = (&v301 - v8);
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19PowerZonesEntryViewVSgMd, &_s9WorkoutUI19PowerZonesEntryViewVSgMR);
  MEMORY[0x28223BE20](v320);
  v311 = &v301 - v9;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB014TrackEntryViewVSgAF010PowerZoneshI0VSg_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB014TrackEntryViewVSgAF010PowerZoneshI0VSg_GMR);
  MEMORY[0x28223BE20](v318);
  v319 = (&v301 - v10);
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMR);
  MEMORY[0x28223BE20](v331);
  v321 = &v301 - v11;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB014TimeSplitsViewVSgAF08DistancehI0VSgGACyAF010TrackEntryI0VSgAF010PowerZoneslI0VSgG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB014TimeSplitsViewVSgAF08DistancehI0VSgGACyAF010TrackEntryI0VSgAF010PowerZoneslI0VSgG_GMR);
  MEMORY[0x28223BE20](v327);
  v330 = (&v301 - v12);
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMR);
  MEMORY[0x28223BE20](v343);
  v334 = (&v301 - v13);
  v14 = type metadata accessor for AlertConfigurationSessionContext();
  v308 = *(v14 - 8);
  v309 = v14;
  MEMORY[0x28223BE20](v14);
  v307 = (&v301 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB015AlertsEntryViewVAH_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB015AlertsEntryViewVAH_GMR);
  MEMORY[0x28223BE20](v315);
  v316 = &v301 - v16;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMR);
  MEMORY[0x28223BE20](v332);
  v317 = &v301 - v17;
  v335 = type metadata accessor for HeartRateZoneEntryView(0);
  MEMORY[0x28223BE20](v335);
  v305 = &v301 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v306 = &v301 - v20;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGACyA2JGGACyACyAH010TimeSplitsG0VSgAH08DistanceqG0VSgGACyAH05TrackjG0VSgAH010PowerZonesjG0VSgGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGACyA2JGGACyACyAH010TimeSplitsG0VSgAH08DistanceqG0VSgGACyAH05TrackjG0VSgAH010PowerZonesjG0VSgGG_GMR);
  MEMORY[0x28223BE20](v340);
  v342 = &v301 - v21;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGACyA2JG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGACyA2JG_GMR);
  MEMORY[0x28223BE20](v326);
  v329 = (&v301 - v22);
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0V_GMR);
  MEMORY[0x28223BE20](v323);
  v324 = &v301 - v23;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMR);
  MEMORY[0x28223BE20](v328);
  v325 = &v301 - v24;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMR);
  MEMORY[0x28223BE20](v341);
  v333 = &v301 - v25;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMR);
  MEMORY[0x28223BE20](v322);
  v313 = &v301 - v26;
  v27 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v301 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v32 = (&v301 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = (&v301 - v34);
  MEMORY[0x28223BE20](v36);
  v38 = (&v301 - v37);
  v39 = type metadata accessor for AlertConfigurationContext();
  v337 = *(v39 - 8);
  v338 = v39;
  MEMORY[0x28223BE20](v39);
  v41 = &v301 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v301 = &v301 - v43;
  MEMORY[0x28223BE20](v44);
  v336 = &v301 - v45;
  v46 = type metadata accessor for AlertsEntryView(0);
  MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v47);
  v51 = *v3;
  v50 = v3[1];
  v52 = v339;
  if (v339 > 3u)
  {
    if (v339 > 5u)
    {
      if (v339 == 6)
      {
        *&v358 = *v3;
        *(&v358 + 1) = v50;
        v72 = v50;
        v73 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v29, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v29, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
        }

        else
        {
          v186 = *v29;
          type metadata accessor for MainActor();

          v187 = static MainActor.shared.getter();
          v188 = swift_allocObject();
          v189 = MEMORY[0x277D85700];
          v188[2] = v187;
          v188[3] = v189;
          v188[4] = v186;

          v190 = static MainActor.shared.getter();
          v191 = swift_allocObject();
          v191[2] = v190;
          v191[3] = v189;
          v191[4] = v186;
          type metadata accessor for TrackAlerts();
          Binding.init(get:set:)();
          v75 = *(&v358 + 1);
          v74 = v358;
          v76 = v359;
          *&v355 = v73;
          *(&v355 + 1) = v72;
          State.wrappedValue.getter();
          v78 = *(v352 + 16);

          v355 = __PAIR128__(v75, v74);
          *&v356 = v76;
          v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore11TrackAlertsCGMd, &_s7SwiftUI7BindingVy11WorkoutCore11TrackAlertsCGMR);
          MEMORY[0x20F30B100](&v352, v192);
          v193 = dispatch thunk of TrackAlerts.lapChangeEnabled.getter();

          v77 = v193 & 1;

          v194 = v78;
        }

        v339 = v76;
        v195 = v319;
        *v319 = v74;
        v195[1] = v75;
        v195[2] = v76;
        v195[3] = v77;
        v195[4] = 0;
        v195[5] = v78;
        swift_storeEnumTagMultiPayload();
        outlined copy of TrackEntryView?(v74, v75, v76, v77, 0, v78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14TrackEntryViewVSgMd, &_s9WorkoutUI14TrackEntryViewVSgMR);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type TrackEntryView? and conformance <A> A?, &_s9WorkoutUI14TrackEntryViewVSgMd, &_s9WorkoutUI14TrackEntryViewVSgMR, lazy protocol witness table accessor for type TrackEntryView and conformance TrackEntryView);
        lazy protocol witness table accessor for type PowerZonesEntryView? and conformance <A> A?();
        v196 = v75;
        v197 = v74;
        v198 = v321;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of PowerZonesEntryView?(v198, v330, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMR);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMR);
        lazy protocol witness table accessor for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>();
        v199 = v78;
        v200 = v334;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v198, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMR);
        v201 = &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMR;
        outlined init with copy of PowerZonesEntryView?(v200, v342, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v202 = v339;
        outlined consume of TrackEntryView?(v197, v196, v339, v77, 0, v199);
        outlined consume of TrackEntryView?(v197, v196, v202, v77, 0, v199);
        v203 = v200;
        v204 = &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd;
      }

      else
      {
        v114 = *v3;
        v115 = v3[1];
        v358 = *(v3 + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB024PowerZonesEntryViewModelCSgGMd, &_s7SwiftUI5StateVy07WorkoutB024PowerZonesEntryViewModelCSgGMR);
        State.wrappedValue.getter();
        if (v355)
        {
          *&v358 = v114;
          *(&v358 + 1) = v115;
          v339 = v355;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
          State.wrappedValue.getter();
          v116 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
          v118 = v117;
          v120 = v119;

          *&v358 = v114;
          *(&v358 + 1) = v115;
          State.wrappedValue.getter();
          v332 = *(v355 + 16);

          *&v358 = v114;
          *(&v358 + 1) = v115;
          State.wrappedValue.getter();
          v335 = *(v337 + 16);
          (v335)(v336, v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v338);

          *&v358 = v114;
          *(&v358 + 1) = v115;
          State.wrappedValue.getter();
          v333 = *(v355 + 24);

          v121 = v304;
          v329 = v116;
          *v304 = v116;
          v121[1] = v118;
          v122 = v118;
          v123 = v332;
          v121[2] = v120;
          v121[3] = v123;
          v124 = v314;
          v125 = (v121 + *(v314 + 32));
          v332 = type metadata accessor for PowerZonesEntryViewModel(0);
          lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel, &protocol conformance descriptor for PowerZonesEntryViewModel);

          v126 = v122;

          v127 = v120;

          *v125 = ObservedObject.init(wrappedValue:)();
          v125[1] = v128;
          (v335)(v121 + *(v124 + 24), v336, v338);
          *(v121 + *(v124 + 28)) = v333;
          v129 = v329;
          *&v358 = v329;
          *(&v358 + 1) = v126;
          *&v359 = v127;
          v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
          MEMORY[0x20F30B100](&v355);
          v131 = v355;
          v132 = v302;
          dispatch thunk of PowerZonesAlertTargetZone.type.getter();

          PowerZonesEntryViewModel.selectedType.setter(v132);
          *&v358 = v129;
          *(&v358 + 1) = v126;
          *&v359 = v127;
          MEMORY[0x20F30B100](&v355, v130);

          v133 = v355;
          v134 = v303;
          _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v121, v303, type metadata accessor for PowerZonesEntryView);
          v135 = v310;
          v136 = (*(v310 + 80) + 16) & ~*(v310 + 80);
          v137 = swift_allocObject();
          outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v134, v137 + v136, type metadata accessor for PowerZonesEntryView);
          dispatch thunk of PowerZonesAlertTargetZone.defaultZonesDidLoad.setter();

          (*(v337 + 8))(v336, v338);
          v138 = v311;
          outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v121, v311, type metadata accessor for PowerZonesEntryView);
          v139 = v314;
          v140 = 0;
        }

        else
        {
          v140 = 1;
          v135 = v310;
          v138 = v311;
          v139 = v314;
        }

        (*(v135 + 56))(v138, v140, 1, v139);
        v201 = &_s9WorkoutUI19PowerZonesEntryViewVSgMR;
        outlined init with copy of PowerZonesEntryView?(v138, v319, &_s9WorkoutUI19PowerZonesEntryViewVSgMd, &_s9WorkoutUI19PowerZonesEntryViewVSgMR);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14TrackEntryViewVSgMd, &_s9WorkoutUI14TrackEntryViewVSgMR);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type TrackEntryView? and conformance <A> A?, &_s9WorkoutUI14TrackEntryViewVSgMd, &_s9WorkoutUI14TrackEntryViewVSgMR, lazy protocol witness table accessor for type TrackEntryView and conformance TrackEntryView);
        lazy protocol witness table accessor for type PowerZonesEntryView? and conformance <A> A?();
        v238 = v321;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of PowerZonesEntryView?(v238, v330, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMR);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMR);
        lazy protocol witness table accessor for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>();
        v239 = v334;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v238, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMR);
        outlined init with copy of PowerZonesEntryView?(v239, v342, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v239, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMR);
        v203 = v138;
        v204 = &_s9WorkoutUI19PowerZonesEntryViewVSgMd;
      }

      v240 = v201;
    }

    else
    {
      if (v339 == 4)
      {
        *&v358 = *v3;
        *(&v358 + 1) = v50;
        v61 = v50;
        v62 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v35, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v35, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
          v352 = 0u;
          v353 = 0u;
          memset(v354, 0, 41);
        }

        else
        {
          v164 = *v35;
          type metadata accessor for MainActor();

          v165 = static MainActor.shared.getter();
          v166 = swift_allocObject();
          v167 = MEMORY[0x277D85700];
          v166[2] = v165;
          v166[3] = v167;
          v166[4] = v164;

          v168 = static MainActor.shared.getter();
          v169 = swift_allocObject();
          v169[2] = v168;
          v169[3] = v167;
          v339 = v164;
          v169[4] = v164;
          type metadata accessor for NLWorkoutSplitStorage();
          Binding.init(get:set:)();
          v170 = v358;
          v171 = v359;
          *&v355 = v62;
          *(&v355 + 1) = v61;
          State.wrappedValue.getter();
          v172 = *(v352 + 16);

          *&v355 = v62;
          *(&v355 + 1) = v61;
          State.wrappedValue.getter();
          v338 = *(v352 + 24);

          type metadata accessor for GoalWorkoutConfiguration();
          v173 = MEMORY[0x20F303500]();
          v175 = v307;
          v174 = v308;
          *v307 = v173;
          v176 = v309;
          (*(v174 + 104))(v175, *MEMORY[0x277D7E688], v309);
          lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext, MEMORY[0x277D7E698], MEMORY[0x277D7E6A8]);
          LOBYTE(v168) = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v174 + 8))(v175, v176);
          v177 = v168 ^ 1;
          v355 = v170;
          *&v356 = v171;

          v178 = v171;
          v179 = v172;
          v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMd, &_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMR);
          MEMORY[0x20F30B100](&v352);
          v181 = v352;
          [v352 value];
          v183 = v182;

          if (v183 >= 10.0)
          {

            v355 = v170;
            *&v356 = v178;
            MEMORY[0x20F30B100](&v352, v180);
            v241 = v352;
            [v352 value];
            v185 = v242;
          }

          else
          {
            v355 = v170;
            *&v356 = v178;
            MEMORY[0x20F30B100](&v352, v180);
            v184 = v352;
            v185 = NLWorkoutSplitStorage.defaultTargetValue(activityType:)(v179);
          }

          v355 = v170;
          *&v356 = v178;
          MEMORY[0x20F30B100](&v352, v180);

          v243 = v352;
          v244 = [v352 enabled];

          v352 = v170;
          *&v353 = v178;
          *(&v353 + 1) = v185;
          *&v354[0] = 0;
          BYTE8(v354[0]) = v244;
          *&v354[1] = 0;
          *(&v354[1] + 1) = v338;
          *&v354[2] = v179;
          BYTE8(v354[2]) = v177 & 1;
        }

        v357[0] = v354[0];
        v357[1] = v354[1];
        *(&v357[1] + 9) = *(&v354[1] + 9);
        v355 = v352;
        v356 = v353;
        LOBYTE(v346) = 0;
        BYTE9(v357[2]) = 0;
        v229 = &_s9WorkoutUI14TimeSplitsViewVSgMd;
        v230 = &_s9WorkoutUI14TimeSplitsViewVSgMR;
        outlined init with copy of PowerZonesEntryView?(&v352, &v358, &_s9WorkoutUI14TimeSplitsViewVSgMd, &_s9WorkoutUI14TimeSplitsViewVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14TimeSplitsViewVSgMd, &_s9WorkoutUI14TimeSplitsViewVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI18DistanceSplitsViewVSgMd, &_s9WorkoutUI18DistanceSplitsViewVSgMR);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type TimeSplitsView? and conformance <A> A?, &_s9WorkoutUI14TimeSplitsViewVSgMd, &_s9WorkoutUI14TimeSplitsViewVSgMR, lazy protocol witness table accessor for type TimeSplitsView and conformance TimeSplitsView);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type DistanceSplitsView? and conformance <A> A?, &_s9WorkoutUI18DistanceSplitsViewVSgMd, &_s9WorkoutUI18DistanceSplitsViewVSgMR, lazy protocol witness table accessor for type DistanceSplitsView and conformance DistanceSplitsView);
        _ConditionalContent<>.init(storage:)();
        v245 = v361[0];
        v232 = v330;
        v330[2] = v360;
        v232[3] = v245;
        v233 = *(v361 + 10);
      }

      else
      {
        *&v358 = *v3;
        *(&v358 + 1) = v50;
        v107 = v50;
        v108 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v32, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v32, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
          v109 = 0;
          v110 = 0;
          v352 = 0u;
          v353 = 0u;
          v354[0] = 0u;
        }

        else
        {
          v214 = *v32;
          type metadata accessor for MainActor();

          v215 = static MainActor.shared.getter();
          v216 = swift_allocObject();
          v217 = MEMORY[0x277D85700];
          v216[2] = v215;
          v216[3] = v217;
          v216[4] = v214;

          v218 = static MainActor.shared.getter();
          v219 = swift_allocObject();
          v219[2] = v218;
          v219[3] = v217;
          v219[4] = v214;
          type metadata accessor for NLWorkoutSplitStorage();
          Binding.init(get:set:)();
          v220 = v358;
          v338 = v359;
          *&v355 = v108;
          *(&v355 + 1) = v107;
          State.wrappedValue.getter();
          v339 = *(v352 + 16);

          *&v355 = v108;
          *(&v355 + 1) = v107;
          State.wrappedValue.getter();
          v109 = *(v352 + 24);

          type metadata accessor for GoalWorkoutConfiguration();
          v221 = MEMORY[0x20F303500]();
          v223 = v307;
          v222 = v308;
          *v307 = v221;
          v224 = v309;
          (*(v222 + 104))(v223, *MEMORY[0x277D7E688], v309);
          lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext, MEMORY[0x277D7E698], MEMORY[0x277D7E6A8]);
          v225 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v222 + 8))(v223, v224);
          v355 = v220;
          v226 = v338;
          *&v356 = v338;
          v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMd, &_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMR);
          MEMORY[0x20F30B100](&v352, v227);
          v228 = v352;
          LOBYTE(v222) = [v352 enabled];

          v110 = (v225 & 1) == 0;
          v352 = v220;
          *&v353 = v226;
          BYTE8(v353) = v222;
          *&v354[0] = 0;
          *(&v354[0] + 1) = v339;
        }

        *&v354[1] = v109;
        BYTE8(v354[1]) = v110;
        v355 = v352;
        v356 = v353;
        v357[0] = v354[0];
        *(v357 + 9) = *(v354 + 9);
        LOBYTE(v346) = 1;
        BYTE9(v357[2]) = 1;
        v229 = &_s9WorkoutUI18DistanceSplitsViewVSgMd;
        v230 = &_s9WorkoutUI18DistanceSplitsViewVSgMR;
        outlined init with copy of PowerZonesEntryView?(&v352, &v358, &_s9WorkoutUI18DistanceSplitsViewVSgMd, &_s9WorkoutUI18DistanceSplitsViewVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14TimeSplitsViewVSgMd, &_s9WorkoutUI14TimeSplitsViewVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI18DistanceSplitsViewVSgMd, &_s9WorkoutUI18DistanceSplitsViewVSgMR);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type TimeSplitsView? and conformance <A> A?, &_s9WorkoutUI14TimeSplitsViewVSgMd, &_s9WorkoutUI14TimeSplitsViewVSgMR, lazy protocol witness table accessor for type TimeSplitsView and conformance TimeSplitsView);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type DistanceSplitsView? and conformance <A> A?, &_s9WorkoutUI18DistanceSplitsViewVSgMd, &_s9WorkoutUI18DistanceSplitsViewVSgMR, lazy protocol witness table accessor for type DistanceSplitsView and conformance DistanceSplitsView);
        _ConditionalContent<>.init(storage:)();
        v231 = v361[0];
        v232 = v330;
        v330[2] = v360;
        v232[3] = v231;
        v233 = *(v361 + 10);
      }

      *(v232 + 58) = v233;
      v246 = v359;
      *v232 = v358;
      v232[1] = v246;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMR);
      lazy protocol witness table accessor for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>();
      v247 = v334;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of PowerZonesEntryView?(v247, v342, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(&v352, v229, v230);
      v203 = v247;
      v204 = &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd;
      v240 = &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMR;
    }

    return outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v203, v204, v240);
  }

  else if (v339 > 1u)
  {
    v339 = v49;
    v63 = v51;
    v64 = v50;
    if (v52 == 2)
    {
      v65 = v3[7];
      *&v355 = v3[6];
    }

    else
    {
      v65 = v3[9];
      *&v355 = v3[8];
    }

    *(&v355 + 1) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
    State.projectedValue.getter();
    v334 = *(&v358 + 1);
    v335 = v358;
    v66 = v359;
    *&v358 = v63;
    *(&v358 + 1) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v67 = *(v355 + 16);

    *&v358 = v63;
    *(&v358 + 1) = v64;
    State.wrappedValue.getter();
    v68 = *(v355 + 24);

    *&v358 = v63;
    *(&v358 + 1) = v64;
    State.wrappedValue.getter();
    v69 = v336;
    (*(v337 + 16))(v336, v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v338);

    *&v358 = v63;
    *(&v358 + 1) = v64;
    State.wrappedValue.getter();
    v70 = *(v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode);

    v71 = v339;
    AlertsEntryView.init(targetZone:activityType:formattingManager:configurationContext:activityMoveMode:)(v335, v334, v66, v67, v68, v69, v70, v339);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v71, v316, type metadata accessor for AlertsEntryView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertsEntryView and conformance AlertsEntryView, type metadata accessor for AlertsEntryView, &protocol conformance descriptor for AlertsEntryView);
    v111 = v317;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of PowerZonesEntryView?(v111, v329, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>();
    v112 = v333;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v111, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMR);
    outlined init with copy of PowerZonesEntryView?(v112, v342, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v112, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMR);
    return _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v71, type metadata accessor for AlertsEntryView);
  }

  else if (v339)
  {
    *&v358 = *v3;
    *(&v358 + 1) = v50;
    v79 = v50;
    v80 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v334 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v82 = v81;
    v336 = v83;

    *&v358 = v80;
    *(&v358 + 1) = v79;
    State.wrappedValue.getter();
    v339 = *(v355 + 16);

    *&v358 = v80;
    *(&v358 + 1) = v79;
    State.wrappedValue.getter();
    v84 = v338;
    v331 = *(v337 + 16);
    v331(v41, v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v338);

    *&v358 = v80;
    *(&v358 + 1) = v79;
    State.wrappedValue.getter();
    v330 = *(v355 + 24);

    v85 = v305;
    v87 = v334;
    v86 = v335;
    *v305 = v334;
    *(v85 + 1) = v82;
    v88 = v82;
    v89 = v336;
    v90 = v339;
    *(v85 + 2) = v336;
    *(v85 + 3) = v90;
    v331(&v85[*(v86 + 24)], v41, v84);
    *&v85[*(v86 + 28)] = v330;
    *&v358 = v87;
    *(&v358 + 1) = v88;
    v91 = v88;
    v92 = v89;
    *&v359 = v89;
    v93 = v87;

    v339 = v90;

    v94 = v92;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMR);
    MEMORY[0x20F30B100](&v355);
    v96 = v355;
    v97 = HeartRateTargetZone.selectedRow.getter();

    v98 = v93;
    v99 = &v85[*(v335 + 32)];
    *v99 = v97;
    v99[1] = 0;
    *&v358 = v93;
    *(&v358 + 1) = v91;
    *&v359 = v94;
    MEMORY[0x20F30B100](&v355, v95);
    v100 = v355;
    *&v101 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.customRange.getter());
    LOBYTE(v93) = v102;

    if (v93)
    {
      v103 = v339;
      v104 = [v339 effectiveTypeIdentifier];
      v105 = v104 == 37 || v104 == 13;
      v106 = 120.0;
      if (v105)
      {
        v106 = 130.0;
      }
    }

    else
    {
      v106 = *&v101;
      v103 = v339;
    }

    v205 = &v85[*(v335 + 36)];
    *v205 = v106;
    *(v205 + 1) = 0;
    *&v358 = v98;
    *(&v358 + 1) = v91;
    *&v359 = v94;
    MEMORY[0x20F30B100](&v355, v95);

    v206 = v355;
    dispatch thunk of HeartRateTargetZone.customRange.getter();
    v208 = v207;
    v210 = v209;

    if (v210)
    {
      v211 = [v103 effectiveTypeIdentifier];

      (*(v337 + 8))(v41, v338);
      v212 = v211 == 37 || v211 == 13;
      v213 = 140.0;
      if (v212)
      {
        v213 = 150.0;
      }
    }

    else
    {

      (*(v337 + 8))(v41, v338);
      v213 = v208;
    }

    v234 = &v85[*(v335 + 40)];
    *v234 = v213;
    *(v234 + 1) = 0;
    v235 = v306;
    outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v85, v306, type metadata accessor for HeartRateZoneEntryView);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v235, v324, type metadata accessor for HeartRateZoneEntryView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>();
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type HeartRateZoneEntryView and conformance HeartRateZoneEntryView, type metadata accessor for HeartRateZoneEntryView, &protocol conformance descriptor for HeartRateZoneEntryView);
    v236 = v325;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of PowerZonesEntryView?(v236, v329, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>();
    v237 = v333;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v236, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMR);
    outlined init with copy of PowerZonesEntryView?(v237, v342, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v237, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMR);
    return _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v235, type metadata accessor for HeartRateZoneEntryView);
  }

  else
  {
    v339 = v49;
    v53 = v50;
    v54 = v3[5];
    *&v355 = v3[4];
    *(&v355 + 1) = v54;
    v55 = v51;
    v56 = &v301 - v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
    State.projectedValue.getter();
    v330 = *(&v358 + 1);
    v331 = v358;
    v327 = v359;
    *&v358 = v55;
    *(&v358 + 1) = v53;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v321 = *(v355 + 16);

    *&v358 = v55;
    *(&v358 + 1) = v53;
    State.wrappedValue.getter();
    v58 = *(v355 + 24);

    *&v358 = v55;
    *(&v358 + 1) = v53;
    State.wrappedValue.getter();
    v59 = v336;
    v319 = *(v337 + 16);
    v320 = v337 + 16;
    (v319)(v336, v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v338);

    *&v358 = v55;
    *(&v358 + 1) = v53;
    State.wrappedValue.getter();
    v60 = *(v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode);

    v334 = v56;
    AlertsEntryView.init(targetZone:activityType:formattingManager:configurationContext:activityMoveMode:)(v331, v330, v327, v321, v58, v59, v60, v56);
    *&v358 = v55;
    *(&v358 + 1) = v53;
    State.wrappedValue.getter();
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v38, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v38, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
      v358 = xmmword_20CB7C920;
      v359 = 0u;
      v360 = 0u;
      memset(v361, 0, sizeof(v361));
      v362 = 0u;
    }

    else
    {
      v318 = *v38;
      *&v358 = v55;
      *(&v358 + 1) = v53;
      State.wrappedValue.getter();
      v141 = *(v355 + 16);

      v142 = FIUIWorkoutActivityType.supportsPacerAlerts.getter();

      v143 = MEMORY[0x277D7E4C0];
      if (v142 & 1) != 0 && (*&v358 = v55, *(&v358 + 1) = v53, State.wrappedValue.getter(), v144 = v336, v316 = v57, v145 = v338, (v319)(v336, v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v338), , v146 = *v143, v147 = v337, v148 = v301, (*(v337 + 104))(v301, v146, v145), v149 = static AlertConfigurationContext.== infix(_:_:)(), v150 = *(v147 + 8), v150(v148, v145), v150(v144, v145), (v149))
      {
        type metadata accessor for MainActor();
        v151 = v318;

        v152 = static MainActor.shared.getter();
        v153 = swift_allocObject();
        v154 = MEMORY[0x277D85700];
        v153[2] = v152;
        v153[3] = v154;
        v153[4] = v151;

        v155 = static MainActor.shared.getter();
        v156 = swift_allocObject();
        v156[2] = v155;
        v156[3] = v154;
        v156[4] = v151;
        type metadata accessor for PacerAlerts();
        Binding.init(get:set:)();
        v157 = v358;
        v158 = v359;
        v159 = v55;
        *&v355 = v55;
        v160 = v53;
        *(&v355 + 1) = v53;
        State.wrappedValue.getter();
        v161 = *(v352 + 16);

        v355 = v157;
        *&v356 = v158;
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore11PacerAlertsCGMd, &_s7SwiftUI7BindingVy11WorkoutCore11PacerAlertsCGMR);
        MEMORY[0x20F30B100](&v352, v162);
        LOBYTE(v152) = dispatch thunk of PacerAlerts.aheadBehindAlertsEnabled.getter();

        v321 = (v152 & 1);
        v331 = v157;

        v330 = *(&v157 + 1);

        v327 = v158;

        v317 = v161;
        v163 = v161;
      }

      else
      {
        v159 = v55;
        v160 = v53;
        v330 = 0;
        v331 = 0;
        v327 = 0;
        v321 = 0;
        v317 = 0;
      }

      v248 = v159;
      *&v358 = v159;
      *(&v358 + 1) = v160;
      v249 = v160;
      State.wrappedValue.getter();
      v250 = *(v355 + 16);

      v251 = [v250 supportsRaceRoute];

      if (v251 && (*&v358 = v159, *(&v358 + 1) = v160, State.wrappedValue.getter(), v252 = v336, v253 = v338, (v319)(v336, v355 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v338), , v254 = v337, v255 = v301, (*(v337 + 104))(v301, *MEMORY[0x277D7E4C0], v253), v256 = static AlertConfigurationContext.== infix(_:_:)(), v257 = *(v254 + 8), v257(v255, v253), v257(v252, v253), (v256 & 1) != 0))
      {
        type metadata accessor for MainActor();
        v258 = v318;

        v259 = static MainActor.shared.getter();
        v260 = swift_allocObject();
        v261 = MEMORY[0x277D85700];
        v260[2] = v259;
        v260[3] = v261;
        v260[4] = v258;

        v262 = static MainActor.shared.getter();
        v263 = swift_allocObject();
        v263[2] = v262;
        v263[3] = v261;
        v263[4] = v258;
        type metadata accessor for RaceAlerts();
        Binding.init(get:set:)();
        v264 = v358;
        v265 = v359;
        *&v355 = v248;
        *(&v355 + 1) = v249;
        State.wrappedValue.getter();
        v266 = *(v352 + 16);

        v355 = v264;
        *&v356 = v265;
        v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10RaceAlertsCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10RaceAlertsCGMR);
        MEMORY[0x20F30B100](&v352, v267);
        v268 = dispatch thunk of RaceAlerts.aheadBehindAlertsEnabled.getter();

        v269 = v268 & 1;
        v270 = v264;

        v271 = *(&v264 + 1);

        v272 = v265;

        v273 = v266;
        v274 = v266;
      }

      else
      {
        v270 = 0;
        v271 = 0;
        v272 = 0;
        v269 = 0;
        v273 = 0;
      }

      v275 = v330;
      v276 = v331;
      v277 = v327;
      v278 = v317;
      outlined copy of TrackEntryView?(v331, v330, v327, v321, 0, v317);
      outlined copy of TrackEntryView?(v270, v271, v272, v269, 0, v273);
      v279 = v276;
      v280 = v277;
      v281 = v321;
      v282 = v278;
      outlined consume of TrackEntryView?(v279, v275, v280, v321, 0, v278);
      v338 = v273;
      outlined consume of TrackEntryView?(v270, v271, v272, v269, 0, v273);

      outlined consume of TrackEntryView?(v270, v271, v272, v269, 0, v273);
      v284 = v330;
      v283 = v331;
      v285 = v327;
      outlined consume of TrackEntryView?(v331, v330, v327, v281, 0, v282);
      *&v358 = v283;
      *(&v358 + 1) = v284;
      *&v359 = v285;
      *(&v359 + 1) = v281;
      *&v360 = 0;
      *(&v360 + 1) = v282;
      *&v361[0] = v270;
      *(&v361[0] + 1) = v271;
      *&v361[1] = v272;
      *(&v361[1] + 1) = v269;
      *&v362 = 0;
      *(&v362 + 1) = v338;
    }

    v286 = v339;
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v334, v339, type metadata accessor for AlertsEntryView);
    v348 = v360;
    v349 = v361[0];
    v350 = v361[1];
    v351 = v362;
    v346 = v358;
    v347 = v359;
    v287 = v313;
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v286, v313, type metadata accessor for AlertsEntryView);
    v288 = (v287 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15AlertsEntryViewV_05SwiftB005TupleE0VyAA05PacercdE0VSg_AA04RacecdE0VSgtGSgtMd, &_s9WorkoutUI15AlertsEntryViewV_05SwiftB005TupleE0VyAA05PacercdE0VSg_AA04RacecdE0VSgtGSgtMR) + 48));
    v290 = v350;
    v289 = v351;
    v292 = v350;
    v291 = v351;
    v354[2] = v350;
    v354[3] = v351;
    v293 = v349;
    v295 = v348;
    v294 = v349;
    v354[0] = v348;
    v354[1] = v349;
    v288[2] = v348;
    v288[3] = v293;
    v288[4] = v290;
    v288[5] = v289;
    v296 = v347;
    v298 = v346;
    v297 = v347;
    v352 = v346;
    v353 = v347;
    *v288 = v346;
    v288[1] = v296;
    v357[2] = v292;
    v357[3] = v291;
    v357[0] = v295;
    v357[1] = v294;
    v355 = v298;
    v356 = v297;
    outlined init with copy of PowerZonesEntryView?(&v358, v345, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMR);
    outlined init with copy of PowerZonesEntryView?(&v352, v345, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMR);
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(&v355, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMR);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v286, type metadata accessor for AlertsEntryView);
    outlined init with copy of PowerZonesEntryView?(v287, v324, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>();
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type HeartRateZoneEntryView and conformance HeartRateZoneEntryView, type metadata accessor for HeartRateZoneEntryView, &protocol conformance descriptor for HeartRateZoneEntryView);
    v299 = v325;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of PowerZonesEntryView?(v299, v329, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>();
    v300 = v333;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v299, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMR);
    outlined init with copy of PowerZonesEntryView?(v300, v342, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(&v358, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMR);
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v300, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMR);
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v287, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMR);
    return _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v334, type metadata accessor for AlertsEntryView);
  }
}

uint64_t AlertConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMR);
  MEMORY[0x28223BE20](v2);
  v4 = v27 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAJy07WorkoutB0024AlertSingleConfigurationC0VAK0l8MultiplenC0VGs5NeverOGG_0K4Core10TargetZoneCQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAJy07WorkoutB0024AlertSingleConfigurationC0VAK0l8MultiplenC0VGs5NeverOGG_0K4Core10TargetZoneCQo_MR);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v27 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAJy07WorkoutB0024AlertSingleConfigurationC0VAK0l8MultiplenC0VGs5NeverOGG_0K4Core10TargetZoneCQo__AWQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAJy07WorkoutB0024AlertSingleConfigurationC0VAK0l8MultiplenC0VGs5NeverOGG_0K4Core10TargetZoneCQo__AWQo_MR);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = v27 - v7;
  v8 = v1[3];
  v39 = v1[2];
  v40 = v8;
  v41 = v1[4];
  v9 = v1[1];
  v37 = *v1;
  v38 = v9;
  closure #1 in AlertConfigurationView.body.getter(&v37, v4);
  v34 = v39;
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
  State.wrappedValue.getter();
  v10 = swift_allocObject();
  v11 = v40;
  v10[3] = v39;
  v10[4] = v11;
  v10[5] = v41;
  v12 = v38;
  v10[1] = v37;
  v10[2] = v12;
  outlined init with copy of AlertConfigurationView(&v37, &v34);
  v13 = type metadata accessor for TargetZone();
  v14 = lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>();
  v15 = lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type TargetZone and conformance TargetZone, MEMORY[0x277D7DF08], MEMORY[0x277D7DF18]);
  View.onChange<A>(of:initial:_:)();

  outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v4, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMR);
  v34 = v40;
  State.wrappedValue.getter();
  v16 = swift_allocObject();
  v17 = v40;
  v16[3] = v39;
  v16[4] = v17;
  v16[5] = v41;
  v18 = v38;
  v16[1] = v37;
  v16[2] = v18;
  outlined init with copy of AlertConfigurationView(&v37, &v34);
  *&v34 = v2;
  *(&v34 + 1) = v13;
  v35 = v14;
  v36 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v28;
  v21 = v29;
  View.onChange<A>(of:initial:_:)();

  (*(v30 + 8))(v6, v21);
  v34 = v41;
  State.wrappedValue.getter();
  v22 = swift_allocObject();
  v23 = v40;
  v22[3] = v39;
  v22[4] = v23;
  v22[5] = v41;
  v24 = v38;
  v22[1] = v37;
  v22[2] = v24;
  outlined init with copy of AlertConfigurationView(&v37, &v34);
  *&v34 = v21;
  *(&v34 + 1) = v13;
  v35 = OpaqueTypeConformance2;
  v36 = v15;
  swift_getOpaqueTypeConformance2();
  v25 = v31;
  View.onChange<A>(of:initial:_:)();

  return (*(v32 + 8))(v20, v25);
}

uint64_t closure #1 in AlertConfigurationView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v68 = type metadata accessor for AlertMultipleConfigurationView(0);
  MEMORY[0x28223BE20](v68);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverO_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverO_GMR);
  MEMORY[0x28223BE20](v69);
  v70 = &v56 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0V_GMR);
  MEMORY[0x28223BE20](v64);
  v65 = &v56 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMR);
  MEMORY[0x28223BE20](v66);
  v67 = &v56 - v7;
  v8 = type metadata accessor for AlertConfigurationSessionContext();
  v73 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AlertSingleConfigurationView(0);
  MEMORY[0x28223BE20](v63);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v56 - v12;
  v13 = type metadata accessor for AlertConfigurationContext();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v72 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v79 = *a1;
  v80[0] = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
  State.wrappedValue.getter();
  v19 = *(v14 + 16);
  v19(v18, *&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v13);

  v60 = v14;
  v20 = *(v14 + 88);
  v62 = v18;
  v21 = v20(v18, v13);
  if (v21 == *MEMORY[0x277D7E4B8])
  {
    (*(v60 + 96))(v62, v13);
    v77 = &type metadata for AlertConfigurationView;
    v78 = &protocol witness table for AlertConfigurationView;
    v22 = swift_allocObject();
    v76[0] = v22;
    v23 = a1[3];
    v22[3] = a1[2];
    v22[4] = v23;
    v22[5] = a1[4];
    v24 = a1[1];
    v22[1] = *a1;
    v22[2] = v24;
    v74[0] = v79;
    outlined init with copy of AlertConfigurationView(a1, v80);
    State.wrappedValue.getter();
    v25 = *(*&v80[0] + 16);

    v80[0] = v79;
    State.wrappedValue.getter();
    v19(v72, *&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v13);

    v80[0] = v79;
    State.wrappedValue.getter();
    v26 = *(v73 + 16);
    v27 = v8;
    v28 = v61;
    v26(v61, *&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v27);

    v29 = v58;
    outlined init with copy of AlertConfigurationStateManaging(v76, v58);
    *(v29 + 40) = v25;
    v30 = v63;
    v31 = v29 + *(v63 + 24);
    v32 = v72;
    v57 = v13;
    v19(v31, v72, v13);
    v26(v29 + v30[7], v28, v27);
    v33 = __swift_project_boxed_opaque_existential_1(v76, v77);
    v80[0] = *v33;
    v34 = v33[4];
    v36 = v33[1];
    v35 = v33[2];
    v80[3] = v33[3];
    v80[4] = v34;
    v80[1] = v36;
    v80[2] = v35;
    MEMORY[0x28223BE20](v33);
    v55 = v32;
    v75 = specialized _ArrayProtocol.filter(_:)(_s9WorkoutUI22AlertConfigurationViewV016orderedSupportedD5Types4withSayAA0cD4TypeOG0A4Core0cD7ContextO_tFSbAGXEfU_TA_1, (&v56 - 4), &outlined read-only object #0 of static AlertConfigurationType.allCases.getter);
    outlined init with copy of AlertConfigurationView(v80, v74);

    specialized MutableCollection<>.sort(by:)(&v75, v80);
    outlined destroy of AlertConfigurationView(v80);

    v38 = v75;
    MEMORY[0x28223BE20](v37);
    v54 = v76;
    v39 = specialized Sequence.first(where:)(partial apply for closure #1 in AlertSingleConfigurationView.init(stateHandler:activityType:configurationContext:sessionContext:), (&v56 - 4), v38);

    (*(v73 + 8))(v61, v27);
    (*(v60 + 8))(v72, v57);
    v40 = v29 + v30[8];
    *v40 = v39;
    *(v40 + 8) = 0;
    v41 = v29 + v30[9];
    *v41 = v39;
    *(v41 + 8) = 0;
    v42 = v59;
    outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v29, v59, type metadata accessor for AlertSingleConfigurationView);
    __swift_destroy_boxed_opaque_existential_1(v76);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v42, v65, type metadata accessor for AlertSingleConfigurationView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertSingleConfigurationView and conformance AlertSingleConfigurationView, type metadata accessor for AlertSingleConfigurationView, &protocol conformance descriptor for AlertSingleConfigurationView);
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertMultipleConfigurationView and conformance AlertMultipleConfigurationView, type metadata accessor for AlertMultipleConfigurationView, &protocol conformance descriptor for AlertMultipleConfigurationView);
    v43 = v67;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of PowerZonesEntryView?(v43, v70, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v43, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMR);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v42, type metadata accessor for AlertSingleConfigurationView);
    v44 = type metadata accessor for ConfigurationType();
    return (*(*(v44 - 8) + 8))(v62, v44);
  }

  else
  {
    v46 = v73;
    v72 = v8;
    if (v21 == *MEMORY[0x277D7E4C0])
    {
      v80[0] = v79;
      State.wrappedValue.getter();
      v62 = *(*&v74[0] + 16);

      v80[0] = v79;
      State.wrappedValue.getter();
      v47 = *(*&v74[0] + 24);

      v80[0] = v79;
      State.wrappedValue.getter();
      v48 = *(*&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode);

      *(v4 + 6) = &type metadata for AlertConfigurationView;
      *(v4 + 7) = &protocol witness table for AlertConfigurationView;
      v49 = swift_allocObject();
      *(v4 + 3) = v49;
      v50 = a1[3];
      v49[3] = a1[2];
      v49[4] = v50;
      v49[5] = a1[4];
      v51 = a1[1];
      v49[1] = *a1;
      v49[2] = v51;
      v74[0] = v79;
      outlined init with copy of AlertConfigurationView(a1, v80);
      State.wrappedValue.getter();
      v52 = v68;
      (*(v46 + 16))(&v4[*(v68 + 32)], *&v80[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v72);

      v80[0] = v79;
      State.wrappedValue.getter();
      v19(&v4[*(v52 + 36)], *&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v13);

      *v4 = v62;
      *(v4 + 1) = v47;
      *(v4 + 2) = v48;
      _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v4, v65, type metadata accessor for AlertMultipleConfigurationView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertSingleConfigurationView and conformance AlertSingleConfigurationView, type metadata accessor for AlertSingleConfigurationView, &protocol conformance descriptor for AlertSingleConfigurationView);
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertMultipleConfigurationView and conformance AlertMultipleConfigurationView, type metadata accessor for AlertMultipleConfigurationView, &protocol conformance descriptor for AlertMultipleConfigurationView);
      v53 = v67;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of PowerZonesEntryView?(v53, v70, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v53, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMR);
      return _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v4, type metadata accessor for AlertMultipleConfigurationView);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

double closure #2 in AlertConfigurationView.body.getter(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
  State.wrappedValue.getter();
  AlertConfigurationViewModel.updateTargetZone(_:)(v2);

  return result;
}

double closure #3 in AlertConfigurationView.body.getter(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
  State.wrappedValue.getter();
  AlertConfigurationViewModel.updateTargetZone(_:)(v2);

  return result;
}

double closure #4 in AlertConfigurationView.body.getter(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
  State.wrappedValue.getter();
  AlertConfigurationViewModel.updateTargetZone(_:)(v2);

  return result;
}

double closure #1 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<D0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(a1 + 64);

  return result;
}

double closure #3 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<D0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(a1 + 56);

  return result;
}

id closure #5 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(a1 + 40);
  *a2 = v4;

  return v4;
}

id closure #7 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(a1 + 48);
  *a2 = v4;

  return v4;
}

double closure #9 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<D0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(a1 + 72);

  return result;
}

uint64_t specialized static AlertConfigurationView.defaultTargetZone(primaryType:configurationContext:)(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = type metadata accessor for TargetZone.ZoneType();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TargetZone.PrimaryType();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v32 - v9;
  v10 = type metadata accessor for AlertConfigurationContext();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ConfigurationType();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v32 - v20;
  (*(v11 + 16))(v13, a2, v10, v19);
  if ((*(v11 + 88))(v13, v10) != *MEMORY[0x277D7E4B8])
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_8;
  }

  (*(v11 + 96))(v13, v10);
  (*(v15 + 32))(v21, v13, v14);
  (*(v15 + 104))(v17, *MEMORY[0x277D7E110], v14);
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118], MEMORY[0x277D7E130]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v15 + 8);
  v22(v17, v14);
  if (v39 != v38)
  {
    v22(v21, v14);
LABEL_8:
    v27 = v33;
    (*(v5 + 16))(v7, v34, v33);
    v28 = (*(v5 + 88))(v7, v27);
    if (v28 != *MEMORY[0x277D7DEB8])
    {
      if (v28 == *MEMORY[0x277D7DEC0])
      {
        v29 = MEMORY[0x277D7DE40];
      }

      else if (v28 == *MEMORY[0x277D7DED0])
      {
        v29 = MEMORY[0x277D7DE58];
      }

      else
      {
        if (v28 != *MEMORY[0x277D7DEC8])
        {
          goto LABEL_21;
        }

        v29 = MEMORY[0x277D7DE50];
      }

      (*(v35 + 104))(v37, *v29, v36);
      type metadata accessor for TargetZone();
      swift_allocObject();
      return TargetZone.init(type:min:max:enabled:)();
    }

    while (1)
    {
LABEL_21:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v24 = v32;
  v23 = v33;
  (*(v5 + 16))(v32, v34, v33);
  v25 = (*(v5 + 88))(v24, v23);
  if (v25 == *MEMORY[0x277D7DEB8])
  {
    goto LABEL_21;
  }

  if (v25 != *MEMORY[0x277D7DEC0])
  {
    if (v25 == *MEMORY[0x277D7DED0])
    {
      v26 = MEMORY[0x277D7DE70];
      goto LABEL_20;
    }

    if (v25 == *MEMORY[0x277D7DEC8])
    {
      v26 = MEMORY[0x277D7DE68];
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v26 = MEMORY[0x277D7DE60];
LABEL_20:
  (*(v35 + 104))(v37, *v26, v36);
  type metadata accessor for TargetZone();
  swift_allocObject();
  v31 = TargetZone.init(type:min:max:enabled:)();
  v22(v21, v14);
  return v31;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGs5NeverOGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGs5NeverOGMR);
    lazy protocol witness table accessor for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMR);
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertSingleConfigurationView and conformance AlertSingleConfigurationView, type metadata accessor for AlertSingleConfigurationView, &protocol conformance descriptor for AlertSingleConfigurationView);
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertMultipleConfigurationView and conformance AlertMultipleConfigurationView, type metadata accessor for AlertMultipleConfigurationView, &protocol conformance descriptor for AlertMultipleConfigurationView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertConfigurationView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for AlertConfigurationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>);
  }

  return result;
}

void partial apply for implicit closure #2 in implicit closure #1 in PowerZonesEntryView.init(powerZonesAlertTargetZone:activityType:dataModel:configurationContext:formattingManager:)()
{
  v1 = *(type metadata accessor for PowerZonesEntryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  implicit closure #2 in implicit closure #1 in PowerZonesEntryView.init(powerZonesAlertTargetZone:activityType:dataModel:configurationContext:formattingManager:)(v2);
}

double outlined copy of TrackEntryView?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {

    v7 = a6;
  }

  return result;
}

double outlined consume of TrackEntryView?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroy_13Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_82()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of PowerZonesEntryView?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ9HealthKit8DayIndexV_9WorkoutUI21TrainingLoadViewModelV10ChartPointVTt1g5(uint64_t a1, uint64_t a2)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v75 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - v7;
  MEMORY[0x28223BE20](v9);
  v70 = &v60 - v10;
  v76 = type metadata accessor for DayIndex();
  v72 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v71 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetSgMd, &_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v15);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v67 = &v60 - v16;
    v68 = v17;
    v66 = a2;
    v19 = 0;
    v64 = a1;
    v20 = *(a1 + 64);
    v60 = a1 + 64;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    v24 = (v21 + 63) >> 6;
    v62 = v72 + 16;
    v63 = v5;
    v74 = (v72 + 32);
    v65 = (v72 + 8);
    v61 = v24;
    while (v23)
    {
      v73 = (v23 - 1) & v23;
      v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_18:
      v31 = v64;
      v32 = v72;
      (*(v72 + 16))(v69, *(v64 + 48) + *(v72 + 72) * v25, v76, v18);
      v33 = v70;
      outlined init with copy of TrainingLoadViewModel.ChartPoint(*(v31 + 56) + *(v75 + 72) * v25, v70);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetMd, &_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetMR);
      v35 = *(v34 + 48);
      v28 = v68;
      (*(v32 + 32))();
      outlined init with take of TrainingLoadViewModel.ChartPoint(v33, v28 + v35);
      (*(*(v34 - 8) + 56))(v28, 0, 1, v34);
      v5 = v63;
      v24 = v61;
LABEL_19:
      v36 = v67;
      outlined init with take of (key: DayIndex, value: TrainingLoadSampleDaySummary)?(v28, v67, &_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetSgMd, &_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetSgMR);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetMd, &_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetMR);
      if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
      {
        return;
      }

      v38 = *(v37 + 48);
      v39 = v36;
      v40 = v8;
      v41 = v71;
      v42 = v36;
      v43 = v76;
      (*v74)(v71, v42, v76);
      outlined init with take of TrainingLoadViewModel.ChartPoint(v39 + v38, v40);
      v44 = v66;
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
      v47 = v46;
      v48 = v41;
      v8 = v40;
      (*v65)(v48, v43);
      if ((v47 & 1) == 0)
      {
        goto LABEL_38;
      }

      outlined init with copy of TrainingLoadViewModel.ChartPoint(*(v44 + 56) + *(v75 + 72) * v45, v5);
      if ((static Date.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_37;
      }

      lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
      dispatch thunk of Strideable.distance(to:)();
      if (v78)
      {
        goto LABEL_37;
      }

      v49 = *(View + 24);
      v50 = &v5[v49];
      v51 = v5[v49 + 8];
      v52 = (v40 + v49);
      v53 = *(v40 + v49 + 8);
      if (v51)
      {
        if (!v53)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (*v50 != *v52)
        {
          LOBYTE(v53) = 1;
        }

        if (v53)
        {
LABEL_37:
          outlined destroy of TrainingLoadViewModel.ChartPoint(v5);
LABEL_38:
          outlined destroy of TrainingLoadViewModel.ChartPoint(v40);
          return;
        }
      }

      if ((static Color.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_37;
      }

      v54 = *(View + 32);
      v55 = &v5[v54];
      v56 = v5[v54 + 8];
      v57 = (v40 + v54);
      v58 = *(v40 + v54 + 8);
      if (v56)
      {
        if (!v58)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (*v55 != *v57)
        {
          LOBYTE(v58) = 1;
        }

        if (v58)
        {
          goto LABEL_37;
        }
      }

      outlined destroy of TrainingLoadViewModel.ChartPoint(v5);
      outlined destroy of TrainingLoadViewModel.ChartPoint(v40);
      v23 = v73;
    }

    if (v24 <= v19 + 1)
    {
      v26 = v19 + 1;
    }

    else
    {
      v26 = v24;
    }

    v27 = v26 - 1;
    v28 = v68;
    while (1)
    {
      v29 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v29 >= v24)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetMd, &_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetMR);
        (*(*(v59 - 8) + 56))(v28, 1, 1, v59);
        v73 = 0;
        v19 = v27;
        goto LABEL_19;
      }

      v30 = *(v60 + 8 * v29);
      ++v19;
      if (v30)
      {
        v73 = (v30 - 1) & v30;
        v25 = __clz(__rbit64(v30)) | (v29 << 6);
        v19 = v29;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ9HealthKit8DayIndexV_0B7Balance018TrainingLoadSampleD7SummaryVTt1g5(uint64_t a1, uint64_t a2)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v77 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v57 - v8;
  v76 = type metadata accessor for DayIndex();
  v67 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetSgMd, &_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v70 = &v57 - v16;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v69 = v14;
    v64 = v6;
    v65 = a2;
    v17 = 0;
    v61 = a1;
    v20 = *(a1 + 64);
    v19 = a1 + 64;
    v18 = v20;
    v21 = 1 << *(v19 - 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v58 = (v21 + 63) >> 6;
    v59 = v19;
    v60 = v67 + 16;
    v74 = (v67 + 32);
    v72 = v77 + 16;
    v73 = (v77 + 32);
    v62 = (v67 + 8);
    v63 = (v77 + 8);
    while (v23)
    {
      v71 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
      v31 = v61;
      v33 = v66;
      v32 = v67;
      v34 = v76;
      (*(v67 + 16))(v66, *(v61 + 48) + *(v67 + 72) * v24, v76, v15);
      v35 = *(v31 + 56);
      v36 = v77;
      v37 = v75;
      (*(v77 + 16))(v75, v35 + *(v77 + 72) * v24, SampleDaySummary);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetMd, &_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetMR);
      v39 = *(v38 + 48);
      v40 = *(v32 + 32);
      v28 = v69;
      v40(v69, v33, v34);
      (*(v36 + 32))(v28 + v39, v37, SampleDaySummary);
      (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
      v27 = v70;
      v23 = v71;
LABEL_17:
      outlined init with take of (key: DayIndex, value: TrainingLoadSampleDaySummary)?(v28, v27, &_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetSgMd, &_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetSgMR);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetMd, &_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetMR);
      if ((*(*(v41 - 8) + 48))(v27, 1, v41) == 1)
      {
        return;
      }

      v42 = *(v41 + 48);
      v43 = SampleDaySummary;
      v44 = v68;
      v45 = v76;
      (*v74)(v68, v27, v76);
      v46 = v64;
      (*v73)(v64, v27 + v42, v43);
      v47 = v65;
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
      v50 = v49;
      (*v62)(v44, v45);
      if ((v50 & 1) == 0)
      {
        (*v63)(v46, v43);
        return;
      }

      v51 = v77;
      v52 = *(v47 + 56) + *(v77 + 72) * v48;
      v53 = v75;
      (*(v77 + 16))(v75, v52, v43);
      lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type TrainingLoadSampleDaySummary and conformance TrainingLoadSampleDaySummary, MEMORY[0x277D10028], MEMORY[0x277D10040]);
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = *(v51 + 8);
      v55(v53, v43);
      v55(v46, v43);
      SampleDaySummary = v43;
      if ((v54 & 1) == 0)
      {
        return;
      }
    }

    if (v58 <= v17 + 1)
    {
      v25 = v17 + 1;
    }

    else
    {
      v25 = v58;
    }

    v26 = v25 - 1;
    v28 = v69;
    v27 = v70;
    while (1)
    {
      v29 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v29 >= v58)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetMd, &_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetMR);
        (*(*(v56 - 8) + 56))(v28, 1, 1, v56);
        v23 = 0;
        v17 = v26;
        goto LABEL_17;
      }

      v30 = *(v59 + 8 * v29);
      ++v17;
      if (v30)
      {
        v71 = (v30 - 1) & v30;
        v24 = __clz(__rbit64(v30)) | (v29 << 6);
        v17 = v29;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + v12);

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    specialized _NativeSet.isEqual(to:)(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    type metadata accessor for AnyCancellable();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v5 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
    if (!v12)
    {
LABEL_27:
      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v17 = *(v9 + 8 * v13);
        ++v16;
        if (v17)
        {
          v22 = (v17 - 1) & v17;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v22 = (v12 - 1) & v12;
LABEL_32:
      lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v20 = (v20 + 1) & v21;
        if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = (v10 + 63) >> 6;
      v12 = v22;
      v5 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
      if (!v22)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError, MEMORY[0x277D7DCD0], MEMORY[0x277D7DCD8]);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError, MEMORY[0x277D7DCD0], MEMORY[0x277D7DCE0]);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

double AlertButtonViewModel.dataSourceSink.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for AlertButtonViewModel.dataSourceSink : AlertButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);

  return result;
}

double AlertButtonViewModel.dataSourceSink.setter(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 56))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);

      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 56) = a1;

  return result;
}

double AlertButtonViewModel.notificationCenterSink.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double key path getter for AlertButtonViewModel.notificationCenterSink : AlertButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 64);

  return result;
}

double AlertButtonViewModel.notificationCenterSink.setter(uint64_t a1)
{
  swift_beginAccess();

  _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void closure #1 in AlertButtonViewModel.notificationCenterSink.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

double AlertButtonViewModel.paceAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for AlertButtonViewModel.paceAlerts : AlertButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);

  return result;
}

double AlertButtonViewModel.paceAlerts.setter(uint64_t a1)
{

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double AlertButtonViewModel.cadenceAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for AlertButtonViewModel.cadenceAlerts : AlertButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);

  return result;
}

double AlertButtonViewModel.cadenceAlerts.setter(uint64_t a1)
{

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double AlertButtonViewModel.powerAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for AlertButtonViewModel.powerAlerts : AlertButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);

  return result;
}

double AlertButtonViewModel.powerAlerts.setter(uint64_t a1)
{

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double AlertButtonViewModel.heartRateAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for AlertButtonViewModel.heartRateAlerts : AlertButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 96);

  return result;
}

double AlertButtonViewModel.heartRateAlerts.setter(uint64_t a1)
{

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 96) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double AlertButtonViewModel.timeSplitAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for AlertButtonViewModel.timeSplitAlerts : AlertButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);

  return result;
}

double AlertButtonViewModel.timeSplitAlerts.setter(uint64_t a1)
{

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double AlertButtonViewModel.distanceSplitAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for AlertButtonViewModel.distanceSplitAlerts : AlertButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 112);

  return result;
}

double AlertButtonViewModel.distanceSplitAlerts.setter(uint64_t a1)
{

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double AlertButtonViewModel.powerZoneAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for AlertButtonViewModel.powerZoneAlerts : AlertButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 120);

  return result;
}

double AlertButtonViewModel.powerZoneAlerts.setter(uint64_t a1)
{

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 120) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t AlertButtonViewModel.__allocating_init(dataSource:)(void *a1)
{
  v2 = swift_allocObject();
  AlertButtonViewModel.init(dataSource:)(a1);
  return v2;
}

void *AlertButtonViewModel.init(dataSource:)(void *a1)
{
  v2 = v1;
  v1[7] = 0;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v1[8] = v4;
  v5 = MEMORY[0x277D84F90];
  v2[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  ObservationRegistrar.init()();
  outlined init with copy of ActivityPickerDataSourceObserving(a1, (v2 + 2));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of ActivityPickerDataSourceObserving.compoundItemsPublisher.getter();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay11WorkoutCore26CompoundActivityPickerItemCGs5NeverOGMd, &_s7Combine12AnyPublisherVySay11WorkoutCore26CompoundActivityPickerItemCGs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>();
  v6 = Publisher<>.sink(receiveValue:)();

  AlertButtonViewModel.dataSourceSink.setter(v6);
  AlertButtonViewModel.configureNotifications()();
  __swift_destroy_boxed_opaque_existential_1Tm_5(a1);
  return v2;
}

double closure #1 in AlertButtonViewModel.init(dataSource:)(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = Array<A>.standardItemActivityTypes.getter(v2);
    AlertButtonViewModel.fetchTargetZones(for:)(v4);
    AlertButtonViewModel.fetchSplitStorage(for:)(v4);
  }

  return result;
}

uint64_t Array<A>.standardItemActivityTypes.getter(unint64_t a1)
{
  v2 = type metadata accessor for CompoundActivityPickerItemValue();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_19:
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v8 = 0;
  v21 = a1 & 0xC000000000000001;
  v9 = (v3 + 11);
  v20 = *MEMORY[0x277D7E680];
  v10 = (v3 + 1);
  v18 = (v3 + 12);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v19 = v11;
    for (i = v8; ; ++i)
    {
      if (v21)
      {
        v13 = a1;
        v14 = MEMORY[0x20F30C990](i, a1, v4);
      }

      else
      {
        if (i >= *(v22 + 16))
        {
          goto LABEL_18;
        }

        v13 = a1;
        v14 = *(a1 + 8 * i + 32);
      }

      a1 = v14;
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v3 = v14;
      CompoundActivityPickerItem.value.getter();
      v15 = (*v9)(v6, v2);
      if (v15 == v20)
      {
        break;
      }

      (*v10)(v6, v2);
      a1 = v13;
      if (v8 == v7)
      {
        return v19;
      }
    }

    (*v18)(v6, v2);
    v16 = *v6;
    StandardActivityPickerItem.activityType.getter();

    v3 = &v23;
    MEMORY[0x20F30BCF0]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = v23;
    a1 = v13;
  }

  while (v8 != v7);
  return v11;
}

uint64_t AlertButtonViewModel.anyAlertIsEnabled(for:)(void *a1)
{
  v2 = v1;
  v94 = *v1;
  v4 = type metadata accessor for Logger();
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 uniqueIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  swift_getKeyPath();
  v103 = v2;
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = v2[9];
  if (*(v12 + 16) && (, v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11), v15 = v14, , (v15 & 1) != 0))
  {
    v102 = *(*(v12 + 56) + v13);
  }

  else
  {

    v102 = 0;
  }

  v16 = [a1 uniqueIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  swift_getKeyPath();
  v103 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = v2[10];
  if (*(v20 + 16) && (, v21 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19), v23 = v22, , (v23 & 1) != 0))
  {
    v101 = *(*(v20 + 56) + v21);
  }

  else
  {

    v101 = 0;
  }

  v24 = [a1 uniqueIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  swift_getKeyPath();
  v103 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = v2[11];
  if (*(v28 + 16) && (, v29 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v27), v31 = v30, , (v31 & 1) != 0))
  {
    v100 = *(*(v28 + 56) + v29);
  }

  else
  {

    v100 = 0;
  }

  v32 = [a1 uniqueIdentifier];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  swift_getKeyPath();
  v103 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = v2[15];
  if (*(v36 + 16) && (, v37 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v35), v39 = v38, , (v39 & 1) != 0))
  {
    v99 = *(*(v36 + 56) + v37);
  }

  else
  {

    v99 = 0;
  }

  v40 = [a1 uniqueIdentifier];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  swift_getKeyPath();
  v103 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = v2[12];
  if (*(v44 + 16) && (, v45 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v43), v47 = v46, , (v47 & 1) != 0))
  {
    v98 = *(*(v44 + 56) + v45);
  }

  else
  {

    v98 = 0;
  }

  v48 = [a1 uniqueIdentifier];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  swift_getKeyPath();
  v103 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = v2[13];
  if (*(v52 + 16) && (, v53 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v51), v55 = v54, , (v55 & 1) != 0))
  {
    v97 = *(*(v52 + 56) + v53);
  }

  else
  {

    v97 = 0;
  }

  v56 = [a1 uniqueIdentifier];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  swift_getKeyPath();
  v103 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = v2[14];
  if (*(v60 + 16) && (, v61 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v59), v63 = v62, , (v63 & 1) != 0))
  {
    v64 = *(*(v60 + 56) + v61);
  }

  else
  {

    v64 = 0;
  }

  v103 = 0;
  v104 = 0xE000000000000000;
  _StringGuts.grow(_:)(289);
  MEMORY[0x20F30BC00](0xD00000000000002BLL, 0x800000020CBA2D20);
  v65 = [a1 description];
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  MEMORY[0x20F30BC00](v66, v68);

  MEMORY[0x20F30BC00](0xD00000000000001CLL, 0x800000020CBA2D50);
  if (v102)
  {
    v69 = 1702195828;
  }

  else
  {
    v69 = 0x65736C6166;
  }

  if (v102)
  {
    v70 = 0xE400000000000000;
  }

  else
  {
    v70 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v69, v70);

  MEMORY[0x20F30BC00](0xD000000000000020, 0x800000020CBA2D70);
  if (v101)
  {
    v71 = 1702195828;
  }

  else
  {
    v71 = 0x65736C6166;
  }

  if (v101)
  {
    v72 = 0xE400000000000000;
  }

  else
  {
    v72 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v71, v72);

  MEMORY[0x20F30BC00](0xD00000000000001ELL, 0x800000020CBA2DA0);
  if (v100)
  {
    v73 = 1702195828;
  }

  else
  {
    v73 = 0x65736C6166;
  }

  if (v100)
  {
    v74 = 0xE400000000000000;
  }

  else
  {
    v74 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v73, v74);

  MEMORY[0x20F30BC00](0xD000000000000022, 0x800000020CBA2DC0);
  if (v99)
  {
    v75 = 1702195828;
  }

  else
  {
    v75 = 0x65736C6166;
  }

  if (v99)
  {
    v76 = 0xE400000000000000;
  }

  else
  {
    v76 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v75, v76);

  MEMORY[0x20F30BC00](0xD000000000000022, 0x800000020CBA2DF0);
  if (v98)
  {
    v77 = 1702195828;
  }

  else
  {
    v77 = 0x65736C6166;
  }

  if (v98)
  {
    v78 = 0xE400000000000000;
  }

  else
  {
    v78 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v77, v78);

  MEMORY[0x20F30BC00](0xD000000000000022, 0x800000020CBA2E20);
  if (v97)
  {
    v79 = 1702195828;
  }

  else
  {
    v79 = 0x65736C6166;
  }

  if (v97)
  {
    v80 = 0xE400000000000000;
  }

  else
  {
    v80 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v79, v80);

  MEMORY[0x20F30BC00](0xD000000000000026, 0x800000020CBA2E50);
  if (v64)
  {
    v81 = 1702195828;
  }

  else
  {
    v81 = 0x65736C6166;
  }

  if (v64)
  {
    v82 = 0xE400000000000000;
  }

  else
  {
    v82 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v81, v82);

  v84 = v103;
  v83 = v104;
  static WOLog.workoutVoice.getter();

  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v103 = v88;
    *v87 = 136315394;
    v89 = _typeName(_:qualified:)();
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v103);

    *(v87 + 4) = v91;
    *(v87 + 12) = 2080;
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, &v103);

    *(v87 + 14) = v92;
    _os_log_impl(&dword_20C66F000, v85, v86, "%s %s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v88, -1, -1);
    MEMORY[0x20F30E080](v87, -1, -1);
  }

  else
  {
  }

  (*(v95 + 8))(v7, v96);
  return (v102 | v101 | v100 | v99 | v98 | v97 | v64) & 1;
}

Swift::Void __swiftcall AlertButtonViewModel.fetchTargetZones(for:)(Swift::OpaquePointer a1)
{
  v1 = type metadata accessor for TargetZone.ZoneTypeKey();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 104);
  v6(v5, *MEMORY[0x277D7DEA0], v1, v3);
  v7 = static TargetZoneStorage.alertEnablementDictionary(for:zoneKey:)();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v9 = AlertButtonViewModel.paceAlerts.setter(v7);
  v6(v5, *MEMORY[0x277D7DEB0], v1, v9);
  v10 = static TargetZoneStorage.alertEnablementDictionary(for:zoneKey:)();
  v8(v5, v1);
  v11 = AlertButtonViewModel.cadenceAlerts.setter(v10);
  v6(v5, *MEMORY[0x277D7DEA8], v1, v11);
  v12 = static TargetZoneStorage.alertEnablementDictionary(for:zoneKey:)();
  v8(v5, v1);
  AlertButtonViewModel.powerAlerts.setter(v12);
  v13 = static TargetZoneStorage.heartRateAlertEnablementDictionary(for:)();
  AlertButtonViewModel.heartRateAlerts.setter(v13);
  v14 = static TargetZoneStorage.powerZonesAlertEnablementDictionary(for:)();
  AlertButtonViewModel.powerZoneAlerts.setter(v14);
}

Swift::Void __swiftcall AlertButtonViewModel.fetchSplitStorage(for:)(Swift::OpaquePointer a1)
{
  v1 = objc_opt_self();
  _sSo23FIUIWorkoutActivityTypeCMaTm_11(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v50 = v1;
  v3 = [v1 timeSplitEnablementDictionaryForActivityTypes_];

  _sSo23FIUIWorkoutActivityTypeCMaTm_11(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  v7 = 0;
  v9 = v4 + 64;
  v8 = *(v4 + 64);
  v53 = v4;
  v10 = 1 << *(v4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v51 = v5 + 64;
  if ((v11 & v8) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v7 << 6);
      v18 = (*(v53 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(v53 + 56) + 8 * v17);

      v22 = [v21 BOOLValue];
      *(v51 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v23 = (v6[6] + 16 * v17);
      *v23 = v19;
      v23[1] = v20;
      *(v6[7] + v17) = v22;
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v6[2] = v26;
    }

    while (v12);
  }

  v15 = v7;
  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v7 >= v13)
    {
      break;
    }

    v16 = *(v9 + 8 * v7);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  AlertButtonViewModel.timeSplitAlerts.setter(v6);
  v27 = Array._bridgeToObjectiveC()().super.isa;
  v28 = [v50 distanceSplitEnablementDictionaryForActivityTypes_];

  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = static _DictionaryStorage.copy(original:)();
  v31 = v30;
  v32 = 0;
  v54 = v29;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v29 + 64;
  v36 = v34 & *(v29 + 64);
  v37 = (v33 + 63) >> 6;
  v52 = v30 + 64;
  if (!v36)
  {
LABEL_17:
    v39 = v32;
    while (1)
    {
      v32 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_29;
      }

      if (v32 >= v37)
      {

        AlertButtonViewModel.distanceSplitAlerts.setter(v31);
        return;
      }

      v40 = *(v35 + 8 * v32);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v36 = (v40 - 1) & v40;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v38 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
LABEL_22:
    v41 = v38 | (v32 << 6);
    v42 = (*(v54 + 48) + 16 * v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = *(*(v54 + 56) + 8 * v41);

    v46 = [v45 BOOLValue];
    *(v52 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v47 = (v31[6] + 16 * v41);
    *v47 = v43;
    v47[1] = v44;
    *(v31[7] + v41) = v46;
    v48 = v31[2];
    v25 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v25)
    {
      break;
    }

    v31[2] = v49;
    if (!v36)
    {
      goto LABEL_17;
    }
  }

LABEL_31:
  __break(1u);
}

double AlertButtonViewModel.configureNotifications()()
{
  v1 = v0;
  v20 = *v0;
  v2 = v20;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v7 = [v17 defaultCenter];
  v8 = static TargetZoneStorage.changeNotification.getter();
  NSNotificationCenter.publisher(for:object:)();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  v19 = lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  Publisher<>.sink(receiveValue:)();

  v18 = *(v4 + 8);
  v18(v6, v3);
  swift_getKeyPath();
  v21 = v1;
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel, &protocol conformance descriptor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v11 = [v17 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v20;
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  Publisher<>.sink(receiveValue:)();

  v18(v6, v3);
  swift_getKeyPath();
  v21 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

uint64_t closure #1 in closure #1 in AlertButtonViewModel.configureNotifications()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in AlertButtonViewModel.configureNotifications(), v8, v7);
}

uint64_t closure #1 in closure #1 in AlertButtonViewModel.configureNotifications()()
{
  v18 = v0;

  static WOLog.workoutVoice.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20C66F000, v1, v2, "%s TargetZones changed, refetching defaults.", v7, 0xCu);
    v12 = __swift_destroy_boxed_opaque_existential_1Tm_5(v8);
    MEMORY[0x20F30E080](v8, -1, -1, v12);
    MEMORY[0x20F30E080](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v13 = dispatch thunk of ActivityPickerDataSourceObserving.compoundItems.getter();
  v14 = Array<A>.standardItemActivityTypes.getter(v13);

  AlertButtonViewModel.fetchTargetZones(for:)(v14);

  v15 = v0[1];

  return v15();
}

double closure #1 in AlertButtonViewModel.configureNotifications()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    v15[5] = a3;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, a5, v15);
  }

  return result;
}

uint64_t closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in AlertButtonViewModel.configureNotifications(), v8, v7);
}

uint64_t closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()()
{
  v18 = v0;

  static WOLog.workoutVoice.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20C66F000, v1, v2, "%s Splits storage changed, refetching defaults.", v7, 0xCu);
    v12 = __swift_destroy_boxed_opaque_existential_1Tm_5(v8);
    MEMORY[0x20F30E080](v8, -1, -1, v12);
    MEMORY[0x20F30E080](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v13 = dispatch thunk of ActivityPickerDataSourceObserving.compoundItems.getter();
  v14 = Array<A>.standardItemActivityTypes.getter(v13);

  AlertButtonViewModel.fetchSplitStorage(for:)(v14);

  v15 = v0[1];

  return v15();
}

char *AlertButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_5((v0 + 16));

  v1 = OBJC_IVAR____TtC9WorkoutUI20AlertButtonViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AlertButtonViewModel.__deallocating_deinit()
{
  AlertButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

void specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v7 &= v7 - 1;
LABEL_12:

      v11 = __CocoaSet.contains(_:)();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v10 = *(a2 + 56 + 8 * v4);
      ++v9;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t outlined init with copy of ActivityPickerDataSourceObserving(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>()
{
  result = lazy protocol witness table cache variable for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVySay11WorkoutCore26CompoundActivityPickerItemCGs5NeverOGMd, &_s7Combine12AnyPublisherVySay11WorkoutCore26CompoundActivityPickerItemCGs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for AlertButtonViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for AlertButtonViewModel;
  if (!type metadata singleton initialization cache for AlertButtonViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_11(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata completion function for AlertButtonViewModel(uint64_t a1)
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

void partial apply for closure #1 in AlertButtonViewModel.distanceSplitAlerts.setter()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

void partial apply for closure #1 in AlertButtonViewModel.timeSplitAlerts.setter()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
}

void partial apply for closure #1 in AlertButtonViewModel.powerZoneAlerts.setter()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
}

void partial apply for closure #1 in AlertButtonViewModel.heartRateAlerts.setter()
{
  *(*(v0 + 16) + 96) = *(v0 + 24);
}

void partial apply for closure #1 in AlertButtonViewModel.powerAlerts.setter()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

void partial apply for closure #1 in AlertButtonViewModel.cadenceAlerts.setter()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

void partial apply for closure #1 in AlertButtonViewModel.paceAlerts.setter()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #2 in AlertButtonViewModel.configureNotifications();

  return closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()(a1, v4, v5, v7, v6);
}