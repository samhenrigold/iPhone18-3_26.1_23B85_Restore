void sub_199B0ABA0(uint64_t a1)
{
  if (!qword_1EAF74208)
  {
    type metadata accessor for ContactCardBackgroundConfiguration(255);
    v1 = sub_199DF859C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF74208);
    }
  }
}

unint64_t sub_199B0ABF8()
{
  result = qword_1EAF744F8;
  if (!qword_1EAF744F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74500, &qword_199E3D3D8);
    sub_199B0A858();
    sub_199B0A8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF744F8);
  }

  return result;
}

uint64_t sub_199B0ACF0()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF74510);
  __swift_project_value_buffer(v0, qword_1EAF74510);
  return sub_199DF803C();
}

ContactsUI::ContactPropertyType_optional __swiftcall ContactPropertyType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_199DFA8DC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactPropertyType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6D754E656E6F6870;
  v3 = 1702129518;
  if (v1 != 5)
  {
    v3 = 0x6D6F74737563;
  }

  v4 = 0x7961646874726962;
  if (v1 != 3)
  {
    v4 = 0x52746361746E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6464416C69616D65;
  if (v1 != 1)
  {
    v5 = 0x64416C6174736F70;
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

uint64_t sub_199B0AEE0(uint64_t a1)
{
  sub_199DF9FEC();
}

void sub_199B0B020(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0x6D754E656E6F6870;
  v5 = 0xE400000000000000;
  v6 = 1702129518;
  if (v2 != 5)
  {
    v6 = 0x6D6F74737563;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961646874726962;
  if (v2 != 3)
  {
    v8 = 0x52746361746E6F63;
    v7 = 0xEF6E6F6974616C65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000073736572;
  v10 = 0x6464416C69616D65;
  if (v2 != 1)
  {
    v10 = 0x64416C6174736F70;
    v9 = 0xED00007373657264;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t ContactCardPresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

uint64_t sub_199B0B1F4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v8 = 0;
  type metadata accessor for CardViewModel(0);
  v6 = swift_allocObject();
  result = a2(a1, &v8);
  *a3 = v6;
  return result;
}

double ContactCardView.init(forContact:audioCall:faceTimeVideo:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  LOBYTE(v15) = 0;
  type metadata accessor for CardViewModel(0);
  v11 = swift_allocObject();
  v13 = a1;
  sub_199B0E100(v13, &v15);
  *a6 = v11;
  swift_getKeyPath();
  v15 = v11;

  sub_199A9A57C(a2, a3);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF739C();
  sub_199A9A5FC(a2, a3);

  swift_getKeyPath();
  v15 = v11;
  sub_199DF739C();
  sub_199A9A5FC(a2, a3);

  sub_199A9A5FC(a4, a5);

  return result;
}

double ContactCardView.init(forContactIdentifiers:audioCall:faceTimeVideo:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  LOBYTE(v14) = 0;
  type metadata accessor for CardViewModel(0);
  v11 = swift_allocObject();
  sub_199B0E520(a1, &v14);
  *a6 = v11;
  swift_getKeyPath();
  v14 = v11;

  sub_199A9A57C(a2, a3);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF739C();
  sub_199A9A5FC(a2, a3);

  swift_getKeyPath();
  v14 = v11;
  sub_199DF739C();
  sub_199A9A5FC(a2, a3);
  sub_199A9A5FC(a4, a5);

  return result;
}

uint64_t ContactCardView.init(forContactIdentifiers:propertyDetailLabel:propertyDetailValue:)@<X0>(void *a1@<X0>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  LOBYTE(v12) = 0;
  type metadata accessor for CardViewModel(0);
  v9 = swift_allocObject();
  sub_199B0E520(a1, &v12);
  if (a5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v9;
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
    sub_199DF739C();
  }

  *a6 = v9;
  return result;
}

uint64_t ContactCardView.init(forContactIdentifiers:context:propertyDetailLabel:propertyDetailValue:)@<X0>(void *a1@<X0>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  LOBYTE(v12) = 2;
  type metadata accessor for CardViewModel(0);
  v9 = swift_allocObject();
  sub_199B0E520(a1, &v12);
  if (a5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v9;
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
    sub_199DF739C();
  }

  *a6 = v9;
  return result;
}

void ContactCardView.init(forContactIdentifiers:scrollToType:scrollToLabel:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v16 = 0;
  type metadata accessor for CardViewModel(0);
  v10 = swift_allocObject();
  sub_199B0E520(a1, &v16);
  v15 = v9;

  sub_199B0CEE4(&v15);
  sub_199B0D170(a3, a4);

  if (qword_1EAF71ED0 != -1)
  {
    swift_once();
  }

  v11 = sub_199DF804C();
  __swift_project_value_buffer(v11, qword_1EAF74510);
  v12 = sub_199DF802C();
  v13 = sub_199DFA33C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_199A75000, v12, v13, "Scroll to feature is not yet implemented", v14, 2u);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
  }

  *a5 = v10;
}

void ContactCardView.init(forContactIdentifiers:context:scrollToType:scrollToLabel:)(void *a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v16 = 0;
  type metadata accessor for CardViewModel(0);
  v10 = swift_allocObject();
  sub_199B0E520(a1, &v16);
  v15 = v9;

  sub_199B0CEE4(&v15);
  sub_199B0D170(a3, a4);

  if (qword_1EAF71ED0 != -1)
  {
    swift_once();
  }

  v11 = sub_199DF804C();
  __swift_project_value_buffer(v11, qword_1EAF74510);
  v12 = sub_199DF802C();
  v13 = sub_199DFA33C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_199A75000, v12, v13, "Scroll to feature is not yet implemented", v14, 2u);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
  }

  *a5 = v10;
}

uint64_t sub_199B0BBC8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(uint64_t, char *)@<X2>, uint64_t *a4@<X8>)
{
  v9 = *a2;
  type metadata accessor for CardViewModel(0);
  v7 = swift_allocObject();
  result = a3(a1, &v9);
  *a4 = v7;
  return result;
}

uint64_t ContactCardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v2 = *v1;
  swift_getKeyPath();
  *&v36 = v2;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  swift_retain_n();
  sub_199DF73AC();

  v3 = *(v2 + 40);

  if (v3 == 1)
  {
    v4 = &qword_1EAF74538;
    v5 = &qword_199E3D4C8;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74538, &qword_199E3D4C8);
    MEMORY[0x1EEE9AC00](v6);
    v8 = v33 - v7;
    *(v33 - v7) = v2;
    LOBYTE(v34) = 0;
    sub_199DF983C();
    v9 = *(&v36 + 1);
    v8[8] = v36;
    *(v8 + 2) = v9;
    v34 = 0;
    v35 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74540, &qword_199E3D4D0);
    sub_199DF983C();
    v10 = BYTE8(v36);
    v11 = v37;
    *(v8 + 3) = v36;
    v8[32] = v10;
    *(v8 + 5) = v11;
    v34 = 0;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74548, &qword_199E3D4D8);
    sub_199DF983C();
    v12 = BYTE8(v36);
    v13 = v37;
    *(v8 + 6) = v36;
    v8[56] = v12;
    *(v8 + 8) = v13;
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74550, &qword_199E3D4E0);
    sub_199DF983C();
    *(v8 + 72) = v36;
    v14 = *(type metadata accessor for ContactCardViewSwiftUI(0) + 36);
    *&v8[v14] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
    swift_storeEnumTagMultiPayload();
    v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74560, &qword_199E3D520) + 36)];
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = CGSizeMake;
    *(v15 + 3) = 0;
    swift_getKeyPath();
    *&v36 = v2;
    sub_199DF73AC();

    v16 = *(v2 + 16);
    v17 = &v8[*(v6 + 36)];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74568, &qword_199E3D560);

    v19 = v16;
    sub_199DFA18C();
    *&v17[*(v18 + 40)] = v19;
    *v17 = &unk_199E3D558;
    *(v17 + 1) = v2;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74570, &qword_199E3D568);
    MEMORY[0x1EEE9AC00](v20);
    sub_199AAD408(v8, v33 - v21, &qword_1EAF74538, &qword_199E3D4C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74578, &qword_199E3D570);
  }

  else
  {
    v5 = &qword_199E3D570;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74578, &qword_199E3D570);
    MEMORY[0x1EEE9AC00](v22);
    v8 = v33 - v23;
    v34 = sub_199DF971C();
    sub_199DF983C();
    v25 = *(&v36 + 1);
    v24 = v36;
    swift_getKeyPath();
    *&v36 = v2;
    sub_199DF73AC();

    v26 = *(v2 + 16);
    v27 = &v8[*(v22 + 36)];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74568, &qword_199E3D560);

    v29 = v26;
    sub_199DFA18C();
    *&v27[*(v28 + 40)] = v29;
    *v27 = &unk_199E3D588;
    *(v27 + 1) = v2;
    *v8 = v2;
    *(v8 + 1) = v24;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    *(v8 + 2) = v25;
    *(v8 + 5) = CGSizeMake;
    *(v8 + 6) = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74570, &qword_199E3D568);
    MEMORY[0x1EEE9AC00](v30);
    v4 = &qword_1EAF74578;
    sub_199AAD408(v8, v33 - v31, &qword_1EAF74578, &qword_199E3D570);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74538, &qword_199E3D4C8);
  }

  sub_199B11310(&qword_1EAF74580, &qword_1EAF74578, &qword_199E3D570, sub_199B11230);
  sub_199B11310(&qword_1EAF745A8, &qword_1EAF74538, &qword_199E3D4C8, sub_199B113B4);
  sub_199DF8EDC();
  return sub_199A79A04(v8, v4, v5);
}

uint64_t sub_199B0C2B0()
{
  v0[2] = sub_199DFA17C();
  v0[3] = sub_199DFA16C();
  v2 = sub_199DFA12C();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x1EEE6DFA0](sub_199B0C348, v2, v1);
}

uint64_t sub_199B0C348(uint64_t a1)
{
  *(v1 + 48) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B0C3D4, v3, v2);
}

uint64_t sub_199B0C3D4()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_199B0C438, v1, v2);
}

uint64_t sub_199B0C438()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199B0C498()
{
  v0[2] = sub_199DFA17C();
  v0[3] = sub_199DFA16C();
  v2 = sub_199DFA12C();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x1EEE6DFA0](sub_199B0C530, v2, v1);
}

uint64_t sub_199B0C530(uint64_t a1)
{
  *(v1 + 48) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B0C5BC, v3, v2);
}

uint64_t sub_199B0C5BC()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_199B12B80, v1, v2);
}

id sub_199B0C624()
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v1 = *(v0 + 16);

  return v1;
}

id sub_199B0C6D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_199B0C78C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_199A7DDB0();
  v5 = v4;
  v6 = sub_199DFA4EC();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
    sub_199DF739C();
  }
}

uint64_t sub_199B0C8E8()
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  return *(v0 + 24);
}

void sub_199B0C988(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  *a2 = *(v3 + 24);
}

void sub_199B0CA30(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
    sub_199DF739C();
  }
}

uint64_t sub_199B0CB40()
{
  swift_getKeyPath();
  v3 = v0;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v1 = v0[4];
  sub_199B12614(v1, v3[5], v3[6], v3[7]);
  return v1;
}

void sub_199B0CC08(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_199B12614(v4, v5, v6, v7);
}

double sub_199B0CCBC(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF739C();

  return result;
}

void sub_199B0CD94(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  *a1 = *(v1 + 64);
}

void sub_199B0CE3C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  *a2 = *(v3 + 64);
}

double sub_199B0CEE4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 64);
  if (v3 != 7)
  {
    if (v2 == 7 || (sub_199AA9538(v3, v2) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 64) = v2;
    return result;
  }

  if (v2 == 7)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF739C();

  return result;
}

uint64_t sub_199B0D014()
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v1 = *(v0 + 72);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199B0D0C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t sub_199B0D170(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 72) == a1 && v5 == a2;
      if (v6 || (sub_199DFA99C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
    sub_199DF739C();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

void sub_199B0D2E0(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  *a1 = *(v1 + 88);
}

void sub_199B0D388(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  *a2 = *(v3 + 88);
}

double sub_199B0D430(unsigned __int8 *a1)
{
  if (*(v1 + 88) != *a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
    sub_199DF739C();
  }

  return result;
}

uint64_t sub_199B0D538()
{
  swift_getKeyPath();
  v3 = v0;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v1 = *(v0 + 96);
  sub_199A9A57C(v1, *(v3 + 104));
  return v1;
}

uint64_t sub_199B0D5EC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_199B12B7C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_199A9A57C(v4, v5);
}

double sub_199B0D6D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_199B12B28;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_199A9A57C(v2, v3);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF739C();
  sub_199A9A5FC(v5, v4);

  return result;
}

uint64_t sub_199B0D834()
{
  swift_getKeyPath();
  v3 = v0;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v1 = *(v0 + 112);
  sub_199A9A57C(v1, *(v3 + 120));
  return v1;
}

uint64_t sub_199B0D8E8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_199B12788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_199A9A57C(v4, v5);
}

double sub_199B0D9D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_199B12760;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_199A9A57C(v2, v3);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF739C();
  sub_199A9A5FC(v5, v4);

  return result;
}

uint64_t sub_199B0DB30@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v3 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  swift_beginAccess();
  return sub_199AAD408(v5 + v3, a1, &unk_1EAF74680, &qword_199E3DAF8);
}

uint64_t sub_199B0DC08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v4 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  swift_beginAccess();
  return sub_199AAD408(v3 + v4, a2, &unk_1EAF74680, &qword_199E3DAF8);
}

uint64_t sub_199B0DCE0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74680, &qword_199E3DAF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_199AAD408(a1, &v9[-v5], &unk_1EAF74680, &qword_199E3DAF8);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF739C();

  return sub_199A79A04(v6, &unk_1EAF74680, &qword_199E3DAF8);
}

uint64_t sub_199B0DE30(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  swift_beginAccess();
  sub_199B12480(a2, a1 + v4);
  return swift_endAccess();
}

id sub_199B0DE9C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_199B0DF10()
{
  v1 = v0;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_199E37DF0;
  v4 = objc_opt_self();
  v5 = v2;
  *(v3 + 32) = [v4 descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v6 = sub_199DFA0BC();

  LODWORD(v3) = [v5 areKeysAvailable_];

  if (!v3)
  {
    return 0;
  }

  v7 = sub_199B0DE9C();
  swift_getKeyPath();
  sub_199DF73AC();

  v8 = [v7 stringFromContact_];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_199DF9F8C();

  return v9;
}

uint64_t sub_199B0E100(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  *(v3 + 32) = xmmword_199E3D430;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 7;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  v6 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  v7 = sub_199DF76CC();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter) = 0;
  sub_199DF73DC();
  *(v3 + 16) = a1;
  *(v3 + 88) = v5;
  *(v3 + 24) = 1;
  swift_getKeyPath();
  v29 = v3;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  v8 = a1;
  sub_199DF73AC();

  if (*(v3 + 24) != 1)
  {
    if (qword_1EAF71ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_199DF804C();
    __swift_project_value_buffer(v22, qword_1EAF74510);
    v23 = v8;
    v11 = sub_199DF802C();
    v24 = sub_199DFA33C();

    if (os_log_type_enabled(v11, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138477827;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&dword_199A75000, v11, v24, "Init Contact Card with non-persisted contact %{private}@", v25, 0xCu);
      sub_199A79A04(v26, &unk_1EAF73A90, &unk_199E3A0B0);
      MEMORY[0x19A8FA1A0](v26, -1, -1);
      MEMORY[0x19A8FA1A0](v25, -1, -1);

      return v3;
    }

LABEL_12:
    return v3;
  }

  if (qword_1EAF71ED0 != -1)
  {
    swift_once();
  }

  v9 = sub_199DF804C();
  __swift_project_value_buffer(v9, qword_1EAF74510);
  v10 = v8;
  v11 = sub_199DF802C();
  v12 = sub_199DFA33C();

  if (!os_log_type_enabled(v11, v12))
  {

    goto LABEL_12;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v29 = v15;
  *v13 = 136315395;
  v16 = [v10 identifier];
  v17 = sub_199DF9F8C();
  v19 = v18;

  v20 = sub_199A9BE90(v17, v19, &v29);

  *(v13 + 4) = v20;
  *(v13 + 12) = 2113;
  *(v13 + 14) = v10;
  *v14 = v10;
  v21 = v10;
  _os_log_impl(&dword_199A75000, v11, v12, "Init Contact Card with %s, %{private}@", v13, 0x16u);
  sub_199A79A04(v14, &unk_1EAF73A90, &unk_199E3A0B0);
  MEMORY[0x19A8FA1A0](v14, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v15);
  MEMORY[0x19A8FA1A0](v15, -1, -1);
  MEMORY[0x19A8FA1A0](v13, -1, -1);

  return v3;
}

uint64_t sub_199B0E520(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  *(v3 + 32) = xmmword_199E3D430;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 7;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  v6 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  v7 = sub_199DF76CC();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter) = 0;
  sub_199DF73DC();
  *(v3 + 88) = v5;
  if (a1[2])
  {
    v9 = a1[4];
    v8 = a1[5];
    sub_199DF81AC();

    v10 = objc_allocWithZone(MEMORY[0x1E695CD58]);
    v11 = sub_199DF9F5C();
    v12 = [v10 initWithIdentifier_];

    *(v3 + 24) = 1;
    v13 = qword_1EAF71ED0;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_199DF804C();
    __swift_project_value_buffer(v15, qword_1EAF74510);
    sub_199DF81AC();
    v16 = sub_199DF802C();
    v17 = sub_199DFA33C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      v20 = sub_199A9BE90(v9, v8, &v26);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_199A75000, v16, v17, "Init Contact Card with identifier %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x19A8FA1A0](v19, -1, -1);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    if (qword_1EAF71ED0 != -1)
    {
      swift_once();
    }

    v21 = sub_199DF804C();
    __swift_project_value_buffer(v21, qword_1EAF74510);
    v22 = sub_199DF802C();
    v23 = sub_199DFA31C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_199A75000, v22, v23, "Contact card needs a valid identifier", v24, 2u);
      MEMORY[0x19A8FA1A0](v24, -1, -1);
    }

    v14 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    *(v3 + 24) = 0;
  }

  *(v3 + 16) = v14;
  return v3;
}

uint64_t sub_199B0E8B4()
{
  sub_199B125CC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_199A9A5FC(*(v0 + 96), *(v0 + 104));
  sub_199A9A5FC(*(v0 + 112), *(v0 + 120));
  sub_199A79A04(v0 + OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity, &unk_1EAF74680, &qword_199E3DAF8);

  v1 = OBJC_IVAR____TtC10ContactsUI13CardViewModel___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_199B0E970()
{
  sub_199B0E8B4();

  return swift_deallocClassInstance();
}

uint64_t sub_199B0E9C8@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = type metadata accessor for ContactCardViewSwiftUI(0);
  v82 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v83 = v3;
  v84 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74680, &qword_199E3DAF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF727A0, &qword_199E3DB00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = &v68 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74690, &qword_199E3DB08);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v68 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74698, &qword_199E3DB10);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v68 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746A0, &qword_199E3DB18);
  MEMORY[0x1EEE9AC00](v79);
  v85 = &v68 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746A8, &qword_199E3DB20);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v68 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746B0, &qword_199E3DB28);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v68 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746B8, &qword_199E3DB30);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v68 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746C0, &qword_199E3DB38);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746C8, &qword_199E3DB40);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v68 - v18;
  v92 = v1;
  sub_199DF914C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746D0, &qword_199E3DB48);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746D8, &qword_199E3DB50);
  v21 = sub_199AA0B90(&qword_1EAF746E0, &qword_1EAF746D8, &qword_199E3DB50, MEMORY[0x1E697DA90]);
  v96 = v20;
  v97 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v68;
  sub_199DF854C();
  v23 = v1;
  v24 = *v1;
  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC10ContactsUI13CardViewModel___observationRegistrar;
  v96 = v24;
  v26 = sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  v77 = v25;
  v76 = v26;
  sub_199DF73AC();

  v27 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  swift_beginAccess();
  sub_199AAD408(v24 + v27, v22, &unk_1EAF74680, &qword_199E3DAF8);
  v28 = sub_199DF76CC();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v22, 1, v28) == 1)
  {
    sub_199A79A04(v22, &unk_1EAF74680, &qword_199E3DAF8);
    v30 = 1;
  }

  else
  {
    sub_199B11470(&qword_1EAF71BA0, MEMORY[0x1E69968E0], MEMORY[0x1E69968D8]);
    sub_199DF6EBC();
    (*(v29 + 8))(v22, v28);
    v30 = 0;
  }

  v31 = sub_199DF6EDC();
  v32 = v91;
  (*(*(v31 - 8) + 56))(v91, v30, 1, v31);
  v33 = sub_199AA0B90(&qword_1EAF746E8, &qword_1EAF746C8, &qword_199E3DB40, MEMORY[0x1EEE7B510]);
  MEMORY[0x19A8F71B0](v32, v16, v33);
  sub_199A79A04(v32, &qword_1EAF727A0, &qword_199E3DB00);
  (*(v17 + 8))(v19, v16);
  v34 = *(v23 + 56);
  v35 = *(v23 + 64);
  v93 = *(v23 + 48);
  LOBYTE(v94) = v34;
  v95 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746F0, &qword_199E3DB80);
  sub_199DF986C();
  sub_199DF9C2C();
  v93 = v16;
  v94 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v71;
  v37 = v70;
  sub_199DF94DC();

  (*(v69 + 8))(v15, v37);
  sub_199DF917C();
  sub_199DF84FC();
  v96 = v38;
  v97 = v39;
  v98 = v40;
  v99 = v41;
  v100 = 0;
  v42 = v75;
  sub_199DF8FBC();
  (*(v72 + 32))(v42, v36, v73);
  v43 = v84;
  sub_199B124F8(v23, v84, type metadata accessor for ContactCardViewSwiftUI);
  v44 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v45 = swift_allocObject();
  sub_199B11F98(v43, v45 + v44);
  sub_199B1207C();
  sub_199B121E8();
  v46 = v78;
  sub_199DF958C();

  sub_199A79A04(v42, &qword_1EAF746B0, &qword_199E3DB28);
  KeyPath = swift_getKeyPath();
  v48 = v85;
  v49 = &v85[*(v79 + 36)];
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74710, &unk_199E3DBB8) + 28);
  v51 = *MEMORY[0x1E697DBA8];
  v52 = sub_199DF857C();
  (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
  *v49 = KeyPath;
  (*(v80 + 32))(v48, v46, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v50) = sub_199DF919C();
  *(inited + 32) = v50;
  v54 = sub_199DF91BC();
  *(inited + 33) = v54;
  v55 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v50)
  {
    v55 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v54)
  {
    v55 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v87;
  sub_199AB7794(v48, v87, &qword_1EAF746A0, &qword_199E3DB18);
  v65 = v64 + *(v86 + 36);
  *v65 = v55;
  *(v65 + 8) = v57;
  *(v65 + 16) = v59;
  *(v65 + 24) = v61;
  *(v65 + 32) = v63;
  *(v65 + 40) = 0;
  v66 = v89;
  sub_199AB7794(v64, v89, &qword_1EAF74698, &qword_199E3DB10);
  *(v66 + *(v88 + 36)) = 1;
  swift_getKeyPath();
  v93 = v24;
  sub_199DF73AC();

  sub_199B0FEB4(*(v24 + 88) == 1);
  return sub_199A79A04(v66, &qword_1EAF74690, &qword_199E3DB08);
}

