uint64_t sub_1B767D9F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B76833E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B767DA18(uint64_t a1)
{
  v2 = sub_1B7682760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B767DA54(uint64_t a1)
{
  v2 = sub_1B7682760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.ShippingFulfillment.StatusFormatter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABB8, &qword_1B7856B28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7682760();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for FormatterConfiguration(0);
  sub_1B76827B4(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
    v8[14] = 1;
    sub_1B7801F88();
    v8[13] = 2;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Order.ShippingFulfillment.StatusFormatter.hash(into:)(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
  sub_1B7802318();
  return sub_1B7802318();
}

uint64_t Order.ShippingFulfillment.StatusFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
  sub_1B7802318();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t Order.ShippingFulfillment.StatusFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABC8, &unk_1B7856B30);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7682760();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1B76827B4(&qword_1EB990870, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  v14 = v19;
  sub_1B7801E48();
  sub_1B7683770(v20, v13, type metadata accessor for FormatterConfiguration);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_1B7801E08() & 1;
  v21 = 2;
  v15 = sub_1B7801E08();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v15 & 1;
  sub_1B767D800(v13, v17, type metadata accessor for Order.ShippingFulfillment.StatusFormatter);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B767D0B4(v13, type metadata accessor for Order.ShippingFulfillment.StatusFormatter);
}

uint64_t sub_1B767E2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Order.ShippingFulfillment.StatusFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B767E2E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = Order.ShippingFulfillment.StatusFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B767E3FC(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802318();
}

uint64_t sub_1B767E55C(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  sub_1B7802318();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t DeliveryDateFormatter.useRelativeDateFormatting.setter(char a1, uint64_t a2)
{
  result = type metadata accessor for DeliveryDateFormatter(0);
  *(v2 + *(result + 20)) = a1;
  return result;
}

uint64_t DeliveryDateFormatter.yesterdayFormatter.getter()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t DeliveryDateFormatter.todayFormatter.getter()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

Swift::String __swiftcall DeliveryDateFormatter.defaultFormatter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1B721FF04();
  *(v3 + 32) = countAndFlagsBits;
  *(v3 + 40) = object;
  v4 = qword_1EDAF93A8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDAF93B0;
  v6 = sub_1B7800838();
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_1B7800868();
  v10 = sub_1B78008A8();
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t static DeliveryDateFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v4 = type metadata accessor for FormatterConfiguration(0), (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    v5 = type metadata accessor for DeliveryDateFormatter(0);
    v6 = *(a1 + *(v5 + 20)) ^ *(a2 + *(v5 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1B767EBA8(uint64_t a1)
{
  v2 = sub_1B76827FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B767EBE4(uint64_t a1)
{
  v2 = sub_1B76827FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeliveryDateFormatter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABD0, &qword_1B7856B40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76827FC();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for FormatterConfiguration(0);
  sub_1B76827B4(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for DeliveryDateFormatter(0);
    v8[14] = 1;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DeliveryDateFormatter.hash(into:)(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  type metadata accessor for DeliveryDateFormatter(0);
  return sub_1B7802318();
}

uint64_t DeliveryDateFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  type metadata accessor for DeliveryDateFormatter(0);
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t DeliveryDateFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABE0, &qword_1B7856B48);
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for DeliveryDateFormatter(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76827FC();
  v11 = v19;
  sub_1B78023C8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for FormatterConfiguration;
  }

  else
  {
    v12 = v17;
    v21 = 0;
    sub_1B76827B4(&qword_1EB990870, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
    sub_1B7801E48();
    sub_1B72A2B9C(v18, v10);
    v20 = 1;
    v13 = sub_1B7801E08();
    (*(v12 + 8))(v7, v5);
    v10[*(v8 + 20)] = v13 & 1;
    sub_1B767D800(v10, v16, type metadata accessor for DeliveryDateFormatter);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for DeliveryDateFormatter;
  }

  return sub_1B767D0B4(v10, v15);
}

uint64_t sub_1B767F438(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B767F5A4(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802318();
}

uint64_t sub_1B767F6F8(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t ShippedDateFormatter.useRelativeDateFormatting.setter(char a1, uint64_t a2)
{
  result = type metadata accessor for ShippedDateFormatter(0);
  *(v2 + *(result + 20)) = a1;
  return result;
}

uint64_t ShippedDateFormatter.shippingType.getter@<X0>(_BYTE *a2@<X8>)
{
  result = type metadata accessor for ShippedDateFormatter(0);
  *a2 = *(v2 + *(result + 24));
  return result;
}

uint64_t ShippedDateFormatter.shippingType.setter(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ShippedDateFormatter(0);
  *(v2 + *(result + 24)) = v3;
  return result;
}

uint64_t ShippedDateFormatter.yesterdayFormatter.getter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(type metadata accessor for ShippedDateFormatter(0) + 24)) == 1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDAF93B0;
  }

  v4 = sub_1B7800838();
  v5 = sub_1B7800838();
  v6 = sub_1B7800838();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_1B7800868();
  return v8;
}

uint64_t ShippedDateFormatter.todayFormatter.getter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(type metadata accessor for ShippedDateFormatter(0) + 24)) == 1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDAF93B0;
  }

  v4 = sub_1B7800838();
  v5 = sub_1B7800838();
  v6 = sub_1B7800838();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_1B7800868();
  return v8;
}

Swift::String __swiftcall ShippedDateFormatter.defaultFormatter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + *(type metadata accessor for ShippedDateFormatter(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B721FF04();
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;
  v6 = qword_1EDAF93A8;

  if (v4 == 1)
  {
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDAF93B0;
  }

  else
  {
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDAF93B0;
  }

  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = sub_1B7800838();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_1B7800868();
  v12 = sub_1B78008A8();
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t sub_1B767FEC4()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x676E697070696873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1B767FF38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7683510(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B767FF60(uint64_t a1)
{
  v2 = sub_1B7682850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B767FF9C(uint64_t a1)
{
  v2 = sub_1B7682850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ShippedDateFormatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABE8, &qword_1B7856B50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7682850();
  sub_1B78023F8();
  v11[15] = 0;
  type metadata accessor for FormatterConfiguration(0);
  sub_1B76827B4(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for ShippedDateFormatter(0);
    v11[14] = 1;
    sub_1B7801F88();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1B760E1B4();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ShippedDateFormatter.hash(into:)(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  v2 = type metadata accessor for ShippedDateFormatter(0);
  sub_1B7802318();
  return MEMORY[0x1B8CA6620](*(v1 + *(v2 + 24)));
}

uint64_t ShippedDateFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  v1 = type metadata accessor for ShippedDateFormatter(0);
  sub_1B7802318();
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 24)));
  return sub_1B7802368();
}

uint64_t ShippedDateFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABF8, &qword_1B7856B58);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ShippedDateFormatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7682850();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for FormatterConfiguration;
  }

  else
  {
    v12 = v17;
    v23 = 0;
    sub_1B76827B4(&qword_1EB990870, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
    v13 = v18;
    sub_1B7801E48();
    sub_1B72A2B9C(v19, v11);
    v22 = 1;
    v11[*(v9 + 20)] = sub_1B7801E08() & 1;
    v20 = 2;
    sub_1B760E2B0();
    sub_1B7801E48();
    (*(v12 + 8))(v8, v13);
    v11[*(v9 + 24)] = v21;
    sub_1B767D800(v11, v16, type metadata accessor for ShippedDateFormatter);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for ShippedDateFormatter;
  }

  return sub_1B767D0B4(v11, v15);
}

uint64_t sub_1B768082C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v10 = a2(a1, v9);
  v12 = v11;
  result = (*(v7 + 8))(v9, v6);
  *a3 = v10;
  a3[1] = v12;
  return result;
}

uint64_t sub_1B7680958(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  sub_1B7802318();
  return MEMORY[0x1B8CA6620](*(v2 + *(a2 + 24)));
}

uint64_t sub_1B7680AB8(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  sub_1B7802318();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 24)));
  return sub_1B7802368();
}

