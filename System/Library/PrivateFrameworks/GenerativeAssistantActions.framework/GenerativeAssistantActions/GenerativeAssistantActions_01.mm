unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FixedResponse@<X0>(unint64_t *a1@<X8>)
{
  result = FixedResponse.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for userResponseAcceptValues()
{
  v0 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  type metadata accessor for LocalizedStringResource();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24FE1AA40;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 543912769;
  v2._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v2);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v3 = static Disclaimer.partnerName;

  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v3);

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v4);
  result = LocalizedStringResource.init(stringInterpolation:)();
  static ConfirmationText.userResponseAcceptValues = v1;
  return result;
}

uint64_t one-time initialization function for userResponseDeclineValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  type metadata accessor for LocalizedStringResource();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24FE1AA50;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  result = LocalizedStringResource.init(stringLiteral:)();
  static ConfirmationText.userResponseDeclineValues = v0;
  return result;
}

uint64_t one-time initialization function for openSettingsDeclineValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  type metadata accessor for LocalizedStringResource();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24FE1AA60;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  result = LocalizedStringResource.init(stringLiteral:)();
  static ConfirmationText.openSettingsDeclineValues = v0;
  return result;
}

uint64_t one-time initialization function for partnerName()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

  v4 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
  result = (*(v1 + 8))(v3, v0);
  static Disclaimer.partnerName = v4;
  return result;
}

uint64_t key path getter for static Disclaimer.partnerName : Disclaimer.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for partnerName != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *(&static Disclaimer.partnerName + 1);
  *a1 = static Disclaimer.partnerName;
  a1[1] = v2;
}

uint64_t key path setter for static Disclaimer.partnerName : Disclaimer.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = one-time initialization token for partnerName;

  if (v3 != -1)
  {
    swift_once();
  }

  *&static Disclaimer.partnerName = v2;
  *(&static Disclaimer.partnerName + 1) = v1;
}

uint64_t one-time initialization function for textCreationProgressText()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v8 = 0xD00000000000001ALL;
  v9 = 0x800000024FE1FC40;
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

  v4 = GenerativeAssistantSettingsProvider.LLMProvider.rawValue.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x253056FE0](v4, v6);

  result = MEMORY[0x253056FE0](10911970, 0xA300000000000000);
  static ProgressText.textCreationProgressText = v8;
  unk_27F39FC00 = v9;
  return result;
}

uint64_t static Disclaimer.partnerName.getter(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t one-time initialization function for partnerPaneURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __swift_allocate_value_buffer(v0, static DefaultURL.partnerPaneURL);
  __swift_project_value_buffer(v0, static DefaultURL.partnerPaneURL);
  return URL.init(string:)();
}

uint64_t static DefaultURL.partnerPaneURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for partnerPaneURL != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = __swift_project_value_buffer(v2, static DefaultURL.partnerPaneURL);
  return outlined init with copy of Date?(v3, a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

GenerativeAssistantActions::CatId_optional __swiftcall CatId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 47;
  switch(v3)
  {
    case 0:
      goto LABEL_65;
    case 1:
      v5 = 1;
      goto LABEL_65;
    case 2:
      v5 = 2;
      goto LABEL_65;
    case 3:
      v5 = 3;
      goto LABEL_65;
    case 4:
      v5 = 4;
      goto LABEL_65;
    case 5:
      v5 = 5;
      goto LABEL_65;
    case 6:
      v5 = 6;
      goto LABEL_65;
    case 7:
      v5 = 7;
      goto LABEL_65;
    case 8:
      v5 = 8;
      goto LABEL_65;
    case 9:
      v5 = 9;
      goto LABEL_65;
    case 10:
      v5 = 10;
      goto LABEL_65;
    case 11:
      v5 = 11;
      goto LABEL_65;
    case 12:
      v5 = 12;
      goto LABEL_65;
    case 13:
      v5 = 13;
      goto LABEL_65;
    case 14:
      v5 = 14;
      goto LABEL_65;
    case 15:
      v5 = 15;
      goto LABEL_65;
    case 16:
      v5 = 16;
      goto LABEL_65;
    case 17:
      v5 = 17;
      goto LABEL_65;
    case 18:
      v5 = 18;
      goto LABEL_65;
    case 19:
      v5 = 19;
      goto LABEL_65;
    case 20:
      v5 = 20;
      goto LABEL_65;
    case 21:
      v5 = 21;
      goto LABEL_65;
    case 22:
      v5 = 22;
      goto LABEL_65;
    case 23:
      v5 = 23;
      goto LABEL_65;
    case 24:
      v5 = 24;
      goto LABEL_65;
    case 25:
      v5 = 25;
      goto LABEL_65;
    case 26:
      v5 = 26;
      goto LABEL_65;
    case 27:
      v5 = 27;
      goto LABEL_65;
    case 28:
      v5 = 28;
      goto LABEL_65;
    case 29:
      v5 = 29;
      goto LABEL_65;
    case 30:
      v5 = 30;
      goto LABEL_65;
    case 31:
      v5 = 31;
      goto LABEL_65;
    case 32:
      v5 = 32;
      goto LABEL_65;
    case 33:
      v5 = 33;
      goto LABEL_65;
    case 34:
      v5 = 34;
      goto LABEL_65;
    case 35:
      v5 = 35;
      goto LABEL_65;
    case 36:
      v5 = 36;
      goto LABEL_65;
    case 37:
      v5 = 37;
      goto LABEL_65;
    case 38:
      v5 = 38;
      goto LABEL_65;
    case 39:
      v5 = 39;
      goto LABEL_65;
    case 40:
      v5 = 40;
      goto LABEL_65;
    case 41:
      v5 = 41;
      goto LABEL_65;
    case 42:
      v5 = 42;
      goto LABEL_65;
    case 43:
      v5 = 43;
      goto LABEL_65;
    case 44:
      v5 = 44;
      goto LABEL_65;
    case 45:
      v5 = 45;
      goto LABEL_65;
    case 46:
      v5 = 46;
LABEL_65:
      v6 = v5;
      break;
    case 47:
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    default:
      v6 = 65;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t CatId.rawValue.getter()
{
  result = 0x73736572676F7270;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
    case 0xE:
    case 0x17:
    case 0x18:
      result = 0xD000000000000019;
      break;
    case 3:
      return result;
    case 4:
      result = 0x725064616F6C7075;
      break;
    case 5:
    case 0x19:
    case 0x34:
    case 0x35:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000029;
      break;
    case 7:
    case 0x25:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 0x12:
    case 0x22:
      result = 0xD000000000000013;
      break;
    case 9:
    case 0x23:
    case 0x26:
      result = 0xD000000000000018;
      break;
    case 0xA:
    case 0x29:
      result = 0xD000000000000017;
      break;
    case 0xB:
    case 0x10:
    case 0x11:
    case 0x2A:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD00000000000001BLL;
      break;
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 0xF:
    case 0x24:
    case 0x27:
      result = 0xD00000000000001DLL;
      break;
    case 0x13:
    case 0x14:
    case 0x3C:
      result = 0xD000000000000021;
      break;
    case 0x15:
      result = 0x65526C65636E6163;
      break;
    case 0x16:
      result = 0xD000000000000010;
      break;
    case 0x1A:
    case 0x1B:
    case 0x2C:
    case 0x33:
      result = 0xD00000000000001ELL;
      break;
    case 0x1C:
      result = 0xD000000000000025;
      break;
    case 0x1D:
    case 0x1E:
    case 0x3D:
      result = 0xD00000000000001CLL;
      break;
    case 0x1F:
      result = 0xD000000000000023;
      break;
    case 0x20:
    case 0x21:
    case 0x2F:
      result = 0xD000000000000016;
      break;
    case 0x28:
      result = 0xD000000000000015;
      break;
    case 0x2B:
      result = 0x736B7341656D6361;
      break;
    case 0x2D:
      result = 0x6F54746E6573;
      break;
    case 0x2E:
      result = 0x6D69616C63736964;
      break;
    case 0x30:
      result = 0xD00000000000001BLL;
      break;
    case 0x31:
    case 0x3A:
      result = 0xD000000000000011;
      break;
    case 0x32:
      result = 0xD00000000000001BLL;
      break;
    case 0x36:
      result = 0xD00000000000001BLL;
      break;
    case 0x37:
    case 0x39:
    case 0x3E:
      result = 0xD000000000000022;
      break;
    case 0x38:
      result = 0xD00000000000001BLL;
      break;
    case 0x3F:
      result = 0x65526E496E676973;
      break;
    case 0x40:
      result = 0x7974706D65;
      break;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FixedResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FixedResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = Hasher.init(_seed:)();
  a3(v4);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FixedResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FixedResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = Hasher.init(_seed:)();
  a4(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CatId@<X0>(unint64_t *a1@<X8>)
{
  result = CatId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for webSources()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_24FE1AA50;
  *(result + 32) = 0x6F632E656C707061;
  *(result + 40) = 0xE90000000000006DLL;
  *(result + 48) = 0xD000000000000015;
  *(result + 56) = 0x800000024FE1FA60;
  strcpy((result + 64), "wikipedia.org");
  *(result + 78) = -4864;
  *(result + 80) = 0xD000000000000028;
  *(result + 88) = 0x800000024FE1FA80;
  strcpy((result + 96), "britannica.com");
  *(result + 111) = -18;
  *(result + 112) = 0xD00000000000002FLL;
  *(result + 120) = 0x800000024FE1FAB0;
  *(result + 128) = 0xD000000000000010;
  *(result + 136) = 0x800000024FE1FAE0;
  *(result + 144) = 0xD000000000000035;
  *(result + 152) = 0x800000024FE1FB00;
  *(result + 160) = 0xD000000000000010;
  *(result + 168) = 0x800000024FE1FAE0;
  *(result + 176) = 0xD000000000000049;
  *(result + 184) = 0x800000024FE1FB40;
  *(result + 192) = 0xD000000000000010;
  *(result + 200) = 0x800000024FE1FAE0;
  *(result + 208) = 0xD000000000000063;
  *(result + 216) = 0x800000024FE1FB90;
  static DummyKnowledgeSources.webSources = result;
  return result;
}

uint64_t static DummyKnowledgeSources.webSources.getter()
{
  if (one-time initialization token for webSources != -1)
  {
    swift_once();
  }
}

uint64_t static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 257) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 256) = a2;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for GenerativeAssistantSettingsDestination.Origin();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  v7 = type metadata accessor for GenerativeAssistantSettingsDestination();
  *(v5 + 64) = v7;
  *(v5 + 72) = *(v7 - 8);
  *(v5 + 80) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v5 + 88) = v8;
  *(v5 + 96) = *(v8 - 8);
  *(v5 + 104) = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Component();
  *(v5 + 112) = v9;
  *(v5 + 120) = *(v9 - 8);
  *(v5 + 128) = swift_task_alloc();
  v10 = type metadata accessor for Calendar();
  *(v5 + 136) = v10;
  *(v5 + 144) = *(v10 - 8);
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v5 + 176) = v11;
  *(v5 + 184) = *(v11 - 8);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:), 0, 0);
}

uint64_t static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)()
{
  v45 = v0;
  if (*(v0 + 256) == 1)
  {
    if (*(v0 + 257) == 1)
    {
      v1 = *(v0 + 176);
      v2 = *(v0 + 184);
      v3 = *(v0 + 168);
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      static GenerativeAssistantSettingsUserDefaults.lastRateLimitFullMessageDate()();
      v4 = *(v2 + 48);
      if (v4(v3, 1, v1) == 1)
      {
        outlined destroy of Date?(*(v0 + 168));
LABEL_14:
        v31 = *(v0 + 184);
        v32 = *(v0 + 192);
        v33 = *(v0 + 176);
        v35 = *(v0 + 24);
        v34 = *(v0 + 32);
        Date.init()();
        static GenerativeAssistantSettingsUserDefaults.updateLastRateLimitFullMessageDate(_:)();
        (*(v31 + 8))(v32, v33);
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        v43 = 47;
        v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        v37.value._countAndFlagsBits = v35;
        v37.value._object = v34;
        v38 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v43, v37, v36);
        countAndFlagsBits = v38._countAndFlagsBits;
        object = v38._object;

        goto LABEL_15;
      }

      v11 = *(v0 + 160);
      v12 = *(v0 + 144);
      v13 = *(v0 + 152);
      v14 = *(v0 + 128);
      v41 = *(v0 + 176);
      v42 = *(v0 + 136);
      v16 = *(v0 + 112);
      v15 = *(v0 + 120);
      v40 = *(*(v0 + 184) + 32);
      v40(*(v0 + 208), *(v0 + 168));
      static Calendar.current.getter();
      (*(v15 + 104))(v14, *MEMORY[0x277CC9980], v16);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v13, v42);
      v17 = v4(v11, 1, v41);
      v18 = *(v0 + 160);
      if (v17 == 1)
      {
        (*(*(v0 + 184) + 8))(*(v0 + 208), *(v0 + 176));
        outlined destroy of Date?(v18);
        goto LABEL_14;
      }

      (v40)(*(v0 + 200), *(v0 + 160), *(v0 + 176));
      Date.timeIntervalSinceNow.getter();
      v20 = *(v0 + 200);
      v19 = *(v0 + 208);
      v21 = *(v0 + 176);
      v22 = *(v0 + 184);
      if (v23 <= 0.0)
      {
        v30 = *(v22 + 8);
        v30(*(v0 + 200), *(v0 + 176));
        v30(v19, v21);
        goto LABEL_14;
      }

      v24 = *(v0 + 24);
      v25 = *(v0 + 32);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v44 = 48;
      v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v27.value._countAndFlagsBits = v24;
      v27.value._object = v25;
      v28 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v44, v27, v26);
      countAndFlagsBits = v28._countAndFlagsBits;
      object = v28._object;

      v29 = *(v22 + 8);
      v29(v20, v21);
      v29(v19, v21);
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

LABEL_15:
    *(v0 + 216) = countAndFlagsBits;
    *(v0 + 224) = object;
    v39 = swift_task_alloc();
    *(v0 + 232) = v39;
    *v39 = v0;
    v39[1] = static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:);

    return MEMORY[0x282165800]();
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.clearLastRateLimitFullMessageDate()();
  v5 = *(v0 + 16);
  v6 = type metadata accessor for ModelDisclaimer();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v13 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  (*(v4 + 104))(v3, *MEMORY[0x277D0D748], v5);
  (*(v6 + 104))(v7, *MEMORY[0x277D0D750], v8);
  GenerativeAssistantSettingsDestination.fullURL(origin:)();
  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  URL.absoluteString.getter();
  (*(v1 + 8))(v2, v13);
  ModelDisclaimer.init(message:displayUrl:url:)();
  v9 = v0[2];
  v10 = type metadata accessor for ModelDisclaimer();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;

  return MEMORY[0x2822009F8](static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:), 0, 0);
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FixedResponse and conformance FixedResponse()
{
  result = lazy protocol witness table cache variable for type FixedResponse and conformance FixedResponse;
  if (!lazy protocol witness table cache variable for type FixedResponse and conformance FixedResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedResponse and conformance FixedResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CatId and conformance CatId()
{
  result = lazy protocol witness table cache variable for type CatId and conformance CatId;
  if (!lazy protocol witness table cache variable for type CatId and conformance CatId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CatId and conformance CatId);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FixedResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FixedResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CatId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 64;
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

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CatId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
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
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t PartnerStreamWrapper.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  v2 = type metadata accessor for GeneratedResponse(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) = 0;
  *(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted) = 0;
  return v0;
}

uint64_t PartnerStreamWrapper.init()()
{
  v1 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  v2 = type metadata accessor for GeneratedResponse(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) = 0;
  *(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted) = 0;
  return v0;
}

uint64_t closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v19;
  *(v8 + 88) = v20;
  *(v8 + 177) = v18;
  *(v8 + 176) = v17;
  *(v8 + 72) = v16;
  *(v8 + 56) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for GenerativeAssistantUseCase();
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 + 64);
  *(v8 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 128) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 136) = v12;
  *(v8 + 144) = v11;

  return MEMORY[0x2822009F8](closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:), v12, v11);
}

uint64_t closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v22 = *(v0 + 177);
  v21 = *(v0 + 176);
  v5 = *(v0 + 88);
  v23 = *(v0 + 80);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  (*(v4 + 16))(v1, v7, v3);
  v8 = (*(v4 + 80) + 25) & ~*(v4 + 80);
  v9 = v8 + v2;
  v10 = (v8 + v2) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 152) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v21;
  (*(v4 + 32))(v11 + v8, v1, v3);
  *(v11 + v9) = v22;
  v12 = v11 + v10;
  *(v12 + 8) = v23;
  *(v12 + 16) = v5;

  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  return DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)(v19, v18, v16, v17, v14, v15, partial apply for closure #1 in closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:), v11);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:);
  }

  else
  {
    v5 = closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v139 = a7;
  countAndFlagsBits = a6;
  LODWORD(object) = a5;
  v131 = a4;
  LODWORD(v132) = a3;
  v149 = a2;
  v142 = a1;
  v147 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v144 = *(v147 - 8);
  v7 = MEMORY[0x28223BE20](v147);
  v129 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v146 = &v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v128 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v143 = (&v115 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v150 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v115 - v15);
  v141 = type metadata accessor for GeneratedResponse(0);
  v148 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v134 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v140 = &v115 - v19;
  v137 = type metadata accessor for GenerativeAssistantUseCase();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v145 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v22);
  v130 = &v115 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v115 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v115 - v30;
  v32 = type metadata accessor for ModelResponse(0);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v135 = (&v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v37 = (&v115 - v36);
  outlined init with copy of Date?(v142, v31, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  v38 = *(v33 + 48);
  v142 = v32;
  if (v38(v31, 1, v32) == 1)
  {
    result = outlined destroy of OnScreenContent.Document?(v31, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
    v149[OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded] = 1;
  }

  else
  {
    v127 = v24;
    outlined init with take of GeneratedResponse.RichContentEntity(v31, v37, type metadata accessor for ModelResponse);
    v40 = v37;
    v41 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    v42 = v149;
    swift_beginAccess();
    outlined init with copy of Date?(v42 + v41, v28, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v43 = v148;
    v44 = v141;
    v45 = (*(v148 + 48))(v28, 1, v141);
    outlined destroy of OnScreenContent.Document?(v28, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v46 = v153;
    if (v45 != 1)
    {
LABEL_25:
      v112 = *(v46 - 32);
      PartnerStreamWrapper.mergeWithStreamedResponse(_:blockingResponse:)(v40, 0, v112);
      outlined destroy of GeneratedResponse(v40, type metadata accessor for ModelResponse);
      (v43[3]._object)(v112, 0, 1, v44);
      swift_beginAccess();
      outlined assign with take of GeneratedResponse?(v112, v42 + v41);
      return swift_endAccess();
    }

    v127 = v40;
    v115 = v41;
    if (one-time initialization token for modelInteraction != -1)
    {
      goto LABEL_32;
    }

LABEL_5:
    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.modelInteraction);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v137;
    v52 = v136;
    v53 = v127;
    if (v50)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_24FD67000, v48, v49, "Initializing streamed response.", v54, 2u);
      MEMORY[0x253057F40](v54, -1, -1);
    }

    v55 = v53;
    v56 = v135;
    outlined init with copy of GeneratedResponse(v55, v135, type metadata accessor for ModelResponse);
    v57 = v145;
    (*(v52 + 16))(v145, v131, v51);
    v131 = type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v154) = 44;
    v58 = v139;

    v59 = MEMORY[0x277D84F90];
    v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v61.value._countAndFlagsBits = countAndFlagsBits;
    v62 = countAndFlagsBits;
    v61.value._object = v58;
    v63 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v154, v61, v60);

    v154 = xmmword_24FE1ADF0;
    v155 = 5;
    v156 = v63;
    v157 = v62;
    v158 = v58;
    outlined init with copy of DialogConfig(&v154, v152);

    LOBYTE(v152[0]) = v132;
    v132 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v152, v57, &v154, object & 1);
    outlined destroy of DialogConfig(&v154);
    v116 = v56[4];
    v64 = v142;
    v65 = (v56 + *(v142 + 56));
    v66 = v65[1];
    object = *v65;
    v67 = *v56;
    v69 = *(v142 + 32);
    v68 = *(v142 + 36);
    if (*(v56 + v68))
    {
      v70 = *(v56 + v68);
    }

    else
    {
      v70 = v59;
    }

    v121 = v70;
    outlined init with copy of Date?(v56 + v69, v140, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v71 = v56[2];
    v126 = v56[1];
    v117 = v71;
    v72 = v64[11];
    v124 = *(v56 + v64[10]);
    v125 = *(v56 + v72);
    v73 = v64[13];
    v74 = (v56 + v64[12]);
    v75 = v74[1];
    v122 = *v74;
    v118 = v75;
    v76 = v56 + v73;
    v77 = *(v56 + v73);
    v78 = *(v76 + 1);
    v123 = v77;
    v119 = v78;
    v142 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
    v152[3] = v142;
    v152[4] = MEMORY[0x277D0D628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v152);

    v79 = v66;

    static GenerativeAssistantFeatureFlagManager.instance.getter();
    v80 = v141;
    v81 = v134;
    v82 = &v134[*(v141 + 56)];
    swift_initStaticObject();
    v151 = 49;
    v83 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v84 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v151, 0, v83);
    v85 = v67;

    *v82 = v84;
    v86 = v140;
    *v81 = object;
    *(v81 + 8) = v79;
    v87 = v132;
    *(v81 + 16) = v67;
    *(v81 + 24) = v87;
    *(v81 + 32) = 64;
    *(v81 + 40) = v116;
    *(v81 + 48) = MEMORY[0x277D84F90];
    *(v81 + v80[15]) = v121;
    *(v81 + v80[12]) = 0;
    v88 = (v81 + v80[13]);
    v89 = v139;
    *v88 = countAndFlagsBits;
    v88[1] = v89;
    outlined init with copy of Date?(v86, v81 + v80[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v90 = (v81 + v80[11]);
    v91 = v117;
    *v90 = v126;
    v90[1] = v91;
    *(v81 + v80[16]) = v124;
    *(v81 + v80[17]) = v125;
    v92 = (v81 + v80[18]);
    v93 = v118;
    *v92 = v122;
    v92[1] = v93;
    v94 = (v81 + v80[19]);
    v95 = v119;
    *v94 = v123;
    v94[1] = v95;
    outlined init with copy of GenerativeAssistantFeatureFlagManaging(v152, v81 + v80[21]);
    *(v81 + v80[20]) = xmmword_24FE1AE00;

    if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
    {
      v96._countAndFlagsBits = object;
      v96._object = v79;
      v97 = GeneratedResponse.updateText(_:)(v96);

      countAndFlagsBits = v97._countAndFlagsBits;
      *v81 = v97;
      object = v97._object;
      v98 = (v128 + 56);
      v99 = (v128 + 48);
      v43 = *(v67 + 16);

      v42 = 0;
      v142 = v85;
      v139 = v85;
      v41 = v145;
      v40 = v43;
      while (1)
      {
        if (v42 == v43)
        {
          v100 = 1;
          v42 = v43;
          v102 = v148;
          v101 = v149;
        }

        else
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            swift_once();
            goto LABEL_5;
          }

          v102 = v148;
          if (v42 >= *(v142 + 16))
          {
            goto LABEL_31;
          }

          v103 = v142 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v42;
          v104 = *(v10 + 48);
          v105 = v143;
          *v143 = v42;
          outlined init with copy of GeneratedResponse(v103, v105 + v104, type metadata accessor for GeneratedResponse.RichContentEntity);
          v41 = v145;
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v105, v150, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
          v100 = 0;
          v42 = (v42 + 1);
          v101 = v149;
        }

        v106 = v150;
        (*v98)(v150, v100, 1, v10);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v106, v16, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
        if ((*v99)(v16, 1, v10) == 1)
        {

          outlined destroy of OnScreenContent.Document?(v140, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(v136 + 8))(v41, v137);
          v81 = v134;
          goto LABEL_28;
        }

        v44 = *v16;
        v107 = v146;
        outlined init with take of GeneratedResponse.RichContentEntity(v16 + *(v10 + 48), v146, type metadata accessor for GeneratedResponse.RichContentEntity);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        outlined destroy of GeneratedResponse(v107, type metadata accessor for GeneratedResponse.RichContentEntity);
        v43 = v40;
        if (!EnumCaseMultiPayload)
        {
          v109 = v129;
          v110 = object;
          *v129 = countAndFlagsBits;
          v109[1] = v110;
          swift_storeEnumTagMultiPayload();

          v111 = v139;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v111);
            v111 = result;
            if ((v44 & 0x8000000000000000) != 0)
            {
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }
          }

          if (v44 >= v111[2])
          {
            __break(1u);
            return result;
          }

          outlined assign with take of GeneratedResponse.RichContentEntity(v129, v111 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v44);
          v139 = v111;
          *(v134 + 2) = v111;
        }
      }
    }

    outlined destroy of OnScreenContent.Document?(v86, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v136 + 8))(v145, v137);
    v102 = v148;
    v101 = v149;
LABEL_28:
    outlined destroy of GeneratedResponse(v135, type metadata accessor for ModelResponse);
    outlined destroy of GeneratedResponse(v127, type metadata accessor for ModelResponse);
    v113 = v130;
    outlined init with copy of GeneratedResponse(v81, v130, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v152);
    outlined destroy of GeneratedResponse(v81, type metadata accessor for GeneratedResponse);
    (*(v102 + 56))(v113, 0, 1, v141);
    v114 = v115;
    swift_beginAccess();
    outlined assign with take of GeneratedResponse?(v113, &v101[v114]);
    return swift_endAccess();
  }

  return result;
}