uint64_t sub_199B0F6C0(uint64_t a1)
{
  v2 = sub_199DF8F6C();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746D8, &qword_199E3DB50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_199DF8D5C();
  v9 = a1;
  v10 = 0;
  sub_199B11470(&qword_1EAF74760, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_199DFAB2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74768, &qword_199E3DC10);
  sub_199AA0B90(&qword_1EAF74770, &qword_1EAF74768, &qword_199E3DC10, MEMORY[0x1E6981F48]);
  sub_199DF853C();
  sub_199AA0B90(&qword_1EAF746E0, &qword_1EAF746D8, &qword_199E3DB50, MEMORY[0x1E697DA90]);
  sub_199DF955C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_199B0F910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for ContactCardHeaderNameView(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-v7];
  v9 = *a1;
  swift_getKeyPath();
  v39 = v9;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v10 = *(v9 + 16);
  v11 = a1[2];
  LOBYTE(v43) = *(a1 + 8);
  v44 = v11;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF986C();
  v13 = v39;
  v14 = v40;
  v15 = v41;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  LOBYTE(v43) = 0;
  sub_199DF983C();
  v16 = v40;
  v8[40] = v39;
  *(v8 + 6) = v16;
  sub_199B02B9C(v12, &v8[*(v4 + 36)]);
  *(v8 + 2) = v13;
  *(v8 + 3) = v14;
  v8[32] = v15;
  swift_getKeyPath();
  v39 = v9;
  sub_199DF73AC();

  v17 = *(v9 + 96);
  v18 = *(v9 + 104);
  swift_getKeyPath();
  v39 = v9;
  sub_199A9A57C(v17, v18);
  sub_199DF73AC();

  v19 = *(v9 + 112);
  v20 = *(v9 + 120);
  sub_199A9A57C(v19, v20);
  v21 = sub_199B07448(v17, v18, v19, v20);
  swift_getKeyPath();
  v39 = v9;
  sub_199DF73AC();

  v22 = *(v9 + 16);
  swift_getKeyPath();
  v39 = v9;
  v23 = v22;
  sub_199DF73AC();

  v36 = *(v9 + 64);
  v24 = *(a1 + 56);
  v25 = a1[8];
  v43 = a1[6];
  LOBYTE(v44) = v24;
  v45 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746F0, &qword_199E3DB80);
  sub_199DF986C();
  v26 = v39;
  v27 = v40;
  v28 = v41;
  LOBYTE(v18) = v42;
  type metadata accessor for ContactDetailsViewModel(0);
  swift_allocObject();
  v29 = sub_199B0A180(v23);

  v30 = v37;
  sub_199B124F8(v8, v37, type metadata accessor for ContactCardHeaderNameView);
  v31 = v38;
  sub_199B124F8(v30, v38, type metadata accessor for ContactCardHeaderNameView);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74778, &unk_199E3DC68);
  *(v31 + *(v32 + 48)) = v21;
  v33 = v31 + *(v32 + 64);
  *v33 = v29;
  *(v33 + 8) = v36;
  *(v33 + 16) = v26;
  *(v33 + 24) = v27;
  *(v33 + 32) = v28;
  *(v33 + 40) = v18;

  sub_199DF81AC();

  sub_199B12560(v8);

  return sub_199B12560(v30);
}

uint64_t sub_199B0FD14@<X0>(void *a1@<X8>)
{
  result = sub_199DF87EC();
  *a1 = v3;
  return result;
}

void sub_199B0FD40(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 < -300.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74758, &qword_199E3DC08);
    sub_199DF985C();
    goto LABEL_3;
  }

  if (v3 < -200.0 || v3 < -150.0)
  {
    v4 = &qword_1EAF74758;
    v5 = &qword_199E3DC08;
    goto LABEL_7;
  }

  if (v3 < -10.0 || v3 > 0.0)
  {
LABEL_3:
    v4 = &qword_1EAF74750;
    v5 = &qword_199E39620;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    sub_199DF985C();
  }
}

uint64_t sub_199B0FEB4(char a1)
{
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74720, &unk_199E3DBF8);
    v3 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](v2);
    v5 = &v13 - v4;
    MEMORY[0x1EEE9AC00](v6);
    *(&v13 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74690, &qword_199E3DB08);
    sub_199B1223C();
    sub_199DF88AC();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74718, &qword_199E3DBF0);
    v8 = MEMORY[0x1EEE9AC00](v7);
    (*(v3 + 16))(&v13 - v9, v5, v2, v8);
    swift_storeEnumTagMultiPayload();
    sub_199AA0B90(&qword_1EAF74728, &qword_1EAF74720, &unk_199E3DBF8, MEMORY[0x1EEE7B968]);
    sub_199DF8EDC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74718, &qword_199E3DBF0);
    MEMORY[0x1EEE9AC00](v11);
    sub_199A956BC(v1, &v13 - v12);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74720, &unk_199E3DBF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74690, &qword_199E3DB08);
    sub_199AA0B90(&qword_1EAF74728, &qword_1EAF74720, &unk_199E3DBF8, MEMORY[0x1EEE7B968]);
    sub_199B1223C();
    return sub_199DF8EDC();
  }
}

void *sub_199B101C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_getKeyPath();
  *&__dst[0] = a1;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel, &unk_199E3D9A4);
  sub_199DF73AC();

  v8 = a1[5];
  if (v8 == 1)
  {
    sub_199B11D94(__dst);
  }

  else
  {
    v30 = a4;
    v10 = a1[6];
    v9 = a1[7];
    v11 = a1[4];
    sub_199DF81AC();
    sub_199DF81AC();
    v29 = sub_199DF8D5C();
    sub_199B105B0(v11, v8, v10, v9, __dst);
    v44 = __dst[12];
    v45 = __dst[13];
    v46 = __dst[14];
    v40 = __dst[8];
    v41 = __dst[9];
    v42 = __dst[10];
    v43 = __dst[11];
    v36 = __dst[4];
    v37 = __dst[5];
    v38 = __dst[6];
    v39 = __dst[7];
    v32 = __dst[0];
    v33 = __dst[1];
    v34 = __dst[2];
    v35 = __dst[3];
    v48[12] = __dst[12];
    v48[13] = __dst[13];
    v48[14] = __dst[14];
    v48[8] = __dst[8];
    v48[9] = __dst[9];
    v48[10] = __dst[10];
    v48[11] = __dst[11];
    v48[4] = __dst[4];
    v48[5] = __dst[5];
    v48[6] = __dst[6];
    v48[7] = __dst[7];
    v48[0] = __dst[0];
    v48[1] = __dst[1];
    v47 = __dst[15];
    v49 = __dst[15];
    v48[2] = __dst[2];
    v48[3] = __dst[3];
    sub_199AAD408(&v32, __src, &qword_1EAF74630, &qword_199E3D9C0);
    sub_199A79A04(v48, &qword_1EAF74630, &qword_199E3D9C0);
    *&v31[199] = v44;
    *&v31[215] = v45;
    *&v31[231] = v46;
    *&v31[135] = v40;
    *&v31[151] = v41;
    *&v31[167] = v42;
    *&v31[183] = v43;
    *&v31[71] = v36;
    *&v31[87] = v37;
    *&v31[103] = v38;
    *&v31[119] = v39;
    *&v31[7] = v32;
    *&v31[23] = v33;
    *&v31[39] = v34;
    v31[247] = v47;
    *&v31[55] = v35;

    *&__dst[0] = a2;
    *(&__dst[0] + 1) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74638, &qword_199E3D9C8);
    sub_199DF984C();
    v12 = __src[0];
    KeyPath = swift_getKeyPath();
    v14 = sub_199DF915C();
    sub_199DF84FC();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    LOBYTE(__dst[0]) = 0;
    v23 = sub_199DF91CC();
    sub_199DF84FC();
    *(&__src[26] + 1) = *&v31[192];
    *(&__src[28] + 1) = *&v31[208];
    *(&__src[30] + 1) = *&v31[224];
    *(&__src[18] + 1) = *&v31[128];
    *(&__src[20] + 1) = *&v31[144];
    *(&__src[22] + 1) = *&v31[160];
    *(&__src[24] + 1) = *&v31[176];
    *(&__src[10] + 1) = *&v31[64];
    *(&__src[12] + 1) = *&v31[80];
    *(&__src[14] + 1) = *&v31[96];
    *(&__src[16] + 1) = *&v31[112];
    *(&__src[2] + 1) = *v31;
    *(&__src[4] + 1) = *&v31[16];
    *(&__src[6] + 1) = *&v31[32];
    __src[0] = v29;
    __src[1] = 0;
    LOBYTE(__src[2]) = 1;
    *(&__src[32] + 1) = *&v31[240];
    *(&__src[8] + 1) = *&v31[48];
    __src[34] = KeyPath;
    __src[35] = v12;
    a4 = v30;
    LOBYTE(__src[36]) = v14;
    __src[37] = v16;
    __src[38] = v18;
    __src[39] = v20;
    __src[40] = v22;
    LOBYTE(__src[41]) = 0;
    LOBYTE(__src[42]) = v23;
    __src[43] = v24;
    __src[44] = v25;
    __src[45] = v26;
    __src[46] = v27;
    LOBYTE(__src[47]) = 0;
    CGSizeMake();
    memcpy(__dst, __src, 0x179uLL);
  }

  return memcpy(a4, __dst, 0x179uLL);
}

uint64_t sub_199B105B0@<X0>(uint64_t a1@<X3>, unint64_t a2@<X4>, uint64_t a3@<X5>, unint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74640, &qword_199E3AC30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_199B0DF10();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    *&v76 = sub_199B0DF10();
    *(&v76 + 1) = v15;
    sub_199A9C458();
    v16 = sub_199DF93CC();
    v53 = v17;
    v54 = v16;
    v19 = v18;
    v52 = v20;
    KeyPath = swift_getKeyPath();
    v21 = sub_199DF922C();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    sub_199DF928C();
    sub_199A79A04(v10, &unk_1EAF74640, &qword_199E3AC30);
    sub_199DF925C();
    *(&v50 + 1) = sub_199DF92BC();

    *&v50 = swift_getKeyPath();
    LOBYTE(v76) = v19 & 1;
    v22 = v19 & 1;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    KeyPath = 0;
    v52 = 0;
    v50 = 0uLL;
    v22 = 0;
  }

  v47 = v22;
  v23 = sub_199DF8CEC();
  LOBYTE(v55[0]) = 1;
  sub_199B10AD0(a1, a2, v48, v49, &v76);
  v65 = v77[4];
  v66 = v77[5];
  v67[0] = v77[6];
  *(v67 + 9) = *(&v77[6] + 9);
  v62 = v77[1];
  v63 = v77[2];
  v64 = v77[3];
  v60 = v76;
  v61 = v77[0];
  v68[5] = v77[4];
  v68[6] = v77[5];
  v69[0] = v77[6];
  *(v69 + 9) = *(&v77[6] + 9);
  v68[2] = v77[1];
  v68[3] = v77[2];
  v68[4] = v77[3];
  v68[0] = v76;
  v68[1] = v77[0];
  sub_199AAD408(&v60, v74, &qword_1EAF74650, &qword_199E3DA68);
  sub_199A79A04(v68, &qword_1EAF74650, &qword_199E3DA68);
  *(&v59[2] + 7) = v62;
  *(&v59[1] + 7) = v61;
  *(&v59[6] + 7) = v66;
  *(&v59[5] + 7) = v65;
  *(&v59[7] + 7) = v67[0];
  v59[8] = *(v67 + 9);
  *(&v59[3] + 7) = v63;
  *(&v59[4] + 7) = v64;
  *(v59 + 7) = v60;
  v24 = v55[0];
  v74[0] = v23;
  v25 = v23;
  v74[1] = 0;
  v75[0] = v55[0];
  v26 = v59[1];
  *&v75[1] = v59[0];
  v27 = v59[3];
  *&v75[65] = v59[4];
  v28 = v59[2];
  *&v75[49] = v59[3];
  *&v75[33] = v59[2];
  v29 = v59[0];
  *&v75[17] = v59[1];
  v30 = v59[7];
  *&v75[129] = *(v67 + 9);
  v31 = v59[6];
  *&v75[113] = v59[7];
  v32 = v59[5];
  *&v75[97] = v59[6];
  v33 = v59[4];
  *&v75[81] = v59[5];
  *&v57[71] = *&v75[48];
  *&v57[55] = *&v75[32];
  *&v57[119] = *&v75[96];
  *&v57[135] = *&v75[112];
  v57[167] = BYTE8(v67[1]);
  v34 = v53;
  v35 = v54;
  *&v70 = v54;
  *(&v70 + 1) = v53;
  *&v71 = v22;
  v36 = KeyPath;
  v37 = v52;
  *(&v71 + 1) = v52;
  v72 = KeyPath;
  v38 = v50;
  v73 = v50;
  *&v57[151] = *&v75[128];
  *&v57[87] = *&v75[64];
  *&v57[103] = *&v75[80];
  *&v57[7] = v74[0];
  *&v57[23] = *v75;
  *&v57[39] = *&v75[16];
  v39 = v71;
  *a5 = v70;
  *(a5 + 16) = v39;
  v40 = v73;
  *(a5 + 32) = v72;
  *(a5 + 48) = v40;
  v41 = *&v57[96];
  *(a5 + 185) = *&v57[112];
  v42 = *&v57[144];
  *(a5 + 201) = *&v57[128];
  *(a5 + 217) = v42;
  v43 = *&v57[32];
  *(a5 + 121) = *&v57[48];
  v44 = *&v57[80];
  *(a5 + 137) = *&v57[64];
  *(a5 + 153) = v44;
  *(a5 + 169) = v41;
  v45 = *&v57[16];
  *(a5 + 73) = *v57;
  *(a5 + 89) = v45;
  *(a5 + 105) = v43;
  *(&v77[5] + 1) = v32;
  *(&v77[6] + 1) = v31;
  *(&v77[7] + 1) = v30;
  *(&v77[8] + 1) = v59[8];
  *(&v77[1] + 1) = v26;
  v58 = 1;
  *(a5 + 64) = 0;
  *(a5 + 72) = 1;
  *(a5 + 233) = *&v57[160];
  v76 = v25;
  LOBYTE(v77[0]) = v24;
  *(&v77[2] + 1) = v28;
  *(&v77[3] + 1) = v27;
  *(&v77[4] + 1) = v33;
  *(v77 + 1) = v29;
  sub_199AAD408(&v70, v55, &qword_1EAF74658, &qword_199E3DA70);
  sub_199AAD408(v74, v55, &qword_1EAF74660, &qword_199E3DA78);
  sub_199A79A04(&v76, &qword_1EAF74660, &qword_199E3DA78);
  v55[0] = v35;
  v55[1] = v34;
  v55[2] = v47;
  v55[3] = v37;
  v55[4] = v36;
  v55[5] = 0;
  v56 = v38;
  return sub_199A79A04(v55, &qword_1EAF74658, &qword_199E3DA70);
}

uint64_t sub_199B10AD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_199DF8D5C();
  LOBYTE(v34) = 1;
  sub_199B10CE4(a1, a2, a3, a4, &v36);
  v29 = v40;
  v30 = v41;
  v31 = v42[0];
  v25 = v36;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v32[0] = v36;
  v32[1] = v37;
  v32[2] = v38;
  v32[3] = v39;
  v32[4] = v40;
  v32[5] = v41;
  v33 = v42[0];
  sub_199AAD408(&v25, v43, &qword_1EAF74668, &qword_199E3DA80);
  sub_199A79A04(v32, &qword_1EAF74668, &qword_199E3DA80);
  *&v24[55] = v28;
  *&v24[71] = v29;
  *&v24[87] = v30;
  v24[103] = v31;
  *&v24[7] = v25;
  *&v24[23] = v26;
  *&v24[39] = v27;
  v11 = *&v24[96];
  *&v35[97] = *&v24[96];
  v12 = v34;
  v34 = v10;
  v35[0] = v12;
  v13 = *&v24[16];
  *&v35[1] = *v24;
  *&v35[33] = *&v24[32];
  v14 = *v24;
  *&v35[17] = *&v24[16];
  v15 = *&v24[64];
  *&v35[81] = *&v24[80];
  v16 = *&v24[48];
  *&v35[65] = *&v24[64];
  v17 = *&v24[32];
  *&v35[49] = *&v24[48];
  v38 = *&v35[16];
  v39 = *&v35[32];
  v36 = v10;
  v37 = *v35;
  *&v42[9] = *&v35[89];
  v41 = *&v35[64];
  *v42 = *&v35[80];
  v40 = *&v35[48];
  v18 = *&v35[32];
  *(a5 + 32) = *&v35[16];
  *(a5 + 48) = v18;
  v19 = v37;
  *a5 = v36;
  *(a5 + 16) = v19;
  v20 = *&v42[16];
  *(a5 + 96) = *v42;
  *(a5 + 112) = v20;
  v21 = v41;
  *(a5 + 64) = v40;
  *(a5 + 80) = v21;
  v47 = v17;
  v23[128] = 1;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  v43[0] = v10;
  v43[1] = 0;
  v44 = v12;
  v46 = v13;
  v45 = v14;
  v51 = v11;
  v50 = *&v24[80];
  v49 = v15;
  v48 = v16;
  sub_199AAD408(&v34, v23, &qword_1EAF74670, &qword_199E3DA88);
  return sub_199A79A04(v43, &qword_1EAF74670, &qword_199E3DA88);
}

uint64_t sub_199B10CE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v57 = a4;
  v58 = a3;
  v63 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74640, &qword_199E3AC30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = v55 - v8;
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (a2)
  {
    v10 = a2;
  }

  v70 = v9;
  v71 = v10;
  v55[1] = sub_199A9C458();
  sub_199DF81AC();
  v11 = sub_199DF93CC();
  v13 = v12;
  v15 = v14;
  sub_199DF929C();
  v16 = sub_199DF939C();
  v18 = v17;
  v20 = v19;

  sub_199ACE3E8(v11, v13, v15 & 1);

  LODWORD(v70) = sub_199DF8F8C();
  v21 = sub_199DF934C();
  v61 = v22;
  v62 = v21;
  v60 = v23;
  v56 = v24;
  sub_199ACE3E8(v16, v18, v20 & 1);

  v25 = v58;
  if (!v57)
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v57)
  {
    v26 = v57;
  }

  v70 = v25;
  v71 = v26;
  sub_199DF81AC();
  v27 = sub_199DF93CC();
  v29 = v28;
  v31 = v30;
  v32 = sub_199DF922C();
  v33 = v59;
  (*(*(v32 - 8) + 56))(v59, 1, 1, v32);
  sub_199DF928C();
  sub_199A79A04(v33, &unk_1EAF74640, &qword_199E3AC30);
  sub_199DF925C();
  sub_199DF92BC();

  v34 = sub_199DF939C();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_199ACE3E8(v27, v29, v31 & 1);

  KeyPath = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v43 = v38 & 1;
  v82 = v38 & 1;
  v80 = 0;
  v44 = v56 & 1;
  v64[72] = v56 & 1;
  *&v65 = v34;
  *(&v65 + 1) = v36;
  LOBYTE(v66) = v38 & 1;
  *(&v66 + 1) = *v81;
  DWORD1(v66) = *&v81[3];
  *(&v66 + 1) = v40;
  *&v67 = KeyPath;
  *(&v67 + 1) = 0x3FD3333333333333;
  *&v68 = v42;
  *(&v68 + 1) = 3;
  v69 = 0;
  v46 = v62;
  v45 = v63;
  v48 = v60;
  v47 = v61;
  *v63 = v62;
  v45[1] = v48;
  *(v45 + 16) = v44;
  v45[3] = v47;
  v49 = v65;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  *(v45 + 96) = 0;
  *(v45 + 4) = v51;
  *(v45 + 5) = v52;
  *(v45 + 2) = v49;
  *(v45 + 3) = v50;
  v70 = v34;
  v71 = v36;
  v72 = v43;
  *&v73[3] = *&v81[3];
  *v73 = *v81;
  v74 = v40;
  v75 = KeyPath;
  v76 = 0x3FD3333333333333;
  v77 = v42;
  v78 = 3;
  v79 = 0;
  v53 = v46;
  sub_199ACE3F8(v46, v48, v44);
  sub_199DF81AC();
  sub_199AAD408(&v65, v64, &qword_1EAF74678, &qword_199E3DAF0);
  sub_199A79A04(&v70, &qword_1EAF74678, &qword_199E3DAF0);
  sub_199ACE3E8(v53, v48, v44);
}

void *sub_199B110D0@<X0>(void *a1@<X8>)
{
  sub_199B027F8();
  result = sub_199DF8C9C();
  *a1 = v3;
  return result;
}

uint64_t sub_199B11120(uint64_t *a1)
{
  sub_199B027F8();

  return sub_199DF8CAC();
}

uint64_t sub_199B111A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_199AA7688;

  return sub_199B0C498();
}

unint64_t sub_199B11230()
{
  result = qword_1EAF74588;
  if (!qword_1EAF74588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74590, &qword_199E3D578);
    sub_199B112BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74588);
  }

  return result;
}

unint64_t sub_199B112BC()
{
  result = qword_1EAF74598;
  if (!qword_1EAF74598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74598);
  }

  return result;
}

uint64_t sub_199B11310(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_199AA0B90(&qword_1EAF745A0, &qword_1EAF74568, &qword_199E3D560, MEMORY[0x1EEE7BD28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B113B4()
{
  result = qword_1EAF745B0;
  if (!qword_1EAF745B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74560, &qword_199E3D520);
    sub_199B11470(&qword_1EAF745B8, type metadata accessor for ContactCardViewSwiftUI, &unk_199E3D904);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF745B0);
  }

  return result;
}

uint64_t sub_199B11470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199B114B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_199AA7314;

  return sub_199B0C2B0();
}

unint64_t sub_199B1154C()
{
  result = qword_1EAF745C0;
  if (!qword_1EAF745C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF745C0);
  }

  return result;
}

