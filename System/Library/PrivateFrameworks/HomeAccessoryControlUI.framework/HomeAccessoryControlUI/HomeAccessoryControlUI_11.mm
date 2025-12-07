uint64_t AccessoryControl.IncrementalConfig.init(icon:iconColor:foregroundColor:fullScreenSliderFillColor:fullScreenIconColor:sliderAlignment:minValue:maxValue:stepValue:writeInterval:statusProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v22 = *a7;
  v23 = *(a7 + 8);
  sub_252376EF0(a1, a9);
  v24 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  *(a9 + v24[5]) = a2;
  *(a9 + v24[6]) = a3;
  *(a9 + v24[12]) = a4;
  *(a9 + v24[13]) = a5;
  v25 = v24[7];
  v26 = sub_25268EEA0();
  (*(*(v26 - 8) + 32))(a9 + v25, a6, v26);
  *(a9 + v24[8]) = a10;
  *(a9 + v24[9]) = a11;
  *(a9 + v24[10]) = a12;
  v27 = a9 + v24[11];
  *v27 = v22;
  *(v27 + 8) = v23;
  return sub_252445700(a8, a9 + v24[14], type metadata accessor for AccessoryControl.StatusProvider);
}

uint64_t AccessoryControl.ColorPickerConfig.init(supportsAdaptiveLight:supportsColorTemperature:supportsFullColor:minimumTemperature:maximumTemperature:favoriteColors:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 4) = a4;
  *(a7 + 6) = BYTE2(a4) & 1;
  *(a7 + 8) = a5;
  *(a7 + 10) = BYTE2(a5) & 1;
  *(a7 + 16) = a6;
  return result;
}

uint64_t AccessoryControl.DecorationControlConfig.init(alignment:style:mode:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_25268F0E0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t AccessoryControl.SimpleAreaPickerConfig.init(maps:supportsMaps:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a2;
  *(a3 + 8) = result;
  return result;
}

uint64_t AccessoryControl.SimpleAreaPickerConfig.Map.init(id:title:areas:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.init(position:type:options:title:sectionTitle:sectionFooter:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *(a3 + 8);
  *a9 = result;
  *(a9 + 8) = v10;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 16) = v11;
  *(a9 + 24) = v12;
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.SelectionViewConfig.init(title:sections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 AccessoryControl.StatusButtonViewConfig.init(selectionViewConfig:allowedModifications:allowsUserInteraction:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>)
{
  v4 = *a1;
  a4->n128_u8[0] = a3;
  a4->n128_u64[1] = v4;
  result = *(a1 + 8);
  a4[1] = result;
  a4[2].n128_u64[0] = a2;
  return result;
}

__n128 AccessoryControl.PickerButtonViewConfig.init(options:selectionViewConfig:allowsUserInteraction:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = a1;
  *(a4 + 8) = a3;
  *(a4 + 16) = v4;
  result = *(a2 + 1);
  *(a4 + 24) = result;
  return result;
}

uint64_t AccessoryControl.SimpleAreaPickerConfig.Area.init(id:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static AccessoryControl.SimpleAreaPickerConfig.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_2523E59C4(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t static AccessoryControl.MediaPlayerConfig.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_2526933B0();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t AccessoryControl.BinaryViewConfig.foregroundColor.getter()
{
  type metadata accessor for AccessoryControl.BinaryViewConfig(0);
}

uint64_t AccessoryControl.BinaryViewConfig.foregroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

void AccessoryControl.BinaryViewConfig.title.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;

  sub_252450A1C(v4, v5, v6, v7, v8);
}

__n128 AccessoryControl.BinaryViewConfig.title.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 28);
  sub_252376DA8(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

void AccessoryControl.BinaryViewConfig.subtitle.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;

  sub_252450A1C(v4, v5, v6, v7, v8);
}

__n128 AccessoryControl.BinaryViewConfig.subtitle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 32);
  sub_252376DA8(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t AccessoryControl.BinaryViewConfig.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t AccessoryControl.BinaryViewConfig.action.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t AccessoryControl.BinaryViewConfig.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 40));

  return v1;
}

void AccessoryControl.BinaryViewConfig.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t AccessoryControl.BinaryViewConfig.offForegroundColor.getter()
{
  type metadata accessor for AccessoryControl.BinaryViewConfig(0);
}

uint64_t AccessoryControl.BinaryViewConfig.offForegroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessoryControl.BinaryViewConfig.hash(into:)(uint64_t a1)
{
  sub_252692C80();
  type metadata accessor for IconDescriptor(0);
  sub_25268F910();
  sub_252450B6C(&qword_27F4DB560, MEMORY[0x277D165A0], MEMORY[0x277D165A8]);
  sub_252692B30();
  sub_252693480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  sub_252692C80();
  sub_252692B30();
  sub_252693480();
  v3 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  sub_2526922E0();
  ControlTextModifier.Config.hash(into:)(a1);
  v4 = v1 + v3[7];
  v5 = *(v4 + 32);
  if (v5 == 255)
  {
    sub_252693480();
  }

  else
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    sub_252693480();
    if (v5)
    {
      if (v5 == 1)
      {
        MEMORY[0x2530A4FE0](1);
        sub_252450A30(v7, v6, v9, v8, 1);
        sub_252692C80();
        sub_252692C80();
        v10 = v7;
        v11 = v6;
        v12 = v9;
        v13 = v8;
        v14 = 1;
      }

      else
      {
        MEMORY[0x2530A4FE0](2);
        sub_252450A30(v7, v6, v9, v8, 2);
        sub_252692C80();
        v10 = v7;
        v11 = v6;
        v12 = v9;
        v13 = v8;
        v14 = 2;
      }
    }

    else
    {
      MEMORY[0x2530A4FE0](0);
      sub_252450A30(v7, v6, v9, v8, 0);
      sub_252692C80();
      v10 = v7;
      v11 = v6;
      v12 = v9;
      v13 = v8;
      v14 = 0;
    }

    sub_252376DA8(v10, v11, v12, v13, v14);
  }

  v15 = v1 + v3[8];
  v16 = *(v15 + 32);
  if (v16 == 255)
  {
    sub_252693480();
  }

  else
  {
    v18 = *v15;
    v17 = *(v15 + 8);
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    sub_252693480();
    if (v16)
    {
      if (v16 == 1)
      {
        MEMORY[0x2530A4FE0](1);
        sub_252450A30(v18, v17, v20, v19, 1);
        sub_252692C80();
        sub_252692C80();
        v21 = v18;
        v22 = v17;
        v23 = v20;
        v24 = v19;
        v25 = 1;
      }

      else
      {
        MEMORY[0x2530A4FE0](2);
        sub_252450A30(v18, v17, v20, v19, 2);
        sub_252692C80();
        v21 = v18;
        v22 = v17;
        v23 = v20;
        v24 = v19;
        v25 = 2;
      }
    }

    else
    {
      MEMORY[0x2530A4FE0](0);
      sub_252450A30(v18, v17, v20, v19, 0);
      sub_252692C80();
      v21 = v18;
      v22 = v17;
      v23 = v20;
      v24 = v19;
      v25 = 0;
    }

    sub_252376DA8(v21, v22, v23, v24, v25);
  }

  MEMORY[0x2530A4FE0](*(v1 + v3[9]));
  sub_252692C80();
  AccessoryControl.StatusProvider.hash(into:)(a1);
  if (!*(v1 + v3[12]))
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_2526922E0();
}

uint64_t AccessoryControl.IncrementalConfig.iconColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25268EEA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252692330();
  type metadata accessor for AccessoryControl.IncrementalConfig(0);
  (*(v3 + 104))(v5, *MEMORY[0x277D15CE8], v2);
  v7 = sub_25268EE80();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
  }

  else
  {
    result = sub_252692330();
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t AccessoryControl.IncrementalConfig.foregroundColor.getter()
{
  type metadata accessor for AccessoryControl.IncrementalConfig(0);
}

uint64_t AccessoryControl.IncrementalConfig.foregroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryControl.IncrementalConfig(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessoryControl.IncrementalConfig.sliderAlignment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryControl.IncrementalConfig(0) + 28);
  v4 = sub_25268EEA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccessoryControl.IncrementalConfig.sliderAlignment.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryControl.IncrementalConfig(0) + 28);
  v4 = sub_25268EEA0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccessoryControl.IncrementalConfig.minValue.setter(double a1)
{
  result = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t AccessoryControl.IncrementalConfig.maxValue.setter(double a1)
{
  result = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AccessoryControl.IncrementalConfig.stepValue.setter(double a1)
{
  result = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AccessoryControl.IncrementalConfig.writeInterval.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t AccessoryControl.IncrementalConfig.writeInterval.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v5 = v1 + *(result + 44);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t AccessoryControl.IncrementalConfig.fullScreenSliderFillColor.getter()
{
  type metadata accessor for AccessoryControl.IncrementalConfig(0);
}

uint64_t AccessoryControl.IncrementalConfig.fullScreenSliderFillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryControl.IncrementalConfig(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessoryControl.IncrementalConfig.fullScreenIconColor.getter()
{
  type metadata accessor for AccessoryControl.IncrementalConfig(0);
}

uint64_t AccessoryControl.IncrementalConfig.fullScreenIconColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryControl.IncrementalConfig(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessoryControl.IncrementalConfig.hash(into:)(uint64_t a1)
{
  sub_252692C80();
  type metadata accessor for IconDescriptor(0);
  sub_25268F910();
  sub_252450B6C(&qword_27F4DB560, MEMORY[0x277D165A0], MEMORY[0x277D165A8]);
  sub_252692B30();
  sub_252693480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  sub_252692C80();
  sub_252692B30();
  sub_252693480();
  v3 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  sub_2526922E0();
  sub_2526922E0();
  sub_25268EEA0();
  sub_252450B6C(&qword_27F4DCD18, MEMORY[0x277D15CF8], MEMORY[0x277D15D00]);
  sub_252692B30();
  v4 = *(v1 + v3[8]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2530A5020](*&v4);
  v5 = *(v1 + v3[9]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x2530A5020](*&v5);
  v6 = *(v1 + v3[10]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x2530A5020](*&v6);
  v7 = (v1 + v3[11]);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x2530A4FE0](v9);
  }

  else
  {
    MEMORY[0x2530A4FE0](1);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x2530A5020](v10);
  }

  sub_2526922E0();
  sub_2526922E0();
  return AccessoryControl.StatusProvider.hash(into:)(a1);
}

uint64_t AccessoryControl.DecorationControlConfig.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AccessoryControl.DecorationControlConfig.mode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t static AccessoryControl.DecorationControlConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25268EE80() & 1) != 0 && (v4 = type metadata accessor for AccessoryControl.DecorationControlConfig(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t AccessoryControl.DecorationControlConfig.hash(into:)(uint64_t a1)
{
  sub_25268F0E0();
  sub_252450B6C(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  v2 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x2530A4FE0](*(v1 + *(v2 + 20)));
  return MEMORY[0x2530A4FE0](*(v1 + *(v2 + 24)));
}

uint64_t AccessoryControl.DecorationControlConfig.hashValue.getter()
{
  sub_252693460();
  sub_25268F0E0();
  sub_252450B6C(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  v1 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x2530A4FE0](*(v0 + *(v1 + 20)));
  MEMORY[0x2530A4FE0](*(v0 + *(v1 + 24)));
  return sub_2526934C0();
}

uint64_t sub_25244765C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_25268EE80() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2524476C8(uint64_t a1)
{
  sub_252693460();
  sub_25268F0E0();
  sub_252450B6C(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 20)));
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 24)));
  return sub_2526934C0();
}

uint64_t sub_252447780(uint64_t a1, uint64_t a2)
{
  sub_25268F0E0();
  sub_252450B6C(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
  return MEMORY[0x2530A4FE0](*(v2 + *(a2 + 24)));
}

uint64_t sub_252447824(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  sub_25268F0E0();
  sub_252450B6C(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 24)));
  return sub_2526934C0();
}

uint64_t static AccessoryControl.MultiSectionPickerViewConfig.Section.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  return sub_2523E5FCC(v2, v3);
}

uint64_t AccessoryControl.MultiSectionPickerViewConfig.Section.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  MEMORY[0x2530A4FE0](*v1);
  sub_252692C80();

  return sub_2523DB424(a1, v3);
}

uint64_t AccessoryControl.MultiSectionPickerViewConfig.Section.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  sub_252692C80();
  sub_2523DB424(v4, v2);
  return sub_2526934C0();
}

uint64_t sub_252447BFC()
{
  v1 = *v0;
  v2 = v0[3];
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  sub_252692C80();
  sub_2523DB424(v4, v2);
  return sub_2526934C0();
}

uint64_t sub_252447C74(uint64_t a1)
{
  v3 = v1[3];
  MEMORY[0x2530A4FE0](*v1);
  sub_252692C80();

  return sub_2523DB424(a1, v3);
}

uint64_t sub_252447CDC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_252693460();
  MEMORY[0x2530A4FE0](v2);
  sub_252692C80();
  sub_2523DB424(v5, v3);
  return sub_2526934C0();
}

uint64_t sub_252447D50(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  return sub_2523E5FCC(v2, v3);
}

uint64_t AccessoryControl.MultiSectionPickerViewConfig.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_2523DB2E4(a1, *v1);
  sub_252693480();
  v10 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0);
  sub_25237153C(v1 + *(v10 + 24), v9, &qword_27F4DADB8, &qword_2526A6E60);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return sub_252693480();
  }

  sub_252376EF0(v9, v6);
  sub_252693480();
  sub_252692C80();
  type metadata accessor for IconDescriptor(0);
  sub_25268F910();
  sub_252450B6C(&qword_27F4DB560, MEMORY[0x277D165A0], MEMORY[0x277D165A8]);
  sub_252692B30();
  sub_252693480();
  sub_252692C80();
  sub_252692B30();
  sub_252693480();
  return sub_252372288(v6, &qword_27F4DAD88, &unk_2526956E0);
}

uint64_t AccessoryControl.PickerViewConfig.allowVariableWidth.setter(char a1)
{
  result = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t AccessoryControl.PickerViewConfig.pickerBackgroundColor.getter()
{
  type metadata accessor for AccessoryControl.PickerViewConfig(0);
}

uint64_t AccessoryControl.PickerViewConfig.pickerBackgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryControl.PickerViewConfig(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessoryControl.PickerViewConfig.textColor.getter()
{
  type metadata accessor for AccessoryControl.PickerViewConfig(0);
}

uint64_t AccessoryControl.PickerViewConfig.textColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryControl.PickerViewConfig(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessoryControl.PickerViewConfig.offStateOptionID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AccessoryControl.PickerViewConfig.Option.text.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void AccessoryControl.PickerViewConfig.Option.text.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t AccessoryControl.PickerViewConfig.Option.color.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t AccessoryControl.PickerViewConfig.Option.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  sub_252693210();

  v3 = sub_252693370();
  MEMORY[0x2530A4800](v3);

  MEMORY[0x2530A4800](0x3A656C746974202CLL, 0xE900000000000020);
  MEMORY[0x2530A4800](v1, v2);
  MEMORY[0x2530A4800](0x3A726F6C6F63202CLL, 0xE900000000000020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCD20, &qword_25269AA00);
  v4 = sub_252692C20();
  MEMORY[0x2530A4800](v4);

  return 0x286E6F6974706FLL;
}

uint64_t AccessoryControl.PickerViewConfig.Option.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  MEMORY[0x2530A4FE0](*v1);
  sub_252692C80();
  if (!v2)
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_2526922E0();
}

uint64_t AccessoryControl.PickerViewConfig.Option.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  sub_252692C80();
  sub_252693480();
  if (v2)
  {
    sub_2526922E0();
  }

  return sub_2526934C0();
}

uint64_t sub_252448844()
{
  v1 = *v0;
  v2 = v0[3];
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  sub_252692C80();
  sub_252693480();
  if (v2)
  {
    sub_2526922E0();
  }

  return sub_2526934C0();
}

uint64_t sub_2524488D8(uint64_t a1)
{
  v2 = v1[3];
  MEMORY[0x2530A4FE0](*v1);
  sub_252692C80();
  if (!v2)
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_2526922E0();
}

uint64_t sub_252448970(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_252693460();
  MEMORY[0x2530A4FE0](v2);
  sub_252692C80();
  sub_252693480();
  if (v3)
  {
    sub_2526922E0();
  }

  return sub_2526934C0();
}

uint64_t AccessoryControl.PickerViewConfig.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  sub_2523DB424(a1, *v1);
  sub_252693480();
  v10 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  sub_25237153C(v1 + *(v10 + 24), v9, &qword_27F4DADB8, &qword_2526A6E60);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_252376EF0(v9, v6);
    sub_252693480();
    sub_252692C80();
    type metadata accessor for IconDescriptor(0);
    sub_25268F910();
    sub_252450B6C(&qword_27F4DB560, MEMORY[0x277D165A0], MEMORY[0x277D165A8]);
    sub_252692B30();
    sub_252693480();
    sub_252692C80();
    sub_252692B30();
    sub_252693480();
    sub_252372288(v6, &qword_27F4DAD88, &unk_2526956E0);
  }

  sub_252693480();
  sub_2526922E0();
  sub_2526922E0();
  AccessoryControl.StatusProvider.hash(into:)(a1);
  v11 = v1 + *(v10 + 44);
  if (v11[8] == 1)
  {
    return sub_252693480();
  }

  v13 = *v11;
  sub_252693480();
  return MEMORY[0x2530A4FE0](v13);
}

void AccessoryControl.ThermostatConfig.writeInterval.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t AccessoryControl.ThermostatConfig.writeInterval.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t AccessoryControl.ThermostatConfig.currentRelativeHumidity.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t AccessoryControl.ThermostatConfig.currentTemperature.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t AccessoryControl.ThermostatConfig.minTemperatureDistance.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t AccessoryControl.ThermostatConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *(v2 + 64);
  v13 = *(v2 + 72);
  v14 = *(v2 + 73);
  v15 = *(v2 + 80);
  v24 = *(v2 + 88);
  v25 = *(v2 + 96);
  v26 = *(v2 + 97);
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2530A5020](*&v4);
  if (v5 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v5;
  }

  MEMORY[0x2530A5020](*&v16);
  if (v6 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v6;
  }

  MEMORY[0x2530A5020](*&v17);
  MEMORY[0x2530A4FE0](v7);
  if (v9 == 1)
  {
    if (v8)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x2530A4FE0](v18);
    if (v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
    MEMORY[0x2530A4FE0](1);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v8;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x2530A5020](v19);
    if (v11)
    {
LABEL_29:
      sub_252693480();
      if (v13)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }
  }

  sub_252693480();
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = v10;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x2530A5020](v20);
  if (v13)
  {
LABEL_30:
    sub_252693480();
    if (v14 == 3)
    {
      goto LABEL_31;
    }

LABEL_24:
    sub_252693480();
    MEMORY[0x2530A4FE0](v14);
    if (!v15)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

LABEL_20:
  sub_252693480();
  if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  MEMORY[0x2530A5020](v21);
  if (v14 != 3)
  {
    goto LABEL_24;
  }

LABEL_31:
  sub_252693480();
  if (!v15)
  {
LABEL_32:
    sub_252693480();
    if (!v25)
    {
      goto LABEL_33;
    }

LABEL_26:
    sub_252693480();
    return MEMORY[0x2530A4FE0](v26);
  }

LABEL_25:
  sub_252693480();
  sub_2523DB4DC(a1, v15);
  if (v25)
  {
    goto LABEL_26;
  }

LABEL_33:
  sub_252693480();
  if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v22 = v24;
  }

  else
  {
    v22 = 0;
  }

  MEMORY[0x2530A5020](v22);
  return MEMORY[0x2530A4FE0](v26);
}

