uint64_t BSDayPeriod.greeting.getter(uint64_t a1)
{
  v4 = 0;
  sub_269D71D6C(&v4, a1);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v1 = qword_280C0D990;
  v2 = sub_269D972C0();

  return v2;
}

uint64_t BSDayPeriod.Simplified.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269D71D6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (a2 <= 4)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        result = 0xD000000000000011;
        v6 = "MORNING1_GREETING";
        goto LABEL_24;
      }

      if (a2 != 1)
      {
LABEL_36:
        result = sub_269D9B100();
        __break(1u);
        return result;
      }

      result = 0xD000000000000011;
      v6 = "MORNING2_GREETING";
    }

    else
    {
      if (a2 == 2)
      {
        v4 = "AFTERNOON1_GREETING";
LABEL_16:
        v7 = (v4 - 32) | 0x8000000000000000;
        result = 0xD000000000000013;
        if ((v2 & 1) == 0)
        {
          return result;
        }

        goto LABEL_28;
      }

      if (a2 == 3)
      {
        v4 = "AFTERNOON2_GREETING";
        goto LABEL_16;
      }

      result = 0xD000000000000011;
      v6 = "EVENING1_GREETING";
    }

LABEL_24:
    v7 = (v6 - 32) | 0x8000000000000000;
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (a2 > 7)
  {
    switch(a2)
    {
      case 8:
        v7 = 0xED0000474E495445;
        result = 0x4552475F4E4F4F4ELL;
        if ((v2 & 1) == 0)
        {
          return result;
        }

        goto LABEL_28;
      case 9:
        result = 0xD000000000000011;
        v6 = "MIDNIGHT_GREETING";
        goto LABEL_24;
      case 10:
        if (qword_280C0B218 != -1)
        {
          swift_once();
        }

        v8 = sub_269D98250();
        __swift_project_value_buffer(v8, qword_280C0B220);
        v9 = sub_269D98230();
        v10 = sub_269D9AB60();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_269C18000, v9, v10, "[BSDayPeriod] unknown period, using fallback", v11, 2u);
          MEMORY[0x26D652460](v11, -1, -1);
        }

        v12[0] = v2;
        return sub_269D71D6C(v12, 1);
    }

    goto LABEL_36;
  }

  if (a2 == 5)
  {
    result = 0xD000000000000011;
    v6 = "EVENING2_GREETING";
    goto LABEL_24;
  }

  if (a2 == 6)
  {
    v3 = 0x31544847494ELL;
  }

  else
  {
    v3 = 0x32544847494ELL;
  }

  result = v3 & 0xFFFFFFFFFFFFLL | 0x475F000000000000;
  v7 = 0xEF474E4954454552;
  if (v2)
  {
LABEL_28:
    v12[0] = result;
    v12[1] = v7;

    MEMORY[0x26D650930](0x454D414E5FLL, 0xE500000000000000);

    return v12[0];
  }

  return result;
}

Swift::String __swiftcall BSDayPeriod.namedGreeting(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v14 = 1;
  sub_269D71D6C(&v14, v1);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v4 = qword_280C0D990;
  sub_269D972C0();

  sub_269D718F8(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269D9EBE0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_269C7172C(v5, v6, v7);
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  v8 = sub_269D9A600();
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

unint64_t sub_269D721B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803518B0;
  if (!qword_2803518B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518B0);
  }

  return result;
}

unint64_t sub_269D7220C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803518B8;
  if (!qword_2803518B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518B8);
  }

  return result;
}

unint64_t sub_269D72264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803518C0;
  if (!qword_2803518C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518C0);
  }

  return result;
}

unint64_t sub_269D722BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803518C8;
  if (!qword_2803518C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518C8);
  }

  return result;
}

unint64_t sub_269D72314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803518D0;
  if (!qword_2803518D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518D0);
  }

  return result;
}

id HKFeatureAvailabilityProviding.isFeatureOnboarded.getter(uint64_t a1)
{

  return sub_269D72448(a1, &selRef_isCurrentOnboardingVersionCompletedWithError_);
}

id HKFeatureAvailabilityProviding.pairedWatchSupportsSleep.getter(uint64_t a1)
{

  return sub_269D72448(a1, &selRef_isFeatureCapabilitySupportedOnActivePairedDeviceWithError_);
}

id sub_269D72448(uint64_t a1, SEL *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v3 = [v2 *a2];
  if (v3)
  {
    v4 = v3;
    v5 = v10[0];
    v6 = [v4 BOOLValue];
  }

  else
  {
    v7 = v10[0];
    v8 = sub_269D97360();

    swift_willThrow();
    return 0;
  }

  return v6;
}

id sub_269D72518()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker____lazy_storage___formatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker____lazy_storage___formatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker____lazy_storage___formatter);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for BriefOneHourIsSixtyMinDateComponentsFormatter()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_269D7258C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_durationLabel);
  sub_269D726D4();
  v4 = v3;
  [v2 setAttributedText_];

  v5 = v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    v7 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex);
    v8 = 0.0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_options);
      if (v7 < *(v9 + 16))
      {
        v8 = *(v9 + 8 * v7 + 32);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6, v8);
    swift_unknownObjectRelease();
  }

  v11 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex;
  [*(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_minusButton) setEnabled_];
  v12 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_plusButton);
  v13 = *(v1 + v11) != *(*(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_options) + 16) - 1;

  return [v12 setEnabled_];
}

void sub_269D726D4()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  sub_269D73100(0, &qword_280351910, &qword_28034DE70, type metadata accessor for TraitKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBE0;
  v2 = *MEMORY[0x277D74430];
  *(inited + 32) = *MEMORY[0x277D74430];
  v3 = *MEMORY[0x277D74420];
  type metadata accessor for Weight(0);
  *(inited + 64) = v4;
  *(inited + 40) = v3;
  v5 = v0;
  v6 = v2;
  v7 = sub_269C44B4C(inited);
  swift_setDeallocating();
  sub_269D731F8(inited + 32, &qword_28034DE70, type metadata accessor for TraitKey);
  sub_269D73100(0, &unk_2803505B0, &qword_28034DEC0, type metadata accessor for AttributeName);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_269D9EBE0;
  v9 = *MEMORY[0x277D74380];
  *(v8 + 32) = *MEMORY[0x277D74380];
  sub_269D73158(0);
  *(v8 + 64) = v10;
  *(v8 + 40) = v7;
  v11 = v9;

  sub_269C44468(v8);
  swift_setDeallocating();
  sub_269D731F8(v8 + 32, &qword_28034DEC0, type metadata accessor for AttributeName);
  type metadata accessor for AttributeName(0);
  sub_269D73254(&qword_28034DBF8, type metadata accessor for AttributeName, &unk_269D9FC30);
  v12 = sub_269D9A480();

  v13 = [v5 fontDescriptorByAddingAttributes_];

  v14 = [v13 fontDescriptorWithDesign_];
  if (v14)
  {

    v15 = objc_opt_self();
    v16 = [v15 fontWithDescriptor:v14 size:42.0];
    if (sub_269D9A2C0())
    {
      isa = UIFontDescriptor.addingLowercaseSmallCapsAttributes()().super.isa;
      v18 = UIFontDescriptor.addingUppercaseSmallCapsAttributes()().super.isa;

      v14 = v18;
    }

    v19 = [v15 fontWithDescriptor:v14 size:42.0];
    v20 = sub_269D73054();
    if (v21)
    {
      v22 = v21;
      v32 = v20;
      sub_269D73100(0, &qword_280350108, &qword_280350110, type metadata accessor for Key);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_269D9EBE0;
      v24 = *MEMORY[0x277D740A8];
      *(v23 + 32) = *MEMORY[0x277D740A8];
      v25 = sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
      *(v23 + 64) = v25;
      *(v23 + 40) = v19;
      v26 = v24;
      v31 = v19;
      v27 = sub_269C44B18(v23);
      swift_setDeallocating();
      sub_269D731F8(v23 + 32, &qword_280350110, type metadata accessor for Key);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_269D9EBE0;
      *(v28 + 32) = v26;
      *(v28 + 64) = v25;
      *(v28 + 40) = v16;
      v29 = v16;
      v30 = sub_269C44B18(v28);
      swift_setDeallocating();
      sub_269D731F8(v28 + 32, &qword_280350110, type metadata accessor for Key);
      sub_269C1B0B8(0, &unk_28034EBF0, 0x277CCA898);
      MEMORY[0x26D650ED0](v32, v22, v30, v27);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_269D72D3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex);
  if (v1 != *(*(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_options) + 16) - 1)
  {
    v2 = __OFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex) = v3;
      return sub_269D7258C();
    }
  }

  return result;
}

id sub_269D72F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimeDurationPicker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D73054()
{
  v1 = sub_269D72518();
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex);
  v4 = 0.0;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_options);
    if (v3 < *(v5 + 16))
    {
      v4 = *(v5 + 8 * v3 + 32);
    }
  }

  v6 = [v1 stringFromTimeInterval_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_269D9A630();

  return v7;
}

void sub_269D73100(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_269D7329C(255, a3, a4);
    v5 = sub_269D9B240();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269D73158(uint64_t a1)
{
  if (!qword_280351918)
  {
    type metadata accessor for TraitKey(255);
    sub_269D73254(&qword_28034DBD8, type metadata accessor for TraitKey, &unk_269D9FBEC);
    v1 = sub_269D9A4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_280351918);
    }
  }
}

uint64_t sub_269D731F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269D7329C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269D73254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269D7329C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_269D73304()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker____lazy_storage___formatter) = 0;
  v2 = type metadata accessor for PlusMinusButton();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI15PlusMinusButton_type] = 24577;
  v25.receiver = v3;
  v25.super_class = v2;
  v4 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v5 = *MEMORY[0x277D76A08];
  v6 = *MEMORY[0x277D74420];
  v7 = v4;
  v22 = v6;
  v8 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v5, 0, 1, 0, 0, 0, 0, v6, 0);
  sub_269C1B0B8(0, &qword_280351920, 0x277D755B8);
  v24 = *&v7[OBJC_IVAR____TtC13SleepHealthUI15PlusMinusButton_type];
  Symbol.systemName.getter();
  v9 = sub_269D9ADA0();

  v10 = objc_opt_self();
  v11 = [v10 configurationWithFont:v8 scale:3];
  if (v9)
  {
    v12 = v9;
    v9 = [v12 imageWithConfiguration_];

    v11 = v12;
  }

  v13 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_plusButton;
  [v7 setImage:v9 forState:0];

  *(v1 + v13) = v7;
  v14 = objc_allocWithZone(v2);
  *&v14[OBJC_IVAR____TtC13SleepHealthUI15PlusMinusButton_type] = 20481;
  v23.receiver = v14;
  v23.super_class = v2;
  v15 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v5, 0, 1, 0, 0, 0, 0, v22, 0);
  v24 = *&v15[OBJC_IVAR____TtC13SleepHealthUI15PlusMinusButton_type];
  Symbol.systemName.getter();
  v17 = sub_269D9ADA0();

  v18 = [v10 configurationWithFont:v16 scale:3];
  if (v17)
  {
    v19 = v17;
    v17 = [v19 imageWithConfiguration_];

    v18 = v19;
  }

  v20 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_minusButton;
  [v15 setImage:v17 forState:0];

  *(v1 + v20) = v15;
  v21 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_durationLabel;
  *(v1 + v21) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269D9B100();
  __break(1u);
}

void sub_269D736A4()
{
  v38 = MEMORY[0x277D84F90];
  v1 = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
  v2 = [v0 layoutMarginsGuide];
  v37 = [v2 topAnchor];

  v3 = [v0 layoutMarginsGuide];
  v36 = [v3 bottomAnchor];

  v4 = [v0 layoutMarginsGuide];
  v5 = [v4 leadingAnchor];

  v6 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_days;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 >> 62)
  {
    v8 = sub_269D9AF50();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v34 = v0;
  v35 = &v0[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_configuration];

  v9 = 0;
  v10 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D651260](v10, v7);
    }

    else
    {
      v12 = *(v7 + 8 * v10 + 32);
    }

    v13 = v12;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_269C4E764();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269DA23C0;
    v15 = [v13 leadingAnchor];
    v16 = [v15 constraintEqualToAnchor_];

    *(inited + 32) = v16;
    v17 = [v13 topAnchor];
    v18 = [v17 constraintEqualToAnchor_];

    *(inited + 40) = v18;
    v19 = [v13 bottomAnchor];
    v20 = [v36 constraintEqualToAnchor_];

    *(inited + 48) = v20;
    sub_269C49D30(inited);
    v21 = [v13 heightAnchor];
    v22 = [v21 constraintEqualToConstant_];

    LODWORD(v23) = 1144750080;
    [v22 setPriority_];
    v24 = v22;
    MEMORY[0x26D650A10]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269D9A7F0();
    }

    sub_269D9A820();
    if (v9)
    {
      v25 = v9;
      v26 = [v13 widthAnchor];
      v27 = [v26 constraintEqualToAnchor_];

      MEMORY[0x26D650A10]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269D9A7F0();
      }

      sub_269D9A820();
    }

    else
    {
      v9 = [v13 widthAnchor];
    }

    ++v10;
    v11 = [v13 trailingAnchor];

    v5 = v11;
  }

  while (v8 != v10);
  v28 = v9;

  v5 = v11;
  v0 = v34;
  v1 = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
LABEL_19:
  v29 = [v0 v1[446]];
  v30 = [v29 trailingAnchor];

  v31 = [v30 constraintEqualToAnchor_];
  MEMORY[0x26D650A10]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_269D9A7F0();
  }

  sub_269D9A820();
  v32 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
  v33 = sub_269D9A7D0();

  [v32 activateConstraints_];
}

id sub_269D73EA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScheduleDayPicker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269D73F54(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_model];
  swift_beginAccess();
  *(v5 + 1) = a1;
  *(v5 + 2) = a2;
  v6 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_days;
  result = swift_beginAccess();
  v8 = *&v2[v6];
  if (v8 >> 62)
  {
    result = sub_269D9AF50();
    v9 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return result;
  }

  v17 = v2;

  v10 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D651260](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    ++v10;
    [v11 setSelected_];
    v13 = *(v5 + 1);
    v14 = (HKSPWeekdaysFromDay() & ~v13) == 0;
    v12[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere] = v14;
    sub_269C82B24();
  }

  while (v9 != v10);

  v2 = v17;
LABEL_10:
  if (*(v5 + 1))
  {
    v15 = 22.0;
  }

  else
  {
    v15 = 15.0;
  }

  v16 = &v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_configuration];
  *v16 = xmmword_269DAAF00;
  *(v16 + 2) = v15;
  *(v16 + 24) = xmmword_269DAAF10;
  return [v2 setLayoutMargins_];
}

void sub_269D74128(uint64_t a1, uint64_t a2, char *a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_model;
  swift_beginAccess();
  v6 = *&a3[v5];
  v7 = objc_opt_self();
  v8 = v6;
  v13[0] = sub_269C83580;
  v13[1] = 0;
  v13[2] = [v7 clearColor];
  v13[3] = [v7 labelColor];
  v13[4] = [v7 clearColor];
  v13[5] = [v7 labelColor];
  v13[6] = [v7 systemGray3Color];
  v13[7] = 0x4014000000000000;
  v13[8] = [v7 systemBackgroundColor];
  v14 = xmmword_269DAAF20;
  v9 = objc_allocWithZone(type metadata accessor for SleepScheduleDayPickerDay());
  v10 = sub_269C81E7C(a1, v8, v13);
  [v10 addTarget:a3 action:sel_didTapDay_ forControlEvents:64];
  v11 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_days;
  swift_beginAccess();
  v12 = v10;
  MEMORY[0x26D650A10]();
  if (*((*&a3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a3[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_269D9A7F0();
  }

  sub_269D9A820();
  swift_endAccess();
  [a3 addSubview_];
}

void sub_269D743E8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B728);
  v5 = a1;
  v6 = sub_269D98230();
  v7 = sub_269D9AB50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = v2;
    v10 = swift_slowAlloc();
    v50[0] = v10;
    *v8 = 136446466;
    v11 = sub_269D9B4D0();
    v13 = sub_269C2EACC(v11, v12, v50);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    HKSPWeekdaysFromDay();
    v14 = NSStringFromHKSPWeekdays();
    v15 = sub_269D9A630();
    v17 = v16;

    v18 = sub_269C2EACC(v15, v17, v50);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] Did tap day: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    v19 = v10;
    v2 = v9;
    MEMORY[0x26D652460](v19, -1, -1);
    MEMORY[0x26D652460](v8, -1, -1);
  }

  v20 = &v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_model];
  swift_beginAccess();
  v21 = *(v20 + 2);
  if ((HKSPWeekdaysFromDay() & ~v21) == 0)
  {
    v22 = *(v20 + 2);
    if (v22 == HKSPWeekdaysFromDay())
    {
      return;
    }

    swift_beginAccess();
    v23 = HKSPWeekdaysFromDay();
    v24 = *(v20 + 2);
    if ((v24 & v23) != 0)
    {
      *(v20 + 2) = v24 & ~v23;
    }

    swift_endAccess();
    v25 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_days;
    swift_beginAccess();
    v26 = *&v2[v25];
    if (v26 >> 62)
    {
      v27 = sub_269D9AF50();
      if (!v27)
      {
        goto LABEL_31;
      }

      goto LABEL_11;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
LABEL_11:
      v49 = v2;
      if (v27 >= 1)
      {

        v28 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x26D651260](v28, v26);
          }

          else
          {
            v29 = *(v26 + 8 * v28 + 32);
          }

          v30 = v29;
          ++v28;
          [v29 setSelected_];
          v31 = *(v20 + 1);
          v32 = (HKSPWeekdaysFromDay() & ~v31) == 0;
          v30[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere] = v32;
          sub_269C82B24();
        }

        while (v27 != v28);
LABEL_30:

        v2 = v49;
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_31:
    [v2 sendActionsForControlEvents_];
    return;
  }

  v33 = *(v20 + 1);
  if ((HKSPWeekdaysFromDay() & ~v33) != 0)
  {
    swift_beginAccess();
    v39 = HKSPWeekdaysFromDay();
    v40 = *(v20 + 2);
    if ((v39 & ~v40) != 0)
    {
      *(v20 + 2) = v40 | v39;
    }

    swift_endAccess();
    v41 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_days;
    swift_beginAccess();
    v42 = *&v2[v41];
    if (v42 >> 62)
    {
      v43 = sub_269D9AF50();
      if (!v43)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        goto LABEL_31;
      }
    }

    v49 = v2;
    if (v43 >= 1)
    {

      v44 = 0;
      do
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x26D651260](v44, v42);
        }

        else
        {
          v45 = *(v42 + 8 * v44 + 32);
        }

        v46 = v45;
        ++v44;
        [v45 setSelected_];
        v47 = *(v20 + 1);
        v48 = (HKSPWeekdaysFromDay() & ~v47) == 0;
        v46[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere] = v48;
        sub_269C82B24();
      }

      while (v43 != v44);
      goto LABEL_30;
    }

LABEL_39:
    __break(1u);
    return;
  }

  sub_269C1B0B8(0, &unk_28034EF40, 0x277D75110);
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  *(v34 + 24) = v5;
  v35 = v5;
  v36 = v2;
  v37 = sub_269D74B3C(sub_269D75580, v34);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong presentViewController:v37 animated:1 completion:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_269D7497C(uint64_t result, char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = a2;
    v4 = &a2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_model];
    swift_beginAccess();
    v5 = HKSPWeekdaysFromDay();
    v6 = *(v4 + 2);
    if ((v5 & ~v6) != 0)
    {
      *(v4 + 2) = v6 | v5;
    }

    swift_endAccess();
    v7 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_days;
    result = swift_beginAccess();
    v8 = *&v3[v7];
    if (v8 >> 62)
    {
      result = sub_269D9AF50();
      v9 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_6:
        if (v9 < 1)
        {
          __break(1u);
          return result;
        }

        v15 = v3;

        v10 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x26D651260](v10, v8);
          }

          else
          {
            v11 = *(v8 + 8 * v10 + 32);
          }

          v12 = v11;
          ++v10;
          [v11 setSelected_];
          v13 = *(v4 + 1);
          v14 = (HKSPWeekdaysFromDay() & ~v13) == 0;
          v12[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere] = v14;
          sub_269C82B24();
        }

        while (v9 != v10);

        v3 = v15;
      }
    }

    return [v3 sendActionsForControlEvents_];
  }

  return result;
}

id sub_269D74B3C(uint64_t a1, uint64_t a2)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  sub_269D972C0();
  v4 = sub_269D9A5F0();

  v5 = sub_269D9A5F0();

  v6 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v4 message:v5 preferredStyle:{1, 0xE000000000000000}];

  sub_269D972C0();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_269D9A5F0();

  v21 = sub_269D75588;
  v22 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_269CECE18;
  v20 = &block_descriptor_28_0;
  v9 = _Block_copy(&aBlock);

  v10 = objc_opt_self();
  v11 = [v10 actionWithTitle:v8 style:1 handler:{v9, 0xE000000000000000}];
  _Block_release(v9);

  [v6 addAction_];
  sub_269D972C0();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_269D9A5F0();

  v21 = sub_269D755AC;
  v22 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_269CECE18;
  v20 = &block_descriptor_34_1;
  v14 = _Block_copy(&aBlock);

  v15 = [v10 actionWithTitle:v13 style:0 handler:{v14, 0xE000000000000000}];
  _Block_release(v14);

  [v6 addAction_];
  return v6;
}

uint64_t sub_269D7501C(uint64_t a1, void (*a2)(void, __n128), uint64_t a3, uint64_t a4, char a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (a2)(a5 & 1);
}

char *sub_269D750E0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_269D977A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_alertPresenter + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_days] = MEMORY[0x277D84F90];
  v12 = &v3[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_model];
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  v13 = 22.0;
  if (!a2)
  {
    v13 = 15.0;
  }

  v14 = &v3[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_configuration];
  *v14 = xmmword_269DAAF00;
  *(v14 + 2) = v13;
  *(v14 + 24) = xmmword_269DAAF10;
  v15 = type metadata accessor for SleepScheduleDayPicker();
  v39.receiver = v3;
  v39.super_class = v15;
  v16 = a1;
  v17 = objc_msgSendSuper2(&v39, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = &v17[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_model];
  swift_beginAccess();
  v19 = *v18;
  v20 = v17;
  v21 = v19;
  result = [v21 calendar];
  if (!result)
  {
    goto LABEL_19;
  }

  v23 = result;

  sub_269D97710();
  v24 = sub_269D976E0();
  (*(v8 + 8))(v11, v7);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_269D75538;
  *(v26 + 24) = v25;
  aBlock[4] = sub_269D75540;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269D743B8;
  aBlock[3] = &block_descriptor_40;
  v27 = _Block_copy(aBlock);
  v28 = v20;

  HKSPEnumerateDaysOfWeekInCalendar();
  _Block_release(v27);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_15:
    result = sub_269D9AF50();
    v31 = result;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_16:

    return v28;
  }

  sub_269D736A4();
  [v28 setLayoutMargins_];
  v30 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_days;
  result = swift_beginAccess();
  isEscapingClosureAtFileLocation = *&v28[v30];
  if (isEscapingClosureAtFileLocation >> 62)
  {
    goto LABEL_15;
  }

  v31 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v31 >= 1)
  {
    v37 = v28;

    v32 = 0;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x26D651260](v32, isEscapingClosureAtFileLocation);
      }

      else
      {
        v33 = *(isEscapingClosureAtFileLocation + 8 * v32 + 32);
      }

      v34 = v33;
      ++v32;
      [v33 setSelected_];
      v35 = *(v18 + 1);
      v36 = (HKSPWeekdaysFromDay() & ~v35) == 0;
      v34[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere] = v36;
      sub_269C82B24();
    }

    while (v31 != v32);
    v28 = v37;

    return v28;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

double block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t SleepOnboardingContext.EntryPoint.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t SleepOnboardingContext.init(provenanceInfo:entryPoint:presentationStyle:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3;
  return result;
}

unint64_t sub_269D756A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351948;
  if (!qword_280351948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351948);
  }

  return result;
}

id RouteProvenanceProviding.provenanceInfo.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  if (!v4)
  {
    v4 = *MEMORY[0x277D62140];
  }

  v5 = v4;
  v6 = (*(a2 + 16))(a1, a2);
  if (!v6)
  {
    v6 = *MEMORY[0x277D62100];
  }

  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D624B0]) initWithSource:v5 presentation:v6];

  return v8;
}

uint64_t sub_269D757D8(unsigned __int8 a1)
{
  v13 = sub_269D9A630();
  MEMORY[0x26D650930](46, 0xE100000000000000);
  v2 = 0xE700000000000000;
  v3 = 0x6E6F6973726576;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x61746E6573657270;
  if (a1 != 5)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000269DB4EB0;
  }

  v6 = 0x8000000269DB4E50;
  v7 = 0xD000000000000015;
  if (a1 != 3)
  {
    v7 = 0x656372756F73;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0xD000000000000014;
  if (a1 == 1)
  {
    v9 = 0x6574756F72;
  }

  else
  {
    v8 = 0x8000000269DB4E30;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x26D650930](v10, v11);

  return v13;
}

uint64_t static NSUserActivity.plugin.getter()
{
  sub_269D9A630();
  v0 = sub_269D97F50();

  sub_269D75968(1, 0);
  return v0;
}

