uint64_t sub_1D61DFE80@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v3 = qword_1EDFFCC90;
      break;
    default:
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v3 = qword_1EDFFCE38;
      break;
  }

  v4 = sub_1D725BD1C();
  v5 = __swift_project_value_buffer(v4, v3);
  (*(*(v4 - 8) + 16))(a2, v5, v4);
  type metadata accessor for FormatVersionRequirement.Value(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D61DFFAC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x656E696C6E69;
  }

  else
  {
    v2 = 0x6E6F6974706FLL;
  }

  if (*a2)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x6E6F6974706FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D61E002C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61E009C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D61E00F0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D61E015C(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F6974706FLL;
  if (*v1)
  {
    v2 = 0x656E696C6E69;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

void sub_1D61E01F8()
{
  v3 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 24) == 1)
  {
    v4 = *(v0 + 16);
    v9[0] = *v0;
    v9[1] = v2;
    v9[2] = v4;
    v10 = 5;
    sub_1D5FB995C(v3, v2, v4, 1);
    v5 = sub_1D703E0C8(v9, &v10);
    if (v1)
    {
      return;
    }

    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    *(v7 + 32) = v6;
    *(v7 + 40) = 0;
    v8 = 0x3000000000000000;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    v8 = 0x8000000000000000;
  }

  sub_1D6C4D24C(v8 | v7);
}

uint64_t _s8NewsFeed16FormatSymbolNameO2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v10 = v3 == v7 && v2 == v6;
      if (v10 || (sub_1D72646CC() & 1) != 0)
      {
        sub_1D5FB995C(v7, v6, v8, 1);
        sub_1D5FB995C(v3, v2, v4, 1);
        sub_1D5FB995C(v7, v6, v8, 1);
        sub_1D5FB995C(v3, v2, v4, 1);
        v11 = sub_1D6341C50(v4, v8);
        sub_1D5FBA070(v3, v2, v4, 1);
        sub_1D5FBA070(v7, v6, v8, 1);
        sub_1D5FBA070(v7, v6, v8, 1);
        sub_1D5FBA070(v3, v2, v4, 1);
        result = 1;
        if (v11)
        {
          return result;
        }

        return 0;
      }

      sub_1D5FB995C(v7, v6, v8, 1);
      sub_1D5FB995C(v3, v2, v4, 1);
      sub_1D5FBA070(v3, v2, v4, 1);
      v13 = v7;
      v14 = v6;
      v15 = v8;
      v16 = 1;
LABEL_12:
      sub_1D5FBA070(v13, v14, v15, v16);
      return 0;
    }

LABEL_11:
    sub_1D5FB995C(*a2, *(a2 + 8), v8, v9);
    sub_1D5FB995C(v3, v2, v4, v5);
    sub_1D5FBA070(v3, v2, v4, v5);
    v13 = v7;
    v14 = v6;
    v15 = v8;
    v16 = v9;
    goto LABEL_12;
  }

  if (*(a2 + 24))
  {
    goto LABEL_11;
  }

  v17 = *a1;
  if (v3 == v7 && v2 == v6)
  {
    sub_1D5FB995C(v17, v2, v8, 0);
    sub_1D5FB995C(v3, v2, v4, 0);
    sub_1D5FBA070(v3, v2, v4, 0);
    sub_1D5FBA070(v3, v2, v8, 0);
    return 1;
  }

  else
  {
    v19 = sub_1D72646CC();
    sub_1D5FB995C(v7, v6, v8, 0);
    sub_1D5FB995C(v3, v2, v4, 0);
    sub_1D5FBA070(v3, v2, v4, 0);
    sub_1D5FBA070(v7, v6, v8, 0);
    return v19 & 1;
  }
}