uint64_t sub_1B7680C60(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7680DA4(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7680EE8(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B768102C(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681170(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B76812B4(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B76813F8(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B768153C(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681680(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B76817C4(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681908(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681A4C(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681B90(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681CD4(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v6 = type metadata accessor for FormatterConfiguration(0), (MEMORY[0x1B8CA3EF0](a1 + *(v6 + 20), a2 + *(v6 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) != 0 && (v7 = a3(0), *(a1 + *(v7 + 20)) == *(a2 + *(v7 + 20))))
  {
    v8 = *(a1 + *(v7 + 24)) ^ *(a2 + *(v7 + 24)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL _s10FinanceKit5OrderV19ShippingFulfillmentV12StatusValuesV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v52 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  v11 = MEMORY[0x1EEE9AC00](v63);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v52 - v13;
  v14 = type metadata accessor for Order.FulfillmentWindow(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990A40, &unk_1B780EB60);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  v23 = a2;
  if ((sub_1B767C198(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v53 = v6;
  v54 = v4;
  v55 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  v56 = a1;
  v24 = v55[5];
  v25 = *(v20 + 48);
  sub_1B7205588(a1 + v24, v22, &qword_1EB990828, &unk_1B781C5A0);
  sub_1B7205588(v23 + v24, &v22[v25], &qword_1EB990828, &unk_1B781C5A0);
  v26 = *(v15 + 48);
  if (v26(v22, 1, v14) == 1)
  {
    if (v26(&v22[v25], 1, v14) == 1)
    {
      sub_1B7205418(v22, &qword_1EB990828, &unk_1B781C5A0);
      goto LABEL_9;
    }

LABEL_7:
    v27 = &qword_1EB990A40;
    v28 = &unk_1B780EB60;
    v29 = v22;
LABEL_22:
    sub_1B7205418(v29, v27, v28);
    return 0;
  }

  sub_1B7205588(v22, v19, &qword_1EB990828, &unk_1B781C5A0);
  if (v26(&v22[v25], 1, v14) == 1)
  {
    sub_1B767D0B4(v19, type metadata accessor for Order.FulfillmentWindow);
    goto LABEL_7;
  }

  v30 = v60;
  sub_1B7683770(&v22[v25], v60, type metadata accessor for Order.FulfillmentWindow);
  v31 = _s10FinanceKit5OrderV17FulfillmentWindowO2eeoiySbAE_AEtFZ_0(v19, v30);
  sub_1B767D0B4(v30, type metadata accessor for Order.FulfillmentWindow);
  sub_1B767D0B4(v19, type metadata accessor for Order.FulfillmentWindow);
  sub_1B7205418(v22, &qword_1EB990828, &unk_1B781C5A0);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v32 = v55[6];
  v33 = v62;
  v34 = *(v63 + 48);
  sub_1B7205588(v56 + v32, v62, &qword_1EB98EBD0, &unk_1B7809780);
  v35 = v23;
  sub_1B7205588(v23 + v32, v33 + v34, &qword_1EB98EBD0, &unk_1B7809780);
  v36 = v61;
  v37 = *(v61 + 48);
  v38 = v54;
  if (v37(v33, 1, v54) != 1)
  {
    v39 = v59;
    sub_1B7205588(v33, v59, &qword_1EB98EBD0, &unk_1B7809780);
    if (v37(v33 + v34, 1, v38) != 1)
    {
      v40 = v33 + v34;
      v41 = v53;
      (*(v36 + 32))(v53, v40, v38);
      sub_1B76827B4(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v42 = sub_1B7800828();
      v43 = *(v36 + 8);
      v43(v41, v38);
      v43(v39, v38);
      sub_1B7205418(v62, &qword_1EB98EBD0, &unk_1B7809780);
      if ((v42 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v36 + 8))(v39, v38);
    goto LABEL_14;
  }

  if (v37(v33 + v34, 1, v38) != 1)
  {
LABEL_14:
    v27 = &qword_1EB98FCE0;
    v28 = &qword_1B7813550;
    v29 = v33;
    goto LABEL_22;
  }

  sub_1B7205418(v33, &qword_1EB98EBD0, &unk_1B7809780);
LABEL_16:
  v44 = v55[7];
  v45 = *(v63 + 48);
  v46 = v58;
  sub_1B7205588(v56 + v44, v58, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(v35 + v44, v46 + v45, &qword_1EB98EBD0, &unk_1B7809780);
  if (v37(v46, 1, v38) == 1)
  {
    if (v37(v46 + v45, 1, v38) == 1)
    {
      sub_1B7205418(v46, &qword_1EB98EBD0, &unk_1B7809780);
      return 1;
    }

    goto LABEL_21;
  }

  v47 = v57;
  sub_1B7205588(v46, v57, &qword_1EB98EBD0, &unk_1B7809780);
  if (v37(v46 + v45, 1, v38) == 1)
  {
    (*(v36 + 8))(v47, v38);
LABEL_21:
    v27 = &qword_1EB98FCE0;
    v28 = &qword_1B7813550;
    v29 = v46;
    goto LABEL_22;
  }

  v49 = v53;
  (*(v36 + 32))(v53, v46 + v45, v38);
  sub_1B76827B4(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v50 = sub_1B7800828();
  v51 = *(v36 + 8);
  v51(v49, v38);
  v51(v47, v38);
  sub_1B7205418(v46, &qword_1EB98EBD0, &unk_1B7809780);
  return (v50 & 1) != 0;
}

unint64_t sub_1B7682760()
{
  result = qword_1EB99ABC0;
  if (!qword_1EB99ABC0)
  {
    result = swift_getWitnessTable(byte_1B78572B8, &_s14descr1F2F3F6D1V15StatusFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99ABC0);
  }

  return result;
}

uint64_t sub_1B76827B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1B76827FC()
{
  result = qword_1EB99ABD8;
  if (!qword_1EB99ABD8)
  {
    result = swift_getWitnessTable(aQD7_1, &type metadata for DeliveryDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99ABD8);
  }

  return result;
}

unint64_t sub_1B7682850()
{
  result = qword_1EB99ABF0;
  if (!qword_1EB99ABF0)
  {
    result = swift_getWitnessTable(byte_1B7857218, &type metadata for ShippedDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99ABF0);
  }

  return result;
}

uint64_t sub_1B76828A4(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC00, type metadata accessor for Order.ShippingFulfillment.StatusFormatter, protocol conformance descriptor for Order.ShippingFulfillment.StatusFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7682A1C(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC28, type metadata accessor for DeliveryDateFormatter, protocol conformance descriptor for DeliveryDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7682A74(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC30, type metadata accessor for DeliveryDateFormatter, protocol conformance descriptor for DeliveryDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7682BEC(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC58, type metadata accessor for ShippedDateFormatter, protocol conformance descriptor for ShippedDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7682C44(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC60, type metadata accessor for ShippedDateFormatter, protocol conformance descriptor for ShippedDateFormatter);
  *(a1 + 8) = result;
  return result;
}

void sub_1B7682DE4(uint64_t a1)
{
  sub_1B7682EB8(319);
  if (v1 <= 0x3F)
  {
    sub_1B72A2394(319, &qword_1EB990A10, type metadata accessor for Order.FulfillmentWindow);
    if (v2 <= 0x3F)
    {
      sub_1B72A2394(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7682EB8(uint64_t a1)
{
  if (!qword_1EB99AC98)
  {
    v4[0] = &type metadata for OrderStatus;
    v4[1] = &type metadata for Order.Fulfillment.ShippingDisplayStatusTypeModel;
    v4[2] = sub_1B7290B10();
    v4[3] = sub_1B7682F34();
    v2 = type metadata accessor for Order.Fulfillment.DisplayStatus(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB99AC98);
    }
  }
}

unint64_t sub_1B7682F34()
{
  result = qword_1EB99ACA0;
  if (!qword_1EB99ACA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.Fulfillment.ShippingDisplayStatusTypeModel, &type metadata for Order.Fulfillment.ShippingDisplayStatusTypeModel, v0, v1);
    atomic_store(result, &qword_1EB99ACA0);
  }

  return result;
}

uint64_t sub_1B7683018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B76830CC()
{
  result = qword_1EB99ACD8;
  if (!qword_1EB99ACD8)
  {
    result = swift_getWitnessTable(byte_1B7857080, &_s14descr1F2F3F6D1V15StatusFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99ACD8);
  }

  return result;
}

unint64_t sub_1B7683124()
{
  result = qword_1EB99ACE0;
  if (!qword_1EB99ACE0)
  {
    result = swift_getWitnessTable(byte_1B7857138, &type metadata for DeliveryDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99ACE0);
  }

  return result;
}

unint64_t sub_1B768317C()
{
  result = qword_1EB99ACE8;
  if (!qword_1EB99ACE8)
  {
    result = swift_getWitnessTable(aY_43, &type metadata for ShippedDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99ACE8);
  }

  return result;
}

unint64_t sub_1B76831D4()
{
  result = qword_1EB99ACF0;
  if (!qword_1EB99ACF0)
  {
    result = swift_getWitnessTable(byte_1B7857160, &type metadata for ShippedDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99ACF0);
  }

  return result;
}

unint64_t sub_1B768322C()
{
  result = qword_1EB99ACF8;
  if (!qword_1EB99ACF8)
  {
    result = swift_getWitnessTable(byte_1B7857188, &type metadata for ShippedDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99ACF8);
  }

  return result;
}

unint64_t sub_1B7683284()
{
  result = qword_1EB99AD00;
  if (!qword_1EB99AD00)
  {
    result = swift_getWitnessTable(aID7, &type metadata for DeliveryDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AD00);
  }

  return result;
}

unint64_t sub_1B76832DC()
{
  result = qword_1EB99AD08;
  if (!qword_1EB99AD08)
  {
    result = swift_getWitnessTable(aAD7_0, &type metadata for DeliveryDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AD08);
  }

  return result;
}

unint64_t sub_1B7683334()
{
  result = qword_1EB99AD10;
  if (!qword_1EB99AD10)
  {
    result = swift_getWitnessTable(byte_1B7856FF0, &_s14descr1F2F3F6D1V15StatusFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99AD10);
  }

  return result;
}

unint64_t sub_1B768338C()
{
  result = qword_1EB99AD18;
  if (!qword_1EB99AD18)
  {
    result = swift_getWitnessTable(byte_1B7857018, &_s14descr1F2F3F6D1V15StatusFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99AD18);
  }

  return result;
}

uint64_t sub_1B76833E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7889BC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B78773D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B7683510(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B78773D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E697070696873 && a2 == 0xEC00000065707954)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B7683770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B77FFAF8();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);
  v7 = type metadata accessor for FormatterConfiguration(0);
  v8 = *(v7 + 20);
  v9 = sub_1B77FFC88();
  (*(*(v9 - 8) + 8))(v1 + v4 + v8, v9);
  v10 = *(v7 + 24);
  v11 = sub_1B77FFCF8();
  (*(*(v11 - 8) + 8))(v1 + v4 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1B7683A78(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return a2(v4, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedInstitutionDeleter.deleteAll(context:)(NSManagedObjectContext context)
{
  type metadata accessor for ManagedInstitution();
  v18.receiver = swift_getObjCClassFromMetadata();
  v18.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedInstitution;
  v3 = objc_msgSendSuper2(&v18, sel_fetchRequest);
  v4 = sub_1B7801498();
  if (!v1)
  {
    v13 = v4;

    if (v13 >> 62)
    {
      v14 = sub_1B7801958();
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    if (v14 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8CA5DC0](i, v13);
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      [(objc_class *)context.super.isa deleteObject:v16];
    }

LABEL_16:

    return;
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B78000B8();
  __swift_project_value_buffer(v5, qword_1EDAF65B0);
  v6 = v1;
  v7 = sub_1B7800098();
  v8 = sub_1B78011D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B7198000, v7, v8, "Could not delete institution: %@", v9, 0xCu);
    sub_1B726B694(v10);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
  }

  swift_willThrow();
}

CLLocation __swiftcall CLLocation.init(rawLocation:)(FinanceKit::RawLocation rawLocation)
{
  v1 = *&rawLocation.altitude.is_nil;
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);
  if (*(v1 + 24))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *(v1 + 16);
  }

  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B77FF978();
  v10 = sub_1B77FF8B8();
  (*(v3 + 8))(v5, v2);
  v11 = [v9 initWithCoordinate:v10 altitude:v6 horizontalAccuracy:v7 verticalAccuracy:v8 timestamp:{0.0, 1.0}];

  v13 = v11;
  result._internal = v12;
  result.super.isa = v13;
  return result;
}

FinanceKit::RawLocation __swiftcall RawLocation.init(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  v3 = v1;
  [(objc_class *)a1.super.isa coordinate];
  v5 = v4;
  [(objc_class *)isa coordinate];
  v7 = v6;
  [(objc_class *)isa altitude];
  v9 = v8;

  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 16) = v9;
  *(v3 + 24) = 0;
  result.altitude.value = v13;
  result.longitude = v12;
  result.latitude = v11;
  result.altitude.is_nil = v10;
  return result;
}

uint64_t RawLocation.altitude.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

FinanceKit::RawLocation __swiftcall RawLocation.init(latitude:longitude:altitude:)(Swift::Double latitude, Swift::Double longitude, Swift::Double_optional altitude)
{
  *v4 = latitude;
  *(v4 + 8) = longitude;
  *(v4 + 16) = *&altitude.is_nil;
  *(v4 + 24) = v3 & 1;
  result.altitude.value = altitude.value;
  result.altitude.is_nil = altitude.is_nil;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t sub_1B7683FE4()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6564757469746C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1B7684038@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B76846CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7684060(uint64_t a1)
{
  v2 = sub_1B7684500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B768409C(uint64_t a1)
{
  v2 = sub_1B7684500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawLocation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AD40, &qword_1B7857360);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7684500();
  sub_1B78023F8();
  v12 = 0;
  sub_1B7801F98();
  if (!v2)
  {
    v11 = 1;
    sub_1B7801F98();
    v10 = 2;
    sub_1B7801F18();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AD50, &qword_1B7857368);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7684500();
  sub_1B78023C8();
  if (!v2)
  {
    v20 = 0;
    sub_1B7801E18();
    v10 = v9;
    v19 = 1;
    sub_1B7801E18();
    v12 = v11;
    v18 = 2;
    v14 = sub_1B7801D98();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s10FinanceKit11RawLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0;
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }
}

unint64_t sub_1B7684500()
{
  result = qword_1EB99AD48;
  if (!qword_1EB99AD48)
  {
    result = swift_getWitnessTable(byte_1B78574E4, &type metadata for RawLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AD48);
  }

  return result;
}

uint64_t sub_1B7684554(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7684574(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1B76845C8()
{
  result = qword_1EB99AD58;
  if (!qword_1EB99AD58)
  {
    result = swift_getWitnessTable(byte_1B78574BC, &type metadata for RawLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AD58);
  }

  return result;
}

unint64_t sub_1B7684620()
{
  result = qword_1EB99AD60;
  if (!qword_1EB99AD60)
  {
    result = swift_getWitnessTable(byte_1B785742C, &type metadata for RawLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AD60);
  }

  return result;
}

unint64_t sub_1B7684678()
{
  result = qword_1EB99AD68[0];
  if (!qword_1EB99AD68[0])
  {
    result = swift_getWitnessTable(byte_1B7857454, &type metadata for RawLocation.CodingKeys, v0, v1);
    atomic_store(result, qword_1EB99AD68);
  }

  return result;
}

uint64_t sub_1B76846CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id ManagedInternalTransaction.bankMerchantInformationInsight.getter()
{
  v1 = [v0 insightsObject];
  v2 = [v1 bankMerchantInformationInsightObject];

  return v2;
}

uint64_t ManagedBankMerchantInformationInsight.merchantCategoryCodeValue.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = sub_1B7800838();
  v3 = [v0 primitiveValueForKey_];

  if (v3)
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = 0;
      v5 = v10;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1B726990C(v13);
  }

  v5 = 0;
  v4 = 1;
LABEL_9:
  v6 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  if (v5 == v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = v5;
  if (v7)
  {
    v8 = 0;
  }

  return v8 | (v7 << 16);
}

void TransactionMerchantInformation.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = ManagedBankMerchantInformationInsight.merchantCategoryCodeValue.getter();
  v5 = [a1 standardIndustrialClassificationCode];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B7800868();
    v25 = v8;
    v26 = v7;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v9 = [a1 categoryDescription];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B7800868();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a1 merchantName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1B7800868();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [a1 merchantNumber];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B7800868();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [a1 merchantAddress];

  *a2 = v4;
  *(a2 + 2) = BYTE2(v4) & 1;
  *(a2 + 8) = v26;
  *(a2 + 16) = v25;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v21;
  *(a2 + 64) = v23;
  *(a2 + 72) = v24;
}

void sub_1B7684B28(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  if ((v2 & 0x10000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B7802288();
  }

  v5 = sub_1B7800838();
  [v1 setPrimitiveValue:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

id ManagedBankMerchantInformationInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBankMerchantInformationInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBankMerchantInformationInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedBankMerchantInformationInsight.__allocating_init(insight:context:)(unsigned __int16 *a1, void *a2)
{
  v5 = *(a1 + 3);
  v10 = *(a1 + 2);
  v11 = v5;
  v12 = *(a1 + 4);
  v6 = *(a1 + 1);
  v7 = [objc_allocWithZone(v2) initWithContext_];
  ManagedBankMerchantInformationInsight.update(with:)(a1);

  sub_1B76630AC(&v9);
  return v7;
}

id ManagedBankMerchantInformationInsight.update(with:)(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 2);
  v13 = *(a1 + 1);
  v5 = *(a1 + 4);
  v7 = *(a1 + 8);
  v6 = *(a1 + 9);
  if (*(a1 + 6))
  {
    v8 = sub_1B7800838();
  }

  else
  {
    v8 = 0;
  }

  [v1 setMerchantName_];

  if (v5)
  {
    v9 = sub_1B7800838();
  }

  else
  {
    v9 = 0;
  }

  [v1 setCategoryDescription_];

  sub_1B7684B28(v2 | (v3 << 16));
  if (v7)
  {
    v10 = sub_1B7800838();
  }

  else
  {
    v10 = 0;
  }

  [v1 setMerchantNumber_];

  if (v4)
  {
    v11 = sub_1B7800838();
  }

  else
  {
    v11 = 0;
  }

  [v1 setStandardIndustrialClassificationCode_];

  return [v1 setMerchantAddress_];
}

id static ManagedBankMerchantInformationInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit37ManagedBankMerchantInformationInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t sub_1B7685068(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B76850D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1B7685218(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t RawMerchant.address.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1B7205588(v10, v9, &qword_1EB995F40, &unk_1B78347E0);
}

__n128 RawMerchant.address.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_1B7205418(v9, &qword_1EB995F40, &unk_1B78347E0);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t type metadata accessor for RawMerchant(uint64_t a1)
{
  result = qword_1EDAF8F58;
  if (!qword_1EDAF8F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawMerchant.businessChatURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawMerchant(0) + 20);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawMerchant.contactURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawMerchant(0) + 24);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawMerchant.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant(0) + 28));

  return v1;
}

void RawMerchant.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawMerchant.emailAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant(0) + 32));

  return v1;
}

void RawMerchant.emailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawMerchant.logo.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant(0) + 36));

  return v1;
}

void RawMerchant.logo.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawMerchant.merchantIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant(0) + 40));

  return v1;
}

void RawMerchant.merchantIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawMerchant.phoneNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant(0) + 44));

  return v1;
}

void RawMerchant.phoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawMerchant.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawMerchant(0) + 48);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawMerchant.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawMerchant(0) + 48);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawMerchant.init(address:businessChatURL:contactURL:displayName:emailAddress:logo:merchantIdentifier:phoneNumber:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = 1;
  v17 = type metadata accessor for RawMerchant(0);
  *(a9 + 8) = 0u;
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  v18 = v17[5];
  v19 = sub_1B77FF4F8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(a9 + v18, 1, 1, v19);
  v22 = v17[6];
  v21(a9 + v22, 1, 1, v19);
  v23 = (a9 + v17[8]);
  v24 = (a9 + v17[9]);
  v25 = (a9 + v17[11]);
  v26 = *(a9 + 80);
  v42[4] = *(a9 + 64);
  v42[5] = v26;
  v43 = *(a9 + 96);
  v27 = *(a9 + 16);
  v42[0] = *a9;
  v42[1] = v27;
  v28 = *(a9 + 48);
  v42[2] = *(a9 + 32);
  v42[3] = v28;
  sub_1B7205418(v42, &qword_1EB995F40, &unk_1B78347E0);
  v29 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v29;
  *(a9 + 96) = *(a1 + 96);
  v30 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v30;
  v31 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v31;
  sub_1B727CBBC(a2, a9 + v18);
  sub_1B727CBBC(a3, a9 + v22);
  v32 = (a9 + v17[7]);
  *v32 = a4;
  v32[1] = a5;
  *v23 = a6;
  v23[1] = a7;
  *v24 = a8;
  v24[1] = a10;
  v33 = (a9 + v17[10]);
  *v33 = a11;
  v33[1] = a12;
  *v25 = a13;
  v25[1] = a14;
  return (*(v20 + 32))(a9 + v17[12], a15, v19);
}

unint64_t sub_1B7685EB0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73736572646461;
    v6 = 0x55746361746E6F63;
    if (a1 != 2)
    {
      v6 = 0x4E79616C70736964;
    }

    if (a1)
    {
      v5 = 0x7373656E69737562;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x6D754E656E6F6870;
    if (a1 != 7)
    {
      v2 = 7107189;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6464416C69616D65;
    if (a1 != 4)
    {
      v3 = 1869049708;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B7685FF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7687F00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7686018(uint64_t a1)
{
  v2 = sub_1B7687C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7686054(uint64_t a1)
{
  v2 = sub_1B7687C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawMerchant.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ADF0, &qword_1B78575B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7687C24();
  sub_1B78023F8();
  v8 = v2[3];
  v9 = v2[5];
  v32 = v2[4];
  v33 = v9;
  v10 = v2[1];
  v29[0] = *v2;
  v29[1] = v10;
  v11 = v2[3];
  v13 = *v2;
  v12 = v2[1];
  v30 = v2[2];
  v31 = v11;
  v25 = v8;
  v26 = v32;
  v27 = v2[5];
  v22 = v13;
  v34 = *(v2 + 12);
  v28 = *(v2 + 12);
  v23 = v12;
  v24 = v30;
  v21 = 0;
  sub_1B7205588(v29, v19, &qword_1EB995F40, &unk_1B78347E0);
  sub_1B7304418();
  v35 = v4;
  v14 = v17;
  sub_1B7801F38();
  v19[4] = v26;
  v19[5] = v27;
  v20 = v28;
  v19[0] = v22;
  v19[1] = v23;
  v19[2] = v24;
  v19[3] = v25;
  sub_1B7205418(v19, &qword_1EB995F40, &unk_1B78347E0);
  if (v14)
  {
    return (*(v5 + 8))(v7, v35);
  }

  v17 = type metadata accessor for RawMerchant(0);
  v18 = 1;
  sub_1B77FF4F8();
  sub_1B7535C74(&qword_1EB98F700, MEMORY[0x1E6968FB8]);
  sub_1B7801F38();
  v18 = 2;
  sub_1B7801F38();
  v18 = 3;
  sub_1B7801F78();
  v18 = 4;
  sub_1B7801EF8();
  v18 = 5;
  sub_1B7801EF8();
  v18 = 6;
  sub_1B7801F78();
  v18 = 7;
  sub_1B7801EF8();
  v18 = 8;
  v16 = v35;
  sub_1B7801FC8();
  return (*(v5 + 8))(v7, v16);
}

void RawMerchant.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE00, &qword_1B78575B8);
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = type metadata accessor for RawMerchant(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 1;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  v17 = *(v4 + 56);
  v82 = *(v14 + 20);
  v17(&v16[v82], 1, 1, v3);
  v18 = *(v13 + 24);
  v62 = v13;
  v63 = v18;
  v17(&v16[v18], 1, 1, v3);
  v19 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B7687C24();
  v20 = v60;
  sub_1B78023C8();
  if (v20)
  {
    v60 = 0;
    __swift_destroy_boxed_opaque_existential_1(v61);
    v21 = *(v16 + 5);
    v79 = *(v16 + 4);
    v80 = v21;
    v81 = *(v16 + 12);
    v22 = *(v16 + 1);
    v75 = *v16;
    v76 = v22;
    v23 = *(v16 + 3);
    v77 = *(v16 + 2);
    v78 = v23;
    sub_1B7205418(&v75, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B7205418(&v16[v82], &unk_1EB994C70, &qword_1B7809800);
    sub_1B7205418(&v16[v63], &unk_1EB994C70, &qword_1B7809800);
  }

  else
  {
    v53 = v4;
    v74 = 0;
    sub_1B73043C4();
    sub_1B7801DB8();
    v69 = v79;
    v70 = v80;
    v71 = v81;
    v65 = v75;
    v66 = v76;
    v67 = v77;
    v68 = v78;
    v24 = *v16;
    v25 = *(v16 + 2);
    v26 = *(v16 + 3);
    v72[1] = *(v16 + 1);
    v72[2] = v25;
    v72[0] = v24;
    v27 = *(v16 + 4);
    v28 = *(v16 + 5);
    v73 = *(v16 + 12);
    v72[4] = v27;
    v72[5] = v28;
    v72[3] = v26;
    sub_1B7205418(v72, &qword_1EB995F40, &unk_1B78347E0);
    v29 = v70;
    *(v16 + 4) = v69;
    *(v16 + 5) = v29;
    *(v16 + 12) = v71;
    v30 = v66;
    *v16 = v65;
    *(v16 + 1) = v30;
    v31 = v68;
    *(v16 + 2) = v67;
    *(v16 + 3) = v31;
    v64 = 1;
    v32 = sub_1B7535C74(&qword_1EB98F730, MEMORY[0x1E6968FD0]);
    v33 = v57;
    sub_1B7801DB8();
    sub_1B727CBBC(v33, &v16[v82]);
    v64 = 2;
    v34 = v56;
    sub_1B7801DB8();
    v57 = v32;
    sub_1B727CBBC(v34, &v16[v63]);
    v64 = 3;
    v35 = v59;
    v36 = sub_1B7801DF8();
    v37 = v12;
    v38 = v62;
    v39 = &v16[v62[7]];
    *v39 = v36;
    v39[1] = v40;
    v64 = 4;
    v56 = v37;
    v41 = sub_1B7801D78();
    v42 = &v16[v38[8]];
    *v42 = v41;
    v42[1] = v43;
    v60 = v43;
    v64 = 5;
    v44 = sub_1B7801D78();
    v45 = &v16[v38[9]];
    *v45 = v44;
    v45[1] = v46;
    v64 = 6;
    v47 = sub_1B7801DF8();
    v48 = &v16[v38[10]];
    *v48 = v47;
    v48[1] = v49;
    v64 = 7;
    v50 = sub_1B7801D78();
    v51 = &v16[v62[11]];
    *v51 = v50;
    v51[1] = v52;
    v64 = 8;
    sub_1B7801E48();
    (*(v58 + 8))(v56, v35);
    (*(v53 + 32))(&v16[v62[12]], v55, v3);
    sub_1B7687C78(v16, v54);
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_1B74BA260(v16);
  }
}

void RawMerchant.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  *a2 = 1;
  v10 = type metadata accessor for RawMerchant(0);
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  v64 = 0u;
  *(a2 + 88) = 0u;
  v11 = v10[5];
  v12 = sub_1B77FF4F8();
  v13 = *(*(v12 - 8) + 56);
  v13(a2 + v11, 1, 1, v12);
  v63 = v10[6];
  v13(a2 + v63, 1, 1, v12);
  v14 = [a1 address];
  if (v14)
  {
    RawAddress.init(_:)(v14, &v65);
    v64 = v66;
    v62 = v65;
    v60 = v68;
    v61 = v67;
    v58 = v70;
    v59 = v69;
    v15 = v71;
  }

  else
  {
    v15 = 0;
    v61 = 0u;
    v62 = xmmword_1B78347C0;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
  }

  v16 = *(a2 + 80);
  v69 = *(a2 + 64);
  v70 = v16;
  v71 = *(a2 + 96);
  v17 = *(a2 + 16);
  v65 = *a2;
  v66 = v17;
  v18 = *(a2 + 48);
  v67 = *(a2 + 32);
  v68 = v18;
  sub_1B7205418(&v65, &qword_1EB995F40, &unk_1B78347E0);
  v19 = v64;
  *a2 = v62;
  *(a2 + 16) = v19;
  v20 = v60;
  *(a2 + 32) = v61;
  *(a2 + 48) = v20;
  v21 = v58;
  *(a2 + 64) = v59;
  *(a2 + 80) = v21;
  *(a2 + 96) = v15;
  v22 = [a1 businessChatURL];
  if (v22)
  {
    v23 = v22;
    sub_1B77FF478();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = 1;
  v13(v9, v24, 1, v12);
  sub_1B727CBBC(v9, a2 + v11);
  v26 = [a1 contactURL];
  if (v26)
  {
    v27 = v26;
    sub_1B77FF478();

    v25 = 0;
  }

  v13(v7, v25, 1, v12);
  sub_1B727CBBC(v7, a2 + v63);
  v28 = [a1 displayName];
  v29 = sub_1B77FFA48();
  v30 = sub_1B741F7D4(v29);
  v32 = v31;

  v33 = (a2 + v10[7]);
  *v33 = v30;
  v33[1] = v32;
  v34 = [a1 emailAddress];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1B7800868();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = (a2 + v10[8]);
  *v39 = v36;
  v39[1] = v38;
  v40 = [a1 logoName];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1B7800868();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = (a2 + v10[9]);
  *v45 = v42;
  v45[1] = v44;
  v46 = [a1 merchantIdentifier];
  v47 = sub_1B7800868();
  v49 = v48;

  v50 = (a2 + v10[10]);
  *v50 = v47;
  v50[1] = v49;
  v51 = [a1 phoneNumber];
  if (v51)
  {
    v52 = v51;
    v53 = sub_1B7800868();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v56 = (a2 + v10[11]);
  *v56 = v53;
  v56[1] = v55;
  v57 = [a1 url];
  sub_1B77FF478();
}

uint64_t _s10FinanceKit11RawMerchantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v77[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v77[-v16];
  v18 = *(a1 + 48);
  v19 = *(a1 + 80);
  v118[4] = *(a1 + 64);
  v118[5] = v19;
  v119 = *(a1 + 96);
  v20 = *(a1 + 16);
  v118[0] = *a1;
  v118[1] = v20;
  v118[2] = *(a1 + 32);
  v118[3] = v18;
  v21 = *(a2 + 16);
  v120[0] = *a2;
  v120[1] = v21;
  v22 = *(a2 + 32);
  v23 = *(a2 + 48);
  v24 = *(a2 + 64);
  v25 = *(a2 + 80);
  v121 = *(a2 + 96);
  v120[4] = v24;
  v120[5] = v25;
  v120[2] = v22;
  v120[3] = v23;
  v26 = *&v118[0];
  v27 = *(a1 + 56);
  v114 = *(a1 + 40);
  v115 = v27;
  v28 = *(a1 + 88);
  v116 = *(a1 + 72);
  v117 = v28;
  v29 = *(a1 + 24);
  v112 = *(a1 + 8);
  v113 = v29;
  v30 = *&v120[0];
  v31 = *(a2 + 24);
  v106 = *(a2 + 8);
  v107 = v31;
  v32 = *(a2 + 40);
  v33 = *(a2 + 56);
  v34 = *(a2 + 88);
  v110 = *(a2 + 72);
  v111 = v34;
  v108 = v32;
  v109 = v33;
  if (*&v118[0] == 1)
  {
    if (*&v120[0] == 1)
    {
      v81 = v7;
      v82 = v15;
      *v98 = 1;
      *&v98[40] = *(a1 + 40);
      *&v98[56] = *(a1 + 56);
      *&v98[72] = *(a1 + 72);
      *&v98[88] = *(a1 + 88);
      *&v98[8] = *(a1 + 8);
      *&v98[24] = *(a1 + 24);
      sub_1B7205588(v118, &v91, &qword_1EB995F40, &unk_1B78347E0);
      sub_1B7205588(v120, &v91, &qword_1EB995F40, &unk_1B78347E0);
      sub_1B7205418(v98, &qword_1EB995F40, &unk_1B78347E0);
      goto LABEL_9;
    }

    sub_1B7205588(v118, v98, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B7205588(v120, v98, &qword_1EB995F40, &unk_1B78347E0);
LABEL_7:
    *&v98[40] = v114;
    *&v98[56] = v115;
    *&v98[72] = v116;
    *&v98[88] = v117;
    *&v98[8] = v112;
    *&v98[24] = v113;
    *v98 = v26;
    v99 = v30;
    v100 = v106;
    v101 = v107;
    v104 = v110;
    v105 = v111;
    v102 = v108;
    v103 = v109;
    v35 = &qword_1EB99AE20;
    v36 = &unk_1B785AA80;
    v37 = v98;
LABEL_20:
    sub_1B7205418(v37, v35, v36);
    goto LABEL_21;
  }

  v81 = v7;
  *v98 = *&v118[0];
  *&v98[8] = *(a1 + 8);
  *&v98[24] = *(a1 + 24);
  *&v98[40] = *(a1 + 40);
  *&v98[88] = *(a1 + 88);
  *&v98[72] = *(a1 + 72);
  *&v98[56] = *(a1 + 56);
  v91 = *v98;
  v92 = *&v98[16];
  v97 = *&v98[96];
  v95 = *&v98[64];
  v96 = *&v98[80];
  v93 = *&v98[32];
  v94 = *&v98[48];
  if (*&v120[0] == 1)
  {
    *&v90[64] = *&v98[64];
    *&v90[80] = *&v98[80];
    *&v90[96] = *&v98[96];
    *v90 = *v98;
    *&v90[16] = *&v98[16];
    *&v90[32] = *&v98[32];
    *&v90[48] = *&v98[48];
    sub_1B7205588(v118, v88, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B7205588(v120, v88, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B7205588(v98, v88, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B730446C(v90);
    goto LABEL_7;
  }

  v82 = v15;
  *&v90[40] = *(a2 + 40);
  *&v90[56] = *(a2 + 56);
  *&v90[72] = *(a2 + 72);
  *&v90[88] = *(a2 + 88);
  *&v90[8] = *(a2 + 8);
  *&v90[24] = *(a2 + 24);
  *v90 = *&v120[0];
  LODWORD(v80) = _s10FinanceKit10RawAddressV2eeoiySbAC_ACtFZ_0(&v91, v90);
  v86[4] = *&v90[64];
  v86[5] = *&v90[80];
  v87 = *&v90[96];
  v86[0] = *v90;
  v86[1] = *&v90[16];
  v86[2] = *&v90[32];
  v86[3] = *&v90[48];
  sub_1B7205588(v118, v88, &qword_1EB995F40, &unk_1B78347E0);
  sub_1B7205588(v120, v88, &qword_1EB995F40, &unk_1B78347E0);
  sub_1B7205588(v98, v88, &qword_1EB995F40, &unk_1B78347E0);
  sub_1B730446C(v86);
  v88[4] = v95;
  v88[5] = v96;
  v89 = v97;
  v88[0] = v91;
  v88[1] = v92;
  v88[2] = v93;
  v88[3] = v94;
  sub_1B730446C(v88);
  *v90 = v26;
  *&v90[40] = v114;
  *&v90[56] = v115;
  *&v90[72] = v116;
  *&v90[88] = v117;
  *&v90[8] = v112;
  *&v90[24] = v113;
  sub_1B7205418(v90, &qword_1EB995F40, &unk_1B78347E0);
  if ((v80 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v80 = type metadata accessor for RawMerchant(0);
  v38 = v80[5];
  v39 = *(v82 + 48);
  sub_1B7205588(a1 + v38, v17, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(a2 + v38, v17 + v39, &unk_1EB994C70, &qword_1B7809800);
  v79 = v5;
  v40 = *(v5 + 48);
  if (v40(v17, 1, v4) == 1)
  {
    if (v40(v17 + v39, 1, v4) != 1)
    {
LABEL_19:
      v35 = &qword_1EB991C30;
      v36 = &unk_1B7816E10;
      v37 = v17;
      goto LABEL_20;
    }

    sub_1B7205418(v17, &unk_1EB994C70, &qword_1B7809800);
  }

  else
  {
    v41 = v85;
    sub_1B7205588(v17, v85, &unk_1EB994C70, &qword_1B7809800);
    if (v40(v17 + v39, 1, v4) == 1)
    {
LABEL_18:
      (*(v79 + 8))(v41, v4);
      goto LABEL_19;
    }

    v42 = v79;
    v43 = v81;
    (*(v79 + 32))(v81, v17 + v39, v4);
    sub_1B7535C74(&qword_1EB990310, MEMORY[0x1E6968FC8]);
    v78 = sub_1B7800828();
    v44 = *(v42 + 8);
    v44(v43, v4);
    v44(v85, v4);
    sub_1B7205418(v17, &unk_1EB994C70, &qword_1B7809800);
    if ((v78 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v45 = v80[6];
  v46 = *(v82 + 48);
  v17 = v84;
  sub_1B7205588(a1 + v45, v84, &unk_1EB994C70, &qword_1B7809800);
  v85 = v46;
  sub_1B7205588(a2 + v45, &v46[v17], &unk_1EB994C70, &qword_1B7809800);
  if (v40(v17, 1, v4) != 1)
  {
    v41 = v83;
    sub_1B7205588(v17, v83, &unk_1EB994C70, &qword_1B7809800);
    v47 = v85;
    if (v40(&v85[v17], 1, v4) != 1)
    {
      v50 = v79;
      v51 = v81;
      (*(v79 + 32))(v81, &v47[v17], v4);
      sub_1B7535C74(&qword_1EB990310, MEMORY[0x1E6968FC8]);
      v52 = sub_1B7800828();
      v53 = *(v50 + 8);
      v53(v51, v4);
      v53(v41, v4);
      sub_1B7205418(v17, &unk_1EB994C70, &qword_1B7809800);
      if ((v52 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (v40(&v85[v17], 1, v4) != 1)
  {
    goto LABEL_19;
  }

  sub_1B7205418(v17, &unk_1EB994C70, &qword_1B7809800);
LABEL_24:
  v54 = v80[7];
  v55 = *(a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  if ((v55 != *v57 || v56 != v57[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_21;
  }

  v58 = v80[8];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = v61[1];
  if (v60)
  {
    if (!v62 || (*v59 != *v61 || v60 != v62) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v62)
  {
    goto LABEL_21;
  }

  v63 = v80[9];
  v64 = (a1 + v63);
  v65 = *(a1 + v63 + 8);
  v66 = (a2 + v63);
  v67 = v66[1];
  if (v65)
  {
    if (!v67 || (*v64 != *v66 || v65 != v67) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v67)
  {
    goto LABEL_21;
  }

  v68 = v80[10];
  v69 = *(a1 + v68);
  v70 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  if (v69 == *v71 && v70 == v71[1] || (sub_1B78020F8() & 1) != 0)
  {
    v72 = v80[11];
    v73 = (a1 + v72);
    v74 = *(a1 + v72 + 8);
    v75 = (a2 + v72);
    v76 = v75[1];
    if (v74)
    {
      if (v76 && (*v73 == *v75 && v74 == v76 || (sub_1B78020F8() & 1) != 0))
      {
        goto LABEL_51;
      }
    }

    else if (!v76)
    {
LABEL_51:
      v48 = sub_1B77FF458();
      return v48 & 1;
    }
  }

LABEL_21:
  v48 = 0;
  return v48 & 1;
}

unint64_t sub_1B7687C24()
{
  result = qword_1EB99ADF8;
  if (!qword_1EB99ADF8)
  {
    result = swift_getWitnessTable(aID7_0, &type metadata for RawMerchant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99ADF8);
  }

  return result;
}

uint64_t sub_1B7687C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawMerchant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B7687D04(uint64_t a1)
{
  sub_1B72F2CB8(319, &qword_1EDAF8F88, &type metadata for RawAddress);
  if (v1 <= 0x3F)
  {
    sub_1B7325908(319);
    if (v2 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1B77FF4F8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B7687DFC()
{
  result = qword_1EB99AE08;
  if (!qword_1EB99AE08)
  {
    result = swift_getWitnessTable(asc_1B7857728, &type metadata for RawMerchant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AE08);
  }

  return result;
}

unint64_t sub_1B7687E54()
{
  result = qword_1EB99AE10;
  if (!qword_1EB99AE10)
  {
    result = swift_getWitnessTable(aYD7_0, &type metadata for RawMerchant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AE10);
  }

  return result;
}

unint64_t sub_1B7687EAC()
{
  result = qword_1EB99AE18;
  if (!qword_1EB99AE18)
  {
    result = swift_getWitnessTable(aQD74, &type metadata for RawMerchant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AE18);
  }

  return result;
}

uint64_t sub_1B7687F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373656E69737562 && a2 == 0xEF4C525574616843 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x55746361746E6F63 && a2 == 0xEA00000000004C52 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7876A70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id ManagedInstitutionImporter.insertOrUpdateInstitution(_:context:)(uint64_t *a1, void *a2)
{
  v5 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ManagedInstitution();
  v9 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(*a1, a1[1]);
  if (!v2)
  {
    v10 = v9;
    if (v9)
    {
      v8 = v9;
      _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA0D0VSo22NSManagedObjectContextCtFZ_0(v8, a1, a2);
    }

    else
    {
      sub_1B7688DB0(a1, v7, type metadata accessor for Institution);
      v11 = a2;
      v8 = sub_1B74FA170(v7, v11);
    }

    sub_1B7688858(a1 + *(v5 + 60), v8, a2);
  }

  return v8;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v44 - v5;
  v53 = type metadata accessor for RawBankConnectData.TermsAndConditions(0);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9925D8, &qword_1B78307C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40, &unk_1B7837A80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for RawBankConnectData.Institution(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ManagedInstitution();
  v18 = a2;
  v19 = v54;
  v54 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(*a1, a1[1]);
  if (!v19)
  {
    v20 = a1;
    v48 = v7;
    v49 = 0;
    v50 = v18;
    if (v54)
    {
      v17 = v54;
      v21 = v50;
      _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA18RawBankConnectDataO0D0VSo22NSManagedObjectContextCtFZ_0(v17, a1, v50);
    }

    else
    {
      sub_1B7688DB0(a1, v16, type metadata accessor for RawBankConnectData.Institution);
      v22 = v50;
      v23 = v50;
      v24 = v16;
      v21 = v22;
      v17 = sub_1B74FAC9C(v24, v23);
    }

    v25 = v51;
    v26 = v13;
    sub_1B7205588(v20 + *(v14 + 48), v10, &qword_1EB9925D8, &qword_1B78307C0);
    v27 = v53;
    v28 = (*(v25 + 48))(v10, 1, v53);
    v29 = v48;
    if (v28 == 1)
    {
      v30 = type metadata accessor for BankConnectTermsAndConditions(0);
      (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    }

    else
    {
      v47 = type metadata accessor for RawBankConnectData.TermsAndConditions;
      sub_1B7688CE8(v10, v48, type metadata accessor for RawBankConnectData.TermsAndConditions);
      v31 = *(v29 + 1);
      v51 = *v29;
      v45 = *(v27 + 24);
      v46 = v31;
      v32 = type metadata accessor for BankConnectTermsAndConditions(0);
      v33 = v32[5];
      v34 = sub_1B77FF988();
      v35 = *(v34 - 8);
      v36 = *(v35 + 16);
      v36(&v13[v33], &v29[v45], v34);
      v37 = *(v35 + 56);
      v37(v52, 1, 1, v34);
      v36(&v13[v32[7]], &v29[*(v53 + 28)], v34);
      v38 = v46;

      sub_1B7688D50(v29, v47);
      v39 = v32[6];
      v40 = v34;
      v21 = v50;
      v37(&v26[v39], 1, 1, v40);
      v41 = v52;
      *v26 = v51;
      *(v26 + 1) = v38;
      sub_1B72DFF88(v41, &v26[v39]);
      (*(*(v32 - 1) + 56))(v26, 0, 1, v32);
    }

    v42 = v49;
    sub_1B7688858(v26, v17, v21);
    sub_1B7688C30(v26);
    if (v42)
    {
    }
  }

  return v17;
}

void sub_1B7688858(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40, &unk_1B7837A80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for BankConnectTermsAndConditions(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v31 - v13);
  sub_1B7205588(a1, v8, &qword_1EB98FC40, &unk_1B7837A80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B7688C30(v8);
    [a2 setTermsAndConditionsObject_];
  }

  else
  {
    v31 = a2;
    sub_1B7688CE8(v8, v14, type metadata accessor for BankConnectTermsAndConditions);
    v15 = type metadata accessor for ManagedBankConnectTermsAndConditions();
    v16 = *v14;
    v17 = v14[1];

    v18 = v16;
    v19 = v33;
    v20 = static ManagedBankConnectTermsAndConditions.existingTermsAndConditions(withID:in:)(v18, v17);
    if (v19)
    {
      sub_1B7688D50(v14, type metadata accessor for BankConnectTermsAndConditions);
    }

    else
    {
      v21 = v20;

      if (v21)
      {
        v22 = v21;
        v23 = sub_1B77FF8B8();
        [v22 setPublishedAt_];

        v24 = sub_1B77FF8B8();
        [v22 setInEffectOn_];

        [v31 setTermsAndConditionsObject_];
      }

      else
      {
        v25 = v32;
        sub_1B7688DB0(v14, v32, type metadata accessor for BankConnectTermsAndConditions);
        v26 = objc_allocWithZone(v15);
        v27 = a3;
        v22 = [v26 initWithContext_];
        v28 = sub_1B7800838();
        [v22 setId_];

        v29 = sub_1B77FF8B8();
        [v22 setPublishedAt_];

        v30 = sub_1B77FF8B8();
        [v22 setInEffectOn_];

        sub_1B7688D50(v25, type metadata accessor for BankConnectTermsAndConditions);
        [v31 setTermsAndConditionsObject_];
      }

      sub_1B7688D50(v14, type metadata accessor for BankConnectTermsAndConditions);
    }
  }
}

uint64_t sub_1B7688C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40, &unk_1B7837A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7688CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7688D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7688DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ApplePayTransactionIdentifier.init(hexEncoded:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B77ED25C(a1, a2);
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  v7 = 0xF000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t ApplePayTransactionIdentifier.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ApplePayTransactionIdentifier.data.getter()
{
  v1 = *v0;
  sub_1B720ABEC(*v0, *(v0 + 8));
  return v1;
}

uint64_t ApplePayTransactionIdentifier.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B720A388(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ApplePayTransactionIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FF5C8();
  return sub_1B7802368();
}

unint64_t sub_1B7688F5C()
{
  result = qword_1EB99AE28;
  if (!qword_1EB99AE28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApplePayTransactionIdentifier, &type metadata for ApplePayTransactionIdentifier, v0, v1);
    atomic_store(result, &qword_1EB99AE28);
  }

  return result;
}

uint64_t RawECommerceOrderContent.ContentItem.lineItems.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawOrderReturn(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RawOrderPickupFulfillment(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RawOrderShippingFulfillment(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for RawOrderFulfillment(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawECommerceOrderContent.ContentItem(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76929E8(v1, v16, type metadata accessor for RawECommerceOrderContent.ContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B768D65C(v16, v4, type metadata accessor for RawOrderReturn);
    v17 = *v4;

    v18 = type metadata accessor for RawOrderReturn;
    v19 = v4;
  }

  else
  {
    sub_1B768D65C(v16, v13, type metadata accessor for RawOrderFulfillment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B768D65C(v13, v7, type metadata accessor for RawOrderPickupFulfillment);
      v17 = *v7;

      v18 = type metadata accessor for RawOrderPickupFulfillment;
      v19 = v7;
    }

    else
    {
      sub_1B768D65C(v13, v10, type metadata accessor for RawOrderShippingFulfillment);
      v17 = *v10;

      v18 = type metadata accessor for RawOrderShippingFulfillment;
      v19 = v10;
    }
  }

  sub_1B768D6C4(v19, v18);
  return v17;
}

uint64_t RawECommerceOrderContent.automaticUpdatesEnabledUntilDate.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v192 = &v181 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v190 = &v181 - v6;
  v7 = type metadata accessor for Duration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v191 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1B77FFB08();
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1B77FFC88();
  v189 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v188 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0, &qword_1B7853960);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v202 = &v181 - v12;
  v210 = type metadata accessor for RawOrderReturn(0);
  v13 = *(v210 - 8);
  v14 = MEMORY[0x1EEE9AC00](v210);
  v219 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v181 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v234 = (&v181 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v181 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE30, &unk_1B7857918);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v228 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v226 = &v181 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v232 = &v181 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v225 = (&v181 - v30);
  v31 = sub_1B77FF988();
  v229 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v231 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v195 = &v181 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v203 = &v181 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v218 = &v181 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v221 = &v181 - v40;
  v41 = type metadata accessor for RawECommerceOrderContent(0);
  MEMORY[0x1EEE9AC00](v41);
  v208 = &v181 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v200 = *(v198 - 8);
  v43 = MEMORY[0x1EEE9AC00](v198);
  v224 = &v181 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v181 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v230 = &v181 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v199 = &v181 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v184 = &v181 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v194 = &v181 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v206 = &v181 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v220 = &v181 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v227 = &v181 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v222 = (&v181 - v63);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v223 = &v181 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v201 = &v181 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v205 = &v181 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v181 - v70;
  v72 = RawECommerceOrderContent.isActive.getter();
  if (v72)
  {
    v73 = *(v229 + 56);

    return v73(a1, 1, 1, v31);
  }

  v183 = v47;
  v182 = a1;
  MEMORY[0x1EEE9AC00](v72);
  v179 = v1;
  v76 = sub_1B755E350(sub_1B76929CC, &v177, v75);
  v196 = v71;
  sub_1B75286C8(v76, v71);

  v207 = v41;
  v77 = *(v1 + *(v41 + 64));
  v197 = v1;
  sub_1B76929E8(v1, v208, type metadata accessor for RawECommerceOrderContent);
  v78 = *(v77 + 16);

  v233 = v31;
  if (v78)
  {
    v79 = v77 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v80 = *(v13 + 72);
    v81 = -1;
    while (1)
    {
      sub_1B76929E8(v79, v22, type metadata accessor for RawOrderReturn);
      if (v22[8] > 3u)
      {
        break;
      }

      sub_1B768D6C4(v22, type metadata accessor for RawOrderReturn);
      --v81;
      v79 += v80;
      if (v78 + v81 == -1)
      {
        v82 = 1;
        v83 = v78;
        v31 = v233;
        goto LABEL_11;
      }
    }

    v85 = v22;
    v84 = v225;
    sub_1B768D65C(v85, v225, type metadata accessor for RawOrderReturn);
    v82 = 0;
    v83 = -v81;
    v31 = v233;
  }

  else
  {
    v82 = 1;
    v83 = 0;
LABEL_11:
    v84 = v225;
  }

  v86 = v210;
  v216 = *(v13 + 56);
  v217 = v13 + 56;
  v216(v84, v82, 1, v210);
  v87 = v232;
  sub_1B722376C(v84, v232, &qword_1EB99AE30, &unk_1B7857918);
  v88 = *(v13 + 48);
  v215 = v13 + 48;
  v214 = v88;
  v89 = v88(v87, 1, v86);
  v209 = v77;
  if (v89 == 1)
  {
    v90 = v223;
    v225 = *(v229 + 56);
    (v225)(v223, 1, 1, v31);
    v91 = *(v229 + 48);
    v92 = (v229 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v93 = v197;
  }

  else
  {
    v94 = v87;
    v95 = v234;
    sub_1B768D65C(v94, v234, type metadata accessor for RawOrderReturn);
    v96 = v222;
    sub_1B7205588(v95 + *(v86 + 40), v222, &qword_1EB98EBD0, &unk_1B7809780);
    v91 = *(v229 + 48);
    v232 = (v229 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v97 = (v91)(v96, 1, v31);
    v93 = v197;
    if (v97 == 1)
    {
      v98 = v197;
      v99 = v223;
      (*(v229 + 16))(v223, v208 + *(v207 + 48), v31);
      v90 = v99;
      v93 = v98;
      if ((v91)(v96, 1, v31) != 1)
      {
        sub_1B7205418(v96, &qword_1EB98EBD0, &unk_1B7809780);
      }
    }

    else
    {
      v90 = v223;
      (*(v229 + 32))(v223, v96, v31);
    }

    sub_1B768D6C4(v234, type metadata accessor for RawOrderReturn);
    v225 = *(v229 + 56);
    (v225)(v90, 0, 1, v31);
    v92 = v232;
  }

  v232 = v92;
  v100 = (v91)(v90, 1, v31);
  v234 = v91;
  if (v100 != 1)
  {
    v104 = v229 + 32;
    v222 = *(v229 + 32);
    v223 = (v229 + 32);
    result = (v222)(v221, v90, v31);
    v204 = (v104 - 16);
    v213 = v104 + 24;
    v212 = (v104 - 24);
    v105 = v232;
    v106 = v210;
    for (i = v13; ; v13 = i)
    {
      v107 = v220;
      if (v83 != v78)
      {
        break;
      }

LABEL_31:
      v110 = 1;
      v83 = v78;
LABEL_33:
      v111 = 1;
      v112 = v226;
      v216(v226, v110, 1, v106);
      v113 = v112;
      v114 = v228;
      sub_1B722376C(v113, v228, &qword_1EB99AE30, &unk_1B7857918);
      v115 = v214(v114, 1, v106);
      v116 = v221;
      if (v115 != 1)
      {
        v117 = v219;
        sub_1B768D65C(v228, v219, type metadata accessor for RawOrderReturn);
        sub_1B7205588(v117 + *(v106 + 40), v107, &qword_1EB98EBD0, &unk_1B7809780);
        v118 = v233;
        v119 = v105;
        v120 = v234;
        if ((v234)(v107, 1, v233) == 1)
        {
          (*v204)(v227, v208 + *(v207 + 48), v118);
          v121 = v120(v107, 1, v118);
          v105 = v119;
          if (v121 != 1)
          {
            sub_1B7205418(v107, &qword_1EB98EBD0, &unk_1B7809780);
          }
        }

        else
        {
          (v222)(v227, v107, v118);
          v105 = v119;
        }

        sub_1B768D6C4(v219, type metadata accessor for RawOrderReturn);
        v111 = 0;
        v106 = v210;
      }

      v122 = v227;
      v123 = v111;
      v124 = v233;
      (v225)(v227, v123, 1, v233);
      if ((v234)(v122, 1, v124) == 1)
      {
        sub_1B7205418(v122, &qword_1EB98EBD0, &unk_1B7809780);
        v103 = v201;
        (v222)(v201, v116, v124);
        v101 = 0;
        v93 = v197;
        v31 = v124;
        v102 = v203;
        v91 = v234;
        goto LABEL_43;
      }

      v125 = v105;
      v126 = v122;
      v127 = v218;
      v128 = v222;
      (v222)(v218, v126, v124);
      sub_1B719BD38(&qword_1EB98EBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v129 = sub_1B78007E8();
      v130 = *v212;
      if (v129)
      {
        v130(v116, v124);
        result = v128(v116, v127, v124);
      }

      else
      {
        result = (v130)(v127, v124);
      }

      v105 = v125;
    }

    v108 = v209;
    while (v83 < v78)
    {
      result = sub_1B76929E8(v108 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v83, v18, type metadata accessor for RawOrderReturn);
      v109 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_68;
      }

      if (v18[8] > 3u)
      {
        sub_1B768D65C(v18, v226, type metadata accessor for RawOrderReturn);
        v110 = 0;
        ++v83;
        goto LABEL_33;
      }

      result = sub_1B768D6C4(v18, type metadata accessor for RawOrderReturn);
      ++v83;
      if (v109 == v78)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  sub_1B7205418(v90, &qword_1EB98EBD0, &unk_1B7809780);
  v101 = 1;
  v102 = v203;
  v103 = v201;
LABEL_43:
  (v225)(v103, v101, 1, v31);

  sub_1B768D6C4(v208, type metadata accessor for RawECommerceOrderContent);
  v131 = (v91)(v103, 1, v31);
  v132 = v207;
  v133 = v205;
  if (v131 == 1)
  {
    sub_1B7205418(v103, &qword_1EB98EBD0, &unk_1B7809780);
    v134 = 1;
    v135 = v229;
  }

  else
  {
    Date.noon.getter(v102);
    v136 = *(v229 + 8);
    v136(v103, v31);
    Date.dayAfter.getter(v133);
    v136(v102, v31);
    v135 = v229;
    v134 = 0;
  }

  v137 = v202;
  v138 = v135 + 56;
  (v225)(v133, v134, 1, v31);
  sub_1B7205588(v93 + *(v132 + 60), v137, &qword_1EB99A4B0, &qword_1B7853960);
  v139 = type metadata accessor for RawOrderReturnInfo(0);
  v140 = (*(*(v139 - 8) + 48))(v137, 1, v139);
  v228 = v138;
  if (v140 == 1)
  {
    v141 = v133;
    v142 = &qword_1EB99A4B0;
    v143 = &qword_1B7853960;
    v144 = v137;
LABEL_50:
    sub_1B7205418(v144, v142, v143);
    v147 = 1;
    v148 = v200;
    goto LABEL_53;
  }

  v145 = v137 + *(v139 + 28);
  v146 = v194;
  sub_1B7205588(v145, v194, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B768D6C4(v137, type metadata accessor for RawOrderReturnInfo);
  if ((v91)(v146, 1, v31) == 1)
  {
    v141 = v133;
    v142 = &qword_1EB98EBD0;
    v143 = &unk_1B7809780;
    v144 = v146;
    goto LABEL_50;
  }

  Date.noon.getter(v195);
  v226 = *(v229 + 8);
  v227 = (v229 + 8);
  (v226)(v146, v31);
  v149 = v186;
  v150 = v185;
  v151 = v187;
  (*(v186 + 104))(v185, *MEMORY[0x1E6969830], v187);
  v152 = v188;
  sub_1B77FFB18();
  (*(v149 + 8))(v150, v151);
  v153 = v189;
  (*(v189 + 56))(v190, 1, 1, v193);
  v154 = sub_1B77FFCF8();
  (*(*(v154 - 8) + 56))(v192, 1, 1, v154);
  LOBYTE(v180) = 1;
  v179 = 0;
  LOBYTE(v178) = 1;
  v177 = 0;
  v155 = v191;
  v156 = v195;
  sub_1B77FECD8();
  v157 = v184;
  sub_1B77FFC08();
  result = (v234)(v157, 1, v31);
  if (result == 1)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v141 = v133;
  sub_1B768D6C4(v155, type metadata accessor for Duration);
  (*(v153 + 8))(v152, v193);
  (v226)(v156, v31);
  (*(v229 + 32))(v206, v157, v31);
  v147 = 0;
  v148 = v200;
LABEL_53:
  v158 = v206;
  (v225)(v206, v147, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE38, &qword_1B7857928);
  v159 = *(v148 + 72);
  v160 = (*(v148 + 80) + 32) & ~*(v148 + 80);
  v227 = swift_allocObject();
  v161 = &v227[v160];
  sub_1B7205588(v196, &v227[v160], &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(v141, &v161[v159], &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(v158, &v161[2 * v159], &qword_1EB98EBD0, &unk_1B7809780);
  v162 = (v229 + 32);
  v163 = MEMORY[0x1E69E7CC0];
  v164 = 3;
  v226 = v161;
  v165 = v224;
  do
  {
    v166 = v230;
    sub_1B7205588(v161, v230, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B722376C(v166, v165, &qword_1EB98EBD0, &unk_1B7809780);
    if ((v234)(v165, 1, v31) == 1)
    {
      sub_1B7205418(v165, &qword_1EB98EBD0, &unk_1B7809780);
    }

    else
    {
      v167 = *v162;
      (*v162)(v231, v165, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v163 = sub_1B723F170(0, *(v163 + 2) + 1, 1, v163);
      }

      v169 = *(v163 + 2);
      v168 = *(v163 + 3);
      v170 = v229;
      if (v169 >= v168 >> 1)
      {
        v171 = sub_1B723F170((v168 > 1), v169 + 1, 1, v163);
        v170 = v229;
        v163 = v171;
      }

      *(v163 + 2) = v169 + 1;
      v31 = v233;
      v167(&v163[((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v169], v231, v233);
      v165 = v224;
    }

    v161 += v159;
    --v164;
  }

  while (v164);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v172 = v199;
  sub_1B75286C8(v163, v199);

  v173 = v183;
  sub_1B7205588(v172, v183, &qword_1EB98EBD0, &unk_1B7809780);
  v174 = v234;
  if ((v234)(v173, 1, v31) == 1)
  {
    v175 = v203;
    Date.noon.getter(v203);
    v176 = v182;
    Date.dayAfter.getter(v182);
    (*(v229 + 8))(v175, v31);
    sub_1B7205418(v172, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v206, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v205, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v196, &qword_1EB98EBD0, &unk_1B7809780);
    if (v174(v173, 1, v31) != 1)
    {
      sub_1B7205418(v173, &qword_1EB98EBD0, &unk_1B7809780);
    }
  }

  else
  {
    sub_1B7205418(v172, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v206, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v205, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v196, &qword_1EB98EBD0, &unk_1B7809780);
    v176 = v182;
    (*v162)(v182, v173, v31);
  }

  return (v225)(v176, 0, 1, v31);
}

_WORD *RawECommerceOrderContent.DecodingConfiguration.init(schemaVersion:)@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t RawECommerceOrderContent.init(from:configuration:)@<X0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v161 = a1;
  v139 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v137 = v132 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8, &unk_1B7853968);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v136 = v132 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0, &qword_1B7853960);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *&v141 = v132 - v9;
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v138 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  *&v142 = v132 - v14;
  v15 = sub_1B77FF988();
  v151 = *(v15 - 8);
  v152 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  *&v143 = v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v144 = v132 - v18;
  v147 = type metadata accessor for RawMerchant(0);
  MEMORY[0x1EEE9AC00](v147);
  v148 = v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE40, &unk_1B7857930);
  v153 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v199 = v132 - v20;
  v21 = type metadata accessor for RawECommerceOrderContent(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a2;
  v135 = *(a2 + 2);
  v145 = v22[8];
  v24[v145] = 2;
  v26 = &v24[v22[14]];
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  v160 = v26;
  *v26 = 0u;
  v27 = v22[15];
  v28 = type metadata accessor for RawOrderReturnInfo(0);
  v29 = *(*(v28 - 8) + 56);
  v159 = v27;
  v140 = v28;
  v29(&v24[v27], 1, 1);
  v30 = &v24[v21[18]];
  *v30 = xmmword_1B78301C0;
  *(v30 + 1) = 0u;
  *(v30 + 2) = 0u;
  *(v30 + 3) = 0u;
  v158 = v30;
  *(v30 + 4) = 0u;
  v31 = &v24[v21[22]];
  *(v31 + 6) = 0;
  *(v31 + 1) = 0u;
  *(v31 + 2) = 0u;
  v155 = v31;
  *v31 = 0u;
  v32 = v21[23];
  v33 = type metadata accessor for RawOrderProvider(0);
  v34 = *(*(v33 - 8) + 56);
  v156 = v32;
  v34(&v24[v32], 1, 1, v33);
  v35 = v21[24];
  v149 = v11;
  v150 = v10;
  v38 = *(v11 + 56);
  v36 = v11 + 56;
  v37 = v38;
  v157 = v35;
  v38(&v24[v35], 1, 1, v10);
  v162 = v21;
  v163 = v24;
  v39 = v21[26];
  v40 = v161;
  *&v24[v39] = v25;
  v41 = v39;
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_1B7692FAC();
  v42 = v154;
  sub_1B78023C8();
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    LODWORD(v154) = 0;
    v47 = 0;

    LODWORD(v161) = 0;
    LODWORD(v153) = 0;
    v48 = 0;
    v49 = v163;
    LODWORD(v199) = 0;
    if (v154)
    {
      (*(v151 + 8))(&v163[v162[12]], v152);
    }

LABEL_13:
    v65 = *(v160 + 3);
    v196 = *(v160 + 2);
    v197 = v65;
    v198 = *(v160 + 4);
    v66 = *(v160 + 1);
    v194 = *v160;
    v195 = v66;
    sub_1B7205418(&v194, &qword_1EB9982A8, &qword_1B7864AE0);
    sub_1B7205418(v49 + v159, &qword_1EB99A4B0, &qword_1B7853960);
    if (v47)
    {
    }

    if (v199)
    {
    }

    v67 = *(v158 + 3);
    v191 = *(v158 + 2);
    v192 = v67;
    v193 = *(v158 + 4);
    v68 = *(v158 + 1);
    v189 = *v158;
    v190 = v68;
    sub_1B7205418(&v189, &qword_1EB99AE50, &unk_1B7857940);
    if (v48)
    {

      if (!v153)
      {
        goto LABEL_19;
      }
    }

    else if (!v153)
    {
LABEL_19:
      if (!v161)
      {
LABEL_21:
        sub_1B74C69A8(*v155, v155[1], v155[2], v155[3], v155[4], v155[5], v155[6]);
        sub_1B7205418(v49 + v156, &qword_1EB99A4B8, &unk_1B7853968);
        return sub_1B7205418(v49 + v157, &unk_1EB994C70, &qword_1B7809800);
      }

LABEL_20:

      goto LABEL_21;
    }

    if (!v161)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v43 = v145;
  v134 = v33;
  v154 = v37;
  LOBYTE(v194) = 0;
  sub_1B719BD38(&qword_1EB99AE58, type metadata accessor for RawMerchant, protocol conformance descriptor for RawMerchant);
  v44 = v148;
  v45 = v146;
  v46 = v199;
  sub_1B7801E48();
  v132[1] = v36;
  v133 = v41;
  v52 = v163;
  sub_1B768D65C(v44, v163, type metadata accessor for RawMerchant);
  LOBYTE(v194) = 1;
  v53 = sub_1B7801DF8();
  v54 = v162;
  v55 = (v52 + v162[5]);
  *v55 = v53;
  v55[1] = v56;
  LOBYTE(v194) = 2;
  v148 = 0;
  v57 = sub_1B7801DF8();
  v58 = (v52 + v54[6]);
  *v58 = v57;
  v58[1] = v59;
  LOBYTE(v194) = 3;
  v60 = sub_1B7801D78();
  v61 = (v52 + v54[7]);
  *v61 = v60;
  v61[1] = v62;
  v147 = v62;
  LOBYTE(v189) = 4;
  sub_1B7693000();
  sub_1B7801DB8();
  *(v52 + v43) = v194;
  LOBYTE(v189) = 5;
  sub_1B7693054();
  sub_1B7801E48();
  v70 = v162;
  *(v52 + v162[9]) = v194;
  LOBYTE(v194) = 6;
  v71 = sub_1B7801D78();
  v73 = v72;
  v74 = (v52 + v70[10]);
  *v74 = v71;
  v74[1] = v72;
  LOBYTE(v194) = 7;
  v75 = sub_1B719BD38(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v76 = v144;
  v77 = v152;
  v145 = v75;
  sub_1B7801E48();
  v132[0] = v73;
  v78 = *(v151 + 32);
  v78(&v163[v70[11]], v76, v77);
  LOBYTE(v194) = 8;
  v79 = v143;
  sub_1B7801E48();
  v78(&v163[v162[12]], v79, v152);
  LOBYTE(v194) = 9;
  sub_1B719BD38(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v80 = v45;
  v81 = v46;
  sub_1B7801E48();
  v82 = v163;
  v83 = *(v149 + 32);
  v83(&v163[v162[13]], v142, v150);
  v84 = *(v82 + v133);
  v188 = 10;
  v187 = v84;
  v85 = sub_1B7801EB8();
  if (v85)
  {
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v194 = 0u;
  }

  else
  {
    sub_1B7693204();
    sub_1B7801D58();
  }

  v184 = v196;
  v185 = v197;
  v186 = v198;
  v182 = v194;
  v183 = v195;
  v86 = v160;
  v87 = *(v160 + 3);
  v191 = *(v160 + 2);
  v192 = v87;
  v193 = *(v160 + 4);
  v88 = *(v160 + 1);
  v189 = *v160;
  v190 = v88;
  sub_1B7205418(&v189, &qword_1EB9982A8, &qword_1B7864AE0);
  v89 = v185;
  *(v86 + 2) = v184;
  *(v86 + 3) = v89;
  *(v86 + 4) = v186;
  v90 = v183;
  *v86 = v182;
  *(v86 + 1) = v90;
  LOBYTE(v177) = 11;
  sub_1B719BD38(&qword_1EB99AE70, type metadata accessor for RawOrderReturnInfo, protocol conformance descriptor for RawOrderReturnInfo);
  sub_1B7801DB8();
  sub_1B7213740(v141, &v163[v159], &qword_1EB99A4B0, &qword_1B7853960);
  type metadata accessor for RawOrderReturn.DecodingConfiguration();
  v91 = swift_allocObject();
  v92 = MEMORY[0x1E69E7CD0];
  *(v91 + 16) = MEMORY[0x1E69E7CD0];
  v145 = v91;
  v93 = sub_1B768EC24(12, v91, &qword_1EB99AEE8, &qword_1B7857968, sub_1B7696130);
  v94 = MEMORY[0x1E69E7CC0];
  if (v93)
  {
    v94 = v93;
  }

  *&v163[v162[16]] = v94;
  type metadata accessor for RawOrderFulfillment.DecodingConfiguration();
  v95 = swift_allocObject();
  *(v95 + 16) = v92;
  v144 = v95;
  v96 = sub_1B768EC24(13, v95, &qword_1EB99AF00, &qword_1B7857970, sub_1B769607C);
  v97 = MEMORY[0x1E69E7CC0];
  if (v96)
  {
    v97 = v96;
  }

  *&v163[v162[17]] = v97;
  v176 = 14;
  sub_1B76930A8();
  sub_1B7801DB8();
  v172 = v179;
  v173 = v180;
  v170 = v177;
  v171 = v178;
  v98 = v158;
  v99 = *(v158 + 2);
  v100 = *(v158 + 3);
  v101 = *v158;
  v175[1] = *(v158 + 1);
  v175[2] = v99;
  v102 = *(v158 + 4);
  v175[3] = v100;
  v175[4] = v102;
  v174 = v181;
  v175[0] = v101;
  sub_1B7205418(v175, &qword_1EB99AE50, &unk_1B7857940);
  v103 = v173;
  *(v98 + 2) = v172;
  *(v98 + 3) = v103;
  *(v98 + 4) = v174;
  v104 = v171;
  *v98 = v170;
  *(v98 + 1) = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30, &qword_1B785A620);
  LOBYTE(v164) = 15;
  sub_1B7457370(&qword_1EB994F38, sub_1B7457208, MEMORY[0x1E69E6330]);
  sub_1B7801DB8();
  v105 = v166;
  if (!v166)
  {
    v105 = MEMORY[0x1E69E7CC0];
  }

  *&v163[v162[19]] = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE80, &unk_1B7857950);
  LOBYTE(v164) = 18;
  sub_1B76930FC();
  sub_1B7801DB8();
  v106 = v166;
  if (!v166)
  {
    v106 = MEMORY[0x1E69E7CC0];
  }

  *&v163[v162[20]] = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  LOBYTE(v164) = 19;
  sub_1B721523C(&qword_1EDAF64A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1B7801DB8();
  v107 = v166;
  if (!v166)
  {
    v107 = MEMORY[0x1E69E7CC0];
  }

  *&v163[v162[21]] = v107;
  LOBYTE(v164) = 20;
  sub_1B76931B0();
  sub_1B7801DB8();
  v108 = v169;
  v109 = v155;
  v110 = *v155;
  v111 = v155[1];
  v112 = v155[2];
  v113 = v155[3];
  v114 = v155[4];
  v115 = v155[5];
  v116 = v155[6];
  v142 = v166;
  v143 = v168;
  v141 = v167;
  sub_1B74C69A8(v110, v111, v112, v113, v114, v115, v116);
  v117 = v141;
  *v109 = v142;
  *(v109 + 1) = v117;
  *(v109 + 2) = v143;
  v109[6] = v108;
  LOBYTE(v166) = 21;
  sub_1B719BD38(&qword_1EB99AEA0, type metadata accessor for RawOrderProvider, protocol conformance descriptor for RawOrderProvider);
  sub_1B7801DB8();
  sub_1B7213740(v136, &v163[v156], &qword_1EB99A4B8, &unk_1B7853968);
  LOBYTE(v166) = 22;
  sub_1B7801DB8();
  *&v143 = &v163[v162[25]];
  if ((*(v149 + 48))(v137, 1, v150) != 1)
  {
    v83(v138, v137, v150);
    v122 = sub_1B77FF4C8();
    if (v123)
    {
      *&v166 = v122;
      *(&v166 + 1) = v123;
      v164 = 0x7370747468;
      v165 = 0xE500000000000000;
      sub_1B7205210();
      v124 = sub_1B78017F8();

      if ((v124 == 0) | v135 & 1)
      {
        goto LABEL_45;
      }
    }

    else if (v135)
    {
LABEL_45:
      v125 = v163;
      v126 = v157;
      sub_1B7205418(&v163[v157], &unk_1EB994C70, &qword_1B7809800);
      v127 = v150;
      (*(v149 + 16))(v125 + v126, v138, v150);
      v154(v125 + v126, 0, 1, v127);
      LOBYTE(v166) = 23;
      v128 = sub_1B7801DF8();
      v130 = v129;
      if (sub_1B78009A8() >= 16)
      {

        (*(v149 + 8))(v138, v150);
        (*(v153 + 8))(v81, v80);
        v131 = v143;
        *v143 = v128;
        *(v131 + 8) = v130;
        goto LABEL_42;
      }

      LOBYTE(v166) = 23;
      sub_1B7801B18();
      swift_allocError();
      sub_1B728216C(&qword_1EB99AEA8, &qword_1EB99AE40, &unk_1B7857930, MEMORY[0x1E69E6F50]);
      goto LABEL_48;
    }

    LOBYTE(v166) = 22;
    sub_1B7801B18();
    swift_allocError();
    sub_1B728216C(&qword_1EB99AEA8, &qword_1EB99AE40, &unk_1B7857930, MEMORY[0x1E69E6F50]);
LABEL_48:
    sub_1B7801AD8();
    swift_willThrow();

    (*(v149 + 8))(v138, v150);
    (*(v153 + 8))(v81, v80);
    LODWORD(v154) = 1;
    LODWORD(v199) = 1;
    v63 = v148;
    __swift_destroy_boxed_opaque_existential_1(v161);
    sub_1B768D6C4(v163, type metadata accessor for RawMerchant);
    if (!v63)
    {
    }

    LODWORD(v148) = 1;
    v47 = v199;
    LODWORD(v153) = 1;
    LODWORD(v161) = 1;
    v64 = v162;
    v49 = v163;

    LODWORD(v199) = 1;
    v50 = v152;
    v51 = *(v151 + 8);
    v51(v49 + v64[11], v152);
    if (v154)
    {
      v51(v49 + v64[12], v50);
    }

    v48 = v148;
    (*(v149 + 8))(v49 + v64[13], v150);
    goto LABEL_13;
  }

  (*(v153 + 8))(v81, v80);

  sub_1B7205418(v137, &unk_1EB994C70, &qword_1B7809800);
  v118 = v163;
  v119 = v157;
  sub_1B7205418(&v163[v157], &unk_1EB994C70, &qword_1B7809800);
  v154(v118 + v119, 1, 1, v150);
  v120 = v143;
  *v143 = 0;
  *(v120 + 8) = 0;
LABEL_42:
  v121 = v163;
  sub_1B76929E8(v163, v139, type metadata accessor for RawECommerceOrderContent);
  __swift_destroy_boxed_opaque_existential_1(v161);
  return sub_1B768D6C4(v121, type metadata accessor for RawECommerceOrderContent);
}

uint64_t RawECommerceOrderContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AEB8, &qword_1B7857960);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7692FAC();
  sub_1B78023F8();
  LOBYTE(v56[0]) = 0;
  type metadata accessor for RawMerchant(0);
  sub_1B719BD38(&qword_1EB99AEC0, type metadata accessor for RawMerchant, protocol conformance descriptor for RawMerchant);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for RawECommerceOrderContent(0);
    LOBYTE(v56[0]) = 1;
    sub_1B7801F78();
    LOBYTE(v56[0]) = 2;
    sub_1B7801F78();
    LOBYTE(v56[0]) = 3;
    sub_1B7801EF8();
    LOBYTE(v56[0]) = *(v3 + v9[8]);
    LOBYTE(v51) = 4;
    sub_1B7693258();
    sub_1B7801F38();
    LOBYTE(v56[0]) = *(v3 + v9[9]);
    LOBYTE(v51) = 5;
    sub_1B76932AC();
    sub_1B7801FC8();
    LOBYTE(v56[0]) = 6;
    sub_1B7801EF8();
    v32 = v9[11];
    LOBYTE(v56[0]) = 7;
    v10 = sub_1B77FF988();
    sub_1B719BD38(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v32 = v10;
    sub_1B7801FC8();
    LOBYTE(v56[0]) = 8;
    sub_1B7801FC8();
    v64 = 9;
    v11 = sub_1B77FF4F8();
    v32 = sub_1B719BD38(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7801FC8();
    v12 = (v3 + v9[14]);
    v13 = v12[1];
    v14 = v12[3];
    v57 = v12[2];
    v58 = v14;
    v15 = v12[3];
    v59 = v12[4];
    v16 = v12[1];
    v56[0] = *v12;
    v56[1] = v16;
    v31[0] = v9[26];
    v31[1] = v11;
    v17 = *(v3 + v31[0]);
    v53 = v57;
    v54 = v15;
    v55 = v12[4];
    v51 = v56[0];
    v52 = v13;
    v63 = 10;
    v62 = v17;
    sub_1B7205588(v56, v50, &qword_1EB9982A8, &qword_1B7864AE0);
    sub_1B7693300();
    sub_1B7801EE8();
    v50[2] = v53;
    v50[3] = v54;
    v50[4] = v55;
    v50[0] = v51;
    v50[1] = v52;
    sub_1B7205418(v50, &qword_1EB9982A8, &qword_1B7864AE0);
    LOBYTE(v46[0]) = 11;
    type metadata accessor for RawOrderReturnInfo(0);
    sub_1B719BD38(&qword_1EB99AEE0, type metadata accessor for RawOrderReturnInfo, protocol conformance descriptor for RawOrderReturnInfo);
    sub_1B7801F38();
    if (*(*(v3 + v9[16]) + 16))
    {
      *&v46[0] = *(v3 + v9[16]);
      LOBYTE(v41) = 12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AEE8, &qword_1B7857968);
      sub_1B7693354();
      sub_1B7801FC8();
    }

    if (*(*(v3 + v9[17]) + 16))
    {
      *&v46[0] = *(v3 + v9[17]);
      LOBYTE(v41) = 13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AF00, &qword_1B7857970);
      sub_1B7693408();
      sub_1B7801FC8();
    }

    v19 = (v3 + v9[18]);
    v20 = v19[1];
    v21 = v19[3];
    v47 = v19[2];
    v48 = v21;
    v22 = v19[3];
    v49 = v19[4];
    v23 = v19[1];
    v46[0] = *v19;
    v46[1] = v23;
    v43 = v47;
    v44 = v22;
    v45 = v19[4];
    v41 = v46[0];
    v42 = v20;
    v61 = 14;
    sub_1B7205588(v46, v40, &qword_1EB99AE50, &unk_1B7857940);
    sub_1B76934BC();
    sub_1B7801F38();
    v40[2] = v43;
    v40[3] = v44;
    v40[4] = v45;
    v40[0] = v41;
    v40[1] = v42;
    sub_1B7205418(v40, &qword_1EB99AE50, &unk_1B7857940);
    if (*(*(v3 + v9[19]) + 16))
    {
      v33 = *(v3 + v9[19]);
      v60 = 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30, &qword_1B785A620);
      sub_1B7457370(&qword_1EB994F58, sub_1B74573E8, MEMORY[0x1E69E6300]);
      sub_1B7801FC8();
    }

    LOBYTE(v33) = 17;
    sub_1B7693510();
    sub_1B7801FC8();
    if (*(*(v3 + v9[20]) + 16))
    {
      v33 = *(v3 + v9[20]);
      v60 = 18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE80, &unk_1B7857950);
      sub_1B7693564();
      sub_1B7801FC8();
    }

    if (*(*(v3 + v9[21]) + 16))
    {
      v33 = *(v3 + v9[21]);
      v60 = 19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
      sub_1B721523C(&qword_1EB98F960, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      sub_1B7801FC8();
    }

    v24 = (v3 + v9[22]);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[4];
    v29 = v24[5];
    v30 = v24[6];
    v33 = *v24;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v60 = 20;
    sub_1B74C6ADC(v33, v25, v26, v27, v28, v29, v30);
    sub_1B7693618();
    sub_1B7801F38();
    sub_1B74C69A8(v33, v34, v35, v36, v37, v38, v39);
    LOBYTE(v33) = 21;
    type metadata accessor for RawOrderProvider(0);
    sub_1B719BD38(&qword_1EB99AF40, type metadata accessor for RawOrderProvider, protocol conformance descriptor for RawOrderProvider);
    sub_1B7801F38();
    LOBYTE(v33) = 22;
    sub_1B7801F38();
    LOBYTE(v33) = 23;
    sub_1B7801EF8();
    LOWORD(v33) = *(v3 + v31[0]);
    v60 = 24;
    sub_1B769366C();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

FinanceKit::RawOrderStatus_optional __swiftcall RawOrderStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderStatus.rawValue.getter()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x656C6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852141679;
  }
}

uint64_t sub_1B768D1D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v3 = 0x656C6C65636E6163;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1852141679;
  }

  if (v2)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x6574656C706D6F63;
  if (*a2 != 1)
  {
    v6 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1852141679;
  }

  if (*a2)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();
  }

  return v9 & 1;
}

uint64_t sub_1B768D2C4()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B768D368(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B768D3F8(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B768D4A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v4 = 0x656C6C65636E6163;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1852141679;
  }

  if (!v5)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t RawOrderError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t sub_1B768D65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B768D6C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RawECommerceOrderContent.orderTypeIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 20));

  return v1;
}

void RawECommerceOrderContent.orderTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawECommerceOrderContent(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawECommerceOrderContent.orderIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 24));

  return v1;
}

void RawECommerceOrderContent.orderIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawECommerceOrderContent(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawECommerceOrderContent.orderNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 28));

  return v1;
}

void RawECommerceOrderContent.orderNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawECommerceOrderContent(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawECommerceOrderContent.changeNotifications.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawECommerceOrderContent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RawECommerceOrderContent.changeNotifications.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawECommerceOrderContent(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t RawECommerceOrderContent.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawECommerceOrderContent(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t RawECommerceOrderContent.status.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawECommerceOrderContent(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t RawECommerceOrderContent.statusDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 40));

  return v1;
}

void RawECommerceOrderContent.statusDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawECommerceOrderContent(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawECommerceOrderContent.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 44);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawECommerceOrderContent.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 44);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawECommerceOrderContent.updatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawECommerceOrderContent.updatedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawECommerceOrderContent.orderManagementURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 52);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawECommerceOrderContent.orderManagementURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 52);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawECommerceOrderContent.payment.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 56));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_1B7205588(&v11, &v10, &qword_1EB9982A8, &qword_1B7864AE0);
}

__n128 RawECommerceOrderContent.payment.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 56));
  v4 = v3[4];
  v8[3] = v3[3];
  v8[4] = v4;
  v5 = v3[2];
  v8[1] = v3[1];
  v8[2] = v5;
  v8[0] = *v3;
  sub_1B7205418(v8, &qword_1EB9982A8, &qword_1B7864AE0);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

double RawECommerceOrderContent.returns.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);

  return result;
}

double RawECommerceOrderContent.fulfillments.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);

  return result;
}

uint64_t RawECommerceOrderContent.customer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 72));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_1B7205588(&v11, &v10, &qword_1EB99AE50, &unk_1B7857940);
}

__n128 RawECommerceOrderContent.customer.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 72));
  v4 = v3[4];
  v8[3] = v3[3];
  v8[4] = v4;
  v5 = v3[2];
  v8[1] = v3[1];
  v8[2] = v5;
  v8[0] = *v3;
  sub_1B7205418(v8, &qword_1EB99AE50, &unk_1B7857940);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

double RawECommerceOrderContent.lineItems.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);

  return result;
}

void RawECommerceOrderContent.lineItems.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 76);

  *(v1 + v3) = a1;
}

double RawECommerceOrderContent.associatedApplications.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);

  return result;
}

void RawECommerceOrderContent.associatedApplications.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 80);

  *(v1 + v3) = a1;
}

double RawECommerceOrderContent.associatedApplicationIdentifiers.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);

  return result;
}

void RawECommerceOrderContent.associatedApplicationIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 84);

  *(v1 + v3) = a1;
}

double RawECommerceOrderContent.barcode.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 88));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  return sub_1B74C6ADC(v4, v5, v6, v7, v8, v9, v10);
}

__n128 RawECommerceOrderContent.barcode.setter(uint64_t a1)
{
  v7 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 88));
  sub_1B74C69A8(*v4, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6]);
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  result = v7;
  *(v4 + 2) = v7;
  v4[6] = v3;
  return result;
}

uint64_t RawECommerceOrderContent.authenticationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 100));

  return v1;
}

uint64_t RawECommerceOrderContent.schemaVersion.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RawECommerceOrderContent(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t RawECommerceOrderContent.schemaVersion.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawECommerceOrderContent(0);
  *(v1 + *(result + 104)) = v2;
  return result;
}

uint64_t RawECommerceOrderContent.init(orderTypeIdentifier:orderIdentifier:status:merchant:orderManagementURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = *a5;
  v13 = type metadata accessor for RawECommerceOrderContent(0);
  v14 = (a8 + v13[7]);
  *v14 = 0;
  v14[1] = 0;
  v15 = v13[8];
  *(a8 + v15) = 2;
  v16 = (a8 + v13[10]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a8 + v13[14]);
  v17[3] = 0u;
  v17[4] = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  v18 = v13[15];
  v19 = type metadata accessor for RawOrderReturnInfo(0);
  (*(*(v19 - 8) + 56))(a8 + v18, 1, 1, v19);
  v20 = (a8 + v13[18]);
  *v20 = xmmword_1B78301C0;
  v20[1] = 0u;
  v20[2] = 0u;
  v20[3] = 0u;
  v20[4] = 0u;
  v21 = a8 + v13[22];
  *(v21 + 48) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 0u;
  v22 = v13[23];
  v23 = type metadata accessor for RawOrderProvider(0);
  (*(*(v23 - 8) + 56))(a8 + v22, 1, 1, v23);
  v24 = v13[24];
  v25 = sub_1B77FF4F8();
  v26 = *(v25 - 8);
  (*(v26 + 56))(a8 + v24, 1, 1, v25);
  v27 = (a8 + v13[25]);
  *v27 = 0;
  v27[1] = 0;
  *(a8 + v13[26]) = 1;
  v28 = (a8 + v13[5]);
  *v28 = a1;
  v28[1] = a2;
  v29 = (a8 + v13[6]);
  *v29 = a3;
  v29[1] = a4;
  *(a8 + v13[9]) = v35;
  sub_1B76929E8(a6, a8, type metadata accessor for RawMerchant);
  v30 = MEMORY[0x1E69E7CC0];
  *(a8 + v13[19]) = MEMORY[0x1E69E7CC0];
  *(a8 + v13[17]) = v30;
  *(a8 + v13[16]) = v30;
  (*(v26 + 16))(a8 + v13[13], a7, v25);
  v31 = v13[11];
  sub_1B77FF938();
  v32 = v13[12];
  v33 = sub_1B77FF988();
  (*(*(v33 - 8) + 16))(a8 + v32, a8 + v31, v33);
  *(a8 + v13[20]) = v30;
  (*(v26 + 8))(a7, v25);
  result = sub_1B768D6C4(a6, type metadata accessor for RawMerchant);
  *(a8 + v13[21]) = v30;
  *(a8 + v15) = 0;
  return result;
}

uint64_t sub_1B768EC24(char a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE40, &unk_1B7857930);
  v9 = sub_1B7801EB8();
  if (v5)
  {

    return 0;
  }

  else if (v9)
  {
    return 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    a5(v11);
    sub_1B7801D58();
    return v12;
  }
}

uint64_t sub_1B768ED08(char a1)
{
  result = 0x746E61686372656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x656449726564726FLL;
      break;
    case 3:
      result = 0x6D754E726564726FLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x737574617473;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      v3 = 1634038371;
      goto LABEL_23;
    case 8:
      v3 = 1633972341;
LABEL_23:
      result = v3 | 0x4164657400000000;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x746E656D796170;
      break;
    case 11:
      result = 0x6E496E7275746572;
      break;
    case 12:
      result = 0x736E7275746572;
      break;
    case 13:
      result = 0x6D6C6C69666C7566;
      break;
    case 14:
      result = 0x72656D6F74737563;
      break;
    case 15:
      result = 0x6D657449656E696CLL;
      break;
    case 16:
      result = 0x6976726553626577;
      break;
    case 17:
      result = 0x707954726564726FLL;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    case 20:
      result = 0x65646F63726162;
      break;
    case 21:
      result = 0x6F7250726564726FLL;
      break;
    case 22:
      result = 0x6976726553626577;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x6556616D65686373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B768EFEC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1B768ED08(*a1);
  v5 = v4;
  if (v3 == sub_1B768ED08(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B768F074()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B768ED08(v1);
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B768F0D8(uint64_t a1)
{
  sub_1B768ED08(*v1);
  sub_1B7800798();

  return result;
}

uint64_t sub_1B768F12C(uint64_t a1)
{
  v2 = *v1;
  sub_1B78022F8();
  sub_1B768ED08(v2);
  sub_1B7800798();

  return sub_1B7802368();
}

unint64_t sub_1B768F18C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B76950C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B768F1BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B768ED08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B768F1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76950C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B768F224(uint64_t a1)
{
  v2 = sub_1B7692FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B768F260(uint64_t a1)
{
  v2 = sub_1B7692FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawECommerceOrderContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for RawECommerceOrderContent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE40, &unk_1B7857930);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7692FAC();
  sub_1B78023C8();
  if (!v2)
  {
    LOBYTE(v16) = 24;
    sub_1B7639C54();
    sub_1B7801E48();
    v11 = v15[0];
    if (SLOWORD(v15[0]) <= 1)
    {
      LOBYTE(v15[0]) = 17;
      sub_1B7639CA8();
      sub_1B7801E48();
      sub_1B719B06C(a1, v15);
      v16 = v11;
      v17 = 0;
      RawECommerceOrderContent.init(from:configuration:)(v15, &v16, v6);
      (*(v8 + 8))(v10, v7);
      sub_1B768D65C(v6, v14, type metadata accessor for RawECommerceOrderContent);
    }

    else
    {
      sub_1B7639CFC();
      swift_allocError();
      *v12 = v11;
      swift_willThrow();
      (*(v8 + 8))(v10, v7);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B768F5B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 2);
  v5 = *a2;
  v6 = v3;
  return RawECommerceOrderContent.init(from:configuration:)(a1, &v5, a3);
}

void *RawECommerceOrderContent.init(order:orderContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v190 = a1;
  v5 = type metadata accessor for RawOrderReturn(0);
  v196 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v195 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0, &qword_1B7853960);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v184 = &v176 - v8;
  v176 = type metadata accessor for RawOrderFulfillment(0);
  v9 = *(v176 - 8);
  v10 = MEMORY[0x1EEE9AC00](v176);
  *&v199 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v189 = &v176 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v202 = &v176 - v17;
  v18 = type metadata accessor for RawOrderApplication(0);
  v197 = *(v18 - 8);
  *&v198 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RawECommerceOrderContent(0);
  v22 = v21[8];
  *(a3 + v22) = 2;
  v23 = (a3 + v21[14]);
  v23[3] = 0u;
  v23[4] = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v179 = v23;
  *v23 = 0u;
  v24 = v21[15];
  v25 = type metadata accessor for RawOrderReturnInfo(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v182 = v25;
  v183 = v24;
  v180 = v26 + 56;
  v181 = v27;
  (v27)(a3 + v24, 1, 1);
  v28 = (a3 + v21[18]);
  *v28 = xmmword_1B78301C0;
  v28[1] = 0u;
  v28[2] = 0u;
  v28[3] = 0u;
  v28[4] = 0u;
  v29 = a3 + v21[22];
  *(v29 + 48) = 0;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  v185 = v29;
  *v29 = 0u;
  v30 = v21[23];
  v31 = type metadata accessor for RawOrderProvider(0);
  (*(*(v31 - 8) + 56))(a3 + v30, 1, 1, v31);
  v191 = v21;
  v32 = v21[24];
  v33 = sub_1B77FF4F8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v192 = a3;
  v177 = v32;
  v204 = v35;
  v205 = v33;
  v203 = v34 + 56;
  (v35)(a3 + v32, 1, 1);
  v36 = [a2 associatedApplicationIdentifiers];
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v36;
    v40 = sub_1B7800C38();

    v37 = v38;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  *(v192 + v191[21]) = v40;
  v41 = ManagedECommerceOrderContent.associatedApplications.getter();
  v42 = v41;
  if (v41 >> 62)
  {
    v43 = sub_1B7801958();
  }

  else
  {
    v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v178 = v16;
  *&v200 = v9;
  v187 = v28;
  v188 = a2;
  v186 = v22;
  if (v43)
  {
    *&v206 = v37;
    *&v201 = v43;
    result = sub_1B71FE738(0, v43 & ~(v43 >> 63), 0);
    if ((v201 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_84;
    }

    v45 = 0;
    v46 = v206;
    v193 = v42 & 0xC000000000000001;
    v194 = v42;
    v47 = v202;
    do
    {
      if (v193)
      {
        v48 = MEMORY[0x1B8CA5DC0](v45, v42);
      }

      else
      {
        v48 = *(v42 + 8 * v45 + 32);
      }

      v49 = v48;
      v50 = [v49 storeIdentifier];
      v51 = [v49 launchURL];
      if (v51)
      {
        v52 = v51;
        sub_1B77FF478();

        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v204(v47, v53, 1, v205);
      v54 = [v49 customProductPageIdentifier];
      if (v54)
      {
        v55 = v54;
        v56 = sub_1B7800868();
        v58 = v57;
      }

      else
      {
        v56 = 0;
        v58 = 0;
      }

      v59 = v198;
      v60 = *(v198 + 20);
      v204(&v20[v60], 1, 1, v205);
      v61 = &v20[*(v59 + 24)];
      *v20 = v50;
      v62 = &v20[v60];
      v47 = v202;
      sub_1B7213740(v202, v62, &unk_1EB994C70, &qword_1B7809800);

      *v61 = v56;
      v61[1] = v58;
      *&v206 = v46;
      v64 = *(v46 + 16);
      v63 = *(v46 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1B71FE738((v63 > 1), v64 + 1, 1);
        v46 = v206;
      }

      ++v45;
      *(v46 + 16) = v64 + 1;
      sub_1B768D65C(v20, v46 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v64, type metadata accessor for RawOrderApplication);
      v42 = v194;
    }

    while (v201 != v45);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  *(v192 + v191[20]) = v46;
  v65 = [v190 authenticationToken];
  v66 = v189;
  if (v65)
  {
    v67 = v65;
    v68 = sub_1B7800868();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = v188;
  v72 = (v192 + v191[25]);
  *v72 = v68;
  v72[1] = v70;
  v73 = [v71 barcode];
  if (v73)
  {
    v74 = v73;
    ManagedOrderBarcode.rawOrderBarcode.getter(&v206);

    v75 = *(&v206 + 1);
    v202 = v206;
    v76 = v207;
    v77 = *(&v207 + 1);
    v79 = *(&v208 + 1);
    v78 = v208;
    v80 = v209;
  }

  else
  {
    v202 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
  }

  v81 = v185;
  sub_1B74C69A8(*v185, v185[1], v185[2], v185[3], v185[4], v185[5], v185[6]);
  *v81 = v202;
  v81[1] = v75;
  v81[2] = v76;
  v81[3] = v77;
  v81[4] = v78;
  v81[5] = v79;
  v81[6] = v80;
  ManagedECommerceOrderContent.changeNotifications.getter(&v217);
  *(v192 + v186) = v217;
  v82 = [v71 createdDate];
  sub_1B77FF928();

  v83 = v71;
  RawOrderCustomer.init(_:)(v83, v215);
  v84 = v187;
  v85 = v187[3];
  v216[2] = v187[2];
  v216[3] = v85;
  v216[4] = v187[4];
  v86 = v187[1];
  v216[0] = *v187;
  v216[1] = v86;
  sub_1B7205418(v216, &qword_1EB99AE50, &unk_1B7857940);
  v87 = v215[3];
  v84[2] = v215[2];
  v84[3] = v87;
  v84[4] = v215[4];
  v88 = v215[1];
  *v84 = v215[0];
  v84[1] = v88;
  v202 = v83;
  v89 = ManagedECommerceOrderContent.fulfillments.getter();
  v90 = *(v89 + 2);
  if (v90)
  {
    *&v206 = MEMORY[0x1E69E7CC0];
    sub_1B71FE544(0, v90, 0);
    v91 = 32;
    v92 = v206;
    do
    {
      v93 = *&v89[v91];
      if ((v93 & 0x8000000000000000) != 0)
      {
        v94 = (v93 & 0x7FFFFFFFFFFFFFFFLL);
        v95 = v199;
        ManagedOrderPickupFulfillment.rawOrderPickupFulfillment.getter(v199);
      }

      else
      {
        v94 = v93;
        v95 = v199;
        ManagedOrderShippingFulfillment.rawOrderShippingFulfillment.getter(v199);
      }

      swift_storeEnumTagMultiPayload();
      sub_1B768D65C(v95, v66, type metadata accessor for RawOrderFulfillment);

      *&v206 = v92;
      v96 = v66;
      v98 = *(v92 + 16);
      v97 = *(v92 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_1B71FE544((v97 > 1), v98 + 1, 1);
        v92 = v206;
      }

      *(v92 + 16) = v98 + 1;
      sub_1B768D65C(v96, v92 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v98, type metadata accessor for RawOrderFulfillment);
      v91 += 8;
      --v90;
      v66 = v96;
    }

    while (v90);
  }

  else
  {

    v92 = MEMORY[0x1E69E7CC0];
  }

  *(v192 + v191[17]) = v92;
  v99 = ManagedECommerceOrderContent.lineItems.getter();
  v100 = v99;
  if (!(v99 >> 62))
  {
    v101 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v101)
    {
      goto LABEL_41;
    }

LABEL_53:

    v103 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v101 = sub_1B7801958();
  if (!v101)
  {
    goto LABEL_53;
  }

LABEL_41:
  v214 = MEMORY[0x1E69E7CC0];
  result = sub_1B71FE27C(0, v101 & ~(v101 >> 63), 0);
  if (v101 < 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v102 = 0;
  v103 = v214;
  if ((v100 & 0xC000000000000001) == 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  for (i = MEMORY[0x1B8CA5DC0](v102, v100); ; i = *(v100 + 8 * v102 + 32))
  {
    v105 = i;
    ManagedOrderLineItem.rawOrderLineItem.getter(&v206);

    v214 = v103;
    v107 = *(v103 + 16);
    v106 = *(v103 + 24);
    if (v107 >= v106 >> 1)
    {
      sub_1B71FE27C((v106 > 1), v107 + 1, 1);
      v103 = v214;
    }

    *(v103 + 16) = v107 + 1;
    v108 = (v103 + (v107 << 7));
    v109 = v206;
    v110 = v207;
    v111 = v209;
    v108[4] = v208;
    v108[5] = v111;
    v108[2] = v109;
    v108[3] = v110;
    v112 = v210;
    v113 = v211;
    v114 = v213;
    v108[8] = v212;
    v108[9] = v114;
    v108[6] = v112;
    v108[7] = v113;
    if (v101 - 1 == v102)
    {
      break;
    }

    ++v102;
    if ((v100 & 0xC000000000000001) != 0)
    {
      goto LABEL_43;
    }

LABEL_44:
    ;
  }

LABEL_54:
  v116 = v191;
  v115 = v192;
  *(v192 + v191[19]) = v103;
  v117 = v202;
  RawMerchant.init(_:)([v202 merchant], v115);
  v118 = [v190 orderIdentifier];
  v119 = sub_1B7800868();
  v121 = v120;

  v122 = (v115 + v116[6]);
  *v122 = v119;
  v122[1] = v121;
  v123 = [v117 orderManagementURL];
  v124 = v117;
  sub_1B77FF478();

  v125 = [v117 orderNumber];
  if (v125)
  {
    v126 = v125;
    v127 = sub_1B7800868();
    v129 = v128;
  }

  else
  {
    v127 = 0;
    v129 = 0;
  }

  v131 = v191;
  v130 = v192;
  v132 = (v192 + v191[7]);
  *v132 = v127;
  v132[1] = v129;
  v133 = [v190 orderTypeIdentifier];
  v134 = sub_1B7800868();
  v136 = v135;

  v137 = (v130 + v131[5]);
  *v137 = v134;
  v137[1] = v136;
  v138 = [v117 payment];
  if (v138)
  {
    RawOrderPayment.init(_:)(v138, &v206);
    v200 = v207;
    v201 = v206;
    v198 = v209;
    v199 = v208;
    v140 = *(&v210 + 1);
    v139 = v210;
  }

  else
  {
    v139 = 0;
    v140 = 0;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
  }

  v141 = v179;
  v142 = v179[3];
  v208 = v179[2];
  v209 = v142;
  v210 = v179[4];
  v143 = v179[1];
  v206 = *v179;
  v207 = v143;
  sub_1B7205418(&v206, &qword_1EB9982A8, &qword_1B7864AE0);
  v144 = v200;
  *v141 = v201;
  v141[1] = v144;
  v145 = v198;
  v141[2] = v199;
  v141[3] = v145;
  *(v141 + 8) = v139;
  *(v141 + 9) = v140;
  v146 = [v124 returnInfo];
  if (v146)
  {
    v147 = v184;
    RawOrderReturnInfo.init(_:)(v146, v184);
    v148 = 0;
  }

  else
  {
    v148 = 1;
    v147 = v184;
  }

  v181(v147, v148, 1, v182);
  sub_1B7213740(v147, v192 + v183, &qword_1EB99A4B0, &qword_1B7853960);
  v149 = ManagedECommerceOrderContent.returns.getter();
  v150 = v149;
  if (v149 >> 62)
  {
    v151 = sub_1B7801958();
    if (v151)
    {
LABEL_65:
      v214 = MEMORY[0x1E69E7CC0];
      result = sub_1B71FE500(0, v151 & ~(v151 >> 63), 0);
      if ((v151 & 0x8000000000000000) == 0)
      {
        v152 = 0;
        v153 = v214;
        do
        {
          if ((v150 & 0xC000000000000001) != 0)
          {
            v154 = MEMORY[0x1B8CA5DC0](v152, v150);
          }

          else
          {
            v154 = *(v150 + 8 * v152 + 32);
          }

          v155 = v154;
          v156 = v195;
          ManagedOrderReturn.rawOrderReturn.getter(v195);

          v214 = v153;
          v158 = *(v153 + 16);
          v157 = *(v153 + 24);
          if (v158 >= v157 >> 1)
          {
            sub_1B71FE500((v157 > 1), v158 + 1, 1);
            v153 = v214;
          }

          ++v152;
          *(v153 + 16) = v158 + 1;
          sub_1B768D65C(v156, v153 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v158, type metadata accessor for RawOrderReturn);
        }

        while (v151 != v152);

        goto LABEL_76;
      }

LABEL_85:
      __break(1u);
      return result;
    }
  }

  else
  {
    v151 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v151)
    {
      goto LABEL_65;
    }
  }

  v153 = MEMORY[0x1E69E7CC0];
LABEL_76:
  v160 = v191;
  v159 = v192;
  *(v192 + v191[16]) = v153;
  v161 = v202;
  *(v159 + v160[26]) = [v202 schemaVersion];
  ManagedECommerceOrderContent.status.getter(&v214);
  *(v159 + v160[9]) = v214;
  v162 = [v161 statusDescription];
  if (v162)
  {
    v163 = v162;
    v164 = sub_1B77FFA48();
    v165 = sub_1B741F7D4(v164);
    v167 = v166;
  }

  else
  {
    v165 = 0;
    v167 = 0;
  }

  v168 = v178;
  v169 = (v192 + v191[10]);
  *v169 = v165;
  v169[1] = v167;
  v170 = [v161 updatedDate];
  sub_1B77FF928();

  v171 = v190;
  v172 = [v190 orderWebService];
  if (v172)
  {
    v173 = v172;
    v174 = [v172 baseURL];

    sub_1B77FF478();
    v175 = 0;
    v171 = v161;
    v161 = v174;
  }

  else
  {
    v175 = 1;
  }

  v204(v168, v175, 1, v205);
  return sub_1B7213740(v168, v192 + v177, &unk_1EB994C70, &qword_1B7809800);
}

Swift::Void __swiftcall RawECommerceOrderContent.clearFulfillments()()
{
  v1 = *(type metadata accessor for RawECommerceOrderContent(0) + 68);

  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RawECommerceOrderContent.setFulfillments(_:)(Swift::OpaquePointer a1)
{
  sub_1B769511C(a1._rawValue);
  if (!v2)
  {
    v4 = *(type metadata accessor for RawECommerceOrderContent(0) + 68);

    *(v1 + v4) = a1;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RawECommerceOrderContent.setReturns(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = 0;
  v14[3] = MEMORY[0x1E69E7CD0];
  v5 = *(a1._rawValue + 2);
  while (v5 != v4)
  {
    v6 = type metadata accessor for RawOrderReturn(0);
    v7 = v4 + 1;
    v8 = (a1._rawValue + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4 + *(v6 + 64));
    v9 = *v8;
    v10 = v8[1];

    v11 = sub_1B724E408(v14, v9, v10);

    v4 = v7;
    if ((v11 & 1) == 0)
    {

      sub_1B7695530();
      swift_allocError();
      *v12 = 3;
      swift_willThrow();
      return;
    }
  }

  v13 = *(type metadata accessor for RawECommerceOrderContent(0) + 64);

  *(v2 + v13) = a1;
}

void RawECommerceOrderContent.setAutomaticUpdatesInfo(webServiceURL:authenticationToken:allowHTTP:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B7695584(a1, a2, a3, a4);
  if (!v5)
  {
    v9 = type metadata accessor for RawECommerceOrderContent(0);
    v10 = *(v9 + 96);
    sub_1B7205418(v4 + v10, &unk_1EB994C70, &qword_1B7809800);
    v11 = sub_1B77FF4F8();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v4 + v10, a1, v11);
    (*(v12 + 56))(v4 + v10, 0, 1, v11);
    v13 = (v4 + *(v9 + 100));

    *v13 = a2;
    v13[1] = a3;
  }
}

double RawECommerceOrderContent.fullyQualifiedOrderIdentifier.getter@<D0>(void *a1@<X8>)
{
  v3 = type metadata accessor for RawECommerceOrderContent(0);
  v4 = *(v3 + 24);
  v5 = (v1 + *(v3 + 20));
  v7 = *v5;
  v6 = v5[1];
  v8 = v1 + v4;
  v9 = *(v1 + v4);
  v10 = *(v8 + 8);
  *a1 = v7;
  a1[1] = v6;
  a1[2] = v9;
  a1[3] = v10;

  return result;
}

double RawECommerceOrderContent.versionIdentifier.getter@<D0>(char *a1@<X8>)
{
  v3 = type metadata accessor for RawECommerceOrderContent(0);
  v4 = v3[6];
  v5 = (v1 + v3[5]);
  v7 = *v5;
  v6 = v5[1];
  v9 = *(v1 + v4);
  v8 = *(v1 + v4 + 8);
  v10 = v3[12];
  v11 = *(type metadata accessor for Order.VersionIdentifier(0) + 20);
  v12 = sub_1B77FF988();
  (*(*(v12 - 8) + 16))(&a1[v11], v1 + v10, v12);
  *a1 = v7;
  *(a1 + 1) = v6;
  *(a1 + 2) = v9;
  *(a1 + 3) = v8;

  return result;
}

uint64_t RawECommerceOrderContent.imageNames.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8, &unk_1B7853968);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for RawOrderProvider(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  RawECommerceOrderContent.lineItemsImageNames.getter();
  v20 = v8;
  v9 = (v0 + *(type metadata accessor for RawMerchant(0) + 36));
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;

    sub_1B724E408(&v19, v11, v10);
  }

  v12 = type metadata accessor for RawECommerceOrderContent(0);
  sub_1B7205588(v0 + *(v12 + 92), v3, &qword_1EB99A4B8, &unk_1B7853968);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1B7205418(v3, &qword_1EB99A4B8, &unk_1B7853968);
  }

  else
  {
    sub_1B768D65C(v3, v7, type metadata accessor for RawOrderProvider);
    v13 = v7[4];
    v14 = v7[5];

    sub_1B724E408(&v19, v13, v14);

    v15 = v7[2];
    v16 = v7[3];

    sub_1B724E408(&v19, v15, v16);

    sub_1B768D6C4(v7, type metadata accessor for RawOrderProvider);
  }

  return v20;
}

void RawECommerceOrderContent.lineItemsImageNames.getter()
{
  v1 = type metadata accessor for RawOrderReturn(0);
  v76 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v78 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RawOrderPickupFulfillment(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v82 = (&v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RawOrderShippingFulfillment(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for RawOrderFulfillment(0);
  v7 = *(v83 - 8);
  v8 = MEMORY[0x1EEE9AC00](v83);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v75 - v11;
  v84 = MEMORY[0x1E69E7CD0];
  v13 = 0;
  v79 = type metadata accessor for RawECommerceOrderContent(0);
  v80 = v0;
  v14 = *(v0 + v79[19]);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v17 = v14 - 96 + (v13 << 7);
  while (1)
  {
    if (v15 == v13)
    {
      sub_1B7262E6C(v16);

      v25 = *(v80 + v79[17]);
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v28 = *(v7 + 72);
        v29 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          sub_1B76929E8(v27, v12, type metadata accessor for RawOrderFulfillment);
          sub_1B76929E8(v12, v10, type metadata accessor for RawOrderFulfillment);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v30 = v82;
            sub_1B768D65C(v10, v82, type metadata accessor for RawOrderPickupFulfillment);
            v31 = *v30;

            v32 = type metadata accessor for RawOrderPickupFulfillment;
          }

          else
          {
            v30 = v81;
            sub_1B768D65C(v10, v81, type metadata accessor for RawOrderShippingFulfillment);
            v31 = *v30;

            v32 = type metadata accessor for RawOrderShippingFulfillment;
          }

          sub_1B768D6C4(v30, v32);
          sub_1B768D6C4(v12, type metadata accessor for RawOrderFulfillment);
          v33 = *(v31 + 16);
          v34 = *(v29 + 2);
          v35 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_74;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v35 <= *(v29 + 3) >> 1)
          {
            if (!*(v31 + 16))
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v34 <= v35)
            {
              v37 = v34 + v33;
            }

            else
            {
              v37 = v34;
            }

            v29 = sub_1B723F9D8(isUniquelyReferenced_nonNull_native, v37, 1, v29);
            if (!*(v31 + 16))
            {
LABEL_13:

              if (v33)
              {
                goto LABEL_75;
              }

              goto LABEL_14;
            }
          }

          if ((*(v29 + 3) >> 1) - *(v29 + 2) < v33)
          {
            goto LABEL_78;
          }

          swift_arrayInitWithCopy();

          if (v33)
          {
            v38 = *(v29 + 2);
            v39 = __OFADD__(v38, v33);
            v40 = v38 + v33;
            if (v39)
            {
              goto LABEL_80;
            }

            *(v29 + 2) = v40;
          }

LABEL_14:
          v27 += v28;
          if (!--v26)
          {
            goto LABEL_32;
          }
        }
      }

      v29 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v41 = 0;
      v42 = *(v29 + 2);
      v43 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v44 = &v29[128 * v41 + 40];
      v45 = v78;
      while (v42 != v41)
      {
        if (v41 >= *(v29 + 2))
        {
          goto LABEL_72;
        }

        ++v41;
        v46 = v44 + 128;
        v47 = *v44;
        v44 += 128;
        if (v47)
        {
          v48 = *(v46 - 17);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_1B723E180(0, *(v43 + 2) + 1, 1, v43);
          }

          v50 = *(v43 + 2);
          v49 = *(v43 + 3);
          if (v50 >= v49 >> 1)
          {
            v43 = sub_1B723E180((v49 > 1), v50 + 1, 1, v43);
          }

          *(v43 + 2) = v50 + 1;
          v51 = &v43[16 * v50];
          *(v51 + 4) = v48;
          *(v51 + 5) = v47;
          goto LABEL_33;
        }
      }

      sub_1B7262E6C(v43);

      v52 = *(v80 + v79[16]);
      v53 = *(v52 + 16);
      if (!v53)
      {
        v56 = MEMORY[0x1E69E7CC0];
LABEL_60:
        v65 = 0;
        v66 = *(v56 + 2);
        v67 = MEMORY[0x1E69E7CC0];
LABEL_61:
        v68 = &v56[128 * v65 + 40];
        while (v66 != v65)
        {
          if (v65 >= *(v56 + 2))
          {
            goto LABEL_73;
          }

          ++v65;
          v69 = v68 + 128;
          v70 = *v68;
          v68 += 128;
          if (v70)
          {
            v71 = *(v69 - 17);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = sub_1B723E180(0, *(v67 + 2) + 1, 1, v67);
            }

            v73 = *(v67 + 2);
            v72 = *(v67 + 3);
            if (v73 >= v72 >> 1)
            {
              v67 = sub_1B723E180((v72 > 1), v73 + 1, 1, v67);
            }

            *(v67 + 2) = v73 + 1;
            v74 = &v67[16 * v73];
            *(v74 + 4) = v71;
            *(v74 + 5) = v70;
            goto LABEL_61;
          }
        }

        sub_1B7262E6C(v67);

        return;
      }

      v54 = v52 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v55 = *(v76 + 72);
      v56 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1B76929E8(v54, v45, type metadata accessor for RawOrderReturn);
        v57 = *v45;

        sub_1B768D6C4(v45, type metadata accessor for RawOrderReturn);
        v58 = *(v57 + 16);
        v59 = *(v56 + 2);
        v60 = v59 + v58;
        if (__OFADD__(v59, v58))
        {
          goto LABEL_76;
        }

        v61 = swift_isUniquelyReferenced_nonNull_native();
        if (v61 && v60 <= *(v56 + 3) >> 1)
        {
          if (!*(v57 + 16))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v59 <= v60)
          {
            v62 = v59 + v58;
          }

          else
          {
            v62 = v59;
          }

          v56 = sub_1B723F9D8(v61, v62, 1, v56);
          if (!*(v57 + 16))
          {
LABEL_44:

            if (v58)
            {
              goto LABEL_77;
            }

            goto LABEL_45;
          }
        }

        if ((*(v56 + 3) >> 1) - *(v56 + 2) < v58)
        {
          goto LABEL_79;
        }

        swift_arrayInitWithCopy();

        if (v58)
        {
          v63 = *(v56 + 2);
          v39 = __OFADD__(v63, v58);
          v64 = v63 + v58;
          if (v39)
          {
            goto LABEL_81;
          }

          *(v56 + 2) = v64;
        }

LABEL_45:
        v54 += v55;
        if (!--v53)
        {
          goto LABEL_60;
        }
      }
    }

    if (v13 >= *(v14 + 16))
    {
      break;
    }

    ++v13;
    v18 = (v17 + 128);
    v19 = *(v17 + 136);
    v17 += 128;
    if (v19)
    {
      v77 = *v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1B723E180(0, *(v16 + 2) + 1, 1, v16);
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v75 = v21 + 1;
        v24 = sub_1B723E180((v20 > 1), v21 + 1, 1, v16);
        v22 = v75;
        v16 = v24;
      }

      *(v16 + 2) = v22;
      v23 = &v16[16 * v21];
      *(v23 + 4) = v77;
      *(v23 + 5) = v19;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
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
}

uint64_t RawECommerceOrderContent.receiptNames.getter()
{
  v1 = type metadata accessor for RawOrderPaymentTransaction(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 56);
  if (!*(v5 + 40))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(v5 + 72);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = &v4[*(v1 + 40)];
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B76929E8(v9, v4, type metadata accessor for RawOrderPaymentTransaction);
      v14 = *v8;
      v13 = *(v8 + 1);

      sub_1B768D6C4(v4, type metadata accessor for RawOrderPaymentTransaction);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1B723E180(0, *(v11 + 2) + 1, 1, v11);
        }

        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v16 >= v15 >> 1)
        {
          v11 = sub_1B723E180((v15 > 1), v16 + 1, 1, v11);
        }

        *(v11 + 2) = v16 + 1;
        v12 = &v11[16 * v16];
        *(v12 + 4) = v14;
        *(v12 + 5) = v13;
      }

      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1B723B658(v11);

  return v17;
}

uint64_t RawECommerceOrderContent.returnLabelNames.getter()
{
  v1 = type metadata accessor for RawOrderReturn(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 64));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = &v4[*(v1 + 56)];
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B76929E8(v8, v4, type metadata accessor for RawOrderReturn);
      v13 = *v7;
      v12 = *(v7 + 1);

      sub_1B768D6C4(v4, type metadata accessor for RawOrderReturn);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B723E180(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_1B723E180((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v11 = &v10[16 * v15];
        *(v11 + 4) = v13;
        *(v11 + 5) = v12;
      }

      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1B723B658(v10);

  return v16;
}

int *RawECommerceOrderContent.isActive.getter()
{
  v1 = type metadata accessor for RawOrderReturn(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52 - v6;
  v8 = type metadata accessor for RawOrderPickupFulfillment(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RawOrderShippingFulfillment(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawOrderFulfillment(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  result = type metadata accessor for RawECommerceOrderContent(0);
  if (*(v0 + result[9]))
  {
    if (*(v0 + result[9]) == 1)
    {
      v22 = 0;
      v23 = *(v0 + result[16]);
      v24 = *(v23 + 16);
      do
      {
        v25 = v24 != v22;
        if (v24 == v22)
        {
          break;
        }

        if (v22 >= *(v23 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1B76929E8(v23 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22++, v5, type metadata accessor for RawOrderReturn);
        v26 = v5[8];
        result = sub_1B768D6C4(v5, type metadata accessor for RawOrderReturn);
      }

      while (v26 > 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v59 = v15;
    v56 = v10;
    v57 = v13;
    v27 = *(v0 + result[17]);
    v28 = *(v27 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v53 = v2;
      v54 = v0;
      v55 = result;
      v61 = MEMORY[0x1E69E7CC0];
      sub_1B71FE660(0, v28, 0);
      v29 = v61;
      v30 = v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v58 = *(v59 + 72);
      v59 = v14;
      v31 = v56;
      do
      {
        sub_1B76929E8(v30, v20, type metadata accessor for RawOrderFulfillment);
        sub_1B76929E8(v20, v18, type metadata accessor for RawOrderFulfillment);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1B768D65C(v18, v31, type metadata accessor for RawOrderPickupFulfillment);
          v32 = *(v31 + 8);
          sub_1B768D6C4(v31, type metadata accessor for RawOrderPickupFulfillment);
          v33 = v32 >= 5;
          v34 = 8;
        }

        else
        {
          v35 = v57;
          sub_1B768D65C(v18, v57, type metadata accessor for RawOrderShippingFulfillment);
          v32 = *(v35 + 40);
          sub_1B768D6C4(v35, type metadata accessor for RawOrderShippingFulfillment);
          v33 = v32 >= 7;
          v34 = 36;
        }

        v36 = v34 >> v32;
        if (v33)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        sub_1B768D6C4(v20, type metadata accessor for RawOrderFulfillment);
        v61 = v29;
        v39 = *(v29 + 16);
        v38 = *(v29 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1B71FE660((v38 > 1), v39 + 1, 1);
          v31 = v56;
          v29 = v61;
        }

        *(v29 + 16) = v39 + 1;
        *(v29 + v39 + 32) = v37 & 1;
        v30 += v58;
        --v28;
      }

      while (v28);
      v0 = v54;
      result = v55;
      v2 = v53;
    }

    v61 = v29;
    v40 = *(v0 + result[16]);
    v41 = *(v40 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v60 = MEMORY[0x1E69E7CC0];
      sub_1B71FE660(0, v41, 0);
      v42 = v60;
      v43 = v40 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v44 = *(v2 + 72);
      do
      {
        sub_1B76929E8(v43, v7, type metadata accessor for RawOrderReturn);
        v45 = v7[8];
        sub_1B768D6C4(v7, type metadata accessor for RawOrderReturn);
        v60 = v42;
        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1B71FE660((v46 > 1), v47 + 1, 1);
          v42 = v60;
        }

        *(v42 + 16) = v47 + 1;
        *(v42 + v47 + 32) = v45 > 3;
        v43 += v44;
        --v41;
      }

      while (v41);
    }

    sub_1B72449B0(v42);
    v48 = *(v61 + 16);
    if (v48)
    {
      v49 = (v61 + 32);
      do
      {
        v50 = v48-- != 0;
        v25 = v50;
        if (!v50)
        {
          break;
        }

        v51 = *v49++;
      }

      while ((v51 & 1) != 0);
    }

    else
    {
      v25 = 1;
    }
  }

  return v25;
}

uint64_t sub_1B7691D98@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a1;
  v97 = a2;
  v101 = a3;
  v96 = type metadata accessor for RawOrderPickupFulfillment(0);
  MEMORY[0x1EEE9AC00](v96);
  v100 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v84 - v7;
  v8 = type metadata accessor for Duration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1B77FFB08();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B77FFC88();
  v88 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1B77FF988();
  v103 = *(v104 - 8);
  v12 = MEMORY[0x1EEE9AC00](v104);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v99 = (&v84 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v93 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v84 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v84 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v84 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v86 = &v84 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v84 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v98 = &v84 - v35;
  v36 = type metadata accessor for RawOrderShippingFulfillment(0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for RawOrderFulfillment(0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76929E8(v102, v41, type metadata accessor for RawOrderFulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v100;
    sub_1B768D65C(v41, v100, type metadata accessor for RawOrderPickupFulfillment);
    v43 = *(v42 + 8);
    v44 = v42;
    if (v43 == 5 || v43 == 3)
    {
      sub_1B7205588(v42 + *(v96 + 56), v23, &qword_1EB98EBD0, &unk_1B7809780);
      v45 = v103;
      v46 = *(v103 + 48);
      v47 = v104;
      if (v46(v23, 1, v104) == 1)
      {
        v48 = type metadata accessor for RawECommerceOrderContent(0);
        (*(v45 + 16))(v14, v97 + *(v48 + 48), v47);
        v49 = v46(v23, 1, v47);
        v50 = v101;
        if (v49 != 1)
        {
          sub_1B7205418(v23, &qword_1EB98EBD0, &unk_1B7809780);
        }
      }

      else
      {
        (*(v45 + 32))(v14, v23, v47);
        v50 = v101;
      }

      v68 = v99;
      Date.noon.getter(v99);
      v69 = *(v45 + 8);
      v69(v14, v47);
      Date.dayAfter.getter(v26);
      v69(v68, v47);
      v70 = 0;
      v44 = v100;
    }

    else
    {
      v70 = 1;
      v50 = v101;
      v47 = v104;
      v45 = v103;
    }

    sub_1B768D6C4(v44, type metadata accessor for RawOrderPickupFulfillment);
    (*(v45 + 56))(v26, v70, 1, v47);
    v57 = v26;
    return sub_1B722376C(v57, v50, &qword_1EB98EBD0, &unk_1B7809780);
  }

  sub_1B768D65C(v41, v38, type metadata accessor for RawOrderShippingFulfillment);
  v51 = v38[40];
  if (v51 == 7 || v51 == 5)
  {
    v62 = *(v36 + 60);
    v102 = v38;
    sub_1B7205588(&v38[v62], v29, &qword_1EB98EBD0, &unk_1B7809780);
    v52 = v103;
    v63 = *(v103 + 48);
    v64 = v104;
    if (v63(v29, 1, v104) == 1)
    {
      v65 = type metadata accessor for RawECommerceOrderContent(0);
      v66 = v93;
      (*(v52 + 16))(v93, v97 + *(v65 + 48), v64);
      v67 = v63(v29, 1, v64);
      v50 = v101;
      if (v67 != 1)
      {
        sub_1B7205418(v29, &qword_1EB98EBD0, &unk_1B7809780);
      }
    }

    else
    {
      v66 = v93;
      (*(v52 + 32))(v93, v29, v64);
      v50 = v101;
    }

    v71 = v99;
    Date.noon.getter(v99);
    v72 = *(v52 + 8);
    v72(v66, v64);
    v57 = v98;
    Date.dayAfter.getter(v98);
    v72(v71, v64);
    sub_1B768D6C4(v102, type metadata accessor for RawOrderShippingFulfillment);
    v73 = 0;
    v55 = v64;
    goto LABEL_26;
  }

  v52 = v103;
  if (v51 != 2)
  {
    sub_1B768D6C4(v38, type metadata accessor for RawOrderShippingFulfillment);
    v73 = 1;
    v50 = v101;
    v55 = v104;
    v57 = v98;
LABEL_26:
    (*(v52 + 56))(v57, v73, 1, v55);
    return sub_1B722376C(v57, v50, &qword_1EB98EBD0, &unk_1B7809780);
  }

  v53 = *(v36 + 68);
  v102 = v38;
  sub_1B7205588(&v38[v53], v34, &qword_1EB98EBD0, &unk_1B7809780);
  v54 = *(v52 + 48);
  v55 = v104;
  v56 = (v54)(v34, 1, v104);
  v57 = v98;
  v99 = v54;
  v100 = v52 + 48;
  if (v56 == 1)
  {
    v58 = type metadata accessor for RawECommerceOrderContent(0);
    (*(v52 + 16))(v94, v97 + *(v58 + 48), v55);
    v59 = (v54)(v34, 1, v55);
    v60 = v92;
    v61 = v88;
    if (v59 != 1)
    {
      sub_1B7205418(v34, &qword_1EB98EBD0, &unk_1B7809780);
    }
  }

  else
  {
    (*(v52 + 32))(v94, v34, v55);
    v60 = v92;
    v61 = v88;
  }

  v74 = v84;
  v75 = v85;
  v76 = v87;
  (*(v85 + 104))(v84, *MEMORY[0x1E6969830], v87);
  sub_1B77FFB18();
  (*(v75 + 8))(v74, v76);
  v77 = v61;
  (*(v61 + 56))(v89, 1, 1, v60);
  v78 = sub_1B77FFCF8();
  (*(*(v78 - 8) + 56))(v91, 1, 1, v78);
  v79 = v90;
  v80 = v95;
  sub_1B77FECD8();
  v81 = v86;
  v82 = v94;
  sub_1B77FFC08();
  result = (v99)(v81, 1, v55);
  if (result != 1)
  {
    sub_1B768D6C4(v79, type metadata accessor for Duration);
    (*(v77 + 8))(v80, v92);
    (*(v52 + 8))(v82, v55);
    sub_1B768D6C4(v102, type metadata accessor for RawOrderShippingFulfillment);
    (*(v52 + 32))(v57, v81, v55);
    v73 = 0;
    v50 = v101;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B76929E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL RawECommerceOrderContent.supportsAutomaticUpdates.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for RawECommerceOrderContent(0);
  sub_1B7205588(v0 + *(v4 + 96), v3, &unk_1EB994C70, &qword_1B7809800);
  v5 = sub_1B77FF4F8();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1B7205418(v3, &unk_1EB994C70, &qword_1B7809800);
  return v6 != 1 && *(v0 + *(v4 + 100) + 8) != 0;
}

FinanceKit::RawOrderChangeNotificationsValue_optional __swiftcall RawOrderChangeNotificationsValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderChangeNotificationsValue.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1B7692C1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x64656C62616E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000001B7874AD0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  if (*a2)
  {
    v6 = 0x80000001B7874AD0;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B7692CC8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B7692D50(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B7692DC4(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7692E48(char *a2@<X8>)
{
  v3 = sub_1B7801D18();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1B7692EA8(unint64_t *a1@<X8>)
{
  v2 = 0x80000001B7874AD0;
  v3 = 0x64656C62616E65;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1B7692FAC()
{
  result = qword_1EB99AE48;
  if (!qword_1EB99AE48)
  {
    result = swift_getWitnessTable(byte_1B7857FB8, &type metadata for RawECommerceOrderContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AE48);
  }

  return result;
}

unint64_t sub_1B7693000()
{
  result = qword_1EB99AE60;
  if (!qword_1EB99AE60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderChangeNotificationsValue, &type metadata for RawOrderChangeNotificationsValue, v0, v1);
    atomic_store(result, &qword_1EB99AE60);
  }

  return result;
}

unint64_t sub_1B7693054()
{
  result = qword_1EB99AE68;
  if (!qword_1EB99AE68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderStatus, &type metadata for RawOrderStatus, v0, v1);
    atomic_store(result, &qword_1EB99AE68);
  }

  return result;
}

unint64_t sub_1B76930A8()
{
  result = qword_1EB99AE78;
  if (!qword_1EB99AE78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderCustomer, &type metadata for RawOrderCustomer, v0, v1);
    atomic_store(result, &qword_1EB99AE78);
  }

  return result;
}

unint64_t sub_1B76930FC()
{
  result = qword_1EB99AE88;
  if (!qword_1EB99AE88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AE80, &unk_1B7857950);
    v4[0] = sub_1B719BD38(&qword_1EB99AE90, type metadata accessor for RawOrderApplication, protocol conformance descriptor for RawOrderApplication);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB99AE88);
  }

  return result;
}

unint64_t sub_1B76931B0()
{
  result = qword_1EB99AE98;
  if (!qword_1EB99AE98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderBarcode, &type metadata for RawOrderBarcode, v0, v1);
    atomic_store(result, &qword_1EB99AE98);
  }

  return result;
}

unint64_t sub_1B7693204()
{
  result = qword_1EB99AEB0;
  if (!qword_1EB99AEB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPayment, &type metadata for RawOrderPayment, v0, v1);
    atomic_store(result, &qword_1EB99AEB0);
  }

  return result;
}

unint64_t sub_1B7693258()
{
  result = qword_1EB99AEC8;
  if (!qword_1EB99AEC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderChangeNotificationsValue, &type metadata for RawOrderChangeNotificationsValue, v0, v1);
    atomic_store(result, &qword_1EB99AEC8);
  }

  return result;
}

unint64_t sub_1B76932AC()
{
  result = qword_1EB99AED0;
  if (!qword_1EB99AED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderStatus, &type metadata for RawOrderStatus, v0, v1);
    atomic_store(result, &qword_1EB99AED0);
  }

  return result;
}

unint64_t sub_1B7693300()
{
  result = qword_1EB99AED8;
  if (!qword_1EB99AED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPayment, &type metadata for RawOrderPayment, v0, v1);
    atomic_store(result, &qword_1EB99AED8);
  }

  return result;
}

unint64_t sub_1B7693354()
{
  result = qword_1EB99AEF0;
  if (!qword_1EB99AEF0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AEE8, &qword_1B7857968);
    v4[0] = sub_1B719BD38(&qword_1EB99AEF8, type metadata accessor for RawOrderReturn, protocol conformance descriptor for RawOrderReturn);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB99AEF0);
  }

  return result;
}

unint64_t sub_1B7693408()
{
  result = qword_1EB99AF08;
  if (!qword_1EB99AF08)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AF00, &qword_1B7857970);
    v4[0] = sub_1B719BD38(&qword_1EB99AF10, type metadata accessor for RawOrderFulfillment, protocol conformance descriptor for RawOrderFulfillment);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB99AF08);
  }

  return result;
}

unint64_t sub_1B76934BC()
{
  result = qword_1EB99AF18;
  if (!qword_1EB99AF18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderCustomer, &type metadata for RawOrderCustomer, v0, v1);
    atomic_store(result, &qword_1EB99AF18);
  }

  return result;
}

unint64_t sub_1B7693510()
{
  result = qword_1EB99AF20;
  if (!qword_1EB99AF20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderContent.OrderType, &type metadata for RawOrderContent.OrderType, v0, v1);
    atomic_store(result, &qword_1EB99AF20);
  }

  return result;
}