void sub_269D75968(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_269D7AA18(0, &qword_280350FD0, sub_269D7A4D0, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269D9EBE0;
    sub_269D9A630();
    MEMORY[0x26D650930](46, 0xE100000000000000);
    MEMORY[0x26D650930](0x6E6F6973726576, 0xE700000000000000);
    sub_269D9AFA0();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = a1;
    sub_269C4485C(inited);
    swift_setDeallocating();
    sub_269D7A8F4(inited + 32);
    v5 = sub_269D9A480();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

void sub_269D75ADC(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = 0xD000000000000021;
  if (a1 <= 2u)
  {
    v6 = ".Sleep.sleepHygiene";
    v7 = 0xD000000000000026;
    if (a1 != 1)
    {
      v7 = 0xD000000000000022;
      v6 = ".Sleep.sleepImportance";
    }

    if (a1)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0xD000000000000023;
    }

    if (a1)
    {
      v5 = v6;
    }

    else
    {
      v5 = "oarding";
    }
  }

  else if (a1 > 4u)
  {
    if (a1 != 5)
    {
      return;
    }

    v5 = ".Sleep.sleepApneaNotification";
  }

  else if (a1 == 3)
  {
    v5 = ".Sleep.sleepStages";
  }

  else
  {
    v4 = 0xD00000000000002DLL;
    v5 = ".Sleep.sleepApnea";
  }

  v8 = v5 | 0x8000000000000000;
  sub_269D7AA18(0, &qword_280350FD0, sub_269D7A4D0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBE0;
  sub_269D757D8(a2);
  v10 = MEMORY[0x277D837D0];
  sub_269D9AFA0();
  *(inited + 96) = v10;
  *(inited + 72) = v4;
  *(inited + 80) = v8;

  sub_269C4485C(inited);
  swift_setDeallocating();
  sub_269D7A8F4(inited + 32);
  v11 = sub_269D9A480();

  [v2 addUserInfoEntriesFromDictionary_];
}

void (*NSUserActivity.route.modify(uint64_t *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  sub_269C2D578(1);
  if (v3)
  {
    v4 = sub_269D9A5F0();
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_269D75D28;
}

void NSUserActivity.presentWithAnimation.setter(char a1)
{
  if (a1 != 2)
  {
    sub_269D7AA18(0, &qword_280350FD0, sub_269D7A4D0, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269D9EBE0;
    sub_269D9A630();
    MEMORY[0x26D650930](46, 0xE100000000000000);
    MEMORY[0x26D650930](0xD000000000000014, 0x8000000269DB4E30);
    sub_269D9AFA0();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = a1 & 1;
    sub_269C4485C(inited);
    swift_setDeallocating();
    sub_269D7A8F4(inited + 32);
    v4 = sub_269D9A480();

    [v1 addUserInfoEntriesFromDictionary_];
  }
}

void (*NSUserActivity.presentWithAnimation.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_269C2D6BC(2);
  return sub_269D75F34;
}

void sub_269D75F34(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    NSUserActivity.presentWithAnimation.setter(*(*a1 + 128));
  }

  else if (v3 != 2)
  {
    v4 = v2[15];
    sub_269D7AA18(0, &qword_280350FD0, sub_269D7A4D0, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269D9EBE0;
    v8 = sub_269D9A630();
    v9 = v6;
    MEMORY[0x26D650930](46, 0xE100000000000000);
    MEMORY[0x26D650930](0xD000000000000014, 0x8000000269DB4E30);
    v2[13] = v8;
    v2[14] = v9;
    sub_269D9AFA0();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = v3 & 1;
    sub_269C4485C(inited);
    swift_setDeallocating();
    sub_269D7A8F4(inited + 32);
    v7 = sub_269D9A480();

    [v4 addUserInfoEntriesFromDictionary_];
  }

  free(v2);
}

void NSUserActivity.delayScrollToSchedule.setter(char a1)
{
  if (a1 != 2)
  {
    sub_269D7AA18(0, &qword_280350FD0, sub_269D7A4D0, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269D9EBE0;
    sub_269D9A630();
    MEMORY[0x26D650930](46, 0xE100000000000000);
    MEMORY[0x26D650930](0xD000000000000015, 0x8000000269DB4E50);
    sub_269D9AFA0();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = a1 & 1;
    sub_269C4485C(inited);
    swift_setDeallocating();
    sub_269D7A8F4(inited + 32);
    v4 = sub_269D9A480();

    [v1 addUserInfoEntriesFromDictionary_];
  }
}

void (*NSUserActivity.delayScrollToSchedule.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_269C2D6BC(3);
  return sub_269D762CC;
}

void sub_269D762CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    NSUserActivity.delayScrollToSchedule.setter(*(*a1 + 128));
  }

  else if (v3 != 2)
  {
    v4 = v2[15];
    sub_269D7AA18(0, &qword_280350FD0, sub_269D7A4D0, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269D9EBE0;
    v8 = sub_269D9A630();
    v9 = v6;
    MEMORY[0x26D650930](46, 0xE100000000000000);
    MEMORY[0x26D650930](0xD000000000000015, 0x8000000269DB4E50);
    v2[13] = v8;
    v2[14] = v9;
    sub_269D9AFA0();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = v3 & 1;
    sub_269C4485C(inited);
    swift_setDeallocating();
    sub_269D7A8F4(inited + 32);
    v7 = sub_269D9A480();

    [v4 addUserInfoEntriesFromDictionary_];
  }

  free(v2);
}

void sub_269D7648C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = v3;
    v8 = sub_269D9A630();
    v10 = v9;
    sub_269D7AA18(0, &qword_280350FD0, sub_269D7A4D0, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269D9EBE0;
    sub_269D9A630();
    MEMORY[0x26D650930](46, 0xE100000000000000);
    MEMORY[0x26D650930](a2, a3);
    v12 = MEMORY[0x277D837D0];
    sub_269D9AFA0();
    *(inited + 96) = v12;
    *(inited + 72) = v8;
    *(inited + 80) = v10;

    sub_269C4485C(inited);
    swift_setDeallocating();
    sub_269D7A8F4(inited + 32);
    v13 = sub_269D9A480();

    [v6 addUserInfoEntriesFromDictionary_];
  }
}

void (*NSUserActivity.provenanceSource.modify(uint64_t *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  sub_269C2D578(4);
  if (v3)
  {
    v4 = sub_269D9A5F0();
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_269D7668C;
}

uint64_t sub_269D766AC(uint64_t a1)
{
  sub_269C2D578(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_269D9A5F0();

  return v2;
}

uint64_t sub_269D766F0@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  result = sub_269C2D578(a1);
  if (v4)
  {
    v5 = sub_269D9A5F0();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void (*NSUserActivity.provenancePresentation.modify(uint64_t *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  sub_269C2D578(5);
  if (v3)
  {
    v4 = sub_269D9A5F0();
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_269D767DC;
}

void sub_269D767F4(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

char NSUserActivity.articleIdentifier.getter@<W0>(_BYTE *a1@<X8>)
{
  v2 = sub_269C2D578(6);
  if (v3)
  {

    LOBYTE(v2) = ArticleIdentifier.init(rawValue:)(*&v2);
  }

  else
  {
    *a1 = 6;
  }

  return v2;
}

char sub_269D768D4@<W0>(char *a1@<X8>)
{
  v2 = 6;
  v3 = sub_269C2D578(6);
  if (v4)
  {
    LOBYTE(v3) = ArticleIdentifier.init(rawValue:)(*&v3);
    v2 = v6;
  }

  *a1 = v2;
  return v3;
}

void (*NSUserActivity.articleIdentifier.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = a1 + 1;
  v3 = sub_269C2D578(6);
  if (v4)
  {
    ArticleIdentifier.init(rawValue:)(*&v3);
  }

  else
  {
    *v2 = 6;
  }

  return sub_269D769A0;
}

uint64_t sub_269D76A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269C2D578(a3);
  if (!v3)
  {
    return 0;
  }

  v4 = sub_269D9A5F0();

  return v4;
}

uint64_t static URL.sleepRoom(route:presentWithAnimation:provenance:articleIdentifier:)@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  sub_269D7AA18(0, &qword_28034F148, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v30 - v11;
  v31 = sub_269D97100();
  v13 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  sub_269D9A630();
  sub_269D97F60();

  v32 = 47;
  v33 = 0xE100000000000000;
  if (a1)
  {
    v18 = sub_269D9A630();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = a1;
  MEMORY[0x26D650930](v18, v20);

  MEMORY[0x26D64D340](v32, v33);

  if (a2 == 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 & 1;
  }

  sub_269D78D5C(v22, 2);
  v23 = [a3 source];
  sub_269D79304(v23, 4);

  v24 = [a3 presentation];
  sub_269D79304(v24, 5);

  sub_269D79898(v17, 6);
  sub_269D970D0();
  v25 = sub_269D973D0();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    sub_269D7A950(v12, &qword_28034F148, MEMORY[0x277CC9260]);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_269D9B000();

    v32 = 0xD00000000000001ALL;
    v33 = 0x8000000269DB4E90;
    sub_269D7A9C0(v28);
    v29 = sub_269D9B230();
    MEMORY[0x26D650930](v29);

    result = sub_269D9B100();
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v16, v31);
    return (*(v26 + 32))(v30, v12, v25);
  }

  return result;
}

uint64_t static URLComponents.plugin.getter()
{
  sub_269D9A630();
  sub_269D97F60();
}

void URLComponents.route.setter(void *a1)
{
  v3 = a1;
  if (a1)
  {
    a1 = sub_269D9A630();
    v2 = v1;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x26D650930](a1, v2);

  MEMORY[0x26D64D340](47, 0xE100000000000000);
}

void URLComponents.presentWithAnimation.setter(char a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = a1 & 1;
  }

  sub_269D78D5C(v1, 2);
}

void URLComponents.provenanceSource.setter(void *a1)
{
  sub_269D79304(a1, 4);
}

void URLComponents.provenancePresentation.setter(void *a1)
{
  sub_269D79304(a1, 5);
}

uint64_t static URL.sleepApneaNotificationsRoom.getter@<X0>(uint64_t a1@<X8>)
{
  sub_269D7AA18(0, &qword_28034F148, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v21 - v4;
  v6 = sub_269D97100();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A630();
  sub_269D97F60();

  v11 = *MEMORY[0x277D62228];
  v21 = 47;
  v22 = 0xE100000000000000;
  v12 = sub_269D9A630();
  v14 = v13;
  v15 = v11;
  MEMORY[0x26D650930](v12, v14);

  MEMORY[0x26D64D340](v21, v22);

  sub_269D970D0();
  v16 = sub_269D973D0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v5, 1, v16) == 1)
  {
    sub_269D7A950(v5, &qword_28034F148, MEMORY[0x277CC9260]);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_269D9B000();

    v21 = 0xD00000000000001ALL;
    v22 = 0x8000000269DB4E90;
    sub_269D7A9C0(v19);
    v20 = sub_269D9B230();
    MEMORY[0x26D650930](v20);

    result = sub_269D9B100();
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v17 + 32))(a1, v5, v16);
  }

  return result;
}

uint64_t URLComponents.route.getter()
{
  v0 = sub_269D970E0();
  v10[0] = 47;
  v10[1] = 0xE100000000000000;
  v9[2] = v10;
  v2 = sub_269D7A534(0x7FFFFFFFFFFFFFFFLL, 1, sub_269CBE128, v9, v0, v1, v10);
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];

    MEMORY[0x26D6508E0](v3, v4, v5, v6);

    v7 = sub_269D9A5F0();
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t URLComponents.presentWithAnimation.getter()
{
  v0 = sub_269D78A88();
  if (v0 == 2)
  {
    return 2;
  }

  else
  {
    return v0 & 1;
  }
}

uint64_t sub_269D773EC(uint64_t (*a1)(void))
{
  sub_269D7AA18(0, &qword_280351958, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  sub_269D970C0();
  v6 = sub_269D97100();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_269D7A950(v5, &qword_280351958, MEMORY[0x277CC8958]);
    return 2;
  }

  else
  {
    v9 = a1();
    if (v9 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v9 & 1;
    }

    (*(v7 + 8))(v5, v6);
  }

  return v8;
}

uint64_t URLComponents.delayScrollToSchedule.getter()
{
  v0 = sub_269D79F58();
  if (v0 == 2)
  {
    return 2;
  }

  else
  {
    return v0 & 1;
  }
}

uint64_t URLComponents.provenanceSource.getter()
{
  v0 = sub_269D97090();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - v7;
  result = sub_269D970A0();
  if (result)
  {
    v10 = result;
    v22 = *(result + 16);
    if (v22)
    {
      v21 = v8;
      v11 = 0;
      v12 = 0x656372756F73;
      v23 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      while (1)
      {
        if (v11 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v1 + 16))(v4, v23 + *(v1 + 72) * v11, v0);
        if (sub_269D97070() == v12 && v13 == 0xE600000000000000)
        {
          break;
        }

        v14 = v12;
        v15 = sub_269D9B280();

        if (v15)
        {
          goto LABEL_11;
        }

        ++v11;
        result = (*(v1 + 8))(v4, v0);
        v12 = v14;
        if (v22 == v11)
        {
          goto LABEL_9;
        }
      }

LABEL_11:

      v16 = v21;
      (*(v1 + 32))(v21, v4, v0);
      sub_269D97080();
      v18 = v17;
      (*(v1 + 8))(v16, v0);
      if (!v18)
      {
        return 0;
      }

      v19 = sub_269D9A5F0();

      return v19;
    }

    else
    {
LABEL_9:

      return 0;
    }
  }

  return result;
}

uint64_t sub_269D77810(uint64_t (*a1)(void))
{
  sub_269D7AA18(0, &qword_280351958, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - v4;
  sub_269D970C0();
  v6 = sub_269D97100();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_269D7A950(v5, &qword_280351958, MEMORY[0x277CC8958]);
    return 0;
  }

  else
  {
    v9 = a1();
    (*(v7 + 8))(v5, v6);
    return v9;
  }
}

void *URLComponents.provenancePresentation.getter()
{
  v0 = sub_269D97090();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - v7;
  result = sub_269D970A0();
  if (!result)
  {
    return *MEMORY[0x277D620D8];
  }

  v10 = result;
  v22 = result[2];
  if (!v22)
  {
LABEL_9:

    return *MEMORY[0x277D620D8];
  }

  v21 = v8;
  v11 = 0;
  v12 = 0x61746E6573657270;
  v23 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  while (1)
  {
    if (v11 >= v10[2])
    {
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v4, &v23[*(v1 + 72) * v11], v0);
    if (sub_269D97070() == v12 && v13 == 0xEC0000006E6F6974)
    {
      break;
    }

    v14 = v12;
    v15 = sub_269D9B280();

    if (v15)
    {
      goto LABEL_11;
    }

    ++v11;
    result = (*(v1 + 8))(v4, v0);
    v12 = v14;
    if (v22 == v11)
    {
      goto LABEL_9;
    }
  }

LABEL_11:

  v16 = v21;
  (*(v1 + 32))(v21, v4, v0);
  sub_269D97080();
  v18 = v17;
  (*(v1 + 8))(v16, v0);
  if (!v18)
  {
    return *MEMORY[0x277D620D8];
  }

  v19 = sub_269D9A5F0();

  return v19;
}

uint64_t URL.articleIdentifier.getter@<X0>(void *a1@<X8>)
{
  sub_269D7AA18(0, &qword_280351958, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  sub_269D970C0();
  v6 = sub_269D97100();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_269D7A950(v5, &qword_280351958, MEMORY[0x277CC8958]);
    *a1 = 6;
  }

  else
  {
    URLComponents.articleIdentifier.getter(a1);
    return (*(v7 + 8))(v5, v6);
  }

  return result;
}

char URLComponents.articleIdentifier.getter@<W0>(_BYTE *a1@<X8>)
{
  v2 = sub_269D97090();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v22 - v9;
  v11 = sub_269D970A0();
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v24 = *(v11 + 16);
  if (!v24)
  {

LABEL_14:
    *a1 = 6;
    return v11;
  }

  v22 = v10;
  v23 = a1;
  v13 = 0;
  v25 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (1)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
      return v11;
    }

    (*(v3 + 16))(v6, v25 + *(v3 + 72) * v13, v2);
    if (sub_269D97070() == 0xD000000000000011 && 0x8000000269DB4EB0 == v14)
    {
      break;
    }

    v15 = sub_269D9B280();

    if (v15)
    {
      goto LABEL_12;
    }

    ++v13;
    LOBYTE(v11) = (*(v3 + 8))(v6, v2);
    if (v24 == v13)
    {

      a1 = v23;
      goto LABEL_14;
    }
  }

LABEL_12:

  v16 = v22;
  (*(v3 + 32))(v22, v6, v2);
  v17 = sub_269D97080();
  v19 = v18;
  LOBYTE(v11) = (*(v3 + 8))(v16, v2);
  a1 = v23;
  if (!v19)
  {
    goto LABEL_14;
  }

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  LOBYTE(v11) = ArticleIdentifier.init(rawValue:)(v20);
  return v11;
}

uint64_t URL.userActivity.getter()
{
  sub_269D7AA18(0, &qword_280351958, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v49 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v48 = &v47 - v5;
  MEMORY[0x28223BE20](v6, v7);
  v47 = &v47 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v47 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v47 - v23;
  sub_269D970C0();
  sub_269D9A630();
  v25 = sub_269D97F50();

  sub_269D75968(1, 0);
  sub_269D7AA7C(v24, v20);
  v26 = sub_269D97100();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v20, 1, v26) == 1)
  {
    sub_269D7A950(v20, &qword_280351958, MEMORY[0x277CC8958]);
    v29 = 0;
  }

  else
  {
    v30 = URLComponents.route.getter();
    (*(v27 + 8))(v20, v26);
    v29 = v30;
  }

  NSUserActivity.route.setter(v29);
  sub_269D7AA7C(v24, v16);
  v31 = v28(v16, 1, v26);
  v32 = v47;
  if (v31 == 1)
  {
    sub_269D7A950(v16, &qword_280351958, MEMORY[0x277CC8958]);
    v33 = 2;
  }

  else
  {
    v34 = sub_269D78A88();
    if (v34 == 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = v34 & 1;
    }

    (*(v27 + 8))(v16, v26);
  }

  NSUserActivity.presentWithAnimation.setter(v33);
  sub_269D7AA7C(v24, v12);
  v35 = v28(v12, 1, v26);
  v36 = v48;
  if (v35 == 1)
  {
    sub_269D7A950(v12, &qword_280351958, MEMORY[0x277CC8958]);
    v37 = 2;
  }

  else
  {
    v38 = sub_269D79F58();
    if (v38 == 2)
    {
      v37 = 2;
    }

    else
    {
      v37 = v38 & 1;
    }

    (*(v27 + 8))(v12, v26);
  }

  NSUserActivity.delayScrollToSchedule.setter(v37);
  sub_269D7AA7C(v24, v32);
  v39 = v28(v32, 1, v26);
  v40 = v49;
  if (v39 == 1)
  {
    sub_269D7A950(v32, &qword_280351958, MEMORY[0x277CC8958]);
    v41 = 0;
  }

  else
  {
    v42 = URLComponents.provenanceSource.getter();
    (*(v27 + 8))(v32, v26);
    v41 = v42;
  }

  NSUserActivity.provenanceSource.setter(v41);
  sub_269D7AA7C(v24, v36);
  if (v28(v36, 1, v26) == 1)
  {
    sub_269D7A950(v36, &qword_280351958, MEMORY[0x277CC8958]);
    v43 = 0;
  }

  else
  {
    v44 = URLComponents.provenancePresentation.getter();
    (*(v27 + 8))(v36, v26);
    v43 = v44;
  }

  NSUserActivity.provenancePresentation.setter(v43);
  sub_269D7AA7C(v24, v40);
  if (v28(v40, 1, v26) == 1)
  {
    sub_269D7A950(v40, &qword_280351958, MEMORY[0x277CC8958]);
    v45 = 6;
  }

  else
  {
    URLComponents.articleIdentifier.getter(&v50);
    v45 = v50;
    (*(v27 + 8))(v40, v26);
  }

  sub_269D75ADC(v45, 6u);
  sub_269D7A950(v24, &qword_280351958, MEMORY[0x277CC8958]);
  return v25;
}

uint64_t sub_269D785A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_269D7AA18(0, &qword_280351958, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_269D970C0();
  v8 = sub_269D97100();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_269D7A950(v7, &qword_280351958, MEMORY[0x277CC8958]);
    return 2;
  }

  else
  {
    v11 = a3();
    if (v11 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v11 & 1;
    }

    (*(v9 + 8))(v7, v8);
  }

  return v10;
}

uint64_t sub_269D78740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_269D7AA18(0, &qword_280351958, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_269D970C0();
  v8 = sub_269D97100();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_269D7A950(v7, &qword_280351958, MEMORY[0x277CC8958]);
    return 0;
  }

  else
  {
    v11 = a3();
    (*(v9 + 8))(v7, v8);
    return v11;
  }
}

void sub_269D788A0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = sub_269D9A630();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = v1;
  MEMORY[0x26D650930](v2, v4);

  MEMORY[0x26D64D340](47, 0xE100000000000000);
}

void (*URLComponents.route.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = URLComponents.route.getter();
  return sub_269D78988;
}

void sub_269D78988(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v11 = v3;
      v4 = sub_269D9A630();
      v3 = v11;
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0xE000000000000000;
    }

    v9 = v3;
    MEMORY[0x26D650930](v4, v6);

    MEMORY[0x26D64D340](47, 0xE100000000000000);

    v10 = *a1;
  }

  else
  {
    v12 = v3;
    if (v3)
    {
      v3 = sub_269D9A630();
      v8 = v7;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    MEMORY[0x26D650930](v3, v8);

    MEMORY[0x26D64D340](47, 0xE100000000000000);
    v10 = v12;
  }
}

uint64_t sub_269D78A88()
{
  v0 = sub_269D97090();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - v7;
  result = sub_269D970A0();
  if (result)
  {
    v10 = result;
    v22 = *(result + 16);
    if (v22)
    {
      v21 = v8;
      v11 = 0;
      v23 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      while (1)
      {
        if (v11 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v1 + 16))(v4, v23 + *(v1 + 72) * v11, v0);
        if (sub_269D97070() == 0xD000000000000014 && 0x8000000269DB4E30 == v12)
        {
          break;
        }

        v13 = sub_269D9B280();

        if (v13)
        {
          goto LABEL_11;
        }

        ++v11;
        result = (*(v1 + 8))(v4, v0);
        if (v22 == v11)
        {
          goto LABEL_9;
        }
      }

LABEL_11:

      v14 = v21;
      (*(v1 + 32))(v21, v4, v0);
      v15 = sub_269D97080();
      v17 = v16;
      (*(v1 + 8))(v14, v0);
      if (!v17)
      {
        return 2;
      }

      if (v15 == 48 && v17 == 0xE100000000000000 || (sub_269D9B280() & 1) != 0)
      {
        v18 = 0;
LABEL_16:

        return v18;
      }

      if (v15 == 49 && v17 == 0xE100000000000000)
      {
        v18 = 1;
        goto LABEL_16;
      }

      v19 = sub_269D9B280();

      if (v19)
      {
        return 1;
      }
    }

    else
    {
LABEL_9:
    }
  }

  return 2;
}