unint64_t sub_1D61E05F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D61E0640(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1EDF05C38 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDF05C40;
      break;
    case 2:
      if (qword_1EC87DB90 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951D0;
      break;
    case 3:
      if (qword_1EDF1BBE8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDF1BBF0;
      break;
    case 4:
      if (qword_1EC87DB70 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951C0;
      break;
    case 5:
      if (qword_1EDF05CB8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDF05CC0;
      break;
    case 6:
      if (qword_1EC87DB80 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951C8;
      break;
    case 7:
      if (qword_1EC87DB98 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951D8;
      break;
    case 8:
      if (qword_1EC87DBA0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951E0;
      break;
    case 9:
      if (qword_1EC87DBA8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951E8;
      break;
    case 10:
      if (qword_1EC87DBB0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951F0;
      break;
    case 11:
      if (qword_1EC87DBB8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951F8;
      break;
    case 12:
      if (qword_1EC87DBC0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC895200;
      break;
    default:
      if (qword_1EC87DB60 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951B8;
      break;
  }

  return *v1;
}

void sub_1D61E0984(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatOption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  if (*(v1 + 24) == 1)
  {
    v36 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v37[0] = *v1;
    v37[1] = v19;
    v37[2] = v18;
    v38 = 5;

    v21 = sub_1D703E0C8(v37, &v38);
    if (!v3)
    {
      v35 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v36 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5D2CF88(v13, sub_1D5E04C00);
        if ((*(a1 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5C75E0C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v27 = v20;
          v27[1] = v19;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v22 = 1;
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v37[0] = v9[2];
        v23 = v35;

        FormatOptionValue.type.getter(v24, &v38);
        if ((sub_1D6183C84(v38, v23) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D5C75E0C(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v29 = v28;
          v31 = *v9;
          v30 = v9[1];
          v37[0] = v9[2];

          FormatOptionValue.type.getter(v32, &v38);
          v33 = v38;
          *v29 = v31;
          *(v29 + 8) = v30;
          *(v29 + 16) = v33;
          *(v29 + 24) = v23;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v25 = type metadata accessor for FormatOption;
          v26 = v9;
          goto LABEL_11;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v9, v17);
        v22 = 0;
      }

      (*(v36 + 56))(v17, v22, 1, v5);
      v25 = sub_1D5E04C00;
      v26 = v17;
LABEL_11:
      sub_1D5D2CF88(v26, v25);
    }
  }
}

unint64_t sub_1D61E0D54(void *a1)
{
  a1[1] = sub_1D5C75B20();
  a1[2] = sub_1D61E0D8C();
  result = sub_1D61E0DE0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61E0D8C()
{
  result = qword_1EDF11138;
  if (!qword_1EDF11138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11138);
  }

  return result;
}

unint64_t sub_1D61E0DE0()
{
  result = qword_1EC8850F0;
  if (!qword_1EC8850F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850F0);
  }

  return result;
}

unint64_t sub_1D61E0E58()
{
  result = qword_1EC8850F8;
  if (!qword_1EC8850F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850F8);
  }

  return result;
}

uint64_t sub_1D61E0EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatLayoutError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NewsFeed::HeadlineColorPalette::Theme __swiftcall HeadlineColorPalette.theme(for:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v4 = v1;
  v5 = *(v2 + 8);
  if (isa)
  {
    v6 = [v5 resolvedColorWithTraitCollection_];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  [v6 ts_luminance];
  v9 = v8;

  *v4 = v9 > 0.7;
  return result;
}

uint64_t HeadlineColorPalette.Theme.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

id sub_1D61E1080@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) &selRef:0.764705882 setCornerCurve:{0.764705882, 0.764705882, 1.0}];
  v19 = [v2 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  v5 = [v2 whiteColor];
  v6 = [v2 blackColor];
  v18 = [v2 ts:v5 dynamicColor:v6 withDarkStyleVariant:?];

  v17 = [v2 labelColor];
  v16 = [v2 secondaryLabelColor];
  v7 = [v2 grayColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.9 alpha:1.0];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.1 alpha:1.0];
  v10 = [v2 ts:v8 dynamicColor:v9 withDarkStyleVariant:?];

  v11 = [v2 systemBlueColor];
  v12 = [v2 systemRedColor];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.882352941 green:0.647058824 blue:0.0 alpha:1.0];
  v14 = [v2 systemBlueColor];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.62745098 blue:0.0901960784 alpha:1.0];
  *a1 = v18;
  a1[1] = v17;
  a1[2] = v16;
  a1[3] = v19;
  a1[4] = v7;
  a1[5] = v10;
  a1[6] = v11;
  a1[7] = v12;
  a1[8] = v13;
  a1[9] = v14;
  a1[10] = result;
  return result;
}

void __swiftcall HeadlineColorPalette.init(backgroundColor:titleColor:excerptColor:accessoryColor:publisherNameColor:thumbnailPlaceholderColor:badgePressReleaseColor:badgeBreakingColor:badgeDevelopingColor:badgeUpdatedColor:badgeSubscriptionColor:)(NewsFeed::HeadlineColorPalette *__return_ptr retstr, UIColor backgroundColor, UIColor titleColor, UIColor excerptColor, UIColor accessoryColor, UIColor publisherNameColor, UIColor thumbnailPlaceholderColor, UIColor badgePressReleaseColor, UIColor badgeBreakingColor, UIColor badgeDevelopingColor, UIColor badgeUpdatedColor, UIColor badgeSubscriptionColor)
{
  retstr->backgroundColor = backgroundColor;
  retstr->titleColor = titleColor;
  retstr->excerptColor = excerptColor;
  retstr->accessoryColor = accessoryColor;
  retstr->publisherNameColor = publisherNameColor;
  retstr->thumbnailPlaceholderColor = thumbnailPlaceholderColor;
  retstr->badgePressReleaseColor = badgePressReleaseColor;
  retstr->badgeBreakingColor = badgeBreakingColor;
  *&retstr->badgeDevelopingColor.super.isa = *&badgeDevelopingColor.super.isa;
  retstr->badgeSubscriptionColor = badgeSubscriptionColor;
}

uint64_t static HeadlineColorPalette.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF0E9F8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = xmmword_1EDF0EA20;
  v2 = xmmword_1EDF0EA40;
  v9[3] = unk_1EDF0EA30;
  v9[4] = xmmword_1EDF0EA40;
  v3 = qword_1EDF0EA50;
  v10 = qword_1EDF0EA50;
  v4 = xmmword_1EDF0EA00;
  v5 = *algn_1EDF0EA10;
  v9[0] = xmmword_1EDF0EA00;
  v9[1] = *algn_1EDF0EA10;
  v9[2] = xmmword_1EDF0EA20;
  *(a1 + 48) = unk_1EDF0EA30;
  *(a1 + 64) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v1;
  *(a1 + 80) = v3;
  *a1 = v4;
  return sub_1D61E142C(v9, v8);
}

void __swiftcall HeadlineColorPalette.init(backgroundColor:titleColor:excerptColor:accessoryColor:publisherNameColor:thumbnailPlaceholderColor:badgePressReleaseColor:badgeBreakingColor:badgeDevelopingColor:badgeUpdatedColor:)(NewsFeed::HeadlineColorPalette *__return_ptr retstr, UIColor backgroundColor, UIColor titleColor, UIColor excerptColor, UIColor accessoryColor, UIColor publisherNameColor, UIColor thumbnailPlaceholderColor, UIColor badgePressReleaseColor, UIColor badgeBreakingColor, UIColor badgeDevelopingColor, UIColor badgeUpdatedColor)
{
  v19 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.62745098 blue:0.0901960784 alpha:1.0];
  retstr->backgroundColor = backgroundColor;
  retstr->titleColor = titleColor;
  retstr->excerptColor = excerptColor;
  retstr->accessoryColor = accessoryColor;
  retstr->publisherNameColor = publisherNameColor;
  retstr->thumbnailPlaceholderColor = thumbnailPlaceholderColor;
  retstr->badgePressReleaseColor = badgePressReleaseColor;
  retstr->badgeBreakingColor = badgeBreakingColor;
  retstr->badgeDevelopingColor = badgeDevelopingColor;
  retstr->badgeUpdatedColor = badgeUpdatedColor;
  retstr->badgeSubscriptionColor.super.isa = v19;
}

unint64_t sub_1D61E1524()
{
  result = qword_1EC885100;
  if (!qword_1EC885100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885100);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D61E159C(uint64_t *a1, int a2)
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

uint64_t sub_1D61E15E4(uint64_t result, int a2, int a3)
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

uint64_t sub_1D61E1698(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746867694E7369;
  }

  else
  {
    v3 = 0x7961447369;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x746867694E7369;
  }

  else
  {
    v5 = 0x7961447369;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D61E173C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61E17BC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D61E1828(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D61E18A4(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

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

void sub_1D61E1904(uint64_t *a1@<X8>)
{
  v2 = 0x7961447369;
  if (*v1)
  {
    v2 = 0x746867694E7369;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatWeatherBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D61E1A9C()
{
  result = qword_1EC885108;
  if (!qword_1EC885108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885108);
  }

  return result;
}

unint64_t sub_1D61E1AF0(uint64_t a1)
{
  result = sub_1D61E1B18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61E1B18()
{
  result = qword_1EC885110;
  if (!qword_1EC885110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885110);
  }

  return result;
}

unint64_t sub_1D61E1BAC(void *a1)
{
  a1[1] = sub_1D61E1BE4();
  a1[2] = sub_1D61E1C38();
  result = sub_1D61E1A9C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61E1BE4()
{
  result = qword_1EDF0EAD0;
  if (!qword_1EDF0EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAD0);
  }

  return result;
}

unint64_t sub_1D61E1C38()
{
  result = qword_1EDF0EAD8;
  if (!qword_1EDF0EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAD8);
  }

  return result;
}

unint64_t sub_1D61E1D10()
{
  result = qword_1EC885138;
  if (!qword_1EC885138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885138);
  }

  return result;
}

unint64_t sub_1D61E1D64()
{
  result = qword_1EDF0EAE8;
  if (!qword_1EDF0EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAE8);
  }

  return result;
}

uint64_t sub_1D61E1DB8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FeedWeather(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_1D60B1278(a2, v10);
  v11 = v10[*(v7 + 40)];
  sub_1D60B12DC(v10);
  v12 = (a1 & 1) == 0;
  if (a1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 ^ 1;
  }

  if (v12)
  {
    v14 = 0x796144207349;
  }

  else
  {
    v14 = 0x746867694E207349;
  }

  if (v12)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  v16 = type metadata accessor for FormatInspectionItem(0);
  v17 = *(v16 + 24);
  *(a3 + v17) = v13;
  v18 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
  *a3 = v14;
  a3[1] = v15;
  a3[2] = 0;
  a3[3] = 0;
  v19 = a3 + *(v16 + 28);
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = -1;
  return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
}

void sub_1D61E1F60(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v3 = v29;
    v4 = v1 + 56;
    v5 = sub_1D7263B7C();
    v6 = 0;
    v24 = v1 + 64;
    v25 = v2;
    v26 = v1 + 56;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v27 = v6;
      v28 = *(v1 + 36);
      v9 = (*(v1 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];

      MEMORY[0x1DA6F9910](v10, v11);

      v12 = v3;
      v30 = v3;
      v13 = v1;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D5BFC364((v14 > 1), v15 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 16 * v15;
      *(v16 + 32) = 539828256;
      *(v16 + 40) = 0xE400000000000000;
      v7 = 1 << *(v13 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = v26;
      v17 = *(v26 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      v1 = v13;
      v3 = v12;
      if (v28 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1D5C86234(v5, v28, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1D5C86234(v5, v28, 0);
      }

LABEL_4:
      v6 = v27 + 1;
      v5 = v7;
      if (v27 + 1 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1D61E2204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  sub_1D5E2D970();
  v10 = swift_allocError();
  *v11 = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  sub_1D61E3908(v5, v6, v7, v8, v9);
  v12 = a3(v10);

  return v12;
}

uint64_t sub_1D61E22C8(uint64_t (*a1)(void *))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1D5E2D970();
  v8 = swift_allocError();
  *v9 = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  sub_1D61E3908(v3, v4, v5, v6, v7);
  v10 = a1(v8);

  return v10;
}

uint64_t sub_1D61E2374(void *a1)
{
  sub_1D61E4AB8(0, &qword_1EC885140, MEMORY[0x1E69D66B8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v84 = &v83 - v8;
  v9 = sub_1D7263E2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61E4AB8(0, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v83 - v20;
  v85 = a1;
  v22 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v23 = sub_1D7263E3C();
  v24 = swift_dynamicCast();
  v25 = *(*(v23 - 8) + 56);
  if (v24)
  {
    v26 = *(v23 - 8);
    v25(v21, 0, 1, v23);
    sub_1D61E4F50(v21, v17, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
    v27 = (*(v26 + 88))(v17, v23);
    if (v27 == *MEMORY[0x1E69E6AF8])
    {
      (*(v26 + 96))(v17, v23);
      sub_1D5EEA608(0);
      (*(v10 + 32))(v13, &v17[*(v28 + 48)], v9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0x73694D2065707954;
      v87[1] = 0xEF203A686374616DLL;
LABEL_15:
      v46 = sub_1D7263E1C();
      MEMORY[0x1DA6F9910](v46);

      v36 = v87[0];
      (*(v10 + 8))(v13, v9);
LABEL_16:
      sub_1D61E4B0C(v21, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
      return v36;
    }

    if (v27 == *MEMORY[0x1E69E6B08])
    {
      (*(v26 + 96))(v17, v23);
      sub_1D5EEA608(0);
      (*(v10 + 32))(v13, &v17[*(v43 + 48)], v9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v44 = 0x80000001D73CE750;
      v45 = 0xD000000000000011;
LABEL_14:
      v87[0] = v45;
      v87[1] = v44;
      goto LABEL_15;
    }

    if (v27 == *MEMORY[0x1E69E6AF0])
    {
      (*(v26 + 96))(v17, v23);
      sub_1D5EEA7C0(0);
      (*(v10 + 32))(v13, &v17[*(v51 + 48)], v9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0x20746F4E2079654BLL;
      v87[1] = 0xEF203A646E756F46;
      v52 = sub_1D7263E1C();
      MEMORY[0x1DA6F9910](v52);

      v36 = v87[0];
      (*(v10 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_16;
    }

    if (v27 == *MEMORY[0x1E69E6B00])
    {
      (*(v26 + 96))(v17, v23);
      (*(v10 + 32))(v13, v17, v9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v44 = 0x80000001D73CE730;
      v45 = 0xD000000000000010;
      goto LABEL_14;
    }

    (*(v26 + 8))(v17, v23);
  }

  else
  {
    v25(v21, 1, 1, v23);
  }

  sub_1D61E4B0C(v21, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
  v91 = a1;
  v29 = a1;
  v30 = sub_1D725B19C();
  v31 = v84;
  v32 = swift_dynamicCast();
  v33 = *(*(v30 - 8) + 56);
  if (v32)
  {
    v34 = *(v30 - 8);
    v33(v31, 0, 1, v30);
    sub_1D61E4F50(v31, v5, &qword_1EC885140, MEMORY[0x1E69D66B8]);
    v35 = (*(v34 + 88))(v5, v30);
    if (v35 == *MEMORY[0x1E69D66A8])
    {
      (*(v34 + 8))(v5, v30);
      sub_1D61E4B0C(v31, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      return 0x6F43207974706D45;
    }

    if (v35 == *MEMORY[0x1E69D6668])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 1);
      v48 = *(v5 + 2);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v49 = 0x80000001D73CE710;
      v50 = 0xD00000000000001DLL;
LABEL_24:
      v87[0] = v50;
      v87[1] = v49;
LABEL_25:
      v53 = v47;
LABEL_26:
      MEMORY[0x1DA6F9910](v53, v48);

LABEL_27:
      v36 = v87[0];
LABEL_28:
      sub_1D61E4B0C(v31, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      return v36;
    }

    if (v35 == *MEMORY[0x1E69D6660])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 1);
      v48 = *(v5 + 2);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v49 = 0x80000001D73CE6F0;
      v50 = 0xD00000000000001CLL;
      goto LABEL_24;
    }

    if (v35 == *MEMORY[0x1E69D6658])
    {
      (*(v34 + 96))(v5, v30);

      sub_1D5B7DDE8(v5, v87);
      v85 = 0;
      v86 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x20746F4E2079654BLL, 0xEF203A646E756F46);
      __swift_project_boxed_opaque_existential_1(v87, v89);
      sub_1D726466C();
      v36 = v85;
      __swift_destroy_boxed_opaque_existential_1(v87);
      goto LABEL_28;
    }

    if (v35 == *MEMORY[0x1E69D6680])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 2);
      v48 = *(v5 + 3);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73CE6D0);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](0x20726F6620, 0xE500000000000000);
      goto LABEL_25;
    }

    if (v35 == *MEMORY[0x1E69D6688])
    {
      (*(v34 + 96))(v5, v30);
      v54 = *(v5 + 1);
      v47 = *(v5 + 2);
      v48 = *(v5 + 3);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v49 = 0x80000001D73CE6B0;
      v50 = 0xD000000000000015;
      goto LABEL_24;
    }

    if (v35 == *MEMORY[0x1E69D6650])
    {
      v36 = 0x2064696C61766E49;
      (*(v34 + 8))(v5, v30);
      sub_1D61E4B0C(v31, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      return v36;
    }

    if (v35 == *MEMORY[0x1E69D6670])
    {
      (*(v34 + 96))(v5, v30);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73CE690);
      sub_1D7262ABC();
      goto LABEL_27;
    }

    if (v35 == *MEMORY[0x1E69D6698])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 1);
      v48 = *(v5 + 2);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v49 = 0x80000001D73CE670;
      v50 = 0xD000000000000017;
      goto LABEL_24;
    }

    if (v35 == *MEMORY[0x1E69D6648])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 1);
      v48 = *(v5 + 2);

      strcpy(v87, "Invalid URL: ");
      HIWORD(v87[1]) = -4864;
      goto LABEL_25;
    }

    if (v35 == *MEMORY[0x1E69D66B0])
    {
      (*(v34 + 96))(v5, v30);
      v67 = *(v5 + 1);
      v68 = *(v5 + 2);
      v69 = *(v5 + 3);
      v48 = *(v5 + 4);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0xD000000000000018;
      v87[1] = 0x80000001D73CE650;
      MEMORY[0x1DA6F9910](v67, v68);

      MEMORY[0x1DA6F9910](0x746F672074756220, 0xE900000000000020);
      v53 = v69;
      goto LABEL_26;
    }

    if (v35 == *MEMORY[0x1E69D6678])
    {
      (*(v34 + 96))(v5, v30);

      v70 = *(v5 + 6);
      v71 = *(v5 + 7);
      v72 = *(v5 + 8);
      v73 = *(v5 + 9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0xD000000000000020;
      v87[1] = 0x80000001D73CE620;
      MEMORY[0x1DA6F9910](v70, v71);

      MEMORY[0x1DA6F9910](0x746F672074756220, 0xE900000000000020);
      MEMORY[0x1DA6F9910](v72, v73);

      v36 = v87[0];
      __swift_destroy_boxed_opaque_existential_1(v5 + 1);
      goto LABEL_28;
    }

    if (v35 == *MEMORY[0x1E69D6690])
    {
      (*(v34 + 96))(v5, v30);
      v74 = *(v5 + 1);
      v75 = *(v5 + 2);
      v76 = *(v5 + 3);
      v78 = *(v5 + 4);
      v77 = *(v5 + 5);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000022, 0x80000001D73CE5F0);
      MEMORY[0x1DA6F9910](v75, v76);

      MEMORY[0x1DA6F9910](0x746F672074756220, 0xE900000000000020);
      MEMORY[0x1DA6F9910](v78, v77);

      MEMORY[0x1DA6F9910](544432416, 0xE400000000000000);
      v85 = v74;
      v79 = sub_1D72644BC();
LABEL_88:
      MEMORY[0x1DA6F9910](v79, v80);

      v36 = v87[0];
      sub_1D61E4B0C(v84, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      return v36;
    }

    if (v35 == *MEMORY[0x1E69D66A0])
    {
      (*(v34 + 96))(v5, v30);
      v81 = *(v5 + 1);
      v82 = *(v5 + 2);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0xD000000000000017;
      v87[1] = 0x80000001D73CE5D0;
      v79 = v81;
      v80 = v82;
      goto LABEL_88;
    }

    (*(v34 + 8))(v5, v30);
    v31 = v84;
  }

  else
  {
    v33(v31, 1, 1, v30);
  }

  sub_1D61E4B0C(v31, &qword_1EC885140, MEMORY[0x1E69D66B8]);
  v85 = a1;
  v37 = a1;
  if (swift_dynamicCast())
  {
    v38 = v87[0];
    v39 = v87[1];
    v41 = v88;
    v40 = v89;
    v42 = v90;
    switch((v42 >> 59) & 0x1E | (v42 >> 2) & 1)
    {
      case 1uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v55 = 0x80000001D73CE370;
        v56 = 0xD000000000000017;
        goto LABEL_56;
      case 2uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD000000000000031, 0x80000001D73CE590);
        MEMORY[0x1DA6F9910](v38, v39);

        MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73CE350);
        v60 = v41;
        goto LABEL_59;
      case 3uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v57 = "Slot Item Sets Min Less than 0: ";
        goto LABEL_49;
      case 4uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v57 = "Slot Item Sets Max Less than 1: ";
LABEL_49:
        v87[0] = 0xD000000000000020;
        v87[1] = (v57 - 32) | 0x8000000000000000;
        LODWORD(v91) = v38;
        goto LABEL_53;
      case 5uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v87[0] = 0xD000000000000022;
        v87[1] = 0x80000001D73CE500;
        LODWORD(v91) = HIDWORD(v38);
        v62 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v62);

        MEMORY[0x1DA6F9910](2112544, 0xE300000000000000);
        LODWORD(v91) = v38;
LABEL_53:
        v63 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v63);
        goto LABEL_64;
      case 6uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v55 = 0x80000001D73CE2B0;
        v56 = 0xD000000000000027;
        goto LABEL_56;
      case 7uLL:

        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v61 = "Invalid State Machine Event Input: ";
        goto LABEL_61;
      case 8uLL:

        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v61 = "Invalid State Machine State Input: ";
LABEL_61:
        v58 = (v61 - 32) | 0x8000000000000000;
        v59 = 0xD000000000000023;
        goto LABEL_62;
      case 9uLL:

        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v58 = 0x80000001D73CE450;
        v59 = 0xD000000000000026;
LABEL_62:
        v87[0] = v59;
        v87[1] = v58;
        goto LABEL_63;
      case 0xAuLL:

        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v87[0] = 0xD000000000000028;
        v87[1] = 0x80000001D73CE420;
        v64 = sub_1D7262B1C();
        v40 = v65;

        v60 = v64;
LABEL_59:
        MEMORY[0x1DA6F9910](v60, v40);
        goto LABEL_64;
      case 0xBuLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v55 = 0x80000001D73CE400;
        v56 = 0xD00000000000001FLL;
        goto LABEL_56;
      case 0xCuLL:

        v36 = sub_1D61E2374((v42 & 0xFFFFFFFFFFFFFFBLL));

        return v36;
      case 0xDuLL:

        strcpy(v87, "Invalid Key: ");
        HIWORD(v87[1]) = -4864;
LABEL_63:
        MEMORY[0x1DA6F9910](v38, v39);
LABEL_64:

        return v87[0];
      case 0xEuLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v87[0] = 0x206E776F6E6B6E55;
        v87[1] = 0xEF203A65756C6156;
        goto LABEL_57;
      case 0xFuLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v55 = 0x80000001D73CE3E0;
        v56 = 0xD00000000000001BLL;
LABEL_56:
        v87[0] = v56;
        v87[1] = v55;
LABEL_57:
        MEMORY[0x1DA6F9910](v38, v39);
        sub_1D5EC0FE8(v38, v39, v41, v40, v42);
        return v87[0];
      case 0x10uLL:
        if (!(v88 | v87[1] | v87[0] | v89) && v90 == 0x8000000000000000)
        {
          return 0xD00000000000001ELL;
        }

        if (v90 == 0x8000000000000000 && v87[0] == 1 && !(v88 | v87[1] | v89))
        {
          return 0xD000000000000015;
        }

        return 0xD00000000000002FLL;
      default:
        v36 = 0xD000000000000020;
        sub_1D5EC0FE8(v87[0], v87[1], v88, v89, v90);
        return v36;
    }
  }

  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  v85 = a1;
  sub_1D7263F9C();
  return v87[0];
}

void sub_1D61E3908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  switch((a5 >> 59) & 0x1E | (a5 >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 6uLL:
    case 0xBuLL:
    case 0xEuLL:
    case 0xFuLL:
      goto LABEL_3;
    case 2uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xDuLL:

LABEL_3:

      break;
    case 0xCuLL:

      v6 = (a5 & 0xFFFFFFFFFFFFFFBLL);
      break;
    default:
      return;
  }
}

unint64_t sub_1D61E39D0(void *a1)
{
  sub_1D61E4AB8(0, &qword_1EC885140, MEMORY[0x1E69D66B8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v100 - v4;
  v6 = sub_1D725B19C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61E4AB8(0, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v100 - v13;
  v15 = sub_1D7263E3C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a1;
  v20 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v14, 0, 1, v15);
    (*(v16 + 32))(v19, v14, v15);
    v23 = sub_1D5EE9EE4(v19);
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    v22(v14, 1, 1, v15);
    sub_1D61E4B0C(v14, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
    v107 = a1;
    v24 = a1;
    v25 = swift_dynamicCast();
    v26 = *(v7 + 56);
    if (v25)
    {
      v26(v5, 0, 1, v6);
      (*(v7 + 32))(v10, v5, v6);
      sub_1D61E4F08(&qword_1EC885148, MEMORY[0x1E69D66B8], MEMORY[0x1E69D66C0]);
      v23 = sub_1D72644BC();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v26(v5, 1, 1, v6);
      sub_1D61E4B0C(v5, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      v112 = a1;
      v27 = a1;
      if (swift_dynamicCast())
      {
        v28 = v107;
        v29 = v108;
        v31 = v109;
        v30 = v110;
        v32 = v111;
        switch((v32 >> 59) & 0x1E | (v32 >> 2) & 1)
        {
          case 1uLL:
            v107 = 0;
            v108 = 0xE000000000000000;
            v54 = v28;
            sub_1D7263D4C();

            v55 = 0x80000001D73CE370;
            v56 = 0xD000000000000017;
            goto LABEL_41;
          case 2uLL:
            v107 = 0;
            v108 = 0xE000000000000000;
            v43 = v28;
            sub_1D7263D4C();

            v107 = 0x206E6F6974704FLL;
            v108 = 0xE700000000000000;
            MEMORY[0x1DA6F9910](v43, v29);

            MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73CE350);
            v44 = v31;
            goto LABEL_65;
          case 3uLL:
          case 4uLL:
          case 5uLL:
            return 0xD000000000000044;
          case 6uLL:
            v107 = 0;
            v108 = 0xE000000000000000;
            v54 = v28;
            sub_1D7263D4C();

            v55 = 0x80000001D73CE2B0;
            v56 = 0xD000000000000027;
LABEL_41:
            v107 = v56;
            v108 = v55;
            MEMORY[0x1DA6F9910](v54, v29);
            sub_1D5EC0FE8(v54, v29, v31, v30, v32);
            goto LABEL_67;
          case 7uLL:

            v107 = 0;
            v108 = 0xE000000000000000;
            sub_1D7263D4C();

            v107 = 0xD000000000000012;
            v108 = 0x80000001D73CE290;
            sub_1D61E1F60(v31);
            v34 = v53;
            goto LABEL_53;
          case 8uLL:

            v107 = 0;
            v108 = 0xE000000000000000;
            sub_1D7263D4C();

            v107 = 0xD000000000000012;
            v108 = 0x80000001D73CE270;
            v84 = *(v31 + 16);
            if (!v84)
            {
              goto LABEL_54;
            }

            v102 = MEMORY[0x1E69E7CC0];
            sub_1D5BFC364(0, v84, 0);
            v34 = v102;
            v101 = v31;
            v85 = (v31 + 40);
            do
            {
              v86 = *(v85 - 1);
              v87 = *v85;
              v105 = 539828256;
              v106 = 0xE400000000000000;

              MEMORY[0x1DA6F9910](v86, v87);

              v88 = v105;
              v89 = v106;
              v102 = v34;
              v91 = *(v34 + 16);
              v90 = *(v34 + 24);
              if (v91 >= v90 >> 1)
              {
                sub_1D5BFC364((v90 > 1), v91 + 1, 1);
                v34 = v102;
              }

              *(v34 + 16) = v91 + 1;
              v92 = v34 + 16 * v91;
              *(v92 + 32) = v88;
              *(v92 + 40) = v89;
              v85 += 2;
              --v84;
            }

            while (v84);
            goto LABEL_53;
          case 9uLL:

            v107 = 0;
            v108 = 0xE000000000000000;
            sub_1D7263D4C();

            v107 = 0xD000000000000012;
            v108 = 0x80000001D73CE270;
            v33 = *(v31 + 16);
            if (v33)
            {
              v102 = MEMORY[0x1E69E7CC0];
              sub_1D5BFC364(0, v33, 0);
              v34 = v102;
              v101 = v31;
              v35 = (v31 + 40);
              do
              {
                v36 = *(v35 - 1);
                v37 = *v35;
                v105 = 539828256;
                v106 = 0xE400000000000000;

                MEMORY[0x1DA6F9910](v36, v37);

                v38 = v105;
                v39 = v106;
                v102 = v34;
                v41 = *(v34 + 16);
                v40 = *(v34 + 24);
                if (v41 >= v40 >> 1)
                {
                  sub_1D5BFC364((v40 > 1), v41 + 1, 1);
                  v34 = v102;
                }

                *(v34 + 16) = v41 + 1;
                v42 = v34 + 16 * v41;
                *(v42 + 32) = v38;
                *(v42 + 40) = v39;
                v35 += 2;
                --v33;
              }

              while (v33);
LABEL_53:
            }

            else
            {
LABEL_54:

              v34 = MEMORY[0x1E69E7CC0];
            }

            v105 = v34;
            sub_1D5BBE0A8();
            sub_1D61E4F08(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
            v93 = sub_1D7261F3C();
            v30 = v94;

            v44 = v93;
            goto LABEL_65;
          case 0xAuLL:

            v107 = 0;
            v108 = 0xE000000000000000;
            sub_1D7263D4C();

            v107 = 0xD000000000000012;
            v108 = 0x80000001D73CE270;
            v74 = *(v29 + 16);
            if (v74)
            {
              v102 = MEMORY[0x1E69E7CC0];
              sub_1D5BFC364(0, v74, 0);
              v75 = v102;
              v76 = (v29 + 40);
              do
              {
                v77 = *(v76 - 1);
                v78 = *v76;
                v105 = 539828256;
                v106 = 0xE400000000000000;

                MEMORY[0x1DA6F9910](v77, v78);

                v79 = v105;
                v80 = v106;
                v102 = v75;
                v82 = *(v75 + 16);
                v81 = *(v75 + 24);
                if (v82 >= v81 >> 1)
                {
                  sub_1D5BFC364((v81 > 1), v82 + 1, 1);
                  v75 = v102;
                }

                *(v75 + 16) = v82 + 1;
                v83 = v75 + 16 * v82;
                *(v83 + 32) = v79;
                *(v83 + 40) = v80;
                v76 += 2;
                --v74;
              }

              while (v74);
            }

            else
            {

              v75 = MEMORY[0x1E69E7CC0];
            }

            v105 = v75;
            sub_1D5BBE0A8();
            sub_1D61E4F08(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
            v51 = sub_1D7261F3C();
            v30 = v98;

            goto LABEL_64;
          case 0xBuLL:
            sub_1D5EC0FE8(v107, v108, v109, v110, v111);
            return 0xD000000000000038;
          case 0xCuLL:

            v23 = sub_1D61E39D0((v32 & 0xFFFFFFFFFFFFFFBLL));

            return v23;
          case 0xDuLL:

            if (qword_1EDF2F570 != -1)
            {
              swift_once();
            }

            v57 = sub_1D7261D6C();
            v107 = 0;
            v108 = 0xE000000000000000;
            sub_1D7263D4C();

            v107 = 0xD000000000000010;
            v108 = 0x80000001D73CE3C0;
            v58 = *(v31 + 16);
            if (v58)
            {
              v104 = MEMORY[0x1E69E7CC0];
              sub_1D5BFC364(0, v58, 0);
              v59 = v104;
              v101 = v31;
              v60 = (v31 + 40);
              do
              {
                v62 = *(v60 - 1);
                v61 = *v60;
                v105 = 539828256;
                v106 = 0xE400000000000000;
                v63 = *(v57 + 16);

                if (v63 && (v64 = sub_1D5B69D90(v62, v61), (v65 & 1) != 0))
                {
                  v66 = (*(v57 + 56) + 16 * v64);
                  v67 = v66[1];
                  v102 = *v66;
                  v103 = v67;

                  MEMORY[0x1DA6F9910](544370464, 0xE400000000000000);
                  MEMORY[0x1DA6F9910](v62, v61);
                  v62 = v102;
                  v68 = v103;
                }

                else
                {

                  v68 = v61;
                }

                MEMORY[0x1DA6F9910](v62, v68);

                v69 = v105;
                v70 = v106;
                v104 = v59;
                v72 = *(v59 + 16);
                v71 = *(v59 + 24);
                if (v72 >= v71 >> 1)
                {
                  sub_1D5BFC364((v71 > 1), v72 + 1, 1);
                  v59 = v104;
                }

                *(v59 + 16) = v72 + 1;
                v73 = v59 + 16 * v72;
                *(v73 + 32) = v69;
                *(v73 + 40) = v70;
                v60 += 2;
                --v58;
              }

              while (v58);
            }

            else
            {

              v59 = MEMORY[0x1E69E7CC0];
            }

            v105 = v59;
            sub_1D5BBE0A8();
            sub_1D61E4F08(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
            v95 = sub_1D7261F3C();
            v97 = v96;

            MEMORY[0x1DA6F9910](v95, v97);
            goto LABEL_66;
          case 0xEuLL:
            sub_1D5EC0FE8(v107, v108, v109, v110, v111);
            return 0xD000000000000027;
          case 0xFuLL:
            sub_1D5EC0FE8(v107, v108, v109, v110, v111);
            v107 = 0;
            v108 = 0xE000000000000000;
            sub_1D7263D4C();
            MEMORY[0x1DA6F9910](0xD000000000000034, 0x80000001D73CE190);
            v102 = MEMORY[0x1E69E7CC0];
            sub_1D5BFC364(0, 1, 0);
            v45 = v102;
            v105 = 0;
            v106 = 0xE000000000000000;
            MEMORY[0x1DA6F9910](539828256, 0xE400000000000000);
            sub_1D7263F9C();
            v46 = v105;
            v47 = v106;
            v49 = *(v45 + 16);
            v48 = *(v45 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_1D5BFC364((v48 > 1), v49 + 1, 1);
              v45 = v102;
            }

            *(v45 + 16) = v49 + 1;
            v50 = v45 + 16 * v49;
            *(v50 + 32) = v46;
            *(v50 + 40) = v47;
            v105 = v45;
            sub_1D5BBE0A8();
            sub_1D61E4F08(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
            v51 = sub_1D7261F3C();
            v30 = v52;

LABEL_64:
            v44 = v51;
LABEL_65:
            MEMORY[0x1DA6F9910](v44, v30);
LABEL_66:

LABEL_67:
            v23 = v107;
            break;
          case 0x10uLL:
            if (v109 | v108 | v107 | v110 || v111 != 0x8000000000000000)
            {
              if (v111 == 0x8000000000000000 && v107 == 1 && !(v109 | v108 | v110))
              {
                v23 = 0xD000000000000015;
              }

              else
              {
                v23 = 0xD00000000000002FLL;
              }
            }

            else
            {
              v23 = 0xD000000000000044;
            }

            break;
          default:
            sub_1D5EC0FE8(v107, v108, v109, v110, v111);
            v23 = 0xD000000000000020;
            break;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v23;
}

unint64_t sub_1D61E4948(uint64_t a1)
{
  result = sub_1D5E2D970();
  *(a1 + 8) = result;
  return result;
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatDecodingErrorO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return (v1 >> 59) & 0x1E | (v1 >> 2) & 1;
  }

  else
  {
    return (*a1 + 16);
  }
}

uint64_t sub_1D61E4994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x70 && *(a1 + 40))
  {
    return (*a1 + 112);
  }

  v3 = ((((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7) >> 2) & 0xFFFFFF9F | (32 * (*(a1 + 32) & 3))) ^ 0x7F;
  if (v3 >= 0x6F)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D61E49F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 112;
    if (a3 >= 0x70)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D61E4A68(void *result, uint64_t a2)
{
  if (a2 < 0x10)
  {
    result[4] = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | result[4] & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (a2 - 16);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0x8000000000000000;
  }

  return result;
}

void sub_1D61E4AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D61E4B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D61E4AB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D61E4B68(void *a1, void *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = a4[1];
  *a1 = *a4;
  a1[1] = v6;
  *a2 = v4;
  a2[1] = v5;
}

void *sub_1D61E4BA4(void *a1)
{
  v2 = sub_1D725AAFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1;
  v7 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x1E69D64D0])
  {
    (*(v3 + 8))(v6, v2);
LABEL_5:
    v9 = a1;
    goto LABEL_6;
  }

  (*(v3 + 96))(v6, v2);
  v8 = *v6;
  a1 = sub_1D61E4BA4(*v6);

LABEL_6:
  return a1;
}

uint64_t sub_1D61E4D1C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D61E4D78(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D61E4DC0(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

void sub_1D61E4E38(BOOL *a3@<X8>)
{
  v4 = sub_1D72641CC();

  *a3 = v4 != 0;
}

uint64_t sub_1D61E4E90(uint64_t a1)
{
  v2 = sub_1D61E5270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E4ECC(uint64_t a1)
{
  v2 = sub_1D61E5270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E4F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D61E4F50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D61E4AB8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D61E4FBC(void *a1, uint64_t a2)
{
  sub_1D61E5214(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.allowSourceMaps.getter(v10);

  if (v11)
  {
    a2 = sub_1D61E4BA4(a2);
    v25 = a2;
    v12 = a2;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    if (!swift_dynamicCast() || (v13 = (v24 >> 59) & 0x1E | (v24 >> 2) & 1, sub_1D5EC0FE8(v21, *(&v21 + 1), v22, v23, v24), v13 != 12))
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D61E5270();
      sub_1D7264B0C();
      sub_1D61E52C4();
      sub_1D726431C();
      v20 = v21;
      v16 = a2 | 0x6000000000000000;
      v17 = v22;
      v18 = v23;
      sub_1D5E2D970();
      a2 = swift_allocError();
      *v19 = v20;
      *(v19 + 16) = v17;
      *(v19 + 24) = v18;
      *(v19 + 32) = v16;
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    v14 = a2;
  }

  return a2;
}

void sub_1D61E5214(uint64_t a1)
{
  if (!qword_1EDF19C90)
  {
    sub_1D61E5270();
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19C90);
    }
  }
}

unint64_t sub_1D61E5270()
{
  result = qword_1EDF2C930;
  if (!qword_1EDF2C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C930);
  }

  return result;
}

unint64_t sub_1D61E52C4()
{
  result = qword_1EDF31210;
  if (!qword_1EDF31210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31210);
  }

  return result;
}

unint64_t sub_1D61E532C()
{
  result = qword_1EC885150;
  if (!qword_1EC885150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885150);
  }

  return result;
}

unint64_t sub_1D61E5384()
{
  result = qword_1EDF2C920;
  if (!qword_1EDF2C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C920);
  }

  return result;
}

unint64_t sub_1D61E53DC()
{
  result = qword_1EDF2C928;
  if (!qword_1EDF2C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C928);
  }

  return result;
}

uint64_t FormatBindingLayeredMediaExpressionLogic.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D61E54C0()
{
  result = qword_1EC885158;
  if (!qword_1EC885158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885158);
  }

  return result;
}

unint64_t sub_1D61E5514(uint64_t a1)
{
  result = sub_1D61E553C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61E553C()
{
  result = qword_1EC885160;
  if (!qword_1EC885160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885160);
  }

  return result;
}

unint64_t sub_1D61E5590(void *a1)
{
  a1[1] = sub_1D5F2E4C8();
  a1[2] = sub_1D5F2E51C();
  result = sub_1D61E54C0();
  a1[3] = result;
  return result;
}

void sub_1D61E5630(const char *a1, uint64_t a2, uint64_t a3)
{
  v117 = a2;
  sub_1D61E65E0(0, &qword_1EC89ABF0, MEMORY[0x1E69D7970]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v129 = &v108 - v8;
  v120 = sub_1D725D52C();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v9);
  v128 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1D725D7FC();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v11);
  v113 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61E65E0(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v118 = &v108 - v15;
  sub_1D61E65E0(0, &unk_1EC88DF00, MEMORY[0x1E69D8750]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v108 - v18;
  v108 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v108, v20);
  v109 = (&v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1D725B47C();
  v132 = *(v22 - 8);
  v133 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v127 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v126 = &v108 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v108 - v30);
  MEMORY[0x1EEE9AC00](v32, v33);
  v131 = &v108 - v34;
  v35 = *(v3 + 16);
  v36 = v35[5];
  v37 = v35[6];
  __swift_project_boxed_opaque_existential_1(v35 + 2, v36);
  v38 = (*(v37 + 32))(a1, v36, v37);
  type metadata accessor for DiagnosticDataDirectoryNameGenerator();
  *(swift_initStackObject() + 16) = 0;
  v39 = sub_1D70B57CC(a1, v38);

  v40 = *(*(v3 + 24) + 120);
  v110 = a1;
  v134 = a1;
  os_unfair_lock_lock(v40 + 6);
  sub_1D61E6634(v137);
  os_unfair_lock_unlock(v40 + 6);
  v123 = v137[0];
  if (v137[0] >> 62)
  {
    v41 = sub_1D7263BFC();
  }

  else
  {
    v41 = *((v137[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v116 = a3;
  v115 = v19;
  v111 = 0;
  if (v41)
  {
    if (v41 < 1)
    {
      __break(1u);
      return;
    }

    v42 = 0;
    v43 = v123;
    v124 = (v123 & 0xC000000000000001);
    LODWORD(v122) = *MEMORY[0x1E69D67E0];
    v44 = (v132 + 104);
    v130 = v132 + 32;
    LODWORD(v121) = *MEMORY[0x1E69D67D8];
    v45 = v39;
    v125 = v41;
    do
    {
      if (v124)
      {
        v46 = MEMORY[0x1DA6FB460](v42, v43);
      }

      else
      {
        v46 = *(v43 + 8 * v42 + 32);
      }

      v47 = UIImagePNGRepresentation(*(v46 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_image));
      if (v47)
      {
        v48 = v47;
        v49 = sub_1D725867C();
        v51 = v50;

        v52 = swift_allocObject();
        v52[2] = v49;
        v52[3] = v51;
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_1D5E3E824(v49, v51);
        sub_1D7263D4C();

        strcpy(v137, "gen-datastore-");
        HIBYTE(v137[1]) = -18;
        v53 = sub_1D725893C();
        MEMORY[0x1DA6F9910](v53);

        v54 = v137[1];
        v52[4] = v137[0];
        v52[5] = v54;
        v52[6] = 6778480;
        v52[7] = 0xE300000000000000;
        *v131 = v52;
        (*v44)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1D6990368(0, v45[2] + 1, 1, v45);
        }

        v56 = v45[2];
        v55 = v45[3];
        if (v56 >= v55 >> 1)
        {
          v45 = sub_1D6990368((v55 > 1), v56 + 1, 1, v45);
        }

        v43 = v123;
        sub_1D5B952F8(v49, v51);
        v45[2] = v56 + 1;
        (*(v132 + 32))(v45 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v56, v131, v133);
      }

      v57 = *(v46 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_datastore);
      if (v57)
      {
        v58 = [*(v57 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
        v59 = sub_1D726207C();
        v60 = v45;
        v62 = v61;

        v63 = swift_allocObject();
        v63[2] = v59;
        v63[3] = v62;
        v45 = v60;
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_1D7263D4C();

        strcpy(v137, "gen-image-");
        BYTE3(v137[1]) = 0;
        HIDWORD(v137[1]) = -369098752;
        sub_1D725895C();
        sub_1D61E6708();
        v64 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v64);

        MEMORY[0x1DA6F9910](0x6E6F736A2ELL, 0xE500000000000000);
        v65 = v137[1];
        v63[4] = v137[0];
        v63[5] = v65;
        *v31 = v63;
        (*v44)(v31, v121, v133);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1D6990368(0, v60[2] + 1, 1, v60);
        }

        v67 = v45[2];
        v66 = v45[3];
        if (v67 >= v66 >> 1)
        {
          v45 = sub_1D6990368((v66 > 1), v67 + 1, 1, v45);
        }

        v45[2] = v67 + 1;
        (*(v132 + 32))(v45 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v67, v31, v133);
      }

      else
      {
      }

      v42 = (v42 + 1);
    }

    while (v125 != v42);
  }

  else
  {
    v45 = v39;
  }

  v68 = v109;
  sub_1D61880A0(v110, v109);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = v45;
    strcpy(v137, "Web Embed <");
    HIDWORD(v137[1]) = -352321536;
    v70 = WebEmbedDataVisualization.identifier.getter();
    MEMORY[0x1DA6F9910](v70);

    MEMORY[0x1DA6F9910](62, 0xE100000000000000);
    v71 = v137[0];
    v72 = v137[1];
    sub_1D61E6650(v68);
    v73 = v120;
  }

  else
  {
    v74 = 0xE700000000000000;
    v75 = *v68;
    v76 = *v68 >> 61;
    strcpy(v137, "Sports ");
    v137[1] = 0xE700000000000000;
    v77 = 0x74656B63617262;
    v78 = 0xEC00000074726F70;
    v79 = 0x65527972756A6E69;
    if (v76 != 5)
    {
      v79 = 0x6579616C5079656BLL;
      v78 = 0xE900000000000072;
    }

    v80 = 0xE800000000000000;
    v81 = 0x65726F6353786F62;
    if (v76 != 3)
    {
      v81 = 0x726F6353656E696CLL;
      v80 = 0xE900000000000065;
    }

    if (v76 <= 4)
    {
      v79 = v81;
      v78 = v80;
    }

    if (v76 == 1)
    {
      v77 = 0x676E69646E617473;
      v74 = 0xE800000000000000;
    }

    if (!v76)
    {
      v77 = 0x65726F6373;
      v74 = 0xE500000000000000;
    }

    if (v76 <= 2)
    {
      v82 = v74;
    }

    else
    {
      v77 = v79;
      v82 = v78;
    }

    v73 = v120;
    v69 = v45;
    v135 = v77;
    v136 = v82;
    sub_1D5BF4D9C();
    v83 = sub_1D7263A0C();
    v85 = v84;

    MEMORY[0x1DA6F9910](v83, v85);

    MEMORY[0x1DA6F9910](15392, 0xE200000000000000);
    v135 = v75;
    v86 = SportsDataVisualization.umcCanonicalId.getter();
    MEMORY[0x1DA6F9910](v86);

    MEMORY[0x1DA6F9910](62, 0xE100000000000000);

    v71 = v137[0];
    v72 = v137[1];
  }

  sub_1D725F82C();
  v87 = sub_1D725F7DC();
  if (qword_1EC87D8A8 != -1)
  {
    swift_once();
  }

  v88 = sub_1D725D19C();
  v89 = __swift_project_value_buffer(v88, qword_1EC88FCE0);
  v90 = *(v88 - 8);
  v91 = v118;
  (*(v90 + 16))(v118, v89, v88);
  (*(v90 + 56))(v91, 0, 1, v88);
  v92 = v69;
  v93 = v69[2];
  if (v93)
  {
    v110 = v72;
    v121 = v71;
    v122 = v87;
    v131 = *(v132 + 16);
    v94 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v123 = v92;
    v95 = v92 + v94;
    v130 = *(v132 + 72);
    v132 += 16;
    v125 = (v132 - 8);
    v96 = (v119 + 48);
    v124 = (v119 + 32);
    v97 = MEMORY[0x1E69E7CC0];
    v98 = v126;
    do
    {
      v99 = v133;
      v100 = v131;
      (v131)(v98, v95, v133);
      (v100)(v127, v98, v99);
      v101 = v129;
      sub_1D725D51C();
      (*v125)(v98, v99);
      if ((*v96)(v101, 1, v73) == 1)
      {
        sub_1D61E66AC(v101, &qword_1EC89ABF0, MEMORY[0x1E69D7970]);
      }

      else
      {
        v102 = *v124;
        (*v124)(v128, v101, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D69932BC(0, *(v97 + 2) + 1, 1, v97);
        }

        v104 = *(v97 + 2);
        v103 = *(v97 + 3);
        if (v104 >= v103 >> 1)
        {
          v97 = sub_1D69932BC((v103 > 1), v104 + 1, 1, v97);
        }

        *(v97 + 2) = v104 + 1;
        v73 = v120;
        v102(&v97[((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v104], v128, v120);
      }

      v95 += v130;
      --v93;
    }

    while (v93);
  }

  swift_getObjectType();
  (*(v112 + 104))(v113, *MEMORY[0x1E69D79C8], v114);
  v105 = v115;
  sub_1D725F61C();
  v106 = sub_1D725F62C();
  (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
  v107 = v111;
  sub_1D725D9CC();
  if (v107)
  {

    sub_1D61E66AC(v105, &unk_1EC88DF00, MEMORY[0x1E69D8750]);
  }

  else
  {
    sub_1D61E66AC(v105, &unk_1EC88DF00, MEMORY[0x1E69D8750]);
  }
}

void sub_1D61E65E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D61E6650(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedDataVisualization(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D61E66AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D61E65E0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D61E6708()
{
  result = qword_1EC885168;
  if (!qword_1EC885168)
  {
    sub_1D725895C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885168);
  }

  return result;
}

unint64_t sub_1D61E6764()
{
  v1 = *v0;
  v2 = 0x6573616261746164;
  v3 = 0xD000000000000014;
  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0x4F6B726F7774656ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144726566657270;
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

uint64_t sub_1D61E6820@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D61EBB04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D61E6848(uint64_t a1)
{
  v2 = sub_1D61EA6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6884(uint64_t a1)
{
  v2 = sub_1D61EA6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E68CC(uint64_t a1)
{
  v2 = sub_1D61EA670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6908(uint64_t a1)
{
  v2 = sub_1D61EA670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E6944(uint64_t a1)
{
  v2 = sub_1D61EA520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6980(uint64_t a1)
{
  v2 = sub_1D61EA520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E69BC(uint64_t a1)
{
  v2 = sub_1D61EA61C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E69F8(uint64_t a1)
{
  v2 = sub_1D61EA61C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E6A40(uint64_t a1)
{
  v2 = sub_1D61EA574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6A7C(uint64_t a1)
{
  v2 = sub_1D61EA574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E6AB8(uint64_t a1)
{
  v2 = sub_1D61EA5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6AF4(uint64_t a1)
{
  v2 = sub_1D61EA5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedServiceOptions.RootCursorSource.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D61EAC1C(0, &qword_1EDF02938, sub_1D61EA520, &type metadata for FeedServiceOptions.RootCursorSource.NetworkOnlyCodingKeys, MEMORY[0x1E69E6F58]);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v53 = &v47 - v5;
  sub_1D61EAC1C(0, &qword_1EDF02918, sub_1D61EA574, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseDateIntervalCodingKeys, v2);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v62 = &v47 - v8;
  v9 = sub_1D7257ADC();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61EAC1C(0, &qword_1EDF02920, sub_1D61EA5C8, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseMaxAgeCodingKeys, v2);
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v56 = &v47 - v14;
  sub_1D61EAC1C(0, &qword_1EDF02928, sub_1D61EA61C, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseCodingKeys, v2);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v48 = &v47 - v17;
  sub_1D61EAC1C(0, &qword_1EDF02930, sub_1D61EA670, &type metadata for FeedServiceOptions.RootCursorSource.DatabaseOnlyCodingKeys, v2);
  v19 = v18;
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v47 - v21;
  v23 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61EAC1C(0, &qword_1EDF02940, sub_1D61EA6C4, &type metadata for FeedServiceOptions.RootCursorSource.CodingKeys, v2);
  v64 = *(v27 - 8);
  v65 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v47 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA6C4();
  sub_1D7264B5C();
  sub_1D61EA9AC(v63, v26, type metadata accessor for FeedServiceOptions.RootCursorSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v56;
    v37 = v57;
    v39 = v58;
    v38 = v59;
    v40 = v62;
    v41 = v60;
    if (EnumCaseMultiPayload)
    {
      v44 = v26;
      v45 = v61;
      (*(v60 + 32))(v59, v44, v61);
      v69 = 3;
      sub_1D61EA574();
      v42 = v65;
      sub_1D726436C();
      sub_1D61EA718(&qword_1EDF18AF8, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
      v46 = v52;
      sub_1D726443C();
      (*(v51 + 8))(v40, v46);
      (*(v41 + 8))(v38, v45);
    }

    else
    {
      v68 = 2;
      sub_1D61EA5C8();
      v42 = v65;
      sub_1D726436C();
      sub_1D726441C();
      (*(v37 + 8))(v36, v39);
    }

    return (*(v64 + 8))(v30, v42);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v66 = 0;
      sub_1D61EA670();
      v33 = v65;
      sub_1D726436C();
      (*(v47 + 8))(v22, v19);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v67 = 1;
        sub_1D61EA61C();
        v32 = v48;
        v33 = v65;
        sub_1D726436C();
        v35 = v49;
        v34 = v50;
      }

      else
      {
        v70[0] = 4;
        sub_1D61EA520();
        v32 = v53;
        v33 = v65;
        sub_1D726436C();
        v35 = v54;
        v34 = v55;
      }

      (*(v35 + 8))(v32, v34);
    }

    return (*(v64 + 8))(v30, v33);
  }
}

uint64_t FeedServiceOptions.RootCursorSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D61EAC1C(0, &qword_1EDF03C28, sub_1D61EA520, &type metadata for FeedServiceOptions.RootCursorSource.NetworkOnlyCodingKeys, MEMORY[0x1E69E6F48]);
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v85 = &v72 - v6;
  sub_1D61EAC1C(0, &qword_1EDF03C08, sub_1D61EA574, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseDateIntervalCodingKeys, v3);
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v90 = &v72 - v10;
  sub_1D61EAC1C(0, &qword_1EDF03C10, sub_1D61EA5C8, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseMaxAgeCodingKeys, v3);
  v12 = *(v11 - 8);
  v79 = v11;
  v80 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v89 = &v72 - v14;
  sub_1D61EAC1C(0, &qword_1EDF03C18, sub_1D61EA61C, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseCodingKeys, v3);
  v78 = v15;
  v77 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v88 = &v72 - v17;
  sub_1D61EAC1C(0, &qword_1EDF03C20, sub_1D61EA670, &type metadata for FeedServiceOptions.RootCursorSource.DatabaseOnlyCodingKeys, v3);
  v76 = v18;
  v75 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v87 = &v72 - v20;
  sub_1D61EAC1C(0, &qword_1EDF03C30, sub_1D61EA6C4, &type metadata for FeedServiceOptions.RootCursorSource.CodingKeys, v3);
  v22 = v21;
  v86 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v72 - v24;
  v26 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v72 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v72 - v36;
  v38 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D61EA6C4();
  v39 = v93;
  sub_1D7264B0C();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v72 = v33;
  v93 = 0;
  v40 = v87;
  v73 = v29;
  v41 = v88;
  v42 = v89;
  v43 = v90;
  v74 = v37;
  v44 = v91;
  v45 = sub_1D726433C();
  v46 = (2 * *(v45 + 16)) | 1;
  v95 = v45;
  v96 = v45 + 32;
  v97 = 0;
  v98 = v46;
  v47 = sub_1D60F6DE8();
  if (v47 == 5 || v97 != v98 >> 1)
  {
    v52 = sub_1D7263E3C();
    swift_allocError();
    v54 = v53;
    sub_1D5EEA608(0);
    *v54 = v26;
    v48 = v22;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v47 <= 1u)
  {
    if (v47)
    {
      v94 = 1;
      sub_1D61EA61C();
      v57 = v22;
      v66 = v93;
      sub_1D72641EC();
      v59 = v44;
      v60 = v86;
      if (!v66)
      {
        (*(v77 + 8))(v41, v78);
        (*(v60 + 8))(v25, v22);
        swift_unknownObjectRelease();
        v71 = v74;
        goto LABEL_23;
      }
    }

    else
    {
      v94 = 0;
      sub_1D61EA670();
      v56 = v40;
      v57 = v22;
      v58 = v93;
      sub_1D72641EC();
      v59 = v44;
      v60 = v86;
      if (!v58)
      {
        (*(v75 + 8))(v56, v76);
        (*(v60 + 8))(v25, v22);
        swift_unknownObjectRelease();
        v71 = v74;
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v70 = v92;
        goto LABEL_25;
      }
    }

    (*(v60 + 8))(v25, v57);
    goto LABEL_11;
  }

  if (v47 != 2)
  {
    if (v47 == 3)
    {
      v94 = 3;
      sub_1D61EA574();
      v48 = v22;
      v49 = v93;
      sub_1D72641EC();
      if (!v49)
      {
        sub_1D7257ADC();
        sub_1D61EA718(&qword_1EDF18AF0, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
        v50 = v73;
        v51 = v83;
        sub_1D726431C();
        (*(v84 + 8))(v43, v51);
        (*(v86 + 8))(v25, v22);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v71 = v74;
        sub_1D5B96CF8(v50, v74);
LABEL_24:
        v70 = v92;
        v59 = v44;
        goto LABEL_25;
      }
    }

    else
    {
      v94 = 4;
      sub_1D61EA520();
      v64 = v85;
      v48 = v22;
      v65 = v93;
      sub_1D72641EC();
      if (!v65)
      {
        (*(v81 + 8))(v64, v82);
        (*(v86 + 8))(v25, v22);
        swift_unknownObjectRelease();
        v71 = v74;
        swift_storeEnumTagMultiPayload();
        goto LABEL_24;
      }
    }

    goto LABEL_10;
  }

  v94 = 2;
  sub_1D61EA5C8();
  v48 = v22;
  v61 = v93;
  sub_1D72641EC();
  if (v61)
  {
LABEL_10:
    (*(v86 + 8))(v25, v48);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v59 = v44;
  v62 = v79;
  sub_1D72642DC();
  v63 = v86;
  v68 = v67;
  (*(v80 + 8))(v42, v62);
  (*(v63 + 8))(v25, v22);
  swift_unknownObjectRelease();
  v69 = v72;
  *v72 = v68;
  swift_storeEnumTagMultiPayload();
  v71 = v74;
  sub_1D5B96CF8(v69, v74);
  v70 = v92;
LABEL_25:
  sub_1D5B96CF8(v71, v59);
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

BOOL static FeedServiceOptions.RootCursorFreshness.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D61E7E54(uint64_t a1)
{
  v2 = sub_1D61EA7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E7E90(uint64_t a1)
{
  v2 = sub_1D61EA7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E7ECC()
{
  if (*v0)
  {
    return 0x616854726577656ELL;
  }

  else
  {
    return 7958113;
  }
}

void sub_1D61E7F04(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7958113 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616854726577656ELL && a2 == 0xE90000000000006ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D61E7FE8(uint64_t a1)
{
  v2 = sub_1D61EA808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8024(uint64_t a1)
{
  v2 = sub_1D61EA808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D61E8060(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D61E80E0(uint64_t a1)
{
  v2 = sub_1D61EA760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E811C(uint64_t a1)
{
  v2 = sub_1D61EA760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedServiceOptions.RootCursorFreshness.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D61EAC1C(0, &qword_1EDF02900, sub_1D61EA760, &type metadata for FeedServiceOptions.RootCursorFreshness.NewerThanCodingKeys, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v23 = &v21 - v6;
  sub_1D61EAC1C(0, &qword_1EDF02908, sub_1D61EA7B4, &type metadata for FeedServiceOptions.RootCursorFreshness.AnyCodingKeys, v3);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  sub_1D61EAC1C(0, &qword_1EDF02910, sub_1D61EA808, &type metadata for FeedServiceOptions.RootCursorFreshness.CodingKeys, v3);
  v26 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  LOBYTE(v3) = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA808();
  sub_1D7264B5C();
  if (v3)
  {
    v27 = 0;
    sub_1D61EA7B4();
    v16 = v26;
    sub_1D726436C();
    (*(v21 + 8))(v10, v22);
    return (*(v12 + 8))(v15, v16);
  }

  else
  {
    v28 = 1;
    sub_1D61EA760();
    v18 = v23;
    v19 = v26;
    sub_1D726436C();
    v20 = v25;
    sub_1D726441C();
    (*(v24 + 8))(v18, v20);
    return (*(v12 + 8))(v15, v19);
  }
}

uint64_t FeedServiceOptions.RootCursorFreshness.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D61EAC1C(0, &qword_1EDF03BF0, sub_1D61EA760, &type metadata for FeedServiceOptions.RootCursorFreshness.NewerThanCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v48 = &v40[-v7];
  sub_1D61EAC1C(0, &qword_1EDF03BF8, sub_1D61EA7B4, &type metadata for FeedServiceOptions.RootCursorFreshness.AnyCodingKeys, v3);
  v9 = v8;
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v40[-v11];
  sub_1D61EAC1C(0, &qword_1EDF03C00, sub_1D61EA808, &type metadata for FeedServiceOptions.RootCursorFreshness.CodingKeys, v3);
  v14 = v13;
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v40[-v16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA808();
  v18 = v49;
  sub_1D7264B0C();
  if (v18)
  {
    goto LABEL_7;
  }

  v42 = v9;
  v20 = v47;
  v19 = v48;
  v21 = v46;
  v49 = a1;
  v22 = sub_1D726433C();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_1D60F9620();
  v25 = v14;
  v26 = v17;
  if (v24 == 2 || v53 != v54 >> 1)
  {
    v32 = sub_1D7263E3C();
    swift_allocError();
    v34 = v33;
    sub_1D5EEA608(0);
    *v34 = &type metadata for FeedServiceOptions.RootCursorFreshness;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v21 + 8))(v26, v14);
    swift_unknownObjectRelease();
    a1 = v49;
LABEL_7:
    v35 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v27 = v21;
  v41 = v24;
  if (v24)
  {
    v50 = 1;
    sub_1D61EA760();
    v28 = v19;
    sub_1D72641EC();
    v29 = v45;
    v30 = v17;
    v31 = v43;
    sub_1D72642DC();
    v39 = v38;
    (*(v44 + 8))(v28, v31);
    (*(v27 + 8))(v30, v25);
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0;
    sub_1D61EA7B4();
    v37 = v12;
    sub_1D72641EC();
    v29 = v45;
    (*(v20 + 8))(v37, v42);
    (*(v21 + 8))(v26, v25);
    swift_unknownObjectRelease();
    v39 = 0;
  }

  *v29 = v39;
  *(v29 + 8) = (v41 & 1) == 0;
  v35 = v49;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

BOOL sub_1D61E8A14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D61E8A94()
{
  v1 = 0x746C7561666564;
  if (*v0 != 1)
  {
    v1 = 0x656E696C66666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D61E8AE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D61EBCD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D61E8B10(uint64_t a1)
{
  v2 = sub_1D61EA958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8B4C(uint64_t a1)
{
  v2 = sub_1D61EA958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E8B88(uint64_t a1)
{
  v2 = sub_1D61EA8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8BC4(uint64_t a1)
{
  v2 = sub_1D61EA8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E8C00(uint64_t a1)
{
  v2 = sub_1D61EA904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8C3C(uint64_t a1)
{
  v2 = sub_1D61EA904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E8C78(uint64_t a1)
{
  v2 = sub_1D61EA85C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8CB4(uint64_t a1)
{
  v2 = sub_1D61EA85C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedServiceOptions.Database.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D61EAC1C(0, &qword_1EDF028E0, sub_1D61EA85C, &type metadata for FeedServiceOptions.Database.OfflineCodingKeys, MEMORY[0x1E69E6F58]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v32 = &v27 - v6;
  sub_1D61EAC1C(0, &qword_1EDF028E8, sub_1D61EA8B0, &type metadata for FeedServiceOptions.Database.DefaultCodingKeys, v3);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v29 = &v27 - v9;
  sub_1D61EAC1C(0, &qword_1EDF028F0, sub_1D61EA904, &type metadata for FeedServiceOptions.Database.NoneCodingKeys, v3);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  sub_1D61EAC1C(0, &qword_1EDF028F8, sub_1D61EA958, &type metadata for FeedServiceOptions.Database.CodingKeys, v3);
  v35 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA958();
  sub_1D7264B5C();
  v20 = (v15 + 8);
  if (v19)
  {
    if (v19 == 1)
    {
      v37 = 1;
      sub_1D61EA8B0();
      v21 = v29;
      v22 = v35;
      sub_1D726436C();
      (*(v30 + 8))(v21, v31);
      return (*v20)(v18, v22);
    }

    v38 = 2;
    sub_1D61EA85C();
    v13 = v32;
    v24 = v35;
    sub_1D726436C();
    v26 = v33;
    v25 = v34;
  }

  else
  {
    v36 = 0;
    sub_1D61EA904();
    v24 = v35;
    sub_1D726436C();
    v26 = v27;
    v25 = v28;
  }

  (*(v26 + 8))(v13, v25);
  return (*v20)(v18, v24);
}

uint64_t FeedServiceOptions.Database.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FeedServiceOptions.Database.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D61EAC1C(0, &qword_1EDF03BD0, sub_1D61EA85C, &type metadata for FeedServiceOptions.Database.OfflineCodingKeys, MEMORY[0x1E69E6F48]);
  v40 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v36 - v6;
  sub_1D61EAC1C(0, &qword_1EDF03BD8, sub_1D61EA8B0, &type metadata for FeedServiceOptions.Database.DefaultCodingKeys, v3);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v42 = &v36 - v9;
  sub_1D61EAC1C(0, &qword_1EDF03BE0, sub_1D61EA904, &type metadata for FeedServiceOptions.Database.NoneCodingKeys, v3);
  v11 = v10;
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - v13;
  sub_1D61EAC1C(0, &qword_1EDF03BE8, sub_1D61EA958, &type metadata for FeedServiceOptions.Database.CodingKeys, v3);
  v16 = v15;
  v44 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v36 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA958();
  v20 = v45;
  sub_1D7264B0C();
  if (v20)
  {
    goto LABEL_8;
  }

  v22 = v42;
  v21 = v43;
  v45 = a1;
  v23 = v19;
  v24 = sub_1D726433C();
  v25 = (2 * *(v24 + 16)) | 1;
  v46 = v24;
  v47 = v24 + 32;
  v48 = 0;
  v49 = v25;
  v26 = sub_1D60F961C();
  if (v26 == 3 || v48 != v49 >> 1)
  {
    v29 = sub_1D7263E3C();
    swift_allocError();
    v31 = v30;
    sub_1D5EEA608(0);
    *v31 = &type metadata for FeedServiceOptions.Database;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v44 + 8))(v19, v16);
    swift_unknownObjectRelease();
    a1 = v45;
LABEL_8:
    v32 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  if (v26)
  {
    LODWORD(v36) = v26;
    v27 = v44;
    if (v26 == 1)
    {
      v50 = 1;
      sub_1D61EA8B0();
      sub_1D72641EC();
      v28 = v41;
      (*(v38 + 8))(v22, v39);
    }

    else
    {
      v50 = 2;
      sub_1D61EA85C();
      sub_1D72641EC();
      v28 = v41;
      (*(v37 + 8))(v21, v40);
    }

    (*(v27 + 8))(v23, v16);
    swift_unknownObjectRelease();
    v34 = v36;
  }

  else
  {
    v34 = v26;
    v50 = 0;
    sub_1D61EA904();
    sub_1D72641EC();
    v35 = v44;
    (*(v36 + 8))(v14, v11);
    (*(v35 + 8))(v19, v16);
    swift_unknownObjectRelease();
    v28 = v41;
  }

  *v28 = v34;
  v32 = v45;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t FeedServiceOptions.rootCursorFreshness.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedServiceOptions(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t FeedServiceOptions.database.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedServiceOptions(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1D61E988C()
{
  v0 = type metadata accessor for FeedServiceOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EDF38578);
  v1 = __swift_project_value_buffer(v0, qword_1EDF38578);
  type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  result = swift_storeEnumTagMultiPayload();
  *v1 = 0;
  v3 = &v1[*(v0 + 24)];
  *v3 = 0;
  v3[8] = 1;
  v1[*(v0 + 28)] = 1;
  return result;
}

uint64_t static FeedServiceOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF38570 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FeedServiceOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF38578);
  return sub_1D61EA9AC(v3, a1, type metadata accessor for FeedServiceOptions);
}

unint64_t sub_1D61E999C()
{
  v1 = 0x65646F4D64656566;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x6573616261746164;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D61E9A24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D61EBDE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D61E9A4C(uint64_t a1)
{
  v2 = sub_1D61EAB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E9A88(uint64_t a1)
{
  v2 = sub_1D61EAB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedServiceOptions.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D61EAC1C(0, &qword_1EDF02948, sub_1D61EAB20, &type metadata for FeedServiceOptions.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EAB20();
  sub_1D7264B5C();
  v22 = *v3;
  v21 = 0;
  sub_1D611826C();
  sub_1D726443C();
  if (!v2)
  {
    v11 = type metadata accessor for FeedServiceOptions(0);
    v20 = 1;
    type metadata accessor for FeedServiceOptions.RootCursorSource(0);
    sub_1D61EA718(&qword_1EDF14978, type metadata accessor for FeedServiceOptions.RootCursorSource, &protocol conformance descriptor for FeedServiceOptions.RootCursorSource);
    sub_1D726443C();
    v12 = &v3[*(v11 + 24)];
    v13 = *v12;
    LOBYTE(v12) = v12[8];
    v15 = v13;
    v16 = v12;
    v19 = 2;
    sub_1D61EAB74();
    sub_1D726443C();
    v18 = v3[*(v11 + 28)];
    v17 = 3;
    sub_1D61EABC8();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FeedServiceOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61EAC1C(0, &qword_1EDF03C38, sub_1D61EAB20, &type metadata for FeedServiceOptions.CodingKeys, MEMORY[0x1E69E6F48]);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for FeedServiceOptions(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D61EAB20();
  v25 = v10;
  v16 = v26;
  sub_1D7264B0C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v17 = v23;
  v34 = 0;
  sub_1D6118218();
  v18 = v24;
  sub_1D726431C();
  *v14 = v35;
  v33 = 1;
  sub_1D61EA718(&qword_1EDF14970, type metadata accessor for FeedServiceOptions.RootCursorSource, &protocol conformance descriptor for FeedServiceOptions.RootCursorSource);
  sub_1D726431C();
  sub_1D5B96CF8(v6, &v14[v11[5]]);
  v32 = 2;
  sub_1D61EAC84();
  sub_1D726431C();
  v19 = v29;
  v20 = &v14[v11[6]];
  *v20 = v28;
  v20[8] = v19;
  v30 = 3;
  sub_1D61EACD8();
  sub_1D726431C();
  (*(v17 + 8))(v25, v18);
  v14[v11[7]] = v31;
  sub_1D61EA9AC(v14, v22, type metadata accessor for FeedServiceOptions);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D61EAD2C(v14, type metadata accessor for FeedServiceOptions);
}

uint64_t _s8NewsFeed0B14ServiceOptionsV16RootCursorSourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7257ADC();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v31 - v14);
  sub_1D61EBF58(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 56);
  sub_1D61EA9AC(a1, v19, type metadata accessor for FeedServiceOptions.RootCursorSource);
  sub_1D61EA9AC(a2, &v19[v21], type metadata accessor for FeedServiceOptions.RootCursorSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = swift_getEnumCaseMultiPayload();
      v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
      if (v27 != 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v23 = swift_getEnumCaseMultiPayload();
        v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
        if (v23 == 3)
        {
          goto LABEL_12;
        }

LABEL_16:
        v26 = 0;
        v24 = sub_1D61EBF58;
        goto LABEL_17;
      }

      v28 = swift_getEnumCaseMultiPayload();
      v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
      if (v28 != 4)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v26 = 1;
    goto LABEL_17;
  }

  v25 = v32;
  if (EnumCaseMultiPayload)
  {
    sub_1D61EA9AC(v19, v11, type metadata accessor for FeedServiceOptions.RootCursorSource);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v25 + 32))(v7, &v19[v21], v4);
      v26 = sub_1D7257A6C();
      v29 = *(v25 + 8);
      v29(v7, v4);
      v29(v11, v4);
      v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
      goto LABEL_17;
    }

    (*(v25 + 8))(v11, v4);
    goto LABEL_16;
  }

  sub_1D61EA9AC(v19, v15, type metadata accessor for FeedServiceOptions.RootCursorSource);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_16;
  }

  v26 = *v15 == *&v19[v21];
  v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
LABEL_17:
  sub_1D61EAD2C(v19, v24);
  return v26 & 1;
}

unint64_t sub_1D61EA520()
{
  result = qword_1EDF149F0;
  if (!qword_1EDF149F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149F0);
  }

  return result;
}

unint64_t sub_1D61EA574()
{
  result = qword_1EDF14990;
  if (!qword_1EDF14990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14990);
  }

  return result;
}

unint64_t sub_1D61EA5C8()
{
  result = qword_1EDF149A8;
  if (!qword_1EDF149A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149A8);
  }

  return result;
}

unint64_t sub_1D61EA61C()
{
  result = qword_1EDF149C0;
  if (!qword_1EDF149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149C0);
  }

  return result;
}

unint64_t sub_1D61EA670()
{
  result = qword_1EDF149D8;
  if (!qword_1EDF149D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149D8);
  }

  return result;
}

unint64_t sub_1D61EA6C4()
{
  result = qword_1EDF14A08;
  if (!qword_1EDF14A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A08);
  }

  return result;
}

uint64_t sub_1D61EA718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D61EA760()
{
  result = qword_1EDF14930;
  if (!qword_1EDF14930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14930);
  }

  return result;
}

unint64_t sub_1D61EA7B4()
{
  result = qword_1EDF14948;
  if (!qword_1EDF14948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14948);
  }

  return result;
}

unint64_t sub_1D61EA808()
{
  result = qword_1EDF14960;
  if (!qword_1EDF14960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14960);
  }

  return result;
}

unint64_t sub_1D61EA85C()
{
  result = qword_1EDF148C0;
  if (!qword_1EDF148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148C0);
  }

  return result;
}

unint64_t sub_1D61EA8B0()
{
  result = qword_1EDF148D8;
  if (!qword_1EDF148D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148D8);
  }

  return result;
}

unint64_t sub_1D61EA904()
{
  result = qword_1EDF148F0;
  if (!qword_1EDF148F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148F0);
  }

  return result;
}

unint64_t sub_1D61EA958()
{
  result = qword_1EDF14908;
  if (!qword_1EDF14908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14908);
  }

  return result;
}

uint64_t sub_1D61EA9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s8NewsFeed0B14ServiceOptionsV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v4 = 0x656E696C66666FLL;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (*a2)
  {
    v5 = 0x656E696C66666FLL;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v4 == v5)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_1D72646CC();
    swift_bridgeObjectRelease_n();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = type metadata accessor for FeedServiceOptions(0);
  if ((_s8NewsFeed0B14ServiceOptionsV16RootCursorSourceO2eeoiySbAE_AEtFZ_0(&a1[v7[5]], &a2[v7[5]]) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[6];
  v9 = &a1[v8];
  v10 = a1[v8 + 8];
  v11 = &a2[v8];
  v12 = a2[v8 + 8];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  return a1[v7[7]] == a2[v7[7]];
}

unint64_t sub_1D61EAB20()
{
  result = qword_1EDF14A20;
  if (!qword_1EDF14A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A20);
  }

  return result;
}

unint64_t sub_1D61EAB74()
{
  result = qword_1EDF14918;
  if (!qword_1EDF14918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14918);
  }

  return result;
}

unint64_t sub_1D61EABC8()
{
  result = qword_1EDF148A8;
  if (!qword_1EDF148A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148A8);
  }

  return result;
}

void sub_1D61EAC1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D61EAC84()
{
  result = qword_1EDF14910;
  if (!qword_1EDF14910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14910);
  }

  return result;
}

unint64_t sub_1D61EACD8()
{
  result = qword_1EDF148A0;
  if (!qword_1EDF148A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148A0);
  }

  return result;
}

uint64_t sub_1D61EAD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D61EAD90()
{
  result = qword_1EC885170;
  if (!qword_1EC885170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885170);
  }

  return result;
}

unint64_t sub_1D61EAF00()
{
  result = qword_1EC885178;
  if (!qword_1EC885178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885178);
  }

  return result;
}

unint64_t sub_1D61EAF58()
{
  result = qword_1EC885180;
  if (!qword_1EC885180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885180);
  }

  return result;
}

unint64_t sub_1D61EAFB0()
{
  result = qword_1EC885188;
  if (!qword_1EC885188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885188);
  }

  return result;
}

unint64_t sub_1D61EB008()
{
  result = qword_1EC885190;
  if (!qword_1EC885190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885190);
  }

  return result;
}

unint64_t sub_1D61EB060()
{
  result = qword_1EC885198;
  if (!qword_1EC885198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885198);
  }

  return result;
}

unint64_t sub_1D61EB0B8()
{
  result = qword_1EC8851A0;
  if (!qword_1EC8851A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851A0);
  }

  return result;
}

unint64_t sub_1D61EB110()
{
  result = qword_1EC8851A8;
  if (!qword_1EC8851A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851A8);
  }

  return result;
}

unint64_t sub_1D61EB168()
{
  result = qword_1EDF14A10;
  if (!qword_1EDF14A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A10);
  }

  return result;
}

unint64_t sub_1D61EB1C0()
{
  result = qword_1EDF14A18;
  if (!qword_1EDF14A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A18);
  }

  return result;
}

unint64_t sub_1D61EB218()
{
  result = qword_1EDF148F8;
  if (!qword_1EDF148F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148F8);
  }

  return result;
}

unint64_t sub_1D61EB270()
{
  result = qword_1EDF14900;
  if (!qword_1EDF14900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14900);
  }

  return result;
}

unint64_t sub_1D61EB2C8()
{
  result = qword_1EDF148E0;
  if (!qword_1EDF148E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148E0);
  }

  return result;
}

unint64_t sub_1D61EB320()
{
  result = qword_1EDF148E8;
  if (!qword_1EDF148E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148E8);
  }

  return result;
}

unint64_t sub_1D61EB378()
{
  result = qword_1EDF148C8;
  if (!qword_1EDF148C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148C8);
  }

  return result;
}

unint64_t sub_1D61EB3D0()
{
  result = qword_1EDF148D0;
  if (!qword_1EDF148D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148D0);
  }

  return result;
}

unint64_t sub_1D61EB428()
{
  result = qword_1EDF148B0;
  if (!qword_1EDF148B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148B0);
  }

  return result;
}

unint64_t sub_1D61EB480()
{
  result = qword_1EDF148B8;
  if (!qword_1EDF148B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148B8);
  }

  return result;
}

unint64_t sub_1D61EB4D8()
{
  result = qword_1EDF14950;
  if (!qword_1EDF14950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14950);
  }

  return result;
}

unint64_t sub_1D61EB530()
{
  result = qword_1EDF14958;
  if (!qword_1EDF14958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14958);
  }

  return result;
}

unint64_t sub_1D61EB588()
{
  result = qword_1EDF14938;
  if (!qword_1EDF14938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14938);
  }

  return result;
}

unint64_t sub_1D61EB5E0()
{
  result = qword_1EDF14940;
  if (!qword_1EDF14940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14940);
  }

  return result;
}

unint64_t sub_1D61EB638()
{
  result = qword_1EDF14920;
  if (!qword_1EDF14920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14920);
  }

  return result;
}

unint64_t sub_1D61EB690()
{
  result = qword_1EDF14928;
  if (!qword_1EDF14928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14928);
  }

  return result;
}

unint64_t sub_1D61EB6E8()
{
  result = qword_1EDF149F8;
  if (!qword_1EDF149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149F8);
  }

  return result;
}

unint64_t sub_1D61EB740()
{
  result = qword_1EDF14A00;
  if (!qword_1EDF14A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A00);
  }

  return result;
}

unint64_t sub_1D61EB798()
{
  result = qword_1EDF149C8;
  if (!qword_1EDF149C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149C8);
  }

  return result;
}

unint64_t sub_1D61EB7F0()
{
  result = qword_1EDF149D0;
  if (!qword_1EDF149D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149D0);
  }

  return result;
}

unint64_t sub_1D61EB848()
{
  result = qword_1EDF149B0;
  if (!qword_1EDF149B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149B0);
  }

  return result;
}

unint64_t sub_1D61EB8A0()
{
  result = qword_1EDF149B8;
  if (!qword_1EDF149B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149B8);
  }

  return result;
}

unint64_t sub_1D61EB8F8()
{
  result = qword_1EDF14998;
  if (!qword_1EDF14998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14998);
  }

  return result;
}

unint64_t sub_1D61EB950()
{
  result = qword_1EDF149A0;
  if (!qword_1EDF149A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149A0);
  }

  return result;
}

unint64_t sub_1D61EB9A8()
{
  result = qword_1EDF14980;
  if (!qword_1EDF14980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14980);
  }

  return result;
}

unint64_t sub_1D61EBA00()
{
  result = qword_1EDF14988;
  if (!qword_1EDF14988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14988);
  }

  return result;
}