unint64_t sub_199B115A4()
{
  result = qword_1EAF745C8;
  if (!qword_1EAF745C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF745C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactPropertyType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactPropertyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_199B11834(uint64_t a1)
{
  sub_199B11C38(319, &qword_1EAF745F8, MEMORY[0x1E69968E0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_199DF73EC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_199B11978()
{
  result = qword_1EAF74600;
  if (!qword_1EAF74600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74608, &qword_199E3D860);
    sub_199B11310(&qword_1EAF74580, &qword_1EAF74578, &qword_199E3D570, sub_199B11230);
    sub_199B11310(&qword_1EAF745A8, &qword_1EAF74538, &qword_199E3D4C8, sub_199B113B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74600);
  }

  return result;
}

void sub_199B11A94(uint64_t a1)
{
  type metadata accessor for CardViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_199ACDA98();
    if (v2 <= 0x3F)
    {
      sub_199B11BE4(319, &qword_1EAF711D8, &qword_1EAF74540, &qword_199E3D4D0);
      if (v3 <= 0x3F)
      {
        sub_199B11BE4(319, &qword_1EAF74620, &qword_1EAF74548, &qword_199E3D4D8);
        if (v4 <= 0x3F)
        {
          sub_199B11BE4(319, &qword_1EAF74628, &unk_1EAF74550, &qword_199E3D4E0);
          if (v5 <= 0x3F)
          {
            sub_199B11C38(319, &qword_1EAF730F0, MEMORY[0x1EEE7B720], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_199B11BE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_199DF987C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_199B11C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_199B11C9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_199B11CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_199B11D94(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 361) = 0u;
  return result;
}

uint64_t sub_199B11DD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8AAC();
  *a1 = result;
  return result;
}

uint64_t sub_199B11E2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8BAC();
  *a1 = result;
  return result;
}

uint64_t sub_199B11E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_199DF8B7C();
  *a1 = result;
  return result;
}

uint64_t sub_199B11ED8@<X0>(uint64_t a1@<X8>)
{
  result = sub_199DF8C1C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_199B11F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardViewSwiftUI(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_199B11FFC(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for ContactCardViewSwiftUI(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_199B0FD40(a1, a2, v6);
}

unint64_t sub_199B1207C()
{
  result = qword_1EAF746F8;
  if (!qword_1EAF746F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746B0, &qword_199E3DB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746C0, &qword_199E3DB38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746C8, &qword_199E3DB40);
    sub_199AA0B90(&qword_1EAF746E8, &qword_1EAF746C8, &qword_199E3DB40, MEMORY[0x1EEE7B510]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_199B11470(&unk_1EAF74700, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF746F8);
  }

  return result;
}

unint64_t sub_199B121E8()
{
  result = qword_1EAF714C8;
  if (!qword_1EAF714C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714C8);
  }

  return result;
}

unint64_t sub_199B1223C()
{
  result = qword_1EAF74730;
  if (!qword_1EAF74730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74690, &qword_199E3DB08);
    sub_199B122C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74730);
  }

  return result;
}

unint64_t sub_199B122C8()
{
  result = qword_1EAF74738;
  if (!qword_1EAF74738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74698, &qword_199E3DB10);
    sub_199B12354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74738);
  }

  return result;
}

unint64_t sub_199B12354()
{
  result = qword_1EAF74740;
  if (!qword_1EAF74740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746A0, &qword_199E3DB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746B0, &qword_199E3DB28);
    sub_199B1207C();
    sub_199B121E8();
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF74748, &qword_1EAF74710, &unk_199E3DBB8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74740);
  }

  return result;
}

uint64_t sub_199B12480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74680, &qword_199E3DAF8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B124F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B12560(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardHeaderNameView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_199B125CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_199B12614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_199DF81AC();

    sub_199DF81AC();
  }
}

uint64_t sub_199B1265C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 72) = v0[3];
  *(v1 + 80) = v2;
  sub_199DF81AC();
}

void sub_199B126AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v2[4] = v1;
  v2[5] = v3;
  v2[6] = v4;
  v2[7] = v5;
  sub_199B12614(v1, v3, v4, v5);
  sub_199B125CC(v6, v7, v8, v9);
}

uint64_t sub_199B12714()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 112);
  v5 = *(v2 + 120);
  *(v2 + 112) = v1;
  *(v2 + 120) = v3;
  sub_199A9A57C(v1, v3);
  return sub_199A9A5FC(v4, v5);
}

uint64_t sub_199B127B0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 96);
  v5 = *(v2 + 104);
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  sub_199A9A57C(v1, v3);
  return sub_199A9A5FC(v4, v5);
}

unint64_t sub_199B127FC()
{
  result = qword_1EAF74798;
  if (!qword_1EAF74798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF747A0, &qword_199E3DCD0);
    sub_199B12880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74798);
  }

  return result;
}

unint64_t sub_199B12880()
{
  result = qword_1EAF747A8;
  if (!qword_1EAF747A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF747B0, &qword_199E3DCD8);
    sub_199B1290C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF747A8);
  }

  return result;
}

unint64_t sub_199B1290C()
{
  result = qword_1EAF747B8;
  if (!qword_1EAF747B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF747C0, &qword_199E3DCE0);
    sub_199B12998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF747B8);
  }

  return result;
}

unint64_t sub_199B12998()
{
  result = qword_1EAF747C8;
  if (!qword_1EAF747C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF747D0, &qword_199E3DCE8);
    sub_199AA0B90(&qword_1EAF747D8, &qword_1EAF747E0, &unk_199E3DCF0, MEMORY[0x1E6981870]);
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0, &unk_199E3CB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF747C8);
  }

  return result;
}

unint64_t sub_199B12A7C()
{
  result = qword_1EAF747E8;
  if (!qword_1EAF747E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF747F0, &unk_199E3DD00);
    sub_199AA0B90(&qword_1EAF74728, &qword_1EAF74720, &unk_199E3DBF8, MEMORY[0x1EEE7B968]);
    sub_199B1223C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF747E8);
  }

  return result;
}

unint64_t sub_199B12B84@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_199B15628(*a1);
  *a2 = result;
  return result;
}

id PosterEditFlowReporter.__deallocating_deinit()
{
  sub_199B1422C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterEditFlowReporter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B12CF8(char a1)
{
  v3 = sub_199DF804C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) = 3;
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_isEditingMeCard) = a1;
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v3, v5);
  v8 = sub_199DF802C();
  v9 = sub_199DFA30C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_199A75000, v8, v9, "Starting from SNaP", v10, 2u);
    MEMORY[0x19A8FA1A0](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_199B12EC4(char a1, char a2)
{
  v5 = sub_199DF804C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *(v2 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) = v10;
  *(v2 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_isEditingMeCard) = a1;
  (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v5, v7);
  v11 = sub_199DF802C();
  v12 = sub_199DFA30C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    if (a2)
    {
      v15 = 1953064037;
    }

    else
    {
      v15 = 0x79616C70736964;
    }

    if (a2)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_199A9BE90(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_199A75000, v11, v12, "Starting from Contacts %s mode", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
    MEMORY[0x19A8FA1A0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_199B13134(char a1)
{
  v3 = sub_199DF804C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) = 4;
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_isEditingMeCard) = a1;
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_editType) = 4;
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v3, v5);
  v8 = sub_199DF802C();
  v9 = sub_199DFA30C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_199A75000, v8, v9, "Starting from Onboarding", v10, 2u);
    MEMORY[0x19A8FA1A0](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_199B13564(void *a1, char a2, const char *a3)
{
  v7 = sub_199DF804C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *a1) = a2;
  (*(v8 + 16))(v11, v3 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v7, v9);
  v12 = sub_199DF802C();
  v13 = sub_199DFA30C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_199A75000, v12, v13, a3, v14, 2u);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_199B1371C()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 3;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) <= 2u)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 3;
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1, v3);
  v6 = sub_199DF802C();
  v7 = sub_199DFA30C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v6, v7, "didCancelFromCarousel()", v8, 2u);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_199B138E4()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 1;
  if (!*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint))
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 1;
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1, v3);
  v6 = sub_199DF802C();
  v7 = sub_199DFA30C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v6, v7, "didCancelFromOnboardingWelcome()", v8, 2u);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_199B13AA8()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 2;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) <= 1u)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 2;
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1, v3);
  v6 = sub_199DF802C();
  v7 = sub_199DFA30C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v6, v7, "didCancelFromOnboardingNew()", v8, 2u);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

void sub_199B13C70()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 4;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) <= 3u)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 4;
  }

  v6 = *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelAvatarCount);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelAvatarCount) = v8;
    if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_avatarResult) != 2)
    {
      *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_avatarResult) = 4;
    }

    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1, v3);
    v9 = sub_199DF802C();
    v10 = sub_199DFA30C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_199A75000, v9, v10, "didCancelFromAvatarEditor()", v11, 2u);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

void sub_199B13E70()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 5;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) <= 4u)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 5;
  }

  v6 = *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelPosterCount);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelPosterCount) = v8;
    if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_posterResult) != 2)
    {
      *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_posterResult) = 4;
    }

    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1, v3);
    v9 = sub_199DF802C();
    v10 = sub_199DFA30C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_199A75000, v9, v10, "didCancelFromPosterEditor()", v11, 2u);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

void sub_199B14070()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didDeleteCount);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didDeleteCount) = v8;
    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1, v3);
    v9 = sub_199DF802C();
    v10 = sub_199DFA30C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_199A75000, v9, v10, "didDelete()", v11, 2u);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

void sub_199B1422C()
{
  v1 = v0;
  v2 = sub_199DFA7FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = sub_199DF804C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didAlreadySubmit) & 1) == 0)
  {
    (*(v10 + 16))(v13, v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v9, v11);
    v14 = sub_199DF802C();
    v15 = sub_199DFA30C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25 = v2;
      v17 = v16;
      *v16 = 0;
      _os_log_impl(&dword_199A75000, v14, v15, "didFinish()", v16, 2u);
      v18 = v17;
      v2 = v25;
      MEMORY[0x19A8FA1A0](v18, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    (*(v3 + 16))(v8, v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_startTime, v2);
    sub_199DFA7DC();
    v19 = sub_199DFA7EC();
    v21 = v20;
    v22 = *(v3 + 8);
    v22(v5, v2);
    v22(v8, v2);
    v23 = v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_duration;
    *v23 = v19;
    *(v23 + 8) = v21;
    *(v23 + 16) = 0;
    sub_199B14568();
  }
}

uint64_t type metadata accessor for PosterEditFlowReporter(uint64_t a1)
{
  result = qword_1EAF71A30;
  if (!qword_1EAF71A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199B14568()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) != 5 && (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didAlreadySubmit) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didAlreadySubmit) = 1;
    v5 = sub_199B147F4();
    v6 = objc_opt_self();
    v7 = sub_199DF9F5C();
    [v6 sendDictionary:v5 forEvent:v7 andLog:1];

    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1);
    v8 = v5;
    v9 = sub_199DF802C();
    v10 = sub_199DFA30C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v11 = 136315138;
      v12 = [v8 debugDescription];
      v13 = sub_199DF9F8C();
      v15 = v14;

      v16 = sub_199A9BE90(v13, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_199A75000, v9, v10, "Submitted: %s", v11, 0xCu);
      v17 = v18;
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
  }
}

id sub_199B147F4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  sub_199DF81AC();
  v2 = sub_199DF9F5C();

  v3 = sub_199DF9F5C();
  [v1 setValue:v2 forKey:v3];

  v4 = sub_199DFA11C();
  v5 = sub_199DF9F5C();
  [v1 setValue:v4 forKey:v5];

  v6 = sub_199DFA28C();
  v7 = sub_199DF9F5C();
  [v1 setValue:v6 forKey:v7];

  v8 = sub_199DFA28C();
  v9 = sub_199DF9F5C();
  [v1 setValue:v8 forKey:v9];

  v10 = sub_199DFA28C();
  v11 = sub_199DF9F5C();
  [v1 setValue:v10 forKey:v11];

  v12 = sub_199DFA28C();
  v13 = sub_199DF9F5C();
  [v1 setValue:v12 forKey:v13];

  v14 = sub_199DFA28C();
  v15 = sub_199DF9F5C();
  [v1 setValue:v14 forKey:v15];

  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) != 5)
  {
    v16 = sub_199DFA28C();
    v17 = sub_199DF9F5C();
    [v1 setValue:v16 forKey:v17];
  }

  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_avatarResult) != 5)
  {
    v18 = sub_199DFA28C();
    v19 = sub_199DF9F5C();
    [v1 setValue:v18 forKey:v19];
  }

  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_posterResult) != 5)
  {
    v20 = sub_199DFA28C();
    v21 = sub_199DF9F5C();
    [v1 setValue:v20 forKey:v21];
  }

  if ((*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_duration + 16) & 1) == 0)
  {
    sub_199DFAAFC();
    v22 = sub_199DFA22C();
    v23 = sub_199DF9F5C();
    [v1 setValue:v22 forKey:v23];
  }

  return v1;
}

id PosterEditFlowReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosterEditFlowReporter.init()()
{
  sub_199DF803C();
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_isEditingMeCard] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint] = 5;
  v1 = &v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_processName];
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processName];

  v4 = sub_199DF9F8C();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_editType] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_avatarResult] = 5;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_posterResult] = 5;
  *&v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didDeleteCount] = 0;
  *&v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelAvatarCount] = 0;
  *&v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelPosterCount] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation] = 0;
  sub_199DFA7CC();
  v7 = &v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_duration];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didAlreadySubmit] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PosterEditFlowReporter(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_199B14E20(uint64_t a1)
{
  result = sub_199DF804C();
  if (v2 <= 0x3F)
  {
    result = sub_199DFA7FC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvatarPosterConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AvatarPosterConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_199B154CC()
{
  result = qword_1EAF74800;
  if (!qword_1EAF74800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74800);
  }

  return result;
}

unint64_t sub_199B15524()
{
  result = qword_1EAF74808;
  if (!qword_1EAF74808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74808);
  }

  return result;
}

unint64_t sub_199B1557C()
{
  result = qword_1EAF74810;
  if (!qword_1EAF74810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74810);
  }

  return result;
}

unint64_t sub_199B155D4()
{
  result = qword_1EAF74818;
  if (!qword_1EAF74818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74818);
  }

  return result;
}