void sub_269D78D5C(int a1, int a2)
{
  v54 = a2;
  v4 = a1;
  v5 = sub_269D97090();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v46 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v41 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v41 - v15;
  if (v4 == 2)
  {
    return;
  }

  v17 = sub_269D970A0();
  if (!v17)
  {
    v48 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v18 = v17;
  v41[3] = a1;
  v42 = v16;
  v43 = v2;
  v53 = *(v17 + 16);
  if (!v53)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_41:

    v16 = v42;
LABEL_42:
    sub_269D97060();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v19 = 0;
  v51 = 0x8000000269DB4EB0;
  v52 = v6 + 16;
  v49 = 0x8000000269DB4E30;
  v50 = 0x8000000269DB4E50;
  v45 = (v6 + 32);
  v47 = (v6 + 8);
  v48 = MEMORY[0x277D84F90];
  v44 = v5;
  while (v19 < *(v18 + 16))
  {
    v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v21 = *(v6 + 72);
    (*(v6 + 16))(v12, v18 + v20 + v21 * v19++, v5);
    v22 = sub_269D97070();
    v24 = 0x61746E6573657270;
    if (v54 != 5)
    {
      v24 = 0xD000000000000011;
    }

    v25 = 0xEC0000006E6F6974;
    if (v54 != 5)
    {
      v25 = v51;
    }

    v26 = 0xD000000000000015;
    if (v54 != 3)
    {
      v26 = 0x656372756F73;
    }

    v27 = v50;
    if (v54 != 3)
    {
      v27 = 0xE600000000000000;
    }

    if (v54 <= 4u)
    {
      v24 = v26;
      v25 = v27;
    }

    v28 = 0xD000000000000014;
    if (v54 == 1)
    {
      v28 = 0x6574756F72;
    }

    v29 = v49;
    if (v54 == 1)
    {
      v29 = 0xE500000000000000;
    }

    if (!v54)
    {
      v28 = 0x6E6F6973726576;
      v29 = 0xE700000000000000;
    }

    if (v54 <= 2u)
    {
      v30 = v28;
    }

    else
    {
      v30 = v24;
    }

    if (v54 <= 2u)
    {
      v31 = v29;
    }

    else
    {
      v31 = v25;
    }

    if (v22 == v30 && v23 == v31)
    {
    }

    else
    {
      v16 = sub_269D9B280();

      if ((v16 & 1) == 0)
      {
        v16 = *v45;
        (*v45)(v46, v12, v5);
        v32 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269C755D8(0, v32[2] + 1, 1);
          v32 = v55;
        }

        v34 = v32;
        v36 = v32[2];
        v35 = v32[3];
        if (v36 >= v35 >> 1)
        {
          sub_269C755D8((v35 > 1), v36 + 1, 1);
          v34 = v55;
        }

        v34[2] = v36 + 1;
        v48 = v34;
        v37 = v34 + v20 + v36 * v21;
        v5 = v44;
        (v16)(v37, v46, v44);
        goto LABEL_7;
      }
    }

    (*v47)(v12, v5);
LABEL_7:
    if (v53 == v19)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_48:
  v48 = sub_269D6241C(0, v48[2] + 1, 1, v48);
LABEL_43:
  v39 = v48[2];
  v38 = v48[3];
  if (v39 >= v38 >> 1)
  {
    v48 = sub_269D6241C((v38 > 1), v39 + 1, 1, v48);
  }

  v40 = v48;
  v48[2] = v39 + 1;
  (*(v6 + 32))(v40 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v39, v16, v5);
  sub_269D970B0();
}

void sub_269D79304(uint64_t a1, int a2)
{
  v55 = a2;
  v4 = sub_269D97090();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v41 - v14;
  if (!a1)
  {
    return;
  }

  v44 = a1;
  v16 = sub_269D970A0();
  if (!v16)
  {
    v49 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v17 = v16;
  v42 = v15;
  v43 = v2;
  v54 = *(v16 + 16);
  if (!v54)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_41:

    v15 = v42;
LABEL_42:
    sub_269D9A630();
    sub_269D97060();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v15 = 0;
  v52 = 0x8000000269DB4EB0;
  v53 = v5 + 16;
  v50 = 0x8000000269DB4E30;
  v51 = 0x8000000269DB4E50;
  v46 = (v5 + 32);
  v48 = (v5 + 8);
  v49 = MEMORY[0x277D84F90];
  v45 = v4;
  while (v15 < *(v17 + 16))
  {
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = *(v5 + 72);
    (*(v5 + 16))(v11, v17 + v18 + v19 * v15++, v4);
    v20 = sub_269D97070();
    v22 = 0x61746E6573657270;
    if (v55 != 5)
    {
      v22 = 0xD000000000000011;
    }

    v23 = 0xEC0000006E6F6974;
    if (v55 != 5)
    {
      v23 = v52;
    }

    v24 = 0xD000000000000015;
    if (v55 != 3)
    {
      v24 = 0x656372756F73;
    }

    v25 = v51;
    if (v55 != 3)
    {
      v25 = 0xE600000000000000;
    }

    if (v55 <= 4u)
    {
      v22 = v24;
      v23 = v25;
    }

    v26 = 0xD000000000000014;
    if (v55 == 1)
    {
      v26 = 0x6574756F72;
    }

    v27 = v50;
    if (v55 == 1)
    {
      v27 = 0xE500000000000000;
    }

    if (!v55)
    {
      v26 = 0x6E6F6973726576;
      v27 = 0xE700000000000000;
    }

    if (v55 <= 2u)
    {
      v28 = v26;
    }

    else
    {
      v28 = v22;
    }

    if (v55 <= 2u)
    {
      v29 = v27;
    }

    else
    {
      v29 = v23;
    }

    if (v20 == v28 && v21 == v29)
    {
    }

    else
    {
      v30 = sub_269D9B280();

      if ((v30 & 1) == 0)
      {
        v31 = *v46;
        (*v46)(v47, v11, v4);
        v32 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269C755D8(0, v32[2] + 1, 1);
          v32 = v56;
        }

        v34 = v32;
        v36 = v32[2];
        v35 = v32[3];
        if (v36 >= v35 >> 1)
        {
          sub_269C755D8((v35 > 1), v36 + 1, 1);
          v34 = v56;
        }

        v34[2] = v36 + 1;
        v49 = v34;
        v37 = v34 + v18 + v36 * v19;
        v4 = v45;
        v31(v37, v47, v45);
        goto LABEL_7;
      }
    }

    (*v48)(v11, v4);
LABEL_7:
    if (v54 == v15)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_48:
  v49 = sub_269D6241C(0, v49[2] + 1, 1, v49);
LABEL_43:
  v39 = v49[2];
  v38 = v49[3];
  if (v39 >= v38 >> 1)
  {
    v49 = sub_269D6241C((v38 > 1), v39 + 1, 1, v49);
  }

  v40 = v49;
  v49[2] = v39 + 1;
  (*(v5 + 32))(v40 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v39, v15, v4);
  sub_269D970B0();
}

void sub_269D79898(int a1, int a2)
{
  v54 = a2;
  v4 = a1;
  v5 = sub_269D97090();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v46 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v41 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v41 - v15;
  if (v4 == 6)
  {
    return;
  }

  v17 = sub_269D970A0();
  if (!v17)
  {
    v48 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v18 = v17;
  v41[3] = a1;
  v42 = v16;
  v43 = v2;
  v53 = *(v17 + 16);
  if (!v53)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_41:

    v16 = v42;
LABEL_42:
    sub_269D97060();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v19 = 0;
  v51 = 0x8000000269DB4EB0;
  v52 = v6 + 16;
  v49 = 0x8000000269DB4E30;
  v50 = 0x8000000269DB4E50;
  v45 = (v6 + 32);
  v47 = (v6 + 8);
  v48 = MEMORY[0x277D84F90];
  v44 = v5;
  while (v19 < *(v18 + 16))
  {
    v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v21 = *(v6 + 72);
    (*(v6 + 16))(v12, v18 + v20 + v21 * v19++, v5);
    v22 = sub_269D97070();
    v24 = 0x61746E6573657270;
    if (v54 != 5)
    {
      v24 = 0xD000000000000011;
    }

    v25 = 0xEC0000006E6F6974;
    if (v54 != 5)
    {
      v25 = v51;
    }

    v26 = 0xD000000000000015;
    if (v54 != 3)
    {
      v26 = 0x656372756F73;
    }

    v27 = v50;
    if (v54 != 3)
    {
      v27 = 0xE600000000000000;
    }

    if (v54 <= 4u)
    {
      v24 = v26;
      v25 = v27;
    }

    v28 = 0xD000000000000014;
    if (v54 == 1)
    {
      v28 = 0x6574756F72;
    }

    v29 = v49;
    if (v54 == 1)
    {
      v29 = 0xE500000000000000;
    }

    if (!v54)
    {
      v28 = 0x6E6F6973726576;
      v29 = 0xE700000000000000;
    }

    if (v54 <= 2u)
    {
      v30 = v28;
    }

    else
    {
      v30 = v24;
    }

    if (v54 <= 2u)
    {
      v31 = v29;
    }

    else
    {
      v31 = v25;
    }

    if (v22 == v30 && v23 == v31)
    {
    }

    else
    {
      v16 = sub_269D9B280();

      if ((v16 & 1) == 0)
      {
        v16 = *v45;
        (*v45)(v46, v12, v5);
        v32 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269C755D8(0, v32[2] + 1, 1);
          v32 = v55;
        }

        v34 = v32;
        v36 = v32[2];
        v35 = v32[3];
        if (v36 >= v35 >> 1)
        {
          sub_269C755D8((v35 > 1), v36 + 1, 1);
          v34 = v55;
        }

        v34[2] = v36 + 1;
        v48 = v34;
        v37 = v34 + v20 + v36 * v21;
        v5 = v44;
        (v16)(v37, v46, v44);
        goto LABEL_7;
      }
    }

    (*v47)(v12, v5);
LABEL_7:
    if (v53 == v19)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_48:
  v48 = sub_269D6241C(0, v48[2] + 1, 1, v48);
LABEL_43:
  v39 = v48[2];
  v38 = v48[3];
  if (v39 >= v38 >> 1)
  {
    v48 = sub_269D6241C((v38 > 1), v39 + 1, 1, v48);
  }

  v40 = v48;
  v48[2] = v39 + 1;
  (*(v6 + 32))(v40 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v39, v16, v5);
  sub_269D970B0();
}

void (*URLComponents.presentWithAnimation.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_269D78A88();
  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 & 1;
  }

  *(a1 + 8) = v4;
  return sub_269D79F20;
}

void sub_269D79F20(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 & 1;
  }

  sub_269D78D5C(v2, 2);
}

uint64_t sub_269D79F58()
{
  v0 = sub_269D97090();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - v7;
  result = sub_269D970A0();
  if (result)
  {
    v10 = result;
    v22 = *(result + 16);
    if (v22)
    {
      v21 = v8;
      v11 = 0;
      v23 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      while (1)
      {
        if (v11 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v1 + 16))(v4, v23 + *(v1 + 72) * v11, v0);
        if (sub_269D97070() == 0xD000000000000015 && 0x8000000269DB4E50 == v12)
        {
          break;
        }

        v13 = sub_269D9B280();

        if (v13)
        {
          goto LABEL_11;
        }

        ++v11;
        result = (*(v1 + 8))(v4, v0);
        if (v22 == v11)
        {
          goto LABEL_9;
        }
      }

LABEL_11:

      v14 = v21;
      (*(v1 + 32))(v21, v4, v0);
      v15 = sub_269D97080();
      v17 = v16;
      (*(v1 + 8))(v14, v0);
      if (!v17)
      {
        return 2;
      }

      if (v15 == 48 && v17 == 0xE100000000000000 || (sub_269D9B280() & 1) != 0)
      {
        v18 = 0;
LABEL_16:

        return v18;
      }

      if (v15 == 49 && v17 == 0xE100000000000000)
      {
        v18 = 1;
        goto LABEL_16;
      }

      v19 = sub_269D9B280();

      if (v19)
      {
        return 1;
      }
    }

    else
    {
LABEL_9:
    }
  }

  return 2;
}

void URLComponents.delayScrollToSchedule.setter(char a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = a1 & 1;
  }

  sub_269D78D5C(v1, 3);
}

void (*URLComponents.delayScrollToSchedule.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_269D79F58();
  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 & 1;
  }

  *(a1 + 8) = v4;
  return sub_269D7A29C;
}

void sub_269D7A29C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 & 1;
  }

  sub_269D78D5C(v2, 3);
}

void (*URLComponents.provenanceSource.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = URLComponents.provenanceSource.getter();
  return sub_269D7A31C;
}

void (*URLComponents.provenancePresentation.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = URLComponents.provenancePresentation.getter();
  return sub_269D7A36C;
}

void sub_269D7A374(uint64_t *a1, char a2, int a3)
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    sub_269D79304(v6, a3);

    v5 = v4;
  }

  else
  {
    sub_269D79304(*a1, a3);
    v5 = v6;
  }
}

void (*URLComponents.articleIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  URLComponents.articleIdentifier.getter((a1 + 8));
  return sub_269D7A448;
}

uint64_t sub_269D7A478()
{
  v0 = sub_269D78A88();
  if (v0 == 2)
  {
    return 2;
  }

  else
  {
    return v0 & 1;
  }
}

uint64_t sub_269D7A4A0()
{
  v0 = sub_269D79F58();
  if (v0 == 2)
  {
    return 2;
  }

  else
  {
    return v0 & 1;
  }
}

void sub_269D7A4D0()
{
  if (!qword_28034DE80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034DE80);
    }
  }
}