uint64_t PartnerStreamWrapper.mergeWithStreamedResponse(_:blockingResponse:)@<X0>(Swift::String *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  LODWORD(v163) = a2;
  v153 = a1;
  v159 = a3;
  v167 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v164 = *(v167 - 8);
  v5 = MEMORY[0x28223BE20](v167);
  v154 = (&v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v134 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v152 = (&v134 - v11);
  MEMORY[0x28223BE20](v10);
  v165 = &v134 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v156 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v166 = (&v134 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v155 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v134 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v151 = &v134 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = (&v134 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v162 = (&v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v161 = (&v134 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = (&v134 - v30);
  v32 = type metadata accessor for GeneratedResponse(0);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v157 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  object = &v134 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = (&v134 - v38);
  v40 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  swift_beginAccess();
  outlined init with copy of Date?(v4 + v40, v31, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v41 = *(v33 + 48);
  countAndFlagsBits = v32;
  if (v41(v31, 1, v32) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v31, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    if (one-time initialization token for modelInteraction != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.modelInteraction);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v155;
      if (v45)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_24FD67000, v43, v44, "Error: Merging with nil streamed response.", v47, 2u);
        MEMORY[0x253057F40](v47, -1, -1);
      }

      v48 = type metadata accessor for URL();
      (*(*(v48 - 8) + 56))(v162, 1, 1, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v49 = ((*(v164 + 80) + 32) & ~*(v164 + 80));
      v164 = *(v164 + 72);
      v50 = swift_allocObject();
      v165 = v50;
      *(v50 + 16) = xmmword_24FE1A560;
      v152 = v49;
      v51 = (v49 + v50);
      *v51 = 0;
      v51[1] = 0xE000000000000000;
      v163 = v51;
      swift_storeEnumTagMultiPayload();
      v161 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
      v174 = v161;
      v175 = MEMORY[0x277D0D628];
      object = __swift_allocate_boxed_opaque_existential_1(&v172);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v52 = countAndFlagsBits;
      v53 = v157;
      v153 = &v157[countAndFlagsBits[14]];
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v170) = 49;
      v54 = MEMORY[0x277D84F90];
      v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v56 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v170, 0, v55);

      *v153 = v56;
      v57 = v162;
      *v53 = 0;
      *(v53 + 8) = 0xE000000000000000;
      v58 = v165;
      *(v53 + 16) = v165;
      *(v53 + 24) = v54;
      *(v53 + 32) = 64;
      *(v53 + 40) = v54;
      *(v53 + 48) = v54;
      *(v53 + v52[15]) = v54;
      *(v53 + v52[12]) = 1;
      v59 = (v53 + v52[13]);
      *v59 = 0;
      v59[1] = 0xE000000000000000;
      outlined init with copy of Date?(v57, v53 + v52[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v60 = (v53 + v52[11]);
      *v60 = 0;
      v60[1] = 0xE000000000000000;
      *(v53 + v52[16]) = 0;
      *(v53 + v52[17]) = 0;
      v61 = (v53 + v52[18]);
      *v61 = 0;
      v61[1] = 0xE000000000000000;
      v62 = (v53 + v52[19]);
      *v62 = 0;
      v62[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging(&v172, v53 + v52[21]);
      *(v53 + v52[20]) = xmmword_24FE1AE00;
      if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
      {
LABEL_37:
        outlined destroy of OnScreenContent.Document?(v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_39:
        v132 = v53;
        v133 = v159;
        goto LABEL_42;
      }

      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v64 = GeneratedResponse.updateText(_:)(v63);
      countAndFlagsBits = v64._countAndFlagsBits;
      *v53 = v64;
      object = v64._object;
      v24 = *(v58 + 2);
      v65 = (v156 + 56);
      v39 = (v156 + 48);
      v66 = 0;

      while (v66 == v24)
      {
        v67 = 1;
        v66 = v24;
LABEL_12:
        (*v65)(v46, v67, 1, v13);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v46, v20, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
        if ((*v39)(v20, 1, v13) == 1)
        {
          outlined destroy of OnScreenContent.Document?(v162, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

          v53 = v157;
          goto LABEL_39;
        }

        v71 = *v20;
        outlined init with take of GeneratedResponse.RichContentEntity(v20 + *(v13 + 48), v9, type metadata accessor for GeneratedResponse.RichContentEntity);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        outlined destroy of GeneratedResponse(v9, type metadata accessor for GeneratedResponse.RichContentEntity);
        if (!EnumCaseMultiPayload)
        {
          v73 = v154;
          v74 = object;
          *v154 = countAndFlagsBits;
          v73[1] = v74;
          swift_storeEnumTagMultiPayload();

          v31 = v161;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v71 & 0x8000000000000000) != 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
            v31 = result;
            if ((v71 & 0x8000000000000000) != 0)
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          if (v71 >= v31[2])
          {
            __break(1u);
LABEL_49:
            __break(1u);
            return result;
          }

          outlined assign with take of GeneratedResponse.RichContentEntity(v154, v152 + v31 + v71 * v164);
          v161 = v31;
          *(v157 + 2) = v31;
        }
      }

      if ((v66 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
    }

    if (v66 >= *(v165 + 2))
    {
      goto LABEL_45;
    }

    v68 = v163 + v66 * v164;
    v69 = *(v13 + 48);
    v70 = v166;
    *v166 = v66;
    outlined init with copy of GeneratedResponse(v68, v70 + v69, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v70, v46, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v67 = 0;
    ++v66;
    goto LABEL_12;
  }

LABEL_20:
  outlined init with take of GeneratedResponse.RichContentEntity(v31, v39, type metadata accessor for GeneratedResponse);
  v76 = v39;
  if ((v163 & 1) == 0)
  {
    v76 = (&v153->_countAndFlagsBits + *(type metadata accessor for ModelResponse(0) + 56));
  }

  v77 = *v76;
  v78 = v76[1];

  v172 = v77;
  v173 = v78;
  v170 = 28252;
  v171 = 0xE200000000000000;
  v168 = 10;
  v169 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v79 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v81 = v80;

  v172 = v79;
  v173 = v81;
  v170 = 92;
  v171 = 0xE100000000000000;
  v168 = 0;
  v169 = 0xE000000000000000;
  v82 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v84 = v83;

  v172 = v82;
  v173 = v84;
  v170 = 8796;
  v171 = 0xE200000000000000;
  v168 = 34;
  v169 = 0xE100000000000000;
  v85 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v150 = v85;
  v87 = v86;
  v153 = v86;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v88 = (*(v164 + 80) + 32) & ~*(v164 + 80);
  v163 = *(v164 + 72);
  v89 = swift_allocObject();
  v164 = v89;
  *(v89 + 16) = xmmword_24FE1A560;
  v134 = v88;
  v90 = (v89 + v88);
  *v90 = v85;
  v90[1] = v87;
  v162 = v90;
  swift_storeEnumTagMultiPayload();
  v136 = v39[3];
  v135 = v39[5];
  v155 = v39[6];
  v91 = v39;
  v92 = countAndFlagsBits;
  v157 = *(v39 + countAndFlagsBits[15]);
  v93 = countAndFlagsBits[13];
  v147 = *(v39 + countAndFlagsBits[12]);
  v94 = *(v39 + v93 + 8);
  v149 = *(v39 + v93);
  v154 = v94;
  outlined init with copy of Date?(v39 + countAndFlagsBits[10], v161, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v95 = v39 + v92[11];
  v96 = *(v95 + 1);
  v146 = *v95;
  v137 = v96;
  v141 = *(v39 + 32);
  v97 = v92[17];
  v144 = *(v39 + v92[16]);
  v145 = *(v39 + v97);
  v98 = v92[19];
  v99 = v39 + v92[18];
  v100 = *(v99 + 1);
  v142 = *v99;
  v138 = v100;
  v101 = *(v91 + v98 + 8);
  v143 = *(v91 + v98);
  v139 = v101;
  v148 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v174 = v148;
  v175 = MEMORY[0x277D0D628];
  v140 = __swift_allocate_boxed_opaque_existential_1(&v172);

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v102 = object;
  v103 = &object[v92[14]];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v170) = 49;
  v104 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v105 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v170, 0, v104);
  v53 = v102;

  *v103 = v105;
  v20 = v150;
  v106 = v153;
  v107 = v164;
  *v102 = v150;
  *(v102 + 1) = v106;
  v108 = v136;
  *(v102 + 2) = v107;
  *(v102 + 3) = v108;
  v102[32] = v141;
  v109 = v161;
  v110 = v155;
  *(v53 + 40) = v135;
  *(v53 + 48) = v110;
  *(v53 + v92[15]) = v157;
  *(v53 + v92[12]) = v147;
  v111 = (v53 + v92[13]);
  v112 = v154;
  *v111 = v149;
  v111[1] = v112;
  outlined init with copy of Date?(v109, v53 + v92[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v113 = (v53 + v92[11]);
  v114 = v137;
  *v113 = v146;
  v113[1] = v114;
  *(v53 + v92[16]) = v144;
  *(v53 + v92[17]) = v145;
  v115 = (v53 + v92[18]);
  v116 = v138;
  *v115 = v142;
  v115[1] = v116;
  v117 = (v53 + v92[19]);
  v118 = v139;
  *v117 = v143;
  v117[1] = v118;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(&v172, v53 + v92[21]);
  *(v53 + v92[20]) = xmmword_24FE1AE00;
  if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
  {
    v157 = v91;
    v119._countAndFlagsBits = v20;
    v119._object = v106;
    v120 = GeneratedResponse.updateText(_:)(v119);

    v155 = v120._countAndFlagsBits;
    *v53 = v120;
    v154 = v120._object;
    v121 = (v156 + 56);
    v122 = (v156 + 48);
    v53 = *(v107 + 16);

    v9 = 0;
    countAndFlagsBits = v107;
    v57 = v151;
    v123 = v165;
    while (1)
    {
      if (v9 == v53)
      {
        v124 = 1;
        v9 = v53;
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v9 >= *(v164 + 16))
        {
          goto LABEL_46;
        }

        v125 = v162 + v9 * v163;
        v126 = *(v13 + 48);
        v127 = v166;
        *v166 = v9;
        outlined init with copy of GeneratedResponse(v125, v127 + v126, type metadata accessor for GeneratedResponse.RichContentEntity);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v127, v57, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
        v124 = 0;
        ++v9;
      }

      (*v121)(v57, v124, 1, v13);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v57, v24, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
      if ((*v122)(v24, 1, v13) == 1)
      {
        break;
      }

      v20 = *v24;
      outlined init with take of GeneratedResponse.RichContentEntity(v24 + *(v13 + 48), v123, type metadata accessor for GeneratedResponse.RichContentEntity);
      v128 = swift_getEnumCaseMultiPayload();
      outlined destroy of GeneratedResponse(v123, type metadata accessor for GeneratedResponse.RichContentEntity);
      if (!v128)
      {
        v129 = v152;
        v130 = v154;
        *v152 = v155;
        v129[1] = v130;
        swift_storeEnumTagMultiPayload();

        v131 = countAndFlagsBits;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v131);
          v131 = result;
          if ((v20 & 0x8000000000000000) != 0)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        if (v20 >= *(v131 + 2))
        {
          goto LABEL_49;
        }

        outlined assign with take of GeneratedResponse.RichContentEntity(v152, v131 + v134 + v20 * v163);
        countAndFlagsBits = v131;
        *(object + 2) = v131;
      }
    }

    v109 = v161;
    v53 = object;
    v91 = v157;
  }

  outlined destroy of OnScreenContent.Document?(v109, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of GeneratedResponse(v91, type metadata accessor for GeneratedResponse);
  v132 = v53;
  v133 = v159;
LABEL_42:
  outlined init with copy of GeneratedResponse(v132, v133, type metadata accessor for GeneratedResponse);
  __swift_destroy_boxed_opaque_existential_0(&v172);
  return outlined destroy of GeneratedResponse(v53, type metadata accessor for GeneratedResponse);
}

uint64_t PartnerStreamWrapper.waitForResponse()()
{
  v1[10] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](PartnerStreamWrapper.waitForResponse(), 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  *(v0 + 192) = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  swift_beginAccess();
  outlined init with copy of Date?(v2 + v3, v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v4 = type metadata accessor for GeneratedResponse(0);
  *(v0 + 200) = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  *(v0 + 208) = v6;
  *(v0 + 216) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v6(v1, 1, v4);
  outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  if (v2 == 1)
  {
    Date.init()();
    v7 = *(v0 + 208);
    v8 = *(v0 + 200);
    v9 = *(v0 + 176);
    outlined init with copy of Date?(*(v0 + 80) + *(v0 + 192), v9, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    if (v7(v9, 1, v8) == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 176), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      *(v0 + 224) = __swift_project_value_buffer(v10, static Logger.modelInteraction);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_24FD67000, v11, v12, "streamed response is nil. Going to block...", v13, 2u);
        MEMORY[0x253057F40](v13, -1, -1);
      }

      v15 = *(v0 + 96);
      v14 = *(v0 + 104);
      v16 = *(v0 + 88);

      static Clock<>.continuous.getter();
      *(v0 + 64) = xmmword_24FE1AE10;
      *(v0 + 48) = 0;
      *(v0 + 40) = 0;
      *(v0 + 56) = 1;
      v17 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      dispatch thunk of Clock.now.getter();
      lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      dispatch thunk of InstantProtocol.advanced(by:)();
      v18 = *(v15 + 8);
      *(v0 + 232) = v18;
      *(v0 + 240) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v18(v14, v16);
      v19 = swift_task_alloc();
      *(v0 + 248) = v19;
      *v19 = v0;
      v19[1] = PartnerStreamWrapper.waitForResponse();
      v21 = *(v0 + 112);
      v20 = *(v0 + 120);

      return MEMORY[0x2822008C8](v21, v0 + 40, v20, v17);
    }

    v22 = *(v0 + 176);
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
    outlined destroy of OnScreenContent.Document?(v22, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  }

  v23 = *(v0 + 8);

  return v23();
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    (*(v2 + 232))(*(v2 + 112), *(v2 + 88));
    v3 = PartnerStreamWrapper.waitForResponse();
  }

  else
  {
    v5 = *(v2 + 128);
    v4 = *(v2 + 136);
    v6 = *(v2 + 120);
    (*(v2 + 232))(*(v2 + 112), *(v2 + 88));
    (*(v5 + 8))(v4, v6);
    v3 = PartnerStreamWrapper.waitForResponse();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[32];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[32];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[19];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24FD67000, v3, v4, "Error while waiting for streamed response: %@.", v10, 0xCu);
    outlined destroy of OnScreenContent.Document?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v11, -1, -1);
    MEMORY[0x253057F40](v10, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v7, v8);

  v14 = v0[1];

  return v14();
}

uint64_t PartnerStreamWrapper.waitForResponse()(uint64_t a1)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v6 = v5;
  v7 = *(v4 + 8);
  v7(v2, v3);
  if (v6 > 30.0)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v1 + 168);
    v12 = *(v1 + 144);
    if (v10)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24FD67000, v8, v9, "Timed out waiting for streamed response.", v13, 2u);
      MEMORY[0x253057F40](v13, -1, -1);
    }

    v7(v11, v12);
    goto LABEL_14;
  }

  v14 = *(v1 + 208);
  v15 = *(v1 + 200);
  v16 = *(v1 + 176);
  outlined init with copy of Date?(*(v1 + 80) + *(v1 + 192), v16, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v17 = v14(v16, 1, v15);
  v18 = *(v1 + 176);
  if (v17 != 1)
  {
    (*(*(v1 + 152) + 8))(*(v1 + 168), *(v1 + 144));
    outlined destroy of OnScreenContent.Document?(v18, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
LABEL_14:

    v31 = *(v1 + 8);

    return v31();
  }

  outlined destroy of OnScreenContent.Document?(*(v1 + 176), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  *(v1 + 224) = __swift_project_value_buffer(v19, static Logger.modelInteraction);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_24FD67000, v20, v21, "streamed response is nil. Going to block...", v22, 2u);
    MEMORY[0x253057F40](v22, -1, -1);
  }

  v24 = *(v1 + 96);
  v23 = *(v1 + 104);
  v25 = *(v1 + 88);

  static Clock<>.continuous.getter();
  *(v1 + 64) = xmmword_24FE1AE10;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 1;
  v26 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v27 = *(v24 + 8);
  *(v1 + 232) = v27;
  *(v1 + 240) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v23, v25);
  v28 = swift_task_alloc();
  *(v1 + 248) = v28;
  *v28 = v1;
  v28[1] = PartnerStreamWrapper.waitForResponse();
  v30 = *(v1 + 112);
  v29 = *(v1 + 120);

  return MEMORY[0x2822008C8](v30, v1 + 40, v29, v26);
}

uint64_t PartnerStreamWrapper.getStreamedResponse()(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for GeneratedResponse(0);
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](PartnerStreamWrapper.getStreamedResponse(), 0, 0);
}

uint64_t PartnerStreamWrapper.getStreamedResponse()()
{
  if (*(v0[11] + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted))
  {
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = PartnerStreamWrapper.getStreamedResponse();

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.modelInteraction);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24FD67000, v4, v5, "Call to return streamed response before stream started. Returning nil.", v6, 2u);
      MEMORY[0x253057F40](v6, -1, -1);
    }

    v7 = v0[21];
    v8 = v0[22];
    v9 = v0[10];

    (*(v8 + 56))(v9, 1, 1, v7);

    v10 = v0[1];

    return v10();
  }
}

{

  return MEMORY[0x2822009F8](PartnerStreamWrapper.getStreamedResponse(), 0, 0);
}

{
  v62 = v0;
  v1 = v0[11];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    (*(v0[22] + 56))(v0[10], 1, 1, v0[21]);
LABEL_25:

    v51 = v0[1];

    return v51();
  }

  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  swift_beginAccess();
  outlined init with copy of Date?(v1 + v5, v2, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v6 = *(v4 + 48);
  if (v6(v2, 1, v3) != 1)
  {
LABEL_19:
    outlined init with take of GeneratedResponse.RichContentEntity(v0[25], v0[10], type metadata accessor for GeneratedResponse);
LABEL_24:
    (*(v0[22] + 56))(v0[10], 0, 1, v0[21]);
    goto LABEL_25;
  }

  v53 = v6;
  v8 = v0[23];
  v7 = v0[24];
  v57 = v7;
  v9 = v0[21];
  v10 = v0[13];
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v12 = *(v10 + 72);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v60 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24FE1A560;
  v52 = v13;
  v15 = (v14 + v13);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v59 = v14 + v13;
  swift_storeEnumTagMultiPayload();
  v55 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v16 = MEMORY[0x277D0D628];
  v0[5] = v55;
  v0[6] = v16;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v17 = (v8 + v9[14]);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v61 = 49;
  v18 = MEMORY[0x277D84F90];
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v20 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v61, 0, v19);

  *v17 = v20;
  *v8 = 0;
  *(v8 + 8) = 0xE000000000000000;
  *(v8 + 16) = v14;
  *(v8 + 24) = v18;
  *(v8 + 32) = 64;
  *(v8 + 40) = v18;
  *(v8 + 48) = v18;
  *(v8 + v9[15]) = v18;
  *(v8 + v9[12]) = 1;
  v21 = (v8 + v9[13]);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  outlined init with copy of Date?(v57, v8 + v9[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v22 = (v8 + v9[11]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  *(v8 + v9[16]) = 0;
  *(v8 + v9[17]) = 0;
  v23 = (v8 + v9[18]);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v8 + v9[19]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 2), v8 + v9[21]);
  *(v8 + v9[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    outlined destroy of OnScreenContent.Document?(v0[24], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_22:
    v48 = v0[25];
    v49 = v0[23];
    v50 = v0[21];
    outlined init with copy of GeneratedResponse(v49, v0[10], type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    outlined destroy of GeneratedResponse(v49, type metadata accessor for GeneratedResponse);
    if (v53(v48, 1, v50) != 1)
    {
      outlined destroy of OnScreenContent.Document?(v0[25], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    }

    goto LABEL_24;
  }

  v25 = v0[23];
  v27 = v0[16];
  v26 = v0[17];
  v54 = v0[14];
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v29 = GeneratedResponse.updateText(_:)(v28);
  *v25 = v29._countAndFlagsBits;
  *(v8 + 8) = v29._object;
  v30 = *(v14 + 16);
  v31 = (v26 + 56);
  v32 = (v26 + 48);

  v34 = 0;
  v56 = v14;
  v58 = v14;
  while (v34 == v30)
  {
    v35 = 1;
    v34 = v30;
LABEL_10:
    v40 = v0[19];
    v39 = v0[20];
    v41 = v0[16];
    (*v31)(v40, v35, 1, v41);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v40, v39, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v32)(v39, 1, v41) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v0[24], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      goto LABEL_22;
    }

    v42 = v0[20];
    v43 = *v42;
    outlined init with take of GeneratedResponse.RichContentEntity(v42 + *(v27 + 48), v0[15], type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v45 = v0[15];
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of GeneratedResponse(v45, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v46 = v0[14];
      outlined destroy of GeneratedResponse(v45, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v46 = v29._countAndFlagsBits;
      *(v54 + 8) = v29._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v47 = v56;
        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
        v56 = result;
        v47 = result;
        if ((v43 & 0x8000000000000000) != 0)
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      if (v43 >= *(v47 + 16))
      {
        goto LABEL_29;
      }

      result = outlined assign with take of GeneratedResponse.RichContentEntity(v0[14], v47 + v52 + v43 * v60);
      *(v8 + 16) = v47;
    }
  }

  if (v34 < *(v58 + 16))
  {
    v37 = v0[18];
    v36 = v0[19];
    v38 = *(v27 + 48);
    *v37 = v34;
    outlined init with copy of GeneratedResponse(v59 + v34 * v60, v37 + v38, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v37, v36, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v35 = 0;
    ++v34;
    goto LABEL_10;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t PartnerStreamWrapper.deinit()
{
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession, &_s26GenerativeAssistantActions12ModelSession_pSgMd, _s26GenerativeAssistantActions12ModelSession_pSgMR);
  return v0;
}

uint64_t PartnerStreamWrapper.__deallocating_deinit()
{
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession, &_s26GenerativeAssistantActions12ModelSession_pSgMd, _s26GenerativeAssistantActions12ModelSession_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t outlined init with copy of GenerativeAssistantFeatureFlagManaging(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of GeneratedResponse.RichContentEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PartnerStreamWrapper(uint64_t a1)
{
  result = type metadata singleton initialization cache for PartnerStreamWrapper;
  if (!type metadata singleton initialization cache for PartnerStreamWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PartnerStreamWrapper(uint64_t a1)
{
  type metadata accessor for GeneratedResponse?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PartnerStreamWrapper.getStreamedResponse()(uint64_t a1)
{
  v6 = (*(*v1 + 248) + **(*v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v6(a1);
}

uint64_t dispatch thunk of PartnerStreamWrapper.getStreamedResponse()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void type metadata accessor for GeneratedResponse?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeneratedResponse?)
  {
    type metadata accessor for GeneratedResponse(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GeneratedResponse?);
    }
  }
}

uint64_t sub_24FD875A0()
{
  v1 = type metadata accessor for GenerativeAssistantUseCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeAssistantUseCase() - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);
  v8 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v1 + 24);

  return closure #1 in closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(a1, v7, v11, v1 + v4, v6, v9, v10);
}

uint64_t outlined init with take of GeneratedResponse.RichContentEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of GeneratedResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GeneratedResponse(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of GeneratedResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError()
{
  result = lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError;
  if (!lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError;
  if (!lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError);
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance SharingMediaAttachmentError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance SharingMediaAttachmentError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance SharingMediaAttachmentError()
{
  v0 = static SharingMediaAttachmentError.errorDomain;

  return v0;
}

unint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance SharingMediaAttachmentError()
{
  v1 = *(v0 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0xD000000000000010;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x800000024FE1FD40;
  *(inited + 48) = (v1 & 1) == 0;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(v3);
  return v4;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharingMediaAttachmentError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingMediaAttachmentError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t getEnumTag for SharingMediaAttachmentError(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for SharingMediaAttachmentError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t dispatch thunk of TextAssistantExecutorProviding.execute(appBundleID:userQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of TextAssistantHandoffProviding.attemptHandoff(userQuery:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t TextAssistantExecutor.execute(appBundleID:userQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v6[26] = swift_task_alloc();
  v7 = type metadata accessor for TypedValue.EnumerationValue();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO2IDVSgMd, &_s7ToolKit10TypedValueO2IDVSgMR);
  v6[30] = swift_task_alloc();
  v8 = type metadata accessor for TypedValue.ID();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v9 = type metadata accessor for ToolInvocation();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit21DisplayRepresentationVSgMd, &_s7ToolKit21DisplayRepresentationVSgMR);
  v6[37] = swift_task_alloc();
  v10 = type metadata accessor for TypedValue();
  v6[38] = v10;
  v6[39] = *(v10 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v11 = type metadata accessor for ToolExecutor.SessionOptions();
  v6[42] = v11;
  v6[43] = *(v11 - 8);
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](TextAssistantExecutor.execute(appBundleID:userQuery:), 0, 0);
}

uint64_t TextAssistantExecutor.execute(appBundleID:userQuery:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("SessionCreation.Time", 20, 2);
  static ToolExecutor.SessionOptions.default.getter();
  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = TextAssistantExecutor.execute(appBundleID:userQuery:);
  v2 = v0[44];

  return MEMORY[0x2821DADB0](v2);
}

{
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v28 = v0[48];
  v26 = v0[22];
  v27 = v0[23];
  v5 = type metadata accessor for TypedValue.PrimitiveValue();
  v6 = swift_allocBox();
  v8 = v7;
  v9 = type metadata accessor for DisplayRepresentation();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);

  TypedValue.PrimitiveValue.AppValue.init(bundleIdentifier:displayRepresentation:)();
  v24 = *(*(v5 - 8) + 104);
  v24(v8, *MEMORY[0x277D72970], v5);
  *v1 = v6;
  v25 = *(v2 + 104);
  (v25)(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_7ToolKit25TypedValueAsyncResolvable_ptGMd, &_ss23_ContiguousArrayStorageCySS_7ToolKit25TypedValueAsyncResolvable_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A8C0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  v11 = MEMORY[0x277D72A70];
  *(inited + 72) = v3;
  *(inited + 80) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  *(inited + 88) = 0x74706D6F7270;
  *(inited + 96) = 0xE600000000000000;
  v13 = swift_allocBox();
  *v14 = v26;
  v14[1] = v27;
  v24(v14, *MEMORY[0x277D729B8], v5);
  *(inited + 128) = v3;
  *(inited + 136) = MEMORY[0x277D72A70];
  *__swift_allocate_boxed_opaque_existential_1((inited + 104)) = v13;
  v25();

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7ToolKit25TypedValueAsyncResolvable_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7ToolKit25TypedValueAsyncResolvable_ptMd, &_sSS_7ToolKit25TypedValueAsyncResolvable_ptMR);
  swift_arrayDestroy();
  ToolInvocation.init(localToolId:parameterValuesByKey:)();
  if (v28)
  {
    v15 = v0[26];
    (*(v0[39] + 8))(v0[41], v0[38]);
    v16 = type metadata accessor for OSSignpostID();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2u, v15);
    outlined destroy of OnScreenContent.Document?(v15, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A8ExecutorV5start7optionsQrAC14SessionOptionsV_tYaKFZQOy_Qo_Md, &_s7ToolKit0A8ExecutorV5start7optionsQrAC14SessionOptionsV_tYaKFZQOy_Qo_MR);
    swift_getOpaqueTypeConformance2();
    dispatch thunk of ToolExecutionSession.endSession()();
    swift_unknownObjectRelease();

    v17 = v0[1];

    return v17(0);
  }

  else
  {
    v19 = swift_task_alloc();
    v0[49] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A8ExecutorV5start7optionsQrAC14SessionOptionsV_tYaKFZQOy_Qo_Md, &_s7ToolKit0A8ExecutorV5start7optionsQrAC14SessionOptionsV_tYaKFZQOy_Qo_MR);
    v0[50] = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v0[51] = OpaqueTypeConformance2;
    *v19 = v0;
    v19[1] = TextAssistantExecutor.execute(appBundleID:userQuery:);
    v22 = v0[36];
    v23 = v0[30];

    return MEMORY[0x2821DAAB0](v23, v22, v20, OpaqueTypeConformance2);
  }
}

{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  else
  {
    v2 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[41];
    v6 = v0[38];
    v5 = v0[39];
    v8 = v0[35];
    v7 = v0[36];
    v9 = v0[34];
    v10 = v0[26];
    outlined destroy of OnScreenContent.Document?(v3, &_s7ToolKit10TypedValueO2IDVSgMd, &_s7ToolKit10TypedValueO2IDVSgMR);
    lazy protocol witness table accessor for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v12 = type metadata accessor for OSSignpostID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2u, v10);
    outlined destroy of OnScreenContent.Document?(v10, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    dispatch thunk of ToolExecutionSession.endSession()();
    swift_unknownObjectRelease();

    v13 = v0[1];

    return v13(0);
  }

  else
  {
    (*(v2 + 32))(v0[33], v3, v1);
    v15 = swift_task_alloc();
    v0[53] = v15;
    *v15 = v0;
    v15[1] = TextAssistantExecutor.execute(appBundleID:userQuery:);
    v16 = v0[50];
    v17 = v0[51];
    v18 = v0[40];
    v19 = v0[33];

    return MEMORY[0x2821DAA80](v18, v19, v16, v17);
  }
}

{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  else
  {
    v2 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if ((*(v0[39] + 88))(v0[40], v0[38]) == *MEMORY[0x277D729E8])
  {
    v2 = v0[28];
    v1 = v0[29];
    v3 = v0[27];
    (*(v0[39] + 96))(v0[40], v0[38]);
    v4 = swift_projectBox();
    (*(v2 + 16))(v1, v4, v3);

    if (TypedValue.EnumerationValue.case.getter() == 0x73736563637573 && v5 == 0xE700000000000000)
    {

      v32 = 1;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v28 = v0[41];
    v17 = v0[38];
    v18 = v0[39];
    v19 = v0[36];
    v20 = v0[34];
    v21 = v0[35];
    v22 = v0[32];
    v23 = v0[33];
    v24 = v0[31];
    v25 = v0[26];
    (*(v0[28] + 8))();
    (*(v22 + 8))(v23, v24);
    (*(v21 + 8))(v19, v20);
    (*(v18 + 8))(v28, v17);
    v26 = type metadata accessor for OSSignpostID();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2u, v25);
    outlined destroy of OnScreenContent.Document?(v25, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    dispatch thunk of ToolExecutionSession.endSession()();
    swift_unknownObjectRelease();

    v15 = v0[1];
    v16 = v32 & 1;
  }

  else
  {
    v6 = v0[38];
    v7 = v0[35];
    v30 = v0[36];
    v31 = v0[41];
    v8 = v0[33];
    v29 = v0[34];
    v9 = v0[31];
    v10 = v0[32];
    v11 = v0[26];
    v12 = *(v0[39] + 8);
    v12(v0[40], v6);
    lazy protocol witness table accessor for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    (*(v10 + 8))(v8, v9);
    (*(v7 + 8))(v30, v29);
    v12(v31, v6);
    v14 = type metadata accessor for OSSignpostID();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2u, v11);
    outlined destroy of OnScreenContent.Document?(v11, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    dispatch thunk of ToolExecutionSession.endSession()();
    swift_unknownObjectRelease();

    v15 = v0[1];
    v16 = 0;
  }

  return v15(v16);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[26];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v3 + 8))(v1, v2);
  v5 = type metadata accessor for OSSignpostID();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2u, v4);
  outlined destroy of OnScreenContent.Document?(v4, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  dispatch thunk of ToolExecutionSession.endSession()();
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6(0);
}

{
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[34];
  v7 = v0[26];
  (*(v0[32] + 8))(v0[33], v0[31]);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for OSSignpostID();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2u, v7);
  outlined destroy of OnScreenContent.Document?(v7, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  dispatch thunk of ToolExecutionSession.endSession()();
  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9(0);
}

uint64_t TextAssistantExecutor.execute(appBundleID:userQuery:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  (*(v3[43] + 8))(v3[44], v3[42]);
  if (v1)
  {
    v5 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  else
  {
    v5 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t lazy protocol witness table accessor for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError()
{
  result = lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError;
  if (!lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError;
  if (!lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextAssistantExecutor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TextAssistantExecutor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SupportedDocumentHelper.getFileType(typeIdentifier:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v7 = *(v3 + 8);
  v28 = a2;
  v29 = a3;
  v27 = &v28;
  v8 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v26, v7);
  if (v8)
  {
    v9 = MEMORY[0x277D0D690];
  }

  else
  {
    v28 = a2;
    v29 = a3;
    MEMORY[0x28223BE20](v8);
    v25 = &v28;
    v11 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v10);
    if (v11)
    {
      v9 = MEMORY[0x277D0D6B8];
    }

    else
    {
      v28 = a2;
      v29 = a3;
      MEMORY[0x28223BE20](v11);
      v25 = &v28;
      v13 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v12);
      if (v13)
      {
        v9 = MEMORY[0x277D0D6C8];
      }

      else
      {
        v28 = a2;
        v29 = a3;
        MEMORY[0x28223BE20](v13);
        v25 = &v28;
        v15 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v14);
        if (v15)
        {
          v9 = MEMORY[0x277D0D6A8];
        }

        else
        {
          v28 = a2;
          v29 = a3;
          MEMORY[0x28223BE20](v15);
          v25 = &v28;
          v17 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v16);
          if (v17)
          {
            v9 = MEMORY[0x277D0D698];
          }

          else
          {
            v28 = a2;
            v29 = a3;
            MEMORY[0x28223BE20](v17);
            v25 = &v28;
            if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v18) & 1) == 0)
            {
              v23 = type metadata accessor for SupportedDocumentType();
              return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
            }

            v9 = MEMORY[0x277D0D6B0];
          }
        }
      }
    }
  }

  v19 = *v9;
  v20 = type metadata accessor for SupportedDocumentType();
  v21 = *(v20 - 8);
  (*(v21 + 104))(a1, v19, v20);
  return (*(v21 + 56))(a1, 0, 1, v20);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void specialized SupportedDocumentHelper.init()(char **a1@<X8>)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *(&outlined read-only object #6 of SupportedDocumentHelper.init() + v2 + 32);
    v5 = *(v4 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      if (*(v4 + 16))
      {
LABEL_13:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_21;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_3;
      }
    }

    if (v5)
    {
      goto LABEL_19;
    }

LABEL_3:
    v2 += 8;
    if (v2 == 48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      swift_arrayDestroy();
      *a1 = v3;
      a1[1] = &outlined read-only object #0 of SupportedDocumentHelper.init();
      a1[2] = &outlined read-only object #1 of SupportedDocumentHelper.init();
      a1[3] = &outlined read-only object #2 of SupportedDocumentHelper.init();
      a1[4] = &outlined read-only object #3 of SupportedDocumentHelper.init();
      a1[5] = &outlined read-only object #4 of SupportedDocumentHelper.init();
      a1[6] = &outlined read-only object #5 of SupportedDocumentHelper.init();
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for SupportedDocumentHelper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for SupportedDocumentHelper(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static GenerateTextFromMediaController.logger);
  v1 = __swift_project_value_buffer(v0, static GenerateTextFromMediaController.logger);
  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.genFromMediaController);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static GenerateTextController.logger);
  v1 = __swift_project_value_buffer(v0, static GenerateTextController.logger);
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.genFromTextController);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t GenerateTextFromMediaController.Error.errorUserInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000024FE1FD40;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  outlined copy of GenerateTextFromMediaController.Error(a1, a2, v3);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of OnScreenContent.Document?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  return v7;
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance GenerateTextFromMediaController.Error()
{
  v0 = static GenerateTextFromMediaController.Error.errorDomain;

  return v0;
}

uint64_t protocol witness for Error._domain.getter in conformance GenerateTextFromMediaController.Error(uint64_t a1)
{
  TextFromMedia = lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();

  return MEMORY[0x28211F4B8](a1, TextFromMedia);
}

uint64_t protocol witness for Error._code.getter in conformance GenerateTextFromMediaController.Error(uint64_t a1)
{
  TextFromMedia = lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();

  return MEMORY[0x28211F4A8](a1, TextFromMedia);
}

uint64_t GenerateTextFromMediaController.init(featureFlagManager:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a1, v12);
  v11[3] = &type metadata for DefaultModelSessionFactory;
  v11[4] = &protocol witness table for DefaultModelSessionFactory;
  a2[23] = &type metadata for ContentLoader;
  a2[24] = &protocol witness table for ContentLoader;
  v4 = swift_allocObject();
  a2[20] = v4;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a1, (v4 + 2));
  type metadata accessor for UIContextClient();
  swift_allocObject();
  v5 = UIContextClient.init()();
  v4[10] = &type metadata for ScreenLockChecker;
  v4[11] = &protocol witness table for ScreenLockChecker;
  v4[12] = v5;
  swift_allocObject();
  v6 = UIContextClient.init()();
  a2[28] = &type metadata for ContentSelector;
  a2[29] = &protocol witness table for ContentSelector;
  v7 = swift_allocObject();
  a2[25] = v7;
  v7[6] = &type metadata for ManagedConfigurationProvider;
  v7[7] = &protocol witness table for ManagedConfigurationProvider;
  v7[11] = &type metadata for ScreenLockChecker;
  v7[12] = &protocol witness table for ScreenLockChecker;
  swift_allocObject();
  v8 = UIContextClient.init()();
  v7[16] = &type metadata for EntityConverter;
  v7[17] = &protocol witness table for EntityConverter;
  v7[13] = v8;
  v7[2] = v6;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v12, a2);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v11, (a2 + 5));
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v12, (a2 + 15));
  a2[13] = &type metadata for DefaultPromptFactory;
  a2[14] = &protocol witness table for DefaultPromptFactory;
  v9 = swift_allocObject();
  a2[10] = v9;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging((a2 + 15), v9 + 16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_24FD8A338()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_24FD8A380()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_24FD8A3D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 712) = v5;
  *(v6 + 704) = a4;
  *(v6 + 696) = a3;
  *(v6 + 688) = a2;
  *(v6 + 680) = a1;
  v8 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v6 + 720) = v8;
  *(v6 + 728) = *(v8 - 8);
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v6 + 752) = v9;
  *(v6 + 760) = *(v9 - 8);
  *(v6 + 768) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = type metadata accessor for GeneratedResponse(0);
  *(v6 + 800) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v6 + 808) = swift_task_alloc();
  v10 = type metadata accessor for GenerativeError.AuthenticationError();
  *(v6 + 816) = v10;
  *(v6 + 824) = *(v10 - 8);
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  v11 = type metadata accessor for GenerativeError.ErrorType();
  *(v6 + 856) = v11;
  *(v6 + 864) = *(v11 - 8);
  *(v6 + 872) = swift_task_alloc();
  v12 = type metadata accessor for GenerativeError();
  *(v6 + 880) = v12;
  *(v6 + 888) = *(v12 - 8);
  *(v6 + 896) = swift_task_alloc();
  *(v6 + 904) = swift_task_alloc();
  v13 = type metadata accessor for GATError();
  *(v6 + 912) = v13;
  *(v6 + 920) = *(v13 - 8);
  *(v6 + 928) = swift_task_alloc();
  *(v6 + 936) = swift_task_alloc();
  type metadata accessor for DocumentInfo(0);
  *(v6 + 944) = swift_task_alloc();
  type metadata accessor for ImageInfo(0);
  *(v6 + 952) = swift_task_alloc();
  *(v6 + 960) = type metadata accessor for ScreenContent(0);
  *(v6 + 968) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  *(v6 + 976) = swift_task_alloc();
  *(v6 + 984) = type metadata accessor for SelectedContent(0);
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  v14 = *(a5 + 16);
  *(v6 + 288) = *a5;
  *(v6 + 304) = v14;
  *(v6 + 320) = *(a5 + 32);
  *(v6 + 336) = *(a5 + 48);
  *(v6 + 1008) = *(a5 + 56);
  v15 = *(a5 + 88);
  *(v6 + 344) = *(a5 + 72);
  *(v6 + 360) = v15;
  *(v6 + 376) = *(a5 + 104);
  v16 = *(a5 + 128);
  *(v6 + 1024) = *(a5 + 120);
  *(v6 + 1032) = v16;
  type metadata accessor for MainActor();
  *(v6 + 1040) = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 1048) = v18;
  *(v6 + 1056) = v17;

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:), v18, v17);
}