uint64_t AccessoryControl.ThermostatConfig.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.ThermostatConfig.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_2524491F4()
{
  sub_252693460();
  AccessoryControl.ThermostatConfig.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_252449238(uint64_t a1)
{
  sub_252693460();
  AccessoryControl.ThermostatConfig.hash(into:)(v2);
  return sub_2526934C0();
}

uint64_t AccessoryControl.MediaPlayerConfig.mediaRouteIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccessoryControl.MediaPlayerConfig.init(mediaRouteIdentifier:useCompactLayout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t AccessoryControl.MediaPlayerConfig.hashValue.getter()
{
  sub_252693460();
  sub_252692C80();
  sub_252693480();
  return sub_2526934C0();
}

uint64_t sub_252449354(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_2526933B0();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_2524493B4()
{
  sub_252693460();
  sub_252692C80();
  sub_252693480();
  return sub_2526934C0();
}

uint64_t sub_252449450(uint64_t a1)
{
  sub_252693460();
  sub_252692C80();
  sub_252693480();
  return sub_2526934C0();
}

uint64_t AccessoryControl.ColorPickerConfig.minimumTemperature.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 6) = BYTE2(result) & 1;
  return result;
}

uint64_t AccessoryControl.ColorPickerConfig.maximumTemperature.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 10) = BYTE2(result) & 1;
  return result;
}

uint64_t AccessoryControl.ColorPickerConfig.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_252693210();
  MEMORY[0x2530A4800](0xD000000000000015, 0x80000002526AF1C0);
  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2530A4800](v4, v5);

  MEMORY[0x2530A4800](978600736, 0xE400000000000000);
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2530A4800](v6, v7);

  MEMORY[0x2530A4800](0x6C6F436C6C756620, 0xEB000000003A726FLL);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530A4800](v8, v9);

  MEMORY[0x2530A4800](0x706D65546E696D20, 0xE90000000000003ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCD28, &qword_25269AA08);
  v10 = sub_252692C00();
  MEMORY[0x2530A4800](v10);

  MEMORY[0x2530A4800](0x706D655478616D20, 0xE90000000000003ALL);
  v11 = sub_252692C00();
  MEMORY[0x2530A4800](v11);

  return 0;
}

uint64_t AccessoryControl.ColorPickerConfig.hash(into:)(uint64_t a1)
{
  v2 = sub_25268F860();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 6);
  v14[1] = *(v1 + 8);
  v6 = *(v1 + 10);
  v7 = *(v1 + 16);
  sub_252693480();
  sub_252693480();
  sub_252693480();
  if (v5 == 1)
  {
    sub_252693480();
    if (!v6)
    {
LABEL_3:
      sub_252693480();
      sub_252693490();
      goto LABEL_6;
    }
  }

  else
  {
    sub_252693480();
    sub_252693490();
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  sub_252693480();
LABEL_6:
  result = MEMORY[0x2530A4FE0](*(v7 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = *(v15 + 16);
    v11 = v7 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v12 = *(v15 + 72);
    v13 = (v15 + 8);
    do
    {
      v10(v4, v11, v2);
      sub_252450B6C(&qword_27F4DCD30, MEMORY[0x277D164C0], MEMORY[0x277D164C8]);
      sub_252692B30();
      result = (*v13)(v4, v2);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t AccessoryControl.ColorPickerConfig.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.ColorPickerConfig.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_252449A74()
{
  sub_252693460();
  AccessoryControl.ColorPickerConfig.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_252449AB8(uint64_t a1)
{
  sub_252693460();
  AccessoryControl.ColorPickerConfig.hash(into:)(v2);
  return sub_2526934C0();
}

uint64_t sub_252449B10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t AccessoryControl.AlarmAndTimerConfig.hash(into:)(uint64_t a1)
{
  sub_25268DA10();
  sub_252450B6C(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_252692B30();
}

uint64_t AccessoryControl.AlarmAndTimerConfig.hashValue.getter()
{
  sub_252693460();
  sub_25268DA10();
  sub_252450B6C(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252692B30();
  return sub_2526934C0();
}

uint64_t sub_252449C90()
{
  sub_252693460();
  sub_25268DA10();
  sub_252450B6C(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252692B30();
  return sub_2526934C0();
}

uint64_t sub_252449D18(uint64_t a1)
{
  sub_25268DA10();
  sub_252450B6C(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_252692B30();
}

uint64_t sub_252449D9C(uint64_t a1)
{
  sub_252693460();
  sub_25268DA10();
  sub_252450B6C(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252692B30();
  return sub_2526934C0();
}

uint64_t AccessoryControl.PickerButtonViewConfig.selectionViewConfig.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 AccessoryControl.PickerButtonViewConfig.selectionViewConfig.setter(uint64_t *a1)
{
  v3 = *a1;

  *(v1 + 16) = v3;
  result = *(a1 + 1);
  *(v1 + 24) = result;
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.Identifier.init(value:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290, &unk_25269AA10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_25268DA10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252371478(a1, v24);
  if (swift_dynamicCast())
  {
    v15 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *v14 = v15;
  }

  else
  {
    sub_252371478(a1, v24);
    if (swift_dynamicCast())
    {
      v16 = v23;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *v14 = v16;
    }

    else
    {
      sub_25235E20C(a1, v24);
      v17 = swift_dynamicCast();
      v18 = *(v8 + 56);
      if ((v17 & 1) == 0)
      {
        v18(v6, 1, 1, v7);
        sub_252372288(v6, &qword_27F4DB290, &unk_25269AA10);
        v20 = 1;
        return (*(v12 + 56))(a2, v20, 1, v11);
      }

      v18(v6, 0, 1, v7);
      v19 = *(v8 + 32);
      v19(v10, v6, v7);
      v19(v14, v10, v7);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_252445700(v14, a2, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v20 = 0;
  return (*(v12 + 56))(a2, v20, 1, v11);
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)(uint64_t a1)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_252450A9C(v1, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x2530A4FE0](1);
      return sub_2526934A0();
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x2530A4FE0](2);
      sub_252450B6C(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252692B30();
      return (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    v11 = *v8;
    MEMORY[0x2530A4FE0](0);
    return MEMORY[0x2530A4FE0](v11);
  }
}

void AccessoryControl.PickerButtonViewConfig.Option.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.iconStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.iconStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.init(id:text:iconStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_252445700(a1, a5, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v10 = (a5 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  *(a5 + *(result + 24)) = v8;
  return result;
}

BOOL static AccessoryControl.PickerButtonViewConfig.Option.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV6OptionV10IdentifierO2eeoiySbAI_AItFZ_0(a1, a2) & 1) != 0 && ((v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0), v5 = *(v4 + 20), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (sub_2526933B0()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.hash(into:)(uint64_t a1)
{
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)(a1);
  v2 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  sub_252692C80();
  return MEMORY[0x2530A4FE0](*(v1 + *(v2 + 24)));
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)(v3);
  v1 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  sub_252692C80();
  MEMORY[0x2530A4FE0](*(v0 + *(v1 + 24)));
  return sub_2526934C0();
}

BOOL sub_25244A850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV6OptionV10IdentifierO2eeoiySbAI_AItFZ_0(a1, a2) & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_2526933B0()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25244A8D0(uint64_t a1)
{
  sub_252693460();
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)(v4);
  sub_252692C80();
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 24)));
  return sub_2526934C0();
}

uint64_t sub_25244A938(uint64_t a1, uint64_t a2)
{
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)(a1);
  sub_252692C80();
  return MEMORY[0x2530A4FE0](*(v2 + *(a2 + 24)));
}

uint64_t sub_25244A98C(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)(v5);
  sub_252692C80();
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 24)));
  return sub_2526934C0();
}

uint64_t static AccessoryControl.PickerButtonViewConfig.SelectionViewConfig.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  return sub_2523E6930(v2, v3);
}

uint64_t AccessoryControl.PickerButtonViewConfig.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  sub_2523D8FD0(a1, *v1);
  sub_252693480();
  sub_252692C80();

  return sub_2523D8AB4(a1, v3);
}

uint64_t AccessoryControl.PickerButtonViewConfig.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[4];
  sub_252693460();
  sub_2523D8FD0(v4, v1);
  sub_252693480();
  sub_252692C80();
  sub_2523D8AB4(v4, v2);
  return sub_2526934C0();
}

uint64_t sub_25244AB6C()
{
  v1 = *v0;
  v2 = v0[4];
  sub_252693460();
  sub_2523D8FD0(v4, v1);
  sub_252693480();
  sub_252692C80();
  sub_2523D8AB4(v4, v2);
  return sub_2526934C0();
}

uint64_t sub_25244ABF8(uint64_t a1)
{
  v3 = v1[4];
  sub_2523D8FD0(a1, *v1);
  sub_252693480();
  sub_252692C80();

  return sub_2523D8AB4(a1, v3);
}

uint64_t sub_25244AC70(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[4];
  sub_252693460();
  sub_2523D8FD0(v5, v2);
  sub_252693480();
  sub_252692C80();
  sub_2523D8AB4(v5, v3);
  return sub_2526934C0();
}

uint64_t AccessoryControl.StatusButtonViewConfig.selectionViewConfig.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 AccessoryControl.StatusButtonViewConfig.selectionViewConfig.setter(uint64_t a1)
{
  v3 = *a1;

  v1->n128_u64[1] = v3;
  result = *(a1 + 8);
  v1[1] = result;
  return result;
}

uint64_t AccessoryControl.StatusButtonViewConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  sub_252693480();
  sub_252692C80();
  sub_2523D8AB4(a1, v4);
  result = MEMORY[0x2530A4FE0](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 32);
    do
    {
      v9 = *v8++;
      result = MEMORY[0x2530A4FE0](v9);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t AccessoryControl.StatusButtonViewConfig.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[72] = *v0;
  v5 = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  sub_252693460();
  AccessoryControl.StatusButtonViewConfig.hash(into:)(v4);
  return sub_2526934C0();
}

uint64_t sub_25244AF14()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[72] = *v0;
  v5 = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  sub_252693460();
  AccessoryControl.StatusButtonViewConfig.hash(into:)(v4);
  return sub_2526934C0();
}

uint64_t sub_25244AF7C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[72] = *v1;
  v6 = v2;
  v7 = *(v1 + 16);
  v8 = v3;
  sub_252693460();
  AccessoryControl.StatusButtonViewConfig.hash(into:)(v5);
  return sub_2526934C0();
}

uint64_t AccessoryControl.SimpleAreaPickerConfig.Area.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void AccessoryControl.SimpleAreaPickerConfig.Area.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t static AccessoryControl.SimpleAreaPickerConfig.Area.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_2526933B0();
  }
}

uint64_t AccessoryControl.SimpleAreaPickerConfig.Area.hash(into:)(uint64_t a1)
{
  sub_2526934A0();

  return sub_252692C80();
}

uint64_t AccessoryControl.SimpleAreaPickerConfig.Area.hashValue.getter()
{
  sub_252693460();
  sub_2526934A0();
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t sub_25244B194(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_2526933B0();
  }
}

uint64_t sub_25244B1DC()
{
  sub_252693460();
  sub_2526934A0();
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t sub_25244B240(uint64_t a1)
{
  sub_2526934A0();

  return sub_252692C80();
}

uint64_t sub_25244B294(uint64_t a1)
{
  sub_252693460();
  sub_2526934A0();
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t static AccessoryControl.SimpleAreaPickerConfig.Map.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  return sub_2523E5CF0(v2, v3);
}

void AccessoryControl.SimpleAreaPickerConfig.Map.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_2526934A0();
  sub_252692C80();
  v3 = *(v2 + 16);
  MEMORY[0x2530A4FE0](v3);
  if (v3)
  {
    v4 = v2 + 48;
    do
    {
      sub_2526934A0();

      sub_252692C80();

      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

uint64_t AccessoryControl.SimpleAreaPickerConfig.Map.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_252693460();
  sub_2526934A0();
  sub_252692C80();
  v2 = *(v1 + 16);
  MEMORY[0x2530A4FE0](v2);
  if (v2)
  {
    v3 = v1 + 48;
    do
    {
      sub_2526934A0();

      sub_252692C80();

      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return sub_2526934C0();
}

uint64_t sub_25244B590(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  return sub_2523E5CF0(v2, v3);
}

uint64_t sub_25244B614()
{
  v1 = *(v0 + 24);
  sub_252693460();
  sub_2526934A0();
  sub_252692C80();
  sub_2523DB264(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_25244B690(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_2526934A0();
  sub_252692C80();

  return sub_2523DB264(a1, v3);
}

uint64_t sub_25244B6FC(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_252693460();
  sub_2526934A0();
  sub_252692C80();
  sub_2523DB264(v4, v2);
  return sub_2526934C0();
}

uint64_t AccessoryControl.SimpleAreaPickerConfig.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_252693480();

  return sub_2523DB164(a1, v3);
}

uint64_t AccessoryControl.SimpleAreaPickerConfig.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_252693460();
  sub_252693480();
  sub_2523DB164(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_25244B8A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_2523E59C4(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25244B8CC()
{
  v1 = *(v0 + 8);
  sub_252693460();
  sub_252693480();
  sub_2523DB164(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_25244B92C(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_252693480();

  return sub_2523DB164(a1, v3);
}

uint64_t sub_25244B97C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_252693460();
  sub_252693480();
  sub_2523DB164(v4, v2);
  return sub_2526934C0();
}

uint64_t AccessoryControl.AutoClimateViewConfig.iconConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

__n128 AccessoryControl.AutoClimateViewConfig.iconConfig.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u8[8];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v1[1] = result;
  v1[2].n128_u64[0] = v5;
  v1[2].n128_u8[8] = v6;
  return result;
}

uint64_t AccessoryControl.AutoClimateViewConfig.labelConfig.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_252450C14(v2);
}

uint64_t AccessoryControl.AutoClimateViewConfig.labelConfig.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_2523A9BF8(*(v1 + 48));
  *(v1 + 48) = v2;
  return result;
}

uint64_t AccessoryControl.AutoClimateViewConfig.IconConfig.symbol.getter()
{
  v1 = *v0;

  return v1;
}

void AccessoryControl.AutoClimateViewConfig.IconConfig.symbol.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t AccessoryControl.AutoClimateViewConfig.IconConfig.iconTint.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AccessoryControl.AutoClimateViewConfig.IconConfig.buttonBackground.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t AccessoryControl.AutoClimateViewConfig.IconConfig.variableValue.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t AccessoryControl.AutoClimateViewConfig.IconConfig.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (*(v1 + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  sub_2526922E0();
  sub_2526922E0();
  if (v3)
  {
    return sub_252693480();
  }

  sub_252693480();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x2530A5020](v5);
}

uint64_t AccessoryControl.AutoClimateViewConfig.IconConfig.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_252693460();
  AccessoryControl.AutoClimateViewConfig.IconConfig.hash(into:)(v5);
  return sub_2526934C0();
}

uint64_t sub_25244BDEC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_252693460();
  AccessoryControl.AutoClimateViewConfig.IconConfig.hash(into:)(v5);
  return sub_2526934C0();
}

uint64_t sub_25244BE4C(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 40);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v9 = v2;
  v10 = v3;
  sub_252693460();
  AccessoryControl.AutoClimateViewConfig.IconConfig.hash(into:)(v6);
  return sub_2526934C0();
}

uint64_t static AccessoryControl.AutoClimateViewConfig.LabelConfig.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_2523E7044(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t AccessoryControl.AutoClimateViewConfig.LabelConfig.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  MEMORY[0x2530A4FE0](1);

  return sub_2523DA850(a1, v3);
}

uint64_t AccessoryControl.AutoClimateViewConfig.LabelConfig.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  if (v1)
  {
    MEMORY[0x2530A4FE0](1);
    sub_2523DA850(v3, v1);
  }

  else
  {
    MEMORY[0x2530A4FE0](0);
  }

  return sub_2526934C0();
}

uint64_t sub_25244BFFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_2523E7044(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_25244C080()
{
  v1 = *v0;
  sub_252693460();
  if (v1)
  {
    MEMORY[0x2530A4FE0](1);
    sub_2523DA850(v3, v1);
  }

  else
  {
    MEMORY[0x2530A4FE0](0);
  }

  return sub_2526934C0();
}

uint64_t sub_25244C0E4(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  MEMORY[0x2530A4FE0](1);

  return sub_2523DA850(a1, v3);
}

uint64_t sub_25244C154(uint64_t a1)
{
  v2 = *v1;
  sub_252693460();
  if (v2)
  {
    MEMORY[0x2530A4FE0](1);
    sub_2523DA850(v4, v2);
  }

  else
  {
    MEMORY[0x2530A4FE0](0);
  }

  return sub_2526934C0();
}

uint64_t AccessoryControl.AutoClimateViewConfig.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 41);
  v4 = *(v1 + 48);
  AccessoryControl.AutoClimateViewConfig.IconConfig.hash(into:)(a1);
  MEMORY[0x2530A4FE0](v3);
  if (v4 == 1)
  {
    return sub_252693480();
  }

  sub_252693480();
  if (!v4)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  MEMORY[0x2530A4FE0](1);

  return sub_2523DA850(a1, v4);
}

uint64_t AccessoryControl.AutoClimateViewConfig.hashValue.getter()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 48);
  sub_252693460();
  AccessoryControl.AutoClimateViewConfig.IconConfig.hash(into:)(v4);
  MEMORY[0x2530A4FE0](v1);
  if (v2 == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_252693480();
    if (v2)
    {
      MEMORY[0x2530A4FE0](1);
      sub_2523DA850(v4, v2);
    }

    else
    {
      MEMORY[0x2530A4FE0](0);
    }
  }

  return sub_2526934C0();
}

uint64_t sub_25244C368(uint64_t a1)
{
  v2 = *(v1 + 41);
  v3 = *(v1 + 48);
  sub_252693460();
  AccessoryControl.AutoClimateViewConfig.IconConfig.hash(into:)(v5);
  MEMORY[0x2530A4FE0](v2);
  if (v3 == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_252693480();
    if (v3)
    {
      MEMORY[0x2530A4FE0](1);
      sub_2523DA850(v5, v3);
    }

    else
    {
      MEMORY[0x2530A4FE0](0);
    }
  }

  return sub_2526934C0();
}

uint64_t AccessoryControl.AutoClimateAlertViewConfig.AlertAction.id.setter(uint64_t a1)
{
  result = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

BOOL static AccessoryControl.AutoClimateAlertViewConfig.AlertAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s22HomeAccessoryControlUI0bC0V16AutoClimateStateV10EnergyHoldO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) != 0 && ((v4 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction(0), v5 = *(v4 + 20), v6 = a1 + v5, v7 = a2 + v5, v8 = *(type metadata accessor for ControlAction(0) + 24), v9 = *(v6 + v8), v10 = *(v6 + v8 + 8), v11 = (v7 + v8), v9 == *v11) ? (v12 = v10 == v11[1]) : (v12 = 0), v12 || (sub_2526933B0()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t AccessoryControl.AutoClimateAlertViewConfig.AlertAction.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25268DB10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268D990();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252450A9C(v2, v13, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328, &unk_252696040);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    MEMORY[0x2530A4FE0](0);
  }

  else
  {
    v15 = v7;
    v25 = v7;
    v16 = v2;
    v17 = *v13;
    v18 = *(v14 + 48);
    v19 = *(v14 + 64);
    (*(v8 + 32))(v10, &v13[v18], v15);
    (*(v4 + 32))(v6, &v13[v19], v3);
    MEMORY[0x2530A4FE0](1);
    v20 = v17;
    v2 = v16;
    MEMORY[0x2530A4FE0](v20);
    sub_252450B6C(&qword_27F4DB768, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v21 = v25;
    sub_252692B30();
    sub_252450B6C(&qword_27F4DB770, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
    sub_252692B30();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v21);
  }

  v22 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction(0);
  type metadata accessor for ControlAction(0);
  sub_252692C80();
  return MEMORY[0x2530A4FE0](*(v2 + *(v22 + 24)));
}

BOOL sub_25244C988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s22HomeAccessoryControlUI0bC0V16AutoClimateStateV10EnergyHoldO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) != 0 && ((v6 = *(a3 + 20), v7 = a1 + v6, v8 = a2 + v6, v9 = *(type metadata accessor for ControlAction(0) + 24), v10 = *(v7 + v9), v11 = *(v7 + v9 + 8), v12 = (v8 + v9), v10 == *v12) ? (v13 = v11 == v12[1]) : (v13 = 0), v13 || (sub_2526933B0()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25244CA80(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t AccessoryControl.AutoClimateAlertViewConfig.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0) + 24));

  return v1;
}