unint64_t sub_269D7A534@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_269D9A770();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_269D62450(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_269D62450((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_269D9A750();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_269D9A6C0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_269D9A6C0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_269D9A770();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_269D62450(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_269D9A770();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_269D62450(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_269D62450((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_269D9A6C0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269D7A8F4(uint64_t a1)
{
  sub_269D7A4D0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D7A950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269D7AA18(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_269D7A9C0(double a1)
{
  result = qword_280351950;
  if (!qword_280351950)
  {
    sub_269D97100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351950);
  }

  return result;
}

void sub_269D7AA18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269D7AA7C(uint64_t a1, uint64_t a2)
{
  sub_269D7AA18(0, &qword_280351958, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ScheduleIssue.issues(bedtimeComponents:wakeUpComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v5 = sub_269D971F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v34 - v13;
  v15 = *(v6 + 16);
  v15(&v34 - v13, a1, v5, v12);
  v16 = sub_269D97150();
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v34 = v18;
  v19 = sub_269D971A0();
  v21 = v20;
  v22 = *(v6 + 8);
  v22(v14, v5);
  if (v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = v19;
  }

  (v15)(v9, a2, v5);
  v24 = sub_269D97150();
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = sub_269D971A0();
  v29 = v28;
  v22(v9, v5);
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  result = sub_269C679CC(v34, v23, v26, v30);
  if (v32 < 3600.0)
  {
    v33 = (8 * (v32 > 72000.0)) | 4;
  }

  else
  {
    v33 = 8 * (v32 > 72000.0);
  }

  *v35 = v33;
  return result;
}

unint64_t sub_269D7ADD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351960;
  if (!qword_280351960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351960);
  }

  return result;
}

unint64_t sub_269D7AE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351968;
  if (!qword_280351968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351968);
  }

  return result;
}

unint64_t sub_269D7AE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351970;
  if (!qword_280351970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351970);
  }

  return result;
}

unint64_t sub_269D7AED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351978;
  if (!qword_280351978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351978);
  }

  return result;
}

id UIFontTextStyle.defaultFont.getter(uint64_t a1)
{
  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontForTextStyle:a1 compatibleWithTraitCollection:v2];

  return v3;
}

id static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, uint64_t a8, char a9)
{
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v15 = v14;
  if (a2)
  {
    v16 = [(objc_class *)v14 fontDescriptorWithSymbolicTraits:a2];
    if (v16)
    {
      v17 = v16;

      v15 = v17;
    }
  }

  v18 = MEMORY[0x277D84F70];
  v19 = &selRef_textContainer;
  if (a9)
  {
    if ((a7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_269D14878(0, &unk_2803505B0, &qword_28034DEC0, type metadata accessor for AttributeName, MEMORY[0x277D84F70] + 8);
    inited = swift_initStackObject();
    v49 = xmmword_269D9EBE0;
    *(inited + 16) = xmmword_269D9EBE0;
    v22 = *MEMORY[0x277D74380];
    v51 = a5;
    *(inited + 32) = *MEMORY[0x277D74380];
    v23 = inited + 32;
    sub_269D7B680(0, &qword_280351980, sub_269D7B6E4, MEMORY[0x277D84560]);
    v50 = a7;
    v24 = swift_initStackObject();
    v25 = MEMORY[0x277D74430];
    *(v24 + 16) = xmmword_269D9EBE0;
    v26 = a3;
    v27 = *v25;
    *(v24 + 32) = *v25;
    *(v24 + 40) = a8;
    v28 = v22;
    v29 = v27;
    a3 = v26;
    v30 = sub_269C4449C(v24);
    swift_setDeallocating();
    sub_269D7B754(v24 + 32);
    sub_269D7B7B0(0);
    *(inited + 64) = v31;
    *(inited + 40) = v30;
    v19 = &selRef_textContainer;
    sub_269C44468(inited);
    v18 = MEMORY[0x277D84F70];
    swift_setDeallocating();
    v32 = v23;
    a5 = v51;
    sub_269D14940(v32);
    type metadata accessor for AttributeName(0);
    sub_269D7B85C(&qword_28034DBF8, type metadata accessor for AttributeName, &unk_269D9FC30);
    v33 = sub_269D9A480();

    v34 = [(objc_class *)v15 fontDescriptorByAddingAttributes:v33];

    v15 = v34;
    if ((v50 & 1) == 0)
    {
LABEL_6:
      v20 = &selRef_textContainer;
      if ((a3 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  sub_269D14878(0, &unk_2803505B0, &qword_28034DEC0, type metadata accessor for AttributeName, v18 + 8);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_269D9EBE0;
  v36 = *MEMORY[0x277D74338];
  *(v35 + 32) = *MEMORY[0x277D74338];
  v37 = v36;
  v38 = sub_269D7B4A8();
  sub_269D7B680(0, &qword_2803505C0, sub_269D02144, MEMORY[0x277D83940]);
  *(v35 + 64) = v39;
  *(v35 + 40) = v38;
  sub_269C44468(v35);
  swift_setDeallocating();
  sub_269D14940(v35 + 32);
  type metadata accessor for AttributeName(0);
  sub_269D7B85C(&qword_28034DBF8, type metadata accessor for AttributeName, &unk_269D9FC30);
  v40 = sub_269D9A480();

  v41 = [v15 v19[207]];

  v15 = v41;
  v20 = &selRef_textContainer;
  if ((a3 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v42 = [(objc_class *)v15 fontDescriptorWithDesign:*MEMORY[0x277D74368], v49];
  if (v42)
  {
    v43 = v42;

    v15 = v43;
  }

LABEL_12:
  if (a4)
  {
    v44 = [v15 v20[306]];
    if (!v44)
    {
      goto LABEL_18;
    }

LABEL_17:
    v45 = v44;

    v15 = v45;
    goto LABEL_18;
  }

  if (a5)
  {
    v44 = [v15 v20[306]];
    if (v44)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (a6)
  {
    isa = UIFontDescriptor.addingUppercaseSmallCapsAttributes()().super.isa;

    v15 = isa;
  }

  v47 = [swift_getObjCClassFromMetadata() fontWithDescriptor:v15 size:0.0];

  return v47;
}

uint64_t sub_269D7B4A8()
{
  sub_269D7B680(0, &qword_280350B90, sub_269D02144, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269D9EBF0;
  v1 = MEMORY[0x277D83B88];
  sub_269D14878(0, &qword_280350B98, &qword_280350BA0, type metadata accessor for FeatureKey, MEMORY[0x277D83B88]);
  inited = swift_initStackObject();
  v3 = MEMORY[0x277D76908];
  *(inited + 16) = xmmword_269D9EBF0;
  v4 = *v3;
  *(inited + 32) = v4;
  v5 = *MEMORY[0x277D76900];
  *(inited + 40) = 6;
  *(inited + 48) = v5;
  *(inited + 56) = 0;
  v6 = v4;
  v7 = v5;
  v8 = v6;
  v9 = v7;
  v10 = sub_269C44388(inited);
  swift_setDeallocating();
  sub_269D148D4(0, &qword_280350BA0, type metadata accessor for FeatureKey, v1);
  swift_arrayDestroy();
  *(v0 + 32) = v10;
  v11 = swift_initStackObject();
  *(v11 + 32) = v8;
  *(v11 + 16) = xmmword_269D9EBF0;
  *(v11 + 40) = 22;
  *(v11 + 48) = v9;
  *(v11 + 56) = 1;
  v12 = sub_269C44388(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v0 + 40) = v12;
  return v0;
}

void sub_269D7B680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269D7B6E4(uint64_t a1)
{
  if (!qword_280351988)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280351988);
    }
  }
}

uint64_t sub_269D7B754(uint64_t a1)
{
  sub_269D7B6E4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269D7B7B0(uint64_t a1)
{
  if (!qword_280351990)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_269D7B85C(&qword_28034DBD8, type metadata accessor for TraitKey, &unk_269D9FBEC);
    v1 = sub_269D9A4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_280351990);
    }
  }
}

uint64_t sub_269D7B85C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269D7BA80()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    sub_269D972C0();
    v3 = sub_269D9A5F0();

    [v2 setText_];
  }

  [v0 setAccessoryType_];
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_41;
  v5 = _Block_copy(aBlock);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  [v0 setBackgroundColor_];
}

void sub_269D7BC34()
{
  v1 = v0;
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_269DA0D60;
  *(v2 + 32) = sub_269D9A630();
  *(v2 + 40) = v3;
  *(v2 + 48) = 0x7065656C53;
  *(v2 + 56) = 0xE500000000000000;
  strcpy((v2 + 64), "ScheduleEditor");
  *(v2 + 79) = -18;
  v14 = v2;
  sub_269C49A1C(&unk_287AA0298);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v4 = sub_269D9A520();
  v6 = v5;

  sub_269C4BEAC(&unk_287AA02B8);
  v7 = sub_269D9A5F0();
  [v1 setAccessibilityIdentifier_];

  v8 = [v1 textLabel];
  if (v8)
  {
    v9 = v8;

    MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);
    v10 = sub_269D9A5F0();

    [v9 setAccessibilityIdentifier_];
  }

  v11 = [v1 detailTextLabel];
  if (v11)
  {
    v12 = v11;
    v15 = v6;

    MEMORY[0x26D650930](0x546C69617465442ELL, 0xEB00000000747865);

    v13 = sub_269D9A5F0();

    [v12 setAccessibilityIdentifier_];
  }

  else
  {
  }
}

id ScheduleOccurrenceAlarmSoundTableViewCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceAlarmSoundTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void ScheduleOccurrenceAlarmSoundTableViewCell.apply(_:)()
{
  v1 = [v0 detailTextLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() sharedToneManager];
    if (v3)
    {
      v4 = v3;
      ScheduleOccurrenceEditModel.toneIdentifier.getter();
      if (v5)
      {
        v6 = sub_269D9A5F0();
      }

      else
      {
        v6 = 0;
      }

      v7 = [v4 nameForToneIdentifier_];

      [v2 setText_];
    }

    else
    {
      __break(1u);
    }
  }
}

double block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_269D7C08C(SEL *a1)
{
  result = [objc_opt_self() *a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t static NSDateIntervalFormatter.eventDateRangeString(from:endDate:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  v1 = sub_269D974B0();
  v2 = sub_269D974B0();
  v3 = [v0 stringFromDate:v1 toDate:v2];

  v4 = sub_269D9A630();
  return v4;
}

id _sSo23NSDateIntervalFormatterC13SleepHealthUIE15weeklyChartAxisABvgZ_0()
{
  v0 = sub_269D97650();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v18 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
  sub_269D97630();
  v10 = sub_269D97610();
  v11 = *(v1 + 8);
  v11(v8, v0);
  [v9 setLocale_];

  v12 = sub_269D9A5F0();
  v13 = [v9 locale];
  if (v13)
  {
    v14 = v13;
    sub_269D97620();

    v15 = sub_269D97610();
    v11(v4, v0);
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_self() dateFormatFromTemplate:v12 options:0 locale:v15];

  [v9 setDateTemplate_];
  return v9;
}

id ScheduleOccurrenceAlarmEnabledTableViewCell.apply(_:)(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v2 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C60AF4();
  swift_dynamicCast();
  v3 = [v5 isEnabled];

  return [v1 setOn:v3 animated:1];
}

void sub_269D7C630()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v1 = sub_269D9A5F0();

  [v0 setDisplayText_];

  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_42;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  [v0 setBackgroundColor_];
}

id ScheduleOccurrenceAlarmEnabledTableViewCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_269D7C894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI37SleepOnboardingScheduleViewController_nextButton] = 0;
  swift_beginAccess();
  v6 = *(a1 + 40);
  [v6 sleepDurationGoal];
  if (v7 <= 0.0)
  {
    v9 = *MEMORY[0x277D62188] * 60.0 * 60.0;
  }

  else
  {
    [*(a1 + 40) sleepDurationGoal];
    v9 = v8;
  }

  type metadata accessor for ScheduleOnboardingSection(0);
  swift_allocObject();
  v10 = sub_269CBC024(v6, a2, v9);
  v11 = OBJC_IVAR____TtC13SleepHealthUI37SleepOnboardingScheduleViewController_scheduleDataSource;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI37SleepOnboardingScheduleViewController_scheduleDataSource] = v10;
  sub_269D7CF4C();
  sub_269D7D0E4();
  v12 = *&v3[v11];
  v13 = &v3[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor] = 0;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_sleepChangeObserver] = 0;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo] = a1;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_presentationStyle] = a2;
  v14 = &v3[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSource];
  v15 = MEMORY[0x277D10F80];
  *v14 = v12;
  v14[1] = v15;
  v3[OBJC_IVAR____TtC13SleepHealthUI27SleepTableWelcomeController_hasSystemMargins] = 0;
  swift_retain_n();
  swift_retain_n();
  v16 = sub_269D9A5F0();

  v17 = sub_269D9A5F0();

  v49.receiver = v3;
  v49.super_class = type metadata accessor for SleepTableWelcomeController();
  v18 = objc_msgSendSuper2(&v49, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v16, v17, 0, 1);

  v19 = objc_allocWithZone(MEMORY[0x277D75B40]);
  v20 = v18;
  v21 = [v19 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v20 setTableView_];

  v22 = [v20 tableView];
  if (!v22)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [objc_opt_self() systemBackgroundColor];
  [v23 setBackgroundColor_];

  v25 = [v20 tableView];
  if (!v25)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];

  v27 = [v20 tableView];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v27 setTableHeaderView_];

  v29 = v20;
  v30 = [v29 tableView];
  if (!v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  [v30 setDelegate_];

  v32 = [v29 tableView];
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  type metadata accessor for SleepDiffableTableViewAdaptor();
  v33 = swift_allocObject();

  v34 = sub_269D7FE78(v32, v12, 1, 0, v33);

  *&v29[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor] = v34;

  v46 = v12;
  v47 = v15;
  sub_269C95CC0(0, &qword_28034F080, MEMORY[0x277D10F28], 0);
  sub_269C95CC0(0, &qword_2803518A0, MEMORY[0x277D11028], 1);

  if (!swift_dynamicCast())
  {

    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_269D6F8C4(v44);
    goto LABEL_13;
  }

  sub_269C25520(v44, v48);
  __swift_project_boxed_opaque_existential_1Tm(v48, v48[3]);
  v35 = [v29 tableView];
  if (v35)
  {
    v36 = v35;

    sub_269D98140();

    __swift_destroy_boxed_opaque_existential_1Tm(v48);
LABEL_13:
    v37 = v29;
    [v37 setModalInPresentation_];
    v38 = [v37 headerView];
    [v38 setTitleHyphenationFactor_];

    sub_269C57F8C(0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_269D9EBE0;
    v40 = sub_269D983D0();
    v41 = MEMORY[0x277D74DB8];
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_269C30054();
    sub_269D9AC10();

    swift_unknownObjectRelease();

    v42 = v37;

    v43 = sub_269CBBE00();
    swift_beginAccess();
    *(v43 + 112) = &off_287AA9868;
    swift_unknownObjectWeakAssign();
    sub_269C528D8();

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_269D7CF4C()
{
  v1 = [*(v0 + 16) source];
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_269D9B280();

    if ((v7 & 1) == 0)
    {
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_11;
    }
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_11:
    swift_once();
  }

  return sub_269D972C0();
}

void sub_269D7D0E4()
{
  v1 = [*(v0 + 16) source];
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {

    goto LABEL_9;
  }

  v7 = sub_269D9B280();

  if (v7)
  {
    goto LABEL_9;
  }

  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v8);
  if ((*(v9 + 80))(v8, v9))
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v10);
    (*(v11 + 96))(v10, v11);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v12);
    (*(v13 + 112))(v12, v13);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v14);
    (*(v15 + 120))(v14, v15);
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v16);
    (*(v17 + 128))(v16, v17);
    v18 = *(v0 + 112);
    v19 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v18);
    (*(v19 + 136))(v18, v19);
    goto LABEL_9;
  }

  v20 = [objc_opt_self() sharedBehavior];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 features];

    if (v22)
    {
      v23 = [v22 timeInBedTracking];

      if (!v23)
      {
        if (qword_280C0AE70 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }

LABEL_9:
      if (qword_280C0AE70 == -1)
      {
LABEL_10:
        sub_269D972C0();
        return;
      }

LABEL_16:
      swift_once();
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_269D7D414(uint64_t a1)
{
  v2 = v1;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for SleepOnboardingScheduleViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v3 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v4 = *&v1[v3];
  swift_beginAccess();
  v5 = [*(v4 + 40) occurrences];
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  v6 = sub_269D9A7E0();

  if (v6 >> 62)
  {
    v7 = sub_269D9AF50();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    sub_269D7D660();
  }

  sub_269D7DDF0();

  v8 = sub_269D9A5F0();

  v9 = [v2 hksp:v8 addNextButtonWithTitle:?];

  v10 = *&v2[OBJC_IVAR____TtC13SleepHealthUI37SleepOnboardingScheduleViewController_nextButton];
  *&v2[OBJC_IVAR____TtC13SleepHealthUI37SleepOnboardingScheduleViewController_nextButton] = v9;

  sub_269D7E03C();
  v11 = *(*&v2[v3] + 16);

  v12 = [v11 source];
  v13 = sub_269D9A630();
  v15 = v14;
  if (v13 == sub_269D9A630() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_269D9B280();

    if ((v18 & 1) == 0)
    {
      return [v2 hksp_addCancelButton];
    }
  }

  return result;
}

void sub_269D7D660()
{
  v1 = v0;
  v58 = sub_269D977A0();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v2);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v56 = &v49 - v6;
  v7 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v8 = *&v0[v7];
  swift_beginAccess();
  v9 = *(v8 + 40);
  swift_beginAccess();
  v10 = *(v8 + 56);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    if (sub_269D7EC38())
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = v9;
  }

  v12 = [v9 mutableOccurrenceTemplate];
LABEL_6:
  v14 = *&v0[v7];
  swift_beginAccess();
  v15 = *(v14 + 40);
  v50 = v12;

  [v15 sleepDurationGoal];
  v17 = v16;
  if (v16 > 0.0)
  {
    v19 = *(v14 + 40);
    [v19 sleepDurationGoal];
    v18 = v20;
  }

  else
  {

    v18 = 0;
  }

  *&v59[0] = v18;
  BYTE8(v59[0]) = v17 <= 0.0;
  sub_269D7F5A0(0, &qword_280C0B150, sub_269CBA0F8, MEMORY[0x277CBCE30]);
  swift_allocObject();
  v21 = sub_269D987F0();
  v22 = v9;
  v52 = [v22 weekdaysWithOccurrences];
  v53 = v22;
  *&v59[0] = v22;
  sub_269D37C70(0, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
  swift_allocObject();
  v23 = sub_269D987F0();
  v24 = *&v1[v7];
  v25 = v24[14];
  v26 = v24[15];
  __swift_project_boxed_opaque_existential_1Tm(v24 + 11, v25);
  v27 = *(v26 + 104);

  v51 = v27(v25, v26);

  v54 = v1;
  v28 = [*(*&v1[v7] + 72) currentCalendar];
  v29 = v56;
  sub_269D97710();

  v49 = *(v57 + 16);
  v30 = v55;
  v31 = v58;
  v49(v55, v29, v58);
  type metadata accessor for ScheduleOccurrenceEditModel(0);
  v32 = swift_allocObject();
  sub_269C2D3B8(0);
  swift_allocObject();
  v33 = v50;

  *(v32 + 16) = sub_269D98790();
  sub_269D7F5A0(0, &qword_28034D820, type metadata accessor for ScheduleOccurrenceEditModel, MEMORY[0x277CBCE10]);
  swift_allocObject();
  *(v32 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v32 + 32) = sub_269D98790();
  *&v59[0] = 0;
  sub_269D37C70(0, &qword_28034D830, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510);
  swift_allocObject();
  *(v32 + 40) = sub_269D987F0();
  *(v32 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  [v33 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  *(v32 + 48) = v61;
  *(v32 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v33;
  *(v32 + 56) = 1;
  v34 = v33;
  v35 = [v34 weekdays];
  *(v32 + 64) = v52 & ~v35;
  *(v32 + 72) = v21;
  *(v32 + 80) = v23;
  *(v32 + 88) = v51 & 1;
  v49((v32 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar), v30, v31);

  sub_269D987C0();
  v36 = *&v59[0];
  if (*&v59[0])
  {
    v37 = *(v32 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v38 = sub_269D976E0();
    v39 = [v36 allowableRangeForModifiedOccurrence:v37 gregorianCalendar:v38];
  }

  else
  {
    v39 = 0;
  }

  *&v59[0] = v39;
  sub_269D987D0();

  v40 = *(v57 + 8);
  v41 = v58;
  v40(v55, v58);
  v42 = type metadata accessor for ScheduleOccurrenceViewController();
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  v43 = objc_allocWithZone(v42);
  sub_269C2F0A4(v32, 0, v59);
  v45 = v44;

  v40(v56, v41);
  v46 = &v45[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
  swift_beginAccess();
  *(v46 + 1) = &off_287AA9878;
  v47 = v54;
  swift_unknownObjectWeakAssign();
  v48 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  sub_269D2F438(2, 2);
  [v47 presentViewController:v48 animated:1 completion:0];
}

uint64_t sub_269D7DDF0()
{
  v1 = [*(v0 + 16) source];
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_269D9B280();

    if ((v7 & 1) == 0)
    {
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_11;
    }
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_11:
    swift_once();
  }

  return sub_269D972C0();
}

void sub_269D7E03C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI37SleepOnboardingScheduleViewController_nextButton);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
    swift_beginAccess();
    v3 = *(v0 + v2);
    swift_beginAccess();
    v4 = *(v3 + 40);
    v5 = v1;
    v6 = [v4 occurrences];
    sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
    v7 = sub_269D9A7E0();

    v17 = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
    {
      v16 = v5;
      v9 = 0;
      v5 = (v7 & 0xC000000000000001);
      while (1)
      {
        if (v5)
        {
          v10 = MEMORY[0x26D651260](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        sub_269D9A8E0();
        sub_269D9A8D0();
        sub_269D9A880();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v13 = [v11 isSingleDayOverride];

        if (v13)
        {
        }

        else
        {
          sub_269D9B050();
          sub_269D9B090();
          sub_269D9B0A0();
          sub_269D9B060();
        }

        ++v9;
        if (v12 == i)
        {
          v5 = v16;
          v14 = v17;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_21:

    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      v15 = sub_269D9AF50();
    }

    else
    {
      v15 = *(v14 + 16);
    }

    [v5 setEnabled_];
  }
}

id sub_269D7E380()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_beginAccess();
  v3 = *(v2 + 80);
  swift_beginAccess();
  v4 = [*(v2 + 40) isDefaultSchedule];
  v5 = 2;
  if (v4)
  {
    v5 = 3;
  }

  if (v3 == 1)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  sub_269D2F438(3, v6);
  v7 = *(v0 + v1);
  swift_beginAccess();
  v8 = *(v7 + 40);

  [v8 sleepDurationGoal];
  v9 = MEMORY[0x277D62188];
  if (v10 <= 0.0)
  {
  }

  else
  {
    [*(v7 + 40) sleepDurationGoal];
    v12 = v11;

    if (v12 / 60.0 / 60.0 == *v9)
    {
      v13 = 3;
      goto LABEL_11;
    }
  }

  v13 = 2;
LABEL_11:
  sub_269D2F438(4, v13);
  v14 = *(v0 + v1);
  swift_beginAccess();
  v15 = *(v14 + 40);

  [v15 windDownTime];
  if (v16 == 0.0)
  {
    v17 = *MEMORY[0x277D623C8] * 60.0;
    v18 = *(v14 + 40);
    [v18 setWindDownTime_];
  }

  else
  {

    v17 = *MEMORY[0x277D623C8] * 60.0;
  }

  v19 = *(v0 + v1);
  swift_beginAccess();
  [*(v19 + 40) setWindDownTime_];
  v20 = *(v0 + v1);
  swift_beginAccess();
  v21 = *(v20 + 40);

  [v21 sleepDurationGoal];
  if (v22 <= 0.0)
  {

    v24 = *(v0 + v1);
    v25 = *v9 * 60.0 * 60.0;
    swift_beginAccess();
    return [*(v24 + 40) setSleepDurationGoal_];
  }

  else
  {
    [*(v20 + 40) sleepDurationGoal];
  }
}

void sub_269D7E638()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16);

  v4 = [v3 source];
  v5 = sub_269D9A630();
  v7 = v6;
  if (v5 == sub_269D9A630() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_269D9B280();

    if ((v10 & 1) == 0)
    {
      sub_269D7E8F0();
      return;
    }
  }

  if (qword_28034D770 != -1)
  {
    swift_once();
  }

  v11 = sub_269D98250();
  __swift_project_value_buffer(v11, qword_280351280);
  v12 = sub_269D98230();
  v13 = sub_269D9AB80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v14 = 136446210;
    v16 = sub_269D9B4D0();
    v18 = sub_269C2EACC(v16, v17, v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] we're done!", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x26D652460](v15, -1, -1);
    MEMORY[0x26D652460](v14, -1, -1);
  }

  v19 = (v1 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate);
  swift_beginAccess();
  if (*v19)
  {
    v20 = v19[1];
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 16);
    swift_unknownObjectRetain();

    v22(v23, ObjectType, v20);

    swift_unknownObjectRelease();
  }
}

void sub_269D7E8F0()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_allocWithZone(type metadata accessor for SleepOnboardingConfirmationViewController());

  sub_269D6E938(v3);
  v5 = v4;
  v6 = &v1[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = &v5[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate];
  swift_beginAccess();
  *v9 = v7;
  *(v9 + 1) = v8;
  v10 = v5;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  [v1 showViewController:v10 sender:0];
}

uint64_t sub_269D7EB54()
{
}

id sub_269D7EB94(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SleepOnboardingScheduleViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_269D7EC38()
{
  v1 = [v0 occurrences];
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  v2 = sub_269D9A7E0();

  v11 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D651260](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isRepeating])
      {
        sub_269D9B050();
        sub_269D9B090();
        sub_269D9B0A0();
        sub_269D9B060();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v9 = sub_269D9AF50();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  return v9 == 0;
}

void sub_269D7EDEC(void *a1)
{
  v53 = sub_269D977A0();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v3);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v51 = &v45 - v7;
  v8 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v54 = v1;
  v9 = *&v1[v8];
  swift_beginAccess();
  v10 = *(v9 + 40);

  [v10 sleepDurationGoal];
  v12 = v11;
  if (v11 > 0.0)
  {
    v14 = *(v9 + 40);
    [v14 sleepDurationGoal];
    v13 = v15;
  }

  else
  {

    v13 = 0;
  }

  *&v55[0] = v13;
  BYTE8(v55[0]) = v12 <= 0.0;
  sub_269D7F5A0(0, &qword_280C0B150, sub_269CBA0F8, MEMORY[0x277CBCE30]);
  swift_allocObject();
  v16 = sub_269D987F0();
  [a1 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034DC30, 0x277D62490);
  swift_dynamicCast();
  v46 = v58;
  v17 = v10;
  v48 = [v17 weekdaysWithOccurrences];
  v49 = v17;
  *&v55[0] = v17;
  sub_269D37C70(0, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
  swift_allocObject();
  v18 = sub_269D987F0();
  v19 = v54;
  v20 = *&v54[v8];
  v21 = v20[14];
  v22 = v20[15];
  __swift_project_boxed_opaque_existential_1Tm(v20 + 11, v21);
  v23 = *(v22 + 104);

  LOBYTE(v17) = v23(v21, v22);

  v24 = [*(*&v19[v8] + 72) currentCalendar];
  v25 = v51;
  sub_269D97710();

  v47 = *(v52 + 16);
  v26 = v50;
  v27 = v53;
  v47(v50, v25, v53);
  type metadata accessor for ScheduleOccurrenceEditModel(0);
  v28 = swift_allocObject();
  sub_269C2D3B8(0);
  swift_allocObject();

  v29 = v46;

  *(v28 + 16) = sub_269D98790();
  sub_269D7F5A0(0, &qword_28034D820, type metadata accessor for ScheduleOccurrenceEditModel, MEMORY[0x277CBCE10]);
  swift_allocObject();
  *(v28 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v28 + 32) = sub_269D98790();
  *&v55[0] = 0;
  sub_269D37C70(0, &qword_28034D830, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510);
  swift_allocObject();
  *(v28 + 40) = sub_269D987F0();
  *(v28 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  [v29 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  *(v28 + 48) = v57;
  *(v28 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v29;
  *(v28 + 56) = 0;
  v30 = v29;
  v31 = [v30 weekdays];
  *(v28 + 64) = v48 & ~v31;
  *(v28 + 72) = v16;
  *(v28 + 80) = v18;
  *(v28 + 88) = v17 & 1;
  v47((v28 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar), v26, v27);

  sub_269D987C0();
  v32 = *&v55[0];
  if (*&v55[0])
  {
    v33 = *(v28 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v34 = sub_269D976E0();
    v35 = [v32 allowableRangeForModifiedOccurrence:v33 gregorianCalendar:v34];
  }

  else
  {
    v35 = 0;
  }

  *&v55[0] = v35;
  sub_269D987D0();

  v36 = *(v52 + 8);
  v37 = v53;
  v36(v50, v53);
  v38 = type metadata accessor for ScheduleOccurrenceViewController();
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v39 = objc_allocWithZone(v38);
  sub_269C2F0A4(v28, 1, v55);
  v41 = v40;

  v36(v51, v37);
  v42 = &v41[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
  swift_beginAccess();
  *(v42 + 1) = &off_287AA9878;
  v43 = v54;
  swift_unknownObjectWeakAssign();
  v44 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v43 presentViewController:v44 animated:1 completion:0];
}

void sub_269D7F5A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_269D7F614(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v6 = sub_269D98250();
  __swift_project_value_buffer(v6, qword_280C0B728);
  v7 = sub_269D98230();
  v8 = sub_269D9AB80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v9 = 136446210;
    v11 = sub_269D9B4D0();
    v13 = sub_269C2EACC(v11, v12, v33);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Schedule occurrence was modified", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v14 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v15 = *&v2[v14];
  swift_beginAccess();
  v16 = *(v15 + 40);
  v17 = v16;
  if (a2)
  {
    v18 = [v16 overrideOccurrence];
    if (v18)
    {
      v19 = v18;
      v20 = sub_269D98230();
      v21 = sub_269D9AB80();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32[0] = v23;
        *v22 = 136446210;
        v24 = sub_269D9B4D0();
        v26 = sub_269C2EACC(v24, v25, v32);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] Removing override", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x26D652460](v23, -1, -1);
        MEMORY[0x26D652460](v22, -1, -1);
      }

      [v17 removeOccurrence_];
    }
  }

  [v17 saveOccurrence_];
  v27 = *&v3[v14];
  swift_beginAccess();
  v28 = *(v27 + 40);
  *(v27 + 40) = v17;
  v29 = v17;

  v30 = *&v3[v14];
  swift_beginAccess();
  *(v30 + 80) = 4;
  v31 = v29;
  sub_269D987D0();
  sub_269CBA6F4();
  sub_269D7E03C();
  [v3 dismissViewControllerAnimated:1 completion:0];
}

void sub_269D7F990(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B728);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136446210;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Schedule occurrence was deleted", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  v12 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v13 = *&v2[v12];
  swift_beginAccess();
  v14 = *(v13 + 40);
  [v14 removeOccurrence_];
  v15 = *&v2[v12];
  swift_beginAccess();
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
  v17 = v14;

  v18 = *&v2[v12];
  swift_beginAccess();
  *(v18 + 80) = 4;
  v19 = v17;
  sub_269D987D0();
  sub_269CBA6F4();
  sub_269D7E03C();
  [v2 dismissViewControllerAnimated:1 completion:0];
}

id sub_269D7FBEC()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Schedule occurrence edits were cancelled", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_269D7FD6C(char a1, double a2)
{
  v5 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v6 = *(v2 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  v8 = v7;
  v9 = &selRef_setWindDownTime_;
  if ((a1 & 1) == 0)
  {
    v9 = &selRef_setSleepDurationGoal_;
  }

  [v7 *v9];
  v10 = *(v2 + v5);
  swift_beginAccess();
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v12 = v8;

  v13 = v12;
  sub_269D987D0();
  sub_269CBA6F4();
}

uint64_t *sub_269D7FE78(void *a1, uint64_t a2, char a3, void *a4, uint64_t *a5)
{
  v10 = *a5;
  *(a5 + 49) = 0;
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D10F80];
  v11[2] = a2;
  v11[3] = v12;
  v11[4] = a4;
  v11[5] = v10;
  v13 = objc_allocWithZone(type metadata accessor for SleepDiffableTableViewDataSource(0));
  *&v13[qword_28034F058 + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_269D80040;
  *(v14 + 24) = v11;
  v15 = a4;
  v16 = a1;

  v17 = sub_269D98370();
  a5[4] = v12;
  a5[5] = v17;
  *(a5 + 48) = a3;
  a5[2] = a4;
  a5[3] = a2;

  v18 = v15;
  v19 = v17;
  sub_269D98390();

  *(a5[5] + qword_28034F058 + 8) = v12;
  swift_unknownObjectWeakAssign();
  type metadata accessor for ScheduleOnboardingSection(0);
  v20 = sub_269D97FD0();
  [v20 registerObserver_];

  return a5;
}

uint64_t *sub_269D8007C(void *a1, uint64_t a2, char a3, void *a4, uint64_t *a5)
{
  v10 = *a5;
  *(a5 + 49) = 0;
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D10F80];
  v11[2] = a2;
  v11[3] = v12;
  v11[4] = a4;
  v11[5] = v10;
  v13 = objc_allocWithZone(type metadata accessor for SleepDiffableTableViewDataSource(0));
  *&v13[qword_28034F058 + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_269D8028C;
  *(v14 + 24) = v11;
  v15 = a4;
  v16 = a1;

  v17 = sub_269D98370();
  a5[4] = v12;
  a5[5] = v17;
  *(a5 + 48) = a3;
  a5[2] = a4;
  a5[3] = a2;

  v18 = v15;
  v19 = v17;
  sub_269D98390();

  *(a5[5] + qword_28034F058 + 8) = v12;
  swift_unknownObjectWeakAssign();
  type metadata accessor for ConfirmationOnboardingSection(0);
  v20 = sub_269D97FD0();
  [v20 registerObserver_];

  return a5;
}

double block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269D80298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_269D80500(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t DiagramVariant.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

void *EnvironmentValues.diagramVariant.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_269D803D0(x0_0, a2, a3);

  return sub_269D99050();
}

unint64_t sub_269D803D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803519C8;
  if (!qword_2803519C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803519C8);
  }

  return result;
}

uint64_t (*EnvironmentValues.diagramVariant.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  a1[1] = sub_269D803D0(a1, a2, a3);
  sub_269D99050();
  return sub_269D804C4;
}

unint64_t sub_269D80500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2803519D0;
  if (!qword_2803519D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803519D0);
  }

  return result;
}

void sub_269D80574(char a1)
{
  v3 = [v1 presentedViewController];
  if (v3)
  {
    v5 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 dismissViewControllerAnimated:a1 & 1 completion:0];
    }
  }
}

id sub_269D80610(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v68 - v11;
  v73 = v2;
  sub_269D987C0();
  v13 = v78[0];
  if (!v78[0])
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D624F8]) init];
  }

  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v14 = sub_269D98250();
  v15 = __swift_project_value_buffer(v14, qword_280C0B220);
  v71 = *(v5 + 16);
  v71(v12, a1, v4);
  v16 = v13;
  v76 = v15;
  v17 = sub_269D98230();
  v18 = sub_269D9AB80();
  v75 = v16;

  v19 = os_log_type_enabled(v17, v18);
  v74 = a1;
  v72 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v69 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v78[0] = v23;
    *v20 = 136446722;
    *(v20 + 4) = sub_269C2EACC(0xD000000000000015, 0x8000000269DB55D0, v78);
    *(v20 + 12) = 2114;
    v24 = sub_269D974B0();
    v25 = *(v5 + 8);
    v25(v12, v69);
    *(v20 + 14) = v24;
    *(v20 + 22) = 2114;
    v26 = v75;
    *(v20 + 24) = v75;
    *v22 = v24;
    v22[1] = v26;
    v27 = v26;
    _os_log_impl(&dword_269C18000, v17, v18, "[%{public}s] generating editable override occcurence for current date: %{public}@ and schedule: %{public}@", v20, 0x20u);
    sub_269C77450(0, &unk_280C0ADC0, &qword_280C0ADD0, 0x277D82BB8);
    swift_arrayDestroy();
    v28 = v22;
    v4 = v69;
    MEMORY[0x26D652460](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v29 = v23;
    a1 = v74;
    MEMORY[0x26D652460](v29, -1, -1);
    MEMORY[0x26D652460](v20, -1, -1);
  }

  else
  {

    v25 = *(v5 + 8);
    v25(v12, v4);
  }

  v30 = sub_269D20308();
  v31 = sub_269D974B0();
  v73 = v30;
  v32 = [v30 upcomingResolvedOccurrenceAfterDate_];

  v71(v8, a1, v4);
  v33 = v32;
  v34 = sub_269D98230();
  v35 = sub_269D9AB80();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v71 = v25;
    v38 = v33;
    v39 = v4;
    v40 = v37;
    v41 = swift_slowAlloc();
    v78[0] = v41;
    *v36 = 136446722;
    *(v36 + 4) = sub_269C2EACC(0xD000000000000015, 0x8000000269DB55D0, v78);
    *(v36 + 12) = 2114;
    v42 = sub_269D974B0();
    v43 = v39;
    v33 = v38;
    (v71)(v8, v43);
    *(v36 + 14) = v42;
    *(v36 + 22) = 2114;
    *(v36 + 24) = v38;
    *v40 = v42;
    v40[1] = v38;
    v44 = v38;
    _os_log_impl(&dword_269C18000, v34, v35, "[%{public}s] upcoming resolved occurrence after date: %{public}@ is: %{public}@", v36, 0x20u);
    sub_269C77450(0, &unk_280C0ADC0, &qword_280C0ADD0, 0x277D82BB8);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x26D652460](v41, -1, -1);
    MEMORY[0x26D652460](v36, -1, -1);

    if (!v38)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v25(v8, v4);
    if (!v33)
    {
LABEL_18:
      v52 = sub_269D98230();
      v53 = sub_269D9AB80();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v78[0] = v55;
        *v54 = 136446210;
        *(v54 + 4) = sub_269C2EACC(0xD000000000000015, 0x8000000269DB55D0, v78);
        _os_log_impl(&dword_269C18000, v52, v53, "[%{public}s] upcoming resolved occurrence is not a single day override, generating a new one", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x26D652460](v55, -1, -1);
        MEMORY[0x26D652460](v54, -1, -1);
      }

      v56 = sub_269D974B0();
      v57 = sub_269D976E0();
      v58 = v73;
      v59 = [v73 overrideOccurrenceGenerationResultForCurrentDate:v56 gregorianCalendar:v57 schedule:v75];

      v60 = v59;
      v61 = sub_269D98230();
      v62 = sub_269D9AB80();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v78[0] = v65;
        *v63 = 136446722;
        *(v63 + 4) = sub_269C2EACC(0xD000000000000015, 0x8000000269DB55D0, v78);
        *(v63 + 12) = 2114;
        v66 = [v60 overrideOccurrence];
        *(v63 + 14) = v66;
        *v64 = v66;
        *(v63 + 22) = 1024;
        *(v63 + 24) = [v60 wasGeneratedFromTemplate];

        _os_log_impl(&dword_269C18000, v61, v62, "[%{public}s] generated override %{public}@ (from template: %{BOOL}d)", v63, 0x1Cu);
        sub_269C773DC(v64);
        MEMORY[0x26D652460](v64, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x26D652460](v65, -1, -1);
        MEMORY[0x26D652460](v63, -1, -1);
      }

      else
      {
      }

      v51 = [v60 overrideOccurrence];
      [v60 wasGeneratedFromTemplate];

      return v51;
    }
  }

  v45 = [v33 occurrence];
  if (!v45)
  {
    goto LABEL_18;
  }

  v46 = v45;
  if (![v45 isSingleDayOverride])
  {

    goto LABEL_18;
  }

  v47 = sub_269D98230();
  v48 = sub_269D9AB80();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v78[0] = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_269C2EACC(0xD000000000000015, 0x8000000269DB55D0, v78);
    _os_log_impl(&dword_269C18000, v47, v48, "[%{public}s] upcoming resolved occurrence is single day override, returning", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x26D652460](v50, -1, -1);
    MEMORY[0x26D652460](v49, -1, -1);
  }

  [v46 mutableCopy];
  sub_269D9AED0();

  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034DC30, 0x277D62490);
  swift_dynamicCast();
  return v77;
}