unint64_t sub_1D61EBA58()
{
  result = qword_1EDF149E0;
  if (!qword_1EDF149E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149E0);
  }

  return result;
}

unint64_t sub_1D61EBAB0()
{
  result = qword_1EDF149E8;
  if (!qword_1EDF149E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149E8);
  }

  return result;
}

uint64_t sub_1D61EBB04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616261746164 && a2 == 0xEC000000796C6E4FLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726566657270 && a2 == 0xEE00657361626174 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73CE7D0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D73CE7F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4F6B726F7774656ELL && a2 == 0xEB00000000796C6ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D61EBCD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C66666FLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D61EBDE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D64656566 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73CE810 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73CE830 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1D61EBF58(uint64_t a1)
{
  if (!qword_1EDF14968)
  {
    type metadata accessor for FeedServiceOptions.RootCursorSource(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF14968);
    }
  }
}

uint64_t CommandShareContext.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t CommandShareContentComplete.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10[0] = v2;
  *(v10 + 15) = *(v1 + 63);
  v3 = *(v10 + 15);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 63) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D61EC098(v8, v7);
}

void *CommandShareContentComplete.sourceView.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

__n128 CommandShareContentComplete.init(content:activityType:sourceView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  *(a4 + 63) = *(a1 + 63);
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 72) = a2;
  *(a4 + 80) = a3;
  return result;
}