uint64_t AccessoryControl.AutoClimateAlertViewConfig.actions.getter()
{
  type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
}

void AccessoryControl.AutoClimateAlertViewConfig.actions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t AccessoryControl.AutoClimateAlertViewConfig.hash(into:)(uint64_t a1)
{
  sub_252692C80();
  type metadata accessor for IconDescriptor(0);
  sub_25268F910();
  sub_252450B6C(&qword_27F4DB560, MEMORY[0x277D165A0], MEMORY[0x277D165A8]);
  sub_252692B30();
  sub_252693480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  sub_252692C80();
  sub_252692B30();
  sub_252693480();
  v3 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
  sub_252692C80();
  if (*(v1 + *(v3 + 24) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  v4 = *(v1 + *(v3 + 28));
  if (!v4)
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_2523DA3A4(a1, v4);
}

uint64_t AccessoryControl.AutoClimatePickerViewConfig.AutoClimatePickerOption.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccessoryControl.AutoClimatePickerViewConfig.AutoClimatePickerOption.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccessoryControl.AutoClimatePickerViewConfig.AutoClimatePickerOption.init(setpointHold:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_25243B8D8();
  a2[1] = v7;
  a2[2] = sub_25243C098();
  a2[3] = v8;
  sub_252445700(a1, v6, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308, &unk_252699490);
  result = (*(*(v9 - 8) + 48))(v6, 3, v9);
  if (result > 1)
  {
    if (result == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 0;
    if (!result)
    {
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v14 = sub_25268DB10();
      (*(*(v14 - 8) + 8))(&v6[v13], v14);
      result = sub_252372288(&v6[v12], &qword_27F4DB2D8, &qword_252696D10);
      v11 = 3;
    }
  }

  a2[4] = v11;
  return result;
}

uint64_t AccessoryControl.AutoClimatePickerViewConfig.AutoClimatePickerOption.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_252692C80();
  sub_252693480();
  if (v2)
  {
    sub_252692C80();
  }

  return MEMORY[0x2530A4FE0](v3);
}

uint64_t AccessoryControl.AutoClimatePickerViewConfig.AutoClimatePickerOption.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_252693460();
  sub_252692C80();
  sub_252693480();
  if (v1)
  {
    sub_252692C80();
  }

  MEMORY[0x2530A4FE0](v2);
  return sub_2526934C0();
}

uint64_t sub_25244D0D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_252693460();
  sub_252692C80();
  sub_252693480();
  if (v1)
  {
    sub_252692C80();
  }

  MEMORY[0x2530A4FE0](v2);
  return sub_2526934C0();
}

uint64_t sub_25244D170(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_252692C80();
  sub_252693480();
  if (v2)
  {
    sub_252692C80();
  }

  return MEMORY[0x2530A4FE0](v3);
}

uint64_t sub_25244D1EC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_252693460();
  sub_252692C80();
  sub_252693480();
  if (v2)
  {
    sub_252692C80();
  }

  MEMORY[0x2530A4FE0](v3);
  return sub_2526934C0();
}

uint64_t AccessoryControl.AutoClimatePickerViewConfig.options.getter()
{
  type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
}

uint64_t AccessoryControl.AutoClimatePickerViewConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_252692C80();
  type metadata accessor for IconDescriptor(0);
  sub_25268F910();
  sub_252450B6C(&qword_27F4DB560, MEMORY[0x277D165A0], MEMORY[0x277D165A8]);
  sub_252692B30();
  sub_252693480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  sub_252692C80();
  sub_252692B30();
  sub_252693480();
  v4 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
  sub_252692C80();
  v5 = *(v2 + *(v4 + 24));

  return sub_2523D9E44(a1, v5);
}

uint64_t sub_25244D43C(uint64_t (*a1)(void *))
{
  sub_252693460();
  a1(v3);
  return sub_2526934C0();
}

uint64_t sub_25244D4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_25244D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

unint64_t AccessoryControl.PickerButtonViewConfig.OptionSelectionType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionSelectionOptions.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x2530A4FE0](1);

    return sub_2523DC4BC(a1, v3);
  }

  else
  {
    MEMORY[0x2530A4FE0](0);

    return sub_2523D8FD0(a1, v3);
  }
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionSelectionOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252693460();
  if (v2)
  {
    MEMORY[0x2530A4FE0](1);
    sub_2523DC4BC(v4, v1);
  }

  else
  {
    MEMORY[0x2530A4FE0](0);
    sub_2523D8FD0(v4, v1);
  }

  return sub_2526934C0();
}

uint64_t sub_25244D688()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252693460();
  if (v2)
  {
    MEMORY[0x2530A4FE0](1);
    sub_2523DC4BC(v4, v1);
  }

  else
  {
    MEMORY[0x2530A4FE0](0);
    sub_2523D8FD0(v4, v1);
  }

  return sub_2526934C0();
}

uint64_t sub_25244D700(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x2530A4FE0](1);

    return sub_2523DC4BC(a1, v3);
  }

  else
  {
    MEMORY[0x2530A4FE0](0);

    return sub_2523D8FD0(a1, v3);
  }
}

uint64_t sub_25244D78C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_252693460();
  if (v3)
  {
    MEMORY[0x2530A4FE0](1);
    sub_2523DC4BC(v5, v2);
  }

  else
  {
    MEMORY[0x2530A4FE0](0);
    sub_2523D8FD0(v5, v2);
  }

  return sub_2526934C0();
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.SectionIdentifier.init(position:type:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.SectionIdentifier.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x2530A4FE0](*v0);
  return MEMORY[0x2530A4FE0](v1);
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.SectionIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  MEMORY[0x2530A4FE0](v2);
  return sub_2526934C0();
}

uint64_t sub_25244D970()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  MEMORY[0x2530A4FE0](v2);
  return sub_2526934C0();
}

uint64_t sub_25244D9D0()
{
  v1 = *(v0 + 8);
  MEMORY[0x2530A4FE0](*v0);
  return MEMORY[0x2530A4FE0](v1);
}

uint64_t sub_25244DA10(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_252693460();
  MEMORY[0x2530A4FE0](v2);
  MEMORY[0x2530A4FE0](v3);
  return sub_2526934C0();
}

void AccessoryControl.PickerButtonViewConfig.OptionsSection.sectionId.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.sectionId.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

void AccessoryControl.PickerButtonViewConfig.OptionsSection.options.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void AccessoryControl.PickerButtonViewConfig.OptionsSection.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.sectionTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void AccessoryControl.PickerButtonViewConfig.OptionsSection.sectionTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.sectionFooter.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void AccessoryControl.PickerButtonViewConfig.OptionsSection.sectionFooter.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 56);
  v9 = *(v2 + 72);
  MEMORY[0x2530A4FE0](*v2);
  MEMORY[0x2530A4FE0](v4);
  if (v6)
  {
    MEMORY[0x2530A4FE0](1);
    sub_2523DC4BC(a1, v5);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MEMORY[0x2530A4FE0](0);
    sub_2523D8FD0(a1, v5);
    if (v7)
    {
LABEL_3:
      sub_252693480();
      sub_252692C80();
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_252693480();
      if (v9)
      {
        goto LABEL_5;
      }

      return sub_252693480();
    }
  }

  sub_252693480();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_252693480();
  sub_252692C80();
  if (!v9)
  {
    return sub_252693480();
  }

LABEL_5:
  sub_252693480();

  return sub_252692C80();
}

uint64_t AccessoryControl.PickerButtonViewConfig.OptionsSection.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.PickerButtonViewConfig.OptionsSection.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_25244DE3C()
{
  sub_252693460();
  AccessoryControl.PickerButtonViewConfig.OptionsSection.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_25244DE80(uint64_t a1)
{
  sub_252693460();
  AccessoryControl.PickerButtonViewConfig.OptionsSection.hash(into:)(v2);
  return sub_2526934C0();
}

uint64_t AccessoryControl.PickerButtonViewConfig.SelectionViewConfig.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccessoryControl.PickerButtonViewConfig.SelectionViewConfig.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_252692C80();

  return sub_2523D8AB4(a1, v3);
}

uint64_t AccessoryControl.PickerButtonViewConfig.SelectionViewConfig.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_252693460();
  sub_252692C80();
  sub_2523D8AB4(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_25244DF94(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  return sub_2523E6930(v2, v3);
}

uint64_t sub_25244E008()
{
  v1 = *(v0 + 16);
  sub_252693460();
  sub_252692C80();
  sub_2523D8AB4(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_25244E06C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_252692C80();

  return sub_2523D8AB4(a1, v3);
}

uint64_t sub_25244E0B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_252693460();
  sub_252692C80();
  sub_2523D8AB4(v4, v2);
  return sub_2526934C0();
}

uint64_t AccessoryControl.BinaryViewConfig.TitleConfig.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x2530A4FE0](1);
      sub_252692C80();
      goto LABEL_7;
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x2530A4FE0](v2);
LABEL_7:

  return sub_252692C80();
}

uint64_t AccessoryControl.BinaryViewConfig.TitleConfig.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_252693460();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x2530A4FE0](v2);
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x2530A4FE0](1);
  sub_252692C80();
LABEL_7:
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t sub_25244E270()
{
  v1 = *(v0 + 32);
  sub_252693460();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x2530A4FE0](v2);
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x2530A4FE0](1);
  sub_252692C80();
LABEL_7:
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t sub_25244E324(uint64_t a1)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x2530A4FE0](1);
      sub_252692C80();
      goto LABEL_7;
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x2530A4FE0](v2);
LABEL_7:

  return sub_252692C80();
}

uint64_t sub_25244E3C8(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_252693460();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x2530A4FE0](v3);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x2530A4FE0](1);
  sub_252692C80();
LABEL_7:
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV6OptionV10IdentifierO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DA10();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v28 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50, &unk_252696380);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v20 = *(v19 + 56);
  sub_252450A9C(a1, &v28 - v17, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  sub_252450A9C(a2, &v18[v20], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_252450A9C(v18, v15, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = *v15 == *&v18[v20];
LABEL_7:
      v23 = v22;
      goto LABEL_12;
    }

LABEL_14:
    sub_252372288(v18, &qword_27F4DAE50, &unk_252696380);
    v23 = 0;
    return v23 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_252450A9C(v18, v12, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v12 == *&v18[v20];
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  sub_252450A9C(v18, v9, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v28 + 8))(v9, v29);
    goto LABEL_14;
  }

  v25 = v28;
  v24 = v29;
  (*(v28 + 32))(v6, &v18[v20], v29);
  v23 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
  v26 = *(v25 + 8);
  v26(v6, v24);
  v26(v9, v24);
LABEL_12:
  sub_25240D3E4(v18);
  return v23 & 1;
}

uint64_t _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV14OptionsSectionV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v8 = *(a2 + 16);
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    v12 = *(a2 + 48);
    v11 = *(a2 + 56);
    if (*(a1 + 24))
    {
      if ((*(a2 + 24) & 1) == 0)
      {
        return 0;
      }

      v16 = *(a2 + 64);
      v17 = *(a1 + 48);
      v18 = *(a2 + 72);
      v19 = *(a1 + 72);
      v15 = *(a1 + 64);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_252437504(v4, v8);
    }

    else
    {
      if (*(a2 + 24))
      {
        return 0;
      }

      v16 = *(a2 + 64);
      v17 = *(a1 + 48);
      v18 = *(a2 + 72);
      v19 = *(a1 + 72);
      v15 = *(a1 + 64);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v13 = sub_2523E6A74(v4, v8);
    }

    v14 = v13;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    if (v14)
    {
      if (v6)
      {
        if (!v9 || (v5 != v10 || v6 != v9) && (sub_2526933B0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v7)
      {
        if (!v11 || (v17 != v12 || v7 != v11) && (sub_2526933B0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      if (v19)
      {
        if (v18 && (v15 == v16 && v19 == v18 || (sub_2526933B0() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v18)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_2523E6A74(*a1, *a2);
  result = 0;
  if (v10 && ((v2 ^ v6) & 1) == 0)
  {
    v12 = v4 == v8 && v3 == v7;
    result = 0;
    if (v12 || (sub_2526933B0() & 1) != 0)
    {

      v13 = sub_2523E6930(v5, v9);

      if (v13)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t _s22HomeAccessoryControlUI0bC0V16BinaryViewConfigV05TitleG0O2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      goto LABEL_24;
    }

    v18 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      sub_252450A30(v18, v2, v10, v9, 0);
      sub_252450A30(v3, v2, v5, v4, 0);
      sub_252376DBC(v3, v2, v5, v4, 0);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 0;
      goto LABEL_30;
    }

    v20 = sub_2526933B0();
    sub_252450A30(v8, v7, v10, v9, 0);
    sub_252450A30(v3, v2, v5, v4, 0);
    sub_252376DBC(v3, v2, v5, v4, 0);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 0;
LABEL_28:
    sub_252376DBC(v21, v22, v23, v24, v25);
    return v20 & 1;
  }

  if (v6 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_24;
    }

    v26 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      sub_252450A30(v26, v2, v10, v9, 2);
      sub_252450A30(v3, v2, v5, v4, 2);
      sub_252376DBC(v3, v2, v5, v4, 2);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 2;
      goto LABEL_30;
    }

    v20 = sub_2526933B0();
    sub_252450A30(v8, v7, v10, v9, 2);
    sub_252450A30(v3, v2, v5, v4, 2);
    sub_252376DBC(v3, v2, v5, v4, 2);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 2;
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_24:
    sub_252450A30(*a2, a2[1], v10, v9, v11);
    sub_252450A30(v3, v2, v5, v4, v6);
    sub_252376DBC(v3, v2, v5, v4, v6);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = v11;
LABEL_25:
    sub_252376DBC(v28, v29, v30, v31, v32);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_2526933B0() & 1) == 0)
  {
    sub_252450A30(v8, v7, v10, v9, 1);
    sub_252450A30(v3, v2, v5, v4, 1);
    sub_252376DBC(v3, v2, v5, v4, 1);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = 1;
    goto LABEL_25;
  }

  if (v5 != v10 || v4 != v9)
  {
    v20 = sub_2526933B0();
    sub_252450A30(v8, v7, v10, v9, 1);
    sub_252450A30(v3, v2, v5, v4, 1);
    sub_252376DBC(v3, v2, v5, v4, 1);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 1;
    goto LABEL_28;
  }

  sub_252450A30(v8, v7, v5, v4, 1);
  sub_252450A30(v3, v2, v5, v4, 1);
  sub_252376DBC(v3, v2, v5, v4, 1);
  v13 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v4;
  v17 = 1;
LABEL_30:
  sub_252376DBC(v13, v14, v15, v16, v17);
  return 1;
}

uint64_t _s22HomeAccessoryControlUI0bC0V16PickerViewConfigV6OptionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (v4 || (sub_2526933B0() & 1) != 0)
  {
    if (v2)
    {
      if (v3)
      {

        v5 = sub_252692280();

        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s22HomeAccessoryControlUI0bC0V21AutoClimateViewConfigV04IconH0V2eeoiySbAG_AGtFZ_0(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  if (v3)
  {
    if (!v6 || (*a1 != *a2 || v3 != v6) && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (sub_252692280() & 1) != 0 && (sub_252692280())
  {
    if (v5)
    {
      if (v8)
      {
        return 1;
      }
    }

    else
    {
      if (v4 == v7)
      {
        v10 = v8;
      }

      else
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV22OptionSelectionOptionsO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    if (a2[1])
    {

      sub_252437504(v3, v2);
LABEL_7:
      v5 = v4;

      return v5;
    }
  }

  else if ((a2[1] & 1) == 0)
  {

    v4 = sub_2523E6A74(v6, v2);
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s22HomeAccessoryControlUI0bC0V22StatusButtonViewConfigV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v7 = sub_2523E6930(v2, v5);

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  return sub_2523E68BC(v3, v4);
}

BOOL _s22HomeAccessoryControlUI0bC0V26AutoClimateAlertViewConfigV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for IconDescriptor(0);
  if ((sub_25268F900() & 1) == 0 || *(a1 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a1 + v6) == *(a2 + v6) && *(a1 + v6 + 8) == *(a2 + v6 + 8);
  if (!v9 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_25268F900() & 1) == 0 || v7[*(v5 + 24)] != v8[*(v5 + 24)])
  {
    return 0;
  }

  v11 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
  v12 = v11[5];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v16 = v11[6];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20 || (*v17 != *v19 || v18 != v20) && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = v11[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22)
  {
    if (v23)
    {

      v24 = sub_2523E60F4(v22, v23);

      if (v24)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v23;
}

BOOL _s22HomeAccessoryControlUI0bC0V27AutoClimatePickerViewConfigV0efG6OptionV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_2526933B0() & 1) != 0)
  {
    if (v3)
    {
      if (v5)
      {
        v9 = v2 == v6 && v3 == v5;
        if (v9 || (sub_2526933B0() & 1) != 0)
        {
          return v4 == v7;
        }
      }
    }

    else if (!v5)
    {
      return v4 == v7;
    }
  }

  return 0;
}

uint64_t _s22HomeAccessoryControlUI0bC0V28MultiSectionPickerViewConfigV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCF78, &qword_25269C698);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if ((sub_2523E5D90(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v27 = v7;
  v14 = *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
  v15 = *(v11 + 48);
  sub_25237153C(a1 + v14, v13, &qword_27F4DADB8, &qword_2526A6E60);
  sub_25237153C(a2 + v14, &v13[v15], &qword_27F4DADB8, &qword_2526A6E60);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
LABEL_5:
      sub_252372288(v13, &qword_27F4DADB8, &qword_2526A6E60);
      return 1;
    }
  }

  else
  {
    sub_25237153C(v13, v10, &qword_27F4DADB8, &qword_2526A6E60);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = v27;
      sub_252376EF0(&v13[v15], v27);
      v21 = *v10 == *v20 && v10[1] == v20[1];
      if (v21 || (sub_2526933B0() & 1) != 0)
      {
        v22 = type metadata accessor for IconDescriptor(0);
        if ((sub_25268F900() & 1) != 0 && *(v10 + *(v22 + 24)) == *(v20 + *(v22 + 24)))
        {
          if (v23 = *(v4 + 28), v24 = v10 + v23, v25 = v20 + v23, *(v10 + v23) == *(v20 + v23)) && *(v10 + v23 + 8) == *(v20 + v23 + 8) || (sub_2526933B0())
          {
            if ((sub_25268F900() & 1) != 0 && v24[*(v22 + 24)] == v25[*(v22 + 24)])
            {
              sub_252372288(v20, &qword_27F4DAD88, &unk_2526956E0);
              sub_252372288(v10, &qword_27F4DAD88, &unk_2526956E0);
              goto LABEL_5;
            }
          }
        }
      }

      sub_252372288(v20, &qword_27F4DAD88, &unk_2526956E0);
      sub_252372288(v10, &qword_27F4DAD88, &unk_2526956E0);
      v18 = &qword_27F4DADB8;
      v19 = &qword_2526A6E60;
      goto LABEL_22;
    }

    sub_252372288(v10, &qword_27F4DAD88, &unk_2526956E0);
  }

  v18 = &qword_27F4DCF78;
  v19 = &qword_25269C698;
LABEL_22:
  sub_252372288(v13, v18, v19);
  return 0;
}

uint64_t _s22HomeAccessoryControlUI0bC0V27AutoClimatePickerViewConfigV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for IconDescriptor(0);
  if ((sub_25268F900() & 1) == 0 || *(a1 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a1 + v6) == *(a2 + v6) && *(a1 + v6 + 8) == *(a2 + v6 + 8);
  if (!v9 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_25268F900() & 1) == 0 || v7[*(v5 + 24)] != v8[*(v5 + 24)])
  {
    return 0;
  }

  v11 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
  v12 = *(v11 + 20);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v11 + 24);
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_2523E5AFC(v17, v18);
}

uint64_t _s22HomeAccessoryControlUI0bC0V21AutoClimateViewConfigV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v9 = a1[6];
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = *(a2 + 40);
  v16 = *(a2 + 41);
  v17 = a2[6];
  v23[0] = v2;
  *&v23[1] = v3;
  *&v23[2] = v4;
  *&v23[3] = v5;
  *&v23[4] = v6;
  v24 = v7;
  v21[0] = v11;
  v21[1] = v10;
  v21[2] = v12;
  v21[3] = v13;
  v21[4] = v14;
  v22 = v15;

  LOBYTE(v4) = _s22HomeAccessoryControlUI0bC0V21AutoClimateViewConfigV04IconH0V2eeoiySbAG_AGtFZ_0(v23, v21);

  v18 = 0;
  if ((v4 & 1) != 0 && ((v8 ^ v16) & 1) == 0)
  {
    if (v9 == 1)
    {
      if (v17 == 1)
      {
        v9 = 1;
        sub_252450C14(1);
        sub_252450C14(1);
LABEL_6:
        v18 = 1;
LABEL_18:
        sub_2523A9BF8(v9);
        return v18;
      }

LABEL_8:
      sub_252450C14(v9);
      sub_252450C14(v17);
      sub_2523A9BF8(v9);
      v18 = 0;
      v9 = v17;
      goto LABEL_18;
    }

    if (v17 == 1)
    {
      goto LABEL_8;
    }

    if (v9)
    {
      if (v17)
      {
        sub_252450C14(v9);
        sub_252450C14(v17);
        sub_252450C14(v9);
        sub_252450C14(v17);
        v19 = sub_2523E7044(v9, v17);
        sub_2523A9BF8(v17);

        if (v19)
        {
          goto LABEL_6;
        }

LABEL_17:
        v18 = 0;
        goto LABEL_18;
      }

      sub_252450C14(0);
    }

    else if (!v17)
    {
      sub_252450C14(0);
      sub_252450C14(0);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }

    sub_252450C14(v9);
    sub_252450C14(v17);
    sub_252450C14(v9);

    goto LABEL_17;
  }

  return v18;
}

uint64_t _s22HomeAccessoryControlUI0bC0V17IncrementalConfigV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for IconDescriptor(0);
  if ((sub_25268F900() & 1) == 0 || *(a1 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a1 + v6) == *(a2 + v6) && *(a1 + v6 + 8) == *(a2 + v6 + 8);
  if (!v9 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_25268F900() & 1) == 0)
  {
    return 0;
  }

  if (v7[*(v5 + 24)] != v8[*(v5 + 24)])
  {
    return 0;
  }

  v10 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  if ((sub_252692280() & 1) == 0 || (sub_252692280() & 1) == 0 || (sub_25268EE80() & 1) == 0 || *(a1 + v10[8]) != *(a2 + v10[8]) || *(a1 + v10[9]) != *(a2 + v10[9]) || *(a1 + v10[10]) != *(a2 + v10[10]))
  {
    return 0;
  }

  v11 = v10[11];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *v14;
  v16 = *(v14 + 8);
  if (v13 == 1)
  {
    if (v12 == 0.0)
    {
      if (v15 != 0.0)
      {
        LOBYTE(v16) = 0;
      }

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v15 == 0.0)
      {
        v16 = 0;
      }

      if (v16 != 1)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v12 != v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if ((sub_252692280() & 1) == 0 || (sub_252692280() & 1) == 0)
  {
    return 0;
  }

  return static AccessoryControl.StatusProvider.== infix(_:_:)();
}

uint64_t _s22HomeAccessoryControlUI0bC0V17ColorPickerConfigV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = a1[10];
  v5 = *(a1 + 2);
  v6 = a2[6];
  v7 = *(a2 + 4);
  v8 = a2[10];
  v10 = *(a2 + 2);
  if (a1[6])
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 2) == *(a2 + 2))
    {
      v11 = v6;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v7)
    {
      v13 = v8;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return sub_2523E5350(v5, v10);
}

BOOL _s22HomeAccessoryControlUI0bC0V16ThermostatConfigV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 73);
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    v12 = *(a1 + 96);
    v13 = *(a1 + 97);
    v14 = *(a2 + 32);
    v15 = *(a2 + 73);
    v16 = *(a2 + 80);
    v17 = *(a2 + 88);
    v18 = *(a2 + 96);
    v19 = *(a2 + 97);
    if (*(a1 + 40) == 1)
    {
      if (v4 == 0.0)
      {
        if (v14 == 0.0)
        {
          v22 = *(a2 + 40);
        }

        else
        {
          v22 = 0;
        }

        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == 0.0)
        {
          v20 = 0;
        }

        else
        {
          v20 = *(a2 + 40);
        }

        if (v20 != 1)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v4 == v14)
      {
        v21 = *(a2 + 40);
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    if (v6)
    {
      if (!*(a2 + 56))
      {
        return 0;
      }
    }

    else
    {
      if (v5 == *(a2 + 48))
      {
        v23 = *(a2 + 56);
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        return 0;
      }
    }

    if (v8)
    {
      if (!*(a2 + 72))
      {
        return 0;
      }
    }

    else
    {
      if (v7 == *(a2 + 64))
      {
        v24 = *(a2 + 72);
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        return 0;
      }
    }

    if (v9 == 3)
    {
      if (v15 != 3)
      {
        return 0;
      }

LABEL_40:
      if (v10)
      {
        if (!v16)
        {
          return 0;
        }

        v25 = sub_2523E7770(v10, v16);

        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v12)
      {
        if (!v18)
        {
          return 0;
        }
      }

      else
      {
        if (v11 == v17)
        {
          v26 = v18;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          return 0;
        }
      }

      return v13 == v19;
    }

    result = 0;
    if (v15 != 3 && v9 == v15)
    {
      goto LABEL_40;
    }
  }

  return result;
}