id sub_269D80FB4()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = [v0 isFeatureCapabilitySupportedOnActivePairedDeviceWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v8[0];
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = v8[0];
    v6 = sub_269D97360();

    swift_willThrow();
    return 0;
  }

  return v4;
}

id sub_269D81088(void *a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = sub_269D977A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269D97580();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 > 1u)
  {
    v25 = objc_allocWithZone(type metadata accessor for OnboardPromptViewController());
    return sub_269D84FC0(a4 == 2);
  }

  else if (a4)
  {
    return sub_269D8689C();
  }

  else
  {
    v27 = v16;
    sub_269D97570();
    v19 = sub_269D80610(v18, a3);
    v21 = v20;
    (*(v9 + 16))(v12, a3, v8);
    v22 = objc_allocWithZone(type metadata accessor for QuickScheduleOverrideViewController());
    v23 = sub_269D85B88(v19, v21 & 1, a1, a2 & 1, v12, v22);
    (*(v14 + 8))(v18, v27);
    return v23;
  }
}

uint64_t sub_269D814AC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_269D8150C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_sleepDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_269C681C8;
}

char *QuickScheduleManagementViewController.init(sleepStore:provenanceSource:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_269D977A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D97670();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_gregorianCalendar;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9830], v11);
  sub_269D97680();
  (*(v12 + 8))(v15, v11);
  *&v3[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver] = 0;
  *&v3[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_sleepStore] = a1;
  type metadata accessor for SleepScheduleProvider();
  v17 = a1;
  v18 = SleepScheduleProvider.__allocating_init(sleepStore:)(v17);
  v19 = OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_sleepScheduleProvider;
  *&v3[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_sleepScheduleProvider] = v18;
  *&v3[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_provenanceSource] = a2;
  v20 = *MEMORY[0x277CCC0E0];
  v21 = objc_allocWithZone(MEMORY[0x277D62460]);
  v44 = a2;
  v22 = [v21 initWithFeatureIdentifier:v20 sleepStore:v17];
  v23 = OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_featureAvailability;
  *&v3[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_featureAvailability] = v22;
  v24 = v22;
  LOBYTE(v21) = sub_269D80FB4();

  v25 = *&v3[v23];
  v26 = *&v3[v19];
  swift_unknownObjectRetain();
  LOBYTE(v25) = sub_269D864A8(v25, v26);
  v27 = *&v3[v19];
  (*(v7 + 16))(v10, &v3[v16], v6);
  v28 = v27;
  v29 = sub_269D81088(v28, v21 & 1, v10, v25);

  (*(v7 + 8))(v10, v6);
  v30 = type metadata accessor for QuickScheduleManagementViewController(0);
  v45.receiver = v3;
  v45.super_class = v30;
  v31 = objc_msgSendSuper2(&v45, sel_initWithRootViewController_, v29);
  type metadata accessor for QuickScheduleOverrideViewController();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = &off_287AA9AA0;
    v34 = &OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate;
  }

  else
  {
    type metadata accessor for EnableSchedulePromptViewController();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = &off_287AA9AD8;
      v34 = &OBJC_IVAR____TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0634EnableSchedulePromptViewController_delegate;
    }

    else
    {
      type metadata accessor for OnboardPromptViewController();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        goto LABEL_8;
      }

      v33 = &off_287AA9AC0;
      v34 = &OBJC_IVAR____TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0627OnboardPromptViewController_delegate;
    }
  }

  *(v32 + *v34 + 8) = v33;
  swift_unknownObjectWeakAssign();
LABEL_8:
  v35 = v29;
  v36 = [v35 navigationItem];
  v37 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v31 action:sel_cancelWithAnimated_];
  [v36 setLeftBarButtonItem_];

  v38 = OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_featureAvailability;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(ObjectType) = HKFeatureAvailabilityProviding.isFeatureOnboarded.getter(ObjectType);
  swift_unknownObjectRelease();
  if ((ObjectType & 1) == 0)
  {
    v40 = *&v31[v38];
    sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
    swift_unknownObjectRetain();
    v41 = sub_269D9AC40();
    [v40 registerObserver:v31 queue:v41];
    swift_unknownObjectRelease();
  }

  return v31;
}

void sub_269D81AF4()
{
  v1 = sub_269D97670();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9830], v1);
  sub_269D97680();
  (*(v2 + 8))(v5, v1);
  sub_269D9B100();
  __break(1u);
}

uint64_t sub_269D81C4C(char a1)
{
  v2 = v1;
  v4 = sub_269D9ACD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for QuickScheduleManagementViewController(0);
  v13.receiver = v2;
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1 & 1);
  v10 = [objc_opt_self() defaultCenter];
  sub_269D9ACE0();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269D86608();
  v11 = sub_269D98900();

  (*(v5 + 8))(v8, v4);
  *&v2[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver] = v11;
}

id QuickScheduleManagementViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id QuickScheduleManagementViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id QuickScheduleManagementViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_269D8207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

void sub_269D821F4(uint64_t a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong cancelWithAnimated_];
  }

  else
  {
  }
}

void *sub_269D822C8(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [v1 viewControllers];
  sub_269C1B0B8(0, &qword_28034DC38, 0x277D75D28);
  v5 = sub_269D9A7E0();

  if (!(v5 >> 62))
  {
    v6 = &qword_280C0B000;
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:

    goto LABEL_18;
  }

  v6 = &qword_280C0B000;
  if (!sub_269D9AF50())
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26D651260](0, v5);
LABEL_6:
    v4 = v7;

    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v4 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {

      goto LABEL_18;
    }

    v5 = v8;
    if (qword_280C0B218 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_13:
  v10 = sub_269D98250();
  __swift_project_value_buffer(v10, qword_280C0B220);
  v11 = v4;
  v12 = sub_269D98230();
  v13 = sub_269D9AB80();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v14 = 136446466;
    v16 = sub_269D9B4D0();
    v18 = sub_269C2EACC(v16, v17, v32);

    *(v14 + 4) = v18;
    v6 = &qword_280C0B000;
    *(v14 + 12) = 2114;
    *(v14 + 14) = v11;
    *v15 = v11;
    v19 = v11;
    _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] prepareForCancel: [%{public}@]", v14, 0x16u);
    sub_269C773DC(v15);
    MEMORY[0x26D652460](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x26D652460](v31, -1, -1);
    MEMORY[0x26D652460](v14, -1, -1);
  }

  ObjectType = swift_getObjectType();
  (*(v5 + 8))(a1 & 1, ObjectType, v5);

LABEL_18:
  if (v6[67] != -1)
  {
    swift_once();
  }

  v21 = sub_269D98250();
  __swift_project_value_buffer(v21, qword_280C0B220);
  v22 = sub_269D98230();
  v23 = sub_269D9AB80();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32[0] = v25;
    *v24 = 136446210;
    v26 = sub_269D9B4D0();
    v28 = sub_269C2EACC(v26, v27, v32);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_269C18000, v22, v23, "[%{public}s] Did cancel", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x26D652460](v25, -1, -1);
    MEMORY[0x26D652460](v24, -1, -1);
  }

  v29 = OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver;
  if (*&v2[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver])
  {

    sub_269D98750();
  }

  *&v2[v29] = 0;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result quickScheduleManagementViewControllerDidCancel_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_269D82758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

void *sub_269D82838()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Will save schedule", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result quickScheduleManagementViewControllerWillSave_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_269D829D8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B220);
  v5 = a1;
  v6 = sub_269D98230();
  v7 = sub_269D9AB80();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136446466;
    v10 = sub_269D9B4D0();
    v12 = sub_269C2EACC(v10, v11, v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    if (a1)
    {
      sub_269C1B0B8(0, &qword_280C0AEF0, 0x277D624F8);
      v13 = v5;
      v14 = sub_269D9A660();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_269C2EACC(v14, v16, v19);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] Did save schedule %{public}s...", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v9, -1, -1);
    MEMORY[0x26D652460](v8, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result quickScheduleManagementViewController:v2 didSave:v5];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_269D82C10(void *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B220);
  v9 = a1;
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 136446466;
    v14 = sub_269D9B4D0();
    v16 = sub_269C2EACC(v14, v15, v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    if (a1)
    {
      v17 = a1;
      sub_269C80B44();
      v18 = sub_269D9A660();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v21 = sub_269C2EACC(v18, v20, v28);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Presenting alert for error %{public}s...", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v13, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(0, v23);
  }

  v24 = Strong;
  sub_269C1B0B8(0, &unk_28034EF40, 0x277D75110);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;

  v26 = static UIAlertController.internalOnlyAlert(for:dismissHandler:)(a1, sub_269C74A54, v25);

  [v24 quickScheduleManagementViewController:v4 shouldPresent:v26];

  return swift_unknownObjectRelease();
}

uint64_t sub_269D82EC8()
{
  v1 = *(v0 + OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_provenanceSource);
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {

    return 1;
  }

  v7 = sub_269D9B280();
  v8 = v1;

  if (v7)
  {

    return 1;
  }

  v10 = sub_269D9A630();
  v12 = v11;
  if (v10 == sub_269D9A630() && v12 == v13)
  {

    return 4;
  }

  else
  {
    v15 = sub_269D9B280();

    if (v15)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_269D83010(int a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a5;
  v44 = a8;
  v38 = a4;
  v39 = a6;
  v37 = a2;
  v42 = a1;
  v12 = sub_269D98250();
  v40 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v41 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_269D9A900();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  sub_269D9A8E0();
  v21 = a4;

  v22 = a2;
  v36 = a7;
  v23 = sub_269D9A8D0();
  v24 = (*(v13 + 80) + 33) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v23;
  *(v29 + 24) = v30;
  *(v29 + 32) = v42;
  (*(v13 + 32))(v29 + v24, v41, v40);
  *(v29 + v25) = v38;
  v31 = (v29 + v26);
  v32 = v39;
  *v31 = v43;
  v31[1] = v32;
  v33 = v36;
  *(v29 + v27) = v37;
  *(v29 + v28) = v33;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v44;
  sub_269C79F94(0, 0, v19, &unk_269DAB7A8, v29);
}

uint64_t sub_269D832A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v14;
  *(v8 + 56) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 88) = a4;
  sub_269D9A8E0();
  *(v8 + 80) = sub_269D9A8D0();
  v10 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D83358, v10, v9);
}

uint64_t sub_269D83358()
{
  v45 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 88);

  if (v2 == 1)
  {
    v3 = v1;
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v44 = v8;
      *v7 = 136446466;
      v9 = sub_269D9B4D0();
      v11 = sub_269C2EACC(v9, v10, &v44);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      if (v6)
      {
        *(v0 + 16) = v3;
        sub_269C1B0B8(0, &qword_28034E978, 0x277D62488);
        v12 = v3;
        v13 = sub_269D9A660();
        v15 = v14;
      }

      else
      {
        v13 = 7104878;
        v15 = 0xE300000000000000;
      }

      v31 = sub_269C2EACC(v13, v15, &v44);

      *(v7 + 14) = v31;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Successfully saved sleep schedule %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }
  }

  else
  {
    v16 = *(v0 + 56);
    v17 = v1;
    v18 = v16;
    v19 = sub_269D98230();
    v20 = sub_269D9AB60();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 56);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136446722;
      v24 = sub_269D9B4D0();
      v26 = sub_269C2EACC(v24, v25, &v44);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      if (v21)
      {
        *(v0 + 16) = v16;
        v27 = v16;
        sub_269C80B44();
        v28 = sub_269D9A660();
        v30 = v29;
      }

      else
      {
        v30 = 0xE300000000000000;
        v28 = 7104878;
      }

      v33 = *(v0 + 32);
      v34 = sub_269C2EACC(v28, v30, &v44);

      *(v22 + 14) = v34;
      *(v22 + 22) = 2082;
      if (v33)
      {
        *(v0 + 16) = v17;
        sub_269C1B0B8(0, &qword_28034E978, 0x277D62488);
        v35 = v17;
        v36 = sub_269D9A660();
        v38 = v37;
      }

      else
      {
        v38 = 0xE300000000000000;
        v36 = 7104878;
      }

      v39 = sub_269C2EACC(v36, v38, &v44);

      *(v22 + 24) = v39;
      _os_log_impl(&dword_269C18000, v19, v20, "[%{public}s] Failed to save sleep schedule with error: %{public}s, %{public}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v23, -1, -1);
      MEMORY[0x26D652460](v22, -1, -1);
    }

    v32 = [objc_opt_self() sharedBehavior];
    if (v32)
    {
      v40 = v32;
      v41 = [v32 isAppleInternalInstall];

      if (v41)
      {
        sub_269D82C10(*(v0 + 56), *(v0 + 40), *(v0 + 48));
        goto LABEL_20;
      }
    }
  }

  (*(v0 + 40))(v32);
LABEL_20:
  v42 = *(v0 + 8);

  return v42();
}

void sub_269D83770(id a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_269D98250();
  v55 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v54 = v13;
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_269D20B30(v14);
  v16 = v15;
  v17 = &qword_280C0B000;
  if (a2)
  {
    v18 = [v15 overrideOccurrence];
    if (v18)
    {
      v19 = v18;
      if (qword_280C0B218 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v11, qword_280C0B220);
      v20 = sub_269D98230();
      LODWORD(v56) = sub_269D9AB80();
      if (os_log_type_enabled(v20, v56))
      {
        v21 = swift_slowAlloc();
        v53 = v21;
        v22 = swift_slowAlloc();
        v49 = v20;
        v50 = v22;
        aBlock[0] = v22;
        *v21 = 136446210;
        v23 = sub_269D9B4D0();
        v51 = a1;
        v25 = sub_269C2EACC(v23, v24, aBlock);
        a1 = v51;

        v26 = v53;
        *(v53 + 4) = v25;
        v17 = &qword_280C0B000;
        _os_log_impl(&dword_269C18000, v20, v56, "[%{public}s] removing override", v26, 0xCu);
        v27 = v50;
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x26D652460](v27, -1, -1);
        MEMORY[0x26D652460](v53, -1, -1);
      }

      else
      {
      }

      [v16 removeOccurrence_];
    }
  }

  v56 = ObjectType;
  [v16 saveOccurrence_];
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = a4;
  v53 = v28;
  v28[4] = v16;
  v29 = v17[67];
  v51 = v16;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v11, qword_280C0B220);
  v31 = [objc_opt_self() unknownProvenance];
  sub_269D82EC8();
  v32 = HKSPAnalyticsScheduleChangeContext();

  v33 = v5;
  v34 = v11;
  sub_269D9A490();

  v50 = *&v33[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_sleepStore];
  v49 = sub_269D9A480();

  v35 = v55;
  v36 = v52;
  (*(v55 + 16))(v52, v30, v11);
  v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v38 = (v54 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v35 + 32))(v41 + v37, v36, v34);
  v42 = v51;
  *(v41 + v38) = v51;
  v43 = (v41 + v39);
  v44 = v53;
  *v43 = sub_269D87AE4;
  v43[1] = v44;
  *(v41 + v40) = v33;
  *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v56;
  aBlock[4] = sub_269D87AE0;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C7A600;
  aBlock[3] = &block_descriptor_86;
  v45 = _Block_copy(aBlock);
  v46 = v42;

  v47 = v33;

  v48 = v49;
  [v50 saveCurrentSleepSchedule:v46 options:0 context:v49 completion:v45];
  _Block_release(v45);
}

void sub_269D83CAC(void (*a1)(), int a2, id a3)
{
  [a3 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_280C0AEF0, 0x277D624F8);
  swift_dynamicCast();
  a1();
}

void sub_269D83D50(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_269D973D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HKSPSleepURL();
  if (v9)
  {
    v10 = v9;
    sub_269D973B0();

    DeepLinkOpener.open(url:completion:)(v8, 0, 0);
    [v2 cancelWithAnimated_];
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v11 = sub_269D98250();
    __swift_project_value_buffer(v11, qword_280C0B220);
    v12 = a1;
    v25 = sub_269D98230();
    v13 = sub_269D9AB60();

    if (os_log_type_enabled(v25, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136446466;
      v16 = sub_269D9B4D0();
      v18 = sub_269C2EACC(v16, v17, &v27);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v26 = v12;
      type metadata accessor for HKSPSleepLaunchURLRoute(0);
      v19 = v12;
      v20 = sub_269D9A660();
      v22 = sub_269C2EACC(v20, v21, &v27);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_269C18000, v25, v13, "[%{public}s] Unable to create URL for route %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v15, -1, -1);
      MEMORY[0x26D652460](v14, -1, -1);
    }

    else
    {
      v23 = v25;
    }
  }
}

uint64_t QuickScheduleManagementViewController.featureAvailabilityProvidingDidUpdateOnboardingCompletion(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_269D9A8E0();
  v6 = v1;
  v7 = a1;
  v8 = ObjectType;
  return sub_269C71EBC(sub_269D86660, &v5, "SleepHealthUI/QuickScheduleManagementViewController.swift", 57, 2u, 415);
}

void sub_269D840AC(char *a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B220);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v55 = v8;
    *v7 = 136446210;
    v9 = sub_269D9B4D0();
    v11 = a2;
    v12 = sub_269C2EACC(v9, v10, &v55);

    *(v7 + 4) = v12;
    a2 = v11;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Observed onboarding completion update", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  v13 = [a1 viewControllers];
  sub_269C1B0B8(0, &qword_28034DC38, 0x277D75D28);
  v14 = sub_269D9A7E0();

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_28:

LABEL_29:
    v47 = sub_269D98230();
    v48 = sub_269D9AB80();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v49 = 136446210;
      v51 = sub_269D9B4D0();
      v53 = sub_269C2EACC(v51, v52, &v55);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_269C18000, v47, v48, "[%{public}s] Onboarding view not displayed - skipping update", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x26D652460](v50, -1, -1);
      MEMORY[0x26D652460](v49, -1, -1);
    }

    [*&a1[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_featureAvailability] unregisterObserver_];

    return;
  }

  if (!sub_269D9AF50())
  {
    goto LABEL_28;
  }

LABEL_9:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x26D651260](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;

  type metadata accessor for OnboardPromptViewController();
  v17 = swift_dynamicCastClass();

  if (!v17)
  {
    goto LABEL_29;
  }

  ObjectType = swift_getObjectType();
  v19 = HKFeatureAvailabilityProviding.isFeatureOnboarded.getter(ObjectType);
  v20 = sub_269D98230();
  v21 = sub_269D9AB80();
  v22 = os_log_type_enabled(v20, v21);
  if (v19)
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v55 = v24;
      *v23 = 136446210;
      v25 = sub_269D9B4D0();
      v27 = sub_269C2EACC(v25, v26, &v55);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] Onboarded - setting new root view controller", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D652460](v24, -1, -1);
      MEMORY[0x26D652460](v23, -1, -1);
    }

    v28 = *&a1[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_sleepScheduleProvider];
    swift_unknownObjectRetain();
    v29 = v28;
    v30 = sub_269D864A8(a2, v29);
    v31 = HKFeatureAvailabilityProviding.pairedWatchSupportsSleep.getter(ObjectType);
    v32 = sub_269D81088(v29, v31 & 1, &a1[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_gregorianCalendar], v30);
    sub_269C4E764();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_269DA2A30;
    *(v33 + 32) = v32;
    v34 = v32;
    v35 = sub_269D9A7D0();

    [a1 setViewControllers:v35 animated:0];

    type metadata accessor for QuickScheduleOverrideViewController();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = &off_287AA9AA0;
      v38 = &OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate;
    }

    else
    {
      type metadata accessor for EnableSchedulePromptViewController();
      v36 = swift_dynamicCastClass();
      if (v36)
      {
        v37 = &off_287AA9AD8;
        v38 = &OBJC_IVAR____TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0634EnableSchedulePromptViewController_delegate;
      }

      else
      {
        v36 = swift_dynamicCastClass();
        if (!v36)
        {
LABEL_26:
          v44 = v34;
          v45 = [v44 navigationItem];
          v46 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:a1 action:sel_cancelWithAnimated_];
          [v45 setLeftBarButtonItem_];

          [*&a1[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_featureAvailability] unregisterObserver_];

          return;
        }

        v37 = &off_287AA9AC0;
        v38 = &OBJC_IVAR____TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0627OnboardPromptViewController_delegate;
      }
    }

    *(v36 + *v38 + 8) = v37;
    swift_unknownObjectWeakAssign();
    goto LABEL_26;
  }

  if (v22)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v55 = v40;
    *v39 = 136446210;
    v41 = sub_269D9B4D0();
    v43 = sub_269C2EACC(v41, v42, &v55);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] Not onboarded - skipping update", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x26D652460](v40, -1, -1);
    MEMORY[0x26D652460](v39, -1, -1);
  }
}

void sub_269D8489C()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D9A5F0();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    qword_2803519E0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_269D84964()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TintedTitleTrayButton();
  objc_msgSendSuper2(&v5, sel_tintColorDidChange);
  v1 = [v0 tintColor];
  if (v1)
  {
    v2 = v1;
    [v0 setTitleColor:v1 forState:0];
    v3 = [v2 colorWithAlphaComponent_];
    [v0 setTitleColor:v3 forState:1];

    v4 = [v2 colorWithAlphaComponent_];
    [v0 setTitleColor:v4 forState:2];
  }

  else
  {
    __break(1u);
  }
}

id sub_269D84D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TintedTitleTrayButton();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 addTarget:v3 action:a3 forControlEvents:64];
  v6 = sub_269D9A5F0();
  [v5 setTitle:v6 forState:0];

  v7 = [v3 buttonTray];
  v8 = v5;
  [v7 addButton_];

  return v8;
}