unint64_t sub_1B7693564()
{
  result = qword_1EB99AF28;
  if (!qword_1EB99AF28)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AE80, &unk_1B7857950);
    v4[0] = sub_1B719BD38(&qword_1EB99AF30, type metadata accessor for RawOrderApplication, protocol conformance descriptor for RawOrderApplication);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB99AF28);
  }

  return result;
}

unint64_t sub_1B7693618()
{
  result = qword_1EB99AF38;
  if (!qword_1EB99AF38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderBarcode, &type metadata for RawOrderBarcode, v0, v1);
    atomic_store(result, &qword_1EB99AF38);
  }

  return result;
}

unint64_t sub_1B769366C()
{
  result = qword_1EB99AF48;
  if (!qword_1EB99AF48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderContent.SchemaVersion, &type metadata for RawOrderContent.SchemaVersion, v0, v1);
    atomic_store(result, &qword_1EB99AF48);
  }

  return result;
}

uint64_t _s10FinanceKit24RawECommerceOrderContentV0F4ItemO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderReturn(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawOrderFulfillment(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawECommerceOrderContent.ContentItem(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AFB8, &unk_1B7858008);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1B76929E8(a1, &v27 - v18, type metadata accessor for RawECommerceOrderContent.ContentItem);
  sub_1B76929E8(a2, &v19[v20], type metadata accessor for RawECommerceOrderContent.ContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B76929E8(v19, v13, type metadata accessor for RawECommerceOrderContent.ContentItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B768D65C(&v19[v20], v6, type metadata accessor for RawOrderReturn);
      v21 = static RawOrderReturn.== infix(_:_:)(v13, v6);
      sub_1B768D6C4(v6, type metadata accessor for RawOrderReturn);
      v22 = v13;
      v23 = type metadata accessor for RawOrderReturn;
LABEL_9:
      sub_1B768D6C4(v22, v23);
      sub_1B768D6C4(v19, type metadata accessor for RawECommerceOrderContent.ContentItem);
      return v21 & 1;
    }

    v24 = type metadata accessor for RawOrderReturn;
    v25 = v13;
  }

  else
  {
    sub_1B76929E8(v19, v15, type metadata accessor for RawECommerceOrderContent.ContentItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B768D65C(&v19[v20], v9, type metadata accessor for RawOrderFulfillment);
      v21 = static RawOrderFulfillment.== infix(_:_:)(v15, v9);
      sub_1B768D6C4(v9, type metadata accessor for RawOrderFulfillment);
      v22 = v15;
      v23 = type metadata accessor for RawOrderFulfillment;
      goto LABEL_9;
    }

    v24 = type metadata accessor for RawOrderFulfillment;
    v25 = v15;
  }

  sub_1B768D6C4(v25, v24);
  sub_1B7205418(v19, &qword_1EB99AFB8, &unk_1B7858008);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1B7693A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawMerchant(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s10FinanceKit24RawECommerceOrderContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v184 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v186 = &v174 - v8;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  MEMORY[0x1EEE9AC00](v185);
  v188 = (&v174 - v9);
  v192 = type metadata accessor for RawOrderProvider(0);
  v190 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v187 = (&v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8, &unk_1B7853968);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v191 = (&v174 - v12);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AFE0, &qword_1B7858018);
  MEMORY[0x1EEE9AC00](v189);
  v193 = (&v174 - v13);
  v14 = type metadata accessor for RawOrderReturnInfo(0);
  v194 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0, &qword_1B7853960);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v174 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AFE8, &qword_1B7858020);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v174 - v21;
  if ((static RawMerchant.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v23 = type metadata accessor for RawECommerceOrderContent(0);
  v24 = v23[5];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  v29 = v25 == *v27;
  v195 = v23;
  if (!v29 || v26 != v28)
  {
    v30 = sub_1B78020F8();
    v23 = v195;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v23[6];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if (v32 != *v34 || v33 != v34[1])
  {
    v35 = sub_1B78020F8();
    v23 = v195;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v36 = v23[7];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }

    if (*v37 != *v39 || v38 != v40)
    {
      v41 = sub_1B78020F8();
      v23 = v195;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  v42 = v23[8];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43 == 2)
  {
    v182 = v4;
    if (v44 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v44 == 2)
    {
      return 0;
    }

    v182 = v4;
    v183 = v5;
    if (v43)
    {
      v45 = 0xD000000000000016;
    }

    else
    {
      v45 = 0x64656C62616E65;
    }

    if (v43)
    {
      v46 = 0x80000001B7874AD0;
    }

    else
    {
      v46 = 0xE700000000000000;
    }

    if (v44)
    {
      v47 = 0xD000000000000016;
    }

    else
    {
      v47 = 0x64656C62616E65;
    }

    if (v44)
    {
      v48 = 0x80000001B7874AD0;
    }

    else
    {
      v48 = 0xE700000000000000;
    }

    if (v45 == v47 && v46 == v48)
    {

      v5 = v183;
      v23 = v195;
    }

    else
    {
      LODWORD(v181) = sub_1B78020F8();

      v5 = v183;
      v23 = v195;
      if ((v181 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v49 = 0xE900000000000064;
  v50 = 1852141679;
  v51 = v23[9];
  v52 = *(a1 + v51);
  v53 = *(a2 + v51);
  v183 = v5;
  if (v52)
  {
    if (v52 == 1)
    {
      v54 = 0x6574656C706D6F63;
    }

    else
    {
      v54 = 0x656C6C65636E6163;
    }

    v55 = 0xE900000000000064;
  }

  else
  {
    v55 = 0xE400000000000000;
    v54 = 1852141679;
  }

  if (v53)
  {
    if (v53 == 1)
    {
      v50 = 0x6574656C706D6F63;
    }

    else
    {
      v50 = 0x656C6C65636E6163;
    }
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  if (v54 == v50 && v55 == v49)
  {
  }

  else
  {
    LODWORD(v181) = sub_1B78020F8();

    if ((v181 & 1) == 0)
    {
      return 0;
    }
  }

  v56 = v195;
  v57 = v195[10];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 8);
  v60 = (a2 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61)
    {
      return 0;
    }

    if (*v58 != *v60 || v59 != v61)
    {
      v62 = sub_1B78020F8();
      v56 = v195;
      if ((v62 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v61)
  {
    return 0;
  }

  if ((sub_1B77FF918() & 1) == 0 || (sub_1B77FF918() & 1) == 0 || (sub_1B77FF458() & 1) == 0)
  {
    return 0;
  }

  v63 = (a1 + v56[14]);
  v64 = v63[4];
  v247 = v63[3];
  v248 = v64;
  v66 = v63[2];
  v65 = v63[3];
  v67 = *v63;
  v68 = *v63;
  v245 = v63[1];
  v246 = v66;
  v244 = v67;
  v69 = (a2 + v56[14]);
  v70 = v69[3];
  v71 = v69[4];
  v250 = v69[2];
  v251 = v70;
  v252 = v71;
  v72 = v69[1];
  v249[0] = *v69;
  v249[1] = v72;
  v201 = v68;
  v202 = v245;
  v73 = v63[4];
  v220 = v65;
  v221 = v73;
  *&v203 = *(v63 + 4);
  v74 = *(&v66 + 1);
  v196 = v249[0];
  v197 = v72;
  *&v198 = *(v69 + 4);
  v75 = *(&v250 + 1);
  v76 = v69[4];
  v216 = v70;
  v217 = v76;
  if (!*(&v66 + 1))
  {
    if (!*(&v250 + 1))
    {
      v87 = v63[1];
      v234 = *v63;
      v235 = v87;
      v236 = *(v63 + 4);
      v88 = v63[4];
      v237 = v63[3];
      v238 = v88;
      sub_1B7205588(&v244, &v229, &qword_1EB9982A8, &qword_1B7864AE0);
      sub_1B7205588(v249, &v229, &qword_1EB9982A8, &qword_1B7864AE0);
      sub_1B7205418(&v234, &qword_1EB9982A8, &qword_1B7864AE0);
      goto LABEL_71;
    }

    sub_1B7205588(&v244, &v234, &qword_1EB9982A8, &qword_1B7864AE0);
    sub_1B7205588(v249, &v234, &qword_1EB9982A8, &qword_1B7864AE0);
LABEL_68:
    v234 = v201;
    v235 = v202;
    *&v236 = v203;
    *(&v236 + 1) = v74;
    v237 = v220;
    v238 = v221;
    v239 = v196;
    v240 = v197;
    *&v241 = v198;
    *(&v241 + 1) = v75;
    v242 = v216;
    v243 = v217;
    v84 = &unk_1EB99AFF0;
    v85 = &unk_1B7858028;
LABEL_69:
    v86 = &v234;
LABEL_77:
    sub_1B7205418(v86, v84, v85);
    return 0;
  }

  v77 = *(v63 + 4);
  v78 = v63[1];
  v234 = *v63;
  v235 = v78;
  *&v236 = v77;
  *(&v236 + 1) = *(&v246 + 1);
  v79 = v63[4];
  v237 = v63[3];
  v238 = v79;
  v232 = v237;
  v233 = v79;
  v229 = v234;
  v230 = v78;
  v231 = v236;
  if (!*(&v250 + 1))
  {
    v226 = v236;
    v227 = v237;
    v228 = v238;
    v224 = v234;
    v225 = v235;
    sub_1B7205588(&v244, &v211, &qword_1EB9982A8, &qword_1B7864AE0);
    sub_1B7205588(v249, &v211, &qword_1EB9982A8, &qword_1B7864AE0);
    sub_1B7205588(&v234, &v211, &qword_1EB9982A8, &qword_1B7864AE0);
    sub_1B74C2740(&v224);
    goto LABEL_68;
  }

  v80 = v69[1];
  v224 = *v69;
  v225 = v80;
  v81 = *(v69 + 4);
  v82 = v69[4];
  v227 = v69[3];
  v228 = v82;
  *&v226 = v81;
  *(&v226 + 1) = *(&v250 + 1);
  v181 = *(&v246 + 1);
  sub_1B7205588(&v244, &v211, &qword_1EB9982A8, &qword_1B7864AE0);
  sub_1B7205588(v249, &v211, &qword_1EB9982A8, &qword_1B7864AE0);
  sub_1B7205588(&v234, &v211, &qword_1EB9982A8, &qword_1B7864AE0);
  v83 = _s10FinanceKit15RawOrderPaymentV2eeoiySbAC_ACtFZ_0(&v229, &v224);
  v208 = v226;
  v209 = v227;
  v210 = v228;
  v206 = v224;
  v207 = v225;
  sub_1B74C2740(&v206);
  v213 = v231;
  v214 = v232;
  v215 = v233;
  v211 = v229;
  v212 = v230;
  sub_1B74C2740(&v211);
  v224 = v201;
  v225 = v202;
  *&v226 = v203;
  *(&v226 + 1) = v181;
  v227 = v220;
  v228 = v221;
  sub_1B7205418(&v224, &qword_1EB9982A8, &qword_1B7864AE0);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  v89 = v195[15];
  v90 = *(v20 + 48);
  sub_1B7205588(a1 + v89, v22, &qword_1EB99A4B0, &qword_1B7853960);
  v91 = a2 + v89;
  v92 = v90;
  sub_1B7205588(v91, &v22[v90], &qword_1EB99A4B0, &qword_1B7853960);
  v93 = *(v194 + 48);
  if (v93(v22, 1, v14) == 1)
  {
    if (v93(&v22[v92], 1, v14) == 1)
    {
      sub_1B7205418(v22, &qword_1EB99A4B0, &qword_1B7853960);
      goto LABEL_81;
    }

LABEL_76:
    v84 = &qword_1EB99AFE8;
    v85 = &qword_1B7858020;
    v86 = v22;
    goto LABEL_77;
  }

  sub_1B7205588(v22, v19, &qword_1EB99A4B0, &qword_1B7853960);
  if (v93(&v22[v92], 1, v14) == 1)
  {
    sub_1B768D6C4(v19, type metadata accessor for RawOrderReturnInfo);
    goto LABEL_76;
  }

  sub_1B768D65C(&v22[v92], v16, type metadata accessor for RawOrderReturnInfo);
  v95 = _s10FinanceKit18RawOrderReturnInfoV2eeoiySbAC_ACtFZ_0(v19, v16);
  sub_1B768D6C4(v16, type metadata accessor for RawOrderReturnInfo);
  sub_1B768D6C4(v19, type metadata accessor for RawOrderReturnInfo);
  sub_1B7205418(v22, &qword_1EB99A4B0, &qword_1B7853960);
  if (!v95)
  {
    return 0;
  }

LABEL_81:
  v96 = v195;
  if ((sub_1B7320A3C(*(a1 + v195[16]), *(a2 + v195[16])) & 1) == 0 || (sub_1B7320A90(*(a1 + v96[17]), *(a2 + v96[17])) & 1) == 0)
  {
    return 0;
  }

  v97 = (a1 + v96[18]);
  v98 = v97[4];
  v99 = v97[1];
  v100 = v97[2];
  v227 = v97[3];
  v228 = v98;
  v101 = *v97;
  v225 = v97[1];
  v226 = v100;
  v224 = v101;
  v102 = (a2 + v96[18]);
  v103 = v102[3];
  v233 = v102[4];
  v104 = v102[3];
  v105 = v102[1];
  v231 = v102[2];
  v232 = v104;
  v106 = v102[1];
  v229 = *v102;
  v230 = v106;
  v220 = v99;
  v221 = v100;
  v107 = v97[4];
  v222 = v227;
  v223 = v107;
  v108 = v102[4];
  v218 = v103;
  v219 = v108;
  v109 = v224;
  v110 = v229;
  v216 = v105;
  v217 = v231;
  if (*(&v224 + 1) == 1)
  {
    if (*(&v229 + 1) == 1)
    {
      *&v234 = v224;
      *(&v234 + 1) = 1;
      v111 = v97[2];
      v235 = v97[1];
      v236 = v111;
      v112 = v97[4];
      v237 = v97[3];
      v238 = v112;
      sub_1B7205588(&v224, &v211, &qword_1EB99AE50, &unk_1B7857940);
      sub_1B7205588(&v229, &v211, &qword_1EB99AE50, &unk_1B7857940);
      sub_1B7205418(&v234, &qword_1EB99AE50, &unk_1B7857940);
      goto LABEL_91;
    }

    sub_1B7205588(&v224, &v234, &qword_1EB99AE50, &unk_1B7857940);
    sub_1B7205588(&v229, &v234, &qword_1EB99AE50, &unk_1B7857940);
    goto LABEL_89;
  }

  v234 = v224;
  v113 = v97[2];
  v235 = v97[1];
  v236 = v113;
  v114 = v97[4];
  v237 = v97[3];
  v238 = v114;
  v213 = v113;
  v214 = v237;
  v215 = v114;
  v211 = v224;
  v212 = v235;
  if (*(&v229 + 1) == 1)
  {
    v208 = v236;
    v209 = v237;
    v210 = v238;
    v206 = v234;
    v207 = v235;
    sub_1B7205588(&v224, &v201, &qword_1EB99AE50, &unk_1B7857940);
    sub_1B7205588(&v229, &v201, &qword_1EB99AE50, &unk_1B7857940);
    sub_1B7205588(&v234, &v201, &qword_1EB99AE50, &unk_1B7857940);
    sub_1B76961E4(&v206);
LABEL_89:
    v234 = v109;
    v235 = v220;
    v236 = v221;
    v237 = v222;
    v238 = v223;
    v239 = v110;
    v240 = v216;
    v241 = v217;
    v242 = v218;
    v243 = v219;
    v84 = &unk_1EB99AFF8;
    v85 = &unk_1B7858030;
    goto LABEL_69;
  }

  v115 = v102[2];
  v207 = v102[1];
  v208 = v115;
  v116 = v102[4];
  v209 = v102[3];
  v210 = v116;
  v206 = v229;
  v117 = _s10FinanceKit21CascadeExtractedOrderV7AddressV2eeoiySbAE_AEtFZ_0(&v211, &v206);
  v198 = v208;
  v199 = v209;
  v200 = v210;
  v196 = v206;
  v197 = v207;
  sub_1B7205588(&v224, &v201, &qword_1EB99AE50, &unk_1B7857940);
  sub_1B7205588(&v229, &v201, &qword_1EB99AE50, &unk_1B7857940);
  sub_1B7205588(&v234, &v201, &qword_1EB99AE50, &unk_1B7857940);
  sub_1B76961E4(&v196);
  v203 = v213;
  v204 = v214;
  v205 = v215;
  v201 = v211;
  v202 = v212;
  sub_1B76961E4(&v201);
  v206 = v109;
  v207 = v220;
  v208 = v221;
  v209 = v222;
  v210 = v223;
  sub_1B7205418(&v206, &qword_1EB99AE50, &unk_1B7857940);
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_91:
  if ((sub_1B731D48C(*(a1 + v195[19]), *(a2 + v195[19])) & 1) == 0 || (sub_1B7320FD8(*(a1 + v195[20]), *(a2 + v195[20])) & 1) == 0 || (sub_1B731D168(*(a1 + v195[21]), *(a2 + v195[21])) & 1) == 0)
  {
    return 0;
  }

  v118 = v195[22];
  v119 = *(a1 + v118);
  v177 = *(a1 + v118 + 8);
  v120 = *(a1 + v118 + 16);
  v179 = v119;
  v180 = v120;
  v121 = *(a1 + v118 + 32);
  v178 = *(a1 + v118 + 24);
  v122 = *(a1 + v118 + 48);
  v181 = *(a1 + v118 + 40);
  v194 = v122;
  v123 = (a2 + v118);
  v124 = *v123;
  v125 = v123[1];
  v126 = v123[2];
  v127 = v123[3];
  v129 = v123[4];
  v128 = v123[5];
  v130 = v123[6];
  v174 = v128;
  v175 = v130;
  v176 = v121;
  if (!v121)
  {
    sub_1B74C6ADC(v179, v177, v180, v178, 0, v181, v194);
    if (!v129)
    {
      sub_1B74C6ADC(v124, v125, v126, v127, 0, v174, v175);
      sub_1B74C69A8(v179, v177, v180, v178, 0, v181, v194);
      goto LABEL_103;
    }

    sub_1B74C6ADC(v124, v125, v126, v127, v129, v174, v175);
LABEL_101:
    sub_1B74C69A8(v179, v177, v180, v178, v176, v181, v194);
    sub_1B74C69A8(v124, v125, v126, v127, v129, v174, v175);
    return 0;
  }

  *&v234 = v179;
  *(&v234 + 1) = v177;
  *&v235 = v180;
  *(&v235 + 1) = v178;
  *&v236 = v176;
  *(&v236 + 1) = v181;
  *&v237 = v194;
  if (!v129)
  {
    v144 = v177;
    v143 = v178;
    v145 = v176;
    v146 = v194;
    sub_1B74C6ADC(v179, v177, v180, v178, v176, v181, v194);
    sub_1B74C6ADC(v124, v125, v126, v127, 0, v174, v175);
    sub_1B74C6ADC(v179, v144, v180, v143, v145, v181, v146);

    goto LABEL_101;
  }

  v131 = v124;
  *&v211 = v124;
  *(&v211 + 1) = v125;
  v132 = v125;
  v133 = v126;
  LOBYTE(v212) = v126;
  v134 = v127;
  *(&v212 + 1) = v127;
  *&v213 = v129;
  v135 = v129;
  v136 = v174;
  v137 = v175;
  *(&v213 + 1) = v174;
  *&v214 = v175;
  sub_1B74C6ADC(v179, v177, v180, v178, v176, v181, v194);
  sub_1B74C6ADC(v131, v132, v133, v134, v135, v136, v137);
  v139 = v179;
  v138 = v180;
  v141 = v177;
  v140 = v178;
  v142 = v181;
  sub_1B74C6ADC(v179, v177, v180, v178, v176, v181, v194);
  LODWORD(v175) = _s10FinanceKit15RawOrderBarcodeV2eeoiySbAC_ACtFZ_0(&v234, &v211);

  sub_1B74C69A8(v139, v141, v138, v140, v176, v142, v194);
  if ((v175 & 1) == 0)
  {
    return 0;
  }

LABEL_103:
  v147 = v195[23];
  v148 = *(v189 + 48);
  v149 = v193;
  sub_1B7205588(a1 + v147, v193, &qword_1EB99A4B8, &unk_1B7853968);
  sub_1B7205588(a2 + v147, v149 + v148, &qword_1EB99A4B8, &unk_1B7853968);
  v150 = *(v190 + 48);
  if (v150(v149, 1, v192) == 1)
  {
    if (v150(v193 + v148, 1, v192) == 1)
    {
      sub_1B7205418(v193, &qword_1EB99A4B8, &unk_1B7853968);
      goto LABEL_106;
    }

    goto LABEL_111;
  }

  v155 = v193;
  sub_1B7205588(v193, v191, &qword_1EB99A4B8, &unk_1B7853968);
  if (v150((v155 + v148), 1, v192) == 1)
  {
    sub_1B768D6C4(v191, type metadata accessor for RawOrderProvider);
LABEL_111:
    v84 = &qword_1EB99AFE0;
    v85 = &qword_1B7858018;
LABEL_127:
    v86 = v193;
    goto LABEL_77;
  }

  v156 = v187;
  sub_1B768D65C(v193 + v148, v187, type metadata accessor for RawOrderProvider);
  if ((*v191 != *v156 || v191[1] != v156[1]) && (sub_1B78020F8() & 1) == 0 || (v191[2] != v187[2] || v191[3] != v187[3]) && (sub_1B78020F8() & 1) == 0 || (v191[4] != v187[4] || v191[5] != v187[5]) && (sub_1B78020F8() & 1) == 0)
  {
    sub_1B768D6C4(v187, type metadata accessor for RawOrderProvider);
    sub_1B768D6C4(v191, type metadata accessor for RawOrderProvider);
    v84 = &qword_1EB99A4B8;
    v85 = &unk_1B7853968;
    goto LABEL_127;
  }

  v157 = v191;
  v158 = v187;
  v159 = sub_1B77FF458();
  sub_1B768D6C4(v158, type metadata accessor for RawOrderProvider);
  sub_1B768D6C4(v157, type metadata accessor for RawOrderProvider);
  sub_1B7205418(v193, &qword_1EB99A4B8, &unk_1B7853968);
  if ((v159 & 1) == 0)
  {
    return 0;
  }

LABEL_106:
  v151 = v195[24];
  v152 = *(v185 + 48);
  v153 = v188;
  sub_1B7205588(a1 + v151, v188, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(a2 + v151, v153 + v152, &unk_1EB994C70, &qword_1B7809800);
  v154 = *(v183 + 48);
  if (v154(v153, 1, v182) != 1)
  {
    v160 = v188;
    sub_1B7205588(v188, v186, &unk_1EB994C70, &qword_1B7809800);
    if (v154(v160 + v152, 1, v182) != 1)
    {
      v161 = v183;
      v162 = v184;
      v163 = v188;
      v164 = v188 + v152;
      v165 = v182;
      (*(v183 + 32))(v184, v164, v182);
      sub_1B719BD38(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v166 = v186;
      v167 = sub_1B7800828();
      v168 = *(v161 + 8);
      v168(v162, v165);
      v168(v166, v165);
      sub_1B7205418(v163, &unk_1EB994C70, &qword_1B7809800);
      if ((v167 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_129;
    }

    (*(v183 + 8))(v186, v182);
    goto LABEL_125;
  }

  if (v154(v188 + v152, 1, v182) != 1)
  {
LABEL_125:
    v84 = &qword_1EB991C30;
    v85 = &unk_1B7816E10;
    v86 = v188;
    goto LABEL_77;
  }

  sub_1B7205418(v188, &unk_1EB994C70, &qword_1B7809800);
LABEL_129:
  v169 = v195[25];
  v170 = (a1 + v169);
  v171 = *(a1 + v169 + 8);
  v172 = (a2 + v169);
  v173 = v172[1];
  if (v171)
  {
    if (!v173 || (*v170 != *v172 || v171 != v173) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }

    return *(a1 + v195[26]) == *(a2 + v195[26]);
  }

  if (!v173)
  {
    return *(a1 + v195[26]) == *(a2 + v195[26]);
  }

  return 0;
}

unint64_t sub_1B76950C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7802178();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

void sub_1B769511C(uint64_t a1)
{
  v35 = type metadata accessor for RawOrderPickupFulfillment(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RawOrderShippingFulfillment(0);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for RawOrderFulfillment(0);
  v5 = *(v38 - 8);
  v6 = MEMORY[0x1EEE9AC00](v38);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  if (a1)
  {
    v39[3] = MEMORY[0x1E69E7CD0];
    v11 = *(a1 + 16);
    if (v11)
    {
      v31 = v1;
      v39[0] = MEMORY[0x1E69E7CC0];
      sub_1B71FDB50(0, v11, 0);
      v12 = v39[0];
      v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v36 = *(v5 + 72);
      v37 = v8;
      do
      {
        sub_1B76929E8(v13, v10, type metadata accessor for RawOrderFulfillment);
        sub_1B76929E8(v10, v8, type metadata accessor for RawOrderFulfillment);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v14 = v34;
          sub_1B768D65C(v8, v34, type metadata accessor for RawOrderPickupFulfillment);
          v15 = (v14 + *(v35 + 60));
          v16 = *v15;
          v17 = v15[1];

          v18 = type metadata accessor for RawOrderPickupFulfillment;
        }

        else
        {
          v14 = v32;
          sub_1B768D65C(v8, v32, type metadata accessor for RawOrderShippingFulfillment);
          v19 = (v14 + *(v33 + 64));
          v16 = *v19;
          v17 = v19[1];

          v18 = type metadata accessor for RawOrderShippingFulfillment;
        }

        sub_1B768D6C4(v14, v18);
        sub_1B768D6C4(v10, type metadata accessor for RawOrderFulfillment);
        v39[0] = v12;
        v21 = v12[2];
        v20 = v12[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          sub_1B71FDB50((v20 > 1), v21 + 1, 1);
          v12 = v39[0];
        }

        v12[2] = v22;
        v23 = &v12[2 * v21];
        v23[4] = v16;
        v23[5] = v17;
        v8 = v37;
        v13 += v36;
        --v11;
      }

      while (v11);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      v22 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    v24 = v12 + 5;
    v25 = -v22;
    v26 = -1;
    while (1)
    {
      if (v25 + v26 == -1)
      {

        return;
      }

      if (++v26 >= v12[2])
      {
        break;
      }

      v27 = v24 + 2;
      v28 = *(v24 - 1);
      v29 = *v24;

      LOBYTE(v28) = sub_1B724E408(v39, v28, v29);

      v24 = v27;
      if ((v28 & 1) == 0)
      {

        sub_1B7695530();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1B7695530()
{
  result = qword_1EB99AF50;
  if (!qword_1EB99AF50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderError, &type metadata for RawOrderError, v0, v1);
    atomic_store(result, &qword_1EB99AF50);
  }

  return result;
}

uint64_t sub_1B7695584(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B77FF4C8();
  if (v5 && (sub_1B7205210(), v6 = sub_1B78017F8(), , !v6) || (a4 & 1) != 0)
  {
    result = sub_1B78009A8();
    if (result >= 16)
    {
      return result;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_1B7695530();
  swift_allocError();
  *v9 = v7;
  return swift_willThrow();
}

unint64_t sub_1B769567C()
{
  result = qword_1EB99AF58;
  if (!qword_1EB99AF58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderStatus, &type metadata for RawOrderStatus, v0, v1);
    atomic_store(result, &qword_1EB99AF58);
  }

  return result;
}

unint64_t sub_1B76956D4()
{
  result = qword_1EB99AF60;
  if (!qword_1EB99AF60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderError, &type metadata for RawOrderError, v0, v1);
    atomic_store(result, &qword_1EB99AF60);
  }

  return result;
}

unint64_t sub_1B769572C()
{
  result = qword_1EB99AF68;
  if (!qword_1EB99AF68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderChangeNotificationsValue, &type metadata for RawOrderChangeNotificationsValue, v0, v1);
    atomic_store(result, &qword_1EB99AF68);
  }

  return result;
}

void sub_1B769580C(uint64_t a1)
{
  type metadata accessor for RawMerchant(319);
  if (v1 <= 0x3F)
  {
    sub_1B7695C34(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B7695C34(319, qword_1EDAF6EF0, &type metadata for RawOrderChangeNotificationsValue, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B77FF988();
        if (v4 <= 0x3F)
        {
          sub_1B77FF4F8();
          if (v5 <= 0x3F)
          {
            sub_1B7695C34(319, &qword_1EDAF89A8, &type metadata for RawOrderPayment, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B7695C84(319, qword_1EDAF8860, type metadata accessor for RawOrderReturnInfo, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1B7695C84(319, &qword_1EDAF64F0, type metadata accessor for RawOrderReturn, MEMORY[0x1E69E62F8]);
                if (v8 <= 0x3F)
                {
                  sub_1B7695C84(319, &qword_1EDAF64D8, type metadata accessor for RawOrderFulfillment, MEMORY[0x1E69E62F8]);
                  if (v9 <= 0x3F)
                  {
                    sub_1B7695C34(319, &unk_1EDAF8950, &type metadata for RawOrderCustomer, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1B7695C34(319, &qword_1EDAF64E8, &type metadata for RawOrderLineItem, MEMORY[0x1E69E62F8]);
                      if (v11 <= 0x3F)
                      {
                        sub_1B7695C84(319, &qword_1EDAF64E0, type metadata accessor for RawOrderApplication, MEMORY[0x1E69E62F8]);
                        if (v12 <= 0x3F)
                        {
                          sub_1B7695C34(319, &qword_1EDAFA080, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
                          if (v13 <= 0x3F)
                          {
                            sub_1B7695C34(319, qword_1EDAF89B0, &type metadata for RawOrderBarcode, MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1B7695C84(319, qword_1EDAF8908, type metadata accessor for RawOrderProvider, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1B7695C84(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_1B7695C34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B7695C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B7695CE8(uint64_t a1)
{
  result = type metadata accessor for RawOrderFulfillment(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RawOrderReturn(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RawECommerceOrderContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RawECommerceOrderContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7695ED0()
{
  result = qword_1EB99AF90;
  if (!qword_1EB99AF90)
  {
    result = swift_getWitnessTable(byte_1B7857F90, &type metadata for RawECommerceOrderContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AF90);
  }

  return result;
}

unint64_t sub_1B7695F28()
{
  result = qword_1EB99AF98;
  if (!qword_1EB99AF98)
  {
    result = swift_getWitnessTable(asc_1B7857EC8, &type metadata for RawECommerceOrderContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AF98);
  }

  return result;
}

unint64_t sub_1B7695F80()
{
  result = qword_1EB99AFA0;
  if (!qword_1EB99AFA0)
  {
    result = swift_getWitnessTable(aA_51, &type metadata for RawECommerceOrderContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99AFA0);
  }

  return result;
}

unint64_t sub_1B7695FD4()
{
  result = qword_1EB99AFA8;
  if (!qword_1EB99AFA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderChangeNotificationsValue, &type metadata for RawOrderChangeNotificationsValue, v0, v1);
    atomic_store(result, &qword_1EB99AFA8);
  }

  return result;
}

unint64_t sub_1B7696028()
{
  result = qword_1EB99AFB0;
  if (!qword_1EB99AFB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderStatus, &type metadata for RawOrderStatus, v0, v1);
    atomic_store(result, &qword_1EB99AFB0);
  }

  return result;
}

unint64_t sub_1B769607C()
{
  result = qword_1EB99AFC0;
  if (!qword_1EB99AFC0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AF00, &qword_1B7857970);
    v4[0] = sub_1B719BD38(&qword_1EB99AFC8, type metadata accessor for RawOrderFulfillment, protocol conformance descriptor for RawOrderFulfillment);
    result = swift_getWitnessTable(MEMORY[0x1E6969E10], v3, v4);
    atomic_store(result, &qword_1EB99AFC0);
  }

  return result;
}

unint64_t sub_1B7696130()
{
  result = qword_1EB99AFD0;
  if (!qword_1EB99AFD0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AEE8, &qword_1B7857968);
    v4[0] = sub_1B719BD38(&qword_1EB99AFD8, type metadata accessor for RawOrderReturn, protocol conformance descriptor for RawOrderReturn);
    result = swift_getWitnessTable(MEMORY[0x1E6969E10], v3, v4);
    atomic_store(result, &qword_1EB99AFD0);
  }

  return result;
}

uint64_t ManagedTransaction.displayDescription.getter()
{
  v1 = [v0 merchantName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B7800868();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [v0 transactionDescription];
  v7 = sub_1B7800868();
  v9 = v8;

  TransactionType.init(rawValue:)([v0 transactionTypeValue]);
  v10 = sub_1B7696334(v3, v5, v7, v9);

  return v10;
}