BOOL _s22HomeAccessoryControlUI0bC0V16PickerViewConfigV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v37 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v37 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCF78, &qword_25269C698);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  if ((sub_2523E5FCC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v14 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v15 = a1;
  v16 = a2;
  v37 = v14;
  v38 = v15;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  sub_25237153C(v15 + v17, v13, &qword_27F4DADB8, &qword_2526A6E60);
  v19 = v16 + v17;
  v20 = v16;
  sub_25237153C(v19, &v13[v18], &qword_27F4DADB8, &qword_2526A6E60);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_25237153C(v13, v10, &qword_27F4DADB8, &qword_2526A6E60);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      sub_252376EF0(&v13[v18], v7);
      v31 = *v10 == *v7 && v10[1] == v7[1];
      if (v31 || (sub_2526933B0() & 1) != 0)
      {
        v32 = type metadata accessor for IconDescriptor(0);
        if ((sub_25268F900() & 1) != 0 && *(v10 + *(v32 + 24)) == *(v7 + *(v32 + 24)))
        {
          if (v33 = *(v4 + 28), v34 = v10 + v33, v35 = v7 + v33, *(v10 + v33) == *(v7 + v33)) && *(v10 + v33 + 8) == *(v7 + v33 + 8) || (sub_2526933B0())
          {
            if ((sub_25268F900() & 1) != 0 && v34[*(v32 + 24)] == v35[*(v32 + 24)])
            {
              sub_252372288(v7, &qword_27F4DAD88, &unk_2526956E0);
              sub_252372288(v10, &qword_27F4DAD88, &unk_2526956E0);
              goto LABEL_5;
            }
          }
        }
      }

      sub_252372288(v7, &qword_27F4DAD88, &unk_2526956E0);
      sub_252372288(v10, &qword_27F4DAD88, &unk_2526956E0);
      v29 = &qword_27F4DADB8;
      v30 = &qword_2526A6E60;
LABEL_28:
      sub_252372288(v13, v29, v30);
      return 0;
    }

    sub_252372288(v10, &qword_27F4DAD88, &unk_2526956E0);
LABEL_14:
    v29 = &qword_27F4DCF78;
    v30 = &qword_25269C698;
    goto LABEL_28;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_14;
  }

LABEL_5:
  sub_252372288(v13, &qword_27F4DADB8, &qword_2526A6E60);
  v23 = v37;
  v22 = v38;
  if (*(v38 + *(v37 + 28)) != *(v20 + *(v37 + 28)) || (sub_252692280() & 1) == 0 || (sub_252692280() & 1) == 0 || (static AccessoryControl.StatusProvider.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v24 = *(v23 + 44);
  v25 = (v22 + v24);
  v26 = *(v22 + v24 + 8);
  v27 = (v20 + v24);
  v28 = *(v20 + v24 + 8);
  if ((v26 & 1) == 0)
  {
    if (*v25 != *v27)
    {
      v28 = 1;
    }

    return (v28 & 1) == 0;
  }

  return (v28 & 1) != 0;
}

BOOL _s22HomeAccessoryControlUI0bC0V16BinaryViewConfigV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for IconDescriptor(0);
  if ((sub_25268F900() & 1) == 0 || *(a1 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a1 + v6) == *(a2 + v6) && *(a1 + v6 + 8) == *(a2 + v6 + 8);
  if (!v9 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_25268F900() & 1) == 0)
  {
    return 0;
  }

  if (v7[*(v5 + 24)] != v8[*(v5 + 24)])
  {
    return 0;
  }

  v10 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  if ((sub_252692280() & 1) == 0 || (_s22HomeAccessoryControlUI0C12TextModifierV6ConfigO2eeoiySbAE_AEtFZ_0(a1 + v10[6], a2 + v10[6]) & 1) == 0)
  {
    return 0;
  }

  v11 = v10[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v15 = *(a1 + v11 + 16);
  v14 = *(a1 + v11 + 24);
  v16 = *(a1 + v11 + 32);
  v17 = a2 + v11;
  v18 = *v17;
  v19 = *(v17 + 1);
  v52 = *(v17 + 2);
  v53 = *(v17 + 3);
  v20 = v17[32];
  if (v16 == 255)
  {
    v50 = v12;
    sub_252450A1C(v12, v13, v15, v14, 255);
    if (v20 != 255)
    {
      goto LABEL_29;
    }

    sub_252450A1C(v18, v19, v52, v53, 255);
    sub_252376DA8(v50, v13, v15, v14, 255);
  }

  else
  {
    v59 = v12;
    v60 = v13;
    v61 = v15;
    v62 = v14;
    v63 = v16;
    if (v20 == 255)
    {
LABEL_27:
      v33 = v12;
      sub_252450A1C(v12, v13, v15, v14, v16);
      v34 = v18;
      v35 = v18;
      v37 = v52;
      v36 = v53;
      sub_252450A1C(v35, v19, v52, v53, 255);
      sub_252450A1C(v33, v13, v15, v14, v16);
      sub_252376DBC(v33, v13, v15, v14, v16);
LABEL_30:
      v59 = v33;
      v60 = v13;
      v61 = v15;
      v62 = v14;
      v63 = v16;
      v64 = v34;
      v65 = v19;
      v66 = v37;
      v67 = v36;
      v68 = v20;
      sub_252372288(&v59, &qword_27F4DCF80, &unk_25269C6A0);
      return 0;
    }

    v54 = v18;
    v55 = v19;
    v56 = v52;
    v57 = v53;
    v58 = v20;
    v47 = v13;
    v49 = v12;
    v21 = v13;
    v22 = v15;
    v23 = v15;
    v24 = v14;
    sub_252450A1C(v12, v21, v23, v14, v16);
    sub_252450A1C(v18, v19, v52, v53, v20);
    sub_252450A1C(v49, v47, v22, v14, v16);
    v25 = _s22HomeAccessoryControlUI0bC0V16BinaryViewConfigV05TitleG0O2eeoiySbAG_AGtFZ_0(&v59, &v54);
    sub_252376DBC(v54, v55, v56, v57, v58);
    sub_252376DBC(v59, v60, v61, v62, v63);
    sub_252376DA8(v49, v47, v22, v24, v16);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = v10[8];
  v12 = *(a1 + v26);
  v13 = *(a1 + v26 + 8);
  v15 = *(a1 + v26 + 16);
  v14 = *(a1 + v26 + 24);
  v16 = *(a1 + v26 + 32);
  v27 = a2 + v26;
  v18 = *v27;
  v19 = *(v27 + 1);
  v52 = *(v27 + 2);
  v53 = *(v27 + 3);
  v20 = v27[32];
  if (v16 != 255)
  {
    v59 = v12;
    v60 = v13;
    v61 = v15;
    v62 = v14;
    v63 = v16;
    if (v20 != 255)
    {
      v54 = v18;
      v55 = v19;
      v56 = v52;
      v57 = v53;
      v58 = v20;
      v48 = v13;
      v51 = v12;
      v28 = v13;
      v29 = v15;
      v30 = v15;
      v31 = v14;
      sub_252450A1C(v12, v28, v30, v14, v16);
      sub_252450A1C(v18, v19, v52, v53, v20);
      sub_252450A1C(v51, v48, v29, v14, v16);
      v32 = _s22HomeAccessoryControlUI0bC0V16BinaryViewConfigV05TitleG0O2eeoiySbAG_AGtFZ_0(&v59, &v54);
      sub_252376DBC(v54, v55, v56, v57, v58);
      sub_252376DBC(v59, v60, v61, v62, v63);
      sub_252376DA8(v51, v48, v29, v31, v16);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v50 = v12;
  sub_252450A1C(v12, v13, v15, v14, 255);
  if (v20 != 255)
  {
LABEL_29:
    v34 = v18;
    v38 = v18;
    v37 = v52;
    v36 = v53;
    sub_252450A1C(v38, v19, v52, v53, v20);
    v33 = v50;
    goto LABEL_30;
  }

  sub_252450A1C(v18, v19, v52, v53, 255);
  sub_252376DA8(v50, v13, v15, v14, 255);
LABEL_34:
  if (*(a1 + v10[9]) != *(a2 + v10[9]))
  {
    return 0;
  }

  v40 = v10[10];
  v41 = *(a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  if ((v41 != *v43 || v42 != v43[1]) && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  if ((_s22HomeAccessoryControlUI0bC0V14StatusProviderO2eeoiySbAE_AEtFZ_0(a1 + v10[11], (a2 + v10[11])) & 1) == 0)
  {
    return 0;
  }

  v44 = v10[12];
  v45 = *(a2 + v44);
  if (*(a1 + v44))
  {
    if (!v45)
    {
      return 0;
    }

    v46 = sub_252692280();

    return (v46 & 1) != 0;
  }

  return !v45;
}

void sub_252450A1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_252450A30(result, a2, a3, a4, a5);
  }
}

void sub_252450A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

uint64_t sub_252450A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252450B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_252450B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252450C14(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_252450D18()
{
  result = qword_27F4DCD48;
  if (!qword_27F4DCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCD48);
  }

  return result;
}

unint64_t sub_252450D70()
{
  result = qword_27F4DCD50;
  if (!qword_27F4DCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCD50);
  }

  return result;
}

unint64_t sub_252450E10()
{
  result = qword_27F4DCD60;
  if (!qword_27F4DCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCD60);
  }

  return result;
}

unint64_t sub_252450EB0()
{
  result = qword_27F4DCD70;
  if (!qword_27F4DCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCD70);
  }

  return result;
}

unint64_t sub_252450F50()
{
  result = qword_27F4DCD80;
  if (!qword_27F4DCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCD80);
  }

  return result;
}

unint64_t sub_252450FA8()
{
  result = qword_27F4DCD88;
  if (!qword_27F4DCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCD88);
  }

  return result;
}

unint64_t sub_252451000()
{
  result = qword_27F4DCD90;
  if (!qword_27F4DCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCD90);
  }

  return result;
}

unint64_t sub_252451058()
{
  result = qword_27F4DCD98;
  if (!qword_27F4DCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCD98);
  }

  return result;
}

unint64_t sub_2524510B0()
{
  result = qword_27F4DCDA0;
  if (!qword_27F4DCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCDA0);
  }

  return result;
}

unint64_t sub_252451108()
{
  result = qword_27F4DCDA8;
  if (!qword_27F4DCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCDA8);
  }

  return result;
}

unint64_t sub_252451210()
{
  result = qword_27F4DCDC0;
  if (!qword_27F4DCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCDC0);
  }

  return result;
}

unint64_t sub_2524512B0()
{
  result = qword_27F4DCDD0;
  if (!qword_27F4DCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCDD0);
  }

  return result;
}

unint64_t sub_252451308()
{
  result = qword_27F4DCDD8;
  if (!qword_27F4DCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCDD8);
  }

  return result;
}

unint64_t sub_252451360()
{
  result = qword_27F4DCDE0;
  if (!qword_27F4DCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCDE0);
  }

  return result;
}

unint64_t sub_2524513B8()
{
  result = qword_27F4DCDE8;
  if (!qword_27F4DCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCDE8);
  }

  return result;
}

unint64_t sub_25245141C()
{
  result = qword_27F4DCDF0;
  if (!qword_27F4DCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCDF0);
  }

  return result;
}

unint64_t sub_252451474()
{
  result = qword_27F4DCDF8;
  if (!qword_27F4DCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCDF8);
  }

  return result;
}

unint64_t sub_2524514CC()
{
  result = qword_27F4DCE00;
  if (!qword_27F4DCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE00);
  }

  return result;
}

unint64_t sub_252451524()
{
  result = qword_27F4DCE08;
  if (!qword_27F4DCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE08);
  }

  return result;
}

unint64_t sub_25245157C()
{
  result = qword_27F4DCE10;
  if (!qword_27F4DCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE10);
  }

  return result;
}

unint64_t sub_2524515D4()
{
  result = qword_27F4DCE18;
  if (!qword_27F4DCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE18);
  }

  return result;
}

unint64_t sub_2524516BC()
{
  result = qword_27F4DCE30;
  if (!qword_27F4DCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE30);
  }

  return result;
}

unint64_t sub_25245175C()
{
  result = qword_27F4DCE40;
  if (!qword_27F4DCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE40);
  }

  return result;
}

unint64_t sub_2524517B4()
{
  result = qword_27F4DCE48;
  if (!qword_27F4DCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE48);
  }

  return result;
}

unint64_t sub_25245180C()
{
  result = qword_27F4DCE50;
  if (!qword_27F4DCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE50);
  }

  return result;
}

unint64_t sub_252451864()
{
  result = qword_27F4DCE58;
  if (!qword_27F4DCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE58);
  }

  return result;
}

unint64_t sub_2524518BC()
{
  result = qword_27F4DCE60;
  if (!qword_27F4DCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE60);
  }

  return result;
}

unint64_t sub_252451914()
{
  result = qword_27F4DCE68;
  if (!qword_27F4DCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE68);
  }

  return result;
}

unint64_t sub_25245196C()
{
  result = qword_27F4DCE70;
  if (!qword_27F4DCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCE70);
  }

  return result;
}