uint64_t static SwipeAction.share(headline:feedItemIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v23 = sub_1D725CC8C();
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D725CC9C();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v25 = a1;
  v26 = sub_1D5B4AA6C;
  v27 = 0;
  v28 = 0;
  v29 = a2;
  v30 = a3;
  v32 = 0;
  v31 = 0;
  v15 = objc_opt_self();

  swift_unknownObjectRetain();
  v16 = [v15 systemBlueColor];
  if (qword_1EDF05BC0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDF05BC8;
  v18 = [v15 whiteColor];
  _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v17, v18);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  (*(v11 + 104))(v14, *MEMORY[0x1E69D7628], v22);
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7620], v23);
  return sub_1D725CCAC();
}

uint64_t static SharingActivity.share(headline:selectedText:shareContext:feedItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  swift_unknownObjectRetain();

  v15 = sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDF1BB80;
  sub_1D725DFDC();
  swift_allocObject();
  return sub_1D725D5CC();
}

uint64_t static ContextMenuItem.share(headline:selectedText:shareContext:feedItemIdentifier:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v20 = sub_1D725DC6C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  swift_unknownObjectRetain();

  sub_1D61EC958(a1);
  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDF1BB80;
  (*(v11 + 104))(v14, *MEMORY[0x1E69D7B48], v20);
  v22 = a1;
  v23 = sub_1D5FCBFA8;
  v24 = v15;
  v25 = v19;
  v26 = v21;
  v27 = a6;
  v29 = 0;
  v28 = 0;
  swift_allocObject();
  v17 = v16;
  return sub_1D725D3AC();
}