uint64_t sub_269D84F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_269D84FC0(char a1)
{
  *&v1[OBJC_IVAR____TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0627OnboardPromptViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v3 = sub_269D9A5F0();

  sub_269D972C0();
  v4 = sub_269D9A5F0();

  if (qword_28034D7F0 != -1)
  {
    swift_once();
  }

  v5 = qword_2803519E0;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for OnboardPromptViewController();
  v6 = objc_msgSendSuper2(&v14, sel_initWithTitle_detailText_icon_contentLayout_, v3, v4, v5, 2, 0xE000000000000000);

  v7 = v6;
  sub_269D972C0();
  v8 = [objc_opt_self() boldButton];
  [v8 addTarget:v7 action:sel_beginButtonAction forControlEvents:64];
  v9 = sub_269D9A5F0();

  [v8 setTitle:v9 forState:0];

  v10 = [v7 buttonTray];
  [v10 addButton_];

  if (a1)
  {
    v11 = sub_269D972C0();
  }

  else
  {
  }

  return v7;
}

uint64_t sub_269D852C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t sub_269D8545C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_269D86CE0();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_269D855CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v6 = sub_269D9A5F0();

  v7 = [objc_opt_self() alertControllerWithTitle:0 message:v6 preferredStyle:{0, 0xE000000000000000}];

  v8 = [v7 popoverPresentationController];
  [v8 setSourceItem_];

  sub_269D972C0();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = sub_269D9A5F0();

  v23 = sub_269D86834;
  v24 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269CECE18;
  v22 = &block_descriptor_44;
  v11 = _Block_copy(&aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:2 handler:{v11, 0xE000000000000000}];
  _Block_release(v11);

  [v7 addAction_];
  sub_269D972C0();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_269D9A5F0();

  v23 = sub_269D86870;
  v24 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269CECE18;
  v22 = &block_descriptor_40_0;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 actionWithTitle:v15 style:1 handler:{v16, 0xE000000000000000}];
  _Block_release(v16);

  [v7 addAction_];
  [v18 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_269D859A8(uint64_t a1, void (*a2)(void, __n128), uint64_t a3, uint64_t a4, char a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (a2)(a5 & 1);
}

uint64_t sub_269D85A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_269D85B38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_269D85B88(void *a1, int a2, uint64_t a3, int a4, char *a5, _BYTE *a6)
{
  v51 = a4;
  LODWORD(v50) = a2;
  v49 = a1;
  v48[1] = swift_getObjectType();
  v9 = sub_269D977A0();
  v55 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v13;
  v14 = type metadata accessor for SleepScheduleProvider();
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_alarmConfigurationObserver] = 0;
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_snoozeDurationPickerObserver] = 0;
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelEditObserver] = 0;
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_significantTimeChangeObserver] = 0;
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver] = 0;
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver] = 0;
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepDurationGoalObserver] = 0;
  v59[3] = v14;
  v59[4] = &protocol witness table for SleepScheduleProvider;
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_validScheduleRangeObserver] = 0;
  v59[0] = a3;
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_willResignActiveObserver] = 0;
  a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelHasChanged] = 0;
  v15 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_tonePickerStyleProvider;
  v16 = type metadata accessor for TonePickerStyleProvider();
  *&a6[v15] = [objc_allocWithZone(v16) init];
  v17 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_vibrationPickerStyleProvider;
  *&a6[v17] = [objc_allocWithZone(v16) init];
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource] = 0;
  v18 = *(a3 + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentGoalPublisher);
  v19 = *(a3 + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentSchedulePublisher);
  v54 = v10;
  v20 = *(v10 + 16);
  v52 = a5;
  v20(v13, a5, v9);
  v21 = v20;
  type metadata accessor for ScheduleOccurrenceEditModel(0);
  v22 = swift_allocObject();
  sub_269C2D3B8(0);
  swift_allocObject();

  v23 = v49;
  *(v22 + 16) = sub_269D98790();
  sub_269C2D430(0);
  swift_allocObject();
  *(v22 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v22 + 32) = sub_269D98790();
  v58[0] = 0;
  sub_269D87A20(0);
  swift_allocObject();
  *(v22 + 40) = sub_269D987F0();
  *(v22 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  [v23 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  *(v22 + 48) = v57;
  *(v22 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v23;
  *(v22 + 56) = v50;
  *(v22 + 57) = 1;
  v50 = v23;
  [v50 weekdays];
  *(v22 + 64) = 0;
  *(v22 + 72) = v18;
  *(v22 + 80) = v19;
  *(v22 + 88) = v51;
  v21(v22 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v53, v55);

  sub_269D987C0();
  v24 = v58[0];
  if (v58[0])
  {
    v25 = *(v22 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v26 = sub_269D976E0();
    v27 = [v24 allowableRangeForModifiedOccurrence:v25 gregorianCalendar:v26];
  }

  else
  {
    v27 = 0;
  }

  v58[0] = v27;
  sub_269D987D0();
  v28 = v50;

  v29 = v54 + 8;
  v30 = *(v54 + 8);
  v30(v53, v55);
  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model] = v22;
  sub_269C2DB5C(v59, &a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider]);
  type metadata accessor for AlarmPreviewPlayer();
  swift_allocObject();

  *&a6[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_alarmPreviewPlayer] = AlarmPreviewPlayer.init(model:)(v31);
  v32 = type metadata accessor for QuickScheduleOverrideViewController();
  v56.receiver = a6;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, sel_initWithStyle_, 2);
  v34 = qword_280C0B218;
  v35 = v33;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_269D98250();
  __swift_project_value_buffer(v36, qword_280C0B220);
  v37 = v28;
  v38 = sub_269D98230();
  v39 = sub_269D9AB80();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v58[0] = v42;
    *v40 = 136446466;
    nullsub_1();
    v43 = sub_269D9B4D0();
    v54 = v29;
    v45 = sub_269C2EACC(v43, v44, v58);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2114;
    *(v40 + 14) = v37;
    *v41 = v37;
    v46 = v37;
    _os_log_impl(&dword_269C18000, v38, v39, "[%{public}s] initializing with override occurrence %{public}@", v40, 0x16u);
    sub_269C773DC(v41);
    MEMORY[0x26D652460](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x26D652460](v42, -1, -1);
    MEMORY[0x26D652460](v40, -1, -1);
  }

  else
  {
  }

  v30(v52, v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  return v35;
}

uint64_t sub_269D86254(void *a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v6 = sub_269D98250();
  __swift_project_value_buffer(v6, qword_280C0B220);
  v7 = a1;
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136446466;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v7;
    *v11 = v7;
    v16 = v7;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Schedule occurrence was modified: %{public}@", v10, 0x16u);
    sub_269C773DC(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  v17 = OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver;
  if (*&v3[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver])
  {

    sub_269D98750();
  }

  *&v3[v17] = 0;

  sub_269D82838();
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  v19 = v3;
  sub_269D83770(v7, a2 & 1, sub_269D87818, v18);
}

uint64_t sub_269D864A8(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v4 = HKFeatureAvailabilityProviding.isFeatureOnboarded.getter(ObjectType);
  sub_269D987C0();
  if (v8)
  {
    v5 = v8;
    v6 = [v5 isEnabled];

    swift_unknownObjectRelease();
    if (v4)
    {
      return v6 ^ 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    swift_unknownObjectRelease();

    if (v4)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for QuickScheduleManagementViewController(uint64_t a1)
{
  result = qword_280351A38;
  if (!qword_280351A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_269D86608()
{
  result = qword_280C0B4B0;
  if (!qword_280C0B4B0)
  {
    sub_269D9ACD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B4B0);
  }

  return result;
}

uint64_t sub_269D86688(uint64_t a1)
{
  result = sub_269D977A0();
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

double block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_269D8689C()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  sub_269D972C0();
  sub_269D972C0();
  if (qword_28034D7F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2803519E0;
  v1 = type metadata accessor for EnableSchedulePromptViewController();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0634EnableSchedulePromptViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = sub_269D9A5F0();

  v4 = sub_269D9A5F0();

  v12.receiver = v2;
  v12.super_class = v1;
  v5 = objc_msgSendSuper2(&v12, sel_initWithTitle_detailText_icon_contentLayout_, v3, v4, v0, 2, 0xE000000000000000);

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 boldButton];
  [v8 addTarget:v7 action:sel_enableButtonAction forControlEvents:64];
  v9 = sub_269D9A5F0();

  [v8 setTitle:v9 forState:0];

  v10 = [v7 buttonTray];
  [v10 addButton_];

  return v7;
}

void sub_269D86B64(const char *a1, void **a2, ...)
{
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B220);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_269C18000, v5, v6, a1, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  v12 = *a2;

  sub_269D83D50(v12);
}

void sub_269D86CE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_269D98250();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v37 = v6;
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v3, qword_280C0B220);
  v7 = sub_269D98230();
  v8 = sub_269D9AB80();
  v9 = os_log_type_enabled(v7, v8);
  v39 = ObjectType;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Removing existing sleep schedule...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  v15 = OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver;
  if (*&v1[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver])
  {

    sub_269D98750();
  }

  *&v1[v15] = 0;

  sub_269D82838();
  v35 = swift_allocObject();
  *(v35 + 16) = v1;
  v16 = objc_opt_self();
  v17 = v1;
  v18 = [v16 unknownProvenance];
  sub_269D82EC8();
  v19 = HKSPAnalyticsScheduleChangeContext();

  sub_269D9A490();
  v34 = *&v17[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_sleepStore];
  v33 = sub_269D9A480();

  v20 = v38;
  (*(v4 + 16))(v38, v36, v3);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = (v37 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = v3;
  v25 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v4 + 32))(v26 + v21, v20, v24);
  *(v26 + v22) = 0;
  v27 = (v26 + v23);
  v28 = v35;
  *v27 = sub_269D87144;
  v27[1] = v28;
  *(v26 + v25) = v17;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
  aBlock[4] = sub_269D8716C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C7A600;
  aBlock[3] = &block_descriptor_52;
  v29 = _Block_copy(aBlock);
  v30 = v17;

  v31 = v33;
  [v34 saveCurrentSleepSchedule:0 options:0 context:v33 completion:v29];
  _Block_release(v29);
}

uint64_t sub_269D87170(uint64_t a1)
{
  v3 = *(sub_269D98250() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + 24);
  v14 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = *(v1 + 32);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_269C71C08;

  return sub_269D832A4(a1, v14, v13, v8, v1 + v4, v7, v9, v10);
}

void sub_269D872F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_269D98250();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B218 != -1)
  {
    v39 = v6;
    swift_once();
    v6 = v39;
  }

  v50 = v6;
  v47 = __swift_project_value_buffer(v6, qword_280C0B220);
  v7 = sub_269D98230();
  v8 = sub_269D9AB80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = v4;
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v9 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, aBlock);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Enabling sleep schedule...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v15 = v11;
    v4 = v10;
    MEMORY[0x26D652460](v15, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v16 = OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver;
  v17 = *&v1[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_appStateObserver];
  v51 = ObjectType;
  if (v17)
  {

    sub_269D98750();
  }

  *&v1[v16] = 0;

  sub_269D82838();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v46 = v18;
  v19 = v1;
  v20 = sub_269D20B30(v19);
  v44 = v20;
  [v20 setEnabled_];
  v21 = swift_allocObject();
  *(v21 + 2) = sub_269D87AB4;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v22 = objc_opt_self();
  v45 = v20;

  v23 = [v22 unknownProvenance];
  v41 = v19;
  sub_269D82EC8();
  v24 = HKSPAnalyticsScheduleChangeContext();

  sub_269D9A490();
  v43 = *&v19[OBJC_IVAR___HKSHQuickScheduleManagementViewControllerInternal_sleepStore];
  v42 = sub_269D9A480();

  v25 = v48;
  v26 = v49;
  v27 = v50;
  (*(v49 + 16))(v48, v47, v50);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v4 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v26 + 32))(v32 + v28, v25, v27);
  *(v32 + v29) = v44;
  v33 = (v32 + v30);
  *v33 = sub_269D877F8;
  v33[1] = v21;
  v34 = v41;
  *(v32 + v31) = v41;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;
  aBlock[4] = sub_269D87AE0;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C7A600;
  aBlock[3] = &block_descriptor_72;
  v35 = _Block_copy(aBlock);
  v36 = v34;
  v37 = v45;

  v38 = v42;
  [v43 saveCurrentSleepSchedule:v37 options:0 context:v42 completion:v35];
  _Block_release(v35);
}

uint64_t objectdestroy_64Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_269D98250();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_269D8794C(int a1, void *a2)
{
  v5 = *(sub_269D98250() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + v8 + 8);
  v13 = *(v2 + v9);
  v14 = *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_269D83010(a1, a2, v2 + v6, v10, v11, v12, v13, v14);
}

void sub_269D87A20(uint64_t a1)
{
  if (!qword_28034D830)
  {
    sub_269C77450(255, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510);
    v1 = sub_269D987E0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034D830);
    }
  }
}

id SleepTreatmentRowViewProvider.view.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for SleepSettingsModel();
  sub_269D87C88(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
  v4 = sub_269D98E40();
  v14 = v5;
  v15 = v4;
  type metadata accessor for WatchAppInstalledProvider(0);
  sub_269D87C88(&qword_280351628, type metadata accessor for WatchAppInstalledProvider, &protocol conformance descriptor for WatchAppInstalledProvider);
  v6 = sub_269D98E40();
  v8 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v16);

  v9 = v16;
  v10 = sub_269D98760();
  v13 = *(v3 + OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_watchAppInstalledProvider);
  v11 = sub_269D98760();
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v9;
  a1[6] = v11;
  a1[7] = v13;

  return v13;
}

uint64_t sub_269D87C88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269D87CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269D87D70@<X0>(void *a1@<X0>, void *a3@<X2>, uint64_t a5@<X8>)
{
  type metadata accessor for SleepSettingsModel();
  sub_269D87C88(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
  v8 = sub_269D98E40();
  v18 = v9;
  v19 = v8;
  type metadata accessor for WatchAppInstalledProvider(0);
  sub_269D87C88(&qword_280351628, type metadata accessor for WatchAppInstalledProvider, &protocol conformance descriptor for WatchAppInstalledProvider);
  v10 = sub_269D98E40();
  v17 = v11;
  sub_269D99E60();
  if (a1)
  {
    v12 = a1;
    v13 = sub_269D98760();
    if (a3)
    {
      v14 = v13;
      v15 = a3;
      result = sub_269D98760();
      *a5 = v19;
      *(a5 + 8) = v18;
      *(a5 + 16) = v10;
      *(a5 + 24) = v17;
      *(a5 + 32) = v20;
      *(a5 + 40) = v21;
      *(a5 + 48) = v14;
      *(a5 + 56) = a1;
      *(a5 + 64) = result;
      *(a5 + 72) = a3;
      return result;
    }
  }

  else
  {
    sub_269D98E30();
    __break(1u);
  }

  result = sub_269D98E30();
  __break(1u);
  return result;
}

uint64_t sub_269D87F14()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  sub_269D972C0();

  sub_269C3EEE8(v1, v2, v3);
  v4 = sub_269D99960();
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() labelColor];
  sub_269D99CC0();
  v10 = sub_269D998F0();
  v12 = v11;
  v14 = v13;

  sub_269C41568(v4, v6, v8 & 1);

  sub_269D99B30();
  sub_269C41568(v10, v12, v14 & 1);
}

uint64_t sub_269D88144()
{
  sub_269D87D70(*v0, v0[2], &v2);
  sub_269D88240();
  sub_269D882C0(0, &qword_280351A60, sub_269D8832C);
  swift_getOpaqueTypeConformance2();
  sub_269D883A0();
  return sub_269D98C50();
}

void sub_269D88240()
{
  if (!qword_280351A58)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280351A58);
    }
  }
}

void sub_269D882C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_269D5DFA8(255);
    v4 = sub_269D98D00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269D88340(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_269CD68A4(255);
    v4 = sub_269D98D00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269D883A0()
{
  result = qword_280351A70;
  if (!qword_280351A70)
  {
    sub_269D882C0(255, &qword_280351A60, sub_269D8832C);
    sub_269D88490(&qword_280351A78, sub_269D8832C, sub_269D88544);
    sub_269D87C88(&qword_280351668, sub_269D5DFA8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351A70);
  }

  return result;
}

uint64_t sub_269D88490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_269D87C88(&qword_28034FD78, sub_269CD68A4, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269D88544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351A80;
  if (!qword_280351A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351A80);
  }

  return result;
}

uint64_t sub_269D88598(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_269D885F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_269D88664(uint64_t a1)
{
  if (!qword_280351A90)
  {
    sub_269D88240();
    sub_269D882C0(255, &qword_280351A60, sub_269D8832C);
    swift_getOpaqueTypeConformance2();
    sub_269D883A0();
    v1 = sub_269D98C60();
    if (!v2)
    {
      atomic_store(v1, &qword_280351A90);
    }
  }
}

uint64_t sub_269D88758@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v39[1] = a1;
  sub_269D8A3C8(0, a2);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D8A598(0, v8);
  v12 = v11;
  MEMORY[0x28223BE20](v11, v13);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v3;
  sub_269D8A45C(0);
  sub_269D87C88(&qword_280351AC0, sub_269D8A45C, MEMORY[0x277CE14C0]);
  sub_269D99850();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v16 = qword_280C0D990;
  v17 = sub_269D972C0();
  v19 = v18;

  v43[0] = v17;
  v43[1] = v19;
  v20 = sub_269D87C88(&qword_280351AD8, sub_269D8A3C8, MEMORY[0x277CDE580]);
  sub_269C3EEE8(v20, v21, v22);
  sub_269D99B00();

  (*(v6 + 8))(v10, v5);
  v23 = *v3;
  v45 = v3[1];
  v46 = v23;
  v44 = v3[2];
  v24 = swift_allocObject();
  v25 = v3[1];
  *(v24 + 1) = *v3;
  *(v24 + 2) = v25;
  *(v24 + 3) = v3[2];
  v26 = &v15[*(v12 + 36)];
  *v26 = sub_269D8A6D0;
  v26[1] = v24;
  v26[2] = 0;
  v26[3] = 0;
  sub_269D9A8E0();
  sub_269D8A76C(&v46, v43, sub_269D8A6D8);
  sub_269D8A76C(&v45, v43, sub_269D8A7D4);
  sub_269D8A868(&v44, v43);
  sub_269D8A76C(&v46, v43, sub_269D8A6D8);
  sub_269D8A76C(&v45, v43, sub_269D8A7D4);
  sub_269D8A868(&v44, v43);
  v27 = sub_269D9A8D0();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  v30 = v3[1];
  *(v28 + 32) = *v3;
  *(v28 + 48) = v30;
  *(v28 + 64) = v3[2];
  sub_269D8A76C(&v46, v43, sub_269D8A6D8);
  sub_269D8A76C(&v45, v43, sub_269D8A7D4);
  sub_269D8A868(&v44, v43);
  v31 = sub_269D9A8D0();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v29;
  v33 = v3[1];
  *(v32 + 32) = *v3;
  *(v32 + 48) = v33;
  *(v32 + 64) = v3[2];
  sub_269D9A030();
  sub_269D8A900(0, &qword_28034E338, MEMORY[0x277CE11F8]);
  MEMORY[0x26D650250](&v42);
  LOBYTE(v29) = v42;

  v41[22] = v29;
  v34 = swift_allocObject();
  v35 = v3[1];
  v34[1] = *v3;
  v34[2] = v35;
  v34[3] = v3[2];
  sub_269D8A76C(&v46, v41, sub_269D8A6D8);
  sub_269D8A76C(&v45, v41, sub_269D8A7D4);
  sub_269D8A868(&v44, v41);
  sub_269D8A9A4(v36);
  sub_269D99C70();

  return sub_269C250A4(v15, v37);
}

uint64_t sub_269D88CB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  sub_269D87CE0(0, &qword_280351AB8, sub_269D8A530, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v34 - v8;
  sub_269D8A530(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v34 - v18;
  sub_269D9A8E0();
  v34 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v38 = sub_269D8AAC0(*(a1 + 16), *(a1 + 24));
  *(&v38 + 1) = v20;
  v39 = v21 & 1;
  v40 = v22;
  MEMORY[0x28223BE20](v38, v20);
  *(&v34 - 2) = a1;
  sub_269D043B8();
  sub_269D87C88(&qword_280350678, sub_269D043B8, MEMORY[0x277CDF068]);
  sub_269D9A0D0();
  v38 = *(a1 + 32);
  sub_269D8A900(0, &qword_28034E300, MEMORY[0x277CE10B8]);
  sub_269D99E70();
  if (v37 == 1)
  {
    *&v38 = sub_269D893D0();
    *(&v38 + 1) = v23;
    v39 = v24 & 1;
    v40 = v25;
    MEMORY[0x28223BE20](v38, v23);
    *(&v34 - 2) = a1;
    sub_269D9A0D0();
    (*(v12 + 32))(v9, v15, v11);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v12 + 56))(v9, v26, 1, v11);
  v27 = *(v12 + 16);
  v27(v15, v19, v11);
  v28 = v35;
  sub_269D8AD80(v9, v35);
  v29 = v36;
  v30 = v27(v36, v15, v11);
  sub_269D8A490(0, v30);
  sub_269D8AD80(v28, &v29[*(v31 + 48)]);
  sub_269D8AE14(v9);
  v32 = *(v12 + 8);
  v32(v19, v11);
  sub_269D8AE14(v28);
  v32(v15, v11);
}

uint64_t sub_269D89108(__int128 *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  v2 = MEMORY[0x277D85700];
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v3 = qword_280C0D990;
  v4 = sub_269D972C0();
  v6 = v5;

  v18[3] = v4;
  v18[4] = v6;
  v7 = *a1;
  v20 = a1[1];
  v21 = v7;
  v19 = a1[2];
  sub_269D8A76C(&v21, v18, sub_269D8A6D8);
  sub_269D8A76C(&v20, v18, sub_269D8A7D4);
  sub_269D8A868(&v19, v18);
  v8 = sub_269D9A8D0();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  v10 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v10;
  *(v9 + 64) = a1[2];
  sub_269D8A76C(&v21, v18, sub_269D8A6D8);
  sub_269D8A76C(&v20, v18, sub_269D8A7D4);
  sub_269D8A868(&v19, v18);
  v11 = sub_269D9A8D0();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  v13 = a1[1];
  *(v12 + 32) = *a1;
  *(v12 + 48) = v13;
  *(v12 + 64) = a1[2];
  v14 = sub_269D9A030();
  sub_269C3EEE8(v14, v15, v16);
  sub_269D99F90();
}

uint64_t sub_269D893D0()
{
  v1 = v0[2];
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_269D98880(&v26);

    v3 = *v0;
    if (v26)
    {
      if (v3)
      {
        v4 = [*(v3 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions];
        v5 = qword_280C0AE70;
        if ((v4 & 8) == 0)
        {
          if (qword_280C0AE70 == -1)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }

LABEL_11:
        if (v5 == -1)
        {
LABEL_12:
          v10 = qword_280C0D990;
          v11 = sub_269D972C0();
          v13 = v12;

          v26 = v11;
          v27 = v13;
LABEL_17:
          sub_269C3EEE8(v14, v15, v16);
          return sub_269D99960();
        }

LABEL_18:
        swift_once();
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    if (!v3)
    {
LABEL_21:
      type metadata accessor for SleepSettingsModel();
      v23 = &qword_28034F568;
      v24 = type metadata accessor for SleepSettingsModel;
      v25 = &protocol conformance descriptor for SleepSettingsModel;
      goto LABEL_22;
    }

    v6 = [*(v3 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions];
    v7 = objc_opt_self();
    if ((v6 & 8) == 0)
    {
      v8 = sub_269D9A5F0();
      v9 = [v7 modelSpecificLocalizedStringKeyForKey_];

      if (!v9)
      {
        __break(1u);
        goto LABEL_11;
      }

LABEL_14:
      sub_269D9A630();

      if (qword_280C0AE70 != -1)
      {
        swift_once();
      }

      v18 = qword_280C0D990;
      v19 = sub_269D972C0();
      v21 = v20;

      v26 = v19;
      v27 = v21;
      goto LABEL_17;
    }

    v17 = sub_269D9A5F0();
    v9 = [v7 modelSpecificLocalizedStringKeyForKey_];

    if (v9)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  type metadata accessor for WatchAppInstalledProvider(0);
  v23 = &qword_280351628;
  v24 = type metadata accessor for WatchAppInstalledProvider;
  v25 = &protocol conformance descriptor for WatchAppInstalledProvider;
LABEL_22:
  sub_269D87C88(v23, v24, v25);
  result = sub_269D98E30();
  __break(1u);
  return result;
}

uint64_t sub_269D897C4(__int128 *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  v2 = MEMORY[0x277D85700];
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v3 = qword_280C0D990;
  v4 = sub_269D972C0();
  v6 = v5;

  v18[3] = v4;
  v18[4] = v6;
  v7 = *a1;
  v20 = a1[1];
  v21 = v7;
  v19 = a1[2];
  sub_269D8A76C(&v21, v18, sub_269D8A6D8);
  sub_269D8A76C(&v20, v18, sub_269D8A7D4);
  sub_269D8A868(&v19, v18);
  v8 = sub_269D9A8D0();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  v10 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v10;
  *(v9 + 64) = a1[2];
  sub_269D8A76C(&v21, v18, sub_269D8A6D8);
  sub_269D8A76C(&v20, v18, sub_269D8A7D4);
  sub_269D8A868(&v19, v18);
  v11 = sub_269D9A8D0();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  v13 = a1[1];
  *(v12 + 32) = *a1;
  *(v12 + 48) = v13;
  *(v12 + 64) = a1[2];
  v14 = sub_269D9A030();
  sub_269C3EEE8(v14, v15, v16);
  sub_269D99F90();
}

uint64_t sub_269D89A8C(__int128 *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  v2 = MEMORY[0x277D85700];
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1[1];
  v14 = *a1;
  v12 = a1[2];
  v13 = v3;
  sub_269D8A76C(&v14, &v11 + 1, sub_269D8A6D8);
  sub_269D8A76C(&v13, &v11 + 1, sub_269D8A7D4);
  sub_269D8A868(&v12, &v11 + 1);
  v4 = sub_269D9A8D0();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v6 = a1[1];
  *(v5 + 32) = *a1;
  *(v5 + 48) = v6;
  *(v5 + 64) = a1[2];
  sub_269D8A76C(&v14, &v11 + 1, sub_269D8A6D8);
  sub_269D8A76C(&v13, &v11 + 1, sub_269D8A7D4);
  sub_269D8A868(&v12, &v11 + 1);
  v7 = sub_269D9A8D0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v9 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v9;
  *(v8 + 64) = a1[2];
  sub_269D9A030();
  sub_269D8A900(0, &qword_28034E338, MEMORY[0x277CE11F8]);
  MEMORY[0x26D650250](&v11);

  sub_269D8A900(0, &qword_28034E300, MEMORY[0x277CE10B8]);
  sub_269D99E80();
}

uint64_t sub_269D89D04(uint64_t a1, char *a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor, v4);
  sub_269D9A1B0();
  sub_269D98BD0();
}

uint64_t sub_269D89E04(uint64_t a1, char a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D8A900(0, &qword_28034E300, MEMORY[0x277CE10B8]);
  sub_269D99E80();
}

uint64_t sub_269D89EF0@<X0>(void *a1@<X2>, BOOL *a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v4 = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions];

    *a2 = (v4 & 0x4000) != 0;
  }

  else
  {
    type metadata accessor for SleepSettingsModel();
    sub_269D87C88(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
    result = sub_269D98E30();
    __break(1u);
  }

  return result;
}

void sub_269D8A00C(char *a1, uint64_t a2, uint64_t a3, id *a4)
{
  v5 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a4)
  {
    v6 = *a4;
    sub_269CB3394(v5);
  }

  else
  {
    type metadata accessor for SleepSettingsModel();
    sub_269D87C88(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
    sub_269D98E30();
    __break(1u);
  }
}

uint64_t sub_269D8A13C@<X0>(void *a1@<X2>, BOOL *a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v4 = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions];

    *a2 = (v4 & 8) == 0;
  }

  else
  {
    type metadata accessor for SleepSettingsModel();
    sub_269D87C88(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
    result = sub_269D98E30();
    __break(1u);
  }

  return result;
}

void sub_269D8A25C(char *a1, uint64_t a2, uint64_t a3, id *a4)
{
  v5 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a4)
  {
    v6 = *a4;
    sub_269CB3C1C(v5 ^ 1);
  }

  else
  {
    type metadata accessor for SleepSettingsModel();
    sub_269D87C88(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
    sub_269D98E30();
    __break(1u);
  }
}

void sub_269D8A3C8(uint64_t a1, double a2)
{
  if (!qword_280351A98)
  {
    sub_269D8A45C(255);
    sub_269D87C88(&qword_280351AC0, sub_269D8A45C, MEMORY[0x277CE14C0]);
    v2 = sub_269D99860();
    if (!v3)
    {
      atomic_store(v2, &qword_280351A98);
    }
  }
}

void sub_269D8A490(uint64_t a1, double a2)
{
  if (!qword_280351AA8)
  {
    sub_269D8A530(255);
    sub_269D87CE0(255, &qword_280351AB8, sub_269D8A530, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_280351AA8);
    }
  }
}