void sub_2524519E8(uint64_t a1)
{
  sub_252452E28(319, &qword_27F4DCE88, type metadata accessor for IconDescriptor, type metadata accessor for StateDependentValue);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ControlTextModifier.Config(319);
    if (v2 <= 0x3F)
    {
      sub_252452A7C(319, &qword_27F4DCE90, &type metadata for AccessoryControl.BinaryViewConfig.TitleConfig, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AccessoryControl.StatusProvider(319);
        if (v4 <= 0x3F)
        {
          sub_252452A7C(319, &qword_27F4DCE98, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_252451B70(uint64_t a1)
{
  sub_252452E28(319, &qword_27F4DCE88, type metadata accessor for IconDescriptor, type metadata accessor for StateDependentValue);
  if (v1 <= 0x3F)
  {
    sub_25268EEA0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccessoryControl.StatusProvider(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252451D08(uint64_t a1)
{
  sub_252452A7C(319, &qword_27F4DCED0, &type metadata for AccessoryControl.MultiSectionPickerViewConfig.Section, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_252419338(319, &qword_27F4DCED8, &qword_27F4DAD88, &unk_2526956E0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252451E08(uint64_t a1)
{
  sub_252452A7C(319, &qword_27F4DCEF0, &type metadata for AccessoryControl.PickerViewConfig.Option, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_252419338(319, &qword_27F4DCED8, &qword_27F4DAD88, &unk_2526956E0);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccessoryControl.StatusProvider(319);
      if (v3 <= 0x3F)
      {
        sub_252452A7C(319, &qword_27F4DCEF8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_252451F40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 98))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_252451F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_25245204C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_252452094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25245211C(uint64_t a1)
{
  result = sub_25268DA10();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_252452188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2524521D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_252452278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_252452300(uint64_t a1)
{
  result = sub_25268DA10();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s22PickerButtonViewConfigV6OptionV9IconStyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s22PickerButtonViewConfigV6OptionV9IconStyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2524524C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25245250C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_252452584(uint64_t a1, int a2)
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

uint64_t sub_2524525CC(uint64_t result, int a2, int a3)
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

uint64_t sub_25245261C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_252452664(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_22HomeAccessoryControlUI0bC0V21AutoClimateViewConfigV05LabelH0OSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2524526F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25245273C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2524527AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2524527F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252452850(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2524528A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2524528F4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25245290C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_252452974(uint64_t a1)
{
  sub_252452E28(319, &qword_27F4DCE88, type metadata accessor for IconDescriptor, type metadata accessor for StateDependentValue);
  if (v1 <= 0x3F)
  {
    sub_252452A7C(319, &qword_27F4DB5E0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_252419338(319, &qword_27F4DCF40, &qword_27F4DCF48, &qword_25269C380);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252452A7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_252452AF4(uint64_t a1)
{
  result = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ControlAction(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_200Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_201Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_252452D3C(uint64_t a1)
{
  sub_252452E28(319, &qword_27F4DCE88, type metadata accessor for IconDescriptor, type metadata accessor for StateDependentValue);
  if (v1 <= 0x3F)
  {
    sub_252452E28(319, &qword_27F4DCF70, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252452E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_252452E8C(uint64_t a1, int a2)
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

uint64_t sub_252452ED4(uint64_t result, int a2, int a3)
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

uint64_t sub_252452F58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_252452FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t _s22PickerButtonViewConfigV14OptionsSectionV17SectionIdentifierVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s22PickerButtonViewConfigV14OptionsSectionV17SectionIdentifierVwst(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2524530C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25245310C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25245317C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_2524531C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_252453320(uint64_t a1)
{
  sub_2524533A4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AccessoryControl.AlarmAndTimerConfig(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2524533A4(uint64_t a1)
{
  if (!qword_27F4DCF98)
  {
    sub_25268DFB0();
    sub_252457A1C(&qword_27F4DCFA0, MEMORY[0x277D151C0], MEMORY[0x277D15198]);
    v1 = sub_252690B00();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DCF98);
    }
  }
}

uint64_t sub_252453454@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for AlarmAndTimerControlView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCFA8, &qword_25269C720) - 8;
  MEMORY[0x28223BE20](v55);
  v11 = &v54 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCFB0, &qword_25269C728);
  MEMORY[0x28223BE20](v56);
  v57 = &v54 - v12;
  v13 = *(v1 + 8);
  sub_252457344(v1 + *(v3 + 28), v9, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
  v14 = type metadata accessor for AlarmAndTimerControlContentView(0);
  v15 = *(v14 + 24);
  v16 = sub_25268DA10();
  (*(*(v16 - 8) + 32))(&v11[v15], v9, v16);
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  sub_25268DFB0();
  sub_252457A1C(&qword_27F4DCFA0, MEMORY[0x277D151C0], MEMORY[0x277D15198]);
  v17 = v13;
  *(v11 + 6) = sub_252690AD0();
  *(v11 + 7) = v18;
  v19 = &v11[*(v14 + 28)];
  KeyPath = swift_getKeyPath();
  v59 = 0;
  *v19 = KeyPath;
  v19[65] = 0;
  sub_252457344(v1, v6, type metadata accessor for AlarmAndTimerControlView);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_252457A90(v6, v22 + v21, type metadata accessor for AlarmAndTimerControlView);
  v23 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCFB8, &unk_25269C790) + 36)];
  sub_252690A60();
  sub_252692E10();
  *v23 = &unk_25269C788;
  *(v23 + 1) = v22;
  sub_252457344(v1, v6, type metadata accessor for AlarmAndTimerControlView);
  v24 = swift_allocObject();
  sub_252457A90(v6, v24 + v21, type metadata accessor for AlarmAndTimerControlView);
  v25 = &v11[*(v55 + 44)];
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = sub_252457560;
  *(v25 + 3) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8, &qword_252698910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252694EA0;
  v27 = sub_252691A50();
  *(inited + 32) = v27;
  v28 = sub_252691A70();
  *(inited + 33) = v28;
  v29 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v27)
  {
    v29 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v28)
  {
    v29 = sub_252691A60();
  }

  v30 = v57;
  sub_252690760();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_2523714D4(v11, v30, &qword_27F4DCFA8, &qword_25269C720);
  v39 = v30 + *(v56 + 36);
  *v39 = v29;
  *(v39 + 8) = v32;
  *(v39 + 16) = v34;
  *(v39 + 24) = v36;
  *(v39 + 32) = v38;
  *(v39 + 40) = 0;
  v40 = sub_252691A30();
  v41 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v40)
  {
    v41 = sub_252691A60();
  }

  sub_252690760();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v30;
  v51 = v58;
  sub_2523714D4(v50, v58, &qword_27F4DCFB0, &qword_25269C728);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCFC0, &unk_25269C7A0);
  v53 = v51 + *(result + 36);
  *v53 = v41;
  *(v53 + 8) = v43;
  *(v53 + 16) = v45;
  *(v53 + 24) = v47;
  *(v53 + 32) = v49;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_2524539BC(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  v1[13] = swift_task_alloc();
  sub_252692E00();
  v1[14] = sub_252692DF0();
  v3 = sub_252692DE0();
  v1[15] = v3;
  v1[16] = v2;

  return MEMORY[0x2822009F8](sub_252453A80, v3, v2);
}

uint64_t sub_252453A80()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = type metadata accessor for AlarmAndTimerControlView(0);
  sub_252457344(v2 + *(v3 + 20), v1, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 16) = 0u;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_252453B70;
  v5 = *(v0 + 104);

  return MEMORY[0x28216E5A8](v5, 0, v0 + 16);
}

uint64_t sub_252453B70()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_252372288(v1 + 16, &qword_27F4DCFC8, &unk_25269C7C0);
  v3 = sub_25268DA10();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_252453CF8, v5, v4);
}

uint64_t sub_252453CF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252453D60(uint64_t a1)
{
  v2 = type metadata accessor for AlarmAndTimerControlView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930, &qword_2526964E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_252692E30();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_252457344(a1, v5, type metadata accessor for AlarmAndTimerControlView);
  sub_252692E00();
  v10 = sub_252692DF0();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_252457A90(v5, v12 + v11, type metadata accessor for AlarmAndTimerControlView);
  sub_2525738C0(0, 0, v8, &unk_25269C7B8, v12);
}

uint64_t sub_252453F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  v4[13] = swift_task_alloc();
  sub_252692E00();
  v4[14] = sub_252692DF0();
  v6 = sub_252692DE0();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x2822009F8](sub_252454004, v6, v5);
}

uint64_t sub_252454004()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = type metadata accessor for AlarmAndTimerControlView(0);
  sub_252457344(v2 + *(v3 + 20), v1, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 16) = 0u;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_2524540F4;
  v5 = *(v0 + 104);

  return MEMORY[0x28216E5A8](v5, 1, v0 + 16);
}

uint64_t sub_2524540F4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_252372288(v1 + 16, &qword_27F4DCFC8, &unk_25269C7C0);
  v3 = sub_25268DA10();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_252458278, v5, v4);
}

uint64_t sub_25245427C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(v2, v10, &qword_27F4DD178, &qword_25269C920);
  if (v11 == 1)
  {
    return sub_25235E1A4(v10, a1);
  }

  sub_252692F00();
  v9 = sub_2526919C0();
  sub_252690570();

  sub_2526910E0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

BOOL sub_252454410()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for AlarmAndTimerControlContentView(0) + 28);
  v16 = *(v5 + 64);
  v6 = *(v5 + 48);
  v15[2] = *(v5 + 32);
  v15[3] = v6;
  v7 = *(v5 + 16);
  v15[0] = *v5;
  v15[1] = v7;
  if ((v16 & 0x100) != 0)
  {
    v8 = *(v5 + 48);
    v12[2] = *(v5 + 32);
    v13 = v8;
    v14 = *(v5 + 64);
    v9 = *(v5 + 16);
    v12[0] = *v5;
    v12[1] = v9;
  }

  else
  {

    sub_252692F00();
    v10 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v15, &qword_27F4DC120, &qword_25269CED0);
    (*(v2 + 8))(v4, v1);
  }

  return (BYTE1(v13) & 1) == 0;
}

uint64_t sub_2524545A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AlarmAndTimerControlContentView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = sub_2526910F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + *(v4 + 36);
  v30 = *(v12 + 64);
  v13 = *(v12 + 48);
  v29[2] = *(v12 + 32);
  v29[3] = v13;
  v14 = *(v12 + 16);
  v29[0] = *v12;
  v29[1] = v14;
  if ((v30 & 0x100) != 0)
  {
    v15 = *(v12 + 48);
    v26 = *(v12 + 32);
    v27 = v15;
    v28 = *(v12 + 64);
    v16 = *(v12 + 16);
    v24 = *v12;
    v25 = v16;
  }

  else
  {
    v23 = v9;

    sub_252692F00();
    v17 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v29, &qword_27F4DC120, &qword_25269CED0);
    (*(v8 + 8))(v11, v23);
  }

  v18 = BYTE1(v27);
  sub_252457344(v1, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAndTimerControlContentView);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  result = sub_252457A90(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AlarmAndTimerControlContentView);
  *a1 = (v18 & 1) == 0;
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_252457AF8;
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_252454854@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v261 = a2;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD020, &qword_25269C850);
  MEMORY[0x28223BE20](v255);
  v244 = &v205 - v3;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD028, &qword_25269C858);
  MEMORY[0x28223BE20](v240);
  v243 = (&v205 - v4);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD030, &qword_25269C860);
  MEMORY[0x28223BE20](v232);
  v233 = (&v205 - v5);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD038, &qword_25269C868);
  MEMORY[0x28223BE20](v241);
  v234 = &v205 - v6;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD040, &qword_25269C870);
  MEMORY[0x28223BE20](v225);
  v216 = &v205 - v7;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD048, &qword_25269C878);
  MEMORY[0x28223BE20](v221);
  v223 = &v205 - v8;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD050, &qword_25269C880);
  v215 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v214 = &v205 - v9;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD058, &qword_25269C888);
  MEMORY[0x28223BE20](v231);
  v222 = &v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v226 = &v205 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD060, &qword_25269C890);
  MEMORY[0x28223BE20](v13 - 8);
  v239 = &v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v242 = &v205 - v16;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD068, &qword_25269C898);
  MEMORY[0x28223BE20](v235);
  v237 = (&v205 - v17);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD070, &qword_25269C8A0);
  MEMORY[0x28223BE20](v228);
  v229 = (&v205 - v18);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD078, &qword_25269C8A8);
  MEMORY[0x28223BE20](v236);
  v230 = &v205 - v19;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD080, &qword_25269C8B0);
  MEMORY[0x28223BE20](v219);
  v213 = &v205 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD088, &qword_25269C8B8);
  MEMORY[0x28223BE20](v21);
  v217 = &v205 - v22;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD090, &qword_25269C8C0);
  v212 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v211 = &v205 - v23;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD098, &qword_25269C8C8);
  MEMORY[0x28223BE20](v227);
  v25 = &v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v220 = &v205 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0A0, &qword_25269C8D0);
  MEMORY[0x28223BE20](v28 - 8);
  v238 = &v205 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v250 = &v205 - v31;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0A8, &qword_25269C8D8);
  MEMORY[0x28223BE20](v252);
  v253 = (&v205 - v32);
  v33 = sub_25268DF70();
  v34 = *(v33 - 8);
  v256 = v33;
  v257 = v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v205 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v205 - v38;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0B0, &qword_25269C8E0);
  MEMORY[0x28223BE20](v260);
  v254 = &v205 - v40;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0B8, &qword_25269C8E8);
  MEMORY[0x28223BE20](v258);
  v259 = (&v205 - v41);
  v42 = sub_25268E000();
  v264 = *(v42 - 8);
  v265 = v42;
  MEMORY[0x28223BE20](v42);
  v262 = &v205 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25268F940();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v247 = &v205 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v205 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0C0, &qword_25269C8F0);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v205 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v263 = &v205 - v54;
  v246 = *(a1 + 7);
  sub_25268DF40();
  v55 = sub_25268F920();
  v56 = *(v45 + 8);
  v248 = v44;
  v245 = v56;
  v56(v49, v44);
  v57 = *(type metadata accessor for AlarmAndTimerControlContentView(0) + 24);
  v58 = *(v55 + 16);
  v251 = a1;
  v249 = v57;
  if (v58 && (v59 = sub_252367880(&a1[v57]), (v60 & 1) != 0))
  {
    (*(v264 + 16))(v263, *(v55 + 56) + *(v264 + 72) * v59, v265);
    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = v263;
  v63 = v61;
  v64 = v264;
  v65 = v265;
  (*(v264 + 56))(v263, v63, 1, v265);
  sub_25237153C(v62, v52, &qword_27F4DD0C0, &qword_25269C8F0);
  if ((*(v64 + 48))(v52, 1, v65) == 1)
  {
    sub_252372288(v52, &qword_27F4DD0C0, &qword_25269C8F0);
    v66 = sub_252692C40();
    v68 = v67;
    v69 = sub_252692C40();
    v71 = v70;
    swift_bridgeObjectRelease_n();
    v72 = v259;
    *v259 = v66;
    v72[1] = v68;
    v72[2] = 0;
    v72[3] = 0;
    v72[4] = v69;
    v72[5] = v71;
    v72[6] = 0;
    v72[7] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0C8, &qword_25269C8F8);
    sub_252457B68();
    sub_252400FC8(&qword_27F4DD0F8, &qword_27F4DD0C8, &qword_25269C8F8, MEMORY[0x277CE14C0]);
    sub_252691470();
    return sub_252372288(v62, &qword_27F4DD0C0, &qword_25269C8F0);
  }

  v209 = v21;
  v210 = v25;
  (*(v64 + 32))(v262, v52, v65);
  sub_25268DFC0();
  v74 = *MEMORY[0x277D15170];
  v76 = v256;
  v75 = v257;
  v77 = v257 + 104;
  v78 = *(v257 + 104);
  v78(v36, v74, v256);
  v79 = MEMORY[0x25309FAD0](v39, v36);
  v82 = *(v75 + 8);
  v81 = v75 + 8;
  v80 = v82;
  v82(v36, v76);
  v82(v39, v76);
  if ((v79 & 1) == 0)
  {
    sub_25268DFD0();
    v78(v36, v74, v76);
    v83 = MEMORY[0x25309FAD0](v39, v36);
    v80(v36, v76);
    v80(v39, v76);
    if ((v83 & 1) == 0)
    {
      v94 = v262;
      sub_25268DFC0();
      v95 = *MEMORY[0x277D15180];
      v207 = v77;
      v78(v36, v95, v76);
      v96 = MEMORY[0x25309FAD0](v39, v36);
      v80(v36, v76);
      v206 = v80;
      v80(v39, v76);
      v93 = v94;
      v257 = v81;
      v208 = v36;
      v97 = v249;
      v98 = v78;
      if (v96 & 1) != 0 || (sub_25268DFD0(), v99 = v208, v100 = v95, v101 = v256, v78(v208, v100, v256), v102 = MEMORY[0x25309FAD0](v39, v99), v103 = v99, v104 = v206, v206(v103, v101), v104(v39, v101), (v102))
      {
        v105 = v247;
        sub_25268DF40();
        v106 = sub_25268F930();
        v245(v105, v248);
        if (v106 != 2)
        {
          v126 = sub_252692C40();
          v128 = v127;
          v129 = sub_252692C40();
          v131 = v130;

          v266 = v126;
          v267 = v128;
          v268 = v129;
          v269 = v131;
          v270 = 1;
          sub_252457CA4();
          sub_252691470();
          v132 = v273;
          v133 = v272;
          v134 = v253;
          *v253 = v271;
          v134[1] = v133;
          *(v134 + 32) = v132;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0E0, &qword_25269C900);
          sub_252457C20();
          sub_252400FC8(&qword_27F4DD0F0, &qword_27F4DD020, &qword_25269C850, MEMORY[0x277CE14C0]);
          v92 = v254;
          sub_252691470();
          goto LABEL_11;
        }
      }

      sub_25268DFC0();
      v107 = v208;
      LODWORD(v247) = *MEMORY[0x277D15188];
      v108 = v39;
      v109 = v256;
      v248 = v98;
      (v98)(v208);
      v110 = MEMORY[0x25309FAD0](v39, v107);
      v111 = v206;
      v206(v107, v109);
      v111(v108, v109);
      v205 = v108;
      if (v110 & 1) != 0 || (sub_25268DFC0(), v112 = sub_25268DF50(), v111(v108, v109), (v112))
      {
        v113 = v251;
        v114 = sub_252454410();
        v115 = sub_252691A00();
        v246 = &v205;
        MEMORY[0x28223BE20](v115);
        *(&v205 - 2) = v93;
        *(&v205 - 1) = v113;
        if (v114)
        {
          v117 = sub_25268DFE0();
          v118 = *(type metadata accessor for AlarmsControlView(0) + 28);
          v119 = sub_25268DA10();
          v120 = v213;
          (*(*(v119 - 8) + 16))(&v213[v118], &v113[v97], v119);
          sub_25268DFC0();
          KeyPath = swift_getKeyPath();
          LOBYTE(v271) = 0;
          *(v120 + 72) = swift_getKeyPath();
          *(v120 + 112) = 0;
          *v120 = KeyPath;
          *(v120 + 65) = 0;
          *(v120 + 120) = v117;
          v122 = sub_252692980();
          v123 = sub_25268DFE0();
          v124 = (v120 + *(v219 + 36));
          *v124 = v122;
          v124[1] = v123;
          sub_25237153C(v120, v217, &qword_27F4DD080, &qword_25269C8B0);
          swift_storeEnumTagMultiPayload();
          sub_252400FC8(&qword_27F4DD110, &qword_27F4DD090, &qword_25269C8C0, MEMORY[0x277CDD6E0]);
          sub_252457DB0();
          v125 = v210;
          sub_252691470();
          sub_252372288(v120, &qword_27F4DD080, &qword_25269C8B0);
        }

        else
        {
          MEMORY[0x28223BE20](v116);
          *(&v205 - 2) = sub_2524580C4;
          *(&v205 - 1) = v135;
          sub_252457DB0();
          v136 = v211;
          sub_252690820();
          v137 = v212;
          v138 = v218;
          (*(v212 + 16))(v217, v136, v218);
          swift_storeEnumTagMultiPayload();
          sub_252400FC8(&qword_27F4DD110, &qword_27F4DD090, &qword_25269C8C0, MEMORY[0x277CDD6E0]);
          v125 = v210;
          sub_252691470();
          (*(v137 + 8))(v136, v138);
        }

        v139 = v220;
        sub_2523714D4(v125, v220, &qword_27F4DD098, &qword_25269C8C8);
        sub_25237153C(v139, v229, &qword_27F4DD098, &qword_25269C8C8);
        swift_storeEnumTagMultiPayload();
        sub_252457CF8();
        sub_252457CA4();
        v140 = v230;
        sub_252691470();
        sub_25237153C(v140, v237, &qword_27F4DD078, &qword_25269C8A8);
        swift_storeEnumTagMultiPayload();
        sub_252457E98(&qword_27F4DD100, &qword_27F4DD078, &qword_25269C8A8, sub_252457CF8);
        sub_252691470();
        sub_252372288(v140, &qword_27F4DD078, &qword_25269C8A8);
        sub_252372288(v139, &qword_27F4DD098, &qword_25269C8C8);
        v111 = v206;
      }

      else
      {
        sub_25268DFC0();
        v173 = v208;
        v248(v208, *MEMORY[0x277D15190], v109);
        v174 = MEMORY[0x25309FAD0](v108, v173);
        v111(v173, v109);
        v111(v108, v109);
        if (v174)
        {
          v175 = sub_252692C40();
          v176 = v229;
          *v229 = v175;
          v176[1] = v177;
          v176[2] = 0;
          v176[3] = 0;
          swift_storeEnumTagMultiPayload();
          sub_252457CF8();
          sub_252457CA4();
          v178 = v230;
          sub_252691470();
          sub_25237153C(v178, v237, &qword_27F4DD078, &qword_25269C8A8);
          swift_storeEnumTagMultiPayload();
          sub_252457E98(&qword_27F4DD100, &qword_27F4DD078, &qword_25269C8A8, sub_252457CF8);
          sub_252691470();
          sub_252372288(v178, &qword_27F4DD078, &qword_25269C8A8);
        }

        else
        {
          v185 = sub_252692C40();
          v187 = v186;
          sub_25245427C(&v271);
          v188 = *(&v272 + 1);
          v189 = v273;
          __swift_project_boxed_opaque_existential_1(&v271, *(&v272 + 1));
          v190 = *(v189 + 24);
          v191 = v189;
          v111 = v206;
          v192 = v190(v188, v191);
          v194 = v193;
          __swift_destroy_boxed_opaque_existential_1Tm(&v271);
          v195 = v237;
          *v237 = v185;
          v195[1] = v187;
          v195[2] = v192;
          v195[3] = v194;
          swift_storeEnumTagMultiPayload();
          sub_252457E98(&qword_27F4DD100, &qword_27F4DD078, &qword_25269C8A8, sub_252457CF8);
          sub_252457CA4();
          sub_252691470();
        }
      }

      v141 = v205;
      sub_25268DFD0();
      v142 = v208;
      v248(v208, v247, v109);
      v143 = MEMORY[0x25309FAD0](v141, v142);
      v111(v142, v109);
      v111(v141, v109);
      if (v143 & 1) != 0 || (sub_25268DFD0(), v144 = sub_25268DF50(), v111(v141, v109), (v144))
      {
        v145 = v251;
        v146 = sub_252454410();
        v147 = sub_252691A00();
        MEMORY[0x28223BE20](v147);
        *(&v205 - 2) = v93;
        *(&v205 - 1) = v145;
        if (v146)
        {
          v149 = sub_25268DFF0();
          v150 = *(type metadata accessor for TimersControlView(0) + 28);
          v151 = sub_25268DA10();
          v152 = v216;
          (*(*(v151 - 8) + 16))(&v216[v150], &v145[v249], v151);
          sub_25268DFD0();
          v153 = swift_getKeyPath();
          LOBYTE(v271) = 0;
          *(v152 + 72) = swift_getKeyPath();
          *(v152 + 112) = 0;
          *v152 = v153;
          *(v152 + 65) = 0;
          *(v152 + 120) = v149;
          v154 = sub_252692980();
          v155 = sub_25268DFF0();
          v156 = (v152 + *(v225 + 36));
          *v156 = v154;
          v156[1] = v155;
          sub_25237153C(v152, v223, &qword_27F4DD040, &qword_25269C870);
          swift_storeEnumTagMultiPayload();
          sub_252400FC8(&qword_27F4DD148, &qword_27F4DD050, &qword_25269C880, MEMORY[0x277CDD6E0]);
          sub_252457FD4();
          v157 = v222;
          sub_252691470();
          sub_252372288(v152, &qword_27F4DD040, &qword_25269C870);
        }

        else
        {
          MEMORY[0x28223BE20](v148);
          *(&v205 - 2) = sub_2524580BC;
          *(&v205 - 1) = v158;
          sub_252457FD4();
          v159 = v214;
          sub_252690820();
          v160 = v215;
          v161 = v224;
          (*(v215 + 16))(v223, v159, v224);
          swift_storeEnumTagMultiPayload();
          sub_252400FC8(&qword_27F4DD148, &qword_27F4DD050, &qword_25269C880, MEMORY[0x277CDD6E0]);
          v157 = v222;
          sub_252691470();
          (*(v160 + 8))(v159, v161);
        }

        v162 = v242;
        v163 = v226;
        sub_2523714D4(v157, v226, &qword_27F4DD058, &qword_25269C888);
        sub_25237153C(v163, v233, &qword_27F4DD058, &qword_25269C888);
        swift_storeEnumTagMultiPayload();
        sub_252457F1C();
        sub_252457CA4();
        v164 = v234;
        sub_252691470();
        sub_25237153C(v164, v243, &qword_27F4DD038, &qword_25269C868);
        swift_storeEnumTagMultiPayload();
        sub_252457E98(&qword_27F4DD138, &qword_27F4DD038, &qword_25269C868, sub_252457F1C);
        sub_252691470();
        sub_252372288(v164, &qword_27F4DD038, &qword_25269C868);
        v165 = v163;
        v166 = &qword_27F4DD058;
        v167 = &qword_25269C888;
      }

      else
      {
        sub_25268DFD0();
        v179 = v208;
        v248(v208, *MEMORY[0x277D15190], v109);
        v180 = MEMORY[0x25309FAD0](v141, v179);
        v111(v179, v109);
        v111(v141, v109);
        if ((v180 & 1) == 0)
        {
          v196 = sub_252692C40();
          v198 = v197;
          sub_25245427C(&v271);
          v199 = *(&v272 + 1);
          v200 = v273;
          __swift_project_boxed_opaque_existential_1(&v271, *(&v272 + 1));
          v201 = (*(v200 + 32))(v199, v200);
          v203 = v202;
          __swift_destroy_boxed_opaque_existential_1Tm(&v271);
          v204 = v243;
          *v243 = v196;
          v204[1] = v198;
          v204[2] = v201;
          v204[3] = v203;
          swift_storeEnumTagMultiPayload();
          sub_252457E98(&qword_27F4DD138, &qword_27F4DD038, &qword_25269C868, sub_252457F1C);
          sub_252457CA4();
          v162 = v242;
          sub_252691470();
          goto LABEL_29;
        }

        v181 = sub_252692C40();
        v182 = v233;
        *v233 = v181;
        v182[1] = v183;
        v182[2] = 0;
        v182[3] = 0;
        swift_storeEnumTagMultiPayload();
        sub_252457F1C();
        sub_252457CA4();
        v184 = v234;
        sub_252691470();
        sub_25237153C(v184, v243, &qword_27F4DD038, &qword_25269C868);
        swift_storeEnumTagMultiPayload();
        sub_252457E98(&qword_27F4DD138, &qword_27F4DD038, &qword_25269C868, sub_252457F1C);
        v162 = v242;
        sub_252691470();
        v165 = v184;
        v166 = &qword_27F4DD038;
        v167 = &qword_25269C868;
      }

      sub_252372288(v165, v166, v167);
LABEL_29:
      v168 = v250;
      v169 = v238;
      sub_25237153C(v250, v238, &qword_27F4DD0A0, &qword_25269C8D0);
      v170 = v239;
      sub_25237153C(v162, v239, &qword_27F4DD060, &qword_25269C890);
      v171 = v244;
      sub_25237153C(v169, v244, &qword_27F4DD0A0, &qword_25269C8D0);
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD170, &qword_25269C918);
      sub_25237153C(v170, v171 + *(v172 + 48), &qword_27F4DD060, &qword_25269C890);
      sub_252372288(v170, &qword_27F4DD060, &qword_25269C890);
      sub_252372288(v169, &qword_27F4DD0A0, &qword_25269C8D0);
      sub_25237153C(v171, v253, &qword_27F4DD020, &qword_25269C850);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0E0, &qword_25269C900);
      sub_252457C20();
      sub_252400FC8(&qword_27F4DD0F0, &qword_27F4DD020, &qword_25269C850, MEMORY[0x277CE14C0]);
      v92 = v254;
      sub_252691470();
      sub_252372288(v171, &qword_27F4DD020, &qword_25269C850);
      sub_252372288(v162, &qword_27F4DD060, &qword_25269C890);
      sub_252372288(v168, &qword_27F4DD0A0, &qword_25269C8D0);
      goto LABEL_10;
    }
  }

  v84 = sub_252692C40();
  v86 = v85;
  v87 = sub_252692C40();
  v266 = v84;
  v267 = v86;
  v268 = v87;
  v269 = v88;
  v270 = 0;
  sub_252457CA4();
  sub_252691470();
  v89 = v273;
  v90 = v272;
  v91 = v253;
  *v253 = v271;
  v91[1] = v90;
  *(v91 + 32) = v89;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0E0, &qword_25269C900);
  sub_252457C20();
  sub_252400FC8(&qword_27F4DD0F0, &qword_27F4DD020, &qword_25269C850, MEMORY[0x277CE14C0]);
  v92 = v254;
  sub_252691470();