uint64_t sub_1D61EC958(void *a1)
{
  sub_1D61EEED8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *&v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3).n128_u64[0];
  v6 = &v15 - v5;
  v7 = [a1 routeURL];
  if (v7)
  {
    v8 = v7;
    sub_1D72584EC();

    v9 = sub_1D72585BC();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v12 = sub_1D72585BC();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_1D5E3E404(v6);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v13 = sub_1D725811C();

  return v13;
}

uint64_t static ContextMenuItem.share(tag:prefersTagName:shareContext:)(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2;
  ObjectType = swift_getObjectType();

  return sub_1D61ED6EC(a1, v5, a3, v3, ObjectType);
}

uint64_t CommandShareContent.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 66);
  v3 = v2 >> 5;
  if (v3 > 2)
  {
    if ((v2 >> 5) <= 4u)
    {
      if (v3 == 3)
      {
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0x6365526572616853, 0xED00005B20657069);
      }

      else
      {
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0x7373496572616853, 0xEC0000005B206575);
      }

      v4 = [v1 description];
      goto LABEL_16;
    }

    if (v3 != 5)
    {
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x6565466572616853, 0xEB000000005B2064);
      v4 = [v1 description];
LABEL_16:
      v7 = v4;
      v8 = sub_1D726207C();
      v10 = v9;

      MEMORY[0x1DA6F9910](v8, v10);

      MEMORY[0x1DA6F9910](540686880, 0xE400000000000000);
      goto LABEL_17;
    }

    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x6761546572616853, 0xEA00000000005B20);
    v5 = &qword_1EDF3C770;
    v6 = &protocolRef_FCTagProviding;
    goto LABEL_13;
  }

  if (v2 >> 5)
  {
    if (v3 != 1)
    {
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73CE8E0);
      v5 = &qword_1EDF3C700;
      v6 = &protocolRef_FCPuzzleTypeProviding;
LABEL_13:
      sub_1D5B5534C(0, v5, v6);
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](540686880, 0xE400000000000000);
      goto LABEL_17;
    }

    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x7A75506572616853, 0xED00005B20656C7ALL);
    sub_1D5B5534C(0, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](540686880, 0xE400000000000000);
  }

  else
  {
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x7472416572616853, 0xEE005B20656C6369);
    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](540686880, 0xE400000000000000);
  }

LABEL_17:
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  return 0;
}

void CommandShareContent.shareContext.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 66);
  if ((v3 >> 5) <= 2u)
  {
    if (v3 >> 5)
    {
      if (v3 >> 5 == 1)
      {
        LOBYTE(v2) = *(v1 + 66) & 0x1F;
      }

      *a1 = v2;
    }

    else
    {
      *a1 = *(v1 + 24);
    }
  }

  else
  {
    *a1 = v2;
  }
}

uint64_t CommandShareContent.feedItemIdentifier.getter()
{
  if (((*(v0 + 66) << 16) & 0xE00000) != 0)
  {
    return 0;
  }

  v1 = *(v0 + 32);

  return v1;
}