uint64_t GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)()
{
  v15 = v0;
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v1 = static Disclaimer.partnerName;
  *(v0 + 1064) = static Disclaimer.partnerName;
  v2 = one-time initialization token for genFromMediaController;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 1080) = v3;
  *(v0 + 1088) = __swift_project_value_buffer(v3, static Logger.genFromMediaController);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 696);
    v7 = *(v0 + 688);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136316162;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v14);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, &v14);
    *(v8 + 22) = 2080;
    *(v8 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v14);
    *(v8 + 32) = 2080;
    *(v8 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, *(&v1 + 1), &v14);
    *(v8 + 42) = 1024;
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    *(v8 + 44) = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
    _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s [userQuery = %s] [partner: %s] [isPartnerEnabled: %{BOOL}d", v8, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v8, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 1096) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("LoadScreenContent.Time", 22, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 712);
  *(v0 + 1104) = static SELFUtils.shared;
  SELFUtils.recordLoadScreenContentStarted()();
  __swift_project_boxed_opaque_existential_1((v10 + 160), *(v10 + 184));
  v13 = off_28627EF30 + *off_28627EF30;
  v11 = swift_task_alloc();
  *(v0 + 1112) = v11;
  *v11 = v0;
  v11[1] = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);

  return (v13)(v0 + 392, &type metadata for ContentLoader, &protocol witness table for ContentLoader);
}

{
  v2 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {

    v3 = *(v2 + 1056);
    v4 = *(v2 + 1048);
    v5 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    v3 = *(v2 + 1056);
    v4 = *(v2 + 1048);
    v5 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  __swift_project_boxed_opaque_existential_1((v0[89] + 200), *(v0[89] + 224));
  v1 = swift_task_alloc();
  v0[141] = v1;
  *v1 = v0;
  v1[1] = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  v2 = v0[124];

  return ContentSelector.select(from:)(v2, (v0 + 49));
}

{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {

    v3 = *(v2 + 1056);
    v4 = *(v2 + 1048);
    v5 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    v3 = *(v2 + 1056);
    v4 = *(v2 + 1048);
    v5 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v40 = v0;
  v1 = (v0 + 344);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  outlined init with take of SelectedContent(*(v0 + 992), v3, type metadata accessor for SelectedContent);
  v6 = type metadata accessor for OSSignpostID();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("LoadScreenContent.Time", 22, 2u, v4);
  outlined destroy of OnScreenContent.Document?(v4, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  specialized SELFUtils.recordLoadScreenContentEnded(originalMediaType:originalMediaSizeInKBs:)(0x100000000);
  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  outlined init with copy of ScreenContent(v3, v5, type metadata accessor for ScreenContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 1032);
  v9 = *(v0 + 1024);
  v10 = *(v0 + 1016);
  v11 = *(v0 + 1008);
  v12 = *(v0 + 1000);
  v13 = *(v0 + 984);
  v14 = *(v0 + 968);
  if (EnumCaseMultiPayload == 1)
  {
    v15 = outlined init with take of SelectedContent(v14, *(v0 + 944), type metadata accessor for DocumentInfo);
    v11(v15);
    v36 = v9;
    v37 = v2;
    v38 = 0;
    v39 = 0;

    IntentCallbackManager.updateIntentProgress(to:)(&v36);
    outlined consume of GenerativeAssistantProgressLevel(v36, v37, v38, v39);
    v16 = *(v13 + 20);
    v17 = *(v0 + 304);
    *(v0 + 16) = *(v0 + 288);
    *(v0 + 32) = v17;
    *(v0 + 48) = *(v0 + 320);
    v18 = *(v0 + 360);
    *(v0 + 88) = *v1;
    *(v0 + 64) = *(v0 + 336);
    *(v0 + 72) = v11;
    *(v0 + 80) = v10;
    *(v0 + 104) = v18;
    *(v0 + 120) = *(v0 + 376);
    *(v0 + 136) = v9;
    *(v0 + 144) = v8;
    v19 = swift_task_alloc();
    *(v0 + 1160) = v19;
    *v19 = v0;
    v19[1] = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
    v20 = *(v0 + 944);
    v21 = *(v0 + 704);
    v22 = *(v0 + 696);
    v23 = *(v0 + 688);
    v24 = *(v0 + 680);

    return GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:)(v24, v23, v22, v21, v20, v12 + v16, v0 + 16);
  }

  else
  {
    v26 = outlined init with take of SelectedContent(v14, *(v0 + 952), type metadata accessor for ImageInfo);
    v11(v26);
    v36 = v9;
    v37 = v2;
    v38 = 0;
    v39 = 0;

    IntentCallbackManager.updateIntentProgress(to:)(&v36);
    outlined consume of GenerativeAssistantProgressLevel(v36, v37, v38, v39);
    v27 = *(v13 + 20);
    v28 = *(v0 + 304);
    *(v0 + 152) = *(v0 + 288);
    *(v0 + 168) = v28;
    *(v0 + 184) = *(v0 + 320);
    *(v0 + 200) = *(v0 + 336);
    *(v0 + 208) = v11;
    *(v0 + 216) = v10;
    v29 = *(v0 + 360);
    *(v0 + 224) = *v1;
    *(v0 + 240) = v29;
    *(v0 + 256) = *(v0 + 376);
    *(v0 + 272) = v9;
    *(v0 + 280) = v8;
    v30 = swift_task_alloc();
    *(v0 + 1144) = v30;
    *v30 = v0;
    v30[1] = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
    v31 = *(v0 + 952);
    v32 = *(v0 + 704);
    v33 = *(v0 + 696);
    v34 = *(v0 + 688);
    v35 = *(v0 + 680);

    return GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:)(v35, v34, v33, v32, v31, v12 + v27, v0 + 152);
  }
}

{
  v31 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  v1 = *(v0 + 1136);
  *(v0 + 624) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 505);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30[0] = v8;
      *v6 = 136315650;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v30);
      *(v6 + 12) = 2080;
      *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v30);
      *(v6 + 22) = 2112;
      lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();
      swift_allocError();
      *v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 24) = v10;
      *v7 = v10;
      _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s [ContentRequestErrors is = %@]", v6, 0x20u);
      outlined destroy of OnScreenContent.Document?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v7, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v8, -1, -1);
      MEMORY[0x253057F40](v6, -1, -1);
    }

    v11 = 1;
    switch(v3)
    {
      case 1:
        v11 = 2;
        goto LABEL_21;
      case 2:
        v11 = 3;
        goto LABEL_21;
      case 3:
        v11 = 12;
        goto LABEL_21;
      case 4:
        v11 = 4;
        goto LABEL_21;
      case 5:
        v11 = 5;
        goto LABEL_21;
      case 6:
        v11 = 6;
        goto LABEL_21;
      case 7:
        v11 = 7;
        goto LABEL_21;
      case 8:
        v11 = 11;
        goto LABEL_21;
      case 9:
        v11 = 13;
        goto LABEL_21;
      case 10:
        SELFUtils.recordRequestFailed(code:domain:)(14, 6);
        swift_beginAccess();
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v30[0]) = 9;

        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v30, 0, v26);

        objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
        goto LABEL_22;
      case 11:
        v11 = 8;
        goto LABEL_21;
      case 12:
        v11 = 9;
        goto LABEL_21;
      case 13:
        v11 = 10;
        goto LABEL_21;
      default:
LABEL_21:
        SELFUtils.recordRequestFailed(code:domain:)(v11, 6);
        swift_beginAccess();
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v30[0]) = 17;

        v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v30, 0, v27);

        objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
LABEL_22:
        CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
        swift_willThrow();
        v25 = *(v0 + 624);
        break;
    }
  }

  else
  {

    v12 = v1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30[0] = v17;
      *v15 = 136315650;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v30);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v30);
      *(v15 + 22) = 2112;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v19;
      *v16 = v19;
      _os_log_impl(&dword_24FD67000, v13, v14, "%s.%s [error = %@]", v15, 0x20u);
      outlined destroy of OnScreenContent.Document?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v16, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v17, -1, -1);
      MEMORY[0x253057F40](v15, -1, -1);
    }

    MetricsUtils.emitSignpostEvent(_:)("Error.LoadScreenContent", 23, 2);
    SELFUtils.recordLoadScreenContentFailed(code:domain:)(100, 1);
    v20 = _convertErrorToNSError(_:)();
    v21 = [v20 domain];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = _convertErrorToNSError(_:)();
    [v22 code];

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v30[0]) = 17;
    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v30, 0, v23);

    v24 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    v25 = v1;
  }

  v28 = *(v0 + 8);

  return v28();
}

{
  v2 = *v1;
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v3 = *(v2 + 1056);
    v4 = *(v2 + 1048);
    v5 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {

    v3 = *(v2 + 1056);
    v4 = *(v2 + 1048);
    v5 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[125];
  v2 = v0[119];

  outlined destroy of DocumentInfo(v2, type metadata accessor for ImageInfo);
  outlined destroy of DocumentInfo(v1, type metadata accessor for SelectedContent);

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v3 = *(v2 + 1056);
    v4 = *(v2 + 1048);
    v5 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {

    v3 = *(v2 + 1056);
    v4 = *(v2 + 1048);
    v5 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[125];
  v2 = v0[118];

  outlined destroy of DocumentInfo(v2, type metadata accessor for DocumentInfo);
  outlined destroy of DocumentInfo(v1, type metadata accessor for SelectedContent);

  v3 = v0[1];

  return v3();
}

{
  v31 = v0;

  v1 = *(v0 + 1120);
  *(v0 + 624) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 505);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30[0] = v8;
      *v6 = 136315650;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v30);
      *(v6 + 12) = 2080;
      *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v30);
      *(v6 + 22) = 2112;
      lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();
      swift_allocError();
      *v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 24) = v10;
      *v7 = v10;
      _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s [ContentRequestErrors is = %@]", v6, 0x20u);
      outlined destroy of OnScreenContent.Document?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v7, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v8, -1, -1);
      MEMORY[0x253057F40](v6, -1, -1);
    }

    v11 = 1;
    switch(v3)
    {
      case 1:
        v11 = 2;
        goto LABEL_21;
      case 2:
        v11 = 3;
        goto LABEL_21;
      case 3:
        v11 = 12;
        goto LABEL_21;
      case 4:
        v11 = 4;
        goto LABEL_21;
      case 5:
        v11 = 5;
        goto LABEL_21;
      case 6:
        v11 = 6;
        goto LABEL_21;
      case 7:
        v11 = 7;
        goto LABEL_21;
      case 8:
        v11 = 11;
        goto LABEL_21;
      case 9:
        v11 = 13;
        goto LABEL_21;
      case 10:
        SELFUtils.recordRequestFailed(code:domain:)(14, 6);
        swift_beginAccess();
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v30[0]) = 9;

        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v30, 0, v26);

        objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
        goto LABEL_22;
      case 11:
        v11 = 8;
        goto LABEL_21;
      case 12:
        v11 = 9;
        goto LABEL_21;
      case 13:
        v11 = 10;
        goto LABEL_21;
      default:
LABEL_21:
        SELFUtils.recordRequestFailed(code:domain:)(v11, 6);
        swift_beginAccess();
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v30[0]) = 17;

        v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v30, 0, v27);

        objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
LABEL_22:
        CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
        swift_willThrow();
        v25 = *(v0 + 624);
        break;
    }
  }

  else
  {

    v12 = v1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30[0] = v17;
      *v15 = 136315650;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v30);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v30);
      *(v15 + 22) = 2112;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v19;
      *v16 = v19;
      _os_log_impl(&dword_24FD67000, v13, v14, "%s.%s [error = %@]", v15, 0x20u);
      outlined destroy of OnScreenContent.Document?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v16, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v17, -1, -1);
      MEMORY[0x253057F40](v15, -1, -1);
    }

    MetricsUtils.emitSignpostEvent(_:)("Error.LoadScreenContent", 23, 2);
    SELFUtils.recordLoadScreenContentFailed(code:domain:)(100, 1);
    v20 = _convertErrorToNSError(_:)();
    v21 = [v20 domain];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = _convertErrorToNSError(_:)();
    [v22 code];

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v30[0]) = 17;
    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v30, 0, v23);

    v24 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    v25 = v1;
  }

  v28 = *(v0 + 8);

  return v28();
}

{
  v170 = v0;
  v1 = *(v0 + 952);

  outlined destroy of DocumentInfo(v1, type metadata accessor for ImageInfo);
  v2 = *(v0 + 1152);
  *(v0 + 632) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 936);
    v7 = *(v0 + 928);
    v8 = *(v0 + 920);
    v9 = *(v0 + 912);
    v10 = v2;
    v11 = *(v0 + 680);

    (*(v8 + 32))(v7, v6, v9);
    specialized GenerateController.handleGATError(_:_:)(v7, v5, v4, v11);
    v12 = *(v0 + 1000);
    v13 = *(v0 + 928);
    v14 = *(v0 + 920);
    v15 = *(v0 + 912);

    (*(v14 + 8))(v13, v15);
    outlined destroy of DocumentInfo(v12, type metadata accessor for SelectedContent);
    v49 = (v0 + 632);
LABEL_42:

    v74 = *(v0 + 8);
    goto LABEL_43;
  }

  v49 = (v0 + 640);

  *(v0 + 640) = v2;
  v17 = v2;
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 1072);
    v19 = *(v0 + 1064);
    v20 = *(v0 + 680);

    v21 = *(v0 + 528);
    *(v0 + 472) = *(v0 + 512);
    *(v0 + 488) = v21;
    *(v0 + 504) = *(v0 + 544);
    specialized GenerateController.handleModelOrchestratorError(error:partnerName:)((v0 + 472), v19, v18, v20);
    outlined destroy of DocumentInfo(*(v0 + 1000), type metadata accessor for SelectedContent);
    outlined destroy of ModelOrchestrator.Error(v0 + 472);

    goto LABEL_42;
  }

  v49 = (v0 + 648);

  *(v0 + 648) = v2;
  v22 = v2;
  if (!swift_dynamicCast())
  {
    object = (v0 + 656);

    *(v0 + 656) = v2;
    v51 = v2;
    v52 = type metadata accessor for CustomErrorWithLocalizedDescription();
    if (!swift_dynamicCast())
    {

      v75 = v2;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v169[0] = v80;
        *v78 = 136315650;
        *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v169);
        *(v78 + 12) = 2080;
        *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v169);
        *(v78 + 22) = 2112;
        v81 = v2;
        v82 = _swift_stdlib_bridgeErrorToNSError();
        *(v78 + 24) = v82;
        *v79 = v82;
        _os_log_impl(&dword_24FD67000, v76, v77, "%s.%s [error = %@]", v78, 0x20u);
        outlined destroy of OnScreenContent.Document?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x253057F40](v79, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v80, -1, -1);
        MEMORY[0x253057F40](v78, -1, -1);
      }

      v83 = *(v0 + 1072);
      v84 = *(v0 + 1064);
      SELFUtils.recordRequestFailed(code:domain:)(100, 1);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v169[0]) = 5;
      v85 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v86.value._countAndFlagsBits = v84;
      v86.value._object = v83;
      DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v169, v86, v85);

      *(v0 + 672) = v2;
      v87 = v2;
      if (swift_dynamicCast())
      {
        v88 = *(v0 + 600);
        v89 = *(v0 + 608);
        v90 = *(v0 + 616);
        if (v90 == 3)
        {
          outlined consume of GenerateTextFromMediaController.Error(v88, v89, 3u);

          LOBYTE(v169[0]) = 8;
          v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
          DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v169, 0, v91);
        }

        else
        {
          outlined consume of GenerateTextFromMediaController.Error(v88, v89, v90);
        }
      }

      v147 = *(v0 + 1000);
      v148 = _convertErrorToNSError(_:)();
      v149 = [v148 domain];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = _convertErrorToNSError(_:)();
      [v150 code];

      v151 = objc_allocWithZone(v52);
      CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
      swift_willThrow();

      outlined destroy of DocumentInfo(v147, type metadata accessor for SelectedContent);
      goto LABEL_16;
    }

    v49 = *(v0 + 664);
    if (one-time initialization token for genFromTextController != -1)
    {
LABEL_49:
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1080), static Logger.genFromTextController);
    v53 = v49;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 1000);
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v169[0] = v59;
      *v58 = 136315650;
      v164 = v57;
      *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v169);
      *(v58 + 12) = 2080;
      *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v169);
      *(v58 + 22) = 2080;
      v60 = [v53 localizedDescription];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v169);

      *(v58 + 24) = v64;
      _os_log_impl(&dword_24FD67000, v54, v55, "%s.%s [CustomErrorWithLocalizedDescription = %s]", v58, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v59, -1, -1);
      MEMORY[0x253057F40](v58, -1, -1);

      swift_willThrow();
      outlined destroy of DocumentInfo(v164, type metadata accessor for SelectedContent);
    }

    else
    {
LABEL_38:

      swift_willThrow();
      outlined destroy of DocumentInfo(v57, type metadata accessor for SelectedContent);
    }

    v16 = *object;
LABEL_15:

LABEL_16:

    v74 = *(v0 + 8);