void sub_269D8A530(uint64_t a1)
{
  if (!qword_280351AB0)
  {
    sub_269D043B8();
    v1 = sub_269D9A0E0();
    if (!v2)
    {
      atomic_store(v1, &qword_280351AB0);
    }
  }
}

void sub_269D8A598(uint64_t a1, double a2)
{
  if (!qword_280351AC8)
  {
    sub_269D8A5F8(255, a2);
    v2 = sub_269D98D00();
    if (!v3)
    {
      atomic_store(v2, &qword_280351AC8);
    }
  }
}

void sub_269D8A5F8(uint64_t a1, double a2)
{
  if (!qword_280351AD0)
  {
    sub_269D8A3C8(255, a2);
    v2 = sub_269D87C88(&qword_280351AD8, sub_269D8A3C8, MEMORY[0x277CDE580]);
    sub_269C3EEE8(v2, v3, v4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280351AD0);
    }
  }
}

void sub_269D8A6D8(uint64_t a1)
{
  if (!qword_280351AE0)
  {
    type metadata accessor for SleepSettingsModel();
    sub_269D87C88(&qword_28034F568, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
    v1 = sub_269D98E50();
    if (!v2)
    {
      atomic_store(v1, &qword_280351AE0);
    }
  }
}

uint64_t sub_269D8A76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269D8A7D4(uint64_t a1)
{
  if (!qword_280351AE8)
  {
    type metadata accessor for WatchAppInstalledProvider(255);
    sub_269D87C88(&qword_280351628, type metadata accessor for WatchAppInstalledProvider, &protocol conformance descriptor for WatchAppInstalledProvider);
    v1 = sub_269D98E50();
    if (!v2)
    {
      atomic_store(v1, &qword_280351AE8);
    }
  }
}

uint64_t sub_269D8A868(uint64_t a1, uint64_t a2)
{
  sub_269D8A900(0, &qword_28034E300, MEMORY[0x277CE10B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269D8A900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

unint64_t sub_269D8A9A4(double a1)
{
  result = qword_280351AF0;
  if (!qword_280351AF0)
  {
    sub_269D8A598(255, a1);
    sub_269D8A3C8(255, v2);
    v3 = sub_269D87C88(&qword_280351AD8, sub_269D8A3C8, MEMORY[0x277CDE580]);
    sub_269C3EEE8(v3, v4, v5);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351AF0);
  }

  return result;
}

uint64_t sub_269D8AAC0(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;
    sub_269D98880(&v19);

    if (v19)
    {
      if (qword_280C0AE70 != -1)
      {
        swift_once();
      }

      v4 = qword_280C0D990;
      v5 = sub_269D972C0();
      v7 = v6;

      v19 = v5;
      v20 = v7;
LABEL_10:
      sub_269C3EEE8(v8, v9, v10);
      return sub_269D99960();
    }

    v11 = objc_opt_self();
    v12 = sub_269D9A5F0();
    v13 = [v11 modelSpecificLocalizedStringKeyForKey_];

    if (v13)
    {
      sub_269D9A630();

      if (qword_280C0AE70 != -1)
      {
        swift_once();
      }

      v14 = qword_280C0D990;
      v15 = sub_269D972C0();
      v17 = v16;

      v19 = v15;
      v20 = v17;
      goto LABEL_10;
    }

    __break(1u);
  }

  type metadata accessor for WatchAppInstalledProvider(a1);
  sub_269D87C88(&qword_280351628, type metadata accessor for WatchAppInstalledProvider, &protocol conformance descriptor for WatchAppInstalledProvider);
  result = sub_269D98E30();
  __break(1u);
  return result;
}

uint64_t sub_269D8AD80(uint64_t a1, uint64_t a2)
{
  sub_269D87CE0(0, &qword_280351AB8, sub_269D8A530, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D8AE14(uint64_t a1)
{
  sub_269D87CE0(0, &qword_280351AB8, sub_269D8A530, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269D8AF18@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v2 = qword_280C0D990;
  v3 = sub_269D972C0();
  v5 = v4;

  v6 = v2;
  v7 = sub_269D972C0();
  v9 = v8;

  v10 = [objc_opt_self() quaternarySystemFillColor];
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v9;
  result = sub_269D99CC0();
  a1[4] = result;
  return result;
}

uint64_t TrailingDetailViewModel.titleText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrailingDetailViewModel.detailText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrailingDetailViewModel.init(titleText:detailText:backgroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  result = sub_269D99CC0();
  a6[4] = result;
  return result;
}

uint64_t static TrailingDetailViewModel.== infix(_:_:)(uint64_t *a1, void *a2, __n128 a3)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *a1 == *a2 && a1[1] == a2[1];
  if (!v7 && (sub_269D9B280() & 1) == 0)
  {
    return 0;
  }

  v8 = v3 == v5 && v4 == v6;
  if (!v8 && (sub_269D9B280() & 1) == 0)
  {
    return 0;
  }

  return sub_269D99CD0();
}

uint64_t sub_269D8B1D8(uint64_t *a1, void *a2, __n128 a3)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *a1 == *a2 && a1[1] == a2[1];
  if (!v7 && (sub_269D9B280() & 1) == 0)
  {
    return 0;
  }

  v8 = v3 == v5 && v4 == v6;
  if (!v8 && (sub_269D9B280() & 1) == 0)
  {
    return 0;
  }

  return sub_269D99CD0();
}

uint64_t sub_269D8B2A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_269D8B2EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_269D8B360@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v20 = *v2;
  v21 = v4;
  v22 = *(v2 + 4);
  v5 = sub_269D99090();
  v19 = 1;
  sub_269D8B478(&v13);
  v25 = v15;
  v26 = v16;
  v23 = v13;
  v24 = v14;
  v28[2] = v15;
  v28[3] = v16;
  v28[4] = v17;
  v28[1] = v14;
  v27 = v17;
  v28[0] = v13;
  sub_269D8B714(&v23, &v12);
  sub_269D8B778(v28);
  *&v18[23] = v24;
  *&v18[39] = v25;
  *&v18[55] = v26;
  *&v18[71] = v27;
  *&v18[7] = v23;
  v6 = v19;
  *&v13 = v22;

  v7 = sub_269D99FF0();
  v8 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  *(a2 + 65) = v8;
  *(a2 + 81) = *&v18[64];
  result = *v18;
  v10 = *&v18[16];
  *(a2 + 17) = *v18;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  v11 = *&v18[79];
  *(a2 + 33) = v10;
  *(a2 + 96) = v11;
  *(a2 + 104) = v7;
  return result;
}

uint64_t sub_269D8B478@<X0>(uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_269C3EEE8(isCurrentExecutor, v4, v5);

  v6 = sub_269D99960();
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  sub_269D99CC0();
  v13 = sub_269D998F0();
  v32 = v14;
  v33 = v13;
  v31 = v15;
  v34 = v16;

  sub_269C41568(v6, v8, v10 & 1);

  v17 = sub_269D99960();
  v19 = v18;
  v21 = v20;
  v22 = [v11 secondaryLabelColor];
  sub_269D99CC0();
  v23 = sub_269D998F0();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_269C41568(v17, v19, v21 & 1);

  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v23;
  *(a2 + 56) = v25;
  *(a2 + 64) = v27 & 1;
  *(a2 + 72) = v29;
  sub_269C41668(v33, v32, v31 & 1);

  sub_269C41668(v23, v25, v27 & 1);

  sub_269C41568(v23, v25, v27 & 1);

  sub_269C41568(v33, v32, v31 & 1);
}

uint64_t sub_269D8B714(uint64_t a1, uint64_t a2)
{
  sub_269CC04F4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D8B778(uint64_t a1)
{
  sub_269CC04F4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269D8B7D4()
{
  result = qword_280351AF8;
  if (!qword_280351AF8)
  {
    sub_269D8B8B4(255);
    sub_269D8B91C(&qword_28034F770, sub_269CC0460, MEMORY[0x277CE1138]);
    sub_269D8B91C(&qword_28034F2A8, sub_269CA02EC, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351AF8);
  }

  return result;
}

void sub_269D8B8B4(uint64_t a1)
{
  if (!qword_280351B00)
  {
    sub_269CC0460(255);
    sub_269CA02EC(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_280351B00);
    }
  }
}

uint64_t sub_269D8B91C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id HKSleepDaySummary.sleepDurationGoalInterval.getter()
{
  result = [v0 sleepDurationGoal];
  v2 = result;
  if (result)
  {
    v3 = [objc_opt_self() secondUnit];
    [v2 doubleValueForUnit_];
    v5 = v4;

    return v5;
  }

  return result;
}

uint64_t static HKSleepDaySummary.demoSummaries(in:calendar:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result, a2);
    v7[2] = v3;
    v7[3] = &unk_287AA1168;
    v7[4] = v4;
    v7[5] = v5;
    v7[6] = &unk_287AA11F8;
    v7[7] = v6;
    v7[8] = v2;
    return sub_269D51D48(sub_269D8BB80, v7, 0, v5);
  }

  return result;
}

void *sub_269D8BABC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v8 = *result;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = *(a3 + 16);
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = (*result + a2) % v9;
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v11 < *(a5 + 16))
  {
    v13 = 8 * v11;
    v14 = *(a3 + v13 + 32);
    v15 = *(a5 + v13 + 32);

    v16 = sub_269D8BBB8(v10, v14, v15, a6);

    *a7 = v16;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_269D8BBB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v119 = a3;
  v104 = a2;
  sub_269D8C684(0, &qword_280C0BD88, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v107 = &v102 - v8;
  v122 = sub_269D97010();
  v111 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v9);
  v115 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v105 = &v102 - v13;
  v120 = sub_269D97780();
  v14 = *(v120 - 1);
  MEMORY[0x28223BE20](v120, v15);
  v110 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v102 - v19;
  sub_269D8C684(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v121 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v102 - v26;
  v28 = sub_269D97580();
  v117 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v103 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v102 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v113 = &v102 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v118 = &v102 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v102 - v43;
  v45 = objc_opt_self();
  v46 = sub_269D976E0();
  v114 = a1;
  v47 = [v45 hk:a1 noonWithDayIndex:v46 calendar:?];

  sub_269D97540();
  v48 = *MEMORY[0x277CC9980];
  v49 = v120;
  v109 = *(v14 + 104);
  (v109)(v20, v48, v120);
  sub_269D976D0();
  v106 = v44;
  v116 = a4;
  sub_269D97740();
  v50 = v27;
  v51 = *(v14 + 8);
  v52 = v20;
  v53 = v117;
  v112 = (v14 + 8);
  v108 = v51;
  v51(v52, v49);
  v54 = *(v53 + 48);
  v123 = v28;
  result = v54(v50, 1, v28);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v56 = v118;
  v57 = v123;
  v102 = *(v53 + 32);
  v102(v118, v50, v123);
  v58 = v110;
  (v109)(v110, *MEMORY[0x277CC99A0], v49);
  v59 = v121;
  sub_269D97740();
  v108(v58, v49);
  result = v54(v59, 1, v57);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v60 = v56;
  v61 = v117;
  v62 = v123;
  v109 = *(v117 + 8);
  v110 = (v117 + 8);
  v109(v56, v123);
  v102(v56, v121, v62);
  v63 = v113;
  v120 = *(v61 + 16);
  v121 = (v61 + 16);
  (v120)(v113, v56, v62);
  v64 = objc_opt_self();
  v65 = sub_269D976E0();
  v112 = [v64 hk:v114 sleepDayIntervalForMorningIndex:v65 calendar:?];

  v66 = v104;
  v67 = *(v104 + 16);
  if (v67)
  {
    v124 = MEMORY[0x277D84F90];
    sub_269D9B080();
    v119 = objc_opt_self();
    v68 = (v111 + 8);
    v69 = (v61 + 40);
    v70 = v66 + 40;
    v71 = v105;
    do
    {
      v72 = *(v70 - 8);
      v70 += 16;
      (v120)(v34, v63, v62);
      sub_269D96FC0();
      v73 = sub_269D96F70();
      v74 = [v119 sleepPeriodSegmentWithDateInterval:v73 category:v72];

      sub_269D96FA0();
      (*v68)(v71, v122);
      (*v69)(v63, v34, v62);
      sub_269D9B050();
      sub_269D9B090();
      v62 = v123;
      sub_269D9B0A0();
      sub_269D9B060();
      --v67;
    }

    while (v67);
    v60 = v118;
  }

  else
  {
    v71 = v105;
  }

  v75 = v60;
  v76 = v120;
  (v120)(v34, v75, v62);
  v76(v103, v63, v62);
  sub_269D96FB0();
  v77 = sub_269D96F70();
  sub_269C1B0B8(0, &qword_280C0B4C0, 0x277CCD9E0);
  v78 = sub_269D9A7D0();

  v79 = [objc_opt_self() sleepPeriodWithDateInterval:v77 segments:v78];

  v80 = v111;
  v120 = *(v111 + 8);
  v81 = v122;
  (v120)(v71, v122);
  sub_269D96F90();
  sub_269C4E764();
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_269DA2A30;
  *(v82 + 32) = v79;
  v83 = objc_opt_self();
  v121 = v79;
  v84 = [v83 hourUnit];
  v85 = objc_opt_self();
  v119 = [v85 quantityWithUnit:v84 doubleValue:8.0];

  v86 = [v83 hourUnit];
  v87 = [v85 quantityWithUnit:v86 doubleValue:7.0];

  v88 = v107;
  sub_269D97000();
  (*(v80 + 56))(v88, 0, 1, v81);
  v117 = sub_269D96F70();
  v116 = sub_269D976E0();
  sub_269C1B0B8(0, &qword_280C0B4C8, 0x277CCD9D8);
  v89 = sub_269D9A7D0();

  sub_269C1B0B8(0, qword_280351B08, 0x277CCD9E8);
  v90 = sub_269D9A7D0();
  v91 = (*(v80 + 48))(v88, 1, v81);
  v92 = v120;
  v93 = 0;
  if (v91 != 1)
  {
    v93 = sub_269D96F70();
    v92(v88, v122);
  }

  v94 = objc_allocWithZone(MEMORY[0x277CCD9B0]);
  v96 = v116;
  v95 = v117;
  v97 = v119;
  v98 = v87;
  v99 = [v94 initWithMorningIndex:v114 dateInterval:v117 calendar:v116 periods:v89 schedules:v90 sleepDurationGoal:v119 minimumRecommendedSleepDurationGoal:v87 creationInterval:v93];

  v92(v115, v122);
  v100 = v123;
  v101 = v109;
  v109(v118, v123);
  v101(v106, v100);
  v101(v113, v100);
  return v99;
}

void sub_269D8C684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id CALayer.center.setter(double a1, double a2)
{
  [v2 frame];
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  sub_269D9AD30();

  return [v2 setFrame_];
}

id static CALayer.performWithoutAnimation(_:)(void (*a1)(id))
{
  v2 = objc_opt_self();
  [v2 begin];
  a1([v2 setDisableActions_]);

  return [v2 commit];
}

double CALayer.center.getter()
{
  [v0 frame];

  sub_269D9AD20();
  return result;
}

id sub_269D8C810(double *a1, id *a2)
{
  v2 = *a2;
  [*a2 frame];
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  sub_269D9AD30();

  return [v2 setFrame_];
}

id (*CALayer.center.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  [v1 frame];
  sub_269D9AD20();
  *a1 = v3;
  a1[1] = v4;
  return sub_269D8C8E8;
}

id sub_269D8C8E8(double *a1)
{
  v1 = *(a1 + 2);
  [v1 frame];
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  sub_269D9AD30();
  return [v1 setFrame_];
}

void *EnvironmentValues.visualizationSpec.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D1D970(a1, a2, a3);

  return sub_269D99050();
}

double sub_269D8CAC4@<D0>(uint64_t a2@<X8>, __n128 a4@<Q1>, double a5@<D2>)
{
  v16 = a4;
  sub_269C424A0(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D99700();
  v11 = *MEMORY[0x277CE09A0];
  v12 = sub_269D996F0();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_269D99730();
  sub_269D51A04(v10);
  v14 = sub_269D997D0();

  result = 0.25;
  *a2 = v16;
  *(a2 + 16) = xmmword_269DABB20;
  *(a2 + 32) = a5;
  *(a2 + 40) = v14;
  return result;
}

uint64_t sub_269D8CC38@<X0>(uint64_t a1@<X8>)
{
  sub_269C424A0(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = xmmword_269DABB30;
  *(a1 + 16) = xmmword_269DABB20;
  *(a1 + 32) = 0x3FC3333333333333;
  sub_269D99700();
  v6 = *MEMORY[0x277CE09A0];
  v7 = sub_269D996F0();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  sub_269D99730();
  sub_269D51A04(v5);
  v9 = sub_269D997D0();

  *(a1 + 40) = v9;
  return result;
}

uint64_t (*EnvironmentValues.visualizationSpec.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  *(v3 + 96) = v1;
  *(v3 + 104) = sub_269D1D970(v3, v4, v5);
  sub_269D99050();
  return sub_269D8CE2C;
}

void sub_269D8CE2C(_OWORD **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[3] = **a1;
  v4 = *(v2 + 4);
  v5 = *(v2 + 5);
  v2[4] = v3;
  *(v2 + 10) = v4;
  *(v2 + 11) = v5;
  if (a2)
  {

    sub_269D99060();
  }

  else
  {
    sub_269D99060();
  }

  free(v2);
}

uint64_t sub_269D8CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_269D8CF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23[1] = a1;
  v23[2] = a2;
  v23[3] = a9;
  v24 = a5;
  v25 = a6;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a8;
  type metadata accessor for GetSubviews.SubviewGetter(255, &v24);
  swift_getWitnessTable();
  v12 = sub_269D98BB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v23 - v19;
  v24 = a3;
  v25 = a4;

  sub_269D98BC0();
  v23[4] = swift_getWitnessTable();
  v23[5] = a7;
  swift_getWitnessTable();
  sub_269CE81C8();
  v21 = *(v13 + 8);
  v21(v16, v12);
  sub_269CE81C8();
  return (v21)(v20, v12);
}

uint64_t sub_269D8D184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v18 - v13;
  v15(v12);
  sub_269CE81C8();
  v16 = *(v7 + 8);
  v16(v9, a6);
  sub_269CE81C8();
  return (v16)(v14, a6);
}

uint64_t sub_269D8D2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282130608](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_269D8D42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void ScheduleOccurrenceView.body.getter(uint64_t a1@<X8>)
{
  sub_269D8D69C(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_269D991A0();
  *(v6 + 1) = 0x4018000000000000;
  v6[16] = 0;
  sub_269D8DCAC(0);
  sub_269D8DA10(v1, &v6[*(v7 + 44)]);
  v8 = sub_269D99600();
  type metadata accessor for ScheduleOccurrenceViewModel(0);
  sub_269D98990();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_269D8F094(v6, a1, sub_269D8D69C);
  sub_269D8DD14(0, &qword_280351C70, sub_269D8D69C, MEMORY[0x277CDF928]);
  v18 = a1 + *(v17 + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
}

void sub_269D8D77C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_269D8D800(uint64_t a1)
{
  if (!qword_280351C38)
  {
    sub_269D8D894(255);
    sub_269D8F52C(&qword_280351C58, sub_269D8D894, MEMORY[0x277CE14C0]);
    v1 = sub_269D98AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280351C38);
    }
  }
}

void sub_269D8D8D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_269D8D92C(255, a3, a4, a5);
    v6 = sub_269D9A1C0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269D8D92C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_269D8DA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D8D800(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - v10;
  sub_269D8D714(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v23 - v18;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D8DD94(v19);
  *v11 = sub_269D995A0();
  sub_269D8EEFC(0);
  sub_269D8E114(a1, &v11[*(v20 + 44)]);
  sub_269D8ED4C(v19, v15, sub_269D8D714);
  sub_269D8ED4C(v11, v7, sub_269D8D800);
  sub_269D8ED4C(v15, a2, sub_269D8D714);
  sub_269D8D92C(0, &qword_280351C20, sub_269D8D714, sub_269D8D800);
  sub_269D8ED4C(v7, a2 + *(v21 + 48), sub_269D8D800);
  sub_269D8F1C0(v11, sub_269D8D800);
  sub_269D8F1C0(v19, sub_269D8D714);
  sub_269D8F1C0(v7, sub_269D8D800);
  sub_269D8F1C0(v15, sub_269D8D714);
}

void sub_269D8DCAC(uint64_t a1)
{
  if (!qword_280351C68)
  {
    sub_269D8D6D8(255);
    v1 = sub_269D98BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280351C68);
    }
  }
}

void sub_269D8DD14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_269D98D00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269D8DD94@<X0>(uint64_t a1@<X8>)
{
  v33[4] = a1;
  sub_269D8EFBC(0, &qword_280351CD8, MEMORY[0x277CE0330]);
  v33[1] = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = v33 - v4;
  sub_269D138A4(0);
  v33[2] = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D8D75C(0);
  v33[3] = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v33 - v16;
  v18 = ScheduleOccurrenceViewModel.localizedHeaderString.getter();
  v20 = v19;
  v21 = (v1 + *(type metadata accessor for ScheduleOccurrenceViewModel(0) + 40));
  v22 = *v21;
  v23 = v21[2];
  v24 = *(v21 + 25);
  v25 = ScheduleOccurrenceViewModel.localizedHeaderAccessibilityString.getter();
  LOWORD(v36) = -772;
  *(&v36 + 1) = v18;
  *&v37 = v20;
  *(&v37 + 1) = v22;
  *&v38 = v23;
  BYTE8(v38) = v24;
  *&v39 = v25;
  *(&v39 + 1) = v26;

  static Text.create(_:)(&v36, v9);
  v35[0] = v36;
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  sub_269D13CF8(v35);
  v27 = ScheduleOccurrenceViewModel.localizedHeaderString.getter();
  v29 = v28;
  v30 = ScheduleOccurrenceViewModel.localizedHeaderAccessibilityString.getter();
  LOWORD(v36) = -772;
  *(&v36 + 1) = v27;
  *&v37 = v29;
  *(&v37 + 1) = v22;
  *&v38 = v23;
  BYTE8(v38) = v24;
  *&v39 = v30;
  *(&v39 + 1) = v31;

  sub_269D13CF8(&v36);
  if ((BYTE8(v38) & 1) == 0)
  {
    sub_269D8ED4C(v9, v5, sub_269D138A4);
  }

  swift_storeEnumTagMultiPayload();
  sub_269D8F024(&qword_280350B38, sub_269D138A4, sub_269D13D7C, MEMORY[0x277CE1550]);
  sub_269D992D0();
  sub_269D8F1C0(v9, sub_269D138A4);
  sub_269D8F094(v13, v17, sub_269D8D75C);
  v34 = 3;
  static String.healthAccessibilityIdentifier(_:_:)(&v34, &unk_287AA13D8);
  sub_269C4BEAC(&unk_287AA13F8);
  sub_269D8F0FC();
  sub_269D99BB0();

  return sub_269D8F1C0(v17, sub_269D8D75C);
}