unint64_t sub_199B15628(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_199B15658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_199B156A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_199B15738(uint64_t a1)
{
  sub_199ACDA98();
  if (v1 <= 0x3F)
  {
    sub_199B15AD0(319, &qword_1EAF730F0, MEMORY[0x1EEE7B730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_199B158B8(319);
      if (v3 <= 0x3F)
      {
        sub_199B15A6C(319, &qword_1EAF74838, &qword_1EAF74840, &unk_199E3E0D0, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_199DF9D7C();
          if (v5 <= 0x3F)
          {
            sub_199DF9D1C();
            if (v6 <= 0x3F)
            {
              sub_199A7A02C(319, &qword_1EAF74848, 0x1E696AAB0);
              if (v7 <= 0x3F)
              {
                type metadata accessor for DuplicateContactsListView(319);
                if (v8 <= 0x3F)
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

void sub_199B158B8(uint64_t a1)
{
  if (!qword_1EAF74830)
  {
    sub_199A7A02C(255, &qword_1EAF72E88, 0x1E695D628);
    v1 = sub_199DF859C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF74830);
    }
  }
}

void sub_199B15968(uint64_t a1)
{
  sub_199B15A6C(319, &qword_1EAF76090, &qword_1EAF740B0, qword_199E3A9B0, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_199B15AD0(319, &qword_1EAF74868, MEMORY[0x1E695C0D0], MEMORY[0x1EEE7B7A8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DuplicateContactsListView(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CNUIDuplicatesContactStoreFacade(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199B15A6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_199B15AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_199B15B50@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for DuplicateContactsDetailView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v53 = sub_199DF9D4C();
  v52 = sub_199DF9D2C();
  v7 = [*&a1[*(v4 + 56)] string];
  v56 = sub_199DF9F8C();
  v55 = v8;

  v64 = *&a1[*(v4 + 40)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74890, &qword_199E3E1E0);
  sub_199DF984C();
  v54 = v59;
  sub_199B1C0D4(a1, v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v51 = swift_allocObject();
  sub_199B1C13C(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v9, type metadata accessor for DuplicateContactsDetailView);
  LOBYTE(v59) = 0;
  sub_199DF983C();
  v47 = v64;
  v48 = *(&v64 + 1);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74898, &qword_199E3E1E8);
  v44[0] = *(v46 - 8);
  v10 = v44[0];
  v44[1] = *(v44[0] + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = v44 - v45;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748A0, &qword_199E3E1F0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748A8, &qword_199E3E1F8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v44 - v17;
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748B0, &qword_199E3E200);
  sub_199AA0B90(&qword_1EAF748B8, &qword_1EAF748B0, &qword_199E3E200, MEMORY[0x1E6981F48]);
  sub_199DF931C();
  sub_199AA0B90(&qword_1EAF748C0, &qword_1EAF748A8, &qword_199E3E1F8, MEMORY[0x1EEE7C770]);
  sub_199DF95AC();
  (*(v16 + 8))(v18, v15);
  v19 = sub_199DF8F5C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8F4C();
  sub_199B1B324();
  v23 = v50;
  sub_199DF966C();
  (*(v20 + 8))(v22, v19);
  sub_199A79A04(v14, &qword_1EAF748A0, &qword_199E3E1F0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748D8, &qword_199E3E208);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26[*(v27 + 44)] = 0x4079000000000000;
  *&v26[*(v27 + 48)] = 0xC020000000000000;
  v28 = sub_199B17E34(a1, v26);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = v44 - v45;
  v31 = *(v10 + 16);
  v32 = v46;
  v33 = v31(v44 - v45, v23, v46, v29);
  MEMORY[0x1EEE9AC00](v33);
  sub_199A95E04(v26, v26);
  *&v59 = v53;
  *(&v59 + 1) = v52;
  *&v60 = v56;
  *(&v60 + 1) = v55;
  *&v61 = 0x4054000000000000;
  *(&v61 + 1) = v54;
  v45 = sub_199B1B2AC;
  *&v62 = sub_199B1B2AC;
  *(&v62 + 1) = v51;
  LOBYTE(v23) = v47;
  LOBYTE(v63) = v47;
  *(&v63 + 1) = *v58;
  DWORD1(v63) = *&v58[3];
  v34 = v48;
  *(&v63 + 1) = v48;
  v35 = v59;
  v36 = v60;
  v37 = v63;
  v38 = v49;
  v49[3] = v62;
  v38[4] = v37;
  v39 = v61;
  v38[1] = v36;
  v38[2] = v39;
  *v38 = v35;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748E0, &qword_199E3E210);
  (v31)(v38 + v40[12], v30, v32);
  v41 = v38 + v40[16];
  *v41 = 0;
  v41[8] = 1;
  sub_199A95E04(v26, v38 + v40[20]);
  sub_199B1B45C(&v59, &v64);
  sub_199A79A04(v26, &qword_1EAF748D8, &qword_199E3E208);
  v42 = *(v44[0] + 8);
  v42(v50, v32);
  sub_199A79A04(v26, &qword_1EAF748D8, &qword_199E3E208);
  v42(v30, v32);
  *&v64 = v53;
  *(&v64 + 1) = v52;
  v65 = v56;
  v66 = v55;
  v67 = 0x4054000000000000;
  v68 = v54;
  v69 = v45;
  v70 = v51;
  v71 = v23;
  *v72 = *v58;
  *&v72[3] = *&v58[3];
  v73 = v34;
  return sub_199B1B494(&v64);
}

uint64_t sub_199B16340(void *a1, uint64_t a2)
{
  sub_199B163B0(a1);
  type metadata accessor for DuplicateContactsDetailView(0);
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74890, &qword_199E3E1E0);
  return sub_199DF985C();
}

void sub_199B163B0(void *a1)
{
  v2 = v1;
  if (a1)
  {
    sub_199DF9DBC();
    v4 = type metadata accessor for DuplicateContactsDetailView(0);
    v5 = v2 + *(v4 + 28);
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = a1;
    v9 = sub_199AC392C(v6, v7);
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];

    v11 = [v8 imageData];
    if (v11)
    {
      v12 = v11;
      v13 = sub_199DF71FC();
      v15 = v14;

      v16 = sub_199DF71DC();
      sub_199A9EF34(v13, v15);
    }

    else
    {
      v16 = 0;
    }

    [v10 setImageData_];

    v18 = [v8 thumbnailImageData];
    if (v18)
    {
      v19 = v18;
      v20 = sub_199DF71FC();
      v22 = v21;

      v23 = sub_199DF71DC();
      sub_199A9EF34(v20, v22);
    }

    else
    {
      v23 = 0;
    }

    [v10 setThumbnailImageData_];

    [v8 cropRect];
    v24 = NSStringFromRect(v57);
    if (!v24)
    {
      sub_199DF9F8C();
      v24 = sub_199DF9F5C();
    }

    [v10 setCropRectString_];

    v25 = [v8 fullscreenImageData];
    if (v25)
    {
      v26 = v25;
      v27 = sub_199DF71FC();
      v29 = v28;

      v30 = sub_199DF71DC();
      sub_199A9EF34(v27, v29);
    }

    else
    {
      v30 = 0;
    }

    [v10 setFullscreenImageData_];

    v31 = [v8 imageType];
    if (!v31)
    {
      sub_199A7A02C(0, &qword_1EAF73568, 0x1E696AEC0);
      v31 = sub_199DFA50C();
    }

    [v10 setImageType_];

    v32 = [v8 imageHash];
    if (v32)
    {
      v33 = v32;
      v34 = sub_199DF71FC();
      v36 = v35;

      v37 = sub_199DF71DC();
      sub_199A9EF34(v34, v36);
    }

    else
    {
      v37 = 0;
    }

    [v10 setImageHash_];

    v38 = [v8 memojiMetadata];
    if (v38)
    {
      v39 = v38;
      v40 = sub_199DF71FC();
      v42 = v41;

      v43 = sub_199DF71DC();
      sub_199A9EF34(v40, v42);
    }

    else
    {
      v43 = 0;
    }

    [v10 setMemojiMetadata_];

    sub_199DF9DCC();
    v44 = sub_199AC392C(v6, v7);
    v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];

    v46 = [v8 wallpaper];
    if (v46)
    {
      v47 = v46;
      v48 = [v46 posterArchiveData];

      v49 = sub_199DF71FC();
      v51 = v50;

      v52 = sub_199DF71DC();
      sub_199A9EF34(v49, v51);
    }

    else
    {
      v52 = 0;
    }

    [v45 setPosterData_];

    v53 = *(v2 + *(v4 + 44));
    v54 = v10;
    sub_199B328B8(v10, v53);

    v55 = v45;
    sub_199B32920(v45, v53);
  }

  else
  {
    v17 = type metadata accessor for DuplicateContactsDetailView(0);
    sub_199B328B8(0, *(v1 + *(v17 + 44)));
  }
}

uint64_t sub_199B168A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74920, &qword_199E3E258);
  v45 = *(v43 - 8);
  v41 = v45[8];
  MEMORY[0x1EEE9AC00](v43);
  v42 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v38 - v42;
  v47 = a1;
  sub_199DF9EEC();
  v9 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v48 = v9;
  v49 = v11;
  sub_199A9C458();
  v48 = sub_199DF93CC();
  v49 = v12;
  v50 = v13 & 1;
  v51 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74928, &qword_199E3E260);
  sub_199B1B72C(&qword_1EAF74930, &qword_1EAF74928, &qword_199E3E260, sub_199B1B5D0);
  v15 = v8;
  v39 = v8;
  sub_199DF9A0C();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74968, &qword_199E3E280);
  v38 = *(v40 - 8);
  v16 = v38;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v46 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74970, &qword_199E3E288);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  *v20 = sub_199DF8CFC();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74978, &qword_199E3E290);
  sub_199B17528(a1, &v20[*(v21 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74980, &qword_199E3E298);
  sub_199AA0B90(&qword_1EAF74988, &qword_1EAF74970, &qword_199E3E288, MEMORY[0x1E69817F8]);
  sub_199B1B67C();
  v22 = sub_199DF9A0C();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v42;
  v25 = v45[2];
  v26 = v15;
  v27 = v43;
  v28 = v25(&v38 - v42, v26, v43, v23);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v16 + 16);
  v32 = v40;
  v31(v30, v30, v40, v29);
  v33 = v44;
  (v25)(v44, v24, v27);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749B0, &qword_199E3E2A8);
  (v31)(&v33[*(v34 + 48)], v30, v32);
  v35 = *(v38 + 8);
  v35(v30, v32);
  v36 = v45[1];
  v36(v39, v27);
  v35(v30, v32);
  return (v36)(v24, v27);
}

uint64_t sub_199B16DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = type metadata accessor for DuplicateContactsDetailView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v14 = sub_199DF9D2C();
  swift_getKeyPath();
  sub_199B1C0D4(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_199B1C13C(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for DuplicateContactsDetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A28, &qword_199E3E3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74950, &qword_199E3E270);
  sub_199AA0B90(&qword_1EAF74A30, &qword_1EAF74A28, &qword_199E3E3A0, MEMORY[0x1E69E6338]);
  sub_199B1BDC0();
  sub_199AA0B90(&qword_1EAF74948, &qword_1EAF74950, &qword_199E3E270, MEMORY[0x1EEE7B810]);
  v9 = v13;
  sub_199DF99EC();
  v10 = a1 + *(v4 + 60);
  v14 = *(v10 + *(type metadata accessor for DuplicateContactsListView(0) + 60));

  v11 = sub_199DF995C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74928, &qword_199E3E260);
  *(v9 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_199B17044(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = [*a1 identifier];
  v4 = sub_199DF9F8C();
  v6 = v5;

  type metadata accessor for DuplicateContactsDetailView(0);
  v7 = sub_199DF9D4C();
  v8 = [v7 identifier];

  v9 = sub_199DF9F8C();
  v11 = v10;

  if (v4 == v9 && v6 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_199DFA99C();
  }

  sub_199B4C0B4(v2, 0, v13 & 1);
  v14 = sub_199DF917C();
  sub_199DF91AC();
  sub_199DF91AC();
  v15 = sub_199DF91AC();
  if (v15 != v14)
  {
    v15 = sub_199DF91AC();
  }

  MEMORY[0x1EEE9AC00](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A00, &qword_199E3E2E8);
  sub_199B1B7DC();
  sub_199B1BAC8();
  return sub_199DF878C();
}

uint64_t sub_199B17224()
{
  type metadata accessor for DuplicateContactsDetailView(0);
  v0 = sub_199DF9D4C();
  type metadata accessor for DuplicateContactsDetailViewData();
  inited = swift_initStackObject();
  *(inited + 16) = v0;
  *(inited + 24) = 0;
  v2 = sub_199B30720();
  swift_setDeallocating();

  sub_199B172CC(v2);
}

uint64_t sub_199B172CC(uint64_t a1)
{
  v3 = type metadata accessor for DuplicateContactsDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_199AB2F2C(*(a1 + 16), 0);
  if (sub_199B1BC74(v12, (v7 + 4), v6, 0, v6) != v6)
  {
    __break(1u);
LABEL_4:
    v7 = MEMORY[0x1E69E7CC0];
  }

  v12[0] = v7;
  swift_getKeyPath();
  sub_199B1C0D4(v1, &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_199B1C13C(&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DuplicateContactsDetailView);
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A18, &qword_199E3E380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749A0, &qword_199E3E2A0);
  sub_199AA0B90(&qword_1EAF74A20, &qword_1EAF74A18, &qword_199E3E380, MEMORY[0x1E69E6338]);
  sub_199B1B72C(&qword_1EAF74998, &qword_1EAF749A0, &qword_199E3E2A0, sub_199B1B7DC);
  return sub_199DF99EC();
}

uint64_t sub_199B17528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for DuplicateContactsDetailView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_199DF9F4C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v12 = sub_199AA8A84(v11, MEMORY[0x1E69E7CC0]);
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  *&v54 = v12;
  *(&v54 + 1) = v14;
  sub_199A9C458();
  v15 = sub_199DF93CC();
  v50 = v16;
  v51 = v15;
  v47 = v17;
  v52 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749B8, &qword_199E3E2B0);
  v48 = *(v19 - 8);
  v49 = v19;
  v45[1] = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v53 = v45 - v20;
  v21 = sub_199DF9D4C();
  v54 = *(a1 + *(v4 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74890, &qword_199E3E1E0);
  sub_199DF984C();
  v22 = v61;
  v23 = [v21 copyWithDistinctIdentifier];
  if (v22)
  {
    v24 = v22;
    [v23 mutableCopy];
    sub_199DFA66C();
    swift_unknownObjectRelease();
    sub_199A7A02C(0, &qword_1EAF710A0, 0x1E695CF18);
    swift_dynamicCast();
    v25 = v61;
    [v24 updateImageForContact_];

    v21 = v24;
    v23 = v25;
  }

  v26 = sub_199DF917C();
  v27 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v26)
  {
    v27 = sub_199DF91AC();
  }

  sub_199B1C0D4(a1, v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v29 = swift_allocObject();
  sub_199B1C13C(v7, v29 + v28, type metadata accessor for DuplicateContactsDetailView);
  sub_199B1C0D4(a1, v7, type metadata accessor for DuplicateContactsDetailView);
  v30 = swift_allocObject();
  sub_199B1C13C(v7, v30 + v28, type metadata accessor for DuplicateContactsDetailView);
  *&v54 = v23;
  BYTE8(v54) = v27;
  v55 = sub_199B1B830;
  v56 = v29;
  v57 = 0u;
  v58 = 0u;
  v59 = sub_199B1B838;
  v60 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749C0, &qword_199E3E2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749C8, &unk_199E3E2C0);
  sub_199B1B8A4();
  sub_199B1BA44(&qword_1EAF749E0, &qword_1EAF749C8, &unk_199E3E2C0, sub_199B1BA14);
  v31 = v53;
  v32 = sub_199DF878C();
  v45[0] = v45;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v48;
  v37 = v49;
  v38 = *(v48 + 16);
  v38(v35, v31, v49, v33);
  v40 = v50;
  v39 = v51;
  v41 = v46;
  *v46 = v51;
  v41[1] = v40;
  LOBYTE(v28) = v47 & 1;
  *(v41 + 16) = v47 & 1;
  v41[3] = v52;
  v41[4] = 0;
  *(v41 + 40) = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A08, &qword_199E3E2F0);
  (v38)(v41 + *(v42 + 64), v35, v37);
  sub_199ACE3F8(v39, v40, v28);
  v43 = *(v36 + 8);
  sub_199DF81AC();
  v43(v53, v37);
  v43(v35, v37);
  sub_199ACE3E8(v39, v40, v28);
}

uint64_t sub_199B17B18(uint64_t a1, char a2)
{
  type metadata accessor for DuplicateContactsDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  return sub_199DF985C();
}

uint64_t sub_199B17B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v22[0] = v6;
  v22[1] = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749D0, &unk_199E42250) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749D8, &unk_199E3E2D0) + 28);
  v17 = sub_199DF937C();
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  *v15 = swift_getKeyPath();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v14;
  v18 = sub_199DF91EC();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749C0, &qword_199E3E2B8);
  v21 = (a1 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

void sub_199B17D8C(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF984C();
  if ((v4 & 1) == 0)
  {
    v3 = *(a1 + *(v2 + 44));
    sub_199B328B8(0, v3);
    sub_199B32920(0, v3);
  }
}

uint64_t sub_199B17E34@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v78 = sub_199DF9F4C();
  v81 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v4 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DuplicateContactsDetailView(0);
  v6 = *(v5 - 8);
  v73 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748E8, &qword_199E3E218);
  v75 = *(v8 - 8);
  v76 = v8;
  v74 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = v63 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748F0, &unk_199E3E220);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v63 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748F8, &unk_199E3F730);
  v11 = *(v79 - 1);
  MEMORY[0x1EEE9AC00](v79);
  v13 = v63 - v12;
  sub_199B1C0D4(a1, v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v66 = v7;
  v63[1] = v14;
  v16 = swift_allocObject();
  v64 = v15;
  v67 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B1C13C(v67, v16 + v15, type metadata accessor for DuplicateContactsDetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73270, &unk_199E3E230);
  sub_199AD5690();
  sub_199DF989C();
  v17 = sub_199DF904C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  v69 = MEMORY[0x1EEE7D278];
  v21 = sub_199AA0B90(&qword_1EAF74900, &qword_1EAF748F8, &unk_199E3F730, MEMORY[0x1EEE7D278]);
  v22 = sub_199AD576C();
  v23 = v79;
  sub_199DF944C();
  (*(v18 + 8))(v20, v17);
  (*(v11 + 8))(v13, v23);
  sub_199DF9EEC();
  v24 = sub_199AA8A84(v4, MEMORY[0x1E69E7CC0]);
  v26 = v25;
  v68 = v25;
  v27 = v81[1];
  v65 = v4;
  ++v81;
  v63[0] = v27;
  v27(v4, v78);
  v89 = v24;
  v90 = v26;
  v28 = *(a1 + 1);
  v87 = *a1;
  v88 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF986C();
  v82 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8, &qword_199E3A3E0);
  v83 = v79;
  v84 = v17;
  v85 = v21;
  v86 = v22;
  swift_getOpaqueTypeConformance2();
  sub_199A9C458();
  sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8, &qword_199E3A3E0, v69);
  v29 = v71;
  v30 = v70;
  sub_199DF952C();

  v31 = a1;

  (*(v72 + 8))(v30, v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74908, &qword_199E3E240);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = v63 - v34;
  LOBYTE(v30) = sub_199DF9D6C();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74910, &qword_199E3E248);
  v37 = v36;
  v38 = *(v36 - 8);
  if (v30)
  {
    v39 = v35;
    v40 = (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
  }

  else
  {
    v79 = v63;
    MEMORY[0x1EEE9AC00](v36);
    v42 = v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = v65;
    sub_199DF9EEC();
    v44 = sub_199AA8A84(v43, MEMORY[0x1E69E7CC0]);
    v46 = v45;
    (v63[0])(v43, v78);
    v83 = v44;
    v84 = v46;
    v47 = v67;
    sub_199B1C0D4(v31, v67, type metadata accessor for DuplicateContactsDetailView);
    v48 = v64;
    v49 = swift_allocObject();
    sub_199B1C13C(v47, v49 + v48, type metadata accessor for DuplicateContactsDetailView);
    sub_199DF98BC();
    sub_199B1B524(v42, v35);
    v39 = v35;
    v40 = (*(v38 + 56))(v35, 0, 1, v37);
  }

  v81 = v63;
  v50 = MEMORY[0x1EEE9AC00](v40);
  v52 = v63 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v75;
  v53 = v76;
  v55 = *(v75 + 16);
  v56 = v80;
  v57 = v55(v52, v80, v76, v50);
  v79 = v63;
  MEMORY[0x1EEE9AC00](v57);
  v58 = v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v39, v58, &qword_1EAF74908, &qword_199E3E240);
  v59 = v77;
  (v55)(v77, v52, v53);
  v60 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74918, &qword_199E3E250) + 48)];
  sub_199AAD408(v58, v60, &qword_1EAF74908, &qword_199E3E240);
  sub_199A79A04(v39, &qword_1EAF74908, &qword_199E3E240);
  v61 = *(v54 + 8);
  v61(v56, v53);
  sub_199A79A04(v58, &qword_1EAF74908, &qword_199E3E240);
  return (v61)(v52, v53);
}

__n128 sub_199B188A4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v19 = v6;
  *(&v19 + 1) = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  sub_199DF9B5C();
  sub_199DF897C();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v14;
  v15 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v15;
  *(a1 + 128) = v25;
  v16 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v16;
  result = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_199B18A54(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_199DF9F4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v9 = sub_199AA8A84(v8, MEMORY[0x1E69E7CC0]);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v15[0] = v9;
  v15[1] = v11;
  sub_199B1C0D4(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_199B1C13C(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for DuplicateContactsDetailView);
  sub_199A9C458();
  return sub_199DF98BC();
}

uint64_t sub_199B18C6C(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsDetailView(0);
  sub_199B32594(*(a1 + *(v2 + 44)));
  v3 = sub_199DF867C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_199AC3274(v6);
  sub_199DF866C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_199B18D68(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsDetailView(0);
  v3 = *(a1 + *(v2 + 44));
  v10 = a1 + *(v2 + 52);
  v11 = v3;
  sub_199B37FB8(1, v3, sub_199B1B594);
  v4 = sub_199DF867C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199AC3274(v7);
  sub_199DF866C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t *sub_199B18E88@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v5 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(a2 + 16))
  {
    v6 = (a2 + 32 * v5);
    v8 = v6[4];
    v7 = v6[5];
    v10 = v6[6];
    v9 = v6[7];
    type metadata accessor for DuplicateContactsDetailView(0);
    type metadata accessor for DuplicateContactsListView(0);
    sub_199DF81AC();
    sub_199DF81AC();

    result = sub_199DF995C();
    *a4 = v8;
    a4[1] = v7;
    a4[2] = 0;
    a4[3] = v10;
    a4[4] = v9;
    a4[5] = 0x4010000000000000;
    a4[6] = result;
    return result;
  }

  __break(1u);
  return result;
}

id sub_199B18F54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>, char a4@<W2>)
{
  v7 = a1 + *(type metadata accessor for DuplicateContactsDetailView(0) + 52);
  v8 = type metadata accessor for DuplicateContactsListView(0);
  __swift_project_boxed_opaque_existential_0((v7 + *(v8 + 40)), *(v7 + *(v8 + 40) + 24));
  v9 = sub_199B1D70C(a2, a4);
  result = sub_199B18FEC(a2);
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = v9;
  a3[3] = result;
  a3[4] = v11;
  a3[5] = 0x4010000000000000;
  return result;
}

id sub_199B18FEC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DuplicateContactsDetailView(0) + 52);
  v4 = [*(v3 + *(type metadata accessor for DuplicateContactsListView(0) + 44)) accountForContact_];
  if (!v4)
  {
    v9 = [objc_opt_self() currentDevice];
    v7 = [v9 model];

    v8 = sub_199DF9F8C();
    goto LABEL_5;
  }

  v5 = v4;
  result = [v4 accountDescription];
  if (result)
  {
    v7 = result;
    v8 = sub_199DF9F8C();

LABEL_5:
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_199B190E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74870, &qword_199E3E1C8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  sub_199B15B50(v2, (v17 - v8));
  v10 = &v2[*(v4 + 64)];
  v12 = *v10;
  v11 = *(v10 + 1);
  v17[0] = v12;
  v17[1] = v11;
  sub_199AA0B90(&qword_1EAF74878, &qword_1EAF74870, &qword_199E3E1C8, &unk_199E3B058);
  sub_199A9C458();
  sub_199DF950C();
  sub_199A79A04(v9, &qword_1EAF74870, &qword_199E3E1C8);
  sub_199B1C0D4(v2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_199B1C13C(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for DuplicateContactsDetailView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74888, &unk_199E3E1D0);
  v16 = (a2 + *(result + 36));
  *v16 = 0;
  v16[1] = 0;
  v16[2] = sub_199B1AF84;
  v16[3] = v14;
  return result;
}

double sub_199B19310@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AD0, &qword_199E3E4A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  *v6 = sub_199DF8D4C();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AD8, &unk_199E3E4A8);
  sub_199B194AC(v2, &v6[*(v7 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v9 = sub_199DF919C();
  *(inited + 32) = v9;
  v10 = sub_199DF91BC();
  *(inited + 33) = v10;
  v11 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v9)
  {
    v11 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v10)
  {
    v11 = sub_199DF91AC();
  }

  sub_199A961F4(v6, a1);
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AE0, &qword_199E3E4B8) + 36);
  *v12 = v11;
  result = 0.0;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 1;
  return result;
}

void sub_199B194AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v69 = a2;
  v3 = *(a1 + 32);
  v4 = *a1;
  v71 = *(a1 + 40);
  v5 = v71;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AE8, &qword_199E3E4C0);
  v76 = *(v77 - 8);
  v72 = v76[8];
  MEMORY[0x1EEE9AC00](v77);
  v73 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = &v61 - v73;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AF0, &qword_199E3E4C8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  v10 = swift_allocObject();
  v11 = *(v2 + 48);
  v10[3] = *(v2 + 32);
  v10[4] = v11;
  v10[5] = *(v2 + 64);
  v12 = *(v2 + 16);
  v10[1] = *v2;
  v10[2] = v12;
  v74 = v5;
  v70 = v4;
  sub_199B1B45C(v2, &v84);
  sub_199DF989C();
  v13 = sub_199DF92FC();
  KeyPath = swift_getKeyPath();
  v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AF8, &qword_199E3E4D0) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  LOBYTE(v13) = sub_199DF917C();
  sub_199DF84FC();
  v16 = &v9[*(v7 + 36)];
  *v16 = v13;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v78 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF986C();
  v21 = swift_allocObject();
  v22 = *(v2 + 48);
  v21[3] = *(v2 + 32);
  v21[4] = v22;
  v21[5] = *(v2 + 64);
  v23 = *(v2 + 16);
  v21[1] = *v2;
  v21[2] = v23;
  sub_199B1B45C(v2, &v84);
  sub_199B1C908();
  sub_199AFEDE0();
  v24 = v75;
  sub_199DF95DC();

  sub_199A79A04(v9, &qword_1EAF74AF0, &qword_199E3E4C8);
  v25 = *(v2 + 24);
  v84 = *(v2 + 16);
  v85 = v25;
  sub_199A9C458();
  sub_199DF81AC();
  v26 = sub_199DF93CC();
  v64 = v26;
  v68 = v27;
  LOBYTE(KeyPath) = v28;
  v67 = v29;
  v66 = swift_getKeyPath();
  v65 = sub_199DF91DC();
  v62 = swift_getKeyPath();
  LOBYTE(v2) = KeyPath & 1;
  LOBYTE(v84) = KeyPath & 1;
  v30 = sub_199DF917C();
  v31 = v30;
  v63 = v30;
  v32 = sub_199DF84FC();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = MEMORY[0x1EEE9AC00](v32);
  v42 = &v61 - v73;
  v43 = v76[2];
  v44 = v77;
  v43(&v61 - v73, v24, v77, v41);
  v45 = v69;
  *v69 = v3;
  v46 = v70;
  v47 = v71;
  v45[1] = v70;
  v45[2] = v47;
  v48 = v45;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74B10, &qword_199E3E508);
  (v43)(v48 + *(v49 + 48), v42, v44);
  v50 = (v48 + *(v49 + 64));
  *&v78 = v26;
  v51 = v68;
  *(&v78 + 1) = v68;
  LOBYTE(v79) = v2;
  v52 = v67;
  *(&v79 + 1) = v67;
  v53 = v66;
  *&v80 = v66;
  BYTE8(v80) = 1;
  v54 = v62;
  *&v81 = v62;
  v55 = v65;
  *(&v81 + 1) = v65;
  LOBYTE(v82) = v31;
  *(&v82 + 1) = v34;
  *&v83[0] = v36;
  *(&v83[0] + 1) = v38;
  *&v83[1] = v40;
  BYTE8(v83[1]) = 0;
  v56 = v79;
  *v50 = v78;
  v50[1] = v56;
  v57 = v81;
  v50[2] = v80;
  v50[3] = v57;
  v58 = v83[0];
  v50[4] = v82;
  v50[5] = v58;
  *(v50 + 89) = *(v83 + 9);
  v73 = v46;
  v74 = v74;
  sub_199AAD408(&v78, &v84, &qword_1EAF74B18, &qword_199E3E510);
  v59 = v76[1];
  v60 = v77;
  v59(v75, v77);
  v84 = v64;
  v85 = v51;
  v86 = v2;
  v87 = v52;
  v88 = v53;
  v89 = 1;
  v90 = v54;
  v91 = v55;
  v92 = v63;
  v93 = v34;
  v94 = v36;
  v95 = v38;
  v96 = v40;
  v97 = 0;
  sub_199A79A04(&v84, &qword_1EAF74B18, &qword_199E3E510);
  v59(v42, v60);
}

uint64_t sub_199B19B54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_199A9C458();
  result = sub_199DF93CC();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_199B19C80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = swift_allocObject();
  v7 = *(a1 + 48);
  v6[3] = *(a1 + 32);
  v6[4] = v7;
  v6[5] = *(a1 + 64);
  v8 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v8;
  v9 = swift_allocObject();
  v10 = *(a1 + 48);
  v9[3] = *(a1 + 32);
  v9[4] = v10;
  v9[5] = *(a1 + 64);
  v11 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v11;
  *a2 = v5;
  a2[1] = v4;
  a2[2] = sub_199B1CA6C;
  a2[3] = v6;
  a2[4] = sub_199B1CAE8;
  a2[5] = v9;
  sub_199B1B45C(a1, v14);
  sub_199B1B45C(a1, v14);
  v12 = v5;
  return sub_199DF81AC();
}

uint64_t sub_199B19D6C(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2[1] = *(a1 + 64);
  v4 = *(&v3 + 1);
  sub_199AAD408(&v4, v2, &qword_1EAF74B20, &qword_199E3E518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF984C();
  v2[0] = v3;
  sub_199DF985C();
  return sub_199A79A04(&v3, &qword_1EAF74750, &qword_199E39620);
}

uint64_t sub_199B19E30(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))(a1);
  v5 = *(a2 + 64);
  v4[1] = *(a2 + 64);
  v6 = *(&v5 + 1);
  sub_199AAD408(&v6, v4, &qword_1EAF74B20, &qword_199E3E518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF984C();
  v4[0] = v5;
  sub_199DF985C();
  return sub_199A79A04(&v5, &qword_1EAF74750, &qword_199E39620);
}

uint64_t sub_199B19F48@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v34 = *(v2 - 8);
  v33 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_199DF9F4C();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A40, &qword_199E3E3A8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A48, &qword_199E3E3B0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A50, &qword_199E3E3B8);
  sub_199B1BE3C();
  sub_199DF931C();
  sub_199AA0B90(&qword_1EAF74A78, &qword_1EAF74A48, &qword_199E3E3B0, MEMORY[0x1EEE7C770]);
  sub_199DF95AC();
  (*(v10 + 8))(v12, v9);
  sub_199DF9EEC();
  v13 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v15 = v14;
  (*(v4 + 8))(v6, v28);
  v36 = v13;
  v37 = v15;
  v16 = sub_199DF8CBC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, *MEMORY[0x1E697C430], v16, v18);
  sub_199B1BFF0();
  sub_199A9C458();
  v21 = v31;
  sub_199DF953C();
  (*(v17 + 8))(v20, v16);

  sub_199A79A04(v8, &qword_1EAF74A40, &qword_199E3E3A8);
  v22 = v32;
  sub_199B1C0D4(v29, v32, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  v23 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v24 = swift_allocObject();
  sub_199B1C13C(v22, v24 + v23, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A88, &unk_199E3E3D0);
  v26 = (v21 + *(result + 36));
  *v26 = sub_199B1C1A4;
  v26[1] = v24;
  v26[2] = 0;
  v26[3] = 0;
  return result;
}