LABEL_43:

    return v74();
  }

  v23 = *(v0 + 904);
  v24 = *(v0 + 896);
  v25 = *(v0 + 888);
  v26 = *(v0 + 880);
  v27 = *(v0 + 872);
  v28 = *(v0 + 864);
  v29 = *(v0 + 856);

  (*(v25 + 32))(v24, v23, v26);
  GenerativeError.type.getter();
  if ((*(v28 + 88))(v27, v29) != *MEMORY[0x277D0DB58])
  {
    v65 = *(v0 + 1072);
    v66 = *(v0 + 1064);
    v67 = *(v0 + 896);
    v68 = *(v0 + 888);
    v154 = *(v0 + 880);
    v157 = *(v0 + 1000);
    v69 = *(v0 + 864);
    v161 = *(v0 + 856);
    v165 = *(v0 + 872);

    MEMORY[0x253056790](v70);
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v169[0]) = 16;
    v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v72.value._countAndFlagsBits = v66;
    v72.value._object = v65;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v169, v72, v71);

    v73 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    (*(v68 + 8))(v67, v154);
    outlined destroy of DocumentInfo(v157, type metadata accessor for SelectedContent);
    (*(v69 + 8))(v165, v161);
    v16 = *(v0 + 648);
    goto LABEL_15;
  }

  v30 = *(v0 + 872);
  v31 = *(v0 + 864);
  v32 = *(v0 + 856);
  v33 = *(v0 + 848);
  v34 = *(v0 + 840);
  v35 = *(v0 + 824);
  v36 = *(v0 + 816);

  (*(v31 + 96))(v30, v32);
  (*(v35 + 32))(v33, v30, v36);
  v37 = *(v35 + 16);
  v37(v34, v33, v36);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 840);
  if (v40)
  {
    v160 = *(v0 + 832);
    v42 = *(v0 + 824);
    v43 = *(v0 + 816);
    v163 = v39;
    v44 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v169[0] = v167;
    *v44 = 136315650;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v169);
    *(v44 + 12) = 2080;
    *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v169);
    *(v44 + 22) = 2080;
    v37(v160, v41, v43);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    (*(v42 + 8))(v41, v43);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v169);

    *(v44 + 24) = v48;
    _os_log_impl(&dword_24FD67000, v38, v163, "%s.%s [Authentication Error = %s]", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v167, -1, -1);
    MEMORY[0x253057F40](v44, -1, -1);
  }

  else
  {
    v92 = *(v0 + 824);
    v93 = *(v0 + 816);

    (*(v92 + 8))(v41, v93);
  }

  v94 = *(v0 + 808);
  v158 = v94;
  v95 = *(v0 + 800);
  v96 = *(v0 + 792);
  v97 = *(v0 + 728);
  v98 = type metadata accessor for URL();
  (*(*(v98 - 8) + 56))(v94, 1, 1, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v99 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v166 = *(v97 + 72);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_24FE1A560;
  v153 = v99;
  v101 = (v100 + v99);
  *v101 = 0;
  v101[1] = 0xE000000000000000;
  v162 = v100 + v99;
  swift_storeEnumTagMultiPayload();
  v155 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v102 = MEMORY[0x277D0D628];
  *(v0 + 456) = v155;
  *(v0 + 464) = v102;
  __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v103 = (v95 + v96[14]);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v169[0]) = 49;
  v104 = MEMORY[0x277D84F90];
  v105 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v106 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v169, 0, v105);
  object = v106._object;

  *v103 = v106;
  *v95 = 0;
  *(v95 + 8) = 0xE000000000000000;
  v168 = v100;
  *(v95 + 16) = v100;
  *(v95 + 24) = v104;
  *(v95 + 32) = 64;
  *(v95 + 40) = v104;
  *(v95 + 48) = v104;
  *(v95 + v96[15]) = v104;
  *(v95 + v96[12]) = 3;
  v107 = (v95 + v96[13]);
  *v107 = 0;
  v107[1] = 0xE000000000000000;
  outlined init with copy of Date?(v158, v95 + v96[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v108 = (v95 + v96[11]);
  *v108 = 0;
  v108[1] = 0xE000000000000000;
  *(v95 + v96[16]) = 0;
  *(v95 + v96[17]) = 0;
  v109 = (v95 + v96[18]);
  *v109 = 0;
  v109[1] = 0xE000000000000000;
  v110 = (v95 + v96[19]);
  *v110 = 0;
  v110[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 432, v95 + v96[21]);
  *(v95 + v96[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    v132 = *(v0 + 896);
    v133 = *(v0 + 888);
    v134 = *(v0 + 880);
    v135 = *(v0 + 848);
    v136 = *(v0 + 824);
    v137 = *(v0 + 816);
    outlined destroy of OnScreenContent.Document?(*(v0 + 808), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v136 + 8))(v135, v137);
    (*(v133 + 8))(v132, v134);
LABEL_41:
    v145 = *(v0 + 800);
    v146 = *(v0 + 680);
    outlined destroy of DocumentInfo(*(v0 + 1000), type metadata accessor for SelectedContent);
    outlined init with copy of ScreenContent(v145, v146, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 432));
    outlined destroy of DocumentInfo(v145, type metadata accessor for GeneratedResponse);
    goto LABEL_42;
  }

  v111 = *(v0 + 800);
  v112 = *(v0 + 760);
  v113 = *(v0 + 752);
  v156 = *(v0 + 736);
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v115 = GeneratedResponse.updateText(_:)(v114);
  *v111 = v115._countAndFlagsBits;
  v152 = v95;
  *(v95 + 8) = v115._object;
  v116 = *(v168 + 16);
  v117 = (v112 + 56);
  v118 = (v112 + 48);
  v54 = 0;

  while (1)
  {
    while (1)
    {
      if (v54 == v116)
      {
        v119 = 1;
        v54 = v116;
      }

      else
      {
        if (v54 >= *(v168 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v120 = *(v0 + 776);
        v121 = *(v0 + 768);
        v122 = *(v113 + 48);
        *v121 = v54;
        outlined init with copy of ScreenContent(v162 + v54 * v166, v121 + v122, type metadata accessor for GeneratedResponse.RichContentEntity);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v121, v120, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
        v119 = 0;
        ++v54;
      }

      v123 = *(v0 + 784);
      v124 = *(v0 + 776);
      v125 = *(v0 + 752);
      (*v117)(v124, v119, 1, v125);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v124, v123, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
      if ((*v118)(v123, 1, v125) == 1)
      {
        v138 = *(v0 + 896);
        v139 = *(v0 + 888);
        v140 = *(v0 + 880);
        v141 = *(v0 + 848);
        v142 = *(v0 + 824);
        v143 = *(v0 + 816);
        v144 = *(v0 + 808);

        outlined destroy of OnScreenContent.Document?(v144, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v142 + 8))(v141, v143);
        (*(v139 + 8))(v138, v140);
        goto LABEL_41;
      }

      v126 = *(v0 + 784);
      object = *(v0 + 720);
      v127 = *v126;
      outlined init with take of SelectedContent(v126 + *(v113 + 48), *(v0 + 744), type metadata accessor for GeneratedResponse.RichContentEntity);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v129 = *(v0 + 744);
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      outlined destroy of DocumentInfo(v129, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    v130 = *(v0 + 736);
    outlined destroy of DocumentInfo(v129, type metadata accessor for GeneratedResponse.RichContentEntity);
    *v130 = v115._countAndFlagsBits;
    object = v115._object;
    *(v156 + 8) = v115._object;
    swift_storeEnumTagMultiPayload();

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v57 = v159;
      if ((v127 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v159);
      v159 = result;
      v57 = result;
      if ((v127 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (v127 >= *(v57 + 16))
    {
      break;
    }

    outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 736), v57 + v153 + v127 * v166);
    *(v152 + 16) = v57;
  }

  __break(1u);
  return result;
}

{
  v170 = v0;
  v1 = *(v0 + 944);

  outlined destroy of DocumentInfo(v1, type metadata accessor for DocumentInfo);
  v2 = *(v0 + 1168);
  *(v0 + 632) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 936);
    v7 = *(v0 + 928);
    v8 = *(v0 + 920);
    v9 = *(v0 + 912);
    v10 = v2;
    v11 = *(v0 + 680);

    (*(v8 + 32))(v7, v6, v9);
    specialized GenerateController.handleGATError(_:_:)(v7, v5, v4, v11);
    v12 = *(v0 + 1000);
    v13 = *(v0 + 928);
    v14 = *(v0 + 920);
    v15 = *(v0 + 912);

    (*(v14 + 8))(v13, v15);
    outlined destroy of DocumentInfo(v12, type metadata accessor for SelectedContent);
    v49 = (v0 + 632);
LABEL_42:

    v74 = *(v0 + 8);
    goto LABEL_43;
  }

  v49 = (v0 + 640);

  *(v0 + 640) = v2;
  v17 = v2;
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 1072);
    v19 = *(v0 + 1064);
    v20 = *(v0 + 680);

    v21 = *(v0 + 528);
    *(v0 + 472) = *(v0 + 512);
    *(v0 + 488) = v21;
    *(v0 + 504) = *(v0 + 544);
    specialized GenerateController.handleModelOrchestratorError(error:partnerName:)((v0 + 472), v19, v18, v20);
    outlined destroy of DocumentInfo(*(v0 + 1000), type metadata accessor for SelectedContent);
    outlined destroy of ModelOrchestrator.Error(v0 + 472);

    goto LABEL_42;
  }

  v49 = (v0 + 648);

  *(v0 + 648) = v2;
  v22 = v2;
  if (!swift_dynamicCast())
  {
    object = (v0 + 656);

    *(v0 + 656) = v2;
    v51 = v2;
    v52 = type metadata accessor for CustomErrorWithLocalizedDescription();
    if (!swift_dynamicCast())
    {

      v75 = v2;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v169[0] = v80;
        *v78 = 136315650;
        *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v169);
        *(v78 + 12) = 2080;
        *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v169);
        *(v78 + 22) = 2112;
        v81 = v2;
        v82 = _swift_stdlib_bridgeErrorToNSError();
        *(v78 + 24) = v82;
        *v79 = v82;
        _os_log_impl(&dword_24FD67000, v76, v77, "%s.%s [error = %@]", v78, 0x20u);
        outlined destroy of OnScreenContent.Document?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x253057F40](v79, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v80, -1, -1);
        MEMORY[0x253057F40](v78, -1, -1);
      }

      v83 = *(v0 + 1072);
      v84 = *(v0 + 1064);
      SELFUtils.recordRequestFailed(code:domain:)(100, 1);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v169[0]) = 5;
      v85 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v86.value._countAndFlagsBits = v84;
      v86.value._object = v83;
      DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v169, v86, v85);

      *(v0 + 672) = v2;
      v87 = v2;
      if (swift_dynamicCast())
      {
        v88 = *(v0 + 600);
        v89 = *(v0 + 608);
        v90 = *(v0 + 616);
        if (v90 == 3)
        {
          outlined consume of GenerateTextFromMediaController.Error(v88, v89, 3u);

          LOBYTE(v169[0]) = 8;
          v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
          DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v169, 0, v91);
        }

        else
        {
          outlined consume of GenerateTextFromMediaController.Error(v88, v89, v90);
        }
      }

      v147 = *(v0 + 1000);
      v148 = _convertErrorToNSError(_:)();
      v149 = [v148 domain];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = _convertErrorToNSError(_:)();
      [v150 code];

      v151 = objc_allocWithZone(v52);
      CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
      swift_willThrow();

      outlined destroy of DocumentInfo(v147, type metadata accessor for SelectedContent);
      goto LABEL_16;
    }

    v49 = *(v0 + 664);
    if (one-time initialization token for genFromTextController != -1)
    {
LABEL_49:
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1080), static Logger.genFromTextController);
    v53 = v49;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 1000);
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v169[0] = v59;
      *v58 = 136315650;
      v164 = v57;
      *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v169);
      *(v58 + 12) = 2080;
      *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v169);
      *(v58 + 22) = 2080;
      v60 = [v53 localizedDescription];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v169);

      *(v58 + 24) = v64;
      _os_log_impl(&dword_24FD67000, v54, v55, "%s.%s [CustomErrorWithLocalizedDescription = %s]", v58, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v59, -1, -1);
      MEMORY[0x253057F40](v58, -1, -1);

      swift_willThrow();
      outlined destroy of DocumentInfo(v164, type metadata accessor for SelectedContent);
    }

    else
    {
LABEL_38:

      swift_willThrow();
      outlined destroy of DocumentInfo(v57, type metadata accessor for SelectedContent);
    }

    v16 = *object;
LABEL_15:

LABEL_16:

    v74 = *(v0 + 8);
LABEL_43:

    return v74();
  }

  v23 = *(v0 + 904);
  v24 = *(v0 + 896);
  v25 = *(v0 + 888);
  v26 = *(v0 + 880);
  v27 = *(v0 + 872);
  v28 = *(v0 + 864);
  v29 = *(v0 + 856);

  (*(v25 + 32))(v24, v23, v26);
  GenerativeError.type.getter();
  if ((*(v28 + 88))(v27, v29) != *MEMORY[0x277D0DB58])
  {
    v65 = *(v0 + 1072);
    v66 = *(v0 + 1064);
    v67 = *(v0 + 896);
    v68 = *(v0 + 888);
    v154 = *(v0 + 880);
    v157 = *(v0 + 1000);
    v69 = *(v0 + 864);
    v161 = *(v0 + 856);
    v165 = *(v0 + 872);

    MEMORY[0x253056790](v70);
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v169[0]) = 16;
    v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v72.value._countAndFlagsBits = v66;
    v72.value._object = v65;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v169, v72, v71);

    v73 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    (*(v68 + 8))(v67, v154);
    outlined destroy of DocumentInfo(v157, type metadata accessor for SelectedContent);
    (*(v69 + 8))(v165, v161);
    v16 = *(v0 + 648);
    goto LABEL_15;
  }

  v30 = *(v0 + 872);
  v31 = *(v0 + 864);
  v32 = *(v0 + 856);
  v33 = *(v0 + 848);
  v34 = *(v0 + 840);
  v35 = *(v0 + 824);
  v36 = *(v0 + 816);

  (*(v31 + 96))(v30, v32);
  (*(v35 + 32))(v33, v30, v36);
  v37 = *(v35 + 16);
  v37(v34, v33, v36);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 840);
  if (v40)
  {
    v160 = *(v0 + 832);
    v42 = *(v0 + 824);
    v43 = *(v0 + 816);
    v163 = v39;
    v44 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v169[0] = v167;
    *v44 = 136315650;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v169);
    *(v44 + 12) = 2080;
    *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v169);
    *(v44 + 22) = 2080;
    v37(v160, v41, v43);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    (*(v42 + 8))(v41, v43);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v169);

    *(v44 + 24) = v48;
    _os_log_impl(&dword_24FD67000, v38, v163, "%s.%s [Authentication Error = %s]", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v167, -1, -1);
    MEMORY[0x253057F40](v44, -1, -1);
  }

  else
  {
    v92 = *(v0 + 824);
    v93 = *(v0 + 816);

    (*(v92 + 8))(v41, v93);
  }

  v94 = *(v0 + 808);
  v158 = v94;
  v95 = *(v0 + 800);
  v96 = *(v0 + 792);
  v97 = *(v0 + 728);
  v98 = type metadata accessor for URL();
  (*(*(v98 - 8) + 56))(v94, 1, 1, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v99 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v166 = *(v97 + 72);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_24FE1A560;
  v153 = v99;
  v101 = (v100 + v99);
  *v101 = 0;
  v101[1] = 0xE000000000000000;
  v162 = v100 + v99;
  swift_storeEnumTagMultiPayload();
  v155 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v102 = MEMORY[0x277D0D628];
  *(v0 + 456) = v155;
  *(v0 + 464) = v102;
  __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v103 = (v95 + v96[14]);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v169[0]) = 49;
  v104 = MEMORY[0x277D84F90];
  v105 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v106 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v169, 0, v105);
  object = v106._object;

  *v103 = v106;
  *v95 = 0;
  *(v95 + 8) = 0xE000000000000000;
  v168 = v100;
  *(v95 + 16) = v100;
  *(v95 + 24) = v104;
  *(v95 + 32) = 64;
  *(v95 + 40) = v104;
  *(v95 + 48) = v104;
  *(v95 + v96[15]) = v104;
  *(v95 + v96[12]) = 3;
  v107 = (v95 + v96[13]);
  *v107 = 0;
  v107[1] = 0xE000000000000000;
  outlined init with copy of Date?(v158, v95 + v96[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v108 = (v95 + v96[11]);
  *v108 = 0;
  v108[1] = 0xE000000000000000;
  *(v95 + v96[16]) = 0;
  *(v95 + v96[17]) = 0;
  v109 = (v95 + v96[18]);
  *v109 = 0;
  v109[1] = 0xE000000000000000;
  v110 = (v95 + v96[19]);
  *v110 = 0;
  v110[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 432, v95 + v96[21]);
  *(v95 + v96[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    v132 = *(v0 + 896);
    v133 = *(v0 + 888);
    v134 = *(v0 + 880);
    v135 = *(v0 + 848);
    v136 = *(v0 + 824);
    v137 = *(v0 + 816);
    outlined destroy of OnScreenContent.Document?(*(v0 + 808), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v136 + 8))(v135, v137);
    (*(v133 + 8))(v132, v134);
LABEL_41:
    v145 = *(v0 + 800);
    v146 = *(v0 + 680);
    outlined destroy of DocumentInfo(*(v0 + 1000), type metadata accessor for SelectedContent);
    outlined init with copy of ScreenContent(v145, v146, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 432));
    outlined destroy of DocumentInfo(v145, type metadata accessor for GeneratedResponse);
    goto LABEL_42;
  }

  v111 = *(v0 + 800);
  v112 = *(v0 + 760);
  v113 = *(v0 + 752);
  v156 = *(v0 + 736);
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v115 = GeneratedResponse.updateText(_:)(v114);
  *v111 = v115._countAndFlagsBits;
  v152 = v95;
  *(v95 + 8) = v115._object;
  v116 = *(v168 + 16);
  v117 = (v112 + 56);
  v118 = (v112 + 48);
  v54 = 0;

  while (1)
  {
    while (1)
    {
      if (v54 == v116)
      {
        v119 = 1;
        v54 = v116;
      }

      else
      {
        if (v54 >= *(v168 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v120 = *(v0 + 776);
        v121 = *(v0 + 768);
        v122 = *(v113 + 48);
        *v121 = v54;
        outlined init with copy of ScreenContent(v162 + v54 * v166, v121 + v122, type metadata accessor for GeneratedResponse.RichContentEntity);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v121, v120, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
        v119 = 0;
        ++v54;
      }

      v123 = *(v0 + 784);
      v124 = *(v0 + 776);
      v125 = *(v0 + 752);
      (*v117)(v124, v119, 1, v125);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v124, v123, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
      if ((*v118)(v123, 1, v125) == 1)
      {
        v138 = *(v0 + 896);
        v139 = *(v0 + 888);
        v140 = *(v0 + 880);
        v141 = *(v0 + 848);
        v142 = *(v0 + 824);
        v143 = *(v0 + 816);
        v144 = *(v0 + 808);

        outlined destroy of OnScreenContent.Document?(v144, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v142 + 8))(v141, v143);
        (*(v139 + 8))(v138, v140);
        goto LABEL_41;
      }

      v126 = *(v0 + 784);
      object = *(v0 + 720);
      v127 = *v126;
      outlined init with take of SelectedContent(v126 + *(v113 + 48), *(v0 + 744), type metadata accessor for GeneratedResponse.RichContentEntity);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v129 = *(v0 + 744);
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      outlined destroy of DocumentInfo(v129, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    v130 = *(v0 + 736);
    outlined destroy of DocumentInfo(v129, type metadata accessor for GeneratedResponse.RichContentEntity);
    *v130 = v115._countAndFlagsBits;
    object = v115._object;
    *(v156 + 8) = v115._object;
    swift_storeEnumTagMultiPayload();

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v57 = v159;
      if ((v127 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v159);
      v159 = result;
      v57 = result;
      if ((v127 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (v127 >= *(v57 + 16))
    {
      break;
    }

    outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 736), v57 + v153 + v127 * v166);
    *(v152 + 16) = v57;
  }

  __break(1u);
  return result;
}

uint64_t GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 1312) = v7;
  *(v8 + 1304) = a5;
  *(v8 + 1296) = a4;
  *(v8 + 1288) = a3;
  *(v8 + 1280) = a2;
  *(v8 + 1272) = a1;
  v10 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v8 + 1320) = v10;
  *(v8 + 1328) = *(v10 - 8);
  *(v8 + 1336) = swift_task_alloc();
  *(v8 + 1344) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v8 + 1352) = v11;
  *(v8 + 1360) = *(v11 - 8);
  *(v8 + 1368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  v12 = type metadata accessor for GeneratedResponse(0);
  *(v8 + 1392) = v12;
  *(v8 + 1400) = *(v12 - 8);
  *(v8 + 1408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  *(v8 + 1416) = swift_task_alloc();
  *(v8 + 1424) = type metadata accessor for UploadableMedia.Source(0);
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = type metadata accessor for UploadableImageData(0);
  *(v8 + 1448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  *(v8 + 1472) = type metadata accessor for ModelResponse(0);
  *(v8 + 1480) = swift_task_alloc();
  *(v8 + 1488) = swift_task_alloc();
  *(v8 + 1496) = swift_task_alloc();
  *(v8 + 1504) = swift_task_alloc();
  v13 = type metadata accessor for GATError();
  *(v8 + 1512) = v13;
  *(v8 + 1520) = *(v13 - 8);
  *(v8 + 1528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  *(v8 + 1536) = swift_task_alloc();
  v14 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v8 + 1544) = v14;
  *(v8 + 1552) = *(v14 - 8);
  *(v8 + 1560) = swift_task_alloc();
  *(v8 + 1568) = swift_task_alloc();
  *(v8 + 1576) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  *(v8 + 1584) = swift_task_alloc();
  v15 = type metadata accessor for ConfirmationActionName();
  *(v8 + 1592) = v15;
  *(v8 + 1600) = *(v15 - 8);
  *(v8 + 1608) = swift_task_alloc();
  *(v8 + 1616) = swift_task_alloc();
  v16 = type metadata accessor for SnippetPluginContainer();
  *(v8 + 1624) = v16;
  *(v8 + 1632) = *(v16 - 8);
  *(v8 + 1640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v8 + 1648) = swift_task_alloc();
  v17 = type metadata accessor for SupportedDocumentType();
  *(v8 + 1656) = v17;
  *(v8 + 1664) = *(v17 - 8);
  *(v8 + 1672) = swift_task_alloc();
  v18 = type metadata accessor for AttachmentConfirmationPayload();
  *(v8 + 1680) = v18;
  *(v8 + 1688) = *(v18 - 8);
  *(v8 + 1696) = swift_task_alloc();
  *(v8 + 1704) = swift_task_alloc();
  v19 = type metadata accessor for Attachment.LocalizedName();
  *(v8 + 1712) = v19;
  *(v8 + 1720) = *(v19 - 8);
  *(v8 + 1728) = swift_task_alloc();
  *(v8 + 1736) = swift_task_alloc();
  v20 = type metadata accessor for IntentDialog();
  *(v8 + 1744) = v20;
  *(v8 + 1752) = *(v20 - 8);
  *(v8 + 1760) = swift_task_alloc();
  *(v8 + 1768) = swift_task_alloc();
  v21 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  *(v8 + 1776) = v21;
  *(v8 + 1784) = *(v21 - 8);
  *(v8 + 1792) = swift_task_alloc();
  v22 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v8 + 1800) = v22;
  *(v8 + 1808) = *(v22 - 8);
  *(v8 + 1816) = swift_task_alloc();
  *(v8 + 1824) = swift_task_alloc();
  v23 = type metadata accessor for GenerativeAssistantUseCase();
  *(v8 + 1832) = v23;
  *(v8 + 1840) = *(v23 - 8);
  *(v8 + 1848) = swift_task_alloc();
  *(v8 + 1856) = swift_task_alloc();
  *(v8 + 1864) = swift_task_alloc();
  *(v8 + 1872) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v8 + 1880) = swift_task_alloc();
  *(v8 + 1888) = swift_task_alloc();
  *(v8 + 1896) = swift_task_alloc();
  *(v8 + 1904) = swift_task_alloc();
  *(v8 + 1912) = swift_task_alloc();
  *(v8 + 1920) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMd, &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMR);
  *(v8 + 1928) = swift_task_alloc();
  v24 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  *(v8 + 1936) = v24;
  *(v8 + 1944) = *(v24 - 8);
  *(v8 + 1952) = swift_task_alloc();
  *(v8 + 1960) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  *(v8 + 1968) = swift_task_alloc();
  *(v8 + 1976) = swift_task_alloc();
  v25 = type metadata accessor for IntelligenceFile.Attributes();
  *(v8 + 1984) = v25;
  *(v8 + 1992) = *(v25 - 8);
  *(v8 + 2000) = swift_task_alloc();
  *(v8 + 2008) = swift_task_alloc();
  v26 = *(a7 + 112);
  *(v8 + 112) = *(a7 + 96);
  *(v8 + 128) = v26;
  *(v8 + 144) = *(a7 + 128);
  v27 = *(a7 + 48);
  *(v8 + 48) = *(a7 + 32);
  *(v8 + 64) = v27;
  v28 = *(a7 + 80);
  *(v8 + 80) = *(a7 + 64);
  *(v8 + 96) = v28;
  v29 = *(a7 + 16);
  *(v8 + 16) = *a7;
  *(v8 + 32) = v29;
  *(v8 + 2016) = type metadata accessor for MainActor();
  *(v8 + 2024) = static MainActor.shared.getter();
  v31 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 2032) = v31;
  *(v8 + 2040) = v30;

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v31, v30);
}

uint64_t GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:)()
{
  v226 = v0;
  v2 = *(v0 + 2008);
  v3 = *(v0 + 1992);
  v4 = *(v0 + 1984);
  v5 = *(v0 + 1304);
  *(v0 + 2048) = *v5;
  *(v0 + 2056) = v5[1];
  IntelligenceFile.attributes.getter();
  v6 = IntelligenceFile.Attributes.fileSize.getter();
  v8 = v7;
  v9 = *(v3 + 8);
  *(v0 + 2064) = v9;
  *(v0 + 2072) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  if (v8)
  {

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    SELFUtils.recordRequestFailed(code:domain:)(0, 1);
    lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();
    swift_allocError();
    *v10 = 0xD000000000000037;
    *(v10 + 8) = 0x800000024FE1FE90;
    *(v10 + 16) = 0;
    goto LABEL_12;
  }

  v11 = *(v0 + 1976);
  v12 = *(v0 + 1304);
  v214 = v6;
  *(v0 + 2080) = v6;
  v13 = *(type metadata accessor for ImageInfo(0) + 32);
  outlined init with copy of Date?(v12 + v13, v11, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v14 = type metadata accessor for OnScreenContent.UIMetadata();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v11, 1, v14) == 1)
  {
    v17 = *(v0 + 1976);

    outlined destroy of OnScreenContent.Document?(v17, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
LABEL_9:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    SELFUtils.recordRequestFailed(code:domain:)(1, 1);
    lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();
    swift_allocError();
    *v23 = 0xD000000000000041;
    *(v23 + 8) = 0x800000024FE1FED0;
    *(v23 + 16) = 1;
LABEL_12:
    swift_willThrow();
LABEL_13:

    v24 = *(v0 + 8);
    goto LABEL_14;
  }

  v212 = v12;
  v18 = *(v0 + 1976);
  v19 = *(v0 + 1960);
  v20 = *(v0 + 1944);
  v21 = *(v0 + 1936);
  OnScreenContent.UIMetadata.window.getter();
  v210 = *(v15 + 8);
  v210(v18, v14);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v22 = *(v20 + 8);
  v22(v19, v21);
  *(v0 + 2088) = *(v0 + 1080);
  *(v0 + 2096) = *(v0 + 1088);
  if (*(v0 + 1096))
  {

    goto LABEL_9;
  }

  v26 = v22;
  v27 = *(v0 + 1968);
  outlined init with copy of Date?(v212 + v13, v27, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v28 = v16(v27, 1, v14);
  v29 = *(v0 + 1968);
  if (v28 == 1)
  {
    v30 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd;
    v31 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR;
LABEL_21:
    outlined destroy of OnScreenContent.Document?(v29, v30, v31);
    v38 = 0;
    goto LABEL_23;
  }

  v32 = *(v0 + 1952);
  v33 = *(v0 + 1936);
  v34 = *(v0 + 1928);
  OnScreenContent.UIMetadata.window.getter();
  v210(v29, v14);
  OnScreenContent.UIMetadata.Window.intelligenceUserActivity.getter();
  v26(v32, v33);
  v35 = type metadata accessor for IntelligenceUserActivity();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v34, 1, v35);
  v29 = *(v0 + 1928);
  if (v37 == 1)
  {
    v30 = &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMd;
    v31 = &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMR;
    goto LABEL_21;
  }

  v38 = IntelligenceUserActivity.userActivity.getter();
  (*(v36 + 8))(v29, v35);
LABEL_23:
  *(v0 + 2104) = v38;
  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v39 = (v0 + 1097);
  v209 = type metadata accessor for Logger();
  *(v0 + 2112) = __swift_project_value_buffer(v209, static Logger.genFromMediaController);
  v40 = v38;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  v213 = v40;
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    *&v216[0] = v211;
    *v43 = 136315650;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v216);
    *(v43 + 12) = 2080;
    *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v216);
    *(v43 + 22) = 2080;
    if (v38)
    {
      v44 = [v40 webpageURL];
      if (v44)
      {
        v45 = v44;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v49 = *(v0 + 1920);
      v50 = *(v0 + 1912);
      v51 = type metadata accessor for URL();
      v52 = *(v51 - 8);
      (*(v52 + 56))(v50, v46, 1, v51);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v50, v49, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v53 = (*(v52 + 48))(v49, 1, v51);
      v39 = (v0 + 1097);
      v40 = v213;
      if (v53 != 1)
      {
        v54 = 0xE400000000000000;
        v55 = 1702195828;
        goto LABEL_34;
      }
    }

    else
    {
      v47 = *(v0 + 1920);
      v48 = type metadata accessor for URL();
      (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
    }

    v54 = 0xE500000000000000;
    v55 = 0x65736C6166;
LABEL_34:
    outlined destroy of OnScreenContent.Document?(*(v0 + 1920), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v216);

    *(v43 + 24) = v56;
    _os_log_impl(&dword_24FD67000, v41, v42, "%s.%s [NSUserActivity webpageURL provided = %s]", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v211, -1, -1);
    MEMORY[0x253057F40](v43, -1, -1);
  }

  if (v38)
  {
    v57 = [v40 activityType];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v61 = GenerateTextFromMediaController.isFromWebsite(activityType:)(v58, v60);
  *v39 = v61 & 1;

  if ((v61 & 1) != 0 && v38)
  {
    v62 = [v40 webpageURL];
    if (v62)
    {
      v63 = v62;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    v67 = *(v0 + 1904);
    v68 = *(v0 + 1896);
    v69 = type metadata accessor for URL();
    (*(*(v69 - 8) + 56))(v68, v64, 1, v69);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v68, v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v65 = *(v0 + 1904);
    v66 = type metadata accessor for URL();
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
  }

  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 1304);
  v71 = static Disclaimer.partnerName;
  *(v0 + 2120) = static Disclaimer.partnerName;
  LODWORD(v70) = *(v70 + 16);
  v39[1] = v70;
  v72 = MEMORY[0x277D0D648];
  if (v70 != 1)
  {

    v78 = *v72;
    goto LABEL_52;
  }

  v73 = *(v0 + 1872);
  v74 = *(v0 + 1840);
  type metadata accessor for GenerativeRequestMetadata(0);
  LODWORD(v208) = *v72;
  (*(v74 + 104))(v73);
  lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase, MEMORY[0x277D0D660], MEMORY[0x277D0D668]);

  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v75 = *(v0 + 1872);
  v76 = *(v0 + 1840);
  v77 = *(v0 + 1832);
  if (*(v0 + 1240) == *(v0 + 1256) && *(v0 + 1248) == *(v0 + 1264))
  {
    (*(v76 + 8))(*(v0 + 1872), *(v0 + 1832));

LABEL_71:
    v119 = MobileGestalt_get_current_device();
    if (v119)
    {
      v122 = v119;

      internalBuild = MobileGestalt_get_internalBuild();

      v124 = *(v0 + 1904);
      v125 = *(v0 + 1272);
      if (internalBuild)
      {
        v126 = 6;
      }

      else
      {
        v126 = 17;
      }

      LOBYTE(v216[0]) = v126;
      static GeneratedResponse.failureResponse(_:partnerName:)(v216, v71, *(&v71 + 1), v125);

      outlined destroy of OnScreenContent.Document?(v124, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v24 = *(v0 + 8);
LABEL_14:

      return v24();
    }

    __break(1u);
    return MEMORY[0x2822009F8](v119, v120, v118);
  }

  v121 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v76 + 8))(v75, v77);

  if (v121)
  {
    goto LABEL_71;
  }

  v1 = vcvts_n_f32_s64(v214, 0x14uLL) * 1024.0;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_119;
  }

  while (1)
  {
    v133 = static SELFUtils.shared;
    v222 = 0;
    v223 = 0;
    v224 = 0;
    v225 = 0;
    LOBYTE(v218) = 0;
    LOBYTE(v216[0]) = 0;
    swift_beginAccess();
    v133[4] = 2;
    *(v133 + 20) = 0;
    *(v133 + 3) = v1;
    *(v133 + 32) = 0;
    v133[9] = 3;
    *(v133 + 40) = 0;
    v133[11] = 1;
    *(v133 + 48) = 0;
    v133[13] = 2;
    *(v133 + 56) = 0;
    *(v133 + 8) = v1;
    *(v133 + 72) = 0;
    *(v133 + 73) = v222;
    v78 = v208;
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v209, static Logger.selfSchemaLogger);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&dword_24FD67000, v134, v135, "Successfully updated GAT MediaQA usecase: GATMEDIAQNAUSECASE_SCREENSHOT", v136, 2u);
      MEMORY[0x253057F40](v136, -1, -1);
    }