LABEL_10:
  v93 = v262;
LABEL_11:
  sub_25237153C(v92, v259, &qword_27F4DD0B0, &qword_25269C8E0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD0C8, &qword_25269C8F8);
  sub_252457B68();
  sub_252400FC8(&qword_27F4DD0F8, &qword_27F4DD0C8, &qword_25269C8F8, MEMORY[0x277CE14C0]);
  sub_252691470();
  sub_252372288(v92, &qword_27F4DD0B0, &qword_25269C8E0);
  sub_252372288(v263, &qword_27F4DD0C0, &qword_25269C8F0);
  return (*(v264 + 8))(v93, v265);
}

uint64_t sub_252456C5C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_25268DFE0();
  v6 = *(type metadata accessor for AlarmAndTimerControlContentView(0) + 24);
  v7 = *(type metadata accessor for AlarmsControlView(0) + 28);
  v8 = sub_25268DA10();
  (*(*(v8 - 8) + 16))(a3 + v7, a2 + v6, v8);
  sub_25268DFC0();
  KeyPath = swift_getKeyPath();
  *(a3 + 72) = swift_getKeyPath();
  *(a3 + 112) = 0;
  *a3 = KeyPath;
  *(a3 + 65) = 0;
  *(a3 + 120) = v5;
  v10 = sub_252692980();
  v11 = sub_25268DFE0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD080, &qword_25269C8B0);
  v13 = (a3 + *(result + 36));
  *v13 = v10;
  v13[1] = v11;
  return result;
}

uint64_t sub_252456D74@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_25268DFF0();
  v6 = *(type metadata accessor for AlarmAndTimerControlContentView(0) + 24);
  v7 = *(type metadata accessor for TimersControlView(0) + 28);
  v8 = sub_25268DA10();
  (*(*(v8 - 8) + 16))(a3 + v7, a2 + v6, v8);
  sub_25268DFD0();
  KeyPath = swift_getKeyPath();
  *(a3 + 72) = swift_getKeyPath();
  *(a3 + 112) = 0;
  *a3 = KeyPath;
  *(a3 + 65) = 0;
  *(a3 + 120) = v5;
  v10 = sub_252692980();
  v11 = sub_25268DFF0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD040, &qword_25269C870);
  v13 = (a3 + *(result + 36));
  *v13 = v10;
  v13[1] = v11;
  return result;
}

uint64_t sub_252456E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v68 = a5;
  v9 = sub_252692780();
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  MEMORY[0x28223BE20](v9);
  v75 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = &v64 - v13;
  sub_252692770();
  v78 = a1;
  v79 = a2;
  sub_252404480();

  v14 = sub_252691D50();
  v16 = v15;
  v18 = v17;
  sub_252691B80();
  sub_252691AE0();

  v67 = sub_252691D00();
  v72 = v19;
  v73 = v20;
  v22 = v21;

  sub_2524228D8(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  if (a4)
  {
    v78 = a3;
    v79 = a4;

    v23 = sub_252691D50();
    v25 = v24;
    v27 = v26;
    sub_252691B80();
    v28 = v22;
    v29 = sub_252691D00();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_2524228D8(v23, v25, v27 & 1);

    v36 = swift_getKeyPath();
    v65 = v33 & 1;
    v66 = v29;
    v37 = v29;
    v22 = v28;
    v38 = v31;
    sub_25235EABC(v37, v31, v33 & 1);
    v39 = v35;

    v40 = v36;

    v41 = 1;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  v42 = v69;
  v43 = *(v70 + 16);
  v44 = v75;
  v43(v75, v74, v69);
  LOBYTE(v78) = 0;
  v77 = v22 & 1;
  v76 = 0;
  v45 = v68;
  v46 = v42;
  v43(v68, v44, v42);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD1A0, &qword_25269CA00);
  v48 = &v45[v47[12]];
  v49 = v78;
  *v48 = 0x4049000000000000;
  v48[8] = v49;
  v50 = &v45[v47[16]];
  v51 = v77;
  v52 = v67;
  v53 = v72;
  v54 = v73;
  *v50 = v67;
  *(v50 + 1) = v53;
  v55 = v53;
  v50[16] = v51;
  v56 = KeyPath;
  *(v50 + 3) = v54;
  *(v50 + 4) = v56;
  v50[40] = 1;
  v57 = &v45[v47[20]];
  LOBYTE(v53) = v76;
  *v57 = 0x4024000000000000;
  v57[8] = v53;
  v58 = &v45[v47[24]];
  sub_25235EABC(v52, v55, v51);

  v59 = v65;
  v60 = v66;
  sub_252458120(v66, v38, v65, v39, v40);
  v61 = sub_252458170(v60, v38, v59, v39, v40);
  *v58 = v60;
  *(v58 + 1) = v38;
  *(v58 + 2) = v59;
  *(v58 + 3) = v39;
  *(v58 + 4) = v40;
  v58[40] = v41;
  v62 = *(v70 + 8);
  v62(v74, v46, v61);
  sub_252458170(v60, v38, v59, v39, v40);
  sub_2524228D8(v52, v72, v77);

  return (v62)(v75, v46);
}

uint64_t sub_2524572AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_2526912E0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD190, &qword_25269C9C0);
  sub_252456E90(v3, v4, v6, v5, (a1 + *(v7 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD198, &qword_25269C9C8);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_252457344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524573AC()
{
  v2 = *(type metadata accessor for AlarmAndTimerControlView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2523E233C;

  return sub_2524539BC(v0 + v3);
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for AlarmAndTimerControlView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_25268DA10();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252457560()
{
  v1 = *(type metadata accessor for AlarmAndTimerControlView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252453D60(v2);
}

uint64_t sub_2524575C0(uint64_t a1)
{
  v4 = *(type metadata accessor for AlarmAndTimerControlView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_252453F40(a1, v6, v7, v1 + v5);
}

void sub_2524576D8(uint64_t a1)
{
  sub_25245778C(319);
  if (v1 <= 0x3F)
  {
    sub_2524533A4(319);
    if (v2 <= 0x3F)
    {
      sub_25268DA10();
      if (v3 <= 0x3F)
      {
        sub_252420F5C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25245778C(uint64_t a1)
{
  if (!qword_27F4DCFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DCFE8, &qword_25269C7F0);
    v1 = sub_2526908A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DCFE0);
    }
  }
}

uint64_t sub_252457820(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2524578A4()
{
  result = qword_27F4DD000;
  if (!qword_27F4DD000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DCFA8, &qword_25269C720);
    sub_252457930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD000);
  }

  return result;
}

unint64_t sub_252457930()
{
  result = qword_27F4DD008;
  if (!qword_27F4DD008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DCFB8, &unk_25269C790);
    sub_252457A1C(&qword_27F4DD010, type metadata accessor for AlarmAndTimerControlContentView, &unk_25269C7F8);
    sub_252457A1C(&qword_27F4DD018, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD008);
  }

  return result;
}

uint64_t sub_252457A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252457A80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  if ((a10 & 1) == 0)
  {
  }

  return v10;
}

uint64_t sub_252457A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252457AF8@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmAndTimerControlContentView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_252454854(v4, a1);
}

unint64_t sub_252457B68()
{
  result = qword_27F4DD0D0;
  if (!qword_27F4DD0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD0B0, &qword_25269C8E0);
    sub_252457C20();
    sub_252400FC8(&qword_27F4DD0F0, &qword_27F4DD020, &qword_25269C850, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD0D0);
  }

  return result;
}

unint64_t sub_252457C20()
{
  result = qword_27F4DD0D8;
  if (!qword_27F4DD0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD0E0, &qword_25269C900);
    sub_252457CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD0D8);
  }

  return result;
}

unint64_t sub_252457CA4()
{
  result = qword_27F4DD0E8;
  if (!qword_27F4DD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD0E8);
  }

  return result;
}

unint64_t sub_252457CF8()
{
  result = qword_27F4DD108;
  if (!qword_27F4DD108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD098, &qword_25269C8C8);
    sub_252400FC8(&qword_27F4DD110, &qword_27F4DD090, &qword_25269C8C0, MEMORY[0x277CDD6E0]);
    sub_252457DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD108);
  }

  return result;
}

unint64_t sub_252457DB0()
{
  result = qword_27F4DD118;
  if (!qword_27F4DD118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD080, &qword_25269C8B0);
    sub_252457A1C(&qword_27F4DD120, type metadata accessor for AlarmsControlView, &unk_25269CCB0);
    sub_252400FC8(&qword_27F4DD128, &qword_27F4DD130, &qword_25269C908, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD118);
  }

  return result;
}

uint64_t sub_252457E98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_252457CA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252457F1C()
{
  result = qword_27F4DD140;
  if (!qword_27F4DD140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD058, &qword_25269C888);
    sub_252400FC8(&qword_27F4DD148, &qword_27F4DD050, &qword_25269C880, MEMORY[0x277CDD6E0]);
    sub_252457FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD140);
  }

  return result;
}

unint64_t sub_252457FD4()
{
  result = qword_27F4DD150;
  if (!qword_27F4DD150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD040, &qword_25269C870);
    sub_252457A1C(&qword_27F4DD158, type metadata accessor for TimersControlView, &unk_25269D2C0);
    sub_252400FC8(&qword_27F4DD160, &qword_27F4DD168, &qword_25269C910, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD150);
  }

  return result;
}

uint64_t sub_252458120(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_25235EABC(result, a2, a3 & 1);
  }

  return result;
}

double sub_252458170(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_2524228D8(a1, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_2524581C0()
{
  result = qword_27F4DD1A8;
  if (!qword_27F4DD1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD198, &qword_25269C9C8);
    sub_252400FC8(&qword_27F4DD1B0, &qword_27F4DD1B8, qword_25269CA08, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD1A8);
  }

  return result;
}

uint64_t sub_2524582D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25245833C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_252458370()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t type metadata accessor for AlarmCell(uint64_t a1)
{
  result = qword_27F4DD1C0;
  if (!qword_27F4DD1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252458418(uint64_t a1)
{
  sub_25268E5F0();
  if (v1 <= 0x3F)
  {
    sub_25245778C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2524584B8@<X0>(void *a1@<X8>)
{
  v3 = sub_2526910F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AlarmCell(0);
  sub_25245B5E0(v1 + *(v7 + 20), v10);
  if (v11 == 1)
  {
    return sub_25235E1A4(v10, a1);
  }

  sub_252692F00();
  v9 = sub_2526919C0();
  sub_252690570();

  sub_2526910E0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_252458620@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v80 = sub_2526917F0();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD1D0, &qword_25269CAE0);
  MEMORY[0x28223BE20](v76);
  v74 = (&v62 - v3);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD1D8, &unk_25269CAE8);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v62 - v4;
  v5 = sub_25268D8F0();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_25268D8C0();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_25268D8D0();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_25268D910();
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v16);
  v67 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8, &qword_252696D10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - v19;
  v21 = sub_25268D990();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  v73 = v1;
  sub_25268E5A0();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_252372288(v20, &qword_27F4DB2D8, &qword_252696D10);
    sub_252691240();
    v28 = sub_252691D30();
    v30 = v29;
    v32 = v31;
    v34 = v33;
  }

  else
  {
    (*(v22 + 32))(v27, v20, v21);
    v35 = *(v22 + 16);
    v62 = v24;
    v36 = v35(v24, v27, v21);
    MEMORY[0x25309F230](v36);
    sub_25268D8B0();
    sub_25268D8A0();
    (*(v66 + 8))(v8, v68);
    sub_25268D890();
    (*(v63 + 8))(v10, v65);
    v37 = *(v64 + 8);
    v38 = v69;
    v37(v12, v69);
    v39 = v70;
    sub_25268D8E0();
    sub_25268D900();
    (*(v71 + 8))(v39, v72);
    v37(v15, v38);
    sub_25245B748(&qword_27F4DD200, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_25245B748(&qword_27F4DBC68, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v28 = sub_252691D20();
    v30 = v40;
    v32 = v41;
    v34 = v42;
    (*(v22 + 8))(v27, v21);
  }

  v43 = sub_252692920();
  v44 = v74;
  *v74 = v43;
  *(v44 + 8) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD1E0, &qword_25269CAF8);
  sub_252458EEC(v73, v28, v30, v32 & 1, v34, v44 + *(v46 + 44));
  v47 = v76;
  v48 = (v44 + *(v76 + 36));
  v49 = *(sub_252690D30() + 20);
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_252691260();
  (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
  __asm { FMOV            V0.2D, #10.0 }

  *v48 = _Q0;
  *&v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8, &qword_25269CB00) + 36)] = 256;
  v57 = v75;
  sub_2526917E0();
  v58 = sub_25245AB84();
  v59 = v77;
  sub_252692020();
  (*(v78 + 8))(v57, v80);
  sub_252372288(v44, &qword_27F4DD1D0, &qword_25269CAE0);
  v83 = v47;
  v84 = v58;
  swift_getOpaqueTypeConformance2();
  v60 = v81;
  sub_252691FA0();
  sub_2524228D8(v28, v30, v32 & 1);

  return (*(v79 + 8))(v59, v60);
}

uint64_t sub_252458EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, int a4@<W3>, void (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v37 = a3;
  v38 = a5;
  v35 = a4;
  v36 = a2;
  v34 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD208, &qword_25269CB10);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for ControlBackgroundView(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  KeyPath = swift_getKeyPath();
  v39 = 0;
  *v20 = KeyPath;
  v20[65] = 0;
  v22 = v15[7];
  *&v20[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210, &qword_25269CB70);
  swift_storeEnumTagMultiPayload();
  v23 = &v20[v15[8]];
  v20[v15[9]] = 2;
  v24 = v15[10];
  v25 = [objc_opt_self() systemGray4Color];
  *&v20[v24] = sub_252692240();
  *v23 = 0;
  v23[8] = 1;
  *v13 = sub_2526911D0();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD218, &qword_25269CB78);
  sub_2524591CC(v34, v36, v37, v35 & 1, v38, &v13[*(v26 + 44)]);
  LOBYTE(v23) = sub_252691A20();
  sub_252690760();
  v27 = &v13[*(v8 + 44)];
  *v27 = v23;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_25245ACC4(v20, v17, type metadata accessor for ControlBackgroundView);
  sub_25237153C(v13, v10, &qword_27F4DD208, &qword_25269CB10);
  sub_25245ACC4(v17, a6, type metadata accessor for ControlBackgroundView);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD220, &qword_25269CB80);
  sub_25237153C(v10, a6 + *(v32 + 48), &qword_27F4DD208, &qword_25269CB10);
  sub_252372288(v13, &qword_27F4DD208, &qword_25269CB10);
  sub_25245AC68(v20);
  sub_252372288(v10, &qword_27F4DD208, &qword_25269CB10);
  return sub_25245AC68(v17);
}