uint64_t sub_199B1A3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v25 = *(v5 + 20);
  v28 = v5;
  v6 = *(a1 + *(v5 + 28));
  v26 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  v7 = objc_opt_self();
  v8 = [objc_opt_self() sharedDefaults];
  v9 = [v8 sortOrder];

  v10 = [v7 comparatorForNameSortOrder_];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v16 = a1;
  (*(v15 + 16))(&v24 - v14, a1 + v25, v12, v13);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C0]);

  v17 = v26;

  v30 = sub_199DFA09C();
  sub_199B3BE98(&v30, v6, v17, sub_199B1C1D0, v11);

  sub_199B1C0D4(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = swift_allocObject();
  sub_199B1C13C(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AA8, &qword_199E3E3E0);
  type metadata accessor for DuplicateListCell(0);
  sub_199AA0B90(&qword_1EAF74AB0, &qword_1EAF74AA8, &qword_199E3E3E0, MEMORY[0x1E69E6338]);
  sub_199B1BFA8(&qword_1EAF74A70, type metadata accessor for DuplicateListCell, &unk_199E3F8B8);
  sub_199B1BFA8(&qword_1EAF74AB8, MEMORY[0x1E695C0D0], MEMORY[0x1E695C0D8]);
  v20 = v29;
  sub_199DF99FC();
  v21 = v16 + *(v28 + 24);
  v30 = *(v21 + *(type metadata accessor for DuplicateContactsListView(0) + 60));

  v22 = sub_199DF995C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A50, &qword_199E3E3B8);
  *(v20 + *(result + 36)) = v22;
  return result;
}

id sub_199B1A8A0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v18 = *a1;
  v10 = *(v9 + 32);
  v11 = type metadata accessor for DuplicateListCell(0);
  sub_199B1C0D4(a2 + v10, a3 + v11[5], type metadata accessor for DuplicateContactsListView);
  sub_199B1C0D4(a2, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_199B1C13C(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  v14 = v18;
  *a3 = v18;
  *(a3 + v11[6]) = 1;
  *(a3 + v11[7]) = 1;
  v15 = (a3 + v11[8]);
  *v15 = sub_199B1C598;
  v15[1] = v13;

  return v14;
}

uint64_t sub_199B1AA40()
{
  type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
  sub_199DFA29C();
  sub_199DFA2BC();
  result = sub_199DFA2AC();
  if (!result)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0, qword_199E3A9B0);
    MEMORY[0x1EEE9AC00](v1);
    v3 = &v6 - v2;
    sub_199AC3500((&v6 - v2));
    v4 = sub_199DF892C();
    v5 = MEMORY[0x1EEE9AC00](v4 - 8);
    MEMORY[0x19A8F7740](v1, v5);
    sub_199DF891C();
    sub_199DF997C();
    return sub_199A79A04(v3, &qword_1EAF740B0, qword_199E3A9B0);
  }

  return result;
}

uint64_t sub_199B1AC04()
{
  type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v0 = sub_199B1AC60();
  sub_199AD60FC(v0);
}

char *sub_199B1AC60()
{
  v1 = *(type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A90, &qword_199E3F6D0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v24 - v8, v0 + v1, v6, v7);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C0]);
  sub_199DFA08C();
  v10 = *(v3 + 44);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850, &unk_199E3E0E0, MEMORY[0x1EEE7B7C8]);
  sub_199DFA2BC();
  v11 = MEMORY[0x1E69E7CC0];
  while (*&v5[v10] != v26[0])
  {
    v13 = sub_199DFA2DC();
    v15 = *v14;
    v13(v26, 0);
    sub_199DFA2CC();
    v16 = [v15 primaryID];
    if (v16)
    {
      v17 = v16;
      v18 = sub_199DF9F8C();
      v25 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_199AB26E4(0, *(v11 + 2) + 1, 1, v11);
      }

      v21 = *(v11 + 2);
      v20 = *(v11 + 3);
      if (v21 >= v20 >> 1)
      {
        v11 = sub_199AB26E4((v20 > 1), v21 + 1, 1, v11);
      }

      *(v11 + 2) = v21 + 1;
      v22 = &v11[16 * v21];
      v23 = v25;
      *(v22 + 4) = v18;
      *(v22 + 5) = v23;
    }

    else
    {
    }

    sub_199DFA2BC();
  }

  sub_199A79A04(v5, &qword_1EAF74A90, &qword_199E3F6D0);
  return v11;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for DuplicateContactsDetailView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_199DF867C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  sub_199AC6288(*(v4 + v1[7]), *(v4 + v1[7] + 8));

  v7 = v4 + v1[13];

  v8 = type metadata accessor for DuplicateContactsListView(0);
  v9 = v8[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_199DF867C();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
  }

  sub_199AC6288(*(v7 + v8[7]), *(v7 + v8[7] + 8));
  v11 = v8[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  v13 = *(*(v12 - 8) + 8);
  v13(v7 + v11, v12);
  v13(v7 + v8[9], v12);
  __swift_destroy_boxed_opaque_existential_0((v7 + v8[10]));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v15, v2 | 7);
}

uint64_t sub_199B1B2AC(void *a1)
{
  v3 = *(type metadata accessor for DuplicateContactsDetailView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199B16340(a1, v4);
}

unint64_t sub_199B1B324()
{
  result = qword_1EAF748C8;
  if (!qword_1EAF748C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF748A0, &qword_199E3E1F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF748A8, &qword_199E3E1F8);
    sub_199AA0B90(&qword_1EAF748C0, &qword_1EAF748A8, &qword_199E3E1F8, MEMORY[0x1EEE7C770]);
    swift_getOpaqueTypeConformance2();
    sub_199B1B408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF748C8);
  }

  return result;
}

unint64_t sub_199B1B408()
{
  result = qword_1EAF748D0;
  if (!qword_1EAF748D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF748D0);
  }

  return result;
}

uint64_t sub_199B1B524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74910, &qword_199E3E248);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_199B1B5D0()
{
  result = qword_1EAF74938;
  if (!qword_1EAF74938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74940, &qword_199E3E268);
    sub_199AA0B90(&qword_1EAF74948, &qword_1EAF74950, &qword_199E3E270, MEMORY[0x1EEE7B810]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74938);
  }

  return result;
}

unint64_t sub_199B1B67C()
{
  result = qword_1EAF74990;
  if (!qword_1EAF74990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74980, &qword_199E3E298);
    sub_199B1B72C(&qword_1EAF74998, &qword_1EAF749A0, &qword_199E3E2A0, sub_199B1B7DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74990);
  }

  return result;
}

uint64_t sub_199B1B72C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_199AA0B90(&qword_1EAF74958, &qword_1EAF74960, &qword_199E3E278, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B1B7DC()
{
  result = qword_1EAF749A8;
  if (!qword_1EAF749A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF749A8);
  }

  return result;
}

unint64_t sub_199B1B8A4()
{
  result = qword_1EAF712A0;
  if (!qword_1EAF712A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF749C0, &qword_199E3E2B8);
    sub_199B1B95C();
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300, &qword_199E3A470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712A0);
  }

  return result;
}

unint64_t sub_199B1B95C()
{
  result = qword_1EAF71300;
  if (!qword_1EAF71300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF749D0, &unk_199E42250);
    sub_199AA0B90(&qword_1EAF71200, &qword_1EAF749D8, &unk_199E3E2D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71300);
  }

  return result;
}

uint64_t sub_199B1BA44(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_199B1BAC8()
{
  result = qword_1EAF749F8;
  if (!qword_1EAF749F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A00, &qword_199E3E2E8);
    sub_199B1BB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF749F8);
  }

  return result;
}

unint64_t sub_199B1BB54()
{
  result = qword_1EAF75770;
  if (!qword_1EAF75770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75770);
  }

  return result;
}

uint64_t sub_199B1BBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A10, &unk_199E3E358);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_199AAD408(a1, &v5 - v3, &qword_1EAF74A10, &unk_199E3E358);
  return sub_199DF8BEC();
}

uint64_t *sub_199B1BC74(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_199B1BD10@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DuplicateContactsDetailView(0);
  v5 = *(v2 + 16);

  return sub_199B18E88(a1, v5, a2);
}

unint64_t sub_199B1BDC0()
{
  result = qword_1EAF74A38;
  if (!qword_1EAF74A38)
  {
    sub_199A7A02C(255, &qword_1EAF710A0, 0x1E695CF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74A38);
  }

  return result;
}

unint64_t sub_199B1BE3C()
{
  result = qword_1EAF74A58;
  if (!qword_1EAF74A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A50, &qword_199E3E3B8);
    sub_199B1BEF4();
    sub_199AA0B90(&qword_1EAF74958, &qword_1EAF74960, &qword_199E3E278, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74A58);
  }

  return result;
}

unint64_t sub_199B1BEF4()
{
  result = qword_1EAF74A60;
  if (!qword_1EAF74A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A68, &unk_199E3E3C0);
    sub_199B1BFA8(&qword_1EAF74A70, type metadata accessor for DuplicateListCell, &unk_199E3F8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74A60);
  }

  return result;
}

uint64_t sub_199B1BFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_199B1BFF0()
{
  result = qword_1EAF74A80;
  if (!qword_1EAF74A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A40, &qword_199E3E3A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A48, &qword_199E3E3B0);
    sub_199AA0B90(&qword_1EAF74A78, &qword_1EAF74A48, &qword_199E3E3B0, MEMORY[0x1EEE7C770]);
    swift_getOpaqueTypeConformance2();
    sub_199B1B408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74A80);
  }

  return result;
}

uint64_t sub_199B1C0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B1C13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_51Tm()
{
  v1 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318, &qword_199E371D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0, qword_199E3A9B0) + 32);
    v7 = sub_199DF892C();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  v8 = *(v1 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850, &unk_199E3E0E0);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = v4 + *(v1 + 24);

  v11 = type metadata accessor for DuplicateContactsListView(0);
  v12 = v11[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090, &qword_199E39CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_199DF867C();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
  }

  sub_199AC6288(*(v10 + v11[7]), *(v10 + v11[7] + 8));
  v14 = v11[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880, &unk_199E3F5F0);
  v16 = *(*(v15 - 8) + 8);
  v16(v10 + v14, v15);
  v16(v10 + v11[9], v15);
  __swift_destroy_boxed_opaque_existential_0((v10 + v11[10]));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v18, v2 | 7);
}

uint64_t sub_199B1C500(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_199B1C5C4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_199B1C65C(uint64_t *a1, int a2)
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

uint64_t sub_199B1C6A4(uint64_t result, int a2, int a3)
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

unint64_t sub_199B1C708()
{
  result = qword_1EAF74AC0;
  if (!qword_1EAF74AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74888, &unk_199E3E1D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74870, &qword_199E3E1C8);
    sub_199AA0B90(&qword_1EAF74878, &qword_1EAF74870, &qword_199E3E1C8, &unk_199E3B058);
    sub_199A9C458();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74AC0);
  }

  return result;
}

unint64_t sub_199B1C80C()
{
  result = qword_1EAF74AC8;
  if (!qword_1EAF74AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A88, &unk_199E3E3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A40, &qword_199E3E3A8);
    sub_199B1BFF0();
    sub_199A9C458();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74AC8);
  }

  return result;
}

unint64_t sub_199B1C908()
{
  result = qword_1EAF74B00;
  if (!qword_1EAF74B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74AF0, &qword_199E3E4C8);
    sub_199B1C994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74B00);
  }

  return result;
}

unint64_t sub_199B1C994()
{
  result = qword_1EAF74B08;
  if (!qword_1EAF74B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74AF8, &qword_199E3E4D0);
    sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8, &qword_199E3A3E0, MEMORY[0x1EEE7D278]);
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300, &qword_199E3A470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74B08);
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

unint64_t sub_199B1CAF0()
{
  result = qword_1EAF74B28;
  if (!qword_1EAF74B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74AE0, &qword_199E3E4B8);
    sub_199AA0B90(&unk_1EAF74B30, &qword_1EAF74AD0, &qword_199E3E4A0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74B28);
  }

  return result;
}

uint64_t sub_199B1CBAC()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF87028);
  __swift_project_value_buffer(v0, qword_1EAF87028);
  return sub_199DF803C();
}

void sub_199B1CC30()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = [v0 preferredFontForTextStyle_];

  qword_1EAF87040 = v2;
}

void sub_199B1CC9C()
{
  if (qword_1EAF71EE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAF87040;
  v1 = [v0 fontDescriptor];

  v2 = [v1 fontDescriptorWithSymbolicTraits_];
  if (v2)
  {
    v3 = qword_1EAF87040;
    [v3 pointSize];
    v5 = v4;

    v6 = [objc_opt_self() fontWithDescriptor:v2 size:v5];
    qword_1EAF87048 = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_199B1CDA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74B60, &qword_199E3E5B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v1 = *MEMORY[0x1E69DB648];
  type metadata accessor for Key(0);
  sub_199AE2FC4();
  v2 = v1;
  sub_199DFA6CC();

  if (qword_1EAF71EE0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAF87040;
  v4 = sub_199AE301C();
  *(inited + 96) = v4;
  *(inited + 72) = v3;
  sub_199DF9F8C();
  v5 = v3;
  sub_199DFA6CC();
  if (qword_1EAF71EE8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAF87048;
  *(inited + 168) = v4;
  *(inited + 144) = v6;
  v7 = v6;
  v8 = sub_199B4B130(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75650, &qword_199E3E5C0);
  result = swift_arrayDestroy();
  qword_1EAF87050 = v8;
  return result;
}

id sub_199B1CF4C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate) contactStore];

  return v1;
}

id DuplicatesUIHelper.__allocating_init(delegate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DuplicatesUIHelper.init(delegate:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DuplicatesUIHelper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_199B1D09C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74B48, &qword_199E3E520);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23[-1] - v8;
  sub_199DF9DAC();
  sub_199DF9D8C();
  v10 = sub_199DF9D9C();

  if (v10 && (v11 = [v10 viewContext], v10, v11))
  {
    v23[3] = type metadata accessor for DuplicatesUIHelper();
    v23[4] = &off_1F0CE0F60;
    v23[0] = v2;
    v12 = v2;
    sub_199B32BFC(v23, a1 & 1, 0, 0, v9);
    KeyPath = swift_getKeyPath();
    v14 = &v9[*(v4 + 36)];
    *v14 = KeyPath;
    v14[1] = v11;
    sub_199B1DDB8(v9, v6);
    v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74B50, &qword_199E3E558));
    v16 = sub_199DF8DFC();
    sub_199B1DE28(v9);
    return v16;
  }

  else
  {
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v18 = sub_199DF804C();
    __swift_project_value_buffer(v18, qword_1EAF87028);
    v19 = sub_199DF802C();
    v20 = sub_199DFA31C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_199A75000, v19, v20, "Could not load duplicates store.", v21, 2u);
      MEMORY[0x19A8FA1A0](v21, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_199B1D2E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8B5C();
  *a1 = result;
  return result;
}

id sub_199B1D38C(void *a1)
{
  v2 = v1;
  v4 = sub_199DF70EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(sub_199DF9D7C());
  v9 = a1;
  v10 = sub_199DF9D3C();
  sub_199DF9D5C();
  v11 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  sub_199DF70BC();
  v12 = sub_199DF9F5C();

  [v11 setNamePrefix_];

  sub_199DF708C();
  v13 = sub_199DF9F5C();

  [v11 setGivenName_];

  sub_199DF70AC();
  v14 = sub_199DF9F5C();

  [v11 setMiddleName_];

  sub_199DF709C();
  v15 = sub_199DF9F5C();

  [v11 setFamilyName_];

  sub_199DF70CC();
  v16 = sub_199DF9F5C();

  [v11 setNameSuffix_];

  sub_199DF70DC();
  v17 = sub_199DF9F5C();

  [v11 setNickname_];

  result = [*(v2 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate) contactFormatter];
  if (result)
  {
    v19 = result;
    if (qword_1EAF71EF0 != -1)
    {
      swift_once();
    }

    v20 = sub_199DF9E8C();
    v21 = [v19 attributedStringFromContact:v11 defaultAttributes:v20];

    if (!v21)
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
    }

    (*(v5 + 8))(v7, v4);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_199B1D70C(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = [a1 identifier];
  v5 = sub_199DF9F8C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_12:
    result = [*(v2 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate) contactFormatter];
    if (result)
    {
      v24 = result;
      if (qword_1EAF71EF0 != -1)
      {
        swift_once();
      }

      v25 = sub_199DF9E8C();
      v23 = [v24 attributedStringFromContact:a1 defaultAttributes:v25];

      if (v23)
      {
        return v23;
      }

      v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

      return [v26 init];
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v9 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v10 = OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate;
  v11 = v2;
  v12 = [*(v2 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate) contactStore];
  v13 = [a1 identifier];
  v14 = sub_199DF9F8C();
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_199E37DF0;
  *(v17 + 32) = v9;
  swift_unknownObjectRetain();
  v18 = sub_199B1DA84(v14, v16, v17);

  if (!v18)
  {
    v18 = a1;
  }

  v19 = [v18 copyWithDistinctIdentifier];

  result = [*(v11 + v10) contactFormatter];
  if (!result)
  {
    goto LABEL_22;
  }

  v21 = result;
  if (qword_1EAF71EF0 != -1)
  {
    swift_once();
  }

  v22 = sub_199DF9E8C();
  v23 = [v21 attributedStringFromContact:v19 defaultAttributes:v22];

  if (v23)
  {
    swift_unknownObjectRelease();

    return v23;
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  swift_unknownObjectRelease();

  return v27;
}

id sub_199B1DA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = sub_199DF9F5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v5 = sub_199DFA0BC();
  v11[0] = 0;
  v6 = [v3 unifiedContactWithIdentifier:v4 keysToFetch:v5 error:v11];

  v7 = v11[0];
  if (!v6)
  {
    v8 = v7;
    v9 = sub_199DF717C();

    swift_willThrow();
    return 0;
  }

  return v6;
}

id DuplicatesUIHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DuplicatesUIHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicatesUIHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199B1DC64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *v6;
  if (a3)
  {
    v9 = sub_199DF867C();
    v10 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    type metadata accessor for DuplicateContactsListView(0);
    sub_199AC3274(v12);
    sub_199DF866C();
    (*(v10 + 8))(v12, v9);
  }

  v13 = *(v8 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate);
  swift_unknownObjectRetain();
  v14 = sub_199DFA0BC();
  [v13 *a6];
  swift_unknownObjectRelease();
}

uint64_t sub_199B1DDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74B48, &qword_199E3E520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B1DE28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74B48, &qword_199E3E520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_199B1E34C()
{
  [v0 frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
  [v9 frame];
  v33.origin.x = v10;
  v33.origin.y = v11;
  v33.size.width = v12;
  v33.size.height = v13;
  v30.origin.x = v2;
  v30.origin.y = v4;
  v30.size.width = v6;
  v30.size.height = v8;
  if (CGRectEqualToRect(v30, v33))
  {
    v14 = v0;
    oslog = sub_199DF802C();
    v15 = sub_199DFA33C();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218752;
      [v9 frame];
      *(v16 + 4) = v17;
      *(v16 + 12) = 2048;
      [v9 frame];
      *(v16 + 14) = v18;
      *(v16 + 22) = 2048;
      [v9 frame];
      *(v16 + 24) = CGRectGetWidth(v31);
      *(v16 + 32) = 2048;
      [v9 frame];
      *(v16 + 34) = CGRectGetHeight(v32);
      _os_log_impl(&dword_199A75000, oslog, v15, "#ContactsButton ContactsButtonSlotView frame didSet called with the same slot view as before (%f,%f %f,%f), ignoring", v16, 0x2Au);
      v19 = v16;
LABEL_12:
      MEMORY[0x19A8FA1A0](v19, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  [v0 frame];
  [v9 setFrame_];
  v20 = v0;
  v21 = sub_199DF802C();
  v22 = sub_199DFA33C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v9;
    *v24 = v9;
    v25 = v9;
    _os_log_impl(&dword_199A75000, v21, v22, "#ContactsButton ContactsButtonSlotView frame didSet is called %@", v23, 0xCu);
    sub_199A79A04(v24, &unk_1EAF73A90, &unk_199E3A0B0);
    MEMORY[0x19A8FA1A0](v24, -1, -1);
    MEMORY[0x19A8FA1A0](v23, -1, -1);
  }

  if (!*&v20[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker])
  {
    oslog = sub_199DF802C();
    v26 = sub_199DFA33C();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_199A75000, oslog, v26, "#ContactsButton ContactsButtonSlotView slotMaker is nil", v27, 2u);
      v19 = v27;
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  sub_199B209CC();
}

id sub_199B1E694()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactsButtonSlotView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B1E780(uint64_t a1)
{
  result = sub_199DF804C();
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

uint64_t sub_199B1E828()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF87058);
  __swift_project_value_buffer(v0, qword_1EAF87058);
  return sub_199DF803C();
}

id sub_199B1E8A8()
{
  v1 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___connection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___connection);
  }

  else
  {
    v4 = sub_199B1E90C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_199B1E90C(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = sub_199DF9F5C();
  v4 = [v2 initWithServiceName_];

  v5 = [objc_opt_self() interfaceWithProtocol_];
  [v4 setRemoteObjectInterface_];

  v13 = sub_199B23C58;
  v14 = a1;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_199AB45A0;
  v12 = &block_descriptor_92;
  v6 = _Block_copy(&v9);

  [v4 setInterruptionHandler_];
  _Block_release(v6);
  v13 = sub_199B23C7C;
  v14 = a1;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_199AB45A0;
  v12 = &block_descriptor_95;
  v7 = _Block_copy(&v9);

  [v4 setInvalidationHandler_];
  _Block_release(v7);
  [v4 resume];
  return v4;
}

void sub_199B1EB0C(uint64_t a1, const char *a2)
{
  oslog = sub_199DF802C();
  v3 = sub_199DFA2FC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_199A75000, oslog, v3, a2, v4, 2u);
    MEMORY[0x19A8FA1A0](v4, -1, -1);
  }
}

void sub_199B1EBC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_199B1EC28()
{
  v1 = sub_199B1E8A8();
  aBlock[4] = sub_199B23C50;
  v11 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199B1EBC0;
  aBlock[3] = &block_descriptor_89;
  v2 = _Block_copy(aBlock);

  v3 = [v1 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v2);

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199A9DA04(aBlock, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D48, &unk_199E3E800);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return v8;
  }

  else
  {
    v5 = sub_199DF802C();
    v6 = sub_199DFA31C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_199A75000, v5, v6, "#ContactsButton Failed to get service interface", v7, 2u);
      MEMORY[0x19A8FA1A0](v7, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return 0;
  }
}