LABEL_52:
    *(v0 + 1100) = v78;
    v79 = *(v0 + 1864);
    v80 = *(v0 + 1840);
    v81 = *(v0 + 1832);
    v82 = type metadata accessor for GenerativeRequestMetadata(0);
    *(v0 + 2136) = v82;
    v215 = v82;
    *(v0 + 2384) = *(v82 + 32);
    v83 = *(v80 + 104);
    *(v0 + 2144) = v83;
    *(v0 + 2152) = (v80 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v83(v79, v78, v81);
    *(v0 + 2160) = lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase, MEMORY[0x277D0D660], MEMORY[0x277D0D668]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v84 = MEMORY[0x277D0D770];
    if ((*(v0 + 1176) != *(v0 + 1192) || *(v0 + 1184) != *(v0 + 1200)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v84 = MEMORY[0x277D0D778];
    }

    v85 = *(v0 + 1864);
    v86 = *(v0 + 1840);
    v87 = *(v0 + 1832);
    v88 = *(v0 + 1824);
    v89 = *(v0 + 1808);
    v208 = *(v0 + 1800);
    v209 = *(v0 + 1816);
    v90 = *(v0 + 1792);
    v91 = *(v0 + 1784);
    v92 = *(v0 + 1776);
    v93 = *(v0 + 1296);
    v94 = *(v86 + 8);
    *(v0 + 2168) = v94;
    *(v0 + 2176) = (v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v94(v85, v87);

    (*(v91 + 104))(v90, *v84, v92);
    *(v0 + 1099) = *(v93 + 40);
    v95 = (v93 + *(v215 + 52));
    *(v0 + 2184) = *v95;
    *(v0 + 2192) = v95[1];
    static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();
    (*(v91 + 8))(v90, v92);
    (*(v89 + 16))(v209, v88, v208);
    v96 = (*(v89 + 88))(v209, v208);
    if (v96 != *MEMORY[0x277D0D788])
    {
      break;
    }

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v216[0] = v100;
      *v99 = 136315394;
      *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v216);
      *(v99 + 12) = 2080;
      *(v99 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v216);
      _os_log_impl(&dword_24FD67000, v97, v98, "%s.%s Fallback to SiriX.", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v100, -1, -1);
      MEMORY[0x253057F40](v99, -1, -1);
    }

    v101 = *(v0 + 1528);
    v102 = *(v0 + 1520);
    *v101 = 0xD000000000000043;
    v101[1] = 0x800000024FE1FF90;
    (*(v102 + 104))();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v103 = GATError.errorCode.getter();
    if (v103 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v103 <= 0x7FFFFFFF)
    {
      v104 = *(v0 + 1904);
      v105 = *(v0 + 1824);
      v106 = *(v0 + 1808);
      v107 = *(v0 + 1800);
      v108 = *(v0 + 1528);
      v109 = *(v0 + 1520);
      v110 = *(v0 + 1512);
      SELFUtils.recordRequestFailed(code:domain:)(v103, 4);
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v109 + 32))(v111, v108, v110);
      swift_willThrow();

      (*(v106 + 8))(v105, v107);
      outlined destroy of OnScreenContent.Document?(v104, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_13;
    }

    __break(1u);
LABEL_119:
    swift_once();
  }

  if (v96 == *MEMORY[0x277D0D798])
  {
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *&v216[0] = v115;
      *v114 = 136315394;
      *(v114 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v216);
      *(v114 + 12) = 2080;
      *(v114 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v216);
      _os_log_impl(&dword_24FD67000, v112, v113, "%s.%s Request confirmation", v114, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v115, -1, -1);
      MEMORY[0x253057F40](v114, -1, -1);
    }

    specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
    outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 696);
    *(v0 + 2200) = static MainActor.shared.getter();
    v116 = dispatch thunk of Actor.unownedExecutor.getter();
    v118 = v117;
    *(v0 + 2208) = v116;
    *(v0 + 2216) = v117;
    v119 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
    v120 = v116;

    return MEMORY[0x2822009F8](v119, v120, v118);
  }

  if (v96 == *MEMORY[0x277D0D790])
  {
    *(v0 + 2256) = static MainActor.shared.getter();
    v127 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v127;
    *(v0 + 552) = *(v0 + 144);
    v128 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v128;
    v129 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v129;
    v130 = *(v0 + 32);
    *(v0 + 424) = *(v0 + 16);
    *(v0 + 440) = v130;
    v131 = swift_task_alloc();
    *(v0 + 2264) = v131;
    *v131 = v0;
    v131[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
    v132 = *(v0 + 1296);

    return GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:)(v0 + 424, 1, v132);
  }

  else
  {
    v137 = *MEMORY[0x277D0D780];
    v138 = v96;
    v139 = Logger.logObject.getter();
    if (v138 == v137)
    {
      v140 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *&v216[0] = v142;
        *v141 = 136315394;
        *(v141 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v216);
        *(v141 + 12) = 2080;
        *(v141 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v216);
        _os_log_impl(&dword_24FD67000, v139, v140, "%s.%s Skipping confirmation: user previously confirmed media upload or denied screenshot upload in this session", v141, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v142, -1, -1);
        MEMORY[0x253057F40](v141, -1, -1);
      }
    }

    else
    {
      v143 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v139, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v216[0] = v145;
        *v144 = 136315394;
        *(v144 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v216);
        *(v144 + 12) = 2080;
        *(v144 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v216);
        _os_log_impl(&dword_24FD67000, v139, v143, "%s.%s Unkown Default when checking for confirmation vs enablement vs SiriX", v144, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v145, -1, -1);
        MEMORY[0x253057F40](v144, -1, -1);
      }

      (*(*(v0 + 1808) + 8))(*(v0 + 1816), *(v0 + 1800));
    }

    v147 = *(v0 + 120);
    v146 = *(v0 + 128);
    *(v0 + 2336) = v147;
    *(v0 + 2344) = v146;
    v148 = *(v0 + 128);
    v216[6] = *(v0 + 112);
    v216[7] = v148;
    v217 = *(v0 + 144);
    v149 = *(v0 + 64);
    v216[2] = *(v0 + 48);
    v216[3] = v149;
    v150 = *(v0 + 96);
    v216[4] = *(v0 + 80);
    v216[5] = v150;
    v151 = *(v0 + 32);
    v216[0] = *(v0 + 16);
    v216[1] = v151;
    v218 = v147;
    v219 = v146;
    v220 = 0;
    v221 = 1;
    swift_bridgeObjectRetain_n();
    IntentCallbackManager.updateIntentProgress(to:)(&v218);
    outlined consume of GenerativeAssistantProgressLevel(v218, v219, v220, v221);

    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = *(v0 + 1288);
      v155 = *(v0 + 1280);
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      *&v216[0] = v157;
      *v156 = 136315650;
      *(v156 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v216);
      *(v156 + 12) = 2080;
      *(v156 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v216);
      *(v156 + 22) = 2080;
      *(v156 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v154, v216);
      _os_log_impl(&dword_24FD67000, v152, v153, "%s.%s [userQuery = %s]", v156, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v157, -1, -1);
      MEMORY[0x253057F40](v156, -1, -1);
    }

    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    static SessionPersistenceUtils.clearStoredValuesForSession()();
    if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v158 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
      swift_beginAccess();
      v159 = *v158;
      v160 = v158[4];
      *v158 = 4;
      v158[4] = 0;
      if ((v160 & 1) == 0 && v159 == 6)
      {
        *v158 = 6;
      }

      v161 = *(v0 + 1464);
      v162 = type metadata accessor for UploadableMedia(0);
      (*(*(v162 - 8) + 56))(v161, 1, 1, v162);
      v163 = *(v0 + 128);
      *(v0 + 384) = *(v0 + 112);
      *(v0 + 400) = v163;
      *(v0 + 416) = *(v0 + 144);
      v164 = *(v0 + 64);
      *(v0 + 320) = *(v0 + 48);
      *(v0 + 336) = v164;
      v165 = *(v0 + 96);
      *(v0 + 352) = *(v0 + 80);
      *(v0 + 368) = v165;
      v166 = *(v0 + 32);
      *(v0 + 288) = *(v0 + 16);
      *(v0 + 304) = v166;
      v167 = swift_task_alloc();
      *(v0 + 2352) = v167;
      *v167 = v0;
      v167[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
      v168 = *(v0 + 1496);
      v169 = *(v0 + 1464);
      v170 = *(v0 + 1296);
      v171 = *(v0 + 1288);
      v172 = *(v0 + 1280);
      v228 = 0;
      v173 = v0 + 288;
      v174 = 0;
    }

    else
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v175 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
      swift_beginAccess();
      v176 = *v175;
      v177 = v175[4];
      *v175 = 1;
      v175[4] = 0;
      if ((v177 & 1) == 0 && v176 == 6)
      {
        *v175 = 6;
      }

      if (*(v0 + 1097) == 1)
      {
        outlined init with copy of Date?(*(v0 + 1904), *(v0 + 1432), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v178 = *(v0 + 2064);
        v179 = *(v0 + 2000);
        v180 = *(v0 + 1984);
        v181 = *(v0 + 1416);

        v182 = IntelligenceFile.name.getter();
        v184 = v183;
        IntelligenceFile.attributes.getter();
        IntelligenceFile.Attributes.contentType.getter();
        v178(v179, v180);
        v185 = type metadata accessor for UTType();
        v186 = *(v185 - 8);
        v187 = (*(v186 + 48))(v181, 1, v185);
        v188 = *(v0 + 1416);
        if (v187 == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 1416), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v189 = 0;
          v190 = 0;
        }

        else
        {
          v189 = UTType.preferredMIMEType.getter();
          v190 = v191;
          (*(v186 + 8))(v188, v185);
        }

        v192 = *(v0 + 1432);
        *v192 = v182;
        v192[1] = v184;
        v192[2] = v189;
        v192[3] = v190;
        swift_storeEnumTagMultiPayload();
      }

      v193 = *(v0 + 1456);
      v194 = *(v0 + 1448);
      v195 = *(v0 + 1440);
      v196 = *(v0 + 1432);
      v197 = *(v0 + 1304);
      v198 = vcvts_n_f32_s64(*(v0 + 2080), 0x14uLL);
      v199 = *(v0 + 2088);
      *v194 = *(v0 + 2048);
      *(v194 + 8) = v199;
      *(v194 + 24) = 0;
      *(v194 + 28) = v198;
      *(v194 + 32) = 0;
      outlined init with take of SelectedContent(v196, v194 + *(v195 + 28), type metadata accessor for UploadableMedia.Source);
      outlined init with copy of ScreenContent(v194, v193, type metadata accessor for UploadableImageData);
      v200 = type metadata accessor for UploadableMedia(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v200 - 8) + 56))(v193, 0, 1, v200);
      v201 = *(v0 + 96);
      *(v0 + 216) = *(v0 + 80);
      v202 = *(v0 + 48);
      *(v0 + 200) = *(v0 + 64);
      *(v0 + 184) = v202;
      v203 = *(v0 + 16);
      *(v0 + 168) = *(v0 + 32);
      v204 = *(v0 + 112);
      *(v0 + 264) = *(v0 + 128);
      *(v0 + 248) = v204;
      *(v0 + 232) = v201;
      *(v0 + 280) = *(v0 + 144);
      *(v0 + 152) = v203;
      v206 = *(v197 + 24);
      v205 = *(v197 + 32);
      v207 = swift_task_alloc();
      *(v0 + 2368) = v207;
      *v207 = v0;
      v207[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
      v168 = *(v0 + 1488);
      v169 = *(v0 + 1456);
      v170 = *(v0 + 1296);
      v171 = *(v0 + 1288);
      v172 = *(v0 + 1280);
      v228 = v205;
      v173 = v0 + 152;
      v174 = v206;
    }

    return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v168, v172, v171, v170, v169, v173, 0, v174);
  }
}

{
  v29 = v0;
  v1 = *(v0 + 1099);
  v2 = *(v0 + 1098);
  v3 = static Disclaimer.partnerName;

  GenerateTextFromMediaController.getImageConfirmationText(partnerName:isExplicit:isScreenshot:)(v3, v1, v2);
  GenerateTextFromMediaController.getImageConfirmationSpokenDialog(partnerName:isExplicit:isScreenshot:)(v3._countAndFlagsBits, v3._object, v1, v2);
  *(v0 + 2224) = IntelligenceFile.snippetPreviewFile()();
  v4 = *(v0 + 1098);
  v5 = *(v0 + 1736);
  v6 = *(v0 + 1720);
  v7 = *(v0 + 1712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
  type metadata accessor for Attachment();
  *(swift_allocObject() + 16) = xmmword_24FE1A560;
  v8 = MEMORY[0x277D0D858];
  if (!v4)
  {
    v8 = MEMORY[0x277D0D860];
  }

  (*(v6 + 104))(v5, *v8, v7);
  UIImage.getPlatformData()();

  Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 1904);
  v20 = *(v0 + 1888);
  v9 = *(v0 + 1672);
  v10 = *(v0 + 1664);
  v19 = *(v0 + 1656);
  v11 = *(v0 + 1648);
  v22 = *(v0 + 1640);
  v23 = *(v0 + 1704);
  v24 = *(v0 + 1632);
  v25 = *(v0 + 1624);
  *(v0 + 2232) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v27 = 40;
  v12 = MEMORY[0x277D84F90];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v27, v3, v13);

  v28 = 39;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v12);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v28, v3, v14);

  IntelligenceFile.name.getter();
  (*(v10 + 104))(v9, *MEMORY[0x277D0D6A0], v19);
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  outlined init with copy of Date?(v21, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)();
  type metadata accessor for SnippetPluginUtils();
  static SnippetPluginUtils.createConfirmationContainer(payload:)(v23);
  *(v0 + 1048) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  *(v0 + 1056) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1024));
  static IntentResult.result<>(pluginContainer:dialog:)();
  (*(v24 + 8))(v22, v25);
  static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()();
  v26 = (*(v0 + 56) + **(v0 + 56));
  v16 = swift_task_alloc();
  *(v0 + 2240) = v16;
  *v16 = v0;
  v16[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  v17 = *(v0 + 1616);

  return v26(v0 + 1024, v17, 0);
}

{
  *(*v1 + 2248) = v0;

  if (v0)
  {
    v2 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v2 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[200] + 8))(v0[202], v0[199]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 128);
  v1 = v0[277];
  v2 = v0[276];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v33 = v0;
  v1 = *(v0 + 1584);

  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("WaitUserConfirmToContinue.Time", 30, 2u, v1);
  outlined destroy of OnScreenContent.Document?(v1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v32);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000084, 0x800000024FE1FFE0, &v32);
    _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s User confirmed", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if ((MEMORY[0x253056490]() & 1) == 0)
  {
    static GenerativeAssistantSettingsUserDefaults.logConfirmationCount()();
  }

  if (*(v0 + 2192))
  {
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
    {
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else if (*(v0 + 1098) != 1)
    {
      static SessionPersistenceUtils.setConfirmation(forMediaSession:)();
    }

    v18 = *(v0 + 1768);
    v19 = *(v0 + 1752);
    v20 = *(v0 + 1744);
    v21 = *(v0 + 1704);
    v22 = *(v0 + 1688);
    v23 = *(v0 + 1680);
    v24 = *(v0 + 1576);
    v25 = *(v0 + 1552);
    v26 = *(v0 + 1544);

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1768);
    v11 = *(v0 + 1752);
    v12 = *(v0 + 1744);
    v13 = *(v0 + 1704);
    v14 = *(v0 + 1688);
    v15 = *(v0 + 1680);
    if (v9)
    {
      v31 = *(v0 + 1768);
      v16 = swift_slowAlloc();
      v30 = v12;
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v32);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000084, 0x800000024FE1FFE0, &v32);
      _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s Attempting to save the current sessionID but found nil", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v17, -1, -1);
      MEMORY[0x253057F40](v16, -1, -1);

      (*(v14 + 8))(v13, v15);
      (*(v11 + 8))(v31, v30);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      (*(v11 + 8))(v10, v12);
    }
  }

  outlined destroy of IntentCallbackManager(v0 + 16);
  v27 = *(v0 + 2040);
  v28 = *(v0 + 2032);

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v28, v27);
}

{
  (*(v0[200] + 8))(v0[202], v0[199]);
  v1 = v0[277];
  v2 = v0[276];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v1 = v0[221];
  v2 = v0[219];
  v3 = v0[218];
  v4 = v0[213];
  v5 = v0[211];
  v6 = v0[210];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 128);
  v7 = v0[255];
  v8 = v0[254];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v8, v7);
}

{
  v18 = v0;

  outlined destroy of IntentCallbackManager((v0 + 2));
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  SELFUtils.recordRequestCanceled()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17[0] = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v17);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v17);
    _os_log_impl(&dword_24FD67000, v1, v2, "%s.%s User cancelled", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v4, -1, -1);
    MEMORY[0x253057F40](v3, -1, -1);
  }

  v5 = v0[281];
  v6 = v0[266];
  v7 = v0[265];
  v8 = v0[263];
  v9 = v0[238];
  v10 = v0[228];
  v11 = v0[226];
  v12 = v0[225];
  v13 = v0[159];
  v16 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v16, v7, v6, v13);

  (*(v11 + 8))(v10, v12);
  outlined destroy of OnScreenContent.Document?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v14 = v0[1];

  return v14();
}

{
  *(*v1 + 2272) = v0;

  if (v0)
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v5, v2, v4);
}

{
  v1 = v0[192];
  v2 = v0[175];
  v3 = v0[174];

  (*(v2 + 56))(v1, 1, 1, v3);
  v4 = v0[255];
  v5 = v0[254];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v5, v4);
}

{
  v17 = v0;
  v1 = v0[192];
  if ((*(v0[175] + 48))(v1, 1, v0[174]) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v16[0] = v5;
      *v4 = 136315394;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v16);
      *(v4 + 12) = 2080;
      *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v16);
      _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Request confirmation", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v5, -1, -1);
      MEMORY[0x253057F40](v4, -1, -1);
    }

    specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
    outlined init with copy of IntentCallbackManager((v0 + 2), (v0 + 70));
    v0[285] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[286] = v7;
    v0[287] = v6;

    return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v7, v6);
  }

  else
  {
    v8 = v0[263];
    v9 = v0[238];
    v10 = v0[228];
    v11 = v0[226];
    v12 = v0[225];
    v13 = v0[159];

    (*(v11 + 8))(v10, v12);
    outlined destroy of OnScreenContent.Document?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with take of SelectedContent(v1, v13, type metadata accessor for GeneratedResponse);

    v14 = v0[1];

    return v14();
  }
}

{

  v1 = *(v0 + 2040);
  v2 = *(v0 + 2032);

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v1 = v0[263];
  v2 = v0[238];
  v3 = v0[228];
  v4 = v0[226];
  v5 = v0[225];

  (*(v4 + 8))(v3, v5);
  outlined destroy of OnScreenContent.Document?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v32 = v0;
  v1 = *(v0 + 2272);
  v2 = *(v0 + 1099);
  v3 = *(v0 + 1098);
  v4 = static Disclaimer.partnerName;

  GenerateTextFromMediaController.getImageConfirmationText(partnerName:isExplicit:isScreenshot:)(v4, v2, v3);
  GenerateTextFromMediaController.getImageConfirmationSpokenDialog(partnerName:isExplicit:isScreenshot:)(v4._countAndFlagsBits, v4._object, v2, v3);
  v5 = IntelligenceFile.snippetPreviewFile()();
  if (v1)
  {

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  *(v0 + 2304) = v6;
  v7 = *(v0 + 1098);
  v8 = *(v0 + 1728);
  v9 = *(v0 + 1720);
  v10 = *(v0 + 1712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
  type metadata accessor for Attachment();
  *(swift_allocObject() + 16) = xmmword_24FE1A560;
  v11 = MEMORY[0x277D0D858];
  if (!v7)
  {
    v11 = MEMORY[0x277D0D860];
  }

  (*(v9 + 104))(v8, *v11, v10);
  UIImage.getPlatformData()();

  Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 1904);
  v23 = *(v0 + 1888);
  v12 = *(v0 + 1672);
  v13 = *(v0 + 1664);
  v22 = *(v0 + 1656);
  v14 = *(v0 + 1648);
  v25 = *(v0 + 1640);
  v26 = *(v0 + 1696);
  v27 = *(v0 + 1632);
  v28 = *(v0 + 1624);
  *(v0 + 2312) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v30 = 40;
  v15 = MEMORY[0x277D84F90];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v30, v4, v16);

  v31 = 39;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v15);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v31, v4, v17);

  IntelligenceFile.name.getter();
  (*(v13 + 104))(v12, *MEMORY[0x277D0D6A0], v22);
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  outlined init with copy of Date?(v24, v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)();
  type metadata accessor for SnippetPluginUtils();
  static SnippetPluginUtils.createConfirmationContainer(payload:)(v26);
  *(v0 + 1008) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  *(v0 + 1016) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 984));
  static IntentResult.result<>(pluginContainer:dialog:)();
  (*(v27 + 8))(v25, v28);
  static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()();
  v29 = (*(v0 + 56) + **(v0 + 56));
  v19 = swift_task_alloc();
  *(v0 + 2320) = v19;
  *v19 = v0;
  v19[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  v20 = *(v0 + 1608);

  return v29(v0 + 984, v20, 0);
}

{
  *(*v1 + 2328) = v0;

  if (v0)
  {
    v2 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v2 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[200] + 8))(v0[201], v0[199]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 123);
  v1 = v0[287];
  v2 = v0[286];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v33 = v0;
  v1 = *(v0 + 1584);

  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("WaitUserConfirmToContinue.Time", 30, 2u, v1);
  outlined destroy of OnScreenContent.Document?(v1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v32);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000084, 0x800000024FE1FFE0, &v32);
    _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s User confirmed", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if ((MEMORY[0x253056490]() & 1) == 0)
  {
    static GenerativeAssistantSettingsUserDefaults.logConfirmationCount()();
  }

  if (*(v0 + 2192))
  {
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
    {
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else if (*(v0 + 1098) != 1)
    {
      static SessionPersistenceUtils.setConfirmation(forMediaSession:)();
    }

    v18 = *(v0 + 1760);
    v19 = *(v0 + 1752);
    v20 = *(v0 + 1744);
    v21 = *(v0 + 1696);
    v22 = *(v0 + 1688);
    v23 = *(v0 + 1680);
    v24 = *(v0 + 1568);
    v25 = *(v0 + 1552);
    v26 = *(v0 + 1544);

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1760);
    v11 = *(v0 + 1752);
    v12 = *(v0 + 1744);
    v13 = *(v0 + 1696);
    v14 = *(v0 + 1688);
    v15 = *(v0 + 1680);
    if (v9)
    {
      v31 = *(v0 + 1760);
      v16 = swift_slowAlloc();
      v30 = v12;
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v32);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000084, 0x800000024FE1FFE0, &v32);
      _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s Attempting to save the current sessionID but found nil", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v17, -1, -1);
      MEMORY[0x253057F40](v16, -1, -1);

      (*(v14 + 8))(v13, v15);
      (*(v11 + 8))(v31, v30);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      (*(v11 + 8))(v10, v12);
    }
  }

  outlined destroy of IntentCallbackManager(v0 + 16);
  v27 = *(v0 + 2040);
  v28 = *(v0 + 2032);

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v28, v27);
}

{
  (*(v0[200] + 8))(v0[201], v0[199]);
  v1 = v0[287];
  v2 = v0[286];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v1 = v0[220];
  v2 = v0[219];
  v3 = v0[218];
  v4 = v0[212];
  v5 = v0[211];
  v6 = v0[210];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 123);
  v7 = v0[255];
  v8 = v0[254];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v8, v7);
}

{
  v18 = v0;

  outlined destroy of IntentCallbackManager((v0 + 2));
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  SELFUtils.recordRequestCanceled()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17[0] = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v17);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v17);
    _os_log_impl(&dword_24FD67000, v1, v2, "%s.%s User cancelled", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v4, -1, -1);
    MEMORY[0x253057F40](v3, -1, -1);
  }

  v5 = v0[291];
  v6 = v0[266];
  v7 = v0[265];
  v8 = v0[263];
  v9 = v0[238];
  v10 = v0[228];
  v11 = v0[226];
  v12 = v0[225];
  v13 = v0[159];
  v16 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v16, v7, v6, v13);

  (*(v11 + 8))(v10, v12);
  outlined destroy of OnScreenContent.Document?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v14 = v0[1];

  return v14();
}