uint64_t sub_2524591CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, int a4@<W3>, void (*a5)(char *, char *, uint64_t)@<X4>, char *a6@<X8>)
{
  v135 = a5;
  v124 = a4;
  v125 = a2;
  v126 = a3;
  v118 = a6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD228, &qword_25269CB88) - 8;
  MEMORY[0x28223BE20](v116);
  v117 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v134 = v96 - v9;
  v114 = sub_2526912C0();
  v110 = *(v114 - 8);
  v111 = v114 - 8;
  v112 = v110;
  MEMORY[0x28223BE20](v114 - 8);
  v113 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2526917F0();
  v107 = *(v11 - 8);
  v108 = v11;
  MEMORY[0x28223BE20](v11);
  v101 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD230, &qword_25269CB90);
  v14 = *(v13 - 8);
  v102 = v13;
  v103 = v14;
  MEMORY[0x28223BE20](v13);
  v98 = v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD238, &qword_25269CB98);
  v17 = *(v16 - 8);
  v104 = v16;
  v105 = v17;
  MEMORY[0x28223BE20](v16);
  v99 = v96 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD240, &qword_25269CBA0);
  MEMORY[0x28223BE20](v109);
  v132 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v100 = v96 - v21;
  MEMORY[0x28223BE20](v22);
  v106 = v96 - v23;
  MEMORY[0x28223BE20](v24);
  v123 = v96 - v25;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD248, &qword_25269CBA8);
  v133 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v130 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v136 = v96 - v28;
  v29 = type metadata accessor for AlarmCell(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD250, &qword_25269CBB0);
  v131 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v127 = v96 - v34;
  v35 = sub_2526912F0();
  LOBYTE(v148) = 1;
  v122 = a1;
  sub_25245A244(v153);
  *(&v151[6] + 7) = v154;
  *(&v151[4] + 7) = v153[2];
  *(&v151[2] + 7) = v153[1];
  *(v151 + 7) = v153[0];
  *(&v149[1] + 1) = *&v151[2];
  *(&v149[2] + 1) = *&v151[4];
  *(&v149[3] + 1) = *&v151[6];
  v36 = v148;
  v148 = v35;
  LOBYTE(v149[0]) = v36;
  *&v149[4] = *(&v154 + 1);
  *(v149 + 1) = *v151;
  WORD4(v149[4]) = 256;
  *&v149[5] = 0x4000000000000000;
  BYTE8(v149[5]) = 0;
  v121 = type metadata accessor for AlarmCell;
  v119 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25245ACC4(a1, v119, type metadata accessor for AlarmCell);
  v37 = *(v30 + 80);
  v38 = (v37 + 16) & ~v37;
  v120 = v31;
  v39 = swift_allocObject();
  sub_25245AD2C(v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD258, &qword_25269CBB8);
  sub_25245AD94();
  sub_252691E60();

  v155[3] = v149[2];
  v155[4] = v149[3];
  v156[0] = v149[4];
  *(v156 + 9) = *(&v149[4] + 9);
  v155[0] = v148;
  v155[1] = v149[0];
  v155[2] = v149[1];
  sub_252372288(v155, &qword_27F4DD258, &qword_25269CBB8);
  v40 = sub_252692310();
  sub_252692920();
  sub_252690D70();
  *&v139 = v40;
  WORD4(v139) = 256;
  BYTE10(v139) = 0;
  *&v140 = 0x3FF0000000000000;
  v41 = v121;
  v42 = v122;
  v43 = v119;
  sub_25245ACC4(v122, v119, v121);
  v97 = v38;
  v44 = swift_allocObject() + v38;
  v45 = v43;
  sub_25245AD2C(v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD2B8, &qword_25269CBE8);
  sub_25245AFE0();
  sub_252691E60();

  v149[5] = v145;
  v149[6] = v146;
  v150 = v147;
  v149[1] = v141;
  v149[2] = v142;
  v149[3] = v143;
  v149[4] = v144;
  v148 = v139;
  v149[0] = v140;
  sub_252372288(&v148, &qword_27F4DD2B8, &qword_25269CBE8);
  v46 = v41;
  sub_25245ACC4(v42, v45, v41);
  sub_252692E00();
  v47 = sub_252692DF0();
  v48 = (v37 + 32) & ~v37;
  v96[0] = v37;
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  *(v49 + 16) = v47;
  *(v49 + 24) = v50;
  sub_25245AD2C(v45, v49 + v48);
  sub_25245ACC4(v42, v45, v46);
  v51 = sub_252692DF0();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = MEMORY[0x277D85700];
  sub_25245AD2C(v45, v52 + v48);
  sub_2526926E0();
  v54 = *(&v139 + 1);
  v53 = v139;
  v55 = v140;

  v56 = v98;
  v96[1] = v54;
  v96[2] = v53;
  v57 = v54;
  sub_252692600();
  v58 = v101;
  sub_2526917C0();
  v59 = sub_252400FC8(&qword_27F4DD2F8, &qword_27F4DD230, &qword_25269CB90, MEMORY[0x277CDF068]);
  v60 = v99;
  v61 = v102;
  sub_252692020();
  (*(v107 + 8))(v58, v108);
  (*(v103 + 8))(v56, v61);
  *&v139 = v61;
  *(&v139 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  v62 = v100;
  v63 = v104;
  sub_252691FA0();
  (*(v105 + 8))(v60, v63);
  v139 = __PAIR128__(v57, v53);
  LOBYTE(v140) = v55;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300, &unk_2526A0CD0);
  MEMORY[0x2530A4210](v137, v64);
  *&v139 = sub_252692C40();
  *(&v139 + 1) = v65;
  sub_252404480();
  v66 = v106;
  sub_252690BE0();

  sub_252372288(v62, &qword_27F4DD240, &qword_25269CBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD308, &unk_25269CC10);
  v67 = v112;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_252694E90;
  sub_2526912B0();
  *&v139 = v68;
  sub_25245B748(&qword_27F4DD310, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318, &qword_25269D6A0);
  sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318, &qword_25269D6A0, MEMORY[0x277D83970]);
  v70 = v113;
  v69 = v114;
  sub_252693190();
  v71 = v123;
  sub_252690C00();
  (*(v67 + 8))(v70, v69);
  sub_252372288(v66, &qword_27F4DD240, &qword_25269CBA0);
  v72 = sub_252692310();
  sub_252692920();
  sub_2526909C0();
  *(&v138[2] + 5) = v152;
  *(&v138[1] + 5) = *&v151[11];
  *(v138 + 5) = *&v151[9];
  *(v137 + 11) = v138[0];
  *&v137[0] = v72;
  WORD4(v137[0]) = 256;
  BYTE10(v137[0]) = 0;
  *(&v137[1] + 11) = v138[1];
  *(&v137[2] + 11) = v138[2];
  *(&v137[3] + 1) = *(&v152 + 1);
  v73 = v119;
  sub_25245ACC4(v122, v119, v121);
  v74 = v97;
  v75 = swift_allocObject();
  sub_25245AD2C(v73, v75 + v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD328, &qword_25269CC20);
  sub_25245B49C();
  v76 = v134;
  sub_252691E60();

  v139 = v137[0];
  v140 = v137[1];
  v141 = v137[2];
  v142 = v137[3];
  sub_252372288(&v139, &qword_27F4DD328, &qword_25269CC20);
  v77 = sub_252692920();
  v79 = v78;
  v80 = v76 + *(v116 + 44);
  v81 = v76;
  sub_25245A83C(v125, v126, v124 & 1, v135, v80);
  v82 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD338, &qword_25269CC28) + 36));
  *v82 = v77;
  v82[1] = v79;
  v126 = *(v131 + 16);
  v83 = v128;
  v84 = v129;
  v126(v128, v127, v129);
  v135 = *(v133 + 16);
  v85 = v130;
  v86 = v115;
  v135(v130, v136, v115);
  v87 = v132;
  sub_25237153C(v71, v132, &qword_27F4DD240, &qword_25269CBA0);
  v88 = v81;
  v89 = v117;
  sub_25237153C(v88, v117, &qword_27F4DD228, &qword_25269CB88);
  v90 = v118;
  v126(v118, v83, v84);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD340, &qword_25269CC30);
  v135(&v90[v91[12]], v85, v86);
  sub_25237153C(v87, &v90[v91[16]], &qword_27F4DD240, &qword_25269CBA0);
  sub_25237153C(v89, &v90[v91[20]], &qword_27F4DD228, &qword_25269CB88);

  sub_252372288(v134, &qword_27F4DD228, &qword_25269CB88);
  sub_252372288(v123, &qword_27F4DD240, &qword_25269CBA0);
  v92 = *(v133 + 8);
  v92(v136, v86);
  v93 = *(v131 + 8);
  v94 = v129;
  v93(v127, v129);
  sub_252372288(v89, &qword_27F4DD228, &qword_25269CB88);
  sub_252372288(v132, &qword_27F4DD240, &qword_25269CBA0);
  v92(v130, v86);
  return (v93)(v128, v94);
}

double sub_25245A244@<D0>(uint64_t a5@<X8>)
{
  sub_25245A4C0();
  sub_252404480();
  v6 = sub_252691D50();
  v8 = v7;
  v10 = v9;
  sub_252691BB0();
  sub_252691AE0();

  v11 = sub_252691D00();
  v13 = v12;
  v15 = v14;

  sub_2524228D8(v6, v8, v10 & 1);

  sub_2526915F0();
  v33 = sub_252691CD0();
  v34 = v16;
  v18 = v17;
  v32 = v19;
  sub_2524228D8(v11, v13, v15 & 1);

  sub_252691AF0();
  sub_252691AE0();

  sub_252691AB0();

  v20 = sub_252691D00();
  v22 = v21;
  v24 = v23;

  sub_2526915E0();
  v25 = sub_252691CD0();
  v27 = v26;
  LOBYTE(v8) = v28;
  v30 = v29;
  sub_2524228D8(v20, v22, v24 & 1);

  *a5 = v33;
  *(a5 + 8) = v18;
  *(a5 + 16) = v32 & 1;
  *(a5 + 24) = v34;
  *(a5 + 32) = v25;
  *(a5 + 40) = v27;
  *(a5 + 48) = v8 & 1;
  *(a5 + 56) = v30;
  sub_25235EABC(v33, v18, v32 & 1);

  sub_25235EABC(v25, v27, v8 & 1);

  sub_2524228D8(v25, v27, v8 & 1);

  sub_2524228D8(v33, v18, v32 & 1);

  return result;
}

uint64_t sub_25245A4C0()
{
  v0 = sub_25268E560();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25268E5B0();
  if (!v5)
  {
    v4 = sub_252692C40();
  }

  v6 = v4;
  v7 = v5;
  sub_25268E570();
  v8 = sub_25268E550();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v10 = *(v8 + 16);

  if (v10)
  {
    v17 = v6;
    v18 = v7;

    MEMORY[0x2530A4800](8236, 0xE200000000000000);

    v12 = v17;
    v11 = v18;
    sub_25268E570();
    v13 = sub_25268E540();
    v15 = v14;
    v9(v3, v0);
    v17 = v12;
    v18 = v11;

    MEMORY[0x2530A4800](v13, v15);

    return v17;
  }

  return v6;
}

uint64_t sub_25245A680()
{
  v0 = sub_25268DA10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290, &unk_25269AA10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-1] - v5;
  sub_2524584B8(v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_25268E590();
  (*(v1 + 56))(v6, 0, 1, v0);
  sub_25268E580();
  (*(v8 + 16))(v6, v3, v7, v8);
  (*(v1 + 8))(v3, v0);
  sub_252372288(v6, &qword_27F4DB290, &unk_25269AA10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_25245A83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a2;
  v21 = a4;
  v18 = a3;
  v19 = a1;
  v17[1] = a5;
  v5 = sub_2526917F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD348, &qword_25269CC38);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v13 = sub_2526912E0();
  LOBYTE(v27[0]) = 1;
  sub_25245AAE4(v25);
  v24[3] = *(v26 + 9);
  *(&v24[2] + 7) = v26[0];
  *(&v24[1] + 7) = v25[1];
  *(v24 + 7) = v25[0];
  *&v23[1] = v24[0];
  *&v23[17] = v24[1];
  *&v23[33] = v24[2];
  v22 = v13;
  v23[0] = v27[0];
  *&v23[49] = v24[3];
  v23[65] = 0;
  sub_2526917C0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD350, &qword_25269CC40);
  v15 = sub_25245B528();
  sub_252692020();
  (*(v6 + 8))(v8, v5);
  v27[2] = *&v23[16];
  v27[3] = *&v23[32];
  v27[4] = *&v23[48];
  v28 = *&v23[64];
  v27[0] = v22;
  v27[1] = *v23;
  sub_252372288(v27, &qword_27F4DD350, &qword_25269CC40);
  *&v22 = v14;
  *(&v22 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  sub_252691FA0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_25245AAE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2526923D0();
  v3 = sub_252691BB0();
  KeyPath = swift_getKeyPath();
  result = sub_2526915F0();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v3;
  *(a1 + 40) = result;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

unint64_t sub_25245AB84()
{
  result = qword_27F4DD1E8;
  if (!qword_27F4DD1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD1D0, &qword_25269CAE0);
    sub_252400FC8(&qword_27F4DD1F0, &qword_27F4DD1F8, &qword_25269CB08, MEMORY[0x277CE11A8]);
    sub_252400FC8(&qword_27F4DC2F0, &qword_27F4DC2D8, &qword_25269CB00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD1E8);
  }

  return result;
}

uint64_t sub_25245AC68(uint64_t a1)
{
  v2 = type metadata accessor for ControlBackgroundView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25245ACC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25245AD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25245AD94()
{
  result = qword_27F4DD260;
  if (!qword_27F4DD260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD258, &qword_25269CBB8);
    sub_25245AE78(&qword_27F4DD268, &qword_27F4DD270, &qword_25269CBC0, sub_25245AF28);
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0, &qword_25269CBE0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD260);
  }

  return result;
}

uint64_t sub_25245AE78(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_252400FC8(&qword_27F4DD298, &qword_27F4DD2A0, &qword_25269CBD8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25245AF28()
{
  result = qword_27F4DD278;
  if (!qword_27F4DD278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD280, &qword_25269CBC8);
    sub_252400FC8(&qword_27F4DD288, &qword_27F4DD290, &qword_25269CBD0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD278);
  }

  return result;
}

unint64_t sub_25245AFE0()
{
  result = qword_27F4DD2C0;
  if (!qword_27F4DD2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD2B8, &qword_25269CBE8);
    sub_25245AE78(&qword_27F4DD2C8, &qword_27F4DD2D0, &unk_25269CBF0, sub_25245B098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD2C0);
  }

  return result;
}

unint64_t sub_25245B098()
{
  result = qword_27F4DD2D8;
  if (!qword_27F4DD2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD2E0, &qword_2526A0200);
    sub_252400FC8(&qword_27F4DD2E8, &qword_27F4DD2F0, &unk_25269CC00, MEMORY[0x277CDF3A0]);
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0, &qword_25269CBE0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD2D8);
  }

  return result;
}

uint64_t sub_25245B17C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for AlarmCell(0);
  result = sub_25268E5D0();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = (type metadata accessor for AlarmCell(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_25268E5F0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for AlarmCell(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25268E5F0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_25245B49C()
{
  result = qword_27F4DD330;
  if (!qword_27F4DD330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD328, &qword_25269CC20);
    sub_25245B098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD330);
  }

  return result;
}

unint64_t sub_25245B528()
{
  result = qword_27F4DD358;
  if (!qword_27F4DD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD350, &qword_25269CC40);
    sub_252400FC8(&qword_27F4DD360, &qword_27F4DD368, &qword_25269CC48, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD358);
  }

  return result;
}

uint64_t sub_25245B5E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD178, &qword_25269C920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25245B650()
{
  result = qword_27F4DD370;
  if (!qword_27F4DD370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD378, &unk_25269CC80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD1D0, &qword_25269CAE0);
    sub_25245AB84();
    swift_getOpaqueTypeConformance2();
    sub_25245B748(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD370);
  }

  return result;
}