void sub_199B1EDEC(void *a1)
{
  v2 = a1;
  oslog = sub_199DF802C();
  v3 = sub_199DFA31C();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD0, &qword_199E3C220);
    v7 = sub_199DF9FBC();
    v9 = sub_199A9BE90(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_199A75000, oslog, v3, "#ContactsButton Failed to get service proxy: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x19A8FA1A0](v5, -1, -1);
    MEMORY[0x19A8FA1A0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_199B1EF54(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_3:
      v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:

  v10 = sub_199DF802C();
  v11 = sub_199DFA33C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
    *(v12 + 4) = v14;
    *v13 = v14;
    v15 = v14;
    _os_log_impl(&dword_199A75000, v10, v11, "#ContactsButton slotMaker sizeThatFits is called %@", v12, 0xCu);
    sub_199A79A04(v13, &unk_1EAF73A90, &unk_199E3A0B0);
    MEMORY[0x19A8FA1A0](v13, -1, -1);
    MEMORY[0x19A8FA1A0](v12, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  v17 = sub_199B1EC28();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v5;
    *(v19 + 24) = v16;
    v23[4] = sub_199B23C48;
    v23[5] = v19;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_199B23CE4;
    v23[3] = &block_descriptor_86;
    v20 = _Block_copy(v23);

    [v18 sizeThatFitsWithProposalWidth:v8 proposalHeight:v9 with:v20];
    _Block_release(v20);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_beginAccess();
  v21 = *(v16 + 16);

  return v21;
}

void sub_199B1F220(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2)
  {
    v7 = a1;
    v8 = a2;
    sub_199DF73FC();
    v10 = v9;
    [v8 floatValue];
    v12 = v11;

    swift_beginAccess();
    *(a4 + 16) = v10;
    *(a4 + 24) = v12;
    *(a4 + 32) = 0;
  }

  else
  {

    oslog = sub_199DF802C();
    v13 = sub_199DFA33C();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = *(a3 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
      *(v14 + 4) = v16;
      *v15 = v16;
      v17 = v16;
      _os_log_impl(&dword_199A75000, oslog, v13, "#ContactsButton sizeThatFits is nil %@", v14, 0xCu);
      sub_199A79A04(v15, &unk_1EAF73A90, &unk_199E3A0B0);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
      MEMORY[0x19A8FA1A0](v14, -1, -1);
    }
  }
}

void sub_199B1F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v13 = sub_199DF802C();
    v18 = sub_199DFA31C();
    if (os_log_type_enabled(v13, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_199A75000, v13, v18, "#ContactsButton view deallocated?", v19, 2u);
      MEMORY[0x19A8FA1A0](v19, -1, -1);
    }

    goto LABEL_16;
  }

  v13 = Strong;
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {
    v14 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_didFaultAlreadyForUndesiredRendering;
    if ((*(a6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_didFaultAlreadyForUndesiredRendering) & 1) == 0)
    {
      v15 = sub_199DF802C();
      v16 = sub_199DFA32C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_199A75000, v15, v16, "ContactAccessButton should not be rendered when your app has Full Access or Denied authorization", v17, 2u);
        MEMORY[0x19A8FA1A0](v17, -1, -1);
      }

      *(a6 + v14) = 1;
      return;
    }

LABEL_16:

    return;
  }

  v20 = objc_opt_self();
  v21 = *(a6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits);
  aBlock[0] = 0;
  v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:aBlock];
  v23 = aBlock[0];
  if (!v22)
  {
    v47 = v23;
    sub_199DF717C();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v53 = sub_199DF71FC();
  v54 = v24;

  v25 = sub_199DF802C();
  v26 = sub_199DFA2FC();

  v52 = a2;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    v29 = a1;
    v30 = *(a6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
    v31 = *(a6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr + 8);
    sub_199DF81AC();
    v32 = sub_199A9BE90(v30, v31, aBlock);

    *(v27 + 4) = v32;
    a1 = v29;
    _os_log_impl(&dword_199A75000, v25, v26, "#ContactsButton will query '%s'...", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x19A8FA1A0](v28, -1, -1);
    MEMORY[0x19A8FA1A0](v27, -1, -1);
  }

  v33 = sub_199B1EC28();
  if (!v33)
  {
    sub_199A9EF34(v53, v54);
    goto LABEL_16;
  }

  v51 = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  v34 = v33;
  sub_199DF81AC();
  v50 = sub_199DF9F5C();

  [*(&v13->isa + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView) frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_199DF81AC();
  v49 = sub_199DFA23C();

  sub_199DF81AC();
  v48 = sub_199DFA23C();

  v43 = sub_199DF71DC();
  v44 = sub_199DF9F5C();
  v45 = swift_allocObject();
  v45[2] = a6;
  v45[3] = a3;
  v45[4] = a4;
  aBlock[4] = sub_199B23BF4;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199B23CE4;
  aBlock[3] = &block_descriptor_61;
  v46 = _Block_copy(aBlock);

  [v34 getRemoteContentForStyle:v52 layerContext:v51 queryString:v50 currentFrame:v49 ignoredEmails:v48 ignoredPhones:v43 traitData:v36 sbExtension:v38 with:{v40, v42, v44, v46}];
  sub_199A9EF34(v53, v54);

  swift_unknownObjectRelease();
  _Block_release(v46);
}

void sub_199B1F97C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_199DF802C();
  v9 = sub_199DFA33C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_199A75000, v8, v9, "#ContactsButton handling response", v10, 2u);
    MEMORY[0x19A8FA1A0](v10, -1, -1);
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v45 = a4;
  v11 = 0x8000000199E47F60;
  v12 = a2;
  v13 = [v12 userInfo];
  v14 = sub_199DF9E9C();

  if (*(v14 + 16) && (v15 = sub_199AEF9E8(0xD000000000000026, 0x8000000199E47E70), (v16 & 1) != 0))
  {
    sub_199A9DA04(*(v14 + 56) + 32 * v15, &v48);

    if (swift_dynamicCast())
    {
      v17 = v46;
      v11 = v47;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v17 = 0xD00000000000002FLL;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CD0, &unk_199E3E7D8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_199E37D40;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_199DFA71C();
  MEMORY[0x19A8F7E00](0xD00000000000003ALL, 0x8000000199E47F90);
  MEMORY[0x19A8F7E00](v17, v11);

  v19 = v48;
  v20 = v49;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_199DFAA5C();

  if ([v12 code] != 8)
  {

    a4 = v45;
LABEL_15:
    if (a1)
    {
      v25 = a1;
      if (a4())
      {

        v26 = sub_199DF802C();
        v27 = sub_199DFA2FC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412290;
          v30 = *(a3 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
          *(v28 + 4) = v30;
          *v29 = v30;
          v31 = v30;
          _os_log_impl(&dword_199A75000, v26, v27, "#ContactsButton loaded content for slot %@", v28, 0xCu);
          sub_199A79A04(v29, &unk_1EAF73A90, &unk_199E3A0B0);
          MEMORY[0x19A8FA1A0](v29, -1, -1);
          MEMORY[0x19A8FA1A0](v28, -1, -1);
        }
      }

      else
      {
        v41 = sub_199DF802C();
        v42 = sub_199DFA31C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_199A75000, v41, v42, "#ContactsButton Failed to yield remote content", v43, 2u);
          MEMORY[0x19A8FA1A0](v43, -1, -1);
        }
      }
    }

    else
    {
      v32 = a2;
      v33 = sub_199DF802C();
      v34 = sub_199DFA31C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v48 = v36;
        *v35 = 136446210;
        v37 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74D38, qword_199E3E7E8);
        v38 = sub_199DF9FBC();
        v40 = sub_199A9BE90(v38, v39, &v48);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_199A75000, v33, v34, "#ContactsButton Failed to get remote content: %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x19A8FA1A0](v36, -1, -1);
        MEMORY[0x19A8FA1A0](v35, -1, -1);
      }
    }

    return;
  }

  v21 = [v12 domain];
  v22 = sub_199DF9F8C();
  v24 = v23;

  if (v22 == 0xD000000000000023 && 0x8000000199E47FD0 == v24)
  {

    return;
  }

  v44 = sub_199DFA99C();

  a4 = v45;
  if ((v44 & 1) == 0)
  {
    goto LABEL_15;
  }
}

void sub_199B1FEF4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_199B1FF80(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = a3;
  v6(a2, v9, sub_199B23BCC, v8);
}

void sub_199B20048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;

  v9 = a1;
  v10 = sub_199DF802C();
  v11 = sub_199DFA33C();

  if (os_log_type_enabled(v10, v11))
  {
    v49 = a5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315394;
    v15 = *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
    v14 = *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr + 8);
    sub_199DF81AC();
    v16 = sub_199A9BE90(v15, v14, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = *&v9[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8];
    if (!v17)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    *(v12 + 14) = sub_199A9BE90(*&v9[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath], v17, aBlock);
    _os_log_impl(&dword_199A75000, v10, v11, "#ContactsButton loading initial slot view for query '%s' at %s...", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8FA1A0](v13, -1, -1);
    MEMORY[0x19A8FA1A0](v12, -1, -1);

    a5 = v49;
  }

  else
  {
  }

  v18 = *&v9[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8];
  if (!v18)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = *&v9[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  sub_199DF9FCC();
  v20 = sandbox_extension_issue_file();

  if (v20)
  {
    v21 = (v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
    *v21 = a2;
    v21[1] = a3;
    sub_199DF81AC();

    *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredEmails) = a4;
    sub_199DF81AC();

    *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredPhones) = a5;
    sub_199DF81AC();

    v22 = *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits);
    *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits) = v9;
    v23 = v9;

    v24 = sub_199DFA03C();
    v26 = v25;
    v27 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView;
    v28 = *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
    if (!v28)
    {
      v29 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotView(0));

      v30 = [v29 initWithFrame_];
      v31 = *&v30[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
      v32 = v30;
      [v32 addSubview_];
      *&v32[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker] = v6;

      v33 = *(v6 + v27);
      *(v6 + v27) = v32;

      v28 = *(v6 + v27);
      if (!v28)
      {
        goto LABEL_18;
      }
    }

    v34 = *(v28 + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = v6;
    v36[4] = v24;
    v36[5] = v26;
    aBlock[4] = sub_199B23CE8;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B1FF80;
    aBlock[3] = &block_descriptor_77;
    v37 = _Block_copy(aBlock);

    v38 = v34;
    sub_199DF81AC();

    [v38 _setSlotAnyContentProvider_];
    _Block_release(v37);

    v39 = *(v6 + v27);
    if (v39)
    {
      v39;

      return;
    }

    goto LABEL_16;
  }

  v40 = v9;
  v41 = sub_199DF802C();
  v42 = sub_199DFA32C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_199A9BE90(v19, v18, aBlock);
    _os_log_impl(&dword_199A75000, v41, v42, "#ContactsButton unable to issue sandbox extension for '%s'...", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x19A8FA1A0](v44, -1, -1);
    MEMORY[0x19A8FA1A0](v43, -1, -1);
  }

  v45 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotView(0));

  v46 = [v45 initWithFrame_];
  v47 = *&v46[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
  v48 = v46;
  [v48 addSubview_];
  *&v48[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker] = v6;
}

void sub_199B205D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *&a1[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = *&a1[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  sub_199DF9FCC();
  v12 = sandbox_extension_issue_file();

  if (v12)
  {
    v13 = (v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
    *v13 = a2;
    v13[1] = a3;
    sub_199DF81AC();

    *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredEmails) = a4;
    sub_199DF81AC();

    *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredPhones) = a5;
    sub_199DF81AC();

    v14 = *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits);
    *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits) = a1;
    v15 = a1;

    v16 = sub_199DFA03C();
    v18 = v17;
    v19 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView;
    v20 = *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
    if (!v20)
    {
      v21 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotView(0));

      v22 = [v21 initWithFrame_];
      v23 = *&v22[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
      v24 = v22;
      [v24 addSubview_];
      *&v24[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker] = v5;

      v25 = *(v5 + v19);
      *(v5 + v19) = v24;

      v20 = *(v5 + v19);
      if (!v20)
      {
        goto LABEL_15;
      }
    }

    v26 = *(v20 + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v5;
    v28[4] = v16;
    v28[5] = v18;
    aBlock[4] = sub_199B23CE8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B1FF80;
    aBlock[3] = &block_descriptor_69;
    v29 = _Block_copy(aBlock);

    v30 = v26;
    sub_199DF81AC();

    [v30 _setSlotAnyContentProvider_];
    _Block_release(v29);

    if (*(v5 + v19))
    {

      return;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v31 = a1;
  osloga = sub_199DF802C();
  v32 = sub_199DFA32C();

  if (os_log_type_enabled(osloga, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_199A9BE90(v11, v6, aBlock);
    _os_log_impl(&dword_199A75000, osloga, v32, "#ContactsButton unable to issue sandbox extension for '%s'...", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x19A8FA1A0](v34, -1, -1);
    MEMORY[0x19A8FA1A0](v33, -1, -1);
  }

  else
  {
  }
}

void sub_199B209CC()
{
  v1 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits;
  if (!*(*(v0 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits) + OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8))
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v0;
  sub_199DF9FCC();
  v3 = sandbox_extension_issue_file();

  if (v3)
  {
    v4 = sub_199DF802C();
    v5 = sub_199DFA30C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_199A75000, v4, v5, "#ContactsButton ContactsButtonSlotView yieldContentView", v6, 2u);
      MEMORY[0x19A8FA1A0](v6, -1, -1);
    }

    v7 = *(v2 + v1);
    sub_199DF81AC();
    sub_199DF81AC();
    v8 = v7;
    sub_199DF81AC();

    v9 = sub_199DFA03C();
    v11 = v10;
    v12 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView;
    v13 = *(v2 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
    if (!v13)
    {
      v14 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotView(0));

      v15 = [v14 initWithFrame_];
      v16 = *&v15[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
      v17 = v15;
      [v17 addSubview_];
      *&v17[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker] = v2;

      v18 = *(v2 + v12);
      *(v2 + v12) = v17;

      v13 = *(v2 + v12);
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    v19 = *(v13 + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v2;
    v21[4] = v9;
    v21[5] = v11;
    aBlock[4] = sub_199B23BC0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B1FF80;
    aBlock[3] = &block_descriptor_52_0;
    v22 = _Block_copy(aBlock);

    v23 = v19;
    sub_199DF81AC();

    [v23 _setSlotAnyContentProvider_];
    _Block_release(v22);

    if (*(v2 + v12))
    {

      return;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  oslog = sub_199DF802C();
  v24 = sub_199DFA32C();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    v27 = (*(v2 + v1) + OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath);
    v28 = v27[1];
    if (!v28)
    {
LABEL_19:

      __break(1u);
      return;
    }

    v29 = v26;
    v30 = *v27;
    sub_199DF81AC();

    v31 = sub_199A9BE90(v30, v28, aBlock);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_199A75000, oslog, v24, "#ContactsButton unable to issue sandbox extension for '%s'...", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x19A8FA1A0](v29, -1, -1);
    MEMORY[0x19A8FA1A0](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_199B20E68()
{
  v1 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger;
  v2 = sub_199DF804C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_199A79A04(v0 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___proxy, &qword_1EAF73080, &qword_199E3E7D0);
  return v0;
}

uint64_t sub_199B20F4C()
{
  sub_199B20E68();

  return swift_deallocClassInstance();
}

uint64_t sub_199B20FCC(uint64_t a1)
{
  result = sub_199DF804C();
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

uint64_t sub_199B211BC(uint64_t a1)
{
  result = type metadata accessor for RepresentableSlotView(319);
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

void sub_199B212B8(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_199DF804C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  sub_199B23B64();
  sub_199B23B1C(&qword_1EAF74CC8, sub_199B23B64, MEMORY[0x1E69E81B8]);
  v14 = sub_199DFA23C();
  v43.receiver = v3;
  v43.super_class = ObjectType;
  v41 = a2;
  objc_msgSendSuper2(&v43, sel_touchesEnded_withEvent_, v14, a2);

  v15 = OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer;
  v16 = *(v7 + 16);
  v16(v13, *&v3[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer] + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v6);
  v17 = sub_199DF802C();
  v18 = sub_199DFA30C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_199A75000, v17, v18, "#ContactsButton touch event began", v19, 2u);
    MEMORY[0x19A8FA1A0](v19, -1, -1);
  }

  v20 = *(v7 + 8);
  v20(v13, v6);

  v21 = sub_199B1EC28();

  if (v21)
  {
    v22 = [v41 _authenticationMessage];
    if (v22)
    {
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v3;
      aBlock[4] = sub_199B23BB0;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_199B21F40;
      aBlock[3] = &block_descriptor_11;
      v25 = _Block_copy(aBlock);
      v26 = v23;
      v27 = v3;

      [v21 onPrimaryTouchUpEvent:v26 with:v25];
      _Block_release(v25);
      swift_unknownObjectRelease();

      return;
    }

    v34 = v39;
    v16(v39, *&v3[v15] + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v6);
    v35 = sub_199DF802C();
    v36 = sub_199DFA31C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_199A75000, v35, v36, "#ContactsButton event had no authentication message?", v37, 2u);
      MEMORY[0x19A8FA1A0](v37, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v33 = v34;
  }

  else
  {
    v28 = *&v3[v15] + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger;
    v29 = v40;
    v16(v40, v28, v6);
    v30 = sub_199DF802C();
    v31 = sub_199DFA2FC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_199A75000, v30, v31, "#ContactsButton no proxy, can't send the event :(", v32, 2u);
      MEMORY[0x19A8FA1A0](v32, -1, -1);
    }

    v33 = v29;
  }

  v20(v33, v6);
}

double sub_199B2176C(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v8 = sub_199DF804C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v68 - v20;
  if (!a3)
  {
    v75 = a2;
    v73 = OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer;
    v74 = a4;
    v34 = *(a4 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer) + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger;
    v70 = *(v9 + 16);
    v71 = v9 + 16;
    v70(v17, v34, v8, v19);
    v35 = sub_199DF802C();
    v36 = v8;
    v37 = sub_199DFA31C();
    v38 = os_log_type_enabled(v35, v37);
    v72 = a1;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v69 = v36;
      v40 = v39;
      v41 = swift_slowAlloc();
      v78 = v41;
      *v40 = 136315138;
      if (v75)
      {
        v42 = 0x646C756F6853;
      }

      else
      {
        v42 = 0x6E20646C756F6853;
      }

      if (v75)
      {
        v43 = 0xE600000000000000;
      }

      else
      {
        v43 = 0xEA0000000000746FLL;
      }

      v44 = v14;
      v45 = v11;
      v46 = v9;
      v47 = sub_199A9BE90(v42, v43, &v78);

      *(v40 + 4) = v47;
      v48 = v46;
      v11 = v45;
      v14 = v44;
      _os_log_impl(&dword_199A75000, v35, v37, "#ContactsButton response after touch -- %s show UI", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x19A8FA1A0](v41, -1, -1);
      MEMORY[0x19A8FA1A0](v40, -1, -1);

      v49 = *(v48 + 8);
      v36 = v69;
      v49(v17, v69);
    }

    else
    {

      v49 = *(v9 + 8);
      v49(v17, v36);
    }

    if (v75)
    {
      v54 = *(v74 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer__showLibraryUI + 8);
      v55 = *(v74 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer__showLibraryUI + 16);
      v78 = *(v74 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer__showLibraryUI);
      v79 = v54;
      v80 = v55;
      LOBYTE(v76) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70);
      sub_199DF997C();
    }

    else
    {
      v56 = *(v74 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_approvalCallback);
      if (v56)
      {
        v57 = *(v74 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_approvalCallback + 8);
        if (v72)
        {
          v58 = objc_opt_self();

          v59 = [v58 authorizationStatusForEntityType_];
          if ((v59 | 2) != 2)
          {
            v56(v72);
            sub_199A9A5FC(v56, v57);
            goto LABEL_33;
          }

          v60 = v59;
          (v70)(v11, *(v74 + v73) + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v36);
          v61 = sub_199DF802C();
          v62 = sub_199DFA31C();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 134217984;
            *(v63 + 4) = v60;
            _os_log_impl(&dword_199A75000, v61, v62, "#ContactsButton: auth status is %ld, don't/ invoke callback", v63, 0xCu);
            MEMORY[0x19A8FA1A0](v63, -1, -1);
          }

          sub_199A9A5FC(v56, v57);

          v64 = v11;
        }

        else
        {
          (v70)(v14, *(v74 + v73) + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v36);

          v65 = sub_199DF802C();
          v66 = sub_199DFA31C();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_199A75000, v65, v66, "#ContactsButton: match for callback was unexpectedly nil?", v67, 2u);
            MEMORY[0x19A8FA1A0](v67, -1, -1);
          }

          sub_199A9A5FC(v56, v57);

          v64 = v14;
        }

        v49(v64, v36);
        return result;
      }
    }

LABEL_33:

    sub_199B209CC();

    return result;
  }

  v22 = 0xD00000000000001DLL;
  v23 = 0x8000000199E47E50;
  v24 = a3;
  v25 = [v24 userInfo];
  v26 = sub_199DF9E9C();

  if (*(v26 + 16) && (v27 = sub_199AEF9E8(0xD000000000000026, 0x8000000199E47E70), (v28 & 1) != 0))
  {
    sub_199A9DA04(*(v26 + 56) + 32 * v27, &v78);

    if (swift_dynamicCast())
    {
      v22 = v76;
      v23 = v77;
    }
  }

  else
  {
  }

  (*(v9 + 16))(v21, *(a4 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer) + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v8);
  sub_199DF81AC();
  v29 = sub_199DF802C();
  v30 = sub_199DFA31C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = v8;
    v33 = swift_slowAlloc();
    v78 = v33;
    *v31 = 136315138;
    *(v31 + 4) = sub_199A9BE90(v22, v23, &v78);
    _os_log_impl(&dword_199A75000, v29, v30, "#ContactsButton response after touch -- encountered an error: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x19A8FA1A0](v33, -1, -1);
    MEMORY[0x19A8FA1A0](v31, -1, -1);

    (*(v9 + 8))(v21, v32);
  }

  else
  {

    (*(v9 + 8))(v21, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CD0, &unk_199E3E7D8);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_199E37D40;
  v78 = 0x203A726F727245;
  v79 = 0xE700000000000000;
  MEMORY[0x19A8F7E00](v22, v23);

  v51 = v78;
  v52 = v79;
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  sub_199DFAA5C();

  return result;
}

uint64_t sub_199B21F40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_199DFA0CC();
  }

  else
  {
    v7 = 0;
  }

  v8 = a4;
  v6(v7, a3, a4);
}