uint64_t CommandShareContent.headline.getter()
{
  if (((*(v0 + 66) << 16) & 0xE00000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id CommandShareContent.recipe.getter()
{
  if (((*(v0 + 66) << 16) & 0xE00000) != 0x600000)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id CommandShareContent.sourceChannel.getter()
{
  v1 = *v0;
  v2 = *(v0 + 66) >> 5;
  if (v2 <= 2)
  {
    if (!(*(v0 + 66) >> 5))
    {
      goto LABEL_3;
    }

    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v4 = [objc_msgSend(v1 puzzleType)];
  }

  else
  {
    if ((*(v0 + 66) >> 5) <= 4u)
    {
LABEL_3:
      v3 = [v1 sourceChannel];
      return v3;
    }

    if (v2 == 5)
    {
LABEL_8:
      v3 = [v1 asChannel];
      return v3;
    }

    v4 = [FCFeedDescriptor.feedTag.getter() asChannel];
  }

  v6 = v4;
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1D61ED2B0()
{
  v0 = sub_1D725DC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1D61EEED8(0, &unk_1EDF3B648, MEMORY[0x1E69D7AA8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v21 - v8;
  sub_1D61EEED8(0, &qword_1EDF3B7E0, MEMORY[0x1E69D75F0], v5);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v21 - v12;
  v14 = sub_1D725F8BC();
  __swift_allocate_value_buffer(v14, qword_1EDF3AAC0);
  v21[1] = __swift_project_value_buffer(v14, qword_1EDF3AAC0);
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v27 = -8;
  v26 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();

  v17 = [v16 bundleForClass_];
  sub_1D725811C();

  v18 = sub_1D725CB6C();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = sub_1D725DA2C();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
  return sub_1D725F8AC();
}

uint64_t static MenuItem.Sharing.share.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF3AAB8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D725F8BC();
  v4 = __swift_project_value_buffer(v3, qword_1EDF3AAC0);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1D61ED6EC(void *a1, char a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D725DC6C();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a3;
  v14 = [a1 feedNavImageAssetHandle];
  if (v14)
  {
    v15 = v14;
    v16 = dispatch_group_create();
    v17 = [v15 downloadIfNeededWithGroup_];

    swift_unknownObjectRelease();
  }

  if (FCTagProviding.useSimpleShareTitle.getter())
  {
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = objc_opt_self();

    swift_unknownObjectRetain();
    v20 = [v19 bundleForClass_];
    sub_1D725811C();

    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDF1BB80;
    (*(v9 + 104))(v13, *MEMORY[0x1E69D7B48], v8);
    v39 = a1;
    v40 = v38;
    v42 = -96;
    v41 = 0;
    swift_allocObject();
    v22 = v21;
  }

  else
  {
    v37 = v8;
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDF3ACB0;
    type metadata accessor for Localized();
    v24 = swift_getObjCClassFromMetadata();
    v25 = objc_opt_self();
    swift_unknownObjectRetain();
    v36 = v23;

    v26 = [v25 bundleForClass_];
    sub_1D725811C();

    sub_1D61EEED8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D7273AE0;
    if (a2)
    {
      v28 = [a1 name];
      v29 = sub_1D726207C();
      v31 = v30;
    }

    else
    {
      v29 = FCTagProviding.localizedTagType.getter();
      v31 = v32;
    }

    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D5B7E2C0();
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    sub_1D72620BC();

    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDF1BB80;
    (*(v9 + 104))(v13, *MEMORY[0x1E69D7B48], v37);
    v39 = a1;
    v40 = v38;
    v42 = -96;
    v41 = 0;
    swift_allocObject();
    v34 = v33;
  }

  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share6puzzle0H4Data0hC0ACSgSo17FCPuzzleProviding_p_AD011PuzzleShareJ0VSgAD07CommandnC0OtFZ_0(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v6 = sub_1D725DC6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[1];
  v34 = *a2;
  v35 = v11;
  *v36 = a2[2];
  *&v36[10] = *(a2 + 42);
  v25 = *a3;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v22 = v35;
  v23 = v34;
  v12 = *&v36[8];
  v21 = *v36;
  v20 = *&v36[16];
  v24 = *&v36[24];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();

  swift_unknownObjectRetain();
  sub_1D61EEE50(&v34, &v26);
  v15 = [v14 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v16 = ((v25 & 7) << 16) | 0x200000;
  v17 = qword_1EDF1BB80;
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7B48], v6);
  v26 = a1;
  v27 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v12;
  v31 = v20;
  v33 = BYTE2(v16);
  v32 = v24;
  sub_1D725D3DC();
  swift_allocObject();
  v18 = v17;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share10puzzleType0hC0ACSgSo08FCPuzzleJ9Providing_p_AD012CommandShareC0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  swift_unknownObjectRetain();
  v12 = [v11 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDF1BB80;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
  v16[1] = a1;
  v16[2] = v9;
  v18 = 64;
  v17 = 0;
  sub_1D725D3DC();
  swift_allocObject();
  v14 = v13;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share5issue0hC0ACSgSo7FCIssueC_AD012CommandShareC0OtFZ_0(void *a1, unsigned __int8 *a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = a1;
  v13 = [v11 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDF1BB80;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
  v17[1] = v12;
  v17[2] = v9;
  v19 = 0x80;
  v18 = 0;
  sub_1D725D3DC();
  swift_allocObject();
  v15 = v14;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share6recipe0hC0ACSgSo8FCRecipeC_AD012CommandShareC0OtFZ_0(void *a1, unsigned __int8 *a2)
{
  v22 = sub_1D725DC6C();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();

  v10 = a1;
  v11 = [v9 bundleForClass_];
  sub_1D725811C();

  sub_1D61EEED8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = [v10 title];
  v14 = sub_1D726207C();
  v16 = v15;

  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D5B7E2C0();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_1D72620BC();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDF1BB80;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7B48], v22);
  v23 = v10;
  v24 = v21;
  v26 = 96;
  v25 = 0;
  sub_1D725D3DC();
  swift_allocObject();
  v18 = v17;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share14feedDescriptor0hC0ACSgSo06FCFeedJ0C_AD012CommandShareC0OtFZ_0(void *a1, unsigned __int8 *a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = [FCFeedDescriptor.feedTag.getter() feedNavImageAssetHandle];
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = dispatch_group_create();
    v12 = [v10 downloadIfNeededWithGroup_];

    swift_unknownObjectRelease();
  }

  FCFeedDescriptor.feedTag.getter();
  swift_getObjectType();
  v13 = FCTagProviding.useSimpleShareTitle.getter();
  swift_unknownObjectRelease();
  if (v13)
  {
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();

    v16 = a1;
    v17 = [v15 bundleForClass_];
    sub_1D725811C();

    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDF1BB80;
    (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
    v32 = a1;
    v33 = v9;
    v35 = -64;
    v34 = 0;
    sub_1D725D3DC();
    swift_allocObject();
    v19 = v18;
  }

  else
  {
    v31 = v9;
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    v20 = swift_getObjCClassFromMetadata();
    v21 = objc_opt_self();
    v22 = a1;

    v23 = [v21 bundleForClass_];
    sub_1D725811C();

    sub_1D61EEED8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v25 = FCFeedDescriptor.localizedFeedType.getter();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1D5B7E2C0();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_1D72620BC();

    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDF1BB80;
    (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
    v32 = a1;
    v33 = v31;
    v35 = -64;
    v34 = 0;
    sub_1D725D3DC();
    swift_allocObject();
    v29 = v28;
  }

  return sub_1D725D3AC();
}

unint64_t sub_1D61EEBB0()
{
  result = qword_1EC8851B0;
  if (!qword_1EC8851B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed15PuzzleShareDataVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D61EEC58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1A && *(a1 + 67))
  {
    return (*a1 + 26);
  }

  v3 = (*(a1 + 66) & 0x18 | (*(a1 + 66) >> 5)) ^ 0x1F;
  if (v3 >= 0x19)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D61EECAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x19)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 26;
    if (a3 >= 0x1A)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1A)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 0;
      *(result + 66) = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_1D61EED24(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

uint64_t sub_1D61EED40(uint64_t a1, int a2)
{
  v3 = *(a1 + 64);
  result = a1 + 64;
  *(result + 2) = ((v3 | (*(result + 2) << 16)) & 0x7FFFF | (a2 << 21)) >> 16;
  *result = v3;
  return result;
}

uint64_t sub_1D61EED84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D61EEDCC(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_1D61EEE50(uint64_t a1, uint64_t a2)
{
  sub_1D5B745B4(0, &qword_1EDF11680, &type metadata for PuzzleShareData, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D61EEED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for DebugFormatCacheFileMetadata(uint64_t a1)
{
  result = qword_1EC8851B8;
  if (!qword_1EC8851B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61EEFB4(uint64_t a1)
{
  result = sub_1D725BD1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D61EF028(void *a1)
{
  v3 = v1;
  sub_1D61EF904(0, &qword_1EC8851E0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EF79C();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D725BD1C();
  sub_1D61EF968(&qword_1EDF178C0, MEMORY[0x1E69D6B40]);
  sub_1D726443C();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for DebugFormatCacheFileMetadata(0) + 20));
    v12[15] = 1;
    sub_1D61EF9AC();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D61EF1F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1D725BD1C();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61EF904(0, &qword_1EC8851C8, MEMORY[0x1E69E6F48]);
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for DebugFormatCacheFileMetadata(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EF79C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v12;
  v22 = v15;
  v16 = v24;
  v30 = 0;
  sub_1D61EF968(&qword_1EDF43A48, MEMORY[0x1E69D6B58]);
  v17 = v27;
  v18 = v25;
  sub_1D726431C();
  v19 = v22;
  (*(v16 + 32))(v22, v6, v17);
  v29 = 1;
  sub_1D61EF7F0();
  sub_1D726431C();
  (*(v26 + 8))(v11, v18);
  *(v19 + *(v21 + 20)) = v28;
  sub_1D61EF844(v19, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D61EF8A8(v19);
}

uint64_t sub_1D61EF54C()
{
  if (*v0)
  {
    return 0x704F676E69646F63;
  }

  else
  {
    return 0x6556726576726573;
  }
}

void sub_1D61EF5A0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6556726576726573 && a2 == 0xED00006E6F697372;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x704F676E69646F63 && a2 == 0xED0000736E6F6974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D61EF68C(uint64_t a1)
{
  v2 = sub_1D61EF79C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61EF6C8(uint64_t a1)
{
  v2 = sub_1D61EF79C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61EF734(uint64_t a1, uint64_t a2)
{
  if ((sub_1D725BCBC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D670933C();
}

unint64_t sub_1D61EF79C()
{
  result = qword_1EC8851D0;
  if (!qword_1EC8851D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851D0);
  }

  return result;
}

unint64_t sub_1D61EF7F0()
{
  result = qword_1EC8851D8;
  if (!qword_1EC8851D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851D8);
  }

  return result;
}

uint64_t sub_1D61EF844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatCacheFileMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61EF8A8(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatCacheFileMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D61EF904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D61EF79C();
    v7 = a3(a1, &type metadata for DebugFormatCacheFileMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D61EF968(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D725BD1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D61EF9AC()
{
  result = qword_1EC8851E8;
  if (!qword_1EC8851E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851E8);
  }

  return result;
}

unint64_t sub_1D61EFA14()
{
  result = qword_1EC8851F0;
  if (!qword_1EC8851F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851F0);
  }

  return result;
}

unint64_t sub_1D61EFA6C()
{
  result = qword_1EC8851F8;
  if (!qword_1EC8851F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851F8);
  }

  return result;
}

unint64_t sub_1D61EFAC4()
{
  result = qword_1EC885200;
  if (!qword_1EC885200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885200);
  }

  return result;
}

uint64_t EngagementBannerViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D61F0C7C(0, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

unint64_t sub_1D61EFC18()
{
  result = qword_1EDF06F30;
  if (!qword_1EDF06F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F30);
  }

  return result;
}

__n128 EngagementBannerViewLayout.Attributes.engagementBannerViewLayoutAttributes.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D61EFC8C()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0x656D617266;
  }
}

void sub_1D61EFCC8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D73CEB60 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D61EFDA8(uint64_t a1)
{
  v2 = sub_1D61F003C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61EFDE4(uint64_t a1)
{
  v2 = sub_1D61F003C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EngagementBannerViewLayout.Attributes.encode(to:)(void *a1)
{
  sub_1D61F0C7C(0, &qword_1EC885208, sub_1D61F003C, &type metadata for EngagementBannerViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  v10 = v1[3];
  v18 = v1[2];
  v19 = v10;
  v11 = v1[5];
  v20 = v1[4];
  v21 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61F003C();
  sub_1D7264B5C();
  v12 = v1[1];
  v14 = *v1;
  v15 = v12;
  v22 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEA924(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v22 = 1;
    sub_1D61F0090();
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D61F003C()
{
  result = qword_1EDF0BA20[0];
  if (!qword_1EDF0BA20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0BA20);
  }

  return result;
}

unint64_t sub_1D61F0090()
{
  result = qword_1EDF06F20;
  if (!qword_1EDF06F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F20);
  }

  return result;
}

uint64_t EngagementBannerViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v18 = a2;
  sub_1D61F0C7C(0, &qword_1EDF039B8, sub_1D61F003C, &type metadata for EngagementBannerViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61F003C();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v18;
    type metadata accessor for CGRect(0);
    v23 = 0;
    sub_1D5BEA924(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v16 = v20;
    v17 = v19;
    v23 = 1;
    sub_1D61F033C();
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v13 = v16;
    *v11 = v17;
    v11[1] = v13;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    v15 = v22;
    v11[4] = v21;
    v11[5] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D61F033C()
{
  result = qword_1EDF06F18;
  if (!qword_1EDF06F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F18);
  }

  return result;
}

uint64_t sub_1D61F03A0(uint64_t a1)
{
  v2 = sub_1D61F09C4();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D61F042C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D61F0970();

  return sub_1D725A24C();
}

uint64_t sub_1D61F04B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedEngagementBanner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D61F051C()
{
  result = qword_1EDF0BA00;
  if (!qword_1EDF0BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BA00);
  }

  return result;
}

unint64_t sub_1D61F0574()
{
  result = qword_1EC885210;
  if (!qword_1EC885210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885210);
  }

  return result;
}

unint64_t sub_1D61F05CC()
{
  result = qword_1EDF0B9E8;
  if (!qword_1EDF0B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9E8);
  }

  return result;
}

unint64_t sub_1D61F0624()
{
  result = qword_1EDF0B9F0;
  if (!qword_1EDF0B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9F0);
  }

  return result;
}

unint64_t sub_1D61F067C()
{
  result = qword_1EDF0BA08;
  if (!qword_1EDF0BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BA08);
  }

  return result;
}

uint64_t sub_1D61F06D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D61F0C7C(0, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

uint64_t sub_1D61F07EC(uint64_t a1)
{
  result = type metadata accessor for FeedEngagementBanner(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D61F086C()
{
  result = qword_1EC885218;
  if (!qword_1EC885218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885218);
  }

  return result;
}

unint64_t sub_1D61F08C4()
{
  result = qword_1EDF0BA10;
  if (!qword_1EDF0BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BA10);
  }

  return result;
}

unint64_t sub_1D61F091C()
{
  result = qword_1EDF0BA18;
  if (!qword_1EDF0BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BA18);
  }

  return result;
}

unint64_t sub_1D61F0970()
{
  result = qword_1EDF0B9F8;
  if (!qword_1EDF0B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9F8);
  }

  return result;
}

unint64_t sub_1D61F09C4()
{
  result = qword_1EC885220;
  if (!qword_1EC885220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885220);
  }

  return result;
}

uint64_t sub_1D61F0A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D61F0C7C(0, &qword_1EDF17F80, sub_1D61F0CE4, &type metadata for EngagementBannerViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v19[-v10];
  sub_1D5C18C70(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1;
  v16 = sub_1D7259B8C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v20 = a2;
  v21 = a3;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7460], v7);
  v17 = MEMORY[0x1E69D7150];
  sub_1D61F136C(0, &qword_1EDF18060, MEMORY[0x1E69D7150]);
  sub_1D61F1184(&qword_1EDF18068, &qword_1EDF18060, v17, MEMORY[0x1E69D7158]);
  sub_1D7259A1C();
  (*(v8 + 8))(v11, v7);
  return sub_1D5C18FC0(v15);
}

void sub_1D61F0C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D61F0CE4()
{
  result = qword_1EDF0B9D8;
  if (!qword_1EDF0B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9D8);
  }

  return result;
}

uint64_t sub_1D61F0D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedEngagementBanner(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61F11C8(0);
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v29 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61F0C7C(0, &qword_1EDF17F80, sub_1D61F0CE4, &type metadata for EngagementBannerViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v28 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  sub_1D5C18C70(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v23 = sub_1D7259B8C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v27[1] = swift_getKeyPath();
  (*(v15 + 104))(v18, *MEMORY[0x1E69D74A8], v14);
  v32 = *(a2 + 40);
  sub_1D61F04B4(a3, v9);
  sub_1D61F0C7C(0, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  type metadata accessor for EngagementBannerViewLayoutAttributesFactory();
  sub_1D61F0CE4();
  sub_1D61F12DC();
  sub_1D5BEA924(qword_1EDF06160, type metadata accessor for EngagementBannerViewLayoutAttributesFactory, &protocol conformance descriptor for EngagementBannerViewLayoutAttributesFactory);

  v24 = v29;
  sub_1D7259D2C();
  v25 = MEMORY[0x1E69D6F38];
  sub_1D61F136C(0, &qword_1EDF18138, MEMORY[0x1E69D6F38]);
  sub_1D61F1184(&qword_1EDF18140, &qword_1EDF18138, v25, MEMORY[0x1E69D6F40]);
  sub_1D7259A3C();

  (*(v30 + 8))(v24, v31);
  (*(v15 + 8))(v18, v28);
  return sub_1D5C18FC0(v22);
}

uint64_t sub_1D61F1184(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D61F136C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D61F11C8(uint64_t a1)
{
  if (!qword_1EDF18090)
  {
    sub_1D61F0C7C(255, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
    type metadata accessor for EngagementBannerViewLayoutAttributesFactory();
    sub_1D61F0CE4();
    sub_1D61F12DC();
    sub_1D5BEA924(qword_1EDF06160, type metadata accessor for EngagementBannerViewLayoutAttributesFactory, &protocol conformance descriptor for EngagementBannerViewLayoutAttributesFactory);
    v1 = sub_1D7259D3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF18090);
    }
  }
}

unint64_t sub_1D61F12DC()
{
  result = qword_1EDF180F0;
  if (!qword_1EDF180F0)
  {
    sub_1D61F0C7C(255, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF180F0);
  }

  return result;
}

void sub_1D61F136C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EngagementBannerViewLayout;
    v8[1] = &type metadata for EngagementBannerViewLayout.Attributes;
    v8[2] = sub_1D61F0CE4();
    v8[3] = sub_1D61F0970();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t static FormatQueryValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

unint64_t sub_1D61F142C(uint64_t a1)
{
  result = sub_1D61F1454();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61F1454()
{
  result = qword_1EC885228;
  if (!qword_1EC885228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885228);
  }

  return result;
}

unint64_t sub_1D61F14A8(void *a1)
{
  a1[1] = sub_1D5C6BD90();
  a1[2] = sub_1D61F14E0();
  result = sub_1D61F1534();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61F14E0()
{
  result = qword_1EDF111C8;
  if (!qword_1EDF111C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111C8);
  }

  return result;
}

unint64_t sub_1D61F1534()
{
  result = qword_1EC885230;
  if (!qword_1EC885230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885230);
  }

  return result;
}

uint64_t sub_1D61F1698()
{
  sub_1D5B952E4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t StubAssetHandle.dataProvider.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier);
  v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier + 8);
  type metadata accessor for StubAssetHandle.StubAssetDataProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D72AFA90;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 1;

  return v5;
}

uint64_t StubAssetHandle.uniqueKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier);

  return v1;
}

id StubAssetHandle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StubAssetHandle.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725895C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier];
  sub_1D725894C();
  v9 = sub_1D725893C();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  *v8 = v9;
  v8[1] = v11;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id StubAssetHandle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatGroupColumnSystemO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D61F1B68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1D61F1BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D61F1C2C()
{
  result = qword_1EC885240;
  if (!qword_1EC885240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885240);
  }

  return result;
}

char *sub_1D61F1C80()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v4 = [objc_allocWithZone(type metadata accessor for DebugFormatCanvasView(0)) initWithFrame_];
  [*&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_bindLabel] setHidden_];
  [*&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_priorityView] setHidden_];
  [*&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_chinView] setHidden_];
  [*&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_label] setHidden_];
  v5 = *&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_errorLabel];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E69DB970];
  v8 = v5;
  v9 = [v6 systemFontOfSize:13.0 weight:v7];
  [v8 setFont_];

  sub_1D725B31C();

  v55[10] = v51;
  v55[11] = v52;
  v55[12] = v53;
  v55[6] = v47;
  v55[7] = v48;
  v55[8] = v49;
  v55[9] = v50;
  v55[2] = v43;
  v55[3] = v44;
  v55[4] = v45;
  v55[5] = v46;
  v55[0] = v41;
  v55[1] = v42;
  v67 = v51;
  *v68 = v52;
  *&v68[16] = v53;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v59 = v43;
  v60 = v44;
  v61 = v45;
  v62 = v46;
  v56 = v54;
  v69 = v54;
  v57 = v41;
  v58 = v42;
  if (sub_1D5DEA380(&v57) != 1)
  {
    v10 = OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_feedView;
    v11 = *&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_feedView];
    v36 = v66;
    v37 = v67;
    v38[0] = *v68;
    *(v38 + 15) = *&v68[15];
    v32 = v62;
    v33 = v63;
    v34 = v64;
    v35 = v65;
    v28 = v58;
    v29 = v59;
    v30 = v60;
    v31 = v61;
    v12 = v11;
    sub_1D5ECF1C0(&v58, v39);

    v14 = sub_1D62D78BC(v13);

    v39[8] = v36;
    v39[9] = v37;
    *v40 = v38[0];
    *&v40[15] = *(v38 + 15);
    v39[4] = v32;
    v39[5] = v33;
    v39[6] = v34;
    v39[7] = v35;
    v39[0] = v28;
    v39[1] = v29;
    v39[2] = v30;
    v39[3] = v31;
    sub_1D5ECF21C(v39);
    [v12 setBackgroundColor_];

    v15 = *&v4[v10];
    v16 = v68[19];
    if (v68[20])
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = v15;

    sub_1D67F6CC8(0, 1, 0, 0, 2u, v17 | v16, &v28);

    sub_1D705E280(&v28);

    sub_1D61F4FD8(v55, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
  }

  *&v41 = v3;
  *(&v41 + 1) = v2;
  v19 = v1[8];
  v48 = v1[7];
  v49 = v19;
  v50 = v1[9];
  v20 = v1[4];
  v44 = v1[3];
  v45 = v20;
  v21 = v1[6];
  v46 = v1[5];
  v47 = v21;
  v22 = v1[2];
  v42 = v1[1];
  v43 = v22;
  sub_1D61F20B4(v4);
  *&v41 = v3;
  *(&v41 + 1) = v2;
  v23 = v1[8];
  v48 = v1[7];
  v49 = v23;
  v50 = v1[9];
  v24 = v1[4];
  v44 = v1[3];
  v45 = v24;
  v25 = v1[6];
  v46 = v1[5];
  v47 = v25;
  v26 = v1[2];
  v42 = v1[1];
  v43 = v26;
  sub_1D61F238C(v4);
  return v4;
}

void sub_1D61F20B4(void *a1)
{
  sub_1D5B6C03C(0, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v21 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  sub_1D725B31C();

  v9 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
  {
    v12 = &v6[*(v9 + 28)];
    v14 = *v12;
    v13 = *(v12 + 1);

    sub_1D61F4FD8(v6, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720], sub_1D5B6C03C);
    if (v7 == v14 && v8 == v13)
    {
    }

    else
    {
      v16 = sub_1D72646CC();

      if ((v16 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v10 = 1.0;
    v11 = &selRef_systemBlueColor;
    goto LABEL_12;
  }

  sub_1D61F4FD8(v6, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720], sub_1D5B6C03C);
LABEL_3:
  v10 = 0.0;
  v11 = &selRef_clearColor;
LABEL_12:
  v17 = [a1 layer];
  v18 = [objc_opt_self() *v11];
  v19 = [v18 CGColor];

  [v17 setBorderColor_];
  v20 = [a1 layer];
  [v20 setBorderWidth_];
}

uint64_t sub_1D61F238C(char *a1)
{
  v141 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1D5B6C03C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v139 = &v119 - v5;
  v6 = sub_1D725895C();
  v131 = *(v6 - 8);
  v132 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v128 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61F4F44(0);
  v135 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v138 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6C03C(0, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, v2);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v130 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v125 = (&v119 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v140 = &v119 - v20;
  v21 = type metadata accessor for DebugFormatCanvasViewRenderKey(0);
  v136 = *(v21 - 8);
  v137 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v124 = (&v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v144 = (&v119 - v26);
  sub_1D5B6C03C(0, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, v2);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v119 - v29;
  v31 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v142 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v133 = v33;
  v134 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v143 = &v119 - v36;
  sub_1D5B6C03C(0, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v2);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v119 - v39;
  v41 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v129 = &v119 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v119 - v47;
  v49 = v1[5];
  v179 = v1[4];
  v180 = v49;
  v50 = v1[3];
  v177 = v1[2];
  v178 = v50;
  v51 = v1[8];
  v184 = v1[9];
  v52 = v1[6];
  v182 = v1[7];
  v183 = v51;
  v181 = v52;
  v53 = v1[1];
  v175 = *v1;
  v176 = v53;
  v199[0] = v175;

  sub_1D725B31C();

  v127 = v42;
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    v54 = &qword_1EC88DD20;
    v55 = type metadata accessor for DebugFormatEditorLayoutContext;
    v56 = MEMORY[0x1E69E6720];
    v57 = v40;
    return sub_1D61F4FD8(v57, v54, v55, v56, sub_1D5B6C03C);
  }

  sub_1D61F554C(v40, v48, type metadata accessor for DebugFormatEditorLayoutContext);

  sub_1D725B31C();

  v159[10] = v155;
  v159[11] = v156;
  v159[12] = v157;
  v159[6] = v151;
  v159[7] = v152;
  v159[8] = v153;
  v159[9] = v154;
  v159[2] = v147;
  v159[3] = v148;
  v159[4] = v149;
  v159[5] = v150;
  v159[0] = v145;
  v159[1] = v146;
  v171 = v155;
  v172 = v156;
  v173 = v157;
  v167 = v151;
  v168 = v152;
  v169 = v153;
  v170 = v154;
  v163 = v147;
  v164 = v148;
  v165 = v149;
  v166 = v150;
  v160 = v158;
  v174 = v158;
  v161 = v145;
  v162 = v146;
  if (sub_1D5DEA380(&v161) != 1)
  {
    v123 = v48;
    v195 = v171;
    v196 = v172;
    v197 = v173;
    v198 = v174;
    v191 = v167;
    v192 = v168;
    v193 = v169;
    v194 = v170;
    v187 = v163;
    v188 = v164;
    v189 = v165;
    v190 = v166;
    v185 = v161;
    v186 = v162;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D72600CC();

    sub_1D61F5038(v199, sub_1D61F5098);
    if ((*(v142 + 48))(v30, 1, v31) == 1)
    {
      sub_1D61F5038(v123, type metadata accessor for DebugFormatEditorLayoutContext);
      sub_1D61F4FD8(v159, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
      v54 = &qword_1EC88DD10;
      v55 = type metadata accessor for DebugFormatEditorWorkspaceGroup;
      v56 = MEMORY[0x1E69E6720];
      v57 = v30;
      return sub_1D61F4FD8(v57, v54, v55, v56, sub_1D5B6C03C);
    }

    v119 = v41;
    sub_1D61F554C(v30, v143, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D72600CC();
    sub_1D61F5038(v199, sub_1D61F5098);

    v60 = v145;
    v61 = v137;
    v62 = v144;
    sub_1D61F512C(v123, v144 + *(v137 + 20), type metadata accessor for DebugFormatEditorLayoutContext);
    v63 = v173;
    v64 = BYTE1(v173);
    v65 = BYTE2(v173);
    *v62 = v60;
    v66 = v62 + *(v61 + 24);
    *v66 = v63;
    v66[1] = v64;
    v66[2] = v65;
    v67 = OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_renderKey;
    v68 = v141;
    swift_beginAccess();
    v69 = v140;
    sub_1D61F512C(v62, v140, type metadata accessor for DebugFormatCanvasViewRenderKey);
    v70 = v136;
    v120 = *(v136 + 56);
    v121 = v136 + 56;
    v120(v69, 0, 1, v61);
    v71 = *(v135 + 48);
    v72 = MEMORY[0x1E69E6720];
    v122 = v67;
    v73 = &v68[v67];
    v74 = v138;
    sub_1D61F5194(v73, v138, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
    v135 = v71;
    sub_1D61F5194(v69, v74 + v71, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, v72, sub_1D5B6C03C);
    v75 = *(v70 + 48);
    if (v75(v74, 1, v61) == 1)
    {
      sub_1D61F4FD8(v69, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
      if (v75(v74 + v135, 1, v61) == 1)
      {
        sub_1D61F4FD8(v159, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
        sub_1D61F5038(v144, type metadata accessor for DebugFormatCanvasViewRenderKey);
        sub_1D61F5038(v143, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D61F5038(v123, type metadata accessor for DebugFormatEditorLayoutContext);
        v54 = &qword_1EC885258;
        v55 = type metadata accessor for DebugFormatCanvasViewRenderKey;
        v56 = MEMORY[0x1E69E6720];
        v57 = v74;
        return sub_1D61F4FD8(v57, v54, v55, v56, sub_1D5B6C03C);
      }
    }

    else
    {
      v76 = v125;
      sub_1D61F5194(v74, v125, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
      v77 = v135;
      if (v75(v74 + v135, 1, v61) != 1)
      {
        v78 = v124;
        sub_1D61F554C(v74 + v77, v124, type metadata accessor for DebugFormatCanvasViewRenderKey);
        v79 = v123;
        if (*v76 == *v78 && v76[1] == v78[1] || (sub_1D72646CC()) && (sub_1D7259C6C())
        {
          v80 = sub_1D7259F0C();
          sub_1D61F4FD8(v140, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
          if (v80)
          {
            v81 = *(v61 + 24);
            v82 = v76 + v81;
            v83 = *(v76 + v81);
            v84 = v78 + v81;
            if (v83 == *v84 && ((v82[1] ^ v84[1]) & 1) == 0 && ((v82[2] ^ v84[2]) & 1) == 0)
            {
              sub_1D61F5038(v78, type metadata accessor for DebugFormatCanvasViewRenderKey);
              sub_1D61F5038(v76, type metadata accessor for DebugFormatCanvasViewRenderKey);
              sub_1D61F4FD8(v74, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
              sub_1D61F4FD8(v159, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
              sub_1D61F5038(v144, type metadata accessor for DebugFormatCanvasViewRenderKey);
              sub_1D61F5038(v143, type metadata accessor for DebugFormatEditorWorkspaceGroup);
              v59 = v79;
              return sub_1D61F5038(v59, type metadata accessor for DebugFormatEditorLayoutContext);
            }
          }
        }

        else
        {
          sub_1D61F4FD8(v140, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
        }

        sub_1D61F5038(v78, type metadata accessor for DebugFormatCanvasViewRenderKey);
        sub_1D61F5038(v76, type metadata accessor for DebugFormatCanvasViewRenderKey);
        sub_1D61F4FD8(v74, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
LABEL_25:
        v85 = v128;
        sub_1D725894C();
        v86 = sub_1D725893C();
        v140 = v86;
        v88 = v87;
        (*(v131 + 8))(v85, v132);
        v89 = v141;
        v90 = &v141[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier];
        *v90 = v86;
        v90[1] = v88;
        v138 = v88;

        sub_1D717DD6C(0, 2);
        v91 = v130;
        sub_1D61F512C(v144, v130, type metadata accessor for DebugFormatCanvasViewRenderKey);
        v120(v91, 0, 1, v61);
        v92 = v122;
        swift_beginAccess();
        sub_1D61F5208(v91, &v89[v92]);
        swift_endAccess();
        v93 = sub_1D726294C();
        (*(*(v93 - 8) + 56))(v139, 1, 1, v93);
        v94 = v129;
        sub_1D61F512C(v123, v129, type metadata accessor for DebugFormatEditorLayoutContext);
        v95 = v134;
        sub_1D61F512C(v143, v134, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D726290C();
        sub_1D61F529C(&v175, &v145);
        v137 = MEMORY[0x1E69E6720];
        sub_1D61F5194(v159, &v145, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
        v141 = v89;
        v96 = sub_1D72628FC();
        v97 = (*(v127 + 80) + 192) & ~*(v127 + 80);
        v98 = (v126 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
        v99 = (*(v142 + 80) + v98 + 216) & ~*(v142 + 80);
        v100 = (v133 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
        v101 = swift_allocObject();
        v102 = MEMORY[0x1E69E85E0];
        *(v101 + 16) = v96;
        *(v101 + 24) = v102;
        v103 = v182;
        *(v101 + 128) = v181;
        *(v101 + 144) = v103;
        v104 = v184;
        *(v101 + 160) = v183;
        *(v101 + 176) = v104;
        v105 = v178;
        *(v101 + 64) = v177;
        *(v101 + 80) = v105;
        v106 = v180;
        *(v101 + 96) = v179;
        *(v101 + 112) = v106;
        v107 = v176;
        *(v101 + 32) = v175;
        *(v101 + 48) = v107;
        sub_1D61F554C(v94, v101 + v97, type metadata accessor for DebugFormatEditorLayoutContext);
        v108 = v101 + v98;
        v109 = v196;
        *(v108 + 160) = v195;
        *(v108 + 176) = v109;
        *(v108 + 192) = v197;
        *(v108 + 208) = v198;
        v110 = v192;
        *(v108 + 96) = v191;
        *(v108 + 112) = v110;
        v111 = v194;
        *(v108 + 128) = v193;
        *(v108 + 144) = v111;
        v112 = v188;
        *(v108 + 32) = v187;
        *(v108 + 48) = v112;
        v113 = v190;
        *(v108 + 64) = v189;
        *(v108 + 80) = v113;
        v114 = v186;
        *v108 = v185;
        *(v108 + 16) = v114;
        sub_1D61F554C(v95, v101 + v99, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v115 = v140;
        *(v101 + v100) = v141;
        v116 = (v101 + ((v100 + 15) & 0xFFFFFFFFFFFFFFF8));
        v118 = v138;
        v117 = v139;
        *v116 = v115;
        v116[1] = v118;
        sub_1D6BD1334(0, 0, v117, &unk_1D72AFD70, v101);

        sub_1D61F4FD8(v159, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, v137, sub_1D5B49DA8);
        sub_1D61F5038(v144, type metadata accessor for DebugFormatCanvasViewRenderKey);
        sub_1D61F5038(v143, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v59 = v123;
        return sub_1D61F5038(v59, type metadata accessor for DebugFormatEditorLayoutContext);
      }

      sub_1D61F4FD8(v140, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
      sub_1D61F5038(v76, type metadata accessor for DebugFormatCanvasViewRenderKey);
    }

    sub_1D61F5038(v74, sub_1D61F4F44);
    goto LABEL_25;
  }

  v59 = v48;
  return sub_1D61F5038(v59, type metadata accessor for DebugFormatEditorLayoutContext);
}

uint64_t sub_1D61F3720(char *a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];

  sub_1D725B31C();

  v47[10] = v43;
  v47[11] = v44;
  v47[12] = v45;
  v47[6] = v39;
  v47[7] = v40;
  v47[8] = v41;
  v47[9] = v42;
  v47[2] = v35;
  v47[3] = v36;
  v47[4] = v37;
  v47[5] = v38;
  v47[0] = v33;
  v47[1] = v34;
  v59 = v43;
  *v60 = v44;
  *&v60[16] = v45;
  v55 = v39;
  v56 = v40;
  v57 = v41;
  v58 = v42;
  v51 = v35;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v48 = v46;
  v61 = v46;
  v49 = v33;
  v50 = v34;
  if (sub_1D5DEA380(&v49) != 1)
  {
    v6 = *&a1[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_feedView];
    v28 = v58;
    v29 = v59;
    v30[0] = *v60;
    *(v30 + 15) = *&v60[15];
    v24 = v54;
    v25 = v55;
    v26 = v56;
    v27 = v57;
    v20 = v50;
    v21 = v51;
    v22 = v52;
    v23 = v53;
    sub_1D5ECF1C0(&v50, v31);

    v8 = sub_1D62D78BC(v7);

    v31[8] = v28;
    v31[9] = v29;
    *v32 = v30[0];
    *&v32[15] = *(v30 + 15);
    v31[4] = v24;
    v31[5] = v25;
    v31[6] = v26;
    v31[7] = v27;
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1D5ECF21C(v31);
    [v6 setBackgroundColor_];

    v9 = v60[19];
    if (v60[20])
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    sub_1D67F6CC8(0, 1, 0, 0, 2u, v10 | v9, &v20);

    sub_1D705E280(&v20);
    sub_1D61F4FD8(v47, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
  }

  *&v33 = v5;
  *(&v33 + 1) = v4;
  v11 = v2[8];
  v40 = v2[7];
  v41 = v11;
  v42 = v2[9];
  v12 = v2[4];
  v36 = v2[3];
  v37 = v12;
  v13 = v2[6];
  v38 = v2[5];
  v39 = v13;
  v14 = v2[2];
  v34 = v2[1];
  v35 = v14;
  sub_1D61F20B4(a1);
  *&v33 = v5;
  *(&v33 + 1) = v4;
  v15 = v2[8];
  v40 = v2[7];
  v41 = v15;
  v42 = v2[9];
  v16 = v2[4];
  v36 = v2[3];
  v37 = v16;
  v17 = v2[6];
  v38 = v2[5];
  v39 = v17;
  v18 = v2[2];
  v34 = v2[1];
  v35 = v18;
  return sub_1D61F238C(a1);
}

uint64_t sub_1D61F3A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[145] = v14;
  v8[144] = v13;
  v8[143] = a8;
  v8[142] = a7;
  v8[141] = a6;
  v8[140] = a5;
  v8[139] = a4;
  sub_1D726290C();
  v8[146] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[147] = v10;
  v8[148] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D61F3AD8, v10, v9);
}

uint64_t sub_1D61F3AD8()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1112);
  v3 = v2[1];
  *(v0 + 232) = *v2;
  *(v0 + 248) = v3;
  v4 = v2[5];
  v6 = v2[2];
  v5 = v2[3];
  *(v0 + 296) = v2[4];
  *(v0 + 312) = v4;
  *(v0 + 264) = v6;
  *(v0 + 280) = v5;
  v7 = v2[9];
  v9 = v2[6];
  v8 = v2[7];
  *(v0 + 360) = v2[8];
  *(v0 + 376) = v7;
  *(v0 + 328) = v9;
  *(v0 + 344) = v8;
  *(v0 + 392) = v2[1];
  v10 = v2[5];
  v12 = v2[2];
  v11 = v2[3];
  *(v0 + 440) = v2[4];
  *(v0 + 456) = v10;
  *(v0 + 408) = v12;
  *(v0 + 424) = v11;
  v13 = v2[9];
  v15 = v2[6];
  v14 = v2[7];
  *(v0 + 504) = v2[8];
  *(v0 + 520) = v13;
  *(v0 + 472) = v15;
  *(v0 + 488) = v14;
  v16 = v2[6];
  v17 = v2[7];
  v18 = v2[9];
  *(v0 + 648) = v2[8];
  *(v0 + 664) = v18;
  *(v0 + 616) = v16;
  *(v0 + 632) = v17;
  v19 = v2[2];
  v20 = v2[3];
  v21 = v2[5];
  *(v0 + 584) = v2[4];
  *(v0 + 600) = v21;
  *(v0 + 552) = v19;
  *(v0 + 568) = v20;
  *(v0 + 536) = v2[1];
  v22 = *(v1 + 160);
  v23 = *(v1 + 176);
  v24 = *(v1 + 192);
  *(v0 + 224) = *(v1 + 208);
  *(v0 + 192) = v23;
  *(v0 + 208) = v24;
  *(v0 + 176) = v22;
  v25 = *(v1 + 96);
  v26 = *(v1 + 112);
  v27 = *(v1 + 144);
  *(v0 + 144) = *(v1 + 128);
  *(v0 + 160) = v27;
  *(v0 + 112) = v25;
  *(v0 + 128) = v26;
  v28 = *(v1 + 32);
  v29 = *(v1 + 48);
  v30 = *(v1 + 80);
  *(v0 + 80) = *(v1 + 64);
  *(v0 + 96) = v30;
  *(v0 + 48) = v28;
  *(v0 + 64) = v29;
  v31 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v31;
  sub_1D5D65D5C(v0 + 392, v0 + 680);
  v32 = swift_task_alloc();
  *(v0 + 1192) = v32;
  *v32 = v0;
  v32[1] = sub_1D61F3C4C;
  v33 = *(v0 + 1136);
  v34 = *(v0 + 1120);

  return sub_1D61F4088((v0 + 536), v34, v0 + 16, v33);
}

uint64_t sub_1D61F3C4C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2 + 536);
  *(v3 + 1200) = a1;
  *(v3 + 1208) = v1;

  if (v1)
  {
    *(v3 + 824) = *v4;
    v5 = *(v3 + 552);
    v6 = *(v3 + 568);
    v7 = *(v3 + 600);
    *(v3 + 872) = *(v3 + 584);
    *(v3 + 888) = v7;
    *(v3 + 840) = v5;
    *(v3 + 856) = v6;
    v8 = *(v3 + 616);
    v9 = *(v3 + 632);
    v10 = *(v3 + 664);
    *(v3 + 936) = *(v3 + 648);
    *(v3 + 952) = v10;
    *(v3 + 904) = v8;
    *(v3 + 920) = v9;
    sub_1D5D68304(v3 + 824);
    v11 = *(v3 + 1184);
    v12 = *(v3 + 1176);
    v13 = sub_1D61F3EBC;
  }

  else
  {
    *(v3 + 968) = *v4;
    v14 = *(v3 + 552);
    v15 = *(v3 + 568);
    v16 = *(v3 + 600);
    *(v3 + 1016) = *(v3 + 584);
    *(v3 + 1032) = v16;
    *(v3 + 984) = v14;
    *(v3 + 1000) = v15;
    v17 = *(v3 + 616);
    v18 = *(v3 + 632);
    v19 = *(v3 + 664);
    *(v3 + 1080) = *(v3 + 648);
    *(v3 + 1096) = v19;
    *(v3 + 1048) = v17;
    *(v3 + 1064) = v18;
    sub_1D5D68304(v3 + 968);
    v11 = *(v3 + 1184);
    v12 = *(v3 + 1176);
    v13 = sub_1D61F3DD8;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1D61F3DD8()
{
  v1 = v0[150];

  if (v1)
  {
    v2 = (v0[143] + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier);
    v3 = v2[1];
    if (v3)
    {
      v4 = *v2 == v0[144] && v3 == v0[145];
      v5 = v0[150];
      if (v4)
      {
        goto LABEL_9;
      }

      if (sub_1D72646CC())
      {
        v5 = v0[150];
LABEL_9:

        sub_1D717DD6C(v5, 0);
      }
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D61F3EBC()
{
  v1 = v0[143];

  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier + 8);
  if (v2 && (*(v1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier) == v0[144] ? (v3 = v2 == v0[145]) : (v3 = 0), v3 || (sub_1D72646CC() & 1) != 0))
  {
    v4 = v0[151];
    v5 = v0[143] + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_state;
    if (*(v5 + 8))
    {
      v6 = v4;
    }

    else
    {
      v8 = *v5;
      v9 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
      v10 = *(*v5 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView);
      v11 = v4;
      sub_1D61F55B4(v8, 0);
      v12 = [v10 superview];
      if (v12)
      {
        v13 = *(v0[143] + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_canvasView);
        v14 = v12;

        if (v14 == v13)
        {
          [*&v8[v9] removeFromSuperview];
        }
      }

      sub_1D61F55D0(v8, 0);
    }

    v7 = v0[151];
    v15 = v0[143];
    v16 = *v5;
    *v5 = v4;
    v17 = *(v5 + 8);
    *(v5 + 8) = 1;
    v18 = v7;
    v19 = v7;
    sub_1D61F55D0(v16, v17);

    [v15 setNeedsLayout];
  }

  else
  {
    v7 = v0[151];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D61F4088(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1800) = a4;
  *(v5 + 1792) = a2;
  *(v5 + 1808) = type metadata accessor for DebugFormatCanvasBindResult(0);
  *(v5 + 1816) = swift_task_alloc();
  *(v5 + 1824) = type metadata accessor for DebugFormatCanvasBindRequest(0);
  *(v5 + 1832) = swift_task_alloc();
  type metadata accessor for FormatWorkspaceGroup(0);
  v8 = swift_task_alloc();
  v9 = a1[4];
  *(v5 + 1568) = a1[5];
  v10 = a1[7];
  *(v5 + 1584) = a1[6];
  *(v5 + 1600) = v10;
  *(v5 + 1616) = a1[8];
  v11 = *a1;
  *(v5 + 1504) = a1[1];
  v12 = a1[3];
  *(v5 + 1520) = a1[2];
  *(v5 + 1536) = v12;
  *(v5 + 1840) = v8;
  *(v5 + 1552) = v9;
  *(v5 + 1488) = v11;
  v13 = *(a3 + 160);
  *(v5 + 512) = *(a3 + 144);
  *(v5 + 528) = v13;
  *(v5 + 544) = *(a3 + 176);
  *(v5 + 559) = *(a3 + 191);
  v14 = *(a3 + 96);
  *(v5 + 448) = *(a3 + 80);
  *(v5 + 464) = v14;
  v15 = *(a3 + 128);
  *(v5 + 480) = *(a3 + 112);
  *(v5 + 496) = v15;
  v16 = *(a3 + 32);
  *(v5 + 384) = *(a3 + 16);
  *(v5 + 400) = v16;
  v17 = *(a3 + 64);
  *(v5 + 416) = *(a3 + 48);
  *(v5 + 432) = v17;
  *(v5 + 198) = *(a3 + 195);
  *(v5 + 199) = *(a3 + 196);
  *(v5 + 1848) = *(a3 + 200);
  *(v5 + 1856) = *(v4 + 8);
  sub_1D726290C();
  sub_1D5ECF1C0(v5 + 384, v5 + 568);

  *(v5 + 1864) = sub_1D72628FC();
  v19 = sub_1D726285C();
  *(v5 + 1872) = v19;
  *(v5 + 1880) = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D61F426C, v19, v18);
}

uint64_t sub_1D61F426C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 544);
  v3 = *(v0 + 496);
  *(v0 + 1432) = *(v0 + 512);
  *(v0 + 1448) = v1;
  *(v0 + 1464) = v2;
  v4 = *(v0 + 464);
  v5 = *(v0 + 480);
  v6 = *(v0 + 432);
  *(v0 + 1368) = *(v0 + 448);
  *(v0 + 1384) = v4;
  *(v0 + 1400) = v5;
  *(v0 + 1416) = v3;
  v7 = *(v0 + 400);
  v8 = *(v0 + 416);
  *(v0 + 1304) = *(v0 + 384);
  *(v0 + 1320) = v7;
  v9 = *(v0 + 1856);
  v64 = *(v0 + 1848);
  v62 = *(v0 + 198);
  v63 = *(v0 + 199);
  v10 = *(v0 + 1840);
  v57 = *(v0 + 1824);
  v58 = *(v0 + 1832);
  v11 = *(v0 + 1800);
  v60 = *(v0 + 1792);
  v61 = *(v0 + 384);
  v59 = *(v0 + 392);
  *(v0 + 1480) = *(v0 + 560);
  *(v0 + 1336) = v8;
  *(v0 + 1352) = v6;
  v12 = *(v0 + 562);
  *(v0 + 379) = v12;
  sub_1D61F512C(v11, v10, type metadata accessor for FormatWorkspaceGroup);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D72600CC();

  v13 = *(*(v0 + 1776) + 16);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);

  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  v56 = *(type metadata accessor for DebugFormatEditorLayoutContext(0) + 20);
  v16 = *(v0 + 1448);
  *(v0 + 328) = *(v0 + 1432);
  *(v0 + 344) = v16;
  *(v0 + 360) = *(v0 + 1464);
  v17 = *(v0 + 1384);
  *(v0 + 264) = *(v0 + 1368);
  *(v0 + 280) = v17;
  v18 = *(v0 + 1416);
  *(v0 + 296) = *(v0 + 1400);
  *(v0 + 312) = v18;
  v19 = *(v0 + 1320);
  *(v0 + 200) = *(v0 + 1304);
  *(v0 + 216) = v19;
  v20 = *(v0 + 1352);
  *(v0 + 232) = *(v0 + 1336);
  *(v0 + 376) = *(v0 + 1480);
  *(v0 + 248) = v20;
  *(v0 + 377) = 1;
  *(v0 + 378) = v12;
  sub_1D5B6C03C(0, &qword_1EC88EE90, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6F90]);
  v21 = (type metadata accessor for DebugFormatEditorWorkspaceGroup(0) - 8);
  v22 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7273AE0;
  v24 = v23 + v22;
  v25 = *(v11 + v21[7]);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D5ECF1C0(v0 + 200, v0 + 752);

  sub_1D72600CC();

  v26 = *(v0 + 1784);
  sub_1D61F512C(v10, v24, type metadata accessor for FormatWorkspaceGroup);
  *(v24 + v21[7]) = v25;
  *(v24 + v21[8]) = v26;
  v27 = (v24 + v21[9]);
  v28 = *(v0 + 1568);
  v29 = *(v0 + 1600);
  v27[6] = *(v0 + 1584);
  v27[7] = v29;
  v27[8] = *(v0 + 1616);
  v30 = *(v0 + 1504);
  v31 = *(v0 + 1536);
  v27[2] = *(v0 + 1520);
  v27[3] = v31;
  v27[4] = *(v0 + 1552);
  v27[5] = v28;
  *v27 = *(v0 + 1488);
  v27[1] = v30;
  v32 = *(v0 + 344);
  *(v0 + 144) = *(v0 + 328);
  *(v0 + 160) = v32;
  *(v0 + 176) = *(v0 + 360);
  *(v0 + 191) = *(v0 + 375);
  v33 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v33;
  v34 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 296);
  *(v0 + 128) = v34;
  v35 = *(v0 + 216);
  *(v0 + 16) = *(v0 + 200);
  *(v0 + 32) = v35;
  v36 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v36;
  *v58 = 1;
  v37 = v57[5];
  v38 = sub_1D7259F5C();
  (*(*(v38 - 8) + 16))(&v58[v37], v60 + v56, v38);
  v39 = v57[6];
  v40 = sub_1D7259CFC();
  (*(*(v40 - 8) + 16))(&v58[v39], v60, v40);
  v41 = &v58[v57[7]];
  *v41 = v61;
  *(v41 + 1) = v59;
  v42 = *(v0 + 16);
  v43 = *(v0 + 32);
  v44 = *(v0 + 64);
  *(v41 + 3) = *(v0 + 48);
  *(v41 + 4) = v44;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  v45 = *(v0 + 80);
  v46 = *(v0 + 96);
  v47 = *(v0 + 128);
  *(v41 + 7) = *(v0 + 112);
  *(v41 + 8) = v47;
  *(v41 + 5) = v45;
  *(v41 + 6) = v46;
  v48 = *(v0 + 144);
  v49 = *(v0 + 191);
  v50 = *(v0 + 176);
  *(v41 + 10) = *(v0 + 160);
  *(v41 + 11) = v50;
  *(v41 + 191) = v49;
  *(v41 + 9) = v48;
  v41[195] = v62;
  v41[196] = v63;
  LOWORD(v49) = *(v0 + 195);
  v41[199] = *(v0 + 197);
  *(v41 + 197) = v49;
  *(v41 + 25) = v64;
  *(v41 + 26) = v23;
  v51 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree_canvasGenerator;
  *(v0 + 1888) = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree_canvasGenerator;
  *(v0 + 1896) = *(v9 + v51);
  *(v0 + 1904) = type metadata accessor for DebugFormatCanvasTracer();
  v52 = swift_allocObject();
  *(v0 + 1912) = v52;
  sub_1D61F55EC(0);
  *(v0 + 1920) = v53;
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  *(v54 + 16) = MEMORY[0x1E69E7CC0];
  *(v52 + 16) = v54;
  sub_1D5D65D5C(v0 + 1488, v0 + 1632);

  return MEMORY[0x1EEE6DFA0](sub_1D61F47BC, 0, 0);
}

uint64_t sub_1D61F47BC()
{
  v1 = v0[239];
  v2 = v0[237];
  v3 = v0[229];
  v4 = swift_task_alloc();
  v0[241] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[242] = v5;
  *v5 = v0;
  v5[1] = sub_1D61F48C4;
  v6 = v0[227];
  v7 = v0[226];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000017, 0x80000001D73CECD0, sub_1D61F5678, v4, v7);
}

uint64_t sub_1D61F48C4()
{
  v2 = *v1;
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v3 = sub_1D61F49F8;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v5 = *(v2 + 1880);
    v4 = *(v2 + 1872);
    v3 = sub_1D61F4BA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D61F49F8()
{

  v1 = *(v0 + 1880);
  v2 = *(v0 + 1872);

  return MEMORY[0x1EEE6DFA0](sub_1D61F4A6C, v2, v1);
}

uint64_t sub_1D61F4A6C()
{
  v1 = *(v0 + 379);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1832);

  v4 = *(v0 + 1448);
  *(v0 + 1064) = *(v0 + 1432);
  *(v0 + 1080) = v4;
  *(v0 + 1096) = *(v0 + 1464);
  *(v0 + 1112) = *(v0 + 1480);
  v5 = *(v0 + 1384);
  *(v0 + 1000) = *(v0 + 1368);
  *(v0 + 1016) = v5;
  v6 = *(v0 + 1416);
  *(v0 + 1032) = *(v0 + 1400);
  *(v0 + 1048) = v6;
  v7 = *(v0 + 1320);
  *(v0 + 936) = *(v0 + 1304);
  *(v0 + 952) = v7;
  v8 = *(v0 + 1352);
  *(v0 + 968) = *(v0 + 1336);
  *(v0 + 984) = v8;
  *(v0 + 1113) = 1;
  *(v0 + 1114) = v1;
  sub_1D5ECF21C(v0 + 936);
  sub_1D61F5038(v3, type metadata accessor for DebugFormatCanvasBindRequest);
  sub_1D61F5038(v2, type metadata accessor for FormatWorkspaceGroup);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D61F4BA8()
{
  v1 = *(v0 + 379);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1832);
  v4 = *(v0 + 1816);

  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;

  sub_1D5F2882C(v4, v5);
  v8 = v7;

  sub_1D61F5038(v4, type metadata accessor for DebugFormatCanvasBindResult);
  v9 = *(v0 + 1448);
  *(v0 + 1248) = *(v0 + 1432);
  *(v0 + 1264) = v9;
  *(v0 + 1280) = *(v0 + 1464);
  v10 = *(v0 + 1384);
  *(v0 + 1184) = *(v0 + 1368);
  *(v0 + 1200) = v10;
  v11 = *(v0 + 1416);
  *(v0 + 1216) = *(v0 + 1400);
  *(v0 + 1232) = v11;
  v12 = *(v0 + 1320);
  *(v0 + 1120) = *(v0 + 1304);
  *(v0 + 1136) = v12;
  v13 = *(v0 + 1352);
  *(v0 + 1152) = *(v0 + 1336);
  *(v0 + 1296) = *(v0 + 1480);
  *(v0 + 1168) = v13;
  *(v0 + 1297) = 1;
  *(v0 + 1298) = v1;
  sub_1D5ECF21C(v0 + 1120);
  sub_1D61F5038(v3, type metadata accessor for DebugFormatCanvasBindRequest);
  sub_1D61F5038(v2, type metadata accessor for FormatWorkspaceGroup);

  v14 = *(v0 + 8);

  return v14(v8);
}

uint64_t sub_1D61F4E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D61F4EF0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D61F4E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D61F4EF0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D61F4EC8(uint64_t a1)
{
  sub_1D61F4EF0();
  sub_1D726131C();
  __break(1u);
}

unint64_t sub_1D61F4EF0()
{
  result = qword_1EC885248;
  if (!qword_1EC885248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885248);
  }

  return result;
}

void sub_1D61F4F44(uint64_t a1)
{
  if (!qword_1EC885250)
  {
    sub_1D5B6C03C(255, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885250);
    }
  }
}

uint64_t sub_1D61F4FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D61F5038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D61F5098(uint64_t a1)
{
  if (!qword_1EC885260)
  {
    type metadata accessor for DebugFormatPackageTree(255);
    sub_1D61F52D4(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree, &unk_1D7380468);
    v1 = sub_1D7260FBC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885260);
    }
  }
}

uint64_t sub_1D61F512C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61F5194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D61F5208(uint64_t a1, uint64_t a2)
{
  sub_1D5B6C03C(0, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61F52D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D61F531C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for FormatMetadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D61F5390(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugFormatEditorLayoutContext(0) - 8);
  v4 = (*(v3 + 80) + 192) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for DebugFormatEditorWorkspaceGroup(0) - 8);
  v7 = (v5 + *(v6 + 80) + 216) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D5B64684;

  return sub_1D61F3A1C(a1, v9, v10, v1 + 32, v1 + v4, v1 + v5, v1 + v7, v8);
}

uint64_t sub_1D61F554C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D61F55B4(void *a1, char a2)
{
  if (a2 == 1)
  {
    v2 = a1;
  }

  else if (!a2)
  {
  }
}

void sub_1D61F55D0(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

void sub_1D61F55EC(uint64_t a1)
{
  if (!qword_1EC885270)
  {
    sub_1D5B49DA8(255, &qword_1EC894550, &type metadata for DebugFormatHistoryMeasurement, MEMORY[0x1E69E62F8]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1D7263E4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885270);
    }
  }
}

uint64_t sub_1D61F5688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v25[-v21];
  v33 = a1;
  (*(v18 + 104))(&v25[-v21], *MEMORY[0x1E69D7460], v17, v20);
  v26 = a2;
  v27 = a3;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a4;
  v23 = MEMORY[0x1E69D7150];
  sub_1D5BEAB60(0, &qword_1EDF3C068, MEMORY[0x1E69D7150]);
  sub_1D5BEAD1C(&qword_1EDF3C070, &qword_1EDF3C068, v23, MEMORY[0x1E69D7158]);
  sub_1D72599EC();
  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_1D61F5874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v50 = a4;
  v52 = a3;
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v46 - v18);
  sub_1D61F78FC(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v53 = a1;
  KeyPath = swift_getKeyPath();
  v24 = sub_1D725A35C();
  v47 = swift_allocBox();
  v26 = v25;
  v27 = *(type metadata accessor for HeadlineViewLayout.Options(0) + 20);
  v49 = a2;
  sub_1D61F7954(a2 + v27, v23);
  v28 = sub_1D725A34C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v23, 1, v28) == 1)
  {
    (*(v29 + 104))(v26, *MEMORY[0x1E69D7338], v28);
    if (v30(v23, 1, v28) != 1)
    {
      sub_1D61F79B8(v23);
    }
  }

  else
  {
    (*(v29 + 32))(v26, v23, v28);
  }

  (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69D7360], v24);
  *v19 = v47;
  v31 = *(v16 + 104);
  v31(v19, *MEMORY[0x1E69D7478], v15);
  v32 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v34 = v33;
  v35 = sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v32, MEMORY[0x1E69D6F40]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  v36 = *(v16 + 8);
  v36(v19, v15);
  v37 = [*(v52 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20) + 40) hasVideo];
  v38 = *MEMORY[0x1E69D7460];
  if (v37)
  {
    v53 = v51;
    v31(v19, v38, v15);
    v44 = v34;
    v45 = v35;
    v42 = sub_1D61F7A50;
    v43 = 0;
    sub_1D7259B2C();
    v36(v19, v15);
  }

  v53 = v51;
  v39 = (v31)(v19, v38, v15);
  MEMORY[0x1EEE9AC00](v39, v40);
  *(&v46 - 8) = a5;
  *(&v46 - 7) = a6;
  *(&v46 - 6) = a7;
  *(&v46 - 5) = a8;
  v44 = v35;
  sub_1D7259A2C();
  return (v36)(v19, v15);
}

uint64_t sub_1D61F5DA4(uint64_t *a1)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v16 - v6;
  v16[1] = a1;
  swift_getKeyPath();
  sub_1D5BEB9A0();
  sub_1D725A51C();
  sub_1D5BEADA4(0);
  sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = *MEMORY[0x1E69D7058];
  sub_1D5BEABF0(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
  (*(*(v14 - 8) + 104))(v12 + v11, v13, v14);
  (*(v10 + 104))(v12 + v11, *MEMORY[0x1E69D7080], v9);
  sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38], MEMORY[0x1E69D6F40]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D61F60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v25[-v21];
  v33 = a1;
  (*(v18 + 104))(&v25[-v21], *MEMORY[0x1E69D7460], v17, v20);
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v23 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v23, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_1D61F62C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v30[-v21];
  v34 = a1;
  (*(v18 + 104))(&v30[-v21], *MEMORY[0x1E69D7460], v17, v20);
  sub_1D5BEADA4(0);
  sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7273AE0;
  v27 = (v26 + v25);
  *v27 = a5;
  v27[1] = a6;
  v27[2] = a7;
  v27[3] = a8;
  (*(v24 + 104))();
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v28 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v28, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();

  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_1D61F6580(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v95 = a4;
  v6 = sub_1D7261B9C();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v104 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v92 - v16;
  v105 = a1;
  v110 = a1;
  swift_getKeyPath();
  sub_1D725A18C();
  v19 = v18;
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  sub_1D7264C3C();
  v20 = round(v19 * 56.0 * 0.25);
  if (v109)
  {
    v21 = v20;
  }

  else
  {
    v21 = 14.0;
  }

  v101 = type metadata accessor for HeadlineViewLayout.Context(0);
  v102 = a3;
  v22 = [*(a3 + v101[5] + 40) sourceChannel];
  if (v22)
  {
    v23 = [v22 theme];
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() defaultMetrics];
  sub_1D5BEAE2C(v23, v24, v17, v21);

  swift_unknownObjectRelease();
  v25 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v27 = v26;
  v28 = sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v25, MEMORY[0x1E69D6F40]);
  v98 = sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  v29 = *(v10 + 8);
  v30 = v17;
  v31 = v104;
  v29(v30, v104);
  v110 = v105;
  v32 = v105;
  v33 = swift_allocObject();
  *(v33 + 16) = 0x4020000000000000;
  *v13 = v33;
  v34 = *(v10 + 104);
  v97 = *MEMORY[0x1E69D7488];
  v34(v13);
  sub_1D7259A9C();
  v35 = (v29)(v13, v31);
  KeyPath = &v92;
  v110 = v32;
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v38 = v102;
  v90 = v102;
  v39 = *MEMORY[0x1E69D7460];
  v99 = v10 + 104;
  v100 = v34;
  (v34)(v13, v39, v31, v37);
  v108 = v28;
  v91 = v28;
  v103 = v27;
  v89[1] = v89;
  v90 = v27;
  v89[0] = sub_1D5BED8E8;
  sub_1D7259B2C();
  v106 = v29;
  v107 = v10 + 8;
  v29(v13, v31);
  v110 = v105;
  swift_getKeyPath();
  v40 = *(v38 + v101[7]);
  if (*(v40 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), v41 = sub_1D726308C(), v43 = v92, v42 = v93, *v92 = v41, v44 = v94, (*(v42 + 104))(v43, *MEMORY[0x1E69E8018], v94), v45 = sub_1D7261BBC(), result = (*(v42 + 8))(v43, v44), (v45))
  {
    v47 = swift_allocObject();
    v48 = *(v40 + *(*v40 + 136));
    *(v47 + 16) = v48;
    *v13 = v47;
    v49 = *MEMORY[0x1E69D7440];
    v50 = v104;
    v100(v13, v49, v104);
    v51 = v48;
    sub_1D7259A7C();

    v106(v13, v50);
    if ((*v95 & 1) == 0)
    {
      goto LABEL_16;
    }

    v52 = *(v102 + v101[8]);
    if (!v52)
    {
      goto LABEL_16;
    }

    if (*(v52 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), v53 = sub_1D726308C(), v55 = v92, v54 = v93, *v92 = v53, v56 = v94, (*(v54 + 104))(v55, *MEMORY[0x1E69E8018], v94), v57 = sub_1D7261BBC(), result = (*(v54 + 8))(v55, v56), (v57))
    {
      v58 = *(v52 + *(*v52 + 136));
      v59 = v105;
      v110 = v105;
      v60 = swift_allocObject();
      *(v60 + 16) = 0x4010000000000000;
      *v13 = v60;
      v61 = v104;
      v62 = v100;
      v100(v13, v97, v104);
      v63 = v58;
      sub_1D7259A9C();
      v106(v13, v61);
      v110 = v59;
      KeyPath = swift_getKeyPath();
      v64 = swift_allocObject();
      *(v64 + 16) = v63;
      *v13 = v64;
      v62(v13, v49, v61);
      sub_1D5BEADA4(0);
      sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
      v66 = v65;
      v67 = *(v65 - 8);
      v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1D7273AE0;
      *(v69 + v68) = 2;
      (*(v67 + 104))(v69 + v68, *MEMORY[0x1E69D6FE8], v66);
      v70 = v63;
      sub_1D7259A7C();

      v106(v13, v61);
LABEL_16:
      v71 = v105;
      v110 = v105;
      v72 = swift_allocObject();
      *(v72 + 16) = 0x4030000000000000;
      *v13 = v72;
      v73 = v97;
      v74 = v104;
      v75 = v100;
      v100(v13, v97, v104);
      sub_1D7259A9C();
      v106(v13, v74);
      v110 = v71;
      v76 = swift_allocObject();
      v77 = (v102 + v101[6]);
      v78 = v77[3];
      v79 = v77[4];
      __swift_project_boxed_opaque_existential_1(v77, v78);
      *(v76 + 16) = (*(v79 + 16))(v78, v79);
      *v13 = v76;
      v75(v13, v73, v74);
      sub_1D5BEADA4(0);
      sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
      v81 = v80;
      v82 = *(v80 - 8);
      v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v85 = *MEMORY[0x1E69D7050];
      sub_1D5BEABF0(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
      (*(*(v86 - 8) + 104))(v84 + v83, v85, v86);
      v87 = (*(v82 + 104))(v84 + v83, *MEMORY[0x1E69D7080], v81);
      MEMORY[0x1EEE9AC00](v87, v88);
      v90 = v108;
      sub_1D72599EC();

      return (v106)(v13, v74);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(uint64_t a1, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_1D725A36C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D725A19C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(a1 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20) + 40) hasThumbnail] || (*a2 & 2) != 0)
  {
    if (qword_1EDF386E8 != -1)
    {
      swift_once();
    }

    sub_1D725972C();

    v27 = MEMORY[0x1EEE9AC00](v25, v26);
    *(&v30 - 8) = a3;
    *(&v30 - 7) = a4;
    *(&v30 - 6) = a5;
    *(&v30 - 5) = a6;
    *(&v30 - 4) = v21;
    *(&v30 - 3) = a1;
    *(&v30 - 2) = a2;
    (*(v13 + 104))(v16, *MEMORY[0x1E69D7378], v12, v27);
    sub_1D5BEAB60(0, &qword_1EDF3BF50, MEMORY[0x1E69D73B8]);
    swift_allocObject();
  }

  else
  {
    if (qword_1EDF386E8 != -1)
    {
      swift_once();
    }

    sub_1D725972C();

    v24 = MEMORY[0x1EEE9AC00](v22, v23);
    *(&v30 - 8) = a3;
    *(&v30 - 7) = a4;
    *(&v30 - 6) = a5;
    *(&v30 - 5) = a6;
    *(&v30 - 4) = a2;
    *(&v30 - 3) = v21;
    *(&v30 - 2) = a1;
    (*(v13 + 104))(v16, *MEMORY[0x1E69D7378], v12, v24);
    sub_1D5BEAB60(0, &qword_1EDF3BF50, MEMORY[0x1E69D73B8]);
    swift_allocObject();
  }

  v28 = sub_1D725A4CC();
  (*(v18 + 8))(v21, v17);
  return v28;
}

uint64_t sub_1D61F750C(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725A19C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(a1 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20) + 40) hasThumbnail] || (*a2 & 2) != 0)
  {
    v16 = *MEMORY[0x1E69DDCE0];
    v22 = *(MEMORY[0x1E69DDCE0] + 16);
    v23 = v16;
    if (qword_1EDF386E8 != -1)
    {
      swift_once();
    }

    sub_1D725972C();

    MEMORY[0x1EEE9AC00](v17, v18);
    v19 = v22;
    *(&v22 - 4) = v23;
    *(&v22 - 3) = v19;
    *(&v22 - 4) = v13;
    *(&v22 - 3) = a1;
    *(&v22 - 2) = a2;
    (*(v5 + 104))(v8, *MEMORY[0x1E69D7378], v4);
    sub_1D5BEAB60(0, &qword_1EDF3BF50, MEMORY[0x1E69D73B8]);
    swift_allocObject();
  }

  else
  {
    if (qword_1EDF386E8 != -1)
    {
      swift_once();
    }

    sub_1D725972C();

    MEMORY[0x1EEE9AC00](v14, v15);
    *(&v22 - 8) = a2;
    *(&v22 - 7) = a1;
    *(&v22 - 3) = xmmword_1D72866A0;
    *(&v22 - 4) = 0;
    *(&v22 - 3) = 0;
    *(&v22 - 2) = v13;
    (*(v5 + 104))(v8, *MEMORY[0x1E69D7378], v4);
    sub_1D5BEAB60(0, &qword_1EDF3BF50, MEMORY[0x1E69D73B8]);
    swift_allocObject();
  }

  v20 = sub_1D725A4CC();
  (*(v10 + 8))(v13, v9);
  return v20;
}

void sub_1D61F78FC(uint64_t a1)
{
  if (!qword_1EDF3BF68)
  {
    sub_1D725A34C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BF68);
    }
  }
}

uint64_t sub_1D61F7954(uint64_t a1, uint64_t a2)
{
  sub_1D61F78FC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61F79B8(uint64_t a1)
{
  sub_1D61F78FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D61F7A88()
{
  v1 = *v0 >> 61;
  v2 = 1;
  if (((1 << v1) & 0xD7) != 0)
  {
    v2 = 0;
  }

  else if (v1 == 3)
  {
    v2 = sub_1D61F7A88();
  }

  return v2 & 1;
}

BOOL static FormatDimensionSizingValue.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 != 6)
      {
        if (v2 == 0xE000000000000000)
        {
          if (v3 != 0xE000000000000000)
          {
            goto LABEL_34;
          }

          sub_1D5D09FB0(0xE000000000000000);
          v16 = 0xE000000000000000;
        }

        else if (v2 == 0xE000000000000008)
        {
          if (v3 != 0xE000000000000008)
          {
            goto LABEL_34;
          }

          sub_1D5D09FB0(0xE000000000000008);
          v16 = 0xE000000000000008;
        }

        else
        {
          if (v3 != 0xE000000000000010)
          {
            goto LABEL_34;
          }

          sub_1D5D09FB0(0xE000000000000010);
          v16 = 0xE000000000000010;
        }

        sub_1D5D09FB0(v16);
        return 1;
      }

      if (v3 >> 61 != 6)
      {
        goto LABEL_34;
      }

      goto LABEL_19;
    }

    if (v4 != 4)
    {
      if (v3 >> 61 != 5)
      {
        goto LABEL_34;
      }

      goto LABEL_19;
    }

    if (v3 >> 61 != 4)
    {
      goto LABEL_34;
    }

    v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v21 = v7;
    v18 = v8;
    v19 = v9;
    sub_1D5D0A048(v3);
    sub_1D5D0A048(v2);
    v10 = _s8NewsFeed22FormatFontMetricSizingV2eeoiySbAC_ACtFZ_0(&v20, &v18);
LABEL_23:
    v13 = v10;
    goto LABEL_24;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      if (!(v3 >> 61))
      {
        v5 = *(v2 + 16);
        v6 = *(v3 + 16);
LABEL_20:
        sub_1D5D0A048(*a2);
        sub_1D5D0A048(v2);

        sub_1D633A310(v5, v6);
        v13 = v14;

LABEL_24:
        sub_1D5D09FB0(v2);
        sub_1D5D09FB0(v3);
        return v13;
      }

LABEL_34:
      sub_1D5D0A048(*a2);
      sub_1D5D0A048(v2);
      sub_1D5D09FB0(v2);
      sub_1D5D09FB0(v3);
      return 0;
    }

    if (v3 >> 61 != 1)
    {
      goto LABEL_34;
    }

LABEL_19:
    v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_20;
  }

  if (v4 != 2)
  {
    if (v3 >> 61 != 3)
    {
      goto LABEL_34;
    }

    v15 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = v15;
    sub_1D5D0A048(v3);
    sub_1D5D0A048(v2);
    v10 = static FormatDimensionSizingValue.== infix(_:_:)(&v20, &v18);
    goto LABEL_23;
  }

  if (v3 >> 61 != 2)
  {
    goto LABEL_34;
  }

  v11 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_1D5D0A048(*a2);
  sub_1D5D0A048(v2);
  sub_1D5D09FB0(v2);
  sub_1D5D09FB0(v3);
  return v11 == v12;
}