uint64_t sub_269D8E114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D8D9C8(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ScheduleOccurrenceView.ScheduleOccurrenceHorizontalView(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v23 - v19;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D8ED4C(a1, v20, type metadata accessor for ScheduleOccurrenceViewModel);
  sub_269D8ED4C(a1, v12, type metadata accessor for ScheduleOccurrenceViewModel);
  *&v12[*(v5 + 36)] = 256;
  sub_269D8ED4C(v20, v16, type metadata accessor for ScheduleOccurrenceView.ScheduleOccurrenceHorizontalView);
  sub_269D8ED4C(v12, v8, sub_269D8D9C8);
  sub_269D8ED4C(v16, a2, type metadata accessor for ScheduleOccurrenceView.ScheduleOccurrenceHorizontalView);
  sub_269D8D92C(0, &qword_280351C48, type metadata accessor for ScheduleOccurrenceView.ScheduleOccurrenceHorizontalView, sub_269D8D9C8);
  sub_269D8ED4C(v8, a2 + *(v21 + 48), sub_269D8D9C8);
  sub_269D8F1C0(v12, sub_269D8D9C8);
  sub_269D8F1C0(v20, type metadata accessor for ScheduleOccurrenceView.ScheduleOccurrenceHorizontalView);
  sub_269D8F1C0(v8, sub_269D8D9C8);
  sub_269D8F1C0(v16, type metadata accessor for ScheduleOccurrenceView.ScheduleOccurrenceHorizontalView);
}

void *sub_269D8E3C8@<X0>(_OWORD *a1@<X8>)
{
  sub_269D8E478(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, 0x1E0uLL);
  sub_269D8ED4C(__dst, v4, sub_269D8EDB4);
  sub_269D8F1C0(v7, sub_269D8EDB4);
  *a1 = xmmword_269DABD90;
  return memcpy(a1 + 1, __dst, 0x1E0uLL);
}

uint64_t sub_269D8E478@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for ScheduleOccurrenceViewModel(0) + 40) + 192) & 2) != 0 && (sub_269D39A7C())
  {
    sub_269D3C404(&v58);
  }

  else
  {
    sub_269D3C788(&v58);
  }

  *&v34[0] = 0;
  BYTE8(v34[0]) = 1;
  sub_269C51E10(0, &qword_280350A98, MEMORY[0x277D85048]);
  sub_269D99E60();
  v4 = v40;
  v5 = BYTE8(v40);
  v6 = v41;
  v73 = BYTE8(v40);
  sub_269D3C980(&v14);
  *&v34[0] = 0;
  BYTE8(v34[0]) = 1;
  sub_269D99E60();
  v7 = v40;
  v28[10] = v68;
  v28[11] = v69;
  v28[12] = v70;
  v28[6] = v64;
  v28[7] = v65;
  v28[8] = v66;
  v28[9] = v67;
  v28[2] = v60;
  v28[3] = v61;
  v28[4] = v62;
  v28[5] = v63;
  v28[0] = v58;
  v28[1] = v59;
  *&v29 = v71;
  *(&v29 + 1) = v4;
  LOBYTE(v30) = v5;
  *(&v30 + 1) = *v72;
  DWORD1(v30) = *&v72[3];
  *(&v30 + 1) = v6;
  __src[8] = v66;
  __src[9] = v67;
  __src[10] = v68;
  __src[11] = v69;
  __src[4] = v62;
  __src[5] = v63;
  __src[6] = v64;
  __src[7] = v65;
  __src[0] = v58;
  __src[1] = v59;
  __src[2] = v60;
  __src[3] = v61;
  __src[12] = v70;
  __src[13] = v29;
  v31[10] = v24;
  v31[11] = v25;
  v31[12] = v26;
  v31[6] = v20;
  v31[7] = v21;
  v31[8] = v22;
  v31[9] = v23;
  v31[2] = v16;
  v31[3] = v17;
  v31[4] = v18;
  v31[5] = v19;
  v31[0] = v14;
  v31[1] = v15;
  *&v32 = v27;
  *(&v32 + 1) = v40;
  __src[26] = v25;
  __src[27] = v26;
  __src[22] = v21;
  __src[23] = v22;
  __src[24] = v23;
  __src[25] = v24;
  __src[18] = v17;
  __src[19] = v18;
  __src[20] = v19;
  __src[21] = v20;
  __src[14] = v30;
  __src[15] = v14;
  v8 = BYTE8(v40);
  v9 = v41;
  LOBYTE(v40) = BYTE8(v40);
  LOBYTE(v33) = BYTE8(v40);
  *(&v33 + 1) = *v13;
  DWORD1(v33) = *&v13[3];
  *(&v33 + 1) = v41;
  __src[16] = v15;
  __src[17] = v16;
  __src[28] = v32;
  __src[29] = v33;
  memcpy(a3, __src, 0x1E0uLL);
  v34[10] = v24;
  v34[11] = v25;
  v34[12] = v26;
  v34[6] = v20;
  v34[7] = v21;
  v34[8] = v22;
  v34[9] = v23;
  v34[2] = v16;
  v34[3] = v17;
  v34[4] = v18;
  v34[5] = v19;
  v34[0] = v14;
  v34[1] = v15;
  v35 = v27;
  v36 = v7;
  v37 = v8;
  *v38 = *v13;
  *&v38[3] = *&v13[3];
  v39 = v9;
  sub_269D1338C(v28, &v40);
  sub_269D1338C(v31, &v40);
  sub_269D8EEA8(v34);
  v50 = v68;
  v51 = v69;
  v52 = v70;
  v46 = v64;
  v47 = v65;
  v48 = v66;
  v49 = v67;
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v40 = v58;
  v41 = v59;
  v53 = v71;
  v54 = v4;
  v55 = v5;
  *v56 = *v72;
  *&v56[3] = *&v72[3];
  v57 = v6;
  sub_269D8EEA8(&v40);
}

void *sub_269D8E8A4@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_269D991A0();
  v10 = 0;
  sub_269D8E478(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_269D8ED4C(__dst, &v7, sub_269D8EDB4);
  sub_269D8F1C0(v12, sub_269D8EDB4);
  memcpy(&v9[7], __dst, 0x1E0uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x1E7uLL);
}

void sub_269D8E980(uint64_t a1@<X8>)
{
  sub_269D8D69C(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_269D991A0();
  *(v6 + 1) = 0x4018000000000000;
  v6[16] = 0;
  sub_269D8DCAC(0);
  sub_269D8DA10(v1, &v6[*(v7 + 44)]);
  v8 = sub_269D99600();
  type metadata accessor for ScheduleOccurrenceViewModel(0);
  sub_269D98990();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_269D8F094(v6, a1, sub_269D8D69C);
  sub_269D8DD14(0, &qword_280351C70, sub_269D8D69C, MEMORY[0x277CDF928]);
  v18 = a1 + *(v17 + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
}

unint64_t sub_269D8EB14()
{
  result = qword_280351C88;
  if (!qword_280351C88)
  {
    sub_269D8DD14(255, &qword_280351C70, sub_269D8D69C, MEMORY[0x277CDF928]);
    sub_269D8F52C(&qword_280351C90, sub_269D8D69C, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351C88);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269D8ED4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269D8EDE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269D8EE4C()
{
  if (!qword_280351CC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280351CC0);
    }
  }
}

void sub_269D8EEFC(uint64_t a1)
{
  if (!qword_280351CC8)
  {
    sub_269D8D894(255);
    sub_269D8EF68(v1, v2, v3);
    v4 = sub_269D98BB0();
    if (!v5)
    {
      atomic_store(v4, &qword_280351CC8);
    }
  }
}

unint64_t sub_269D8EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351CD0;
  if (!qword_280351CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351CD0);
  }

  return result;
}

void sub_269D8EFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    sub_269D138A4(255);
    v7 = a3(a1, MEMORY[0x277CE1428], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269D8F024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269D8F094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269D8F0FC()
{
  result = qword_280351CE0;
  if (!qword_280351CE0)
  {
    sub_269D8D75C(255);
    sub_269D8F024(&qword_280350B38, sub_269D138A4, sub_269D13D7C, MEMORY[0x277CE1550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351CE0);
  }

  return result;
}

uint64_t sub_269D8F1C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269D8F25C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_269D8F52C(a4, a5, MEMORY[0x277CE14C0]);
    v8 = sub_269D99FC0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_269D8F2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351D00;
  if (!qword_280351D00)
  {
    sub_269D8F3D0(255, a2, a3);
    sub_269D8F52C(&qword_280351D28, sub_269D8F47C, MEMORY[0x277CDF510]);
    sub_269D8F52C(&qword_280351CF8, sub_269D8EDB4, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351D00);
  }

  return result;
}

void sub_269D8F3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_280351D08)
  {
    sub_269D8F47C(255, a2, a3);
    sub_269D8EDB4(255);
    sub_269D8F52C(&qword_280351D20, sub_269D8F47C, MEMORY[0x277CDF500]);
    v3 = sub_269D98BB0();
    if (!v4)
    {
      atomic_store(v3, &qword_280351D08);
    }
  }
}

void sub_269D8F47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_280351D10)
  {
    sub_269D8F4D8(0, a2, a3);
    v3 = sub_269D98A50();
    if (!v4)
    {
      atomic_store(v3, &qword_280351D10);
    }
  }
}

unint64_t sub_269D8F4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351D18;
  if (!qword_280351D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351D18);
  }

  return result;
}

uint64_t sub_269D8F52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *ScheduleOccurrenceTitleView.init(titleText:subtitleText:screenSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v11 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_title;
  v12 = *MEMORY[0x277D769A8];
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v14 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v12, 0, 0, 0, 0, 0, 0, 0, 1);
  [v13 setFont_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  [v13 setTextAlignment_];
  *&v7[v11] = v13;
  *&v7[OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_topConstraint] = 0;
  v15 = v13;
  v16 = sub_269D9A5F0();
  [v15 setText_];

  if (a4)
  {
    sub_269D9A8E0();

    sub_269D9A8D0();
    sub_269D9A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v17 = [objc_allocWithZone(type metadata accessor for ScheduleOccurrenceHeaderView()) initWithFrame_];
    v18 = sub_269D59EA0();
    v19 = sub_269D9A5F0();
    [v18 setText_];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v17 = 0;
  }

  *&v7[OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_subtitle] = v17;
  v67.receiver = v7;
  v67.super_class = type metadata accessor for ScheduleOccurrenceTitleView();
  v20 = objc_msgSendSuper2(&v67, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v21 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_title;
  v22 = *&v20[OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_title];
  v23 = v20;
  [v23 addSubview_];
  v24 = [*&v20[v21] topAnchor];
  v25 = [v23 topAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  v27 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_topConstraint;
  v28 = *&v23[OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_topConstraint];
  *&v23[OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_topConstraint] = v26;

  sub_269C4E764();
  result = swift_allocObject();
  *(result + 1) = xmmword_269DA23C0;
  v30 = *&v23[v27];
  if (v30)
  {
    v31 = result;
    v32 = objc_opt_self();
    v33 = v30;

    v31[4] = v33;
    v34 = [*&v20[v21] leadingAnchor];
    v35 = [v23 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    v31[5] = v36;
    v37 = [v23 trailingAnchor];

    v38 = [*&v20[v21] trailingAnchor];
    v39 = [v37 constraintEqualToAnchor_];

    v31[6] = v39;
    sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
    v40 = sub_269D9A7D0();

    v41 = v32;
    [v32 activateConstraints_];

    v42 = *&v20[v21];
    v43 = *&v23[OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_subtitle];
    v44 = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
    if (v43)
    {
      v45 = v43;
      v66 = v42;
      v46 = v45;
      [v23 addSubview_];
      LODWORD(v47) = 1148829696;
      [*&v20[v21] setContentHuggingPriority:1 forAxis:v47];
      LODWORD(v48) = 1148846080;
      [*&v20[v21] setContentCompressionResistancePriority:1 forAxis:v48];
      LODWORD(v49) = 1144750080;
      [v46 setContentHuggingPriority:1 forAxis:v49];
      LODWORD(v50) = 1148846080;
      [v46 setContentCompressionResistancePriority:1 forAxis:v50];
      [v46 setTranslatesAutoresizingMaskIntoConstraints_];
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_269DA23C0;
      v52 = [v46 topAnchor];
      v53 = [*&v20[v21] bottomAnchor];
      v54 = [v52 constraintEqualToAnchor:v53 constant:15.0];

      *(v51 + 32) = v54;
      v55 = [v46 leadingAnchor];

      v56 = [v23 leadingAnchor];
      v57 = [v55 constraintEqualToAnchor_];

      *(v51 + 40) = v57;
      v58 = [v23 trailingAnchor];
      v59 = [v46 trailingAnchor];

      v60 = [v58 &selRef:v59 setLargeContentImage:? + 5];
      *(v51 + 48) = v60;
      v61 = sub_269D9A7D0();
      v44 = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;

      [v41 activateConstraints_];

      v62 = 0.0;
    }

    else
    {
      v46 = v42;
      v62 = 36.0;
    }

    v63 = [v23 v44[339]];

    v64 = [v46 v44[339]];
    v65 = [v63 &selRef:v64 addSublayer:v62 + 6];

    [v65 setActive_];
    sub_269D8FDB4(a5, a6);

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269D8FDB4(double a1, double a2)
{
  v5 = sub_269D9B250();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_topConstraint];
  if (v10)
  {
    (*(v6 + 104))(v9, *MEMORY[0x277D84688], v5);
    v11 = v10;
    v12 = [v2 traitCollection];
    [v12 displayScale];
    v14 = CGFloat.rounded(_:toScale:)(v9, v13, a2 * 0.09);

    (*(v6 + 8))(v9, v5);
    [v11 setConstant_];

    v15 = *&v2[OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_title];
    sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
    v16 = MEMORY[0x277D769A8];
    if (a1 <= 320.0)
    {
      v16 = MEMORY[0x277D76A08];
    }

    v17 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*v16, (a1 <= 320.0) << 15, 0, 0, 0, 0, 0, *MEMORY[0x277D743F8], 0);
    [v15 setFont_];
  }

  else
  {
    __break(1u);
  }
}

id ScheduleOccurrenceTitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ScheduleOccurrenceTitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_269D90394()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_title;
  v3 = *MEMORY[0x277D769A8];
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v5 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v3, 0, 0, 0, 0, 0, 0, 0, 1);
  [v4 setFont_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  [v4 setTextAlignment_];
  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceTitleView_topConstraint) = 0;
  sub_269D9B100();
  __break(1u);
}

uint64_t String.init<A>(describingOptional:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v9[2] = a2;
  v9[3] = sub_269D906D4;
  v9[4] = v4;
  v5 = sub_269D9AE60();
  sub_269D9071C(sub_269D906DC, v9, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v6, v10);

  if (v10[1])
  {
    v7 = v10[0];
  }

  else
  {
    v7 = 7104878;
  }

  (*(*(v5 - 8) + 8))(a1, v5);
  return v7;
}

uint64_t sub_269D9061C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_269D9A660();
}

uint64_t sub_269D906DC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_269D9071C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v31 = a1;
  v28 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v25, v21);
  if ((*(v14 + 48))(v23, 1, v13) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v18, v23, v13);
  v31(v18, v11);
  result = (*(v14 + 8))(v18, v13);
  if (v6)
  {
    return (*(v28 + 32))(v29, v11, a3);
  }

  return result;
}

void sub_269D909C4()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6[4] = sub_269CC7C58;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_269CC7F6C;
  v6[3] = &block_descriptor_45;
  v2 = _Block_copy(v6);
  v3 = [v1 initWithDynamicProvider_];
  _Block_release(v2);

  [v0 setBackgroundColor_];

  v4 = [v0 contentView];
  [v4 setPreservesSuperviewLayoutMargins_];

  v5 = [v0 contentView];
  [v5 setLayoutMargins_];
}

id sub_269D90DAC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceDayPickerTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_269D90E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC13SleepHealthUI40ScheduleOccurrenceDayPickerTableViewCell_picker;
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v6 setFormattingContext_];
  v7 = objc_allocWithZone(type metadata accessor for SleepScheduleDayPicker());
  v8 = sub_269D750E0(v6, 0, 0);

  *&v3[v5] = v8;
  if (a2)
  {
    v9 = sub_269D9A5F0();
  }

  else
  {
    v9 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for ScheduleOccurrenceDayPickerTableViewCell();
  v10 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_, 0, v9);

  v11 = v10;
  v12 = [v11 contentView];
  [v12 addSubview_];

  sub_269D909C4();
  v13 = [v11 contentView];
  v14 = [v13 layoutMarginsGuide];

  UIView.alignConstraints(to:)(v14);
  return v11;
}

double block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269D91040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_269D91084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_269D910DC(double a1, double a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return 59;
  }

  result = Double.hoursAndMinutes.getter(a2);
  if ((v6 & 1) == 0)
  {
    v7 = 60 * result;
    if ((result * 60) >> 64 == (60 * result) >> 63)
    {
      v8 = __OFADD__(v7, v5);
      v9 = v7 + v5;
      if (!v8)
      {
        v10 = v9;
        if (v9 > -9.22337204e18)
        {
          if (v10 < 9.22337204e18)
          {
            return v10;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_269D9116C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D911AC()
{
  v0 = floor(*MEMORY[0x277D621A0] * 60.0 * 60.0 / 60.0);
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 < 9.22337204e18)
  {
    return v0;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_269D91264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280351D50;
  if (!qword_280351D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351D50);
  }

  return result;
}

uint64_t sub_269D912BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v59[-v11];
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v59[-v15];
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v59[-v19];
  v66 = type metadata accessor for Alarm(0);
  v21 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v22);
  v24 = &v59[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v30 = sub_269D98250();
    __swift_project_value_buffer(v30, qword_280351208);
    v31 = sub_269D98230();
    v32 = sub_269D9AB40();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v67 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_269C2EACC(0x6D72616C41, 0xE500000000000000, &v67);
      _os_log_impl(&dword_269C18000, v31, v32, "[%{public}s] ignoring nil alarm", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x26D652460](v34, -1, -1);
      MEMORY[0x26D652460](v33, -1, -1);
    }

    goto LABEL_25;
  }

  sub_269D5C234();
  if (![a1 isKindOfClass_])
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v35 = sub_269D98250();
    __swift_project_value_buffer(v35, qword_280351208);
    v31 = sub_269D98230();
    v36 = sub_269D9AB40();
    if (!os_log_type_enabled(v31, v36))
    {
      goto LABEL_24;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v67 = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_269C2EACC(0x6D72616C41, 0xE500000000000000, &v67);
    v39 = "[%{public}s] ignoring alarm of wrong class";
    goto LABEL_23;
  }

  if (![a1 isEnabled])
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v40 = sub_269D98250();
    __swift_project_value_buffer(v40, qword_280351208);
    v31 = sub_269D98230();
    v36 = sub_269D9AB40();
    if (!os_log_type_enabled(v31, v36))
    {
      goto LABEL_24;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v67 = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_269C2EACC(0x6D72616C41, 0xE500000000000000, &v67);
    v39 = "[%{public}s] ignoring disabled alarm";
    goto LABEL_23;
  }

  v25 = [a1 nextFireDate];
  if (!v25)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v41 = sub_269D98250();
    __swift_project_value_buffer(v41, qword_280351208);
    v31 = sub_269D98230();
    v36 = sub_269D9AB40();
    if (!os_log_type_enabled(v31, v36))
    {
      goto LABEL_24;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v67 = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_269C2EACC(0x6D72616C41, 0xE500000000000000, &v67);
    v39 = "[%{public}s] ignoring alarm with no fire date";
LABEL_23:
    _os_log_impl(&dword_269C18000, v31, v36, v39, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x26D652460](v38, -1, -1);
    MEMORY[0x26D652460](v37, -1, -1);
LABEL_24:

LABEL_25:
    v29 = 1;
LABEL_26:
    v28 = v66;
    return (*(v21 + 56))(a2, v29, 1, v28);
  }

  v65 = a2;
  v26 = v25;
  sub_269D97540();

  sub_269D974E0();
  LOBYTE(v26) = sub_269D974D0();
  v63 = *(v5 + 8);
  v64 = v5 + 8;
  v63(v16, v4);
  if ((v26 & 1) == 0)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v43 = sub_269D98250();
    __swift_project_value_buffer(v43, qword_280351208);
    v44 = *(v5 + 16);
    v44(v12, v20, v4);
    v44(v8, v20, v4);
    v45 = sub_269D98230();
    v46 = sub_269D9AB40();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v67 = v62;
      *v47 = 136446722;
      *(v47 + 4) = sub_269C2EACC(0x6D72616C41, 0xE500000000000000, &v67);
      *(v47 + 12) = 2082;
      sub_269D9233C();
      v61 = v45;
      v48 = sub_269D9B230();
      v50 = v49;
      v51 = v12;
      v60 = v46;
      v52 = v63;
      v63(v51, v4);
      v53 = sub_269C2EACC(v48, v50, &v67);

      *(v47 + 14) = v53;
      *(v47 + 22) = 2050;
      sub_269D974F0();
      v55 = v54;
      v52(v8, v4);
      *(v47 + 24) = v55;
      v56 = v61;
      _os_log_impl(&dword_269C18000, v61, v60, "[%{public}s] ignoring alarm with fire date: %{public}s (%{public}fs from now)", v47, 0x20u);
      v57 = v62;
      swift_arrayDestroy();
      MEMORY[0x26D652460](v57, -1, -1);
      MEMORY[0x26D652460](v47, -1, -1);

      v52(v20, v4);
    }

    else
    {

      v58 = v63;
      v63(v8, v4);
      v58(v12, v4);
      v58(v20, v4);
    }

    v29 = 1;
    a2 = v65;
    goto LABEL_26;
  }

  (*(v5 + 32))(v24, v20, v4);
  a2 = v65;
  v27 = v66;
  *&v24[*(v66 + 20)] = a1;
  sub_269C80C90(v24, a2);
  v28 = v27;
  v29 = 0;
  return (*(v21 + 56))(a2, v29, 1, v28);
}

uint64_t Alarm.fireDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D97580();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for Alarm(uint64_t a1)
{
  result = qword_280351D58;
  if (!qword_280351D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Alarm.isActive.getter()
{
  v1 = *(v0 + *(type metadata accessor for Alarm(0) + 20));
  if ([v1 isFiring])
  {
    return 1;
  }

  else
  {
    return [v1 isSnoozed];
  }
}

void static Alarm.statusText(for:includeTime:allowSnoozeCountdown:isShortFormat:)(uint64_t a1, char a2, char a3, char a4)
{
  sub_269D921B4(0, &qword_28034EA50, type metadata accessor for Alarm, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Alarm(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C5A9AC(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_269C5AA40(v10);
    return;
  }

  sub_269C80C90(v10, v15);
  v16 = *&v15[*(v11 + 20)];
  if ([v16 isSnoozed] && (a3 & 1) != 0)
  {
    if (qword_28034D7F8 != -1)
    {
      swift_once();
    }

    v17 = qword_28035E860;
    sub_269D974F0();
    v18 = [v17 stringFromTimeInterval_];
    if (v18)
    {
      v19 = v18;
      sub_269D9A630();

      sub_269D5C364(v15);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (a2)
  {
    [v16 isSnoozed];
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v20 = qword_280C0D990;
    sub_269D972C0();

    sub_269D921B4(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_269D9EBE0;
    v22 = [objc_opt_self() sharedInstance];
    if (v22)
    {
      v23 = v22;
      v24 = sub_269D974B0();
      v25 = [v23 formatDateAsTimeStyle_];

      if (v25)
      {
        v26 = sub_269D9A630();
        v28 = v27;

        *(v21 + 56) = MEMORY[0x277D837D0];
        *(v21 + 64) = sub_269C7172C(v29, v30, v31);
        *(v21 + 32) = v26;
        *(v21 + 40) = v28;
        sub_269D9A640();

        sub_269D5C364(v15);
        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v32 = qword_280C0D990;
  sub_269D972C0();

  sub_269D5C364(v15);
}

void sub_269D921B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_269D92218()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setIncludesTimeRemainingPhrase_];
  qword_28035E860 = v0;
  return result;
}

unint64_t sub_269D922B8(uint64_t a1)
{
  result = sub_269D97580();
  if (v2 <= 0x3F)
  {
    result = sub_269D5C234();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_269D9233C()
{
  result = qword_280C0B3E8;
  if (!qword_280C0B3E8)
  {
    sub_269D97580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B3E8);
  }

  return result;
}

id HKSHLocalizedTimeForComponents(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v35 = a5;
  v9 = a4;
  v10 = [a2 nextDateAfterDate:a3 matchingComponents:a1 options:512];
  v11 = HKLocalizedStringForDateAndTemplate();
  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v12 setLocalizedDateFormatFromTemplate:@"a"];
  v36 = [v12 stringFromDate:v10];
  v13 = [v11 rangeOfString:?];
  v34 = v14;
  v15 = [MEMORY[0x277D75348] hk_chartLollipopValueColor];
  v16 = *MEMORY[0x277D740A8];
  v17 = *MEMORY[0x277D740C0];
  v39[0] = *MEMORY[0x277D740A8];
  v39[1] = v17;
  v40[0] = v9;
  v40[1] = v15;
  v18 = MEMORY[0x277CBEAC0];
  v19 = v15;
  v20 = v9;
  v21 = v11;
  v22 = [v18 dictionaryWithObjects:v40 forKeys:v39 count:2];
  v23 = objc_alloc(MEMORY[0x277CCA898]);

  v24 = [v23 initWithString:v21 attributes:v22];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v35;
    v26 = v24;
  }

  else
  {
    v33 = v10;
    v26 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v24];
    v27 = v13;
    v25 = v35;
    v37[1] = v17;
    v38[0] = v35;
    v37[0] = v16;
    v28 = [MEMORY[0x277D75348] hk_chartLollipopLabelColor];
    v38[1] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

    [v26 setAttributes:v29 range:{v27, v34}];
    v30 = [v21 rangeOfString:@" "];
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v26 setAttributes:v29 range:{v30, v31}];
    }

    v10 = v33;
  }

  return v26;
}

id HKSHUICurrentDevice()
{
  if (qword_28035E440 != -1)
  {
    dispatch_once(&qword_28035E440, &__block_literal_global_0);
  }

  v1 = _MergedGlobals_1;

  return v1;
}

uint64_t __HKSHUICurrentDevice_block_invoke()
{
  _MergedGlobals_1 = [MEMORY[0x277CBBAE8] currentDevice];

  return MEMORY[0x2821F96F8]();
}

uint64_t HKSHUIBundle()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

id HKSHUILocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_287AAA530 table:0];

  return v4;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}