id sub_199B220F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199B221E4(uint64_t a1)
{
  type metadata accessor for ContactsButtonSlotTraits();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIDeviceOrientation(319);
    if (v2 <= 0x3F)
    {
      sub_199AC4D20();
      if (v3 <= 0x3F)
      {
        sub_199B222D0();
        if (v4 <= 0x3F)
        {
          sub_199B22320(319);
          if (v5 <= 0x3F)
          {
            sub_199DF804C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_199B222D0()
{
  if (!qword_1EAF74210)
  {
    v0 = sub_199DF99BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF74210);
    }
  }
}

void sub_199B22320(uint64_t a1)
{
  if (!qword_1EAF73110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74CA0, &qword_199E39770);
    v1 = sub_199DFA63C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF73110);
    }
  }
}

id sub_199B22384()
{
  v1 = type metadata accessor for RepresentableSlotView(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B23900(v0, v3);
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = *v0;
  v7 = v0[1];
  v29 = v0[2];
  v30 = v7;
  v9 = type metadata accessor for RepresentableSlotView.SlotCoordinator(0);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedQueryStr];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = MEMORY[0x1E69E7CD0];
  *&v10[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredEmails] = MEMORY[0x1E69E7CD0];
  *&v10[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredPhones] = v12;
  v13 = OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedTraits;
  v14 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotTraits());
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199DF81AC();
  *&v10[v13] = [v14 init];
  sub_199B23900(v3, &v10[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_parent]);
  type metadata accessor for ContactsButtonSlotMaker(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger;
  v17 = qword_1EAF71EF8;
  v18 = v8;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_199DF804C();
  v20 = __swift_project_value_buffer(v19, qword_1EAF87058);
  (*(*(v19 - 8) + 16))(v15 + v16, v20, v19);
  *(v15 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView) = 0;
  *(v15 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_didFaultAlreadyForUndesiredRendering) = 0;
  v21 = v15 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_cachedCalculatedFrame;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 1;
  *(v15 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___connection) = 0;
  v22 = (v15 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___proxy);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = (v15 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
  v24 = v30;
  *v23 = v29;
  v23[1] = v4;
  *(v15 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredEmails) = v6;
  *(v15 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredPhones) = v5;
  *(v15 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits) = v18;
  *&v10[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker] = v15;
  *&v10[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedOrientation] = v24;
  v25 = *&v18[OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory];
  *&v10[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedContentSizeCategory] = v25;
  v31.receiver = v10;
  v31.super_class = v9;
  v26 = v25;
  v27 = objc_msgSendSuper2(&v31, sel_init);
  sub_199AC6054(v3);
  return v27;
}

id sub_199B22654()
{
  v1 = v0;
  type metadata accessor for RepresentableSlotView(0);
  v2 = sub_199DF802C();
  v3 = sub_199DFA2FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v2, v3, "#ContactsButton makeUIView ", v4, 2u);
    MEMORY[0x19A8FA1A0](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CB0, &unk_199E3E7C0);
  sub_199DF900C();

  sub_199B20048(*v1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  v6 = v5;

  v7 = v6;
  LODWORD(v8) = 1148846080;
  [v7 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v7 setContentHuggingPriority:1 forAxis:v9];
  v33 = sel_handleTap_;
  v42[3] = type metadata accessor for RepresentableSlotView.SlotCoordinator(0);
  sub_199DF900C();
  sub_199DF900C();
  v10 = *&v41[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v35[0] = *(v1 + 48);
  v35[1] = v11;
  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70);
  sub_199DF999C();
  v13 = v38;
  v14 = v39;
  v15 = v40;
  v16 = *(v1 + 72);
  v17 = *(v1 + 80);
  v18 = type metadata accessor for RepresentableSlotView._TapGestureRecognizer();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_approvalCallback];
  *v20 = 0;
  v20[1] = 0;
  *&v19[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer] = v10;
  v21 = &v19[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer__showLibraryUI];
  *v21 = v13;
  *(v21 + 1) = v14;
  v21[16] = v15;
  *v20 = v16;
  v20[1] = v17;
  sub_199AC90C0(v42, v35);
  v22 = v37;
  if (v37)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v35, v37);
    v31 = &v31;
    v32 = v18;
    v24 = *(v22 - 8);
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    sub_199A9A57C(v16, v17);
    v28 = sub_199DFA98C();
    (*(v24 + 8))(v27, v22);
    v18 = v32;
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {

    sub_199A9A57C(v16, v17);
    v28 = 0;
  }

  v34.receiver = v19;
  v34.super_class = v18;
  v29 = objc_msgSendSuper2(&v34, sel_initWithTarget_action_, v28, v33, v31);

  swift_unknownObjectRelease();
  sub_199A79A04(v42, &qword_1EAF73080, &qword_199E3E7D0);
  [v7 addGestureRecognizer_];
  [v7 setUserInteractionEnabled_];

  return v7;
}

void sub_199B22A4C(void *a1)
{
  v2 = v1;
  v4 = sub_199DF804C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v100 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  type metadata accessor for RepresentableSlotView(0);
  v18 = a1;
  v19 = sub_199DF802C();
  v20 = sub_199DFA2FC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218752;
    v102 = v2;
    [v18 frame];
    *(v21 + 4) = CGRectGetWidth(v108);
    *(v21 + 12) = 2048;
    [v18 frame];
    *(v21 + 14) = CGRectGetHeight(v109);
    *(v21 + 22) = 2048;
    [v18 frame];
    *(v21 + 24) = CGRectGetWidth(v110);
    *(v21 + 32) = 2048;
    v2 = v102;
    [v18 frame];
    *(v21 + 34) = CGRectGetWidth(v111);
    _os_log_impl(&dword_199A75000, v19, v20, "#ContactsButton updateUIView w %f h %f gw %f gh %f", v21, 0x2Au);
    MEMORY[0x19A8FA1A0](v21, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CB0, &unk_199E3E7C0);
  sub_199DF900C();
  v22 = v107;
  v24 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedQueryStr];
  v23 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedQueryStr + 8];
  sub_199DF81AC();

  v25 = *(v2 + 24);
  v106 = *(v2 + 16);
  if (v24 == v106 && v23 == v25)
  {
  }

  else
  {
    v26 = sub_199DFA99C();

    if ((v26 & 1) == 0)
    {
      sub_199DF900C();
      v50 = v107;
      v51 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

      v5[2](v17, v51 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v4);

      v52 = sub_199DF802C();
      v53 = sub_199DFA30C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = v25;
        v55 = v17;
        v56 = v2;
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_199A75000, v52, v53, "#ContactsButton can update because query updated", v57, 2u);
        v58 = v57;
        v2 = v56;
        v17 = v55;
        v25 = v54;
        MEMORY[0x19A8FA1A0](v58, -1, -1);
      }

      (v5[1])(v17, v4);
      goto LABEL_23;
    }
  }

  sub_199DF900C();
  v27 = v107;
  v28 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredEmails];
  sub_199DF81AC();

  v29 = *(v2 + 32);
  v30 = sub_199B23964(v28, v29);

  if (v30)
  {
    sub_199DF900C();
    v31 = v107;
    v32 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredPhones];
    sub_199DF81AC();

    v33 = *(v2 + 40);
    LOBYTE(v31) = sub_199B23964(v32, v33);

    if (v31)
    {
      v105 = v4;
      v34 = *v2;
      sub_199DF900C();
      v35 = v107;
      v36 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedTraits];

      LOBYTE(v35) = sub_199B42A1C(v36);
      if (v35)
      {
        sub_199DF900C();
        v37 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedOrientation];

        v102 = v2;
        v38 = *(v2 + 8);
        if (v37 != v38)
        {
          sub_199DF900C();
          v82 = v5;
          v83 = v107;
          v84 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

          v104 = v82;
          (*(v82 + 2))(v101, v84 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v105);

          v85 = sub_199DF802C();
          v86 = sub_199DFA30C();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&dword_199A75000, v85, v86, "#ContactsButton orientation changed", v87, 2u);
            MEMORY[0x19A8FA1A0](v87, -1, -1);
          }

          (*(v104 + 1))(v101, v105);
          sub_199DF900C();
          v88 = v107;
          *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedOrientation] = v38;

          goto LABEL_31;
        }

        sub_199DF900C();
        v39 = v107;
        v40 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedContentSizeCategory];

        v103 = OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory;
        v104 = v40;
        v41 = sub_199DF9F8C();
        v43 = v42;
        if (v41 == sub_199DF9F8C() && v43 == v44)
        {

LABEL_31:
          v67 = &OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor;
          v66 = v106;
          goto LABEL_24;
        }

        v89 = sub_199DFA99C();

        if (v89)
        {
          goto LABEL_31;
        }

        sub_199DF900C();
        v90 = v107;
        v91 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

        v92 = v100;
        v5[2](v100, v91 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v105);

        v93 = sub_199DF802C();
        v94 = sub_199DFA30C();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_199A75000, v93, v94, "#ContactsButton can update because contentSizeCategory/dynamicTypeSize updated", v95, 2u);
          MEMORY[0x19A8FA1A0](v95, -1, -1);
        }

        (v5[1])(v92, v105);
        sub_199DF900C();
        v96 = *&v103[v34];
        v97 = v107;
        v98 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedContentSizeCategory];
        *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedContentSizeCategory] = v96;
        v99 = v96;

        v2 = v102;
      }

      else
      {
        v75 = v2;
        sub_199DF900C();
        v76 = v107;
        v77 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

        v78 = v105;
        v5[2](v103, v77 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v105);

        v79 = sub_199DF802C();
        v80 = sub_199DFA30C();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_199A75000, v79, v80, "#ContactsButton can update because traits updated", v81, 2u);
          MEMORY[0x19A8FA1A0](v81, -1, -1);
        }

        (v5[1])(v103, v78);
        v2 = v75;
      }
    }

    else
    {
      sub_199DF900C();
      v59 = v107;
      v60 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

      v5[2](v104, v60 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v4);

      v61 = sub_199DF802C();
      v62 = sub_199DFA30C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_199A75000, v61, v62, "#ContactsButton can update because ignored phones updated", v63, 2u);
        MEMORY[0x19A8FA1A0](v63, -1, -1);
      }

      (v5[1])(v104, v4);
    }
  }

  else
  {
    sub_199DF900C();
    v45 = v107;
    v46 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

    v5[2](v105, v46 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v4);

    v47 = sub_199DF802C();
    v48 = sub_199DFA30C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_199A75000, v47, v48, "#ContactsButton can update because ignored emails updated", v49, 2u);
      MEMORY[0x19A8FA1A0](v49, -1, -1);
    }

    (v5[1])(v105, v4);
  }

LABEL_23:
  sub_199DF900C();
  v64 = v107;

  v34 = *v2;
  v29 = *(v2 + 32);
  v33 = *(v2 + 40);
  v65 = *v2;
  v66 = v106;
  sub_199B205D4(v65, v106, v25, v29, v33);

  v67 = &OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor;
LABEL_24:
  sub_199DF900C();
  v68 = v107;
  v69 = &v107[v67[18]];
  *v69 = v66;
  v69[1] = v25;
  sub_199DF81AC();

  sub_199DF900C();
  v70 = v107;
  *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredEmails] = v29;
  sub_199DF81AC();

  sub_199DF900C();
  v71 = v107;
  *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredPhones] = v33;
  sub_199DF81AC();

  sub_199DF900C();
  v72 = v107;
  v73 = *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedTraits];
  *&v107[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedTraits] = v34;
  v74 = v34;
}

id sub_199B23668@<X0>(void *a1@<X8>)
{
  result = sub_199B22384();
  *a1 = result;
  return result;
}

uint64_t sub_199B23690(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CB0, &unk_199E3E7C0);
  sub_199DF900C();

  v8 = sub_199B1EF54(a1, a2 & 1, a3, a4 & 1);

  return v8;
}

void sub_199B23860(uint64_t a1)
{
  sub_199B23B1C(&qword_1EAF74CB8, type metadata accessor for RepresentableSlotView, &unk_199E3E730);
  sub_199DF8EAC();
  __break(1u);
}

uint64_t sub_199B23900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RepresentableSlotView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B23964(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_199DFAA7C();
    sub_199DF81AC();
    sub_199DF9FEC();
    v16 = sub_199DFAABC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_199DFA99C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_199B23B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_199B23B64()
{
  result = qword_1EAF74CC0;
  if (!qword_1EAF74CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF74CC0);
  }

  return result;
}

uint64_t objectdestroy_48Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_199B23D38()
{
  v1 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199B23DEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B23E44(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNPosterOnboardingWelcomeViewWrapper.__allocating_init(with:hasOptionToSkip:hasExistingNickname:navigationBarHeight:delegate:windowScene:)(uint64_t a1, char a2, char a3, uint64_t a4, void *a5, double a6)
{
  v7 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D58, &qword_199E3E810);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v38 - v18);
  v20 = objc_allocWithZone(v7);
  *v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  *(v19 + v21[5]) = a1;
  *(v19 + v21[6]) = a2;
  *(v19 + v21[7]) = a3;
  *(v19 + v21[8]) = a6;
  swift_unknownObjectWeakInit();
  v22 = v19 + v21[10];
  LOBYTE(v40) = 0;
  sub_199DF983C();
  v23 = *(&v43 + 1);
  *v22 = v43;
  *(v22 + 1) = v23;
  v24 = v19 + v21[11];
  LOBYTE(v40) = 0;
  sub_199DF983C();
  v25 = *(&v43 + 1);
  *v24 = v43;
  *(v24 + 1) = v25;
  v26 = v19 + v21[12];
  LOBYTE(v40) = !UIAccessibilityIsVideoAutoplayEnabled();
  sub_199DF983C();
  v27 = *(&v43 + 1);
  *v26 = v43;
  *(v26 + 1) = v27;
  v28 = (v19 + v21[13]);
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D60, &qword_199E3E850);
  sub_199DF983C();
  v29 = v44;
  v30 = v45;
  *v28 = v43;
  v28[1] = v29;
  v28[2] = v30;
  v31 = v19 + v21[14];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  KeyPath = swift_getKeyPath();
  v33 = (v19 + *(v14 + 44));
  *v33 = KeyPath;
  v33[1] = a5;
  sub_199AAD408(v19, v16, &qword_1EAF74D58, &qword_199E3E810);
  v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D68, &unk_199E3E880));
  v35 = a5;
  *&v20[OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController] = sub_199DF8DFC();
  v39.receiver = v20;
  v39.super_class = v38[1];
  v36 = objc_msgSendSuper2(&v39, sel_init);
  swift_unknownObjectRelease();

  sub_199A79A04(v19, &qword_1EAF74D58, &qword_199E3E810);
  return v36;
}

id CNPosterOnboardingWelcomeViewWrapper.init(with:hasOptionToSkip:hasExistingNickname:navigationBarHeight:delegate:windowScene:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v7 = sub_199B29F10(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();

  return v7;
}

void *sub_199B24250@<X0>(void *a1@<X8>)
{
  sub_199B2AE70();
  result = sub_199DF8C9C();
  *a1 = v3;
  return result;
}

uint64_t sub_199B242A0(id *a1)
{
  v1 = *a1;
  sub_199B2AE70();
  v2 = v1;
  return sub_199DF8CAC();
}

id CNPosterOnboardingWelcomeViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNPosterOnboardingWelcomeViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNPosterOnboardingWelcomeViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199B2446C()
{
  v1 = *(v0 + *(type metadata accessor for CNPosterOnboardingWelcomeView(0) + 20));
  v2 = [v1 wallpaper];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 posterArchiveData];

    v5 = sub_199DF71FC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xC000000000000000;
  }

  v8 = [v1 thumbnailImageData];
  if (v8 || (v8 = [v1 imageData]) != 0)
  {
    v9 = v8;
    v10 = sub_199DF71FC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xC000000000000000;
  }

  v13 = [v1 givenName];
  v14 = sub_199DF9F8C();
  v16 = v15;

  v17 = type metadata accessor for CNPosterEditorViewConfiguration();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v19 = v5;
  v19[1] = v7;
  v20 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v20 = v10;
  v20[1] = v12;
  v21 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v21 = v14;
  v21[1] = v16;
  v22 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v24.receiver = v18;
  v24.super_class = v17;
  return objc_msgSendSuper2(&v24, sel_init);
}

void sub_199B24634()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 54.0;
  if (v1 != 1)
  {
    v2 = 5.0;
  }

  qword_1EAF86E40 = *&v2;
}

void sub_199B246A4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 35.0;
  if (v1 == 1)
  {
    v2 = 56.0;
  }

  qword_1EAF86E78 = *&v2;
}

void sub_199B2471C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 35.0;
  if (v1 == 1)
  {
    v2 = 36.0;
  }

  qword_1EAF86E68 = *&v2;
}

void sub_199B24794()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  v7 = v3 / v6;
  v8 = [v0 mainScreen];
  [v8 bounds];
  v10 = v9;

  v11 = [v0 mainScreen];
  [v11 bounds];
  v13 = v12;

  v14 = v10 / v13;
  if (v10 / v13 >= v7)
  {
    v14 = v7;
  }

  qword_1EAF86E70 = *&v14;
}

void sub_199B24894()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 37.0;
  if (v1 == 1)
  {
    v2 = 13.0;
  }

  qword_1EAF86E30 = *&v2;
}

void sub_199B24908()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 54.0;
  if (v1 != 1)
  {
    v2 = 0.0;
  }

  qword_1EAF86E58 = *&v2;
}

void sub_199B24978()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 44.0;
  if (v1 != 1)
  {
    v2 = 0.0;
  }

  qword_1EAF86E38 = *&v2;
}

void sub_199B249E8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.0;
  if (v1 == 1)
  {
    v2 = 5.0;
  }

  qword_1EAF86E60 = *&v2;
}

void sub_199B24A54()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0x4056000000000000;
  if (v1 != 1)
  {
    v2 = 0;
  }

  qword_1EAF86E48 = v2;
  byte_1EAF86E50 = v1 != 1;
}

uint64_t sub_199B24AC8@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v4 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D70, &qword_199E3E968);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D78, &qword_199E3E970);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D80, &qword_199E3E978);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  *v13 = sub_199DF8D4C();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D88, &unk_199E3E980);
  sub_199B24F40(a2, &v13[*(v14 + 44)]);
  v15 = sub_199DF917C();
  v16 = [objc_opt_self() currentDevice];
  [v16 userInterfaceIdiom];

  sub_199DF84FC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_199AB7794(v13, v10, &qword_1EAF74D80, &qword_199E3E978);
  v25 = &v10[*(v8 + 36)];
  *v25 = v15;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v8) = sub_199DF919C();
  *(inited + 32) = v8;
  v27 = sub_199DF91BC();
  *(inited + 33) = v27;
  v28 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v8)
  {
    v28 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v27)
  {
    v28 = sub_199DF91AC();
  }

  if (qword_1EAF719C0 != -1)
  {
    swift_once();
  }

  v29 = byte_1EAF86E50;
  v30 = 0uLL;
  v31 = 0uLL;
  if ((byte_1EAF86E50 & 1) == 0)
  {
    sub_199DF84FC();
    *(&v31 + 1) = v32;
    *(&v30 + 1) = v33;
  }

  v43 = v31;
  v44 = v30;
  sub_199AB7794(v10, v7, &qword_1EAF74D78, &qword_199E3E970);
  v34 = &v7[*(v45 + 36)];
  *v34 = v28;
  v35 = v44;
  *(v34 + 24) = v43;
  *(v34 + 8) = v35;
  v34[40] = v29;
  v36 = a2;
  v37 = v47;
  sub_199B2A4D4(v36, v47);
  v38 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v39 = swift_allocObject();
  sub_199B2A538(v37, v39 + v38);
  v40 = v48;
  sub_199AB7794(v7, v48, &qword_1EAF74D70, &qword_199E3E968);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D90, &unk_199E3E990);
  v42 = (v40 + *(result + 36));
  *v42 = sub_199B2A61C;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  return result;
}