uint64_t sub_1D61F7D90@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = v5;
  v9 = *v4;
  v10 = v9 >> 61;
  if ((v9 >> 61) > 3)
  {
    if (v10 > 5)
    {
      if (v10 != 6)
      {
        v48 = sub_1D725A09C();
        v49 = *(*(v48 - 8) + 104);
        if (v9 == 0xE000000000000000)
        {
          v50 = MEMORY[0x1E69D71E8];
        }

        else if (v9 == 0xE000000000000008)
        {
          v50 = MEMORY[0x1E69D7208];
        }

        else
        {
          v50 = MEMORY[0x1E69D71E0];
        }

        v56 = *v50;
        v57 = a4;
        return v49(v57, v56, v48);
      }

      v24 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = swift_allocObject();
      v26 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v27 = v26();
      v28 = sub_1D5E02AFC(v27, v24);
      if (v5)
      {

        return swift_deallocUninitializedObject();
      }

      v55 = v28;

      *(v25 + 16) = v55;
      *a4 = v25;
      v23 = MEMORY[0x1E69D71D0];
LABEL_41:
      v59 = *v23;
      v48 = sub_1D725A09C();
      v49 = *(*(v48 - 8) + 104);
      v57 = a4;
      v56 = v59;
      return v49(v57, v56, v48);
    }

    if (v10 != 4)
    {
      v34 = a2;
      v35 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = swift_allocObject();
      if (a3)
      {
        v37 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext(0);

        v38 = v37();
        v39 = sub_1D5E02AFC(v38, v35);
        if (v5)
        {

          return swift_deallocUninitializedObject();
        }

        v58 = v39;

        v34 = v58;
      }

      *(v12 + 16) = v34;
      goto LABEL_38;
    }

    v16 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (*((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 12)
    {
      v17 = swift_allocObject();
      v18 = objc_opt_self();

      *(v17 + 16) = [v18 defaultMetrics];
      v19 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v20 = v19();
      v21 = sub_1D5E02AFC(v20, v16);

      if (!v6)
      {
        goto LABEL_40;
      }
    }

    else
    {

      v51 = sub_1D6F8A788();
      v17 = swift_allocObject();
      *(v17 + 16) = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      v52 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v53 = v52();
      v54 = sub_1D5E02AFC(v53, v16);
      if (!v5)
      {
        v21 = v54;

LABEL_40:
        *(v17 + 24) = v21;
        *a4 = v17;
        v23 = MEMORY[0x1E69D71C8];
        goto LABEL_41;
      }
    }

    return swift_deallocUninitializedObject();
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      v11 = *(v9 + 16);
      v12 = swift_allocObject();
      v13 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v14 = v13();
      v15 = sub_1D5E02AFC(v14, v11);

      if (!v5)
      {
        *(v12 + 16) = v15;
LABEL_38:
        *a4 = v12;
        v23 = MEMORY[0x1E69D71F0];
        goto LABEL_41;
      }

      return swift_deallocUninitializedObject();
    }

    v29 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v30 = swift_allocObject();
    v31 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);

    v32 = v31();
    v33 = sub_1D5E02AFC(v32, v29);

    if (v5)
    {
      return swift_deallocUninitializedObject();
    }

    *(v30 + 16) = v33;
    *a4 = v30;
    v23 = MEMORY[0x1E69D71D8];
    goto LABEL_41;
  }

  if (v10 == 2)
  {
    sub_1D725993C();
    v22 = swift_allocBox();
    sub_1D725992C();
    *a4 = v22;
    v23 = MEMORY[0x1E69D7200];
    goto LABEL_41;
  }

  v40 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v43 = sub_1D725A09C();
  v44 = swift_allocBox();
  v46 = v45;
  sub_1D5D0A048(v40);
  sub_1D61F7D90(a1, a2, a3 & 1, v46);
  sub_1D5D09FB0(v40);
  if (v5)
  {
    return swift_deallocBox();
  }

  *a4 = v44;
  return (*(*(v43 - 8) + 104))(a4, *MEMORY[0x1E69D71F8], v43);
}