uint64_t sub_25245B748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AlarmsControlView(uint64_t a1)
{
  result = qword_27F4DD388;
  if (!qword_27F4DD388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25245B808(uint64_t a1)
{
  sub_252420F5C();
  if (v1 <= 0x3F)
  {
    sub_25245778C(319);
    if (v2 <= 0x3F)
    {
      sub_25245B8D4(319);
      if (v3 <= 0x3F)
      {
        sub_25268DA10();
        if (v4 <= 0x3F)
        {
          sub_25268DF70();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25245B8D4(uint64_t a1)
{
  if (!qword_27F4DD398)
  {
    sub_25268E5F0();
    v1 = sub_252692DD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DD398);
    }
  }
}

uint64_t sub_25245B948@<X0>(void *a1@<X8>)
{
  v3 = sub_2526910F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(v1 + 72, v9, &qword_27F4DD178, &qword_25269C920);
  if (v10 == 1)
  {
    return sub_25235E1A4(v9, a1);
  }

  sub_252692F00();
  v8 = sub_2526919C0();
  sub_252690570();

  sub_2526910E0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25245BAB4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v125 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3A8, &qword_25269CD08);
  MEMORY[0x28223BE20](v124);
  v103 = &v97 - v2;
  v3 = type metadata accessor for AlarmsControlView(0);
  v98 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = v4;
  v100 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3B0, &qword_25269CD10);
  MEMORY[0x28223BE20](v101);
  v102 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v114 = &v97 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3B8, &qword_25269CD18);
  MEMORY[0x28223BE20](v121);
  v123 = &v97 - v8;
  v113 = sub_252690B20();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3C0, &qword_25269CD20);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v97 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3C8, &qword_25269CD28);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v97 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3D0, &qword_25269CD30);
  MEMORY[0x28223BE20](v116);
  v111 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3D8, &qword_25269CD38);
  MEMORY[0x28223BE20](v13 - 8);
  v122 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v126 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3E0, &qword_25269CD40);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v120 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v97 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3E8, &qword_25269CD48);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v119 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  sub_252692770();
  v29 = sub_2526915F0();
  v30 = sub_252691A20();
  v31 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3F0, &qword_25269CD50) + 36)];
  *v31 = v29;
  v31[4] = v30;
  KeyPath = swift_getKeyPath();
  v33 = *(v24 + 44);
  v117 = v28;
  v34 = &v28[v33];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3F8, &qword_25269CD88);
  v36 = *(v35 + 28);
  sub_252692890();
  v37 = sub_2526928A0();
  v38 = *(*(v37 - 8) + 56);
  v38(v34 + v36, 0, 1, v37);
  *v34 = KeyPath;
  *v22 = sub_2526911D0();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD400, &qword_25269CD90);
  v40 = v115;
  sub_25245C918(v115, &v22[*(v39 + 44)]);
  v41 = swift_getKeyPath();
  v42 = *(v18 + 44);
  v118 = v22;
  v43 = &v22[v42];
  v44 = *(v35 + 28);
  sub_252692890();
  v45 = (v38)(v43 + v44, 0, 1, v37);
  *v43 = v41;
  if (*(*(v40 + 15) + 16))
  {
    MEMORY[0x28223BE20](v45);
    *(&v97 - 2) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD408, &qword_25269CD98);
    sub_25245F2EC();
    v46 = v104;
    sub_252691C10();
    v47 = sub_252400FC8(&qword_27F4DD470, &qword_27F4DD3C0, &qword_25269CD20, MEMORY[0x277CDE5A0]);
    v48 = v106;
    v49 = v107;
    sub_252692040();
    (*(v105 + 8))(v46, v49);
    v50 = v110;
    sub_252690B10();
    v130 = v49;
    v131 = v47;
    swift_getOpaqueTypeConformance2();
    v51 = v111;
    v52 = v109;
    v53 = v113;
    sub_252692210();
    (*(v112 + 8))(v50, v53);
    (*(v108 + 8))(v48, v52);
    v54 = swift_getKeyPath();
    v55 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD478, &qword_25269CDF8) + 36);
    *v55 = v54;
    *(v55 + 8) = 0x4024000000000000;
    *(v55 + 16) = 0;
    *(v51 + *(v116 + 36)) = 0x4024000000000000;
    sub_25237153C(v51, v123, &qword_27F4DD3D0, &qword_25269CD30);
    swift_storeEnumTagMultiPayload();
    sub_25245F624();
    sub_252400FC8(&qword_27F4DD4A0, &qword_27F4DD3A8, &qword_25269CD08, MEMORY[0x277CE14C0]);
    sub_252691470();
    sub_252372288(v51, &qword_27F4DD3D0, &qword_25269CD30);
  }

  else
  {
    v56 = v100;
    sub_25245FA3C(v40, v100, type metadata accessor for AlarmsControlView);
    v57 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v58 = swift_allocObject();
    v59 = sub_25245F860(v56, v58 + v57);
    MEMORY[0x28223BE20](v59);
    *(&v97 - 2) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4B0, &qword_25269CE18);
    sub_25245F8F8();
    v60 = v114;
    sub_252692550();
    v61 = sub_252692920();
    v63 = v62;
    v64 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4E0, &qword_25269CE30) + 36));
    *v64 = sub_252692920();
    v64[1] = v65;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4E8, &qword_25269CE38);
    sub_25245F090(v64 + *(v66 + 44));
    v67 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4F0, &qword_25269CE40) + 36));
    *v67 = v61;
    v67[1] = v63;
    v68 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4F8, &unk_25269CE48) + 36));
    v69 = *(sub_252690D30() + 20);
    v70 = *MEMORY[0x277CE0118];
    v71 = sub_252691260();
    (*(*(v71 - 8) + 104))(&v68[v69], v70, v71);
    __asm { FMOV            V0.2D, #10.0 }

    *v68 = _Q0;
    *&v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8, &qword_25269CB00) + 36)] = 256;
    v77 = v60;
    *(v60 + *(v101 + 36)) = 256;
    sub_252692920();
    sub_2526909C0();
    v115 = v130;
    v78 = v132;
    v79 = v134;
    v80 = v135;
    v129 = 1;
    v128 = v131;
    v127 = v133;
    v81 = v77;
    v82 = v102;
    sub_25237153C(v81, v102, &qword_27F4DD3B0, &qword_25269CD10);
    v83 = v129;
    v84 = v128;
    v85 = v127;
    v86 = v103;
    sub_25237153C(v82, v103, &qword_27F4DD3B0, &qword_25269CD10);
    v87 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD500, &qword_25269CE58) + 48);
    *v87 = 0;
    *(v87 + 8) = v83;
    *(v87 + 16) = v115;
    *(v87 + 24) = v84;
    *(v87 + 32) = v78;
    *(v87 + 40) = v85;
    *(v87 + 48) = v79;
    *(v87 + 56) = v80;
    sub_252372288(v82, &qword_27F4DD3B0, &qword_25269CD10);
    sub_25237153C(v86, v123, &qword_27F4DD3A8, &qword_25269CD08);
    swift_storeEnumTagMultiPayload();
    sub_25245F624();
    sub_252400FC8(&qword_27F4DD4A0, &qword_27F4DD3A8, &qword_25269CD08, MEMORY[0x277CE14C0]);
    sub_252691470();
    sub_252372288(v86, &qword_27F4DD3A8, &qword_25269CD08);
    sub_252372288(v114, &qword_27F4DD3B0, &qword_25269CD10);
  }

  v88 = v117;
  v89 = v119;
  sub_25237153C(v117, v119, &qword_27F4DD3E8, &qword_25269CD48);
  v90 = v118;
  v91 = v120;
  sub_25237153C(v118, v120, &qword_27F4DD3E0, &qword_25269CD40);
  v92 = v126;
  v93 = v122;
  sub_25237153C(v126, v122, &qword_27F4DD3D8, &qword_25269CD38);
  v94 = v125;
  sub_25237153C(v89, v125, &qword_27F4DD3E8, &qword_25269CD48);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4A8, &qword_25269CE10);
  sub_25237153C(v91, v94 + *(v95 + 48), &qword_27F4DD3E0, &qword_25269CD40);
  sub_25237153C(v93, v94 + *(v95 + 64), &qword_27F4DD3D8, &qword_25269CD38);
  sub_252372288(v92, &qword_27F4DD3D8, &qword_25269CD38);
  sub_252372288(v90, &qword_27F4DD3E0, &qword_25269CD40);
  sub_252372288(v88, &qword_27F4DD3E8, &qword_25269CD48);
  sub_252372288(v93, &qword_27F4DD3D8, &qword_25269CD38);
  sub_252372288(v91, &qword_27F4DD3E0, &qword_25269CD40);
  return sub_252372288(v89, &qword_27F4DD3E8, &qword_25269CD48);
}

uint64_t sub_25245C918@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v64 = a2;
  v3 = type metadata accessor for AlarmsControlView(0);
  v59 = *(v3 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD438, &qword_25269CDB0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v47 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD538, &qword_25269CF40) - 8;
  MEMORY[0x28223BE20](v60);
  v61 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v47 - v8;
  MEMORY[0x28223BE20](v9);
  v56 = &v47 - v10;
  v50 = sub_2526917F0();
  v11 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD540, &qword_25269CF48);
  v14 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD548, &qword_25269CF50);
  MEMORY[0x28223BE20](v17 - 8);
  v53 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v49 = &v47 - v20;
  v21 = sub_2526911D0();
  LOBYTE(v68) = 0;
  sub_25245D0F0(a1, &v72);
  v22 = v74;
  v23 = BYTE8(v74);
  v24 = v75;
  v48 = v73;
  v47 = v72;
  LOBYTE(v72) = BYTE8(v74);
  v25 = v68;
  v26 = sub_252691B80();
  KeyPath = swift_getKeyPath();
  *&v68 = v21;
  *(&v68 + 1) = 0x4024000000000000;
  v69[0] = v25;
  *&v69[8] = v47;
  *&v69[24] = v48;
  *&v69[40] = v22;
  LOBYTE(v70) = v23;
  *(&v70 + 1) = v24;
  *&v71 = KeyPath;
  *(&v71 + 1) = v26;
  sub_2526917D0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD550, &qword_25269CF88);
  v29 = sub_25245FD68();
  sub_252692020();
  (*(v11 + 8))(v13, v50);
  v74 = *&v69[16];
  v75 = *&v69[32];
  v76 = v70;
  v77 = v71;
  v72 = v68;
  v73 = *v69;
  sub_252372288(&v72, &qword_27F4DD550, &qword_25269CF88);
  *&v68 = sub_252692C40();
  *(&v68 + 1) = v30;
  v66 = v28;
  v67 = v29;
  swift_getOpaqueTypeConformance2();
  sub_252404480();
  v31 = v49;
  v32 = v52;
  sub_252691FB0();

  (*(v14 + 8))(v16, v32);
  v33 = v51;
  v34 = v54;
  sub_25245FA3C(v51, v54, type metadata accessor for AlarmsControlView);
  v35 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v36 = swift_allocObject();
  sub_25245F860(v34, v36 + v35);
  v65 = v33;
  v37 = v57;
  sub_252692550();
  if (*(*(v33 + 120) + 16))
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = v55;
  (*(v62 + 32))(v55, v37, v63);
  *(v39 + *(v60 + 44)) = v38;
  v40 = v56;
  sub_252460074(v39, v56);
  v41 = v53;
  sub_25237153C(v31, v53, &qword_27F4DD548, &qword_25269CF50);
  v42 = v61;
  sub_25237153C(v40, v61, &qword_27F4DD538, &qword_25269CF40);
  v43 = v64;
  sub_25237153C(v41, v64, &qword_27F4DD548, &qword_25269CF50);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD570, &qword_25269CFA0);
  v45 = v43 + *(v44 + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_25237153C(v42, v43 + *(v44 + 64), &qword_27F4DD538, &qword_25269CF40);
  sub_252372288(v40, &qword_27F4DD538, &qword_25269CF40);
  sub_252372288(v31, &qword_27F4DD548, &qword_25269CF50);
  sub_252372288(v42, &qword_27F4DD538, &qword_25269CF40);
  return sub_252372288(v41, &qword_27F4DD548, &qword_25269CF50);
}

double sub_25245D0F0@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2526923D0();
  v27 = sub_252692380();
  KeyPath = swift_getKeyPath();
  sub_252692C40();
  v35 = *(a1 + 32);
  v9 = a1[3];
  v34[2] = a1[2];
  v34[3] = v9;
  v10 = a1[1];
  v34[0] = *a1;
  v34[1] = v10;
  if ((v35 & 0x100) != 0)
  {
    v11 = a1[3];
    v31 = a1[2];
    v32 = v11;
    v33 = *(a1 + 64);
    v12 = a1[1];
    v29 = *a1;
    v30 = v12;
  }

  else
  {

    sub_252692F00();
    v13 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v34, &qword_27F4DC120, &qword_25269CED0);
    (*(v5 + 8))(v7, v4);
  }

  if (v29 == 1)
  {
    sub_252692380();
  }

  else
  {
    sub_252692330();
  }

  v14 = sub_252691CC0();
  v16 = v15;
  v18 = v17;

  sub_252691B40();
  v19 = sub_252691C90();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_2524228D8(v14, v16, v18 & 1);

  *a2 = v28;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v27;
  *(a2 + 24) = v19;
  *(a2 + 32) = v21;
  v23 &= 1u;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;

  sub_25235EABC(v19, v21, v23);

  sub_2524228D8(v19, v21, v23);

  return result;
}

uint64_t sub_25245D414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290, &unk_25269AA10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-1] - v3;
  sub_25245B948(v11);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = sub_25268DA10();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = type metadata accessor for AlarmsControlView(0);
  (*(v6 + 16))(v4, a1 + *(v8 + 28), v5, v6);
  sub_252372288(v4, &qword_27F4DB290, &unk_25269AA10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

void sub_25245D550(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252692C40();
  v36 = *(a1 + 32);
  v8 = a1[3];
  v35[2] = a1[2];
  v35[3] = v8;
  v9 = a1[1];
  v35[0] = *a1;
  v35[1] = v9;
  if ((v36 & 0x100) != 0)
  {
    v10 = a1[3];
    v32 = a1[2];
    v33 = v10;
    v34 = *(a1 + 64);
    v11 = a1[1];
    v30 = *a1;
    v31 = v11;
  }

  else
  {

    sub_252692F00();
    v12 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v35, &qword_27F4DC120, &qword_25269CED0);
    (*(v5 + 8))(v7, v4);
  }

  if (v30 == 1)
  {
    sub_252692340();
  }

  else
  {
    sub_252692330();
  }

  v13 = sub_252691CC0();
  v15 = v14;
  v17 = v16;

  sub_252691B80();
  v18 = sub_252691D00();
  v20 = v19;
  v22 = v21;

  sub_2524228D8(v13, v15, v17 & 1);

  sub_252691B40();
  v23 = sub_252691C90();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;
  sub_2524228D8(v18, v20, v22 & 1);

  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v28;
}

uint64_t sub_25245D804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD428, &qword_25269CDA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  v29 = *(a1 + 120);

  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD510, &qword_25269CEF0);
  v23[0] = sub_25268DA10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD518, &qword_25269CEF8);
  sub_252400FC8(&qword_27F4DD520, &qword_27F4DD510, &qword_25269CEF0, MEMORY[0x277D83980]);
  v7 = type metadata accessor for AlarmCell(255);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD438, &qword_25269CDB0);
  v9 = sub_25245FB9C(&qword_27F4DD440, type metadata accessor for AlarmCell, &unk_25269CA90);
  v10 = sub_252400FC8(&qword_27F4DD448, &qword_27F4DD438, &qword_25269CDB0, MEMORY[0x277CDF028]);
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  swift_getOpaqueTypeConformance2();
  sub_25245FB9C(&qword_27F4DD528, MEMORY[0x277D15910], MEMORY[0x277D15918]);
  sub_2526927B0();
  sub_252690970();
  sub_25245F498();
  v11 = v24;
  sub_252691F80();
  (*(v4 + 8))(v6, v3);
  v25 = sub_252692310();
  v12 = sub_252692690();
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD420, &qword_25269CDA0) + 36)) = v12;
  sub_252690770();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD408, &qword_25269CD98);
  v22 = v11 + *(result + 36);
  *v22 = v14;
  *(v22 + 8) = v16;
  *(v22 + 16) = v18;
  *(v22 + 24) = v20;
  *(v22 + 32) = 0;
  return result;
}

uint64_t sub_25245DB50(uint64_t a1)
{
  v2 = sub_252691160();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AlarmCell(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_25268E5F0();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  KeyPath = swift_getKeyPath();
  v11 = &v8[*(v6 + 20)];
  *v11 = KeyPath;
  v11[40] = 0;
  sub_252691150();
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD438, &qword_25269CDB0);
  sub_25245FB9C(&qword_27F4DD440, type metadata accessor for AlarmCell, &unk_25269CA90);
  sub_252400FC8(&qword_27F4DD448, &qword_27F4DD438, &qword_25269CDB0, MEMORY[0x277CDF028]);
  sub_252691E70();
  (*(v3 + 8))(v5, v2);
  return sub_25245FBEC(v8, type metadata accessor for AlarmCell);
}

uint64_t sub_25245DDC0(uint64_t a1)
{
  v2 = sub_25268E5F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD530, &qword_25269D960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v13[0] = sub_252692C40();
  v13[1] = v8;
  sub_252690710();
  v9 = sub_252690740();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  (*(v3 + 16))(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_252404480();
  return sub_252692570();
}

uint64_t sub_25245DFD0(uint64_t a1)
{
  v2 = sub_25268E5F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930, &qword_2526964E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_252692E30();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  sub_252692E00();
  v10 = sub_252692DF0();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  (*(v3 + 32))(v12 + v11, v5, v2);
  sub_252573BC0(0, 0, v8, &unk_25269CF38, v12);
}

uint64_t sub_25245E1BC(uint64_t a1)
{
  v1[2] = sub_252692E00();
  v1[3] = sub_252692DF0();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_25245E280;

  return MEMORY[0x28216EE40](a1);
}

uint64_t sub_25245E280()
{

  v1 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2523FCD94, v1, v0);
}

void sub_25245E3BC(uint64_t a1)
{
  v2 = type metadata accessor for AlarmsControlView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930, &qword_2526964E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290, &unk_25269AA10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28[-1] - v10;
  v12 = sub_25268DF70();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v28[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, a1 + *(v2 + 32), v12, v14);
  if ((*(v13 + 88))(v16, v12) == *MEMORY[0x277D15178])
  {
    (*(v13 + 96))(v16, v12);
    v17 = *v16;
    v18 = sub_252692E30();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    sub_25245FA3C(a1, &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmsControlView);
    sub_252692E00();
    v19 = v17;
    v20 = sub_252692DF0();
    v21 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v20;
    v22[3] = v23;
    v22[4] = v19;
    sub_25245F860(v5, v22 + v21);
    sub_2525738C0(0, 0, v8, &unk_25269CEE0, v22);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    sub_25245B948(v28);
    v24 = v29;
    v25 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v26 = sub_25268DA10();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    (*(v25 + 16))(v11, a1 + *(v2 + 28), v24, v25);
    sub_252372288(v11, &qword_27F4DB290, &unk_25269AA10);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }
}

uint64_t sub_25245E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290, &unk_25269AA10);
  v5[9] = swift_task_alloc();
  sub_252692E00();
  v5[10] = sub_252692DF0();
  v7 = sub_252692DE0();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_25245E87C, v7, v6);
}

uint64_t sub_25245E87C()
{
  v1 = *(v0 + 64);
  sub_25268DFB0();
  *(v0 + 104) = sub_25268DF80();
  v2 = *(type metadata accessor for AlarmsControlView(0) + 28);
  *(v0 + 120) = v2;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_25245E94C;
  v4 = *(v0 + 56);

  return MEMORY[0x28216E590](v4, v1 + v2);
}

uint64_t sub_25245E94C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 124) = a1;

  v4 = *(v2 + 96);
  v5 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_25245EA94, v5, v4);
}

uint64_t sub_25245EA94()
{
  v1 = *(v0 + 124);

  if (v1 == 1)
  {
    v2 = *(v0 + 120);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    sub_25245B948((v0 + 16));
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = sub_25268DA10();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    (*(v6 + 16))(v3, v4 + v2, v5, v6);
    sub_252372288(v3, &qword_27F4DB290, &unk_25269AA10);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_25245EBC4(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_2526911D0();
  sub_25245EDA0(a1, v29);
  v4 = v29[0];
  v5 = v29[1];
  v6 = v30;
  v26 = v32;
  v27 = v31;
  v7 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8, &qword_252698910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2526952C0;
  v9 = sub_252691A30();
  *(inited + 32) = v9;
  v10 = sub_252691A40();
  *(inited + 33) = v10;
  v11 = sub_252691A70();
  *(inited + 34) = v11;
  v12 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v9)
  {
    v12 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v10)
  {
    v12 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v11)
  {
    v12 = sub_252691A60();
  }

  sub_252690760();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v34 = 0;
  v21 = sub_252691A50();
  sub_252690760();
  *a2 = v28;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v27;
  *(a2 + 56) = v26;
  *(a2 + 64) = v7;
  *(a2 + 72) = v12;
  *(a2 + 80) = v14;
  *(a2 + 88) = v16;
  *(a2 + 96) = v18;
  *(a2 + 104) = v20;
  *(a2 + 112) = 0;
  *(a2 + 120) = v21;
  *(a2 + 128) = v22;
  *(a2 + 136) = v23;
  *(a2 + 144) = v24;
  *(a2 + 152) = v25;
  *(a2 + 160) = 0;
}