uint64_t sub_199B24F40@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v237 = a1;
  v227 = a2;
  v236 = sub_199DF9F4C();
  v238 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v235 = &v202[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_199DF8F3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v202[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EAF719F8 != -1)
  {
    swift_once();
  }

  sub_199DF9B5C();
  sub_199DF863C();
  v224 = v373;
  v225 = v371;
  v222 = v376;
  v223 = v375;
  v400 = 1;
  v399 = v372;
  v398 = v374;
  v7 = objc_opt_self();
  v8 = [v7 currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 1)
  {
    v10 = 130.0;
  }

  else
  {
    sub_199DF8FAC();
    sub_199DF86AC();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    (*(v4 + 8))(v6, v3);
    v401.origin.x = v12;
    v401.origin.y = v14;
    v401.size.width = v16;
    v401.size.height = v18;
    v10 = CGRectGetHeight(v401) * 0.333333333;
  }

  sub_199DF8FAC();
  sub_199DF86AC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v4 + 8))(v6, v3);
  v402.origin.x = v20;
  v402.origin.y = v22;
  v402.size.width = v24;
  v402.size.height = v26;
  CGRectGetWidth(v402);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DA0, &qword_199E3E9B8);
  v226 = v202;
  v221 = *(*(v27 - 8) + 64);
  *&v28 = MEMORY[0x1EEE9AC00](v27 - 8).n128_u64[0];
  v239 = &v202[-v29];
  v30 = [v7 currentDevice];
  v31 = [v30 userInterfaceIdiom];

  if (v31 == 1)
  {
    v32 = sub_199B2446C();
    sub_199DF9B5C();
    sub_199DF897C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_199E39320;
    v34 = sub_199DF919C();
    *(v33 + 32) = v34;
    v35 = sub_199DF91BC();
    *(v33 + 33) = v35;
    v36 = sub_199DF91AC();
    sub_199DF91AC();
    if (sub_199DF91AC() != v34)
    {
      v36 = sub_199DF91AC();
    }

    sub_199DF91AC();
    if (sub_199DF91AC() != v35)
    {
      v36 = sub_199DF91AC();
    }

    if (qword_1EAF719B0 != -1)
    {
      swift_once();
    }

    sub_199DF84FC();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    LOBYTE(v277) = 0;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DD0, &qword_199E3E9E8);
    MEMORY[0x1EEE9AC00](v45);
    v47 = &v202[-v46];
    v48 = v242;
    *(v47 + 56) = v243;
    v49 = v245;
    *(v47 + 72) = v244;
    *(v47 + 88) = v49;
    *(v47 + 104) = v246;
    v50 = v241;
    *(v47 + 8) = v240;
    *(v47 + 24) = v50;
    *v47 = v32;
    *(v47 + 40) = v48;
    v47[120] = v36;
    *(v47 + 16) = v38;
    *(v47 + 17) = v40;
    *(v47 + 18) = v42;
    *(v47 + 19) = v44;
    v47[160] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DA8, &qword_199E3E9C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DD8, &qword_199E3E9F0);
    sub_199B2A754();
    sub_199B2A834();
    sub_199DF8EDC();
  }

  else
  {
    v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DA8, &qword_199E3E9C0);
    v234 = v202;
    MEMORY[0x1EEE9AC00](v233);
    v232 = &v202[-v51];
    v52 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
    v53 = v237;
    v54 = (v237 + *(v52 + 52));
    v55 = v54[1];
    v277 = *v54;
    v278 = v55;
    v279 = v54[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D98, &qword_199E3E9B0);
    sub_199DF984C();
    v56 = v262;
    if (v262)
    {
      v220 = *(&v262 + 1);
      v229 = *(&v263 + 1);
      *&v228 = v263;
      v230 = v264;
      v396[0] = v262;
      v396[1] = v263;
      v397 = v264;
      v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DC8, &qword_199E3E9E0);
      KeyPath = v202;
      MEMORY[0x1EEE9AC00](v219);
      v58 = &v202[-v57];
      *v58 = sub_199DF9B5C();
      v58[1] = v59;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E18, &qword_199E3EA90);
      sub_199B26B08(v396, v53, (v58 + *(v60 + 44)));
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DC0, &qword_199E3E9D8);
      v218 = v202;
      MEMORY[0x1EEE9AC00](v61);
      sub_199AAD408(v58, &v202[-v62], &qword_1EAF74DC8, &qword_199E3E9E0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DB0, &qword_199E3E9C8);
      v63 = MEMORY[0x1E6981880];
      sub_199AA0B90(&qword_1EAF71178, &qword_1EAF74DC8, &qword_199E3E9E0, MEMORY[0x1E6981880]);
      sub_199AA0B90(&qword_1EAF71188, &qword_1EAF74DB0, &qword_199E3E9C8, v63);
      v64 = v232;
      sub_199DF8EDC();

      sub_199A79A04(v58, &qword_1EAF74DC8, &qword_199E3E9E0);
    }

    else
    {
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DB0, &qword_199E3E9C8);
      KeyPath = v202;
      MEMORY[0x1EEE9AC00](v65);
      v67 = &v202[-v66];
      *v67 = sub_199DF9B5C();
      v67[1] = v68;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DB8, &qword_199E3E9D0);
      sub_199B27FEC(v67 + *(v69 + 44), v10);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DC0, &qword_199E3E9D8);
      v230 = v202;
      MEMORY[0x1EEE9AC00](v70);
      sub_199AAD408(v67, &v202[-v71], &qword_1EAF74DB0, &qword_199E3E9C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DC8, &qword_199E3E9E0);
      v72 = MEMORY[0x1E6981880];
      sub_199AA0B90(&qword_1EAF71178, &qword_1EAF74DC8, &qword_199E3E9E0, MEMORY[0x1E6981880]);
      sub_199AA0B90(&qword_1EAF71188, &qword_1EAF74DB0, &qword_199E3E9C8, v72);
      v64 = v232;
      sub_199DF8EDC();
      sub_199A79A04(v67, &qword_1EAF74DB0, &qword_199E3E9C8);
    }

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DD0, &qword_199E3E9E8);
    MEMORY[0x1EEE9AC00](v73);
    sub_199AAD408(v64, &v202[-v74], &qword_1EAF74DA8, &qword_199E3E9C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DD8, &qword_199E3E9F0);
    sub_199B2A754();
    sub_199B2A834();
    sub_199DF8EDC();
    sub_199A79A04(v64, &qword_1EAF74DA8, &qword_199E3E9C0);
  }

  if (qword_1EAF719E0 != -1)
  {
    swift_once();
  }

  sub_199DF9B5C();
  sub_199DF863C();
  v215 = v379;
  v216 = v377;
  v213 = v382;
  v214 = v381;
  v370 = 1;
  v369 = v378;
  v368 = v380;
  v204 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  v75 = v235;
  sub_199DF9EEC();
  v76 = sub_199AA8A84(v75, MEMORY[0x1E69E7CC0]);
  v78 = v77;
  v79 = *(v238 + 8);
  v238 += 8;
  v212 = v79;
  v79(v75, v236);
  *&v277 = v76;
  *(&v277 + 1) = v78;
  v211 = sub_199A9C458();
  v80 = sub_199DF93CC();
  v82 = v81;
  v84 = v83;
  sub_199DF91DC();
  v85 = sub_199DF939C();
  v87 = v86;
  LOBYTE(v75) = v88;

  sub_199ACE3E8(v80, v82, v84 & 1);

  sub_199DF923C();
  v89 = sub_199DF932C();
  v232 = v90;
  v233 = v89;
  LOBYTE(v80) = v91;
  v234 = v92;
  sub_199ACE3E8(v85, v87, v75 & 1);

  sub_199DF9B5C();
  sub_199DF897C();
  LODWORD(v230) = v80 & 1;
  v363 = v80 & 1;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  v93 = swift_allocObject();
  v228 = xmmword_199E39320;
  *(v93 + 16) = xmmword_199E39320;
  LOBYTE(v82) = sub_199DF919C();
  *(v93 + 32) = v82;
  v94 = sub_199DF91BC();
  *(v93 + 33) = v94;
  v95 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v82)
  {
    v95 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v94)
  {
    v95 = sub_199DF91AC();
  }

  LODWORD(v229) = v95;
  if (qword_1EAF719C8 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v219 = v97;
  v220 = v96;
  v217 = v99;
  v218 = v98;
  v364 = 0;
  sub_199DF9B5C();
  sub_199DF863C();
  v207 = v385;
  v208 = v383;
  v205 = v388;
  v206 = v387;
  v354 = 1;
  v353 = v384;
  v352 = v386;
  v100 = v235;
  sub_199DF9EEC();
  v101 = sub_199AA8A84(v100, MEMORY[0x1E69E7CC0]);
  v103 = v102;
  v212(v100, v236);
  *&v277 = v101;
  *(&v277 + 1) = v103;
  v104 = sub_199DF93CC();
  v106 = v105;
  LOBYTE(v100) = v107;
  sub_199DF920C();
  v235 = sub_199DF939C();
  v212 = v108;
  v110 = v109;
  v238 = v111;

  sub_199ACE3E8(v104, v106, v100 & 1);

  sub_199DF9B5C();
  sub_199DF897C();
  v210 = v110 & 1;
  v347 = v110 & 1;
  v236 = swift_getKeyPath();
  v211 = swift_getKeyPath();
  v112 = swift_allocObject();
  *(v112 + 16) = v228;
  v113 = sub_199DF919C();
  *(v112 + 32) = v113;
  v114 = sub_199DF91BC();
  *(v112 + 33) = v114;
  v115 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v113)
  {
    v115 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v114)
  {
    v115 = sub_199DF91AC();
  }

  v116 = v237;
  v209 = v115;
  sub_199DF84FC();
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v349 = 0;
  if (qword_1EAF71990 != -1)
  {
    swift_once();
  }

  sub_199DF9B5C();
  sub_199DF897C();
  *&v337[55] = v392;
  *&v337[71] = v393;
  *&v337[87] = v394;
  *&v337[103] = v395;
  *&v337[7] = v389;
  *&v337[23] = v390;
  v338 = 1;
  *&v337[39] = v391;
  v125 = *(v116 + *(v204 + 24));
  swift_unknownObjectWeakLoadStrong();
  LOBYTE(v277) = v125;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v126 = swift_allocObject();
  *(v126 + 16) = v228;
  v127 = sub_199DF919C();
  *(v126 + 32) = v127;
  v128 = sub_199DF91BC();
  *(v126 + 33) = v128;
  v129 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v127)
  {
    v129 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v128)
  {
    v129 = sub_199DF91AC();
  }

  if (qword_1EAF719A0 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v137 = v136;
  sub_199B2A940(&v277, v323);
  v323[16] = v129;
  v324 = v131;
  v325 = v133;
  v326 = v135;
  v327 = v137;
  v328 = 0;
  v138 = sub_199DF918C();
  v139 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v138)
  {
    v139 = sub_199DF91AC();
  }

  if (qword_1EAF719D8 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  sub_199AB7794(v323, v329, &qword_1EAF74DE8, &qword_199E3EA60);
  v329[64] = v139;
  v330 = v141;
  v331 = v143;
  v332 = v145;
  v333 = v147;
  v334 = 0;
  sub_199AB7794(v329, v335, &qword_1EAF74DF0, &qword_199E3EA68);
  v335[14] = 0x3FF0000000000000;
  v148 = sub_199AB7794(v335, v336, &qword_1EAF74DF8, &qword_199E3EA70);
  v237 = v202;
  v149 = v400;
  v150 = v399;
  v151 = v398;
  MEMORY[0x1EEE9AC00](v148);
  v153 = &v202[-((v152 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v228 = v153;
  sub_199AAD408(v239, v153, &qword_1EAF74DA0, &qword_199E3E9B8);
  v154 = v370;
  v155 = v369;
  v156 = v368;
  v203 = v354;
  LODWORD(v204) = v353;
  LODWORD(v221) = v352;
  sub_199AAD408(v336, v247, &qword_1EAF74DF8, &qword_199E3EA70);
  v157 = v227;
  *v227 = 0;
  *(v157 + 8) = v149;
  v158 = v224;
  v157[2] = v225;
  *(v157 + 24) = v150;
  v157[4] = v158;
  *(v157 + 40) = v151;
  v159 = v222;
  v157[6] = v223;
  v157[7] = v159;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E00, &qword_199E3EA78);
  sub_199AAD408(v153, v157 + v160[12], &qword_1EAF74DA0, &qword_199E3E9B8);
  v161 = v157 + v160[16];
  *v161 = 0;
  v161[8] = v154;
  v162 = v215;
  *(v161 + 2) = v216;
  v161[24] = v155;
  *(v161 + 4) = v162;
  v161[40] = v156;
  v163 = v213;
  *(v161 + 6) = v214;
  *(v161 + 7) = v163;
  v164 = v157 + v160[20];
  *&v248 = v233;
  *(&v248 + 1) = v232;
  LOBYTE(v249) = v230;
  *(&v249 + 1) = *v362;
  DWORD1(v249) = *&v362[3];
  v254 = v359;
  v255 = v360;
  v256 = v361;
  v252 = v357;
  v253 = v358;
  v250 = v355;
  v251 = v356;
  *(&v249 + 1) = v234;
  *&v257 = KeyPath;
  HIDWORD(v257) = *&v366[3];
  *(&v257 + 9) = *v366;
  DWORD1(v258) = *&v365[3];
  *(&v258 + 1) = *v365;
  HIDWORD(v260) = *&v367[3];
  *(&v260 + 9) = *v367;
  BYTE8(v257) = 1;
  LOBYTE(v258) = v229;
  v166 = v219;
  v165 = v220;
  *(&v258 + 1) = v220;
  *&v259 = v219;
  v168 = v217;
  v167 = v218;
  *(&v259 + 1) = v218;
  *&v260 = v217;
  BYTE8(v260) = 0;
  v261 = 0x3FF0000000000000;
  v170 = v258;
  v169 = v259;
  v171 = v260;
  *(v164 + 26) = 0x3FF0000000000000;
  *(v164 + 11) = v169;
  *(v164 + 12) = v171;
  v172 = v249;
  *v164 = v248;
  *(v164 + 1) = v172;
  v173 = v250;
  v174 = v251;
  v175 = v253;
  *(v164 + 4) = v252;
  *(v164 + 5) = v175;
  *(v164 + 2) = v173;
  *(v164 + 3) = v174;
  v176 = v254;
  v177 = v255;
  v178 = v256;
  *(v164 + 9) = v257;
  *(v164 + 10) = v170;
  *(v164 + 7) = v177;
  *(v164 + 8) = v178;
  *(v164 + 6) = v176;
  v179 = v157 + v160[24];
  v179[8] = v203;
  *(v179 + 2) = v208;
  v179[24] = v204;
  *(v179 + 4) = v207;
  v179[40] = v221;
  v180 = v205;
  *(v179 + 6) = v206;
  *(v179 + 7) = v180;
  *v179 = 0;
  *(&v263 + 1) = *v346;
  v181 = v157 + v160[28];
  v182 = v235;
  *&v262 = v235;
  v183 = v212;
  *(&v262 + 1) = v212;
  v184 = v210;
  LOBYTE(v263) = v210;
  DWORD1(v263) = *&v346[3];
  *(&v263 + 1) = v238;
  v270 = v345;
  v265 = v340;
  v264 = v339;
  v269 = v344;
  v268 = v343;
  v266 = v341;
  v267 = v342;
  *&v271 = v236;
  BYTE8(v271) = 1;
  HIDWORD(v271) = *&v348[3];
  *(&v271 + 9) = *v348;
  DWORD1(v273) = *&v350[3];
  *(&v273 + 1) = *v350;
  HIDWORD(v275) = *&v351[3];
  *(&v275 + 9) = *v351;
  v185 = v211;
  *&v272 = v211;
  *(&v272 + 1) = 0x3FE0000000000000;
  v186 = v209;
  LOBYTE(v273) = v209;
  *(&v273 + 1) = v118;
  *&v274 = v120;
  *(&v274 + 1) = v122;
  *&v275 = v124;
  BYTE8(v275) = 0;
  v276 = 0x3FF0000000000000;
  v187 = v274;
  v188 = v275;
  *(v181 + 28) = 0x3FF0000000000000;
  *(v181 + 12) = v187;
  *(v181 + 13) = v188;
  v189 = v263;
  *v181 = v262;
  *(v181 + 1) = v189;
  v190 = v264;
  v191 = v265;
  v192 = v267;
  *(v181 + 4) = v266;
  *(v181 + 5) = v192;
  *(v181 + 2) = v190;
  *(v181 + 3) = v191;
  v193 = v268;
  v194 = v269;
  v195 = v273;
  *(v181 + 10) = v272;
  *(v181 + 11) = v195;
  v196 = v271;
  *(v181 + 8) = v270;
  *(v181 + 9) = v196;
  *(v181 + 6) = v193;
  *(v181 + 7) = v194;
  v197 = v157 + v160[32];
  v197[8] = 1;
  v198 = *&v337[80];
  *(v197 + 105) = *&v337[96];
  *(v197 + 15) = *&v337[111];
  *(v197 + 16) = 0xBFF0000000000000;
  *v197 = 0;
  *(v197 + 73) = *&v337[64];
  *(v197 + 89) = v198;
  v199 = *&v337[16];
  *(v197 + 9) = *v337;
  *(v197 + 25) = v199;
  v200 = *&v337[48];
  *(v197 + 41) = *&v337[32];
  *(v197 + 57) = v200;
  sub_199AAD408(v247, v157 + v160[36], &qword_1EAF74DF8, &qword_199E3EA70);
  sub_199AAD408(&v248, &v277, &qword_1EAF74E08, &qword_199E3EA80);
  sub_199AAD408(&v262, &v277, &qword_1EAF74E10, &qword_199E3EA88);
  sub_199A79A04(v336, &qword_1EAF74DF8, &qword_199E3EA70);
  sub_199A79A04(v239, &qword_1EAF74DA0, &qword_199E3E9B8);
  sub_199A79A04(v247, &qword_1EAF74DF8, &qword_199E3EA70);
  *&v277 = v182;
  *(&v277 + 1) = v183;
  LOBYTE(v278) = v184;
  *(&v278 + 1) = *v346;
  DWORD1(v278) = *&v346[3];
  v283 = v343;
  v284 = v344;
  v285 = v345;
  v279 = v339;
  v280 = v340;
  v281 = v341;
  v282 = v342;
  *(&v278 + 1) = v238;
  v286 = v236;
  v287 = 1;
  *&v288[3] = *&v348[3];
  *v288 = *v348;
  v289 = v185;
  v290 = 0x3FE0000000000000;
  v291 = v186;
  *&v292[3] = *&v350[3];
  *v292 = *v350;
  v293 = v118;
  v294 = v120;
  v295 = v122;
  v296 = v124;
  v297 = 0;
  *v298 = *v351;
  *&v298[3] = *&v351[3];
  v299 = 0x3FF0000000000000;
  sub_199A79A04(&v277, &qword_1EAF74E10, &qword_199E3EA88);
  v300[0] = v233;
  v300[1] = v232;
  v301 = v230;
  *v302 = *v362;
  *&v302[3] = *&v362[3];
  v303 = v234;
  v308 = v359;
  v309 = v360;
  v310 = v361;
  v304 = v355;
  v305 = v356;
  v307 = v358;
  v306 = v357;
  v311 = KeyPath;
  v312 = 1;
  *&v313[3] = *&v366[3];
  *v313 = *v366;
  v314 = v229;
  *&v315[3] = *&v365[3];
  *v315 = *v365;
  v316 = v165;
  v317 = v166;
  v318 = v167;
  v319 = v168;
  v320 = 0;
  *&v321[3] = *&v367[3];
  *v321 = *v367;
  v322 = 0x3FF0000000000000;
  sub_199A79A04(v300, &qword_1EAF74E08, &qword_199E3EA80);
  return sub_199A79A04(v228, &qword_1EAF74DA0, &qword_199E3E9B8);
}

uint64_t sub_199B26B08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = type metadata accessor for CNPosterOnboardingWelcomeView(0);
  v68 = *(v12 - 8);
  v13 = v68[8];
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = *(v14 + 56);
  v69 = a2;
  v16 = a2 + v15;
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v82) = v17;
  *(&v82 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF986C();
  v72 = v90;
  v73 = v89;
  v79 = v91;
  v74 = v9;
  v75 = v8;
  v128 = v9;
  v129 = v8;
  v80 = v11;
  v81 = v10;
  v126 = v11;
  v127 = v10;
  v78 = v7;
  sub_199AAD408(&v129, &v89, &qword_1EAF72750, &qword_199E37E50);
  sub_199AAD408(&v128, &v89, &qword_1EAF72750, &qword_199E37E50);
  sub_199AAD408(&v127, &v89, &qword_1EAF72750, &qword_199E37E50);
  sub_199AAD408(&v126, &v89, &qword_1EAF72750, &qword_199E37E50);
  if (qword_1EAF719E8 != -1)
  {
    swift_once();
  }

  v77 = qword_1EAF86E70;
  v114 = 0;
  sub_199DF9B5C();
  sub_199DF897C();
  *&v115[54] = v122;
  *&v115[70] = v123;
  *&v115[86] = v124;
  *&v115[102] = v125;
  *&v115[6] = v119;
  *&v115[22] = v120;
  *&v115[38] = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_199E39320;
  v20 = sub_199DF919C();
  *(v19 + 32) = v20;
  v21 = sub_199DF91BC();
  *(v19 + 33) = v21;
  v22 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v20)
  {
    v22 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v21)
  {
    v22 = sub_199DF91AC();
  }

  if (qword_1EAF719B0 != -1)
  {
    swift_once();
  }

  v71 = v22;
  sub_199DF84FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v116 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E20, &qword_199E3EA98);
  v70 = &v64;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v64 - v33;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v76 = v34;
  if (IsReduceMotionEnabled || !UIAccessibilityIsVideoAutoplayEnabled())
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E28, &qword_199E3EAA0);
    v66 = &v64;
    v38 = *(v65 - 8);
    MEMORY[0x1EEE9AC00](v65);
    v67 = v32;
    v40 = &v64 - v39;
    sub_199B2A4D4(v69, &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v41 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v42 = swift_allocObject();
    v43 = sub_199B2A538(&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41);
    v68 = &v64;
    MEMORY[0x1EEE9AC00](v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E30, &qword_199E3EAA8);
    v34 = v76;
    sub_199AA0B90(&qword_1EAF74E38, &qword_1EAF74E30, &qword_199E3EAA8, MEMORY[0x1E697E378]);
    sub_199DF989C();
    v44 = v40;
    v32 = v67;
    v45 = v65;
    (*(v38 + 32))(v34, v44, v65);
    v37 = (*(v38 + 56))(v34, 0, 1, v45);
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E28, &qword_199E3EAA0);
    v37 = (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  }

  v69 = &v64;
  MEMORY[0x1EEE9AC00](v37);
  v46 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v34, v46, &qword_1EAF74E20, &qword_199E3EA98);
  v48 = v74;
  v47 = v75;
  *&v82 = v78;
  *(&v82 + 1) = v75;
  *&v83 = v74;
  *(&v83 + 1) = v81;
  v50 = v72;
  v49 = v73;
  *&v84 = v80;
  *(&v84 + 1) = v73;
  *&v85 = v72;
  BYTE8(v85) = v79;
  *(&v85 + 9) = *v118;
  HIDWORD(v85) = *&v118[3];
  *&v86[0] = v77;
  WORD4(v86[0]) = 0;
  *(&v86[3] + 10) = *&v115[48];
  *(&v86[2] + 10) = *&v115[32];
  *(&v86[1] + 10) = *&v115[16];
  *(v86 + 10) = *v115;
  *(&v86[7] + 1) = *&v115[110];
  *(&v86[6] + 10) = *&v115[96];
  *(&v86[5] + 10) = *&v115[80];
  *(&v86[4] + 10) = *&v115[64];
  v51 = v71;
  LOBYTE(v87) = v71;
  DWORD1(v87) = *&v117[3];
  *(&v87 + 1) = *v117;
  *(&v87 + 1) = v24;
  *&v88[0] = v26;
  *(&v88[0] + 1) = v28;
  *&v88[1] = v30;
  BYTE8(v88[1]) = 0;
  v52 = v83;
  *a3 = v82;
  a3[1] = v52;
  v53 = v84;
  v54 = v85;
  v55 = v86[1];
  a3[4] = v86[0];
  a3[5] = v55;
  a3[2] = v53;
  a3[3] = v54;
  v56 = v86[2];
  v57 = v86[3];
  v58 = v86[5];
  a3[8] = v86[4];
  a3[9] = v58;
  a3[6] = v56;
  a3[7] = v57;
  v59 = v86[6];
  v60 = v86[7];
  *(a3 + 217) = *(v88 + 9);
  v61 = v88[0];
  a3[12] = v87;
  a3[13] = v61;
  a3[10] = v59;
  a3[11] = v60;
  v62 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E40, &qword_199E3EAB0) + 48);
  sub_199AAD408(v46, v62, &qword_1EAF74E20, &qword_199E3EA98);
  sub_199AAD408(&v82, &v89, &qword_1EAF74E48, &qword_199E3EAB8);
  sub_199A79A04(v76, &qword_1EAF74E20, &qword_199E3EA98);
  sub_199A79A04(v46, &qword_1EAF74E20, &qword_199E3EA98);
  v89 = v78;
  v90 = v47;
  v91 = v48;
  v92 = v81;
  v93 = v80;
  v94 = v49;
  v95 = v50;
  v96 = v79;
  *v97 = *v118;
  *&v97[3] = *&v118[3];
  v98 = v77;
  v99 = 0;
  v103 = *&v115[48];
  v102 = *&v115[32];
  v101 = *&v115[16];
  v100 = *v115;
  *&v106[14] = *&v115[110];
  *v106 = *&v115[96];
  v105 = *&v115[80];
  v104 = *&v115[64];
  v107 = v51;
  *&v108[3] = *&v117[3];
  *v108 = *v117;
  v109 = v24;
  v110 = v26;
  v111 = v28;
  v112 = v30;
  v113 = 0;
  return sub_199A79A04(&v89, &qword_1EAF74E48, &qword_199E3EAB8);
}