{
  v2 = *v1;
  (*v1)[295] = v0;

  if (v0)
  {
    v3 = v2[183];

    outlined destroy of OnScreenContent.Document?(v3, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[255];
    v5 = v2[254];
    v6 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[183], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[255];
    v5 = v2[254];
    v6 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v124 = v0;
  v1 = *(v0 + 1504);
  v2 = *(v0 + 1496);

  outlined init with take of SelectedContent(v2, v1, type metadata accessor for ModelResponse);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v118[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v118);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v118);
    _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s Generative response complete", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
  }

  v7 = *(v0 + 2344);
  v8 = *(v0 + 2336);
  v99 = *(v0 + 2384);
  v9 = *(v0 + 2128);
  partnerName = *(v0 + 2120);
  partnerName_8 = *(v0 + 1880);
  v10 = *(v0 + 1848);
  v11 = *(v0 + 1840);
  v94 = *(v0 + 1832);
  v96 = v10;
  v12 = *(v0 + 1504);
  v13 = *(v0 + 1480);
  v14 = *(v0 + 1472);
  v103 = *(v0 + 2136);
  v107 = *(v0 + 1408);
  v15 = *(v0 + 1392);
  v16 = *(v0 + 1296);
  v17 = *(v0 + 128);
  v118[6] = *(v0 + 112);
  v118[7] = v17;
  v119 = *(v0 + 144);
  v18 = *(v0 + 64);
  v118[2] = *(v0 + 48);
  v118[3] = v18;
  v19 = *(v0 + 96);
  v118[4] = *(v0 + 80);
  v118[5] = v19;
  v20 = *(v0 + 32);
  v118[0] = *(v0 + 16);
  v118[1] = v20;
  v120 = v8;
  v121 = v7;
  v122 = 0;
  v123 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v120);
  outlined consume of GenerativeAssistantProgressLevel(v120, v121, v122, v123);
  outlined init with copy of ScreenContent(v12, v13, type metadata accessor for ModelResponse);
  v98 = *(v16 + 41);
  (*(v11 + 16))(v10, v16 + v99, v94);
  LODWORD(v10) = *(v16 + *(v103 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v118[0]) = 44;

  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v22.value._countAndFlagsBits = partnerName;
  v22.value._object = v9;
  v23 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v118, v22, v21);

  *(v0 + 832) = xmmword_24FE1ADF0;
  *(v0 + 848) = 5;
  *(v0 + 856) = v23;
  *(v0 + 872) = partnerName;
  v102 = v9;
  *(v0 + 880) = v9;
  outlined init with copy of DialogConfig(v0 + 832, v0 + 888);

  LOBYTE(v118[0]) = v98;
  v100 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v118, v96, v0 + 832, v10);
  outlined destroy of DialogConfig(v0 + 832);
  v24 = (v13 + v14[14]);
  v89 = *v24;
  v85 = v24[1];
  v86 = v13[4];
  v25 = *v13;
  v26 = MEMORY[0x277D84F90];
  if (*(v13 + v14[9]))
  {
    v26 = *(v13 + v14[9]);
  }

  v90 = v26;
  outlined init with copy of Date?(v13 + v14[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v97 = v13[1];
  v93 = *(v13 + v14[10]);
  v95 = *(v13 + v14[11]);
  v27 = (v13 + v14[12]);
  v28 = *v27;
  v29 = v27[1];
  v30 = (v13 + v14[13]);
  v91 = v28;
  v92 = *v30;
  v87 = v13[2];
  v88 = v30[1];
  *(v0 + 968) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 976) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 944));

  v31 = v25;

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v32 = (v107 + v15[14]);
  swift_initStaticObject();
  LOBYTE(v118[0]) = 49;
  v33 = MEMORY[0x277D84F90];
  v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v35 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v118, 0, v34);

  *v32 = v35;
  v36 = v31;
  *v107 = v89;
  *(v107 + 8) = v85;
  *(v107 + 16) = v31;
  *(v107 + 24) = v100;
  *(v107 + 32) = 64;
  *(v107 + 40) = v86;
  *(v107 + 48) = v33;
  *(v107 + v15[15]) = v90;
  *(v107 + v15[12]) = 0;
  v37 = (v107 + v15[13]);
  *v37 = partnerName;
  v37[1] = v102;
  outlined init with copy of Date?(partnerName_8, v107 + v15[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v38 = (v107 + v15[11]);
  *v38 = v97;
  v38[1] = v87;
  *(v107 + v15[16]) = v93;
  *(v107 + v15[17]) = v95;
  v39 = (v107 + v15[18]);
  *v39 = v91;
  v39[1] = v29;
  v40 = (v107 + v15[19]);
  *v40 = v92;
  v40[1] = v88;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 944, v107 + v15[21]);
  *(v107 + v15[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_20:
    v66 = *(v0 + 2168);
    v67 = *(v0 + 1880);
    v68 = *(v0 + 1848);
    v69 = *(v0 + 1832);
    v70 = *(v0 + 1808);
    partnerNameb = *(v0 + 1800);
    partnerName_8b = *(v0 + 1824);
    v71 = *(v0 + 1552);
    v105 = *(v0 + 1544);
    v108 = *(v0 + 1560);
    v72 = *(v0 + 1504);
    v73 = *(v0 + 1480);

    outlined destroy of OnScreenContent.Document?(v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v66(v68, v69);
    outlined destroy of DocumentInfo(v73, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v72, type metadata accessor for ModelResponse);
    (*(v71 + 8))(v108, v105);
    (*(v70 + 8))(partnerName_8b, partnerNameb);
LABEL_22:
    v82 = *(v0 + 1408);
    v83 = *(v0 + 1272);
    outlined destroy of OnScreenContent.Document?(*(v0 + 1904), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of ScreenContent(v82, v83, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 944));
    outlined destroy of DocumentInfo(v82, type metadata accessor for GeneratedResponse);

    v84 = *(v0 + 8);

    return v84();
  }

  v41 = *(v0 + 1408);
  v42 = *(v0 + 1360);
  v43 = *(v0 + 1352);
  v104 = *(v0 + 1336);
  partnerName_8a = *(v0 + 1328);
  v44._countAndFlagsBits = v89;
  v44._object = v85;
  v45 = GeneratedResponse.updateText(_:)(v44);

  *v41 = v45._countAndFlagsBits;
  *(v107 + 8) = v45._object;
  v46 = v31[2];
  v47 = (v42 + 56);
  v48 = (v42 + 48);

  v50 = 0;
  partnerNamea = v36;
  while (v50 == v46)
  {
    v51 = 1;
    v50 = v46;
LABEL_11:
    v56 = *(v0 + 1384);
    v57 = *(v0 + 1376);
    v58 = *(v0 + 1352);
    (*v47)(v57, v51, 1, v58);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v57, v56, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v48)(v56, 1, v58) == 1)
    {
      v101 = *(v0 + 2168);
      v74 = *(v0 + 2104);
      v75 = *(v0 + 1880);
      v76 = *(v0 + 1848);
      v77 = *(v0 + 1832);
      v78 = *(v0 + 1808);
      partnerNamec = *(v0 + 1800);
      partnerName_8c = *(v0 + 1824);
      v79 = *(v0 + 1552);
      v106 = *(v0 + 1544);
      v109 = *(v0 + 1560);
      v80 = *(v0 + 1504);
      v81 = *(v0 + 1480);

      outlined destroy of OnScreenContent.Document?(v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v101(v76, v77);
      outlined destroy of DocumentInfo(v81, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v80, type metadata accessor for ModelResponse);
      (*(v79 + 8))(v109, v106);
      (*(v78 + 8))(partnerName_8c, partnerNamec);
      goto LABEL_22;
    }

    v59 = *(v0 + 1384);
    v60 = *v59;
    outlined init with take of SelectedContent(v59 + *(v43 + 48), *(v0 + 1344), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v62 = *(v0 + 1344);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v62, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v63 = *(v0 + 1336);
      outlined destroy of DocumentInfo(v62, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v63 = v45._countAndFlagsBits;
      *(v104 + 8) = v45._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v64 = partnerNamea;
        if ((v60 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v64 = result;
        if ((v60 & 0x8000000000000000) != 0)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      if (v60 >= *(v64 + 16))
      {
        goto LABEL_26;
      }

      v65 = v64;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1336), v64 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v60);
      partnerNamea = v65;
      *(v107 + 16) = v65;
    }
  }

  if (v50 < v36[2])
  {
    v52 = *(v0 + 1376);
    v53 = *(v0 + 1368);
    v54 = v36 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v50;
    v55 = *(v43 + 48);
    *v53 = v50;
    outlined init with copy of ScreenContent(v54, v53 + v55, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v53, v52, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v51 = 0;
    ++v50;
    goto LABEL_11;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v2 = *v1;
  (*v1)[297] = v0;

  if (v0)
  {
    v3 = v2[182];

    outlined destroy of OnScreenContent.Document?(v3, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[255];
    v5 = v2[254];
    v6 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[182], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[255];
    v5 = v2[254];
    v6 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v148 = v0;
  v1 = *(v0 + 2144);
  v2 = *(v0 + 1100);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1832);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 1488);

  outlined init with take of SelectedContent(v6, v5, type metadata accessor for ModelResponse);
  v1(v3, v2, v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v0 + 2168);
  v8 = *(v0 + 1856);
  v9 = *(v0 + 1832);
  if (*(v0 + 1208) == *(v0 + 1224) && *(v0 + 1216) == *(v0 + 1232))
  {
    v7(*(v0 + 1856), *(v0 + 1832));

LABEL_5:
    v11 = *(v0 + 2376);
    v12 = IntelligenceFile.data.getter();
    if (v11)
    {
      v14 = *(v0 + 2104);
      partnerNameb = *(v0 + 1824);
      partnerName_8b = *(v0 + 1904);
      v15 = *(v0 + 1808);
      v16 = *(v0 + 1800);
      v17 = *(v0 + 1560);
      v18 = *(v0 + 1552);
      v19 = *(v0 + 1544);
      v20 = *(v0 + 1504);
      v21 = *(v0 + 1448);

      outlined destroy of DocumentInfo(v21, type metadata accessor for UploadableImageData);
      outlined destroy of DocumentInfo(v20, type metadata accessor for ModelResponse);
      (*(v18 + 8))(v17, v19);
      (*(v15 + 8))(partnerNameb, v16);
      outlined destroy of OnScreenContent.Document?(partnerName_8b, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v22 = *(v0 + 8);
LABEL_32:

      return v22();
    }

    v23 = v12;
    v24 = v13;
    if (*(v0 + 2192))
    {
      outlined copy of Data._Representation(v12, v13);
      static SessionPersistenceUtils.setVisualIntelligenceImageData(_:forSession:)();
      outlined consume of Data._Representation(v23, v24);
    }

    goto LABEL_10;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7(v8, v9);

  if (v10)
  {
    goto LABEL_5;
  }

  v23 = 0;
  v24 = 0xF000000000000000;
LABEL_10:
  outlined destroy of DocumentInfo(*(v0 + 1448), type metadata accessor for UploadableImageData);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v123 = v24;
  v125 = v23;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v142[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v142);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v142);
    _os_log_impl(&dword_24FD67000, v25, v26, "%s.%s Generative response complete", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v28, -1, -1);
    MEMORY[0x253057F40](v27, -1, -1);
  }

  v29 = *(v0 + 2344);
  v30 = *(v0 + 2336);
  v120 = *(v0 + 2384);
  v122 = *(v0 + 2136);
  v31 = *(v0 + 2128);
  partnerName = *(v0 + 2120);
  partnerName_8 = *(v0 + 1880);
  v32 = *(v0 + 1848);
  v33 = *(v0 + 1840);
  v115 = *(v0 + 1832);
  v117 = v32;
  v34 = *(v0 + 1504);
  v35 = *(v0 + 1480);
  v36 = *(v0 + 1472);
  v129 = *(v0 + 1408);
  v37 = *(v0 + 1392);
  v38 = *(v0 + 1296);
  v39 = *(v0 + 128);
  v142[6] = *(v0 + 112);
  v142[7] = v39;
  v143 = *(v0 + 144);
  v144 = v30;
  v40 = *(v0 + 64);
  v142[2] = *(v0 + 48);
  v142[3] = v40;
  v41 = *(v0 + 96);
  v142[4] = *(v0 + 80);
  v142[5] = v41;
  v42 = *(v0 + 32);
  v142[0] = *(v0 + 16);
  v142[1] = v42;
  v145 = v29;
  v146 = 0;
  v147 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v144);
  outlined consume of GenerativeAssistantProgressLevel(v144, v145, v146, v147);
  outlined init with copy of ScreenContent(v34, v35, type metadata accessor for ModelResponse);
  v119 = *(v38 + 41);
  (*(v33 + 16))(v32, v38 + v120, v115);
  LODWORD(v32) = *(v38 + *(v122 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v142[0]) = 44;

  v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v44.value._countAndFlagsBits = partnerName;
  v44.value._object = v31;
  v45 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v142, v44, v43);

  *(v0 + 832) = xmmword_24FE1ADF0;
  *(v0 + 848) = 5;
  *(v0 + 856) = v45;
  *(v0 + 872) = partnerName;
  *(v0 + 880) = v31;
  outlined init with copy of DialogConfig(v0 + 832, v0 + 888);

  LOBYTE(v142[0]) = v119;
  v121 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v142, v117, v0 + 832, v32);
  outlined destroy of DialogConfig(v0 + 832);
  v106 = v35[4];
  v46 = (v35 + v36[14]);
  v47 = v46[1];
  v111 = *v46;
  v48 = *v35;
  v49 = MEMORY[0x277D84F90];
  if (*(v35 + v36[9]))
  {
    v49 = *(v35 + v36[9]);
  }

  v110 = v49;
  outlined init with copy of Date?(v35 + v36[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v118 = v35[1];
  v114 = *(v35 + v36[10]);
  v116 = *(v35 + v36[11]);
  v50 = (v35 + v36[12]);
  v51 = *v50;
  v107 = v35[2];
  v108 = v50[1];
  v52 = (v35 + v36[13]);
  v112 = v51;
  v113 = *v52;
  v109 = v52[1];
  *(v0 + 968) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 976) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 944));

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v53 = (v129 + v37[14]);
  swift_initStaticObject();
  LOBYTE(v142[0]) = 49;
  v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v55 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v142, 0, v54);

  *v53 = v55;
  *v129 = v111;
  *(v129 + 8) = v47;
  *(v129 + 16) = v48;
  *(v129 + 24) = v121;
  *(v129 + 32) = 64;
  *(v129 + 40) = v106;
  *(v129 + 48) = MEMORY[0x277D84F90];
  *(v129 + v37[15]) = v110;
  *(v129 + v37[12]) = 0;
  v56 = (v129 + v37[13]);
  *v56 = partnerName;
  v56[1] = v31;
  outlined init with copy of Date?(partnerName_8, v129 + v37[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v57 = (v129 + v37[11]);
  *v57 = v118;
  v57[1] = v107;
  *(v129 + v37[16]) = v114;
  *(v129 + v37[17]) = v116;
  v58 = (v129 + v37[18]);
  *v58 = v112;
  v58[1] = v108;
  v59 = (v129 + v37[19]);
  *v59 = v113;
  v59[1] = v109;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 944, v129 + v37[21]);
  v60 = (v129 + v37[20]);
  *v60 = v125;
  v60[1] = v123;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_29:
    v88 = *(v0 + 2168);
    v89 = *(v0 + 1880);
    v90 = *(v0 + 1848);
    v91 = *(v0 + 1832);
    v92 = *(v0 + 1808);
    partnerNamec = *(v0 + 1800);
    partnerName_8c = *(v0 + 1824);
    v93 = *(v0 + 1552);
    v127 = *(v0 + 1544);
    v130 = *(v0 + 1560);
    v94 = *(v0 + 1504);
    v95 = *(v0 + 1480);

    outlined destroy of OnScreenContent.Document?(v89, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v88(v90, v91);
    outlined destroy of DocumentInfo(v95, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v94, type metadata accessor for ModelResponse);
    (*(v93 + 8))(v130, v127);
    (*(v92 + 8))(partnerName_8c, partnerNamec);
LABEL_31:
    v104 = *(v0 + 1408);
    v105 = *(v0 + 1272);
    outlined destroy of OnScreenContent.Document?(*(v0 + 1904), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of ScreenContent(v104, v105, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 944));
    outlined destroy of DocumentInfo(v104, type metadata accessor for GeneratedResponse);

    v22 = *(v0 + 8);
    goto LABEL_32;
  }

  v61 = *(v0 + 1408);
  v62 = *(v0 + 1360);
  v63 = *(v0 + 1352);
  v126 = *(v0 + 1336);
  partnerName_8a = *(v0 + 1328);
  v64._countAndFlagsBits = v111;
  v64._object = v47;
  v65 = GeneratedResponse.updateText(_:)(v64);

  *v61 = v65._countAndFlagsBits;
  *(v129 + 8) = v65._object;
  v66 = *(v48 + 16);
  v67 = (v62 + 56);
  v68 = (v62 + 48);

  v70 = 0;
  partnerNamea = result;
  v71 = result;
  v72 = result;
  while (v70 == v66)
  {
    v73 = 1;
    v70 = v66;
LABEL_20:
    v78 = *(v0 + 1384);
    v79 = *(v0 + 1376);
    v80 = *(v0 + 1352);
    (*v67)(v79, v73, 1, v80);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v79, v78, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v68)(v78, 1, v80) == 1)
    {
      v124 = *(v0 + 2168);
      v96 = *(v0 + 2104);
      v97 = *(v0 + 1880);
      v98 = *(v0 + 1848);
      v99 = *(v0 + 1832);
      v100 = *(v0 + 1808);
      partnerNamed = *(v0 + 1800);
      partnerName_8d = *(v0 + 1824);
      v101 = *(v0 + 1552);
      v128 = *(v0 + 1544);
      v131 = *(v0 + 1560);
      v102 = *(v0 + 1504);
      v103 = *(v0 + 1480);

      outlined destroy of OnScreenContent.Document?(v97, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v124(v98, v99);
      outlined destroy of DocumentInfo(v103, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v102, type metadata accessor for ModelResponse);
      (*(v101 + 8))(v131, v128);
      (*(v100 + 8))(partnerName_8d, partnerNamed);
      goto LABEL_31;
    }

    v81 = *(v0 + 1384);
    v82 = *v81;
    outlined init with take of SelectedContent(v81 + *(v63 + 48), *(v0 + 1344), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v84 = *(v0 + 1344);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v84, type metadata accessor for GeneratedResponse.RichContentEntity);
      v71 = v72;
    }

    else
    {
      v85 = *(v0 + 1336);
      outlined destroy of DocumentInfo(v84, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v85 = v65._countAndFlagsBits;
      *(v126 + 8) = v65._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v86 = partnerNamea;
        if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v86 = result;
        if ((v82 & 0x8000000000000000) != 0)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      if (v82 >= *(v86 + 16))
      {
        goto LABEL_36;
      }

      v87 = v86;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1336), v86 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v82);
      partnerNamea = v87;
      *(v129 + 16) = v87;
      v71 = v72;
    }
  }

  if (v70 < *(v71 + 16))
  {
    v74 = *(v0 + 1376);
    v75 = *(v0 + 1368);
    v76 = v71 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v70;
    v77 = *(v63 + 48);
    *v75 = v70;
    outlined init with copy of ScreenContent(v76, v75 + v77, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v75, v74, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v73 = 0;
    ++v70;
    goto LABEL_20;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

{
  v1 = v0[263];
  v2 = v0[238];
  v3 = v0[228];
  v4 = v0[226];
  v5 = v0[225];
  v6 = v0[195];
  v7 = v0[194];
  v8 = v0[193];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  outlined destroy of OnScreenContent.Document?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[263];
  v2 = v0[238];
  v3 = v0[228];
  v4 = v0[226];
  v5 = v0[225];
  v6 = v0[195];
  v7 = v0[194];
  v8 = v0[193];
  v9 = v0[181];

  outlined destroy of DocumentInfo(v9, type metadata accessor for UploadableImageData);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  outlined destroy of OnScreenContent.Document?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v10 = v0[1];

  return v10();
}

uint64_t GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = v8;
  v10 = *(v8 + 120);
  v9 = *(v8 + 128);
  *(v8 + 2336) = v10;
  *(v8 + 2344) = v9;
  v11 = *(v8 + 128);
  v72[6] = *(v8 + 112);
  v72[7] = v11;
  v73 = *(v8 + 144);
  v12 = *(v8 + 64);
  v72[2] = *(v8 + 48);
  v72[3] = v12;
  v13 = *(v8 + 96);
  v72[4] = *(v8 + 80);
  v72[5] = v13;
  v14 = *(v8 + 32);
  v72[0] = *(v8 + 16);
  v72[1] = v14;
  v74 = v10;
  v75 = v9;
  v76 = 0;
  v77 = 1;
  swift_bridgeObjectRetain_n();
  IntentCallbackManager.updateIntentProgress(to:)(&v74);
  outlined consume of GenerativeAssistantProgressLevel(v74, v75, v76, v77);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v8 + 1288);
    v18 = *(v8 + 1280);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v72[0] = v20;
    *v19 = 136315650;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v72);
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v72);
    *(v19 + 22) = 2080;
    *(v19 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v72);
    _os_log_impl(&dword_24FD67000, v15, v16, "%s.%s [userQuery = %s]", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v20, -1, -1);
    MEMORY[0x253057F40](v19, -1, -1);
  }

  static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
  static SessionPersistenceUtils.clearStoredValuesForSession()();
  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v21 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[4];
    *v21 = 4;
    v21[4] = 0;
    if ((v23 & 1) == 0 && v22 == 6)
    {
      *v21 = 6;
    }

    v24 = *(v8 + 1464);
    v25 = type metadata accessor for UploadableMedia(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v26 = *(v8 + 128);
    *(v8 + 384) = *(v8 + 112);
    *(v8 + 400) = v26;
    *(v8 + 416) = *(v8 + 144);
    v27 = *(v8 + 64);
    *(v8 + 320) = *(v8 + 48);
    *(v8 + 336) = v27;
    v28 = *(v8 + 96);
    *(v8 + 352) = *(v8 + 80);
    *(v8 + 368) = v28;
    v29 = *(v8 + 32);
    *(v8 + 288) = *(v8 + 16);
    *(v8 + 304) = v29;
    v30 = swift_task_alloc();
    *(v8 + 2352) = v30;
    *v30 = v8;
    v30[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
    v31 = *(v8 + 1496);
    v32 = *(v8 + 1464);
    v33 = *(v8 + 1296);
    v34 = *(v8 + 1288);
    v35 = *(v8 + 1280);
    v80 = 0;
    v36 = v8 + 288;
    v37 = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v38 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v39 = *v38;
    v40 = v38[4];
    *v38 = 1;
    v38[4] = 0;
    if ((v40 & 1) == 0 && v39 == 6)
    {
      *v38 = 6;
    }

    if (*(v8 + 1097) == 1)
    {
      outlined init with copy of Date?(*(v8 + 1904), *(v8 + 1432), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v41 = *(v8 + 2064);
      v42 = *(v8 + 2000);
      v43 = *(v8 + 1984);
      v44 = *(v8 + 1416);

      v45 = IntelligenceFile.name.getter();
      v47 = v46;
      IntelligenceFile.attributes.getter();
      IntelligenceFile.Attributes.contentType.getter();
      v41(v42, v43);
      v48 = type metadata accessor for UTType();
      v49 = *(v48 - 8);
      v50 = (*(v49 + 48))(v44, 1, v48);
      v51 = *(v8 + 1416);
      if (v50 == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v8 + 1416), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
        v52 = 0;
        v53 = 0;
      }

      else
      {
        v52 = UTType.preferredMIMEType.getter();
        v53 = v54;
        (*(v49 + 8))(v51, v48);
      }

      v55 = *(v8 + 1432);
      *v55 = v45;
      v55[1] = v47;
      v55[2] = v52;
      v55[3] = v53;
      swift_storeEnumTagMultiPayload();
    }

    v56 = *(v8 + 1456);
    v57 = *(v8 + 1448);
    v58 = *(v8 + 1440);
    v59 = *(v8 + 1432);
    v60 = *(v8 + 1304);
    v61 = vcvts_n_f32_s64(*(v8 + 2080), 0x14uLL);
    v62 = *(v8 + 2088);
    *v57 = *(v8 + 2048);
    *(v57 + 8) = v62;
    *(v57 + 24) = 0;
    *(v57 + 28) = v61;
    *(v57 + 32) = 0;
    outlined init with take of SelectedContent(v59, v57 + *(v58 + 28), type metadata accessor for UploadableMedia.Source);
    outlined init with copy of ScreenContent(v57, v56, type metadata accessor for UploadableImageData);
    v63 = type metadata accessor for UploadableMedia(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v63 - 8) + 56))(v56, 0, 1, v63);
    v64 = *(v8 + 96);
    *(v8 + 216) = *(v8 + 80);
    v65 = *(v8 + 48);
    *(v8 + 200) = *(v8 + 64);
    *(v8 + 184) = v65;
    v66 = *(v8 + 16);
    *(v8 + 168) = *(v8 + 32);
    v67 = *(v8 + 112);
    *(v8 + 264) = *(v8 + 128);
    *(v8 + 248) = v67;
    *(v8 + 232) = v64;
    *(v8 + 280) = *(v8 + 144);
    *(v8 + 152) = v66;
    v69 = *(v60 + 24);
    v68 = *(v60 + 32);
    v70 = swift_task_alloc();
    *(v8 + 2368) = v70;
    *v70 = v8;
    v70[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
    v31 = *(v8 + 1488);
    v32 = *(v8 + 1456);
    v33 = *(v8 + 1296);
    v34 = *(v8 + 1288);
    v35 = *(v8 + 1280);
    v80 = v68;
    v36 = v8 + 152;
    v37 = v69;
  }

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v31, v35, v34, v33, v32, v36, 0, v37);
}

uint64_t GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 1496) = v7;
  *(v8 + 1488) = a6;
  *(v8 + 1480) = a5;
  *(v8 + 1472) = a4;
  *(v8 + 1464) = a3;
  *(v8 + 1456) = a2;
  *(v8 + 1448) = a1;
  v10 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v8 + 1504) = v10;
  *(v8 + 1512) = *(v10 - 8);
  *(v8 + 1520) = swift_task_alloc();
  *(v8 + 1528) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v8 + 1536) = v11;
  *(v8 + 1544) = *(v11 - 8);
  *(v8 + 1552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  *(v8 + 1560) = swift_task_alloc();
  *(v8 + 1568) = swift_task_alloc();
  v12 = type metadata accessor for GeneratedResponse(0);
  *(v8 + 1576) = v12;
  *(v8 + 1584) = *(v12 - 8);
  *(v8 + 1592) = swift_task_alloc();
  v13 = type metadata accessor for GenerativeAssistantUseCase();
  *(v8 + 1600) = v13;
  *(v8 + 1608) = *(v13 - 8);
  *(v8 + 1616) = swift_task_alloc();
  *(v8 + 1624) = type metadata accessor for UploadableDocumentData(0);
  *(v8 + 1632) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  *(v8 + 1640) = swift_task_alloc();
  *(v8 + 1648) = swift_task_alloc();
  *(v8 + 1656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  *(v8 + 1664) = swift_task_alloc();
  *(v8 + 1672) = swift_task_alloc();
  *(v8 + 1680) = type metadata accessor for UploadableMedia.Source(0);
  *(v8 + 1688) = swift_task_alloc();
  *(v8 + 1696) = swift_task_alloc();
  v14 = type metadata accessor for IntelligenceFile.Attributes();
  *(v8 + 1704) = v14;
  *(v8 + 1712) = *(v14 - 8);
  *(v8 + 1720) = swift_task_alloc();
  *(v8 + 1728) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  *(v8 + 1736) = swift_task_alloc();
  *(v8 + 1744) = swift_task_alloc();
  *(v8 + 1752) = type metadata accessor for UploadableImageData(0);
  *(v8 + 1760) = swift_task_alloc();
  *(v8 + 1768) = type metadata accessor for ModelResponse(0);
  *(v8 + 1776) = swift_task_alloc();
  *(v8 + 1784) = swift_task_alloc();
  *(v8 + 1792) = swift_task_alloc();
  *(v8 + 1800) = swift_task_alloc();
  *(v8 + 1808) = swift_task_alloc();
  *(v8 + 1816) = swift_task_alloc();
  *(v8 + 1824) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  *(v8 + 1832) = swift_task_alloc();
  *(v8 + 1840) = swift_task_alloc();
  v15 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v8 + 1848) = v15;
  *(v8 + 1856) = *(v15 - 8);
  *(v8 + 1864) = swift_task_alloc();
  v16 = type metadata accessor for GATError();
  *(v8 + 1872) = v16;
  *(v8 + 1880) = *(v16 - 8);
  *(v8 + 1888) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  *(v8 + 1896) = swift_task_alloc();
  v17 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  *(v8 + 1904) = v17;
  *(v8 + 1912) = *(v17 - 8);
  *(v8 + 1920) = swift_task_alloc();
  v18 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v8 + 1928) = v18;
  *(v8 + 1936) = *(v18 - 8);
  *(v8 + 1944) = swift_task_alloc();
  *(v8 + 1952) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v8 + 1960) = swift_task_alloc();
  *(v8 + 1968) = swift_task_alloc();
  *(v8 + 1976) = swift_task_alloc();
  *(v8 + 1984) = swift_task_alloc();
  *(v8 + 1992) = swift_task_alloc();
  v19 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  *(v8 + 2000) = v19;
  *(v8 + 2008) = *(v19 - 8);
  *(v8 + 2016) = swift_task_alloc();
  *(v8 + 2024) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  *(v8 + 2032) = swift_task_alloc();
  *(v8 + 2040) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMd, &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMR);
  *(v8 + 2048) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon21SupportedDocumentTypeOSgMd, &_s25GenerativeAssistantCommon21SupportedDocumentTypeOSgMR);
  *(v8 + 2056) = swift_task_alloc();
  v20 = type metadata accessor for SupportedDocumentType();
  *(v8 + 2064) = v20;
  *(v8 + 2072) = *(v20 - 8);
  *(v8 + 2080) = swift_task_alloc();
  v21 = type metadata accessor for URL();
  *(v8 + 2088) = v21;
  *(v8 + 2096) = *(v21 - 8);
  *(v8 + 2104) = swift_task_alloc();
  *(v8 + 2112) = swift_task_alloc();
  *(v8 + 2120) = swift_task_alloc();
  v22 = *(a7 + 112);
  *(v8 + 112) = *(a7 + 96);
  *(v8 + 128) = v22;
  *(v8 + 144) = *(a7 + 128);
  v23 = *(a7 + 48);
  *(v8 + 48) = *(a7 + 32);
  *(v8 + 64) = v23;
  v24 = *(a7 + 80);
  *(v8 + 80) = *(a7 + 64);
  *(v8 + 96) = v24;
  v25 = *(a7 + 16);
  *(v8 + 16) = *a7;
  *(v8 + 32) = v25;
  *(v8 + 2128) = type metadata accessor for MainActor();
  *(v8 + 2136) = static MainActor.shared.getter();
  v27 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 2144) = v27;
  *(v8 + 2152) = v26;

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:), v27, v26);
}

uint64_t GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:)()
{
  v293 = v0;
  v1 = *(v0 + 2120);
  v2 = *(v0 + 2096);
  v3 = *(v0 + 2088);
  v4 = *(v0 + 1480);
  v5 = *(v2 + 16);
  *(v0 + 2160) = v5;
  *(v0 + 2168) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = type metadata accessor for DocumentInfo(0);
  *(v0 + 2176) = v6;
  v284 = v6;
  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 2120);
  v8 = *(v0 + 2112);
  v9 = *(v0 + 2088);
  v10 = type metadata accessor for Logger();
  *(v0 + 2184) = __swift_project_value_buffer(v10, static Logger.genFromMediaController);
  v5(v8, v7, v9);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 2112);
  v15 = *(v0 + 2096);
  v16 = *(v0 + 2088);
  if (v13)
  {
    v280 = v10;
    v17 = swift_slowAlloc();
    v278 = swift_slowAlloc();
    *&v287[0] = v278;
    *v17 = 136315906;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v287);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v287);
    *(v17 + 22) = 2080;
    v275 = v12;
    v18 = URL.debugDescription.getter();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v14, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v287);

    *(v17 + 24) = v22;
    *(v17 + 32) = 2080;
    v23 = IntelligenceFile.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v287);

    *(v17 + 34) = v25;
    _os_log_impl(&dword_24FD67000, v11, v275, "%s.%s [url = %s; file: %s]", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v278, -1, -1);
    v26 = v17;
    v10 = v280;
    MEMORY[0x253057F40](v26, -1, -1);
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v14, v16);
  }

  v281 = v21;
  *(v0 + 2192) = v21;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 1480);
  *(v0 + 2200) = static MetricsUtils.shared;
  MetricsUtils.emitSignpostEvent(_:)("Usecase.DocumentQnA", 19, 2);
  v28 = (v27 + v284[7]);
  v29 = *v28;
  *(v0 + 2208) = *v28;
  v30 = v28[1];
  *(v0 + 2216) = v30;
  v31 = specialized static GATSchemaGATMediaType.from(fileExtension:)();
  v32 = *(v27 + v284[9]) * 1024.0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v33 = static SELFUtils.shared;
  *(v0 + 2224) = static SELFUtils.shared;
  LOBYTE(v289) = 0;
  LOBYTE(v287[0]) = 0;
  *(v0 + 1329) = 0;
  swift_beginAccess();
  v33[4] = v31;
  *(v33 + 20) = 0;
  *(v33 + 3) = v32;
  *(v33 + 32) = 0;
  v33[9] = 4;
  *(v33 + 40) = 0;
  v33[11] = 2;
  *(v33 + 48) = 0;
  v33[13] = v31;
  *(v33 + 56) = 0;
  *(v33 + 8) = v32;
  *(v33 + 72) = 0;
  *(v33 + 73) = *(v0 + 1329);
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, static Logger.selfSchemaLogger);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_24FD67000, v34, v35, "Successfully updated GAT MediaQA usecase: GATMEDIAQNAUSECASE_REGISTER_DOCUMENT", v36, 2u);
    MEMORY[0x253057F40](v36, -1, -1);
  }

  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 2072);
  v38 = *(v0 + 2064);
  v39 = *(v0 + 2056);
  v40 = *(&static Disclaimer.partnerName + 1);
  *(v0 + 2232) = static Disclaimer.partnerName;
  *(v0 + 2240) = v40;

  specialized SupportedDocumentHelper.init()((v0 + 1144));
  SupportedDocumentHelper.getFileType(typeIdentifier:)(v39, v29, v30);
  outlined destroy of SupportedDocumentHelper(v0 + 1144);
  if ((*(v37 + 48))(v39, 1, v38) == 1)
  {
    v41 = *(v0 + 2120);
    v42 = *(v0 + 2088);
    v43 = *(v0 + 2056);

    outlined destroy of OnScreenContent.Document?(v43, &_s25GenerativeAssistantCommon21SupportedDocumentTypeOSgMd, &_s25GenerativeAssistantCommon21SupportedDocumentTypeOSgMR);
    *&v287[0] = 0;
    *(&v287[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    *&v287[0] = 0xD000000000000017;
    *(&v287[0] + 1) = 0x800000024FE20100;
    MEMORY[0x253056FE0](v29, v30);
    v44 = v287[0];
    SELFUtils.recordRequestFailed(code:domain:)(3, 1);
    lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();
    swift_allocError();
    *v45 = v44;
    *(v45 + 16) = 3;
    swift_willThrow();
    v46 = v41;
    v47 = v42;
LABEL_50:
    v281(v46, v47);

    v120 = *(v0 + 8);

    return v120();
  }

  v48 = *(v0 + 2040);
  v49 = *(v0 + 1480);
  (*(*(v0 + 2072) + 32))(*(v0 + 2080), *(v0 + 2056), *(v0 + 2064));
  outlined init with copy of Date?(v49 + v284[10], v48, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v50 = type metadata accessor for OnScreenContent.UIMetadata();
  *(v0 + 2248) = v50;
  v51 = *(v50 - 8);
  *(v0 + 2256) = v51;
  v52 = *(v51 + 48);
  *(v0 + 2264) = v52;
  *(v0 + 2272) = (v51 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v52(v48, 1, v50) == 1)
  {
    v53 = *(v0 + 2040);
    v54 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd;
    v55 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR;
LABEL_22:
    outlined destroy of OnScreenContent.Document?(v53, v54, v55);
    v65 = 0;
    goto LABEL_24;
  }

  v56 = *(v0 + 2048);
  v57 = *(v0 + 2040);
  v58 = *(v0 + 2024);
  v59 = *(v0 + 2008);
  v60 = *(v0 + 2000);
  OnScreenContent.UIMetadata.window.getter();
  (*(v51 + 8))(v57, v50);
  OnScreenContent.UIMetadata.Window.intelligenceUserActivity.getter();
  (*(v59 + 8))(v58, v60);
  v61 = type metadata accessor for IntelligenceUserActivity();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 48))(v56, 1, v61);
  v64 = *(v0 + 2048);
  if (v63 == 1)
  {
    v54 = &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMd;
    v55 = &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMR;
    v53 = *(v0 + 2048);
    goto LABEL_22;
  }

  v65 = IntelligenceUserActivity.userActivity.getter();
  (*(v62 + 8))(v64, v61);
LABEL_24:
  *(v0 + 2280) = v65;
  v66 = v65;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();

  v276 = v66;
  if (!os_log_type_enabled(v67, v68))
  {
    goto LABEL_34;
  }

  v69 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  *&v287[0] = v70;
  *v69 = 136315650;
  *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v287);
  *(v69 + 12) = 2080;
  *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v287);
  *(v69 + 22) = 2080;
  if (v65)
  {
    v71 = [v66 webpageURL];
    v285 = v70;
    if (v71)
    {
      v72 = v71;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = 0;
    }

    else
    {
      v73 = 1;
    }

    v74 = *(v0 + 2096);
    v75 = *(v0 + 2088);
    v76 = *(v0 + 1992);
    v77 = *(v0 + 1984);
    (*(v74 + 56))(v77, v73, 1, v75);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v77, v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v78 = (*(v74 + 48))(v76, 1, v75);
    v66 = v276;
    v70 = v285;
    if (v78 != 1)
    {
      v79 = 0xE400000000000000;
      v80 = 1702195828;
      goto LABEL_33;
    }
  }

  else
  {
    (*(*(v0 + 2096) + 56))(*(v0 + 1992), 1, 1, *(v0 + 2088));
  }

  v79 = 0xE500000000000000;
  v80 = 0x65736C6166;