unint64_t sub_1D61F8418(uint64_t a1)
{
  result = sub_1D61F8440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61F8440()
{
  result = qword_1EC885278;
  if (!qword_1EC885278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885278);
  }

  return result;
}

unint64_t sub_1D61F8494(void *a1)
{
  a1[1] = sub_1D5C71CA0();
  a1[2] = sub_1D61F84CC();
  result = sub_1D61F8520();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61F84CC()
{
  result = qword_1EDF0B700;
  if (!qword_1EDF0B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B700);
  }

  return result;
}

unint64_t sub_1D61F8520()
{
  result = qword_1EC885280;
  if (!qword_1EC885280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885280);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed26FormatDimensionSizingValueO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

void *sub_1D61F8590(void *result, uint64_t a2)
{
  if (a2 < 7)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  return result;
}

uint64_t sub_1D61F85CC()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AFC8 = result;
  return result;
}

double static Commands.ShowTextResize.article.getter()
{
  if (qword_1EDF3AFC0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D61F8764()
{
  v0 = sub_1D725DC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AFC0 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D725811C();

  if (qword_1EC87DB08 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC895188;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
  sub_1D725D3DC();
  swift_allocObject();
  v9 = v8;
  return sub_1D725D39C();
}

void GradientDescriptor.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1D725DD0C();
  v35 = *(v3 - 8);
  v36 = v3;
  *&v5 = MEMORY[0x1EEE9AC00](v3, v4).n128_u64[0];
  v7 = (v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 colors];
  sub_1D5B5A498(0, &qword_1EDF1A6F0, 0x1E69B5218);
  v9 = sub_1D726267C();

  if (v9 >> 62)
  {
    v10 = sub_1D7263BFC();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6FB460](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 ne_color];

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v10 != v12);

    v16 = v38;
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = [a1 locations];
  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  v18 = sub_1D726267C();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_14;
    }

LABEL_25:

    [a1 startPoint];
    v29 = v28;
    v31 = v30;
    [a1 endPoint];
    *v7 = v29;
    v7[1] = v31;
    v7[2] = v32;
    v7[3] = v33;
    (*(v35 + 104))(v7, *MEMORY[0x1E69D7B68], v36);
    sub_1D725DCCC();

    return;
  }

  v19 = sub_1D7263BFC();
  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_14:
  v38 = v11;
  sub_1D6998464(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v34[1] = v16;
    v20 = 0;
    v21 = v38;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1DA6FB460](v20, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      [v22 doubleValue];
      v25 = v24;

      v38 = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D6998464((v26 > 1), v27 + 1, 1);
        v21 = v38;
      }

      ++v20;
      *(v21 + 16) = v27 + 1;
      *(v21 + 8 * v27 + 32) = v25;
    }

    while (v19 != v20);
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

double sub_1D61F8D70(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1D5C4E168(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8E028(0);
  *&result = MEMORY[0x1EEE9AC00](v12 - 8, v13).n128_u64[0];
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *a1 >> 60;
  if (v18 > 6)
  {
    if ((v18 - 9) >= 5)
    {
      v23 = v17 & 0xFFFFFFFFFFFFFFFLL;
      if (v18 == 7)
      {
        v37 = *(v23 + 16);

        v25 = FormatColor.color.getter(v24);
        v36 = sub_1D726203C();
        [a4 setValue:v25 forKey:v36];

        v26 = v36;
      }

      else
      {
        v37 = *(v23 + 24);
        swift_retain_n();

        sub_1D61F8D70(&v37, a2, a3, a4);
      }
    }
  }

  else
  {
    if (v18 > 2)
    {
      if (v18 > 4)
      {
        if (v18 != 5)
        {
          v35 = swift_projectBox();
          sub_1D5D25254(v35, v11, sub_1D5C4E168);
          sub_1D61F9668(v11, a2, a3, MEMORY[0x1E6968FB0], sub_1D5C4E168);
          sub_1D5D28924(v11, sub_1D5C4E168);
          return result;
        }

        v27 = (v17 & 0xFFFFFFFFFFFFFFFLL);
        v28 = v27[2];
        v29 = v27[3];
        v30 = v27[4];

        sub_1D61F9508(v28, v29, v30);
      }

      else
      {
        v19 = v17 & 0xFFFFFFFFFFFFFFFLL;
        if (v18 == 3)
        {
          v20 = *(v19 + 16);

          sub_1D61F9290(v21, v20);
        }

        else
        {
          v33 = *(v19 + 16);
          v34 = *(v19 + 24);

          sub_1D61F93CC(v33, v34);
        }
      }

      goto LABEL_20;
    }

    if (!v18)
    {
      v31 = *(v17 + 16);
      v32 = *(v17 + 24);

      sub_1D61F9150(v31, v32);
LABEL_20:

      return result;
    }

    if (v18 != 1)
    {
      v22 = swift_projectBox();
      sub_1D5D25254(v22, v16, sub_1D5C8E028);
      sub_1D61F9668(v16, a2, a3, MEMORY[0x1E6969530], sub_1D5C8E028);
      sub_1D5D28924(v16, sub_1D5C8E028);
    }
  }

  return result;
}