LABEL_33:
  outlined destroy of OnScreenContent.Document?(*(v0 + 1992), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v79, v287);

  *(v69 + 24) = v81;
  _os_log_impl(&dword_24FD67000, v67, v68, "%s.%s [NSUserActivity webpageURL provided = %s]", v69, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x253057F40](v70, -1, -1);
  MEMORY[0x253057F40](v69, -1, -1);
LABEL_34:

  if (v65)
  {
    v82 = [v66 activityType];
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;
  }

  else
  {
    v83 = 0;
    v85 = 0;
  }

  v86 = GenerateTextFromMediaController.isFromWebsite(activityType:)(v83, v85);
  *(v0 + 1330) = v86 & 1;

  if ((v86 & 1) != 0 && v65)
  {
    v87 = [v66 webpageURL];
    if (v87)
    {
      v88 = v87;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v89 = 0;
    }

    else
    {
      v89 = 1;
    }

    v90 = *(v0 + 1976);
    v91 = *(v0 + 1968);
    (*(*(v0 + 2096) + 56))(v91, v89, 1, *(v0 + 2088));
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v91, v90, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(*(v0 + 2096) + 56))(*(v0 + 1976), 1, 1, *(v0 + 2088));
  }

  v92 = *(v0 + 1952);
  v93 = *(v0 + 1944);
  v94 = *(v0 + 1936);
  v95 = *(v0 + 1928);
  v96 = *(v0 + 1920);
  v97 = *(v0 + 1912);
  v98 = *(v0 + 1904);
  v99 = *(v0 + 1472);
  *(v0 + 1432) = MEMORY[0x277D84F90];
  *(v0 + 1440) = 0;
  (*(v97 + 104))(v96, *MEMORY[0x277D0D778], v98);
  v100 = type metadata accessor for GenerativeRequestMetadata(0);
  *(v0 + 2288) = v100;
  v101 = (v99 + *(v100 + 52));
  *(v0 + 2296) = *v101;
  *(v0 + 2304) = v101[1];
  static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();
  (*(v97 + 8))(v96, v98);
  (*(v94 + 16))(v93, v92, v95);
  v102 = (*(v94 + 88))(v93, v95);
  if (v102 == *MEMORY[0x277D0D788])
  {

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v287[0] = v106;
      *v105 = 136315394;
      *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v287);
      *(v105 + 12) = 2080;
      *(v105 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v287);
      _os_log_impl(&dword_24FD67000, v103, v104, "%s.%s Fallback to SiriX.", v105, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v106, -1, -1);
      MEMORY[0x253057F40](v105, -1, -1);
    }

    v107 = *(v0 + 1888);
    v108 = *(v0 + 1880);
    v109 = *(v0 + 1872);
    *v107 = 0xD000000000000043;
    v107[1] = 0x800000024FE1FF90;
    (*(v108 + 104))(v107, *MEMORY[0x277D0D710], v109);
    result = GATError.errorCode.getter();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v282 = *(v0 + 2120);
      v273 = *(v0 + 2088);
      v111 = *(v0 + 2072);
      v269 = *(v0 + 2064);
      v270 = *(v0 + 2080);
      v112 = *(v0 + 1976);
      v113 = *(v0 + 1952);
      v114 = *(v0 + 1936);
      v115 = *(v0 + 1928);
      v116 = *(v0 + 1888);
      v117 = *(v0 + 1880);
      v118 = *(v0 + 1872);
      SELFUtils.recordRequestFailed(code:domain:)(result, 4);
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v117 + 32))(v119, v116, v118);
      swift_willThrow();

      (*(v114 + 8))(v113, v115);
      outlined destroy of OnScreenContent.Document?(v112, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v111 + 8))(v270, v269);
      v47 = v273;
      v46 = v282;
      goto LABEL_50;
    }

    __break(1u);
    return result;
  }

  v121 = (v0 + 16);
  if (v102 == *MEMORY[0x277D0D798])
  {
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *&v287[0] = v125;
      *v124 = 136315394;
      *(v124 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v287);
      *(v124 + 12) = 2080;
      *(v124 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v287);
      _os_log_impl(&dword_24FD67000, v122, v123, "%s.%s Request confirmation", v124, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v125, -1, -1);
      MEMORY[0x253057F40](v124, -1, -1);
    }

    specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
    outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 832);
    v126 = swift_task_alloc();
    *(v0 + 2312) = v126;
    *v126 = v0;
    v126[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v127 = *(v0 + 1456);
    v296 = *(v0 + 1496);
    v297 = v0 + 16;
    v295 = v127;

    JUMPOUT(0x24FDA791CLL);
  }

  if (v102 == *MEMORY[0x277D0D790])
  {
    *(v0 + 2328) = static MainActor.shared.getter();
    v128 = *(v0 + 128);
    *(v0 + 656) = *(v0 + 112);
    *(v0 + 672) = v128;
    *(v0 + 688) = *(v0 + 144);
    v129 = *(v0 + 64);
    *(v0 + 592) = *(v0 + 48);
    *(v0 + 608) = v129;
    v130 = *(v0 + 96);
    *(v0 + 624) = *(v0 + 80);
    *(v0 + 640) = v130;
    v131 = *(v0 + 32);
    *(v0 + 560) = *v121;
    *(v0 + 576) = v131;
    v132 = swift_task_alloc();
    *(v0 + 2336) = v132;
    *v132 = v0;
    v132[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v133 = *(v0 + 1472);

    return GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:)(v0 + 560, 1, v133);
  }

  v134 = *MEMORY[0x277D0D780];
  v135 = v102;
  v136 = Logger.logObject.getter();
  if (v135 == v134)
  {
    v137 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *&v287[0] = v139;
      *v138 = 136315394;
      *(v138 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v287);
      *(v138 + 12) = 2080;
      *(v138 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v287);
      _os_log_impl(&dword_24FD67000, v136, v137, "%s.%s Skipping confirmation: user previously confirmed media upload in this session", v138, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v139, -1, -1);
      MEMORY[0x253057F40](v138, -1, -1);
    }
  }

  else
  {
    v140 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *&v287[0] = v142;
      *v141 = 136315394;
      *(v141 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v287);
      *(v141 + 12) = 2080;
      *(v141 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v287);
      _os_log_impl(&dword_24FD67000, v136, v140, "%s.%s Unkown Default when checking for confirmation vs enablement vs SiriX", v141, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v142, -1, -1);
      MEMORY[0x253057F40](v141, -1, -1);
    }

    (*(*(v0 + 1936) + 8))(*(v0 + 1944), *(v0 + 1928));
  }

  v144 = *(v0 + 120);
  v143 = *(v0 + 128);
  *(v0 + 2368) = v144;
  *(v0 + 2376) = v143;
  v145 = *(v0 + 112);
  v287[7] = *(v0 + 128);
  v146 = *(v0 + 144);
  v147 = *(v0 + 64);
  v287[2] = *(v0 + 48);
  v287[3] = v147;
  v148 = *(v0 + 80);
  v287[5] = *(v0 + 96);
  v287[6] = v145;
  v287[4] = v148;
  v149 = *(v0 + 32);
  v287[0] = *v121;
  v287[1] = v149;
  v288 = v146;
  v289 = v144;
  v290 = v143;
  v291 = 0;
  v292 = 1;
  swift_bridgeObjectRetain_n();
  IntentCallbackManager.updateIntentProgress(to:)(&v289);
  outlined consume of GenerativeAssistantProgressLevel(v289, v290, v291, v292);
  static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
  static SessionPersistenceUtils.clearStoredValuesForSession()();
  v150 = SessionPersistenceUtils.SessionStoredValues.didSelectAlternateAttachment.getter();
  v151 = *(v0 + 1432);
  v152 = *(v151 + 16);
  if (v150)
  {
    v153 = *(v0 + 1840);
    if (v152)
    {
      v154 = v152 - 1;
      v155 = type metadata accessor for Attachment();
      v156 = *(v155 - 8);
      (*(v156 + 16))(v153, v151 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v154, v155);
      (*(v156 + 56))(v153, 0, 1, v155);
    }

    else
    {
      v155 = type metadata accessor for Attachment();
      (*(*(v155 - 8) + 56))(v153, 1, 1, v155);
    }
  }

  else
  {
    v155 = type metadata accessor for Attachment();
    v157 = *(v155 - 8);
    v158 = v157;
    v159 = *(v0 + 1840);
    if (v152)
    {
      (*(v157 + 16))(*(v0 + 1840), v151 + ((*(v157 + 80) + 32) & ~*(v157 + 80)), v155);
      (*(v158 + 56))(v159, 0, 1, v155);
    }

    else
    {
      (*(v157 + 56))(*(v0 + 1840), 1, 1, v155);
    }
  }

  v160 = *(v0 + 1832);
  outlined init with copy of Date?(*(v0 + 1840), v160, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  type metadata accessor for Attachment();
  v161 = *(v155 - 8);
  v162 = (*(v161 + 48))(v160, 1, v155);
  v163 = *(v0 + 1832);
  if (v162 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 1832), &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter();
    if ((SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter() & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_89;
  }

  v164 = Attachment.isScreenshot.getter();
  (*(v161 + 8))(v163, v155);
  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter() & 1) == 0 && (v164)
  {
    v165 = *(v0 + 1440);
    *(v0 + 2384) = v165;
    if (v165)
    {
      v166 = *(v0 + 2224);

      v167 = (v166 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase);
      swift_beginAccess();
      v168 = *v167;
      v169 = *(v167 + 4);
      *v167 = 1;
      *(v167 + 4) = 0;
      if ((v169 & 1) == 0 && v168 == 6)
      {
        *v167 = 6;
      }

      v170 = *(v0 + 1744);
      outlined init with copy of Date?(*(v0 + 1488), v170, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v171 = type metadata accessor for ImageInfo(0);
      v283 = *(*(v171 - 8) + 48);
      v286 = v171;
      if (v283(v170, 1, v171) == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v0 + 1744), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      }

      else
      {
        v217 = *(v0 + 2264);
        v218 = *(v0 + 2248);
        v219 = *(v0 + 2032);
        v220 = *(v0 + 1744);
        outlined init with copy of Date?(v220 + *(v171 + 32), v219, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        outlined destroy of DocumentInfo(v220, type metadata accessor for ImageInfo);
        if (v217(v219, 1, v218) == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 2032), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        }

        else
        {
          v221 = *(v0 + 2256);
          v222 = *(v0 + 2248);
          v223 = *(v0 + 2032);
          v224 = *(v0 + 2016);
          v225 = *(v0 + 2008);
          v226 = *(v0 + 2000);
          OnScreenContent.UIMetadata.window.getter();
          (*(v221 + 8))(v223, v222);
          OnScreenContent.UIMetadata.Window.boundingBox.getter();
          (*(v225 + 8))(v224, v226);
          if ((*(v0 + 1328) & 1) == 0)
          {
            v274 = 0;
            v277 = *(v0 + 1320);
            v279 = *(v0 + 1312);
            goto LABEL_116;
          }
        }
      }

      v277 = 0;
      v279 = 0;
      v274 = 1;
LABEL_116:
      v227 = *(v0 + 1330);
      v228 = *(v0 + 1728);
      v229 = *(v0 + 1712);
      v230 = *(v0 + 1704);
      IntelligenceFile.attributes.getter();
      v231 = IntelligenceFile.Attributes.fileSize.getter();
      v232 = v165;
      v234 = v233;
      v235 = *(v229 + 8);
      v235(v228, v230);
      v236 = vcvts_n_f32_s64(v231, 0x14uLL);
      v272 = v234;
      if (v234)
      {
        v236 = 0.0;
      }

      v271 = v236;
      if (v227 == 1)
      {
        outlined init with copy of Date?(*(v0 + 1976), *(v0 + 1696), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        swift_storeEnumTagMultiPayload();
        v237 = v232;
      }

      else
      {
        v238 = *(v0 + 1720);
        v239 = *(v0 + 1704);
        v240 = *(v0 + 1672);
        v237 = v232;
        v241 = IntelligenceFile.name.getter();
        v268 = v242;
        IntelligenceFile.attributes.getter();
        IntelligenceFile.Attributes.contentType.getter();
        v235(v238, v239);
        v243 = type metadata accessor for UTType();
        v244 = *(v243 - 8);
        v245 = (*(v244 + 48))(v240, 1, v243);
        v246 = *(v0 + 1672);
        if (v245 == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 1672), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v247 = 0;
          v248 = 0;
        }

        else
        {
          v247 = UTType.preferredMIMEType.getter();
          v248 = v249;
          (*(v244 + 8))(v246, v243);
        }

        v250 = *(v0 + 1696);
        *v250 = v241;
        v250[1] = v268;
        v250[2] = v247;
        v250[3] = v248;
        swift_storeEnumTagMultiPayload();
      }

      v251 = *(v0 + 1760);
      v252 = *(v0 + 1752);
      v253 = *(v0 + 1736);
      v254 = *(v0 + 1696);
      v255 = *(v0 + 1656);
      v256 = *(v0 + 1496);
      v257 = *(v0 + 1488);
      *v251 = v237;
      *(v251 + 8) = v279;
      *(v251 + 16) = v277;
      *(v251 + 24) = v274;
      *(v251 + 28) = v271;
      *(v251 + 32) = v272 & 1;
      outlined init with take of SelectedContent(v254, v251 + *(v252 + 28), type metadata accessor for UploadableMedia.Source);
      outlined init with copy of ModelOrchestrator(v256 + 40, v0 + 968);
      outlined init with copy of ScreenContent(v251, v255, type metadata accessor for UploadableImageData);
      v258 = type metadata accessor for UploadableMedia(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v258 - 8) + 56))(v255, 0, 1, v258);
      v259 = *(v0 + 128);
      *(v0 + 520) = *(v0 + 112);
      *(v0 + 536) = v259;
      *(v0 + 552) = *(v0 + 144);
      v260 = *(v0 + 64);
      *(v0 + 456) = *(v0 + 48);
      *(v0 + 472) = v260;
      v261 = *(v0 + 96);
      *(v0 + 488) = *(v0 + 80);
      *(v0 + 504) = v261;
      v262 = *(v0 + 32);
      *(v0 + 424) = *v121;
      *(v0 + 440) = v262;
      outlined init with copy of Date?(v257, v253, &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v263 = v283(v253, 1, v286);
      v264 = *(v0 + 1736);
      if (v263 == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v0 + 1736), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
        v265 = 0;
        v266 = 0;
      }

      else
      {
        v265 = *(v264 + 24);
        v266 = *(v264 + 32);

        outlined destroy of DocumentInfo(v264, type metadata accessor for ImageInfo);
      }

      *(v0 + 2392) = v266;
      v267 = swift_task_alloc();
      *(v0 + 2400) = v267;
      *v267 = v0;
      v267[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
      v182 = *(v0 + 1816);
      v183 = *(v0 + 1656);
      v184 = *(v0 + 1472);
      v185 = *(v0 + 1464);
      v186 = *(v0 + 1456);
      v296 = v266;
      v187 = v0 + 424;
      v216 = v265;
      goto LABEL_109;
    }
  }

  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
  {
LABEL_89:

    goto LABEL_90;
  }

  if ((v164 & 1) == 0)
  {
LABEL_97:

    goto LABEL_98;
  }

  v188 = *(v0 + 1488);
  v189 = type metadata accessor for ImageInfo(0);
  LODWORD(v188) = (*(*(v189 - 8) + 48))(v188, 1, v189);

  if (v188 == 1)
  {
LABEL_90:
    v172 = *(v0 + 2224) + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v173 = *v172;
    v174 = *(v172 + 4);
    *v172 = 4;
    *(v172 + 4) = 0;
    if ((v174 & 1) == 0 && v173 == 6)
    {
      *v172 = 6;
    }

    v175 = *(v0 + 1648);
    v176 = type metadata accessor for UploadableMedia(0);
    (*(*(v176 - 8) + 56))(v175, 1, 1, v176);
    v177 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v177;
    *(v0 + 416) = *(v0 + 144);
    v178 = *(v0 + 64);
    *(v0 + 320) = *(v0 + 48);
    *(v0 + 336) = v178;
    v179 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v179;
    v180 = *(v0 + 32);
    *(v0 + 288) = *v121;
    *(v0 + 304) = v180;
    v181 = swift_task_alloc();
    *(v0 + 2416) = v181;
    *v181 = v0;
    v181[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v182 = *(v0 + 1808);
    v183 = *(v0 + 1648);
    v184 = *(v0 + 1472);
    v185 = *(v0 + 1464);
    v186 = *(v0 + 1456);
    v296 = 0;
    v187 = v0 + 288;
    goto LABEL_108;
  }

LABEL_98:
  v190 = *(v0 + 2224) + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
  swift_beginAccess();
  v191 = *v190;
  v192 = *(v190 + 4);
  *v190 = 2;
  *(v190 + 4) = 0;
  if ((v192 & 1) == 0 && v191 == 6)
  {
    *v190 = 6;
  }

  v193 = *(v0 + 1330);
  (*(v0 + 2160))(*(v0 + 2104), *(v0 + 2120), *(v0 + 2088));
  if (v193 == 1)
  {
    outlined init with copy of Date?(*(v0 + 1976), *(v0 + 1688), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v194 = *(v0 + 1664);
    v195 = (*(v0 + 1480) + *(*(v0 + 2176) + 24));
    v197 = *v195;
    v196 = v195[1];

    UTType.init(_:)();
    v198 = type metadata accessor for UTType();
    v199 = *(v198 - 8);
    v200 = (*(v199 + 48))(v194, 1, v198);
    v201 = *(v0 + 1664);
    if (v200 == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 1664), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      v202 = 0;
      v203 = 0;
    }

    else
    {
      v202 = UTType.preferredMIMEType.getter();
      v203 = v204;
      (*(v199 + 8))(v201, v198);
    }

    v205 = *(v0 + 1688);
    *v205 = v197;
    v205[1] = v196;
    v205[2] = v202;
    v205[3] = v203;
  }

  swift_storeEnumTagMultiPayload();
  v206 = *(v0 + 1688);
  v207 = *(v0 + 1640);
  v208 = *(v0 + 1632);
  v209 = *(v0 + 1624);
  (*(*(v0 + 2096) + 32))(v208, *(v0 + 2104), *(v0 + 2088));
  outlined init with take of SelectedContent(v206, v208 + *(v209 + 20), type metadata accessor for UploadableMedia.Source);
  outlined init with copy of ScreenContent(v208, v207, type metadata accessor for UploadableDocumentData);
  v210 = type metadata accessor for UploadableMedia(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v210 - 8) + 56))(v207, 0, 1, v210);
  v211 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  v212 = *(v0 + 128);
  *(v0 + 248) = *(v0 + 112);
  *(v0 + 264) = v212;
  v213 = *v121;
  *(v0 + 168) = *(v0 + 32);
  v214 = *(v0 + 64);
  *(v0 + 184) = *(v0 + 48);
  *(v0 + 200) = v214;
  *(v0 + 216) = v211;
  *(v0 + 280) = *(v0 + 144);
  *(v0 + 152) = v213;
  v215 = swift_task_alloc();
  *(v0 + 2432) = v215;
  *v215 = v0;
  v215[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  v182 = *(v0 + 1800);
  v183 = *(v0 + 1640);
  v184 = *(v0 + 1472);
  v185 = *(v0 + 1464);
  v186 = *(v0 + 1456);
  v296 = 0;
  v187 = v0 + 152;
LABEL_108:
  v216 = 0;
LABEL_109:

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v182, v186, v185, v184, v183, v187, 0, v216);
}

{
  v2 = *v1;
  *(*v1 + 2320) = v0;

  if (v0)
  {
    v3 = *(v2 + 2152);
    v4 = *(v2 + 2144);
    v5 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of IntentCallbackManager(v2 + 16);
    v3 = *(v2 + 2152);
    v4 = *(v2 + 2144);
    v5 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v24 = v0;

  outlined destroy of IntentCallbackManager((v0 + 2));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v23[0] = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v23);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v23);
    _os_log_impl(&dword_24FD67000, v1, v2, "%s.%s User cancelled", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v4, -1, -1);
    MEMORY[0x253057F40](v3, -1, -1);
  }

  v14 = v0[290];
  v15 = v0[285];
  v5 = v0[280];
  v6 = v0[279];
  v20 = v0[265];
  v21 = v0[274];
  v19 = v0[261];
  v7 = v0[259];
  v17 = v0[258];
  v18 = v0[260];
  v16 = v0[247];
  v13 = v0[244];
  v8 = v0[242];
  v9 = v0[241];
  v10 = v0[181];
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  SELFUtils.recordRequestCanceled()();
  v22 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v22, v6, v5, v10);

  (*(v8 + 8))(v13, v9);

  outlined destroy of OnScreenContent.Document?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 8))(v18, v17);
  v21(v20, v19);

  v11 = v0[1];

  return v11();
}

{
  *(*v1 + 2344) = v0;

  if (v0)
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v5, v2, v4);
}

{
  v1 = v0[237];
  v2 = v0[198];
  v3 = v0[197];

  (*(v2 + 56))(v1, 1, 1, v3);
  v4 = v0[269];
  v5 = v0[268];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:), v5, v4);
}

{
  v23 = v0;
  v1 = *(v0 + 1896);
  if ((*(*(v0 + 1584) + 48))(v1, 1, *(v0 + 1576)) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v22[0] = v5;
      *v4 = 136315394;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v22);
      *(v4 + 12) = 2080;
      *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v22);
      _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Request confirmation", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v5, -1, -1);
      MEMORY[0x253057F40](v4, -1, -1);
    }

    specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
    outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 696);
    v6 = swift_task_alloc();
    *(v0 + 2352) = v6;
    *v6 = v0;
    v6[1] = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
    v7 = *(v0 + 1456);
    v26 = *(v0 + 1496);
    v27 = v0 + 16;
    v25 = v7;

    JUMPOUT(0x24FDA9864);
  }

  v8 = *(v0 + 2280);
  v20 = *(v0 + 2120);
  v21 = *(v0 + 2192);
  v17 = *(v0 + 2080);
  v9 = *(v0 + 2072);
  v10 = *(v0 + 2064);
  v11 = *(v0 + 1976);
  v12 = *(v0 + 1952);
  v13 = *(v0 + 1936);
  v14 = *(v0 + 1928);
  v18 = *(v0 + 1448);
  v19 = *(v0 + 2088);

  (*(v13 + 8))(v12, v14);
  outlined destroy of OnScreenContent.Document?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v9 + 8))(v17, v10);
  v21(v20, v19);
  outlined init with take of SelectedContent(v1, v18, type metadata accessor for GeneratedResponse);

  v15 = *(v0 + 8);

  return v15();
}

{

  v1 = *(v0 + 2152);
  v2 = *(v0 + 2144);

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v1 = v0[285];
  v12 = v0[265];
  v13 = v0[274];
  v11 = v0[261];
  v2 = v0[260];
  v3 = v0[259];
  v4 = v0[258];
  v5 = v0[247];
  v6 = v0[244];
  v7 = v0[242];
  v8 = v0[241];

  (*(v7 + 8))(v6, v8);
  outlined destroy of OnScreenContent.Document?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v3 + 8))(v2, v4);
  v13(v12, v11);

  v9 = v0[1];

  return v9();
}

{
  v2 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {
    v3 = *(v2 + 2152);
    v4 = *(v2 + 2144);
    v5 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of IntentCallbackManager(v2 + 16);
    v3 = *(v2 + 2152);
    v4 = *(v2 + 2144);
    v5 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v24 = v0;

  outlined destroy of IntentCallbackManager((v0 + 2));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v23[0] = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v23);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v23);
    _os_log_impl(&dword_24FD67000, v1, v2, "%s.%s User cancelled", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v4, -1, -1);
    MEMORY[0x253057F40](v3, -1, -1);
  }

  v14 = v0[295];
  v15 = v0[285];
  v5 = v0[280];
  v6 = v0[279];
  v20 = v0[265];
  v21 = v0[274];
  v19 = v0[261];
  v7 = v0[259];
  v17 = v0[258];
  v18 = v0[260];
  v16 = v0[247];
  v13 = v0[244];
  v8 = v0[242];
  v9 = v0[241];
  v10 = v0[181];
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  SELFUtils.recordRequestCanceled()();
  v22 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v22, v6, v5, v10);

  (*(v8 + 8))(v13, v9);

  outlined destroy of OnScreenContent.Document?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 8))(v18, v17);
  v21(v20, v19);

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 2408) = v0;

  if (v0)
  {
    v3 = v2[207];

    outlined destroy of OnScreenContent.Document?(v3, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    outlined destroy of ModelOrchestrator((v2 + 121));
    v4 = v2[269];
    v5 = v2[268];
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v7 = v2[207];

    outlined destroy of OnScreenContent.Document?(v7, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    outlined destroy of ModelOrchestrator((v2 + 121));
    v4 = v2[269];
    v5 = v2[268];
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v141 = v0;
  v1 = *(v0 + 1760);

  outlined destroy of DocumentInfo(v1, type metadata accessor for UploadableImageData);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1792);
  outlined init with take of SelectedContent(*(v0 + 1816), v2, type metadata accessor for ModelResponse);
  outlined init with copy of ScreenContent(v2, v3, type metadata accessor for ModelResponse);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1792);
  if (v6)
  {
    v8 = *(v0 + 1784);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v135[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v135);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v135);
    *(v9 + 22) = 2080;
    outlined init with copy of ScreenContent(v7, v8, type metadata accessor for ModelResponse);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    outlined destroy of DocumentInfo(v7, type metadata accessor for ModelResponse);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v135);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s gms response: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v10, -1, -1);
    MEMORY[0x253057F40](v9, -1, -1);
  }

  else
  {

    outlined destroy of DocumentInfo(v7, type metadata accessor for ModelResponse);
  }

  v15 = *(v0 + 2376);
  v16 = *(v0 + 2368);
  v17 = *(v0 + 2288);
  v18 = *(v0 + 2240);
  partnerName = *(v0 + 2232);
  partnerName_8 = *(v0 + 1960);
  v19 = *(v0 + 1776);
  v20 = *(v0 + 1768);
  v21 = *(v0 + 1616);
  v116 = *(v0 + 1824);
  v22 = *(v0 + 1608);
  v123 = *(v0 + 1600);
  v127 = *(v0 + 1592);
  v23 = *(v0 + 1576);
  v24 = *(v0 + 1472);
  v25 = *(v0 + 128);
  v135[6] = *(v0 + 112);
  v135[7] = v25;
  v136 = *(v0 + 144);
  v26 = *(v0 + 64);
  v135[2] = *(v0 + 48);
  v135[3] = v26;
  v27 = *(v0 + 96);
  v135[4] = *(v0 + 80);
  v135[5] = v27;
  v28 = *(v0 + 32);
  v135[0] = *(v0 + 16);
  v135[1] = v28;
  v137 = v16;
  v138 = v15;
  v139 = 0;
  v140 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v137);
  outlined consume of GenerativeAssistantProgressLevel(v137, v138, v139, v140);
  outlined init with copy of ScreenContent(v116, v19, type metadata accessor for ModelResponse);
  LOBYTE(v116) = *(v24 + 41);
  (*(v22 + 16))(v21, v24 + *(v17 + 32), v123);
  LODWORD(v22) = *(v24 + *(v17 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v135[0]) = 44;

  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v30.value._countAndFlagsBits = partnerName;
  v30.value._object = v18;
  v31 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v135, v30, v29);

  *(v0 + 1088) = xmmword_24FE1ADF0;
  *(v0 + 1104) = 5;
  *(v0 + 1112) = v31;
  *(v0 + 1128) = partnerName;
  v120 = v18;
  *(v0 + 1136) = v18;
  outlined init with copy of DialogConfig(v0 + 1088, v0 + 1200);

  LOBYTE(v135[0]) = v116;
  v117 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v135, v21, v0 + 1088, v22);
  outlined destroy of DialogConfig(v0 + 1088);
  v32 = (v19 + v20[14]);
  v97 = *v32;
  v93 = v32[1];
  v94 = v19[4];
  v33 = *v19;
  v34 = MEMORY[0x277D84F90];
  if (*(v19 + v20[9]))
  {
    v34 = *(v19 + v20[9]);
  }

  v98 = v34;
  outlined init with copy of Date?(v19 + v20[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v111 = v19[1];
  v105 = *(v19 + v20[10]);
  v108 = *(v19 + v20[11]);
  v35 = (v19 + v20[12]);
  v36 = *v35;
  v37 = v35[1];
  v38 = (v19 + v20[13]);
  v100 = v36;
  v102 = *v38;
  v95 = v19[2];
  v96 = v38[1];
  *(v0 + 1280) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 1288) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 1256));

  v39 = v33;

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v40 = (v127 + v23[14]);
  swift_initStaticObject();
  LOBYTE(v135[0]) = 49;
  v41 = MEMORY[0x277D84F90];
  v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v43 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v135, 0, v42);

  *v40 = v43;
  v44 = v39;
  *v127 = v97;
  *(v127 + 8) = v93;
  *(v127 + 16) = v39;
  *(v127 + 24) = v117;
  *(v127 + 32) = 64;
  *(v127 + 40) = v94;
  *(v127 + 48) = v41;
  *(v127 + v23[15]) = v98;
  *(v127 + v23[12]) = 0;
  v45 = (v127 + v23[13]);
  *v45 = partnerName;
  v45[1] = v120;
  outlined init with copy of Date?(partnerName_8, v127 + v23[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v46 = (v127 + v23[11]);
  *v46 = v111;
  v46[1] = v95;
  *(v127 + v23[16]) = v105;
  *(v127 + v23[17]) = v108;
  v47 = (v127 + v23[18]);
  *v47 = v100;
  v47[1] = v37;
  v48 = (v127 + v23[19]);
  *v48 = v102;
  v48[1] = v96;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1256, v127 + v23[21]);
  *(v127 + v23[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    partnerNameb = *(v0 + 2088);
    partnerName_8b = *(v0 + 2120);
    v125 = *(v0 + 2080);
    v128 = *(v0 + 2096);
    v74 = *(v0 + 2072);
    v118 = *(v0 + 1976);
    v121 = *(v0 + 2064);
    v75 = *(v0 + 1960);
    v76 = *(v0 + 1936);
    v112 = *(v0 + 1928);
    v114 = *(v0 + 1952);
    v77 = *(v0 + 1856);
    v106 = *(v0 + 1848);
    v109 = *(v0 + 1864);
    v103 = *(v0 + 1840);
    v78 = *(v0 + 1824);
    v79 = *(v0 + 1776);
    v80 = *(v0 + 1616);
    v81 = *(v0 + 1608);
    v82 = *(v0 + 1600);

    outlined destroy of OnScreenContent.Document?(v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v81 + 8))(v80, v82);
    outlined destroy of DocumentInfo(v79, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v78, type metadata accessor for ModelResponse);
    outlined destroy of OnScreenContent.Document?(v103, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    (*(v77 + 8))(v109, v106);
    (*(v76 + 8))(v114, v112);

    outlined destroy of OnScreenContent.Document?(v118, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v74 + 8))(v125, v121);
LABEL_23:
    (*(v128 + 8))(partnerName_8b, partnerNameb);
    v91 = *(v0 + 1592);
    outlined init with copy of ScreenContent(v91, *(v0 + 1448), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1256));
    outlined destroy of DocumentInfo(v91, type metadata accessor for GeneratedResponse);

    v92 = *(v0 + 8);

    return v92();
  }

  v49 = *(v0 + 1592);
  v50 = *(v0 + 1544);
  v51 = *(v0 + 1536);
  v124 = *(v0 + 1520);
  partnerName_8a = *(v0 + 1512);
  v52._countAndFlagsBits = v97;
  v52._object = v93;
  v53 = GeneratedResponse.updateText(_:)(v52);

  *v49 = v53._countAndFlagsBits;
  *(v127 + 8) = v53._object;
  v54 = v39[2];
  v55 = (v50 + 56);
  v56 = (v50 + 48);

  v58 = 0;
  partnerNamea = v44;
  while (v58 == v54)
  {
    v59 = 1;
    v58 = v54;
LABEL_12:
    v64 = *(v0 + 1568);
    v65 = *(v0 + 1560);
    v66 = *(v0 + 1536);
    (*v55)(v65, v59, 1, v66);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v65, v64, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v56)(v64, 1, v66) == 1)
    {
      v83 = *(v0 + 2280);
      partnerNameb = *(v0 + 2088);
      partnerName_8b = *(v0 + 2120);
      v126 = *(v0 + 2080);
      v128 = *(v0 + 2096);
      v119 = *(v0 + 2072);
      v122 = *(v0 + 2064);
      v84 = *(v0 + 1960);
      v113 = *(v0 + 1952);
      v115 = *(v0 + 1976);
      v85 = *(v0 + 1936);
      v107 = *(v0 + 1864);
      v110 = *(v0 + 1928);
      v86 = *(v0 + 1856);
      v101 = *(v0 + 1840);
      v104 = *(v0 + 1848);
      v99 = *(v0 + 1824);
      v87 = *(v0 + 1776);
      v88 = *(v0 + 1616);
      v89 = *(v0 + 1608);
      v90 = *(v0 + 1600);

      outlined destroy of OnScreenContent.Document?(v84, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v89 + 8))(v88, v90);
      outlined destroy of DocumentInfo(v87, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v99, type metadata accessor for ModelResponse);
      outlined destroy of OnScreenContent.Document?(v101, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
      (*(v86 + 8))(v107, v104);
      (*(v85 + 8))(v113, v110);

      outlined destroy of OnScreenContent.Document?(v115, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v119 + 8))(v126, v122);
      goto LABEL_23;
    }

    v67 = *(v0 + 1568);
    v68 = *v67;
    outlined init with take of SelectedContent(v67 + *(v51 + 48), *(v0 + 1528), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v70 = *(v0 + 1528);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v70, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v71 = *(v0 + 1520);
      outlined destroy of DocumentInfo(v70, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v71 = v53._countAndFlagsBits;
      *(v124 + 8) = v53._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v72 = partnerNamea;
        if ((v68 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v72 = result;
        if ((v68 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v68 >= *(v72 + 16))
      {
        goto LABEL_27;
      }

      v73 = v72;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1520), v72 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v68);
      partnerNamea = v73;
      *(v127 + 16) = v73;
    }
  }

  if (v58 < v44[2])
  {
    v60 = *(v0 + 1560);
    v61 = *(v0 + 1552);
    v62 = v44 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v58;
    v63 = *(v51 + 48);
    *v61 = v58;
    outlined init with copy of ScreenContent(v62, v61 + v63, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v61, v60, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v59 = 0;
    ++v58;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v2 = *v1;
  (*v1)[303] = v0;

  if (v0)
  {
    v3 = v2[206];

    outlined destroy of OnScreenContent.Document?(v3, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[269];
    v5 = v2[268];
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[206], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[269];
    v5 = v2[268];
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v140 = v0;

  v1 = *(v0 + 1824);
  v2 = *(v0 + 1792);
  outlined init with take of SelectedContent(*(v0 + 1808), v1, type metadata accessor for ModelResponse);
  outlined init with copy of ScreenContent(v1, v2, type metadata accessor for ModelResponse);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1792);
  if (v5)
  {
    v7 = *(v0 + 1784);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v134[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v134);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v134);
    *(v8 + 22) = 2080;
    outlined init with copy of ScreenContent(v6, v7, type metadata accessor for ModelResponse);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    outlined destroy of DocumentInfo(v6, type metadata accessor for ModelResponse);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v134);

    *(v8 + 24) = v13;
    _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s gms response: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v8, -1, -1);
  }

  else
  {

    outlined destroy of DocumentInfo(v6, type metadata accessor for ModelResponse);
  }

  v14 = *(v0 + 2376);
  v15 = *(v0 + 2368);
  v16 = *(v0 + 2288);
  v17 = *(v0 + 2240);
  partnerName = *(v0 + 2232);
  partnerName_8 = *(v0 + 1960);
  v18 = *(v0 + 1776);
  v19 = *(v0 + 1768);
  v20 = *(v0 + 1616);
  v115 = *(v0 + 1824);
  v21 = *(v0 + 1608);
  v122 = *(v0 + 1600);
  v126 = *(v0 + 1592);
  v22 = *(v0 + 1576);
  v23 = *(v0 + 1472);
  v24 = *(v0 + 128);
  v134[6] = *(v0 + 112);
  v134[7] = v24;
  v135 = *(v0 + 144);
  v25 = *(v0 + 64);
  v134[2] = *(v0 + 48);
  v134[3] = v25;
  v26 = *(v0 + 96);
  v134[4] = *(v0 + 80);
  v134[5] = v26;
  v27 = *(v0 + 32);
  v134[0] = *(v0 + 16);
  v134[1] = v27;
  v136 = v15;
  v137 = v14;
  v138 = 0;
  v139 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v136);
  outlined consume of GenerativeAssistantProgressLevel(v136, v137, v138, v139);
  outlined init with copy of ScreenContent(v115, v18, type metadata accessor for ModelResponse);
  LOBYTE(v115) = *(v23 + 41);
  (*(v21 + 16))(v20, v23 + *(v16 + 32), v122);
  LODWORD(v21) = *(v23 + *(v16 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v134[0]) = 44;

  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v29.value._countAndFlagsBits = partnerName;
  v29.value._object = v17;
  v30 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v134, v29, v28);

  *(v0 + 1088) = xmmword_24FE1ADF0;
  *(v0 + 1104) = 5;
  *(v0 + 1112) = v30;
  *(v0 + 1128) = partnerName;
  v119 = v17;
  *(v0 + 1136) = v17;
  outlined init with copy of DialogConfig(v0 + 1088, v0 + 1200);

  LOBYTE(v134[0]) = v115;
  v116 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v134, v20, v0 + 1088, v21);
  outlined destroy of DialogConfig(v0 + 1088);
  v31 = (v18 + v19[14]);
  v96 = *v31;
  v92 = v31[1];
  v93 = v18[4];
  v32 = *v18;
  v33 = MEMORY[0x277D84F90];
  if (*(v18 + v19[9]))
  {
    v33 = *(v18 + v19[9]);
  }

  v97 = v33;
  outlined init with copy of Date?(v18 + v19[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v110 = v18[1];
  v104 = *(v18 + v19[10]);
  v107 = *(v18 + v19[11]);
  v34 = (v18 + v19[12]);
  v35 = *v34;
  v36 = v34[1];
  v37 = (v18 + v19[13]);
  v99 = v35;
  v101 = *v37;
  v94 = v18[2];
  v95 = v37[1];
  *(v0 + 1280) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 1288) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 1256));

  v38 = v32;

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v39 = (v126 + v22[14]);
  swift_initStaticObject();
  LOBYTE(v134[0]) = 49;
  v40 = MEMORY[0x277D84F90];
  v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v42 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v134, 0, v41);

  *v39 = v42;
  v43 = v38;
  *v126 = v96;
  *(v126 + 8) = v92;
  *(v126 + 16) = v38;
  *(v126 + 24) = v116;
  *(v126 + 32) = 64;
  *(v126 + 40) = v93;
  *(v126 + 48) = v40;
  *(v126 + v22[15]) = v97;
  *(v126 + v22[12]) = 0;
  v44 = (v126 + v22[13]);
  *v44 = partnerName;
  v44[1] = v119;
  outlined init with copy of Date?(partnerName_8, v126 + v22[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v45 = (v126 + v22[11]);
  *v45 = v110;
  v45[1] = v94;
  *(v126 + v22[16]) = v104;
  *(v126 + v22[17]) = v107;
  v46 = (v126 + v22[18]);
  *v46 = v99;
  v46[1] = v36;
  v47 = (v126 + v22[19]);
  *v47 = v101;
  v47[1] = v95;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1256, v126 + v22[21]);
  *(v126 + v22[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    partnerNameb = *(v0 + 2088);
    partnerName_8b = *(v0 + 2120);
    v124 = *(v0 + 2080);
    v127 = *(v0 + 2096);
    v73 = *(v0 + 2072);
    v117 = *(v0 + 1976);
    v120 = *(v0 + 2064);
    v74 = *(v0 + 1960);
    v75 = *(v0 + 1936);
    v111 = *(v0 + 1928);
    v113 = *(v0 + 1952);
    v76 = *(v0 + 1856);
    v105 = *(v0 + 1848);
    v108 = *(v0 + 1864);
    v102 = *(v0 + 1840);
    v77 = *(v0 + 1824);
    v78 = *(v0 + 1776);
    v79 = *(v0 + 1616);
    v80 = *(v0 + 1608);
    v81 = *(v0 + 1600);

    outlined destroy of OnScreenContent.Document?(v74, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v80 + 8))(v79, v81);
    outlined destroy of DocumentInfo(v78, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v77, type metadata accessor for ModelResponse);
    outlined destroy of OnScreenContent.Document?(v102, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    (*(v76 + 8))(v108, v105);
    (*(v75 + 8))(v113, v111);

    outlined destroy of OnScreenContent.Document?(v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v73 + 8))(v124, v120);
LABEL_23:
    (*(v127 + 8))(partnerName_8b, partnerNameb);
    v90 = *(v0 + 1592);
    outlined init with copy of ScreenContent(v90, *(v0 + 1448), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1256));
    outlined destroy of DocumentInfo(v90, type metadata accessor for GeneratedResponse);

    v91 = *(v0 + 8);

    return v91();
  }

  v48 = *(v0 + 1592);
  v49 = *(v0 + 1544);
  v50 = *(v0 + 1536);
  v123 = *(v0 + 1520);
  partnerName_8a = *(v0 + 1512);
  v51._countAndFlagsBits = v96;
  v51._object = v92;
  v52 = GeneratedResponse.updateText(_:)(v51);

  *v48 = v52._countAndFlagsBits;
  *(v126 + 8) = v52._object;
  v53 = v38[2];
  v54 = (v49 + 56);
  v55 = (v49 + 48);

  v57 = 0;
  partnerNamea = v43;
  while (v57 == v53)
  {
    v58 = 1;
    v57 = v53;
LABEL_12:
    v63 = *(v0 + 1568);
    v64 = *(v0 + 1560);
    v65 = *(v0 + 1536);
    (*v54)(v64, v58, 1, v65);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v64, v63, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v55)(v63, 1, v65) == 1)
    {
      v82 = *(v0 + 2280);
      partnerNameb = *(v0 + 2088);
      partnerName_8b = *(v0 + 2120);
      v125 = *(v0 + 2080);
      v127 = *(v0 + 2096);
      v118 = *(v0 + 2072);
      v121 = *(v0 + 2064);
      v83 = *(v0 + 1960);
      v112 = *(v0 + 1952);
      v114 = *(v0 + 1976);
      v84 = *(v0 + 1936);
      v106 = *(v0 + 1864);
      v109 = *(v0 + 1928);
      v85 = *(v0 + 1856);
      v100 = *(v0 + 1840);
      v103 = *(v0 + 1848);
      v98 = *(v0 + 1824);
      v86 = *(v0 + 1776);
      v87 = *(v0 + 1616);
      v88 = *(v0 + 1608);
      v89 = *(v0 + 1600);

      outlined destroy of OnScreenContent.Document?(v83, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v88 + 8))(v87, v89);
      outlined destroy of DocumentInfo(v86, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v98, type metadata accessor for ModelResponse);
      outlined destroy of OnScreenContent.Document?(v100, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
      (*(v85 + 8))(v106, v103);
      (*(v84 + 8))(v112, v109);

      outlined destroy of OnScreenContent.Document?(v114, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v118 + 8))(v125, v121);
      goto LABEL_23;
    }

    v66 = *(v0 + 1568);
    v67 = *v66;
    outlined init with take of SelectedContent(v66 + *(v50 + 48), *(v0 + 1528), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v69 = *(v0 + 1528);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v69, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v70 = *(v0 + 1520);
      outlined destroy of DocumentInfo(v69, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v70 = v52._countAndFlagsBits;
      *(v123 + 8) = v52._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v71 = partnerNamea;
        if ((v67 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v71 = result;
        if ((v67 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v67 >= *(v71 + 16))
      {
        goto LABEL_27;
      }

      v72 = v71;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1520), v71 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v67);
      partnerNamea = v72;
      *(v126 + 16) = v72;
    }
  }

  if (v57 < v43[2])
  {
    v59 = *(v0 + 1560);
    v60 = *(v0 + 1552);
    v61 = v43 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v57;
    v62 = *(v50 + 48);
    *v60 = v57;
    outlined init with copy of ScreenContent(v61, v60 + v62, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v60, v59, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v58 = 0;
    ++v57;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v2 = *v1;
  (*v1)[305] = v0;

  if (v0)
  {
    v3 = v2[205];

    outlined destroy of OnScreenContent.Document?(v3, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[269];
    v5 = v2[268];
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[205], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[269];
    v5 = v2[268];
    v6 = GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v141 = v0;
  v1 = *(v0 + 1632);

  outlined destroy of DocumentInfo(v1, type metadata accessor for UploadableDocumentData);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1792);
  outlined init with take of SelectedContent(*(v0 + 1800), v2, type metadata accessor for ModelResponse);
  outlined init with copy of ScreenContent(v2, v3, type metadata accessor for ModelResponse);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1792);
  if (v6)
  {
    v8 = *(v0 + 1784);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v135[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v135);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006CLL, 0x800000024FE20120, v135);
    *(v9 + 22) = 2080;
    outlined init with copy of ScreenContent(v7, v8, type metadata accessor for ModelResponse);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    outlined destroy of DocumentInfo(v7, type metadata accessor for ModelResponse);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v135);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s gms response: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v10, -1, -1);
    MEMORY[0x253057F40](v9, -1, -1);
  }

  else
  {

    outlined destroy of DocumentInfo(v7, type metadata accessor for ModelResponse);
  }

  v15 = *(v0 + 2376);
  v16 = *(v0 + 2368);
  v17 = *(v0 + 2288);
  v18 = *(v0 + 2240);
  partnerName = *(v0 + 2232);
  partnerName_8 = *(v0 + 1960);
  v19 = *(v0 + 1776);
  v20 = *(v0 + 1768);
  v21 = *(v0 + 1616);
  v116 = *(v0 + 1824);
  v22 = *(v0 + 1608);
  v123 = *(v0 + 1600);
  v127 = *(v0 + 1592);
  v23 = *(v0 + 1576);
  v24 = *(v0 + 1472);
  v25 = *(v0 + 128);
  v135[6] = *(v0 + 112);
  v135[7] = v25;
  v136 = *(v0 + 144);
  v26 = *(v0 + 64);
  v135[2] = *(v0 + 48);
  v135[3] = v26;
  v27 = *(v0 + 96);
  v135[4] = *(v0 + 80);
  v135[5] = v27;
  v28 = *(v0 + 32);
  v135[0] = *(v0 + 16);
  v135[1] = v28;
  v137 = v16;
  v138 = v15;
  v139 = 0;
  v140 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v137);
  outlined consume of GenerativeAssistantProgressLevel(v137, v138, v139, v140);
  outlined init with copy of ScreenContent(v116, v19, type metadata accessor for ModelResponse);
  LOBYTE(v116) = *(v24 + 41);
  (*(v22 + 16))(v21, v24 + *(v17 + 32), v123);
  LODWORD(v22) = *(v24 + *(v17 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v135[0]) = 44;

  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v30.value._countAndFlagsBits = partnerName;
  v30.value._object = v18;
  v31 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v135, v30, v29);

  *(v0 + 1088) = xmmword_24FE1ADF0;
  *(v0 + 1104) = 5;
  *(v0 + 1112) = v31;
  *(v0 + 1128) = partnerName;
  v120 = v18;
  *(v0 + 1136) = v18;
  outlined init with copy of DialogConfig(v0 + 1088, v0 + 1200);

  LOBYTE(v135[0]) = v116;
  v117 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v135, v21, v0 + 1088, v22);
  outlined destroy of DialogConfig(v0 + 1088);
  v32 = (v19 + v20[14]);
  v97 = *v32;
  v93 = v32[1];
  v94 = v19[4];
  v33 = *v19;
  v34 = MEMORY[0x277D84F90];
  if (*(v19 + v20[9]))
  {
    v34 = *(v19 + v20[9]);
  }

  v98 = v34;
  outlined init with copy of Date?(v19 + v20[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v111 = v19[1];
  v105 = *(v19 + v20[10]);
  v108 = *(v19 + v20[11]);
  v35 = (v19 + v20[12]);
  v36 = *v35;
  v37 = v35[1];
  v38 = (v19 + v20[13]);
  v100 = v36;
  v102 = *v38;
  v95 = v19[2];
  v96 = v38[1];
  *(v0 + 1280) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 1288) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 1256));

  v39 = v33;

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v40 = (v127 + v23[14]);
  swift_initStaticObject();
  LOBYTE(v135[0]) = 49;
  v41 = MEMORY[0x277D84F90];
  v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v43 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v135, 0, v42);

  *v40 = v43;
  v44 = v39;
  *v127 = v97;
  *(v127 + 8) = v93;
  *(v127 + 16) = v39;
  *(v127 + 24) = v117;
  *(v127 + 32) = 64;
  *(v127 + 40) = v94;
  *(v127 + 48) = v41;
  *(v127 + v23[15]) = v98;
  *(v127 + v23[12]) = 0;
  v45 = (v127 + v23[13]);
  *v45 = partnerName;
  v45[1] = v120;
  outlined init with copy of Date?(partnerName_8, v127 + v23[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v46 = (v127 + v23[11]);
  *v46 = v111;
  v46[1] = v95;
  *(v127 + v23[16]) = v105;
  *(v127 + v23[17]) = v108;
  v47 = (v127 + v23[18]);
  *v47 = v100;
  v47[1] = v37;
  v48 = (v127 + v23[19]);
  *v48 = v102;
  v48[1] = v96;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1256, v127 + v23[21]);
  *(v127 + v23[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    partnerNameb = *(v0 + 2088);
    partnerName_8b = *(v0 + 2120);
    v125 = *(v0 + 2080);
    v128 = *(v0 + 2096);
    v74 = *(v0 + 2072);
    v118 = *(v0 + 1976);
    v121 = *(v0 + 2064);
    v75 = *(v0 + 1960);
    v76 = *(v0 + 1936);
    v112 = *(v0 + 1928);
    v114 = *(v0 + 1952);
    v77 = *(v0 + 1856);
    v106 = *(v0 + 1848);
    v109 = *(v0 + 1864);
    v103 = *(v0 + 1840);
    v78 = *(v0 + 1824);
    v79 = *(v0 + 1776);
    v80 = *(v0 + 1616);
    v81 = *(v0 + 1608);
    v82 = *(v0 + 1600);

    outlined destroy of OnScreenContent.Document?(v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v81 + 8))(v80, v82);
    outlined destroy of DocumentInfo(v79, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v78, type metadata accessor for ModelResponse);
    outlined destroy of OnScreenContent.Document?(v103, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
    (*(v77 + 8))(v109, v106);
    (*(v76 + 8))(v114, v112);

    outlined destroy of OnScreenContent.Document?(v118, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v74 + 8))(v125, v121);
LABEL_23:
    (*(v128 + 8))(partnerName_8b, partnerNameb);
    v91 = *(v0 + 1592);
    outlined init with copy of ScreenContent(v91, *(v0 + 1448), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1256));
    outlined destroy of DocumentInfo(v91, type metadata accessor for GeneratedResponse);

    v92 = *(v0 + 8);

    return v92();
  }

  v49 = *(v0 + 1592);
  v50 = *(v0 + 1544);
  v51 = *(v0 + 1536);
  v124 = *(v0 + 1520);
  partnerName_8a = *(v0 + 1512);
  v52._countAndFlagsBits = v97;
  v52._object = v93;
  v53 = GeneratedResponse.updateText(_:)(v52);

  *v49 = v53._countAndFlagsBits;
  *(v127 + 8) = v53._object;
  v54 = v39[2];
  v55 = (v50 + 56);
  v56 = (v50 + 48);

  v58 = 0;
  partnerNamea = v44;
  while (v58 == v54)
  {
    v59 = 1;
    v58 = v54;
LABEL_12:
    v64 = *(v0 + 1568);
    v65 = *(v0 + 1560);
    v66 = *(v0 + 1536);
    (*v55)(v65, v59, 1, v66);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v65, v64, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v56)(v64, 1, v66) == 1)
    {
      v83 = *(v0 + 2280);
      partnerNameb = *(v0 + 2088);
      partnerName_8b = *(v0 + 2120);
      v126 = *(v0 + 2080);
      v128 = *(v0 + 2096);
      v119 = *(v0 + 2072);
      v122 = *(v0 + 2064);
      v84 = *(v0 + 1960);
      v113 = *(v0 + 1952);
      v115 = *(v0 + 1976);
      v85 = *(v0 + 1936);
      v107 = *(v0 + 1864);
      v110 = *(v0 + 1928);
      v86 = *(v0 + 1856);
      v101 = *(v0 + 1840);
      v104 = *(v0 + 1848);
      v99 = *(v0 + 1824);
      v87 = *(v0 + 1776);
      v88 = *(v0 + 1616);
      v89 = *(v0 + 1608);
      v90 = *(v0 + 1600);

      outlined destroy of OnScreenContent.Document?(v84, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v89 + 8))(v88, v90);
      outlined destroy of DocumentInfo(v87, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v99, type metadata accessor for ModelResponse);
      outlined destroy of OnScreenContent.Document?(v101, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
      (*(v86 + 8))(v107, v104);
      (*(v85 + 8))(v113, v110);

      outlined destroy of OnScreenContent.Document?(v115, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v119 + 8))(v126, v122);
      goto LABEL_23;
    }

    v67 = *(v0 + 1568);
    v68 = *v67;
    outlined init with take of SelectedContent(v67 + *(v51 + 48), *(v0 + 1528), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v70 = *(v0 + 1528);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v70, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v71 = *(v0 + 1520);
      outlined destroy of DocumentInfo(v70, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v71 = v53._countAndFlagsBits;
      *(v124 + 8) = v53._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v72 = partnerNamea;
        if ((v68 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v72 = result;
        if ((v68 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v68 >= *(v72 + 16))
      {
        goto LABEL_27;
      }

      v73 = v72;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1520), v72 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v68);
      partnerNamea = v73;
      *(v127 + 16) = v73;
    }
  }

  if (v58 < v44[2])
  {
    v60 = *(v0 + 1560);
    v61 = *(v0 + 1552);
    v62 = v44 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v58;
    v63 = *(v51 + 48);
    *v61 = v58;
    outlined init with copy of ScreenContent(v62, v61 + v63, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v61, v60, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v59 = 0;
    ++v58;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = v0[285];
  v17 = v0[265];
  v18 = v0[274];
  v16 = v0[261];
  v15 = v0[260];
  v2 = v0[259];
  v14 = v0[258];
  v12 = v0[244];
  v13 = v0[247];
  v3 = v0[242];
  v4 = v0[241];
  v5 = v0[233];
  v6 = v0[232];
  v7 = v0[231];
  v8 = v0[230];
  v9 = v0[220];

  outlined destroy of DocumentInfo(v9, type metadata accessor for UploadableImageData);
  outlined destroy of OnScreenContent.Document?(v8, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v12, v4);

  outlined destroy of OnScreenContent.Document?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v2 + 8))(v15, v14);
  v18(v17, v16);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[285];
  v16 = v0[265];
  v17 = v0[274];
  v15 = v0[261];
  v2 = v0[259];
  v13 = v0[258];
  v14 = v0[260];
  v12 = v0[247];
  v3 = v0[244];
  v4 = v0[242];
  v5 = v0[241];
  v6 = v0[233];
  v7 = v0[232];
  v8 = v0[231];
  v9 = v0[230];

  outlined destroy of OnScreenContent.Document?(v9, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  outlined destroy of OnScreenContent.Document?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v2 + 8))(v14, v13);
  v17(v16, v15);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[285];
  v17 = v0[265];
  v18 = v0[274];
  v16 = v0[261];
  v2 = v0[259];
  v14 = v0[258];
  v15 = v0[260];
  v12 = v0[244];
  v13 = v0[247];
  v3 = v0[242];
  v4 = v0[241];
  v5 = v0[233];
  v6 = v0[232];
  v7 = v0[231];
  v8 = v0[230];
  v9 = v0[204];

  outlined destroy of DocumentInfo(v9, type metadata accessor for UploadableDocumentData);
  outlined destroy of OnScreenContent.Document?(v8, &_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v12, v4);

  outlined destroy of OnScreenContent.Document?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v2 + 8))(v15, v14);
  v18(v17, v16);

  v10 = v0[1];

  return v10();
}