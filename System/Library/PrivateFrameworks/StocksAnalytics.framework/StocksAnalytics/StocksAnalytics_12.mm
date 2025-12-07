uint64_t sub_22034A164(unsigned __int8 a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A284(unsigned __int8 a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A384(unsigned __int8 a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A484(unsigned __int8 a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A594(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A6EC(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A824(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034A990(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034AAAC(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034ABE8(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034ACF4(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034ADF0(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034AF08(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22034AFF8(uint64_t a1, unsigned __int8 a2)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

StocksAnalytics::AdJournalEntryStatus_optional __swiftcall AdJournalEntryStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdJournalEntryStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64657461657263;
  v3 = 0x6564726163736964;
  v4 = 0x656C6C69666C7566;
  if (v1 != 4)
  {
    v4 = 0x65746E6573657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 1)
  {
    v5 = 0x676E69646E6570;
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

unint64_t sub_22034B224()
{
  result = qword_27CF29420;
  if (!qword_27CF29420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29420);
  }

  return result;
}

uint64_t sub_22034B280(uint64_t a1)
{
  sub_22036FB08();
}

void sub_22034B38C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64657461657263;
  v5 = 0x6564726163736964;
  v6 = 0x656C6C69666C7566;
  if (v2 != 4)
  {
    v6 = 0x65746E6573657270;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (v2 != 1)
  {
    v8 = 0x676E69646E6570;
    v7 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_22034B514()
{
  result = qword_281264358;
  if (!qword_281264358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264358);
  }

  return result;
}

uint64_t sub_22034B630()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29458);
  __swift_project_value_buffer(v0, qword_27CF29458);
  return sub_22036F108();
}

uint64_t OutboundLinkTapEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OutboundLinkTapEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OutboundLinkTapEvent(0) + 20);
  sub_22034B7F0(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22034B7F0(uint64_t a1)
{
  if (!qword_27CF29470)
  {
    sub_2202959D0();
    sub_220295A28();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF29470);
    }
  }
}

uint64_t OutboundLinkTapEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OutboundLinkTapEvent(0) + 20);
  sub_22034B7F0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OutboundLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for OutboundLinkTapEvent(0) + 20);
  sub_22034B7F0(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t OutboundLinkTapEvent.Model.linkData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for OutboundLinkTapEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t OutboundLinkTapEvent.Model.init(eventData:linkData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for OutboundLinkTapEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_22034BAC8()
{
  if (*v0)
  {
    return 0x617461446B6E696CLL;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_22034BB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22034BBEC(uint64_t a1)
{
  v2 = sub_22034BE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22034BC28(uint64_t a1)
{
  v2 = sub_22034BE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OutboundLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22034C1DC(0, &qword_27CF29478, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034BE30();
  sub_220370168();
  v11[15] = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for OutboundLinkTapEvent.Model(0) + 20));
    v11[13] = 1;
    sub_220295A28();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22034BE30()
{
  result = qword_27CF29480;
  if (!qword_27CF29480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29480);
  }

  return result;
}

uint64_t OutboundLinkTapEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_22036F388();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22034C1DC(0, &qword_27CF29488, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for OutboundLinkTapEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034BE30();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v20 = v12;
  v13 = v22;
  v28 = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v14 = v25;
  v15 = v23;
  sub_22036FF28();
  v16 = v20;
  (*(v13 + 32))(v20, v5, v14);
  v26 = 1;
  sub_2202959D0();
  sub_22036FF28();
  (*(v24 + 8))(v9, v15);
  *(v16 + *(v19 + 20)) = v27;
  sub_22034C240(v16, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22034C2A4(v16);
}

void sub_22034C1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22034BE30();
    v7 = a3(a1, &type metadata for OutboundLinkTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22034C240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutboundLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22034C2A4(uint64_t a1)
{
  v2 = type metadata accessor for OutboundLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22034C3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_22034B7F0(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_22034C4C0(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22034B7F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22034C56C(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22034C5F4()
{
  result = qword_27CF294B0;
  if (!qword_27CF294B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF294B0);
  }

  return result;
}

unint64_t sub_22034C64C()
{
  result = qword_27CF294B8;
  if (!qword_27CF294B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF294B8);
  }

  return result;
}

unint64_t sub_22034C6A4()
{
  result = qword_27CF294C0;
  if (!qword_27CF294C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF294C0);
  }

  return result;
}

uint64_t sub_22034C7C0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF294F8);
  __swift_project_value_buffer(v0, qword_27CF294F8);
  return sub_22036F108();
}

uint64_t MediaViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 24);
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 24);
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 28);
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 28);
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 32);
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 32);
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 36);
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 36);
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 40);
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 40);
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 44);
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 44);
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 48);
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C, &type metadata for GalleryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.galleryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 48);
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C, &type metadata for GalleryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 52);
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 52);
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 56);
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 56);
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 60);
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaViewEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaViewEvent(0) + 60);
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaViewEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C, &type metadata for GalleryData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v10, v27);
}

uint64_t sub_22034E0A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t MediaViewEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

void MediaViewEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

uint64_t MediaViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t MediaViewEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 36));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t MediaViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaViewEvent.Model.anfComponentData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22027C714(v4, v5);
}

uint64_t MediaViewEvent.Model.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 48);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t MediaViewEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaViewEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

uint64_t MediaViewEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaViewEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

__n128 MediaViewEvent.Model.init(eventData:timedData:newsArticleData:groupData:feedData:mediaData:viewData:anfComponentData:galleryData:issueData:channelData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t *a11, __n128 *a12, char *a13)
{
  v18 = *(a4 + 4);
  v19 = *(a4 + 5);
  v41 = *a5;
  v20 = *(a5 + 2);
  v21 = *(a6 + 1);
  v43 = *(a6 + 2);
  v42 = *(a6 + 6);
  v22 = a6[28];
  v46 = a7[1];
  v47 = *a7;
  v44 = *a6;
  v45 = *(a7 + 8);
  v48 = a8[1];
  v49 = *a8;
  v52 = *a10;
  v51 = *(a10 + 2);
  v50 = *(a10 + 6);
  v54 = *a11;
  v53 = a11[1];
  v59 = *a12;
  v57 = a12[1].n128_u64[1];
  v58 = a12[1].n128_u64[0];
  v55 = a12[2].n128_u8[1];
  v56 = a12[2].n128_u8[0];
  v60 = *a13;
  v23 = sub_22036F388();
  v39 = a4[1];
  v40 = *a4;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for MediaViewEvent.Model(0);
  v25 = v24[5];
  v26 = sub_22036F3C8();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = a9 + v24[6];
  v28 = *(a3 + 48);
  *(v27 + 32) = *(a3 + 32);
  *(v27 + 48) = v28;
  *(v27 + 64) = *(a3 + 64);
  v29 = *(a3 + 16);
  *v27 = *a3;
  *(v27 + 16) = v29;
  v30 = a9 + v24[7];
  *v30 = v40;
  *(v30 + 16) = v39;
  *(v30 + 32) = v18;
  *(v30 + 40) = v19;
  v31 = a9 + v24[8];
  *v31 = v41;
  *(v31 + 16) = v20;
  v32 = a9 + v24[9];
  *v32 = v44;
  *(v32 + 8) = v21;
  *(v32 + 16) = v43;
  *(v32 + 24) = v42;
  *(v32 + 28) = v22;
  v33 = a9 + v24[10];
  *v33 = v47;
  *(v33 + 8) = v46;
  *(v33 + 16) = v45;
  v34 = (a9 + v24[11]);
  *v34 = v49;
  v34[1] = v48;
  v35 = a9 + v24[12];
  *v35 = v52;
  *(v35 + 16) = v51;
  *(v35 + 24) = v50;
  v36 = (a9 + v24[13]);
  *v36 = v54;
  v36[1] = v53;
  v37 = (a9 + v24[14]);
  result = v59;
  *v37 = v59;
  v37[1].n128_u64[0] = v58;
  v37[1].n128_u64[1] = v57;
  v37[2].n128_u8[0] = v56;
  v37[2].n128_u8[1] = v55;
  *(a9 + v24[15]) = v60;
  return result;
}

uint64_t sub_22034E704(uint64_t a1)
{
  v2 = sub_22034EE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22034E740(uint64_t a1)
{
  v2 = sub_22034EE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22034FAD8(0, &qword_27CF29510, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034EE3C();
  sub_220370168();
  LOBYTE(v61[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for MediaViewEvent.Model(0);
    v65 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + v10[6];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v62 = *(v11 + 32);
    v63 = v13;
    v14 = *(v11 + 16);
    v61[0] = *v11;
    v61[1] = v14;
    v15 = *(v11 + 48);
    v58 = v62;
    v59 = v15;
    v64 = *(v11 + 64);
    v60 = *(v11 + 64);
    v56 = v61[0];
    v57 = v12;
    v55 = 2;
    sub_22022ECDC(v61, v53);
    sub_22022EDA0();
    sub_22036FFF8();
    v53[2] = v58;
    v53[3] = v59;
    v54 = v60;
    v53[0] = v56;
    v53[1] = v57;
    sub_22022ED14(v53);
    v16 = (v3 + v10[7]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    *&v48 = *v16;
    *(&v48 + 1) = v17;
    v49 = v18;
    v50 = v19;
    v51 = v20;
    v52 = v21;
    v47 = 3;
    sub_22023846C(v48, v17, v18, v19, v20, v21);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v48, *(&v48 + 1), v49, v50, v51, v52);
    v22 = (v3 + v10[8]);
    v23 = *(v22 + 2);
    v48 = *v22;
    v49 = v23;
    v47 = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v24 = (v3 + v10[9]);
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = *(v24 + 2);
    v28 = *(v24 + 6);
    LOBYTE(v24) = v24[28];
    LOBYTE(v48) = v25;
    *(&v48 + 1) = v26;
    v49 = v27;
    LODWORD(v50) = v28;
    BYTE4(v50) = v24;
    v47 = 5;
    sub_22027B1AC();

    sub_22036FFF8();

    v30 = (v3 + v10[10]);
    v31 = *v30;
    v32 = v30[1];
    LOWORD(v30) = *(v30 + 8);
    *&v48 = v31;
    *(&v48 + 1) = v32;
    LOWORD(v49) = v30;
    v47 = 6;
    sub_220202110();

    sub_22036FFF8();

    v33 = (v3 + v10[11]);
    v34 = v33[1];
    *&v48 = *v33;
    *(&v48 + 1) = v34;
    v47 = 7;
    sub_22027C714(v48, v34);
    sub_22024EDBC();
    sub_22036FF88();
    sub_22027D3B4(v48, *(&v48 + 1));
    v35 = (v3 + v10[12]);
    v36 = *(v35 + 2);
    v37 = *(v35 + 6);
    v48 = *v35;
    v49 = v36;
    LODWORD(v50) = v37;
    v47 = 8;
    sub_22025476C();

    sub_22036FF88();

    v38 = (v3 + v10[13]);
    v39 = v38[1];
    *&v48 = *v38;
    *(&v48 + 1) = v39;
    v47 = 9;
    sub_220237744();

    sub_22036FF88();

    v40 = (v3 + v10[14]);
    v41 = *v40;
    v42 = v40[1];
    v43 = v40[2];
    v44 = v40[3];
    v45 = *(v40 + 32);
    LOBYTE(v40) = *(v40 + 33);
    *&v48 = v41;
    *(&v48 + 1) = v42;
    v49 = v43;
    v50 = v44;
    LOBYTE(v51) = v45;
    BYTE1(v51) = v40;
    v47 = 10;
    sub_220236A84();

    sub_22036FFF8();

    LOBYTE(v48) = *(v3 + v10[15]);
    v47 = 11;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22034EE3C()
{
  result = qword_27CF29518;
  if (!qword_27CF29518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29518);
  }

  return result;
}

void MediaViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v46 = sub_22036F3C8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22034FAD8(0, &qword_27CF29520, MEMORY[0x277D844C8]);
  v51 = v7;
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for MediaViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034EE3C();
  v50 = v9;
  v13 = v62;
  sub_220370148();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v43 = a1;
    v42 = v10;
    v62 = v12;
    LOBYTE(v57) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v14 = v48;
    sub_22036FF28();
    v15 = v62;
    (*(v47 + 32))(v62, v14, v5);
    LOBYTE(v57) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v16 = v46;
    sub_22036FF28();
    v41 = v5;
    v48 = 0;
    v17 = v42;
    (*(v45 + 32))(&v15[v42[5]], v4, v16);
    v56 = 2;
    sub_22022ED48();
    sub_22036FF28();
    v18 = &v15[v17[6]];
    v19 = v60;
    *(v18 + 2) = v59;
    *(v18 + 3) = v19;
    *(v18 + 16) = v61;
    v20 = v58;
    *v18 = v57;
    *(v18 + 1) = v20;
    v52 = 3;
    sub_220236C88();
    sub_22036FEB8();
    v21 = &v15[v17[7]];
    v22 = v54;
    *v21 = v53;
    *(v21 + 1) = v22;
    *(v21 + 2) = v55;
    v52 = 4;
    sub_2201FBCC4();
    sub_22036FEB8();
    v23 = v54;
    v24 = &v15[v17[8]];
    *v24 = v53;
    *(v24 + 2) = v23;
    v52 = 5;
    sub_22027B158();
    sub_22036FF28();
    v25 = *(&v53 + 1);
    v26 = v54;
    v27 = DWORD2(v54);
    v28 = BYTE12(v54);
    v29 = &v15[v17[9]];
    *v29 = v53;
    *(v29 + 1) = v25;
    *(v29 + 2) = v26;
    *(v29 + 6) = v27;
    v29[28] = v28;
    v52 = 6;
    sub_2202020B8();
    sub_22036FF28();
    v30 = *(&v53 + 1);
    v31 = v54;
    v32 = &v15[v17[10]];
    *v32 = v53;
    *(v32 + 1) = v30;
    *(v32 + 8) = v31;
    v52 = 7;
    sub_22024ED64();
    sub_22036FEB8();
    *&v62[v42[11]] = v53;
    v52 = 8;
    sub_220254714();
    sub_22036FEB8();
    v33 = v54;
    v34 = DWORD2(v54);
    v35 = &v62[v42[12]];
    *v35 = v53;
    *(v35 + 2) = v33;
    *(v35 + 6) = v34;
    v52 = 9;
    sub_2202376F0();
    sub_22036FEB8();
    *&v62[v42[13]] = v53;
    v52 = 10;
    sub_220236A30();
    sub_22036FF28();
    v36 = v54;
    v37 = v55;
    v38 = BYTE1(v55);
    v39 = &v62[v42[14]];
    *v39 = v53;
    *(v39 + 1) = v36;
    v39[32] = v37;
    v39[33] = v38;
    v52 = 11;
    sub_220237C1C();
    sub_22036FEB8();
    (*(v49 + 8))(v50, v51);
    v40 = v62;
    v62[v42[15]] = v53;
    sub_22034FB3C(v40, v44);
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_22034FBA0(v40);
  }
}

void sub_22034FAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22034EE3C();
    v7 = a3(a1, &type metadata for MediaViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22034FB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22034FBA0(uint64_t a1)
{
  v2 = type metadata accessor for MediaViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22034FD38()
{
  result = qword_27CF29528;
  if (!qword_27CF29528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29528);
  }

  return result;
}

unint64_t sub_22034FD90()
{
  result = qword_27CF29530;
  if (!qword_27CF29530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29530);
  }

  return result;
}

unint64_t sub_22034FDE8()
{
  result = qword_27CF29538;
  if (!qword_27CF29538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29538);
  }

  return result;
}

StocksAnalytics::OnboardingScreenType_optional __swiftcall OnboardingScreenType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OnboardingScreenType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_22034FEF4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x800000022038FF50;
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x800000022038FF50;
  }

  else
  {
    v6 = 0x800000022038FF70;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000012;
    v4 = 0x800000022038FF70;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_22034FFD4()
{
  result = qword_27CF29540;
  if (!qword_27CF29540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29540);
  }

  return result;
}

uint64_t sub_220350028()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203500CC(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22035015C(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220350208(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000011;
  v5 = 0x800000022038FF50;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x800000022038FF70;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_220350328()
{
  result = qword_27CF29548;
  if (!qword_27CF29548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29548);
  }

  return result;
}

StocksAnalytics::FeedType_optional __swiftcall FeedType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x756F59726F66;
  if (*v0 != 2)
  {
    v2 = 6385509;
  }

  if (*v0)
  {
    v1 = 0x6C6F626D7973;
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

unint64_t sub_220350454()
{
  result = qword_27CF29550;
  if (!qword_27CF29550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29550);
  }

  return result;
}

uint64_t sub_2203504A8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22035055C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2203505FC(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2203506B8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x756F59726F66;
  if (*v1 != 2)
  {
    v5 = 6385509;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6F626D7973;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2203507E8()
{
  result = qword_281262180;
  if (!qword_281262180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262180);
  }

  return result;
}

StocksAnalytics::SymbolChartDisplayErrorCode_optional __swiftcall SymbolChartDisplayErrorCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SymbolChartDisplayErrorCode.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x7245726576726573;
  if (*v0 != 2)
  {
    v2 = 0x617461446F6ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

unint64_t sub_22035092C()
{
  result = qword_27CF29558;
  if (!qword_27CF29558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29558);
  }

  return result;
}

uint64_t sub_220350980()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220350A4C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220350B04(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220350BD8(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEB00000000726F72;
  v5 = 0x7245726576726573;
  if (*v1 != 2)
  {
    v5 = 0x617461446F6ELL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000022038FF90;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_220350D20()
{
  result = qword_281262A40;
  if (!qword_281262A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A40);
  }

  return result;
}

StocksAnalytics::BadgeData __swiftcall BadgeData.init(badgeType:storyType:)(StocksAnalytics::BadgeType badgeType, StocksAnalytics::StoryType_optional storyType)
{
  v3 = *storyType.value;
  *v2 = *badgeType;
  v2[1] = v3;
  result.badgeType = badgeType;
  return result;
}

uint64_t sub_220350E00()
{
  if (*v0)
  {
    return 0x70795479726F7473;
  }

  else
  {
    return 0x7079546567646162;
  }
}

uint64_t sub_220350E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7079546567646162 && a2 == 0xE900000000000065;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70795479726F7473 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_220350F1C(uint64_t a1)
{
  v2 = sub_220351140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220350F58(uint64_t a1)
{
  v2 = sub_220351140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BadgeData.encode(to:)(void *a1)
{
  sub_220351420(0, &qword_281261B88, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220351140();
  sub_220370168();
  v16 = v9;
  v15 = 0;
  sub_220351194();
  sub_22036FFF8();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_2203511E8();
    sub_22036FF88();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_220351140()
{
  result = qword_2812620E8;
  if (!qword_2812620E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620E8);
  }

  return result;
}

unint64_t sub_220351194()
{
  result = qword_2812620B8;
  if (!qword_2812620B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620B8);
  }

  return result;
}

unint64_t sub_2203511E8()
{
  result = qword_281261FC8;
  if (!qword_281261FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FC8);
  }

  return result;
}

uint64_t BadgeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220351420(0, &qword_2812675B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220351140();
  sub_220370148();
  if (!v2)
  {
    v16 = 0;
    sub_220351484();
    sub_22036FF28();
    v10 = v17;
    v14 = 1;
    sub_2203514D8();
    sub_22036FEB8();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220351420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220351140();
    v7 = a3(a1, &type metadata for BadgeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220351484()
{
  result = qword_2812675C0;
  if (!qword_2812675C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812675C0);
  }

  return result;
}

unint64_t sub_2203514D8()
{
  result = qword_2812675C8;
  if (!qword_2812675C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812675C8);
  }

  return result;
}

unint64_t sub_220351588()
{
  result = qword_27CF29560;
  if (!qword_27CF29560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29560);
  }

  return result;
}

unint64_t sub_2203515E0()
{
  result = qword_2812620D8;
  if (!qword_2812620D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620D8);
  }

  return result;
}

unint64_t sub_220351638()
{
  result = qword_2812620E0;
  if (!qword_2812620E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620E0);
  }

  return result;
}

void __swiftcall AmsMarketingItemData.init(amsPurchaseID:campaignID:isPaidBundleViaOffer:)(StocksAnalytics::AmsMarketingItemData *__return_ptr retstr, Swift::String_optional amsPurchaseID, Swift::String_optional campaignID, Swift::Bool_optional isPaidBundleViaOffer)
{
  retstr->amsPurchaseID = amsPurchaseID;
  retstr->campaignID = campaignID;
  retstr->isPaidBundleViaOffer = isPaidBundleViaOffer;
}

uint64_t AmsMarketingItemData.amsPurchaseID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AmsMarketingItemData.amsPurchaseID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AmsMarketingItemData.campaignID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AmsMarketingItemData.campaignID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_2203517E4()
{
  v1 = 0x6E676961706D6163;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6863727550736D61;
  }
}

uint64_t sub_220351854@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220352078(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22035187C(uint64_t a1)
{
  v2 = sub_220351AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203518B8(uint64_t a1)
{
  v2 = sub_220351AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AmsMarketingItemData.encode(to:)(void *a1)
{
  sub_220351D44(0, &qword_281261C20, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220351AA0();
  sub_220370168();
  v15 = 0;
  v9 = v11[3];
  sub_22036FF68();
  if (!v9)
  {
    v14 = 1;
    sub_22036FF68();
    v13 = 2;
    sub_22036FF78();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220351AA0()
{
  result = qword_281264350;
  if (!qword_281264350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264350);
  }

  return result;
}

uint64_t AmsMarketingItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220351D44(0, &qword_27CF29568, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220351AA0();
  sub_220370148();
  if (!v2)
  {
    v25 = 0;
    v10 = sub_22036FE98();
    v13 = v12;
    v14 = v10;
    v24 = 1;
    v15 = sub_22036FE98();
    v17 = v16;
    v21 = v15;
    v23 = 2;
    v18 = sub_22036FEA8();
    v19 = *(v7 + 8);
    v22 = v18;
    v19(v9, v6);
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v21;
    *(a2 + 24) = v17;
    *(a2 + 32) = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220351D44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220351AA0();
    v7 = a3(a1, &type metadata for AmsMarketingItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220351DAC()
{
  result = qword_281264328;
  if (!qword_281264328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264328);
  }

  return result;
}

unint64_t sub_220351E04()
{
  result = qword_281264330;
  if (!qword_281264330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264330);
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

uint64_t sub_220351E9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_220351EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_220351F74()
{
  result = qword_27CF29570;
  if (!qword_27CF29570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29570);
  }

  return result;
}

unint64_t sub_220351FCC()
{
  result = qword_281264340;
  if (!qword_281264340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264340);
  }

  return result;
}

unint64_t sub_220352024()
{
  result = qword_281264348;
  if (!qword_281264348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264348);
  }

  return result;
}

uint64_t sub_220352078(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863727550736D61 && a2 == 0xED00004449657361;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEA00000000004449 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392690 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_220352270()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_2812642C0);
  __swift_project_value_buffer(v0, qword_2812642C0);
  return sub_22036F108();
}

uint64_t AppSessionStartEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionStartEvent.watchedSymbolListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.watchedSymbolListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 24);
  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 24);
  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.watchlistSummaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 28);
  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2203527C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t AppSessionStartEvent.watchlistSummaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 28);
  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  started = type metadata accessor for AppSessionStartEvent(0);
  v5 = started[5];
  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = started[6];
  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = started[7];
  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t AppSessionStartEvent.Model.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 20));
}

uint64_t AppSessionStartEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionStartEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppSessionStartEvent.Model.watchlistSummaryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 28));
}

int *AppSessionStartEvent.Model.init(eventData:watchedSymbolListData:orientationData:watchlistSummaryData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = sub_22036F388();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for AppSessionStartEvent.Model(0);
  *(a5 + result[5]) = v7;
  *(a5 + result[6]) = v8;
  *(a5 + result[7]) = v9;
  return result;
}

unint64_t sub_220352CA0()
{
  v1 = 0x746144746E657665;
  v2 = 0x7461746E6569726FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_220352D30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220353B78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220352D58(uint64_t a1)
{
  v2 = sub_220353058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220352D94(uint64_t a1)
{
  v2 = sub_220353058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203534D0(0, &qword_27CF29578, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353058();
  sub_220370168();
  LOBYTE(v13) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    started = type metadata accessor for AppSessionStartEvent.Model(0);
    v13 = *(v3 + started[5]);
    HIBYTE(v12) = 1;
    sub_22023D96C();

    sub_22036FFF8();

    LOWORD(v13) = *(v3 + started[6]);
    HIBYTE(v12) = 2;
    sub_2201F8860();
    sub_22036FFF8();
    v13 = *(v3 + started[7]);
    HIBYTE(v12) = 3;
    sub_2202AADBC();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220353058()
{
  result = qword_2812642B0;
  if (!qword_2812642B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812642B0);
  }

  return result;
}

uint64_t AppSessionStartEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22036F388();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203534D0(0, &qword_281261DB8, MEMORY[0x277D844C8]);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  MEMORY[0x28223BE20](started);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353058();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = a1;
  v12 = v18;
  LOBYTE(v23) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v13 = v19;
  sub_22036FF28();
  (*(v12 + 32))(v11, v13, v4);
  v22 = 1;
  sub_22023D918();
  sub_22036FF28();
  *&v11[started[5]] = v23;
  v22 = 2;
  sub_2201F8808();
  sub_22036FF28();
  *&v11[started[6]] = v23;
  v22 = 3;
  sub_2202AAD64();
  sub_22036FF28();
  (*(v20 + 8))(v8, v21);
  *&v11[started[7]] = v23;
  sub_220353534(v11, v17);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_220353598(v11);
}

void sub_2203534D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220353058();
    v7 = a3(a1, &type metadata for AppSessionStartEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220353534(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_220353598(uint64_t a1)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2203536CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_2203538DC(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2203527C8(319, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
    if (v2 <= 0x3F)
    {
      sub_2203527C8(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
      if (v3 <= 0x3F)
      {
        sub_2203527C8(319, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_220353A74()
{
  result = qword_27CF29580;
  if (!qword_27CF29580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29580);
  }

  return result;
}

unint64_t sub_220353ACC()
{
  result = qword_2812642A0;
  if (!qword_2812642A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812642A0);
  }

  return result;
}

unint64_t sub_220353B24()
{
  result = qword_2812642A8;
  if (!qword_2812642A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812642A8);
  }

  return result;
}

uint64_t sub_220353B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203903B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392020 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_220353D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000220392930 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_220353DEC(uint64_t a1)
{
  v2 = sub_220353FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220353E28(uint64_t a1)
{
  v2 = sub_220353FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EarningsData.encode(to:)(void *a1)
{
  sub_220354180(0, &qword_281261CE0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353FAC();
  sub_220370168();
  sub_220370008();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220353FAC()
{
  result = qword_281265D98;
  if (!qword_281265D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D98);
  }

  return result;
}

uint64_t EarningsData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_220354180(0, &qword_27CF29588, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353FAC();
  sub_220370148();
  if (!v2)
  {
    v10 = sub_22036FF38();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220354180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220353FAC();
    v7 = a3(a1, &type metadata for EarningsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220354204(void *a1)
{
  sub_220354180(0, &qword_281261CE0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220353FAC();
  sub_220370168();
  sub_220370008();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220354370()
{
  result = qword_27CF29590;
  if (!qword_27CF29590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29590);
  }

  return result;
}

unint64_t sub_2203543C8()
{
  result = qword_281265D88;
  if (!qword_281265D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D88);
  }

  return result;
}

unint64_t sub_220354420()
{
  result = qword_281265D90;
  if (!qword_281265D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D90);
  }

  return result;
}

StocksAnalytics::AppData __swiftcall AppData.init(appVersion:appBuildNumber:)(Swift::String appVersion, Swift::String appBuildNumber)
{
  *v2 = appVersion;
  v2[1] = appBuildNumber;
  result.appBuildNumber = appBuildNumber;
  result.appVersion = appVersion;
  return result;
}

uint64_t AppData.appVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppData.appVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppData.appBuildNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppData.appBuildNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_220354598()
{
  if (*v0)
  {
    return 0x646C697542707061;
  }

  else
  {
    return 0x6973726556707061;
  }
}

uint64_t sub_2203545E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2203546D0(uint64_t a1)
{
  v2 = sub_2203548C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22035470C(uint64_t a1)
{
  v2 = sub_2203548C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppData.encode(to:)(void *a1)
{
  sub_220354B2C(0, &qword_281261BB0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203548C8();
  sub_220370168();
  v13 = 0;
  v9 = v11[3];
  sub_22036FFB8();
  if (!v9)
  {
    v12 = 1;
    sub_22036FFB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2203548C8()
{
  result = qword_2812622C0;
  if (!qword_2812622C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622C0);
  }

  return result;
}

uint64_t AppData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220354B2C(0, &qword_281261D60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203548C8();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_22036FEE8();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220354B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203548C8();
    v7 = a3(a1, &type metadata for AppData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220354BE4()
{
  result = qword_27CF29598;
  if (!qword_27CF29598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29598);
  }

  return result;
}

unint64_t sub_220354C3C()
{
  result = qword_2812622B0;
  if (!qword_2812622B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622B0);
  }

  return result;
}

unint64_t sub_220354C94()
{
  result = qword_2812622B8;
  if (!qword_2812622B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622B8);
  }

  return result;
}

uint64_t sub_220354D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000220392950 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_220354DE4(uint64_t a1)
{
  v2 = sub_220354FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220354E20(uint64_t a1)
{
  v2 = sub_220354FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementData.encode(to:)(void *a1)
{
  sub_2203551F8(0, &qword_27CF295A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220354FB8();
  sub_220370168();
  v11 = v8;
  sub_22035500C();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220354FB8()
{
  result = qword_27CF295A8;
  if (!qword_27CF295A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295A8);
  }

  return result;
}

unint64_t sub_22035500C()
{
  result = qword_27CF295B0;
  if (!qword_27CF295B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295B0);
  }

  return result;
}

uint64_t EngagementData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2203551F8(0, &qword_27CF295B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220354FB8();
  sub_220370148();
  if (!v2)
  {
    sub_22035525C();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203551F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220354FB8();
    v7 = a3(a1, &type metadata for EngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22035525C()
{
  result = qword_27CF295C0;
  if (!qword_27CF295C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295C0);
  }

  return result;
}

unint64_t sub_2203552B4()
{
  result = qword_27CF295C8;
  if (!qword_27CF295C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295C8);
  }

  return result;
}

unint64_t sub_22035530C()
{
  result = qword_27CF295D0;
  if (!qword_27CF295D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295D0);
  }

  return result;
}

unint64_t sub_2203553B4()
{
  result = qword_27CF295D8;
  if (!qword_27CF295D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295D8);
  }

  return result;
}

unint64_t sub_22035540C()
{
  result = qword_27CF295E0;
  if (!qword_27CF295E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295E0);
  }

  return result;
}

unint64_t sub_220355464()
{
  result = qword_27CF295E8;
  if (!qword_27CF295E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295E8);
  }

  return result;
}

uint64_t ResultData.failureReasonCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ResultData.failureReasonCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

StocksAnalytics::ResultData __swiftcall ResultData.init(resultType:failureReasonCode:)(StocksAnalytics::ResultType resultType, Swift::String_optional failureReasonCode)
{
  *v2 = *resultType;
  *(v2 + 8) = failureReasonCode;
  result.failureReasonCode = failureReasonCode;
  result.resultType = resultType;
  return result;
}

uint64_t sub_2203555A4()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x7954746C75736572;
  }
}

uint64_t sub_2203555E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220392970 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2203556D4(uint64_t a1)
{
  v2 = sub_2203558DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220355710(uint64_t a1)
{
  v2 = sub_2203558DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultData.encode(to:)(void *a1)
{
  sub_220355B6C(0, &qword_27CF295F0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203558DC();
  sub_220370168();
  v15 = v9;
  v14 = 0;
  sub_220355930();
  sub_22036FFF8();
  if (!v2)
  {
    v13 = 1;
    sub_22036FF68();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2203558DC()
{
  result = qword_27CF295F8;
  if (!qword_27CF295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF295F8);
  }

  return result;
}

unint64_t sub_220355930()
{
  result = qword_27CF29600;
  if (!qword_27CF29600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29600);
  }

  return result;
}

uint64_t ResultData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220355B6C(0, &qword_27CF29608, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203558DC();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_220355BD0();
  sub_22036FF28();
  v10 = v18;
  v16 = 1;
  v11 = sub_22036FE98();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220355B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203558DC();
    v7 = a3(a1, &type metadata for ResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220355BD0()
{
  result = qword_27CF29610;
  if (!qword_27CF29610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29610);
  }

  return result;
}

uint64_t sub_220355C5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_220355CB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_220355D30()
{
  result = qword_27CF29618;
  if (!qword_27CF29618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29618);
  }

  return result;
}

unint64_t sub_220355D88()
{
  result = qword_27CF29620;
  if (!qword_27CF29620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29620);
  }

  return result;
}

unint64_t sub_220355DE0()
{
  result = qword_27CF29628;
  if (!qword_27CF29628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29628);
  }

  return result;
}

uint64_t SymbolPriceData.init(quoteAge:sparklineAge:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_220355EA4()
{
  if (*v0)
  {
    return 0x6E696C6B72617073;
  }

  else
  {
    return 0x65674165746F7571;
  }
}

uint64_t sub_220355EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65674165746F7571 && a2 == 0xE800000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E696C6B72617073 && a2 == 0xEC00000065674165)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_220355FC8(uint64_t a1)
{
  v2 = sub_2203561B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220356004(uint64_t a1)
{
  v2 = sub_2203561B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolPriceData.encode(to:)(void *a1)
{
  sub_2203563B8(0, &qword_281261C78, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203561B4();
  sub_220370168();
  v13 = 0;
  sub_220370008();
  if (!v2)
  {
    v12 = 1;
    sub_220370008();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2203561B4()
{
  result = qword_2812654C8;
  if (!qword_2812654C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812654C8);
  }

  return result;
}

uint64_t SymbolPriceData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_2203563B8(0, &qword_27CF29630, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203561B4();
  sub_220370148();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_22036FF38();
    v14 = 1;
    v12 = sub_22036FF38();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203563B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203561B4();
    v7 = a3(a1, &type metadata for SymbolPriceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220356478()
{
  result = qword_27CF29638;
  if (!qword_27CF29638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29638);
  }

  return result;
}

unint64_t sub_2203564D0()
{
  result = qword_2812654B8;
  if (!qword_2812654B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812654B8);
  }

  return result;
}

unint64_t sub_220356528()
{
  result = qword_2812654C0;
  if (!qword_2812654C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812654C0);
  }

  return result;
}

StocksAnalytics::CalendarAccessStatus_optional __swiftcall CalendarAccessStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

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

uint64_t CalendarAccessStatus.rawValue.getter()
{
  if (*v0)
  {
    return 0x776F6C6C61;
  }

  else
  {
    return 2037278052;
  }
}

uint64_t sub_220356610(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x776F6C6C61;
  }

  else
  {
    v3 = 2037278052;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x776F6C6C61;
  }

  else
  {
    v5 = 2037278052;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_220370048();
  }

  return v8 & 1;
}

unint64_t sub_2203566B0()
{
  result = qword_27CF29640;
  if (!qword_27CF29640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29640);
  }

  return result;
}

uint64_t sub_220356704()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22035677C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2203567E0(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220356854@<X0>(char *a2@<X8>)
{
  v3 = sub_22036FE78();

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

  *a2 = v5;
  return result;
}

void sub_2203568B4(uint64_t *a1@<X8>)
{
  v2 = 2037278052;
  if (*v1)
  {
    v2 = 0x776F6C6C61;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_2203569A8()
{
  result = qword_27CF29648;
  if (!qword_27CF29648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29648);
  }

  return result;
}

StocksAnalytics::SubscribeButtonContextData __swiftcall SubscribeButtonContextData.init(subscribeButtonLocation:subscribeButtonTargetType:)(StocksAnalytics::SubscribeButtonLocation subscribeButtonLocation, StocksAnalytics::SubscribeButtonTargetType subscribeButtonTargetType)
{
  v3 = *subscribeButtonTargetType;
  *v2 = *subscribeButtonLocation;
  v2[1] = v3;
  result.subscribeButtonLocation = subscribeButtonLocation;
  return result;
}

unint64_t sub_220356A88()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_220356AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000220392990 == a2 || (sub_220370048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002203929B0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_220370048();

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
  return result;
}

uint64_t sub_220356BA8(uint64_t a1)
{
  v2 = sub_220356DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220356BE4(uint64_t a1)
{
  v2 = sub_220356DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonContextData.encode(to:)(void *a1)
{
  sub_2203570AC(0, &qword_27CF29650, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220356DCC();
  sub_220370168();
  v16 = v9;
  v15 = 0;
  sub_220356E20();
  sub_22036FFF8();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_220356E74();
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_220356DCC()
{
  result = qword_27CF29658;
  if (!qword_27CF29658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29658);
  }

  return result;
}

unint64_t sub_220356E20()
{
  result = qword_27CF29660;
  if (!qword_27CF29660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29660);
  }

  return result;
}

unint64_t sub_220356E74()
{
  result = qword_27CF29668;
  if (!qword_27CF29668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29668);
  }

  return result;
}

uint64_t SubscribeButtonContextData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2203570AC(0, &qword_27CF29670, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220356DCC();
  sub_220370148();
  if (!v2)
  {
    v16 = 0;
    sub_220357110();
    sub_22036FF28();
    v10 = v17;
    v14 = 1;
    sub_220357164();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203570AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220356DCC();
    v7 = a3(a1, &type metadata for SubscribeButtonContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220357110()
{
  result = qword_27CF29678;
  if (!qword_27CF29678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29678);
  }

  return result;
}

unint64_t sub_220357164()
{
  result = qword_27CF29680;
  if (!qword_27CF29680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29680);
  }

  return result;
}

unint64_t sub_2203571BC()
{
  result = qword_27CF29688;
  if (!qword_27CF29688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29688);
  }

  return result;
}

unint64_t sub_220357214()
{
  result = qword_27CF29690;
  if (!qword_27CF29690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29690);
  }

  return result;
}

unint64_t sub_2203572BC()
{
  result = qword_27CF29698;
  if (!qword_27CF29698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29698);
  }

  return result;
}

unint64_t sub_220357314()
{
  result = qword_27CF296A0;
  if (!qword_27CF296A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF296A0);
  }

  return result;
}

unint64_t sub_22035736C()
{
  result = qword_27CF296A8;
  if (!qword_27CF296A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF296A8);
  }

  return result;
}

uint64_t ChannelData.channelID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChannelData.channelID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ChannelData.language.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ChannelData.language.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall ChannelData.init(channelID:language:isBundleChannel:isAdSupportedChannel:)(StocksAnalytics::ChannelData *__return_ptr retstr, Swift::String channelID, Swift::String language, Swift::Bool isBundleChannel, Swift::Bool isAdSupportedChannel)
{
  retstr->channelID = channelID;
  retstr->language = language;
  retstr->isBundleChannel = isBundleChannel;
  retstr->isAdSupportedChannel = isAdSupportedChannel;
}

unint64_t sub_22035754C()
{
  v1 = 0x496C656E6E616863;
  v2 = 0x656C646E75427369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x65676175676E616CLL;
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

uint64_t sub_2203575DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220357DB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220357604(uint64_t a1)
{
  v2 = sub_220357854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220357640(uint64_t a1)
{
  v2 = sub_220357854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChannelData.encode(to:)(void *a1)
{
  sub_220357B50(0, &qword_281261D08, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v8;
  v15 = *(v1 + 32);
  v11[1] = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220357854();
  sub_220370168();
  v19 = 0;
  v9 = v14;
  sub_22036FFB8();
  if (!v9)
  {
    v18 = 1;
    sub_22036FFB8();
    v17 = 2;
    sub_22036FFC8();
    v16 = 3;
    sub_22036FFC8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220357854()
{
  result = qword_281266068;
  if (!qword_281266068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266068);
  }

  return result;
}

uint64_t ChannelData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220357B50(0, &qword_281261E18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220357854();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v10 = sub_22036FEE8();
  v22 = v11;
  v26 = 1;
  v20 = sub_22036FEE8();
  v21 = v12;
  v25 = 2;
  v23 = sub_22036FEF8() & 1;
  v24 = 3;
  v14 = sub_22036FEF8();
  (*(v7 + 8))(v9, v6);
  v15 = v14 & 1;
  v16 = v23;
  v18 = v21;
  v17 = v22;
  *a2 = v10;
  *(a2 + 8) = v17;
  *(a2 + 16) = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 33) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220357B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220357854();
    v7 = a3(a1, &type metadata for ChannelData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220357C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_220357C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_220357CB0()
{
  result = qword_27CF296B0;
  if (!qword_27CF296B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF296B0);
  }

  return result;
}

unint64_t sub_220357D08()
{
  result = qword_281266058;
  if (!qword_281266058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266058);
  }

  return result;
}

unint64_t sub_220357D60()
{
  result = qword_281266060;
  if (!qword_281266060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266060);
  }

  return result;
}

uint64_t sub_220357DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEF6C656E6E616843 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392A00 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_220357FF8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF296E8);
  __swift_project_value_buffer(v0, qword_27CF296E8);
  return sub_22036F108();
}

uint64_t SymbolChartEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SymbolChartEngagementEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolChartEngagementEvent(0) + 20);
  sub_2203583A0(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolChartEngagementEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolChartEngagementEvent(0) + 20);
  sub_2203583A0(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolChartEngagementEvent.symbolChartData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolChartEngagementEvent(0) + 24);
  sub_2203583A0(0, &qword_27CF29700, sub_22031FEFC, sub_22031FF54, &type metadata for SymbolChartData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2203583A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SymbolChartEngagementEvent.symbolChartData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolChartEngagementEvent(0) + 24);
  sub_2203583A0(0, &qword_27CF29700, sub_22031FEFC, sub_22031FF54, &type metadata for SymbolChartData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolChartEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SymbolChartEngagementEvent(0);
  v5 = *(v4 + 20);
  sub_2203583A0(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_2203583A0(0, &qword_27CF29700, sub_22031FEFC, sub_22031FF54, &type metadata for SymbolChartData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SymbolChartEngagementEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SymbolChartEngagementEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t SymbolChartEngagementEvent.Model.symbolChartData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SymbolChartEngagementEvent.Model.init(eventData:symbolData:symbolChartData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = a2[3];
  v10 = a2[4];
  v11 = *a3;
  v12 = sub_22036F388();
  (*(*(v12 - 8) + 32))(a4, a1, v12);
  result = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  v14 = a4 + *(result + 20);
  *v14 = v6;
  *(v14 + 8) = v7;
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v14 + 32) = v10;
  *(a4 + *(result + 24)) = v11;
  return result;
}

uint64_t sub_220358808()
{
  v1 = 0x61446C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x68436C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_220358878@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22035962C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2203588A0(uint64_t a1)
{
  v2 = sub_220358B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203588DC(uint64_t a1)
{
  v2 = sub_220358B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolChartEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220358FC8(0, &qword_27CF29708, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220358B80();
  sub_220370168();
  LOBYTE(v18) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for SymbolChartEngagementEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
    v12 = v11[1];
    v13 = *(v11 + 16);
    v14 = v11[3];
    v15 = v11[4];
    v18 = *v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    HIBYTE(v17) = 1;
    sub_220230C50();

    sub_22036FFF8();

    LOBYTE(v18) = *(v3 + *(v10 + 24));
    HIBYTE(v17) = 2;
    sub_22031FF54();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220358B80()
{
  result = qword_27CF29710;
  if (!qword_27CF29710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29710);
  }

  return result;
}

uint64_t SymbolChartEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_22036F388();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220358FC8(0, &qword_27CF29718, MEMORY[0x277D844C8]);
  v29 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220358B80();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v26;
  v12 = v27;
  v23 = v9;
  v24 = v11;
  LOBYTE(v30) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v28;
  v14 = v29;
  sub_22036FF28();
  (*(v12 + 32))(v24, v15, v4);
  v35 = 1;
  sub_220230BFC();
  sub_22036FF28();
  v16 = v31;
  v17 = v32;
  v18 = v33;
  v19 = v34;
  v20 = &v24[*(v23 + 20)];
  *v20 = v30;
  *(v20 + 1) = v16;
  v20[16] = v17;
  *(v20 + 3) = v18;
  *(v20 + 4) = v19;
  v35 = 2;
  sub_22031FEFC();
  sub_22036FF28();
  (*(v13 + 8))(v8, v14);
  v21 = v24;
  v24[*(v23 + 24)] = v30;
  sub_22035902C(v21, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220359090(v21);
}

void sub_220358FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220358B80();
    v7 = a3(a1, &type metadata for SymbolChartEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22035902C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220359090(uint64_t a1)
{
  v2 = type metadata accessor for SymbolChartEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2203591C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_2203583A0(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_2203583A0(0, &qword_27CF29700, sub_22031FEFC, sub_22031FF54, &type metadata for SymbolChartData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_22035935C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2203583A0(319, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
    if (v2 <= 0x3F)
    {
      sub_2203583A0(319, &qword_27CF29700, sub_22031FEFC, sub_22031FF54, &type metadata for SymbolChartData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220359490(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220359528()
{
  result = qword_27CF29740;
  if (!qword_27CF29740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29740);
  }

  return result;
}

unint64_t sub_220359580()
{
  result = qword_27CF29748;
  if (!qword_27CF29748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29748);
  }

  return result;
}

unint64_t sub_2203595D8()
{
  result = qword_27CF29750;
  if (!qword_27CF29750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29750);
  }

  return result;
}

uint64_t sub_22035962C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68436C6F626D7973 && a2 == 0xEF61746144747261)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::PaywallType_optional __swiftcall PaywallType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaywallType.rawValue.getter()
{
  v1 = 1952870259;
  if (*v0 != 1)
  {
    v1 = 1685217640;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_220359804(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1952870259;
  if (v2 != 1)
  {
    v3 = 1685217640;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1952870259;
  if (*a2 != 1)
  {
    v6 = 1685217640;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_220370048();
  }

  return v9 & 1;
}

unint64_t sub_2203598EC()
{
  result = qword_27CF29758;
  if (!qword_27CF29758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29758);
  }

  return result;
}

uint64_t sub_220359940()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203599D4(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220359A54(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220359AF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1952870259;
  if (v2 != 1)
  {
    v4 = 1685217640;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_220359C00()
{
  result = qword_281265FF8;
  if (!qword_281265FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265FF8);
  }

  return result;
}

StocksAnalytics::UserType_optional __swiftcall UserType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UserType.rawValue.getter()
{
  v1 = 7824750;
  if (*v0 != 1)
  {
    v1 = 0x6E696E7275746572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_220359D08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7824750;
  if (v2 != 1)
  {
    v4 = 0x6E696E7275746572;
    v3 = 0xE900000000000067;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7824750;
  if (*a2 != 1)
  {
    v8 = 0x6E696E7275746572;
    v7 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_220359E08()
{
  result = qword_27CF29760;
  if (!qword_27CF29760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29760);
  }

  return result;
}

uint64_t sub_220359E5C()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220359EFC(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220359F88(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22035A030(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7824750;
  if (v2 != 1)
  {
    v5 = 0x6E696E7275746572;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_22035A14C()
{
  result = qword_281262138;
  if (!qword_281262138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262138);
  }

  return result;
}

uint64_t sub_22035A268()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281265BD0);
  __swift_project_value_buffer(v0, qword_281265BD0);
  return sub_22036F108();
}

uint64_t FeedViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 24);
  sub_22035ADC0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 24);
  sub_22035ADC0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 28);
  sub_22035ADC0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 28);
  sub_22035ADC0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 32);
  sub_22035ADC0(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 32);
  sub_22035ADC0(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 36);
  sub_22035ADC0(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 36);
  sub_22035ADC0(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 40);
  sub_22035ADC0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 40);
  sub_22035ADC0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.feedViewExperienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 44);
  sub_22035ADC0(0, &qword_281266768, sub_220288778, sub_2202887D0, &type metadata for FeedViewExperienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22035ADC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t FeedViewEvent.feedViewExperienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 44);
  sub_22035ADC0(0, &qword_281266768, sub_220288778, sub_2202887D0, &type metadata for FeedViewExperienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedViewEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22035ADC0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22035ADC0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_22035ADC0(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_22035ADC0(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_22035ADC0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_22035ADC0(0, &qword_281266768, sub_220288778, sub_2202887D0, &type metadata for FeedViewExperienceData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t sub_22035B328@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FeedViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t FeedViewEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t FeedViewEvent.Model.feedViewExperienceData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  LODWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t FeedViewEvent.Model.init(eventData:timedData:feedData:viewData:orientationData:viewEndData:activeWatchlistData:feedViewExperienceData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int16 *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a3;
  v13 = *(a3 + 1);
  v14 = *(a3 + 2);
  v16 = *a4;
  v15 = a4[1];
  v17 = *(a4 + 8);
  v26 = *a5;
  v27 = *a6;
  v30 = *a8;
  v28 = *a7;
  v29 = *(a8 + 1);
  v18 = sub_22036F388();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for FeedViewEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F3C8();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v23 = a9 + v19[6];
  *v23 = v12;
  *(v23 + 8) = v13;
  *(v23 + 16) = v14;
  v24 = a9 + v19[7];
  *v24 = v16;
  *(v24 + 8) = v15;
  *(v24 + 16) = v17;
  *(a9 + v19[8]) = v26;
  *(a9 + v19[9]) = v27;
  *(a9 + v19[10]) = v28;
  v25 = a9 + v19[11];
  *v25 = v30;
  *(v25 + 4) = v29;
  return result;
}

unint64_t sub_22035B68C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000013;
  if (v1 != 6)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x7461746E6569726FLL;
  if (v1 != 4)
  {
    v4 = 0x44646E4577656976;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6174614464656566;
  if (v1 != 2)
  {
    v5 = 0x6174614477656976;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22035B7A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22035CCDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22035B7C8(uint64_t a1)
{
  v2 = sub_22035BC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22035B804(uint64_t a1)
{
  v2 = sub_22035BC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22035C370(0, &qword_27CF29768, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035BC50();
  sub_220370168();
  LOBYTE(v21) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for FeedViewEvent.Model(0);
    LOBYTE(v21) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + v10[6];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    LOBYTE(v21) = *v11;
    v22 = v12;
    v23 = v13;
    HIBYTE(v20) = 2;
    sub_2201FBD1C();

    sub_22036FFF8();

    v14 = (v3 + v10[7]);
    v15 = *v14;
    v16 = v14[1];
    LOWORD(v14) = *(v14 + 8);
    v21 = v15;
    v22 = v16;
    LOWORD(v23) = v14;
    HIBYTE(v20) = 3;
    sub_220202110();

    sub_22036FFF8();

    LOWORD(v21) = *(v3 + v10[8]);
    HIBYTE(v20) = 4;
    sub_2201F8860();
    sub_22036FFF8();
    LOBYTE(v21) = *(v3 + v10[9]);
    HIBYTE(v20) = 5;
    sub_2202310D4();
    sub_22036FFF8();
    LOBYTE(v21) = *(v3 + v10[10]);
    HIBYTE(v20) = 6;
    sub_220237C70();
    sub_22036FF88();
    v17 = (v3 + v10[11]);
    v18 = *v17;
    LODWORD(v17) = *(v17 + 1);
    LOBYTE(v21) = v18;
    HIDWORD(v21) = v17;
    HIBYTE(v20) = 7;
    sub_2202887D0();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22035BC50()
{
  result = qword_281265BC0;
  if (!qword_281265BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265BC0);
  }

  return result;
}

uint64_t FeedViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v38 = sub_22036F3C8();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22035C370(0, &qword_281261DF8, MEMORY[0x277D844C8]);
  v42 = v7;
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  v10 = type metadata accessor for FeedViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035BC50();
  v41 = v9;
  v13 = v43;
  sub_220370148();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v43 = v10;
  v15 = v12;
  v17 = v38;
  v16 = v39;
  v18 = v36;
  LOBYTE(v44) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  v19 = *(v16 + 32);
  v20 = v40;
  v40 = v5;
  v19(v15, v20, v5);
  LOBYTE(v44) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  v21 = v43;
  (*(v18 + 32))(&v15[*(v43 + 20)], v14, v17);
  v47 = 2;
  sub_2201FBCC4();
  v34[1] = 0;
  sub_22036FF28();
  v22 = v15;
  v23 = v45;
  v24 = v46;
  v25 = &v15[v21[6]];
  *v25 = v44;
  *(v25 + 1) = v23;
  *(v25 + 2) = v24;
  v47 = 3;
  sub_2202020B8();
  sub_22036FF28();
  v26 = v21;
  v27 = v45;
  v28 = v46;
  v29 = v22 + v21[7];
  *v29 = v44;
  *(v29 + 8) = v27;
  *(v29 + 16) = v28;
  v47 = 4;
  sub_2201F8808();
  sub_22036FF28();
  v30 = v37;
  *(v22 + v26[8]) = v44;
  v47 = 5;
  sub_220231080();
  sub_22036FF28();
  *(v22 + v26[9]) = v44;
  v47 = 6;
  sub_220237C1C();
  sub_22036FEB8();
  *(v22 + v26[10]) = v44;
  v47 = 7;
  sub_220288778();
  sub_22036FF28();
  (*(v30 + 8))(v41, v42);
  v31 = HIDWORD(v44);
  v32 = v22 + v26[11];
  *v32 = v44;
  *(v32 + 4) = v31;
  sub_22035C3D4(v22, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22035C438(v22);
}

void sub_22035C370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22035BC50();
    v7 = a3(a1, &type metadata for FeedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22035C3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22035C438(uint64_t a1)
{
  v2 = type metadata accessor for FeedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22035C56C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22035ADC0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22035ADC0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_22035ADC0(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_22035ADC0(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_22035ADC0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_22035ADC0(0, &qword_281266768, sub_220288778, sub_2202887D0, &type metadata for FeedViewExperienceData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_22035C938(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_22035ADC0(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_22035ADC0(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_22035ADC0(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
          if (v5 <= 0x3F)
          {
            sub_22035ADC0(319, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
            if (v6 <= 0x3F)
            {
              sub_22035ADC0(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
              if (v7 <= 0x3F)
              {
                sub_22035ADC0(319, &qword_281266768, sub_220288778, sub_2202887D0, &type metadata for FeedViewExperienceData);
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

unint64_t sub_22035CBD8()
{
  result = qword_27CF29770;
  if (!qword_27CF29770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29770);
  }

  return result;
}

unint64_t sub_22035CC30()
{
  result = qword_281265BB0;
  if (!qword_281265BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265BB0);
  }

  return result;
}

unint64_t sub_22035CC88()
{
  result = qword_281265BB8;
  if (!qword_281265BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265BB8);
  }

  return result;
}

uint64_t sub_22035CCDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220392A20 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_22035CFAC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_22035D02C(uint64_t a1)
{
  sub_2201FBAB4(0, &qword_281266AE0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22035D0B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22035D184(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_220304FA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22035D184(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22035D290(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22036FD98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_22035D290(uint64_t a1, unint64_t a2)
{
  v3 = sub_22035D2DC(a1, a2);
  sub_22035D40C(&unk_2833F0448);
  return v3;
}

void *sub_22035D2DC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22035D4F8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22036FD98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22036FB28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22035D4F8(v10, 0);
        result = sub_22036FD68();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22035D40C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22035D560(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22035D4F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_22035D648();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22035D560(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22035D648();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_22035D648()
{
  if (!qword_27CF29778)
  {
    v0 = sub_220370038();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF29778);
    }
  }
}

StocksAnalytics::Role_optional __swiftcall Role.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Role.rawValue.getter()
{
  v1 = 0x656C6369747261;
  if (*v0 != 1)
  {
    v1 = 0x50676E69646E616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_22035D758(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x656C6369747261;
  if (*a2 != 1)
  {
    v8 = 0x50676E69646E616CLL;
    v3 = 0xEB00000000656761;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_22035D86C()
{
  result = qword_27CF29780;
  if (!qword_27CF29780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29780);
  }

  return result;
}

uint64_t sub_22035D8C0()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22035D96C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22035DA04(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22035DAB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_22035DBE0()
{
  result = qword_2812622E0;
  if (!qword_2812622E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622E0);
  }

  return result;
}

uint64_t sub_22035DCFC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29788);
  __swift_project_value_buffer(v0, qword_27CF29788);
  return sub_22036F108();
}

uint64_t FeedLoadFailureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedLoadFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_22026A514(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_22026A514(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_22026A514(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t FeedLoadFailureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedLoadFailureEvent.Model.init(eventData:feedData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = sub_22036F388();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for FeedLoadFailureEvent.Model(0);
  v10 = a3 + *(result + 20);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  return result;
}

uint64_t sub_22035E15C(uint64_t a1)
{
  v2 = sub_22035E3C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22035E198(uint64_t a1)
{
  v2 = sub_22035E3C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedLoadFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22035E77C(0, &qword_27CF297A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035E3C0();
  sub_220370168();
  v15[0] = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = v3 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 20);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15[0] = *v10;
    v16 = v11;
    v17 = v12;
    v14[7] = 1;
    sub_2201FBD1C();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22035E3C0()
{
  result = qword_27CF297A8;
  if (!qword_27CF297A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF297A8);
  }

  return result;
}

uint64_t FeedLoadFailureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_22036F388();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22035E77C(0, &qword_27CF297B0, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  MEMORY[0x28223BE20](Failure);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035E3C0();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = Failure;
  v13 = v12;
  v14 = v26;
  v30 = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v29;
  v16 = v27;
  sub_22036FF28();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v33 = 1;
  sub_2201FBCC4();
  sub_22036FF28();
  (*(v28 + 8))(v9, v16);
  v18 = v31;
  v19 = v32;
  v20 = v23;
  v21 = v23 + *(v24 + 20);
  *v21 = v30;
  *(v21 + 8) = v18;
  *(v21 + 16) = v19;
  sub_22035E7E0(v20, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22035E844(v20);
}

void sub_22035E77C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22035E3C0();
    v7 = a3(a1, &type metadata for FeedLoadFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22035E7E0(uint64_t a1, uint64_t a2)
{
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 16))(a2, a1, Failure);
  return a2;
}

uint64_t sub_22035E844(uint64_t a1)
{
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 8))(a1, Failure);
  return a1;
}

unint64_t sub_22035E9DC()
{
  result = qword_27CF297C8;
  if (!qword_27CF297C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF297C8);
  }

  return result;
}

unint64_t sub_22035EA34()
{
  result = qword_27CF297D0;
  if (!qword_27CF297D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF297D0);
  }

  return result;
}

unint64_t sub_22035EA8C()
{
  result = qword_27CF297D8;
  if (!qword_27CF297D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF297D8);
  }

  return result;
}

uint64_t sub_22035EBA8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29810);
  __swift_project_value_buffer(v0, qword_27CF29810);
  return sub_22036F108();
}

uint64_t AdEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AdEngagementEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 20);
  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdEngagementEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 20);
  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdEngagementEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 24);
  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdEngagementEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 24);
  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdEngagementEvent.adEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 28);
  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618, &type metadata for AdEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdEngagementEvent.adEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 28);
  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618, &type metadata for AdEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 32);
  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22035F2B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t AdEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdEngagementEvent(0) + 32);
  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AdEngagementEvent(0);
  v5 = v4[5];
  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618, &type metadata for AdEngagementData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t AdEngagementEvent.Model.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AdEngagementEvent.Model(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2202823D8(v10, v9);
}

uint64_t AdEngagementEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdEngagementEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AdEngagementEvent.Model.adEngagementData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AdEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdEngagementEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

__n128 AdEngagementEvent.Model.init(eventData:adData:viewData:adEngagementData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 8);
  v12 = *a4;
  v25 = *a5;
  v13 = a5[1].n128_u64[0];
  v14 = a5[1].n128_u64[1];
  v15 = a5[2].n128_u8[0];
  v24 = a5[2].n128_u8[1];
  v16 = sub_22036F388();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for AdEngagementEvent.Model(0);
  v18 = a6 + v17[5];
  v19 = *(a2 + 48);
  *(v18 + 32) = *(a2 + 32);
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a2 + 64);
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  v21 = a6 + v17[6];
  *v21 = v9;
  *(v21 + 8) = v10;
  *(v21 + 16) = v11;
  *(a6 + v17[7]) = v12;
  v22 = (a6 + v17[8]);
  result = v25;
  *v22 = v25;
  v22[1].n128_u64[0] = v13;
  v22[1].n128_u64[1] = v14;
  v22[2].n128_u8[0] = v15;
  v22[2].n128_u8[1] = v24;
  return result;
}

uint64_t sub_22035F92C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x446C656E6E616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617461446461;
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

uint64_t sub_22035F9D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220360B4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22035F9FC(uint64_t a1)
{
  v2 = sub_22035FE1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22035FA38(uint64_t a1)
{
  v2 = sub_22035FE1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220360344(0, &qword_27CF29828, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035FE1C();
  sub_220370168();
  v45 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for AdEngagementEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v42 = *(v11 + 32);
    v43 = v13;
    v14 = *(v11 + 16);
    v41[0] = *v11;
    v41[1] = v14;
    v37 = v12;
    v38 = v42;
    v39 = *(v11 + 48);
    v44 = *(v11 + 64);
    v40 = *(v11 + 64);
    v36 = v41[0];
    v35 = 1;
    sub_2202823D8(v41, v33);
    sub_220281D4C();
    sub_22036FFF8();
    v33[2] = v38;
    v33[3] = v39;
    v34 = v40;
    v33[0] = v36;
    v33[1] = v37;
    sub_220282A40(v33);
    v15 = (v3 + v10[6]);
    v16 = *v15;
    v17 = v15[1];
    LOWORD(v15) = *(v15 + 8);
    v26 = v16;
    v27 = v17;
    LOWORD(v28) = v15;
    v32 = 2;
    sub_220202110();

    sub_22036FFF8();

    LOBYTE(v26) = *(v3 + v10[7]);
    v32 = 3;
    sub_2202DD618();
    sub_22036FFF8();
    v19 = (v3 + v10[8]);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v24 = *(v19 + 32);
    LOBYTE(v19) = *(v19 + 33);
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v31 = v19;
    v32 = 4;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22035FE1C()
{
  result = qword_27CF29830;
  if (!qword_27CF29830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29830);
  }

  return result;
}

uint64_t AdEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_22036F388();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220360344(0, &qword_27CF29838, MEMORY[0x277D844C8]);
  v33 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for AdEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22035FE1C();
  v32 = v8;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v29;
  LOBYTE(v39) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v13 = v30;
  sub_22036FF28();
  (*(v12 + 32))(v11, v13, v4);
  v45 = 1;
  sub_220281CF8();
  sub_22036FF28();
  v14 = v31;
  v15 = &v11[v9[5]];
  v16 = v42;
  *(v15 + 2) = v41;
  *(v15 + 3) = v16;
  *(v15 + 8) = v43;
  v17 = v40;
  *v15 = v39;
  *(v15 + 1) = v17;
  v44 = 2;
  sub_2202020B8();
  v30 = 0;
  sub_22036FF28();
  v18 = *(&v34 + 1);
  v19 = v35;
  v20 = &v11[v9[6]];
  *v20 = v34;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  v44 = 3;
  sub_2202DD5C4();
  sub_22036FF28();
  v11[v9[7]] = v34;
  v44 = 4;
  sub_220236A30();
  sub_22036FF28();
  (*(v14 + 8))(v32, v33);
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = &v11[v9[8]];
  *v25 = v34;
  *(v25 + 2) = v21;
  *(v25 + 3) = v22;
  v25[32] = v23;
  v25[33] = v24;
  sub_2203603A8(v11, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22036040C(v11);
}

void sub_220360344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22035FE1C();
    v7 = a3(a1, &type metadata for AdEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2203603A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22036040C(uint64_t a1)
{
  v2 = type metadata accessor for AdEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220360540@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618, &type metadata for AdEngagementData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_2203607C8(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22035F2B0(319, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
    if (v2 <= 0x3F)
    {
      sub_22035F2B0(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_22035F2B0(319, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618, &type metadata for AdEngagementData);
        if (v4 <= 0x3F)
        {
          sub_22035F2B0(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22036099C(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220360A48()
{
  result = qword_27CF29860;
  if (!qword_27CF29860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29860);
  }

  return result;
}

unint64_t sub_220360AA0()
{
  result = qword_27CF29868;
  if (!qword_27CF29868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29868);
  }

  return result;
}

unint64_t sub_220360AF8()
{
  result = qword_27CF29870;
  if (!qword_27CF29870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29870);
  }

  return result;
}

uint64_t sub_220360B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002203913F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_220360DD4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281263FF8);
  __swift_project_value_buffer(v0, qword_281263FF8);
  return sub_22036F108();
}

uint64_t NewsArticleViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NewsArticleViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 24);
  sub_220362F1C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 24);
  sub_220362F1C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 28);
  sub_220362F1C(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 28);
  sub_220362F1C(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 32);
  sub_220362F1C(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 32);
  sub_220362F1C(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 36);
  sub_220362F1C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 36);
  sub_220362F1C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 40);
  sub_220362F1C(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 40);
  sub_220362F1C(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 44);
  sub_220362F1C(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 44);
  sub_220362F1C(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 48);
  sub_220362F1C(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 48);
  sub_220362F1C(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.userArticleContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 52);
  sub_220362F1C(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.userArticleContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 52);
  sub_220362F1C(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 56);
  sub_220362F1C(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 56);
  sub_220362F1C(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 60);
  sub_220362F1C(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 60);
  sub_220362F1C(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.badgeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 64);
  sub_220362F1C(0, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.badgeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 64);
  sub_220362F1C(0, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 68);
  sub_220362F1C(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 68);
  sub_220362F1C(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.articleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 72);
  sub_220362F1C(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.articleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 72);
  sub_220362F1C(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 76);
  sub_220362F1C(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 76);
  sub_220362F1C(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 80);
  sub_220362F1C(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 80);
  sub_220362F1C(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 84);
  sub_220362F1C(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 84);
  sub_220362F1C(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 88);
  sub_220362F1C(0, &qword_281266780, sub_2202DC188, sub_2202DC1E0, &type metadata for ReferringArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.referringArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 88);
  sub_220362F1C(0, &qword_281266780, sub_2202DC188, sub_2202DC1E0, &type metadata for ReferringArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 92);
  sub_220362F1C(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 92);
  sub_220362F1C(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 96);
  sub_220362F1C(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220362F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t NewsArticleViewEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewEvent(0) + 96);
  sub_220362F1C(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NewsArticleViewEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220362F1C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_220362F1C(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_220362F1C(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_220362F1C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_220362F1C(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_220362F1C(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_220362F1C(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_220362F1C(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_220362F1C(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_220362F1C(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_220362F1C(0, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
  (*(*(v29 - 8) + 104))(a1 + v28, v10, v29);
  v30 = v4[17];
  sub_220362F1C(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  sub_220362F1C(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  (*(*(v33 - 8) + 104))(a1 + v32, v2, v33);
  v34 = v4[19];
  sub_220362F1C(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  (*(*(v35 - 8) + 104))(a1 + v34, v2, v35);
  v36 = v4[20];
  sub_220362F1C(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  (*(*(v37 - 8) + 104))(a1 + v36, v10, v37);
  v38 = v4[21];
  sub_220362F1C(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  (*(*(v39 - 8) + 104))(a1 + v38, v10, v39);
  v40 = v4[22];
  sub_220362F1C(0, &qword_281266780, sub_2202DC188, sub_2202DC1E0, &type metadata for ReferringArticleData);
  (*(*(v41 - 8) + 104))(a1 + v40, v10, v41);
  v42 = v4[23];
  sub_220362F1C(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  (*(*(v43 - 8) + 104))(a1 + v42, v10, v43);
  v44 = v4[24];
  sub_220362F1C(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v46 = *(*(v45 - 8) + 104);

  return v46(a1 + v44, v10, v45);
}

uint64_t sub_220363A9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t NewsArticleViewEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t NewsArticleViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NewsArticleViewEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NewsArticleViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 36);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

void NewsArticleViewEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

uint64_t NewsArticleViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t NewsArticleViewEvent.Model.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 48);
  v4 = *(v3 + 144);
  v5 = *(v3 + 176);
  v32 = *(v3 + 160);
  v33 = v5;
  v6 = *(v3 + 80);
  v7 = *(v3 + 112);
  v28 = *(v3 + 96);
  v8 = v28;
  v29 = v7;
  v9 = *(v3 + 112);
  v10 = *(v3 + 144);
  v30 = *(v3 + 128);
  v11 = v30;
  v31 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v26 = *(v3 + 64);
  v14 = v26;
  v27 = v13;
  v15 = *(v3 + 16);
  v16 = *(v3 + 48);
  v24 = *(v3 + 32);
  v17 = v24;
  v25 = v16;
  v18 = *(v3 + 16);
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  v20 = *(v3 + 176);
  *(a1 + 160) = v32;
  *(a1 + 176) = v20;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 128) = v11;
  *(a1 + 144) = v4;
  *(a1 + 32) = v17;
  *(a1 + 48) = v12;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  v34 = *(v3 + 192);
  *(a1 + 192) = *(v3 + 192);
  *a1 = v19;
  *(a1 + 16) = v15;
  return sub_220272A1C(v23, v22);
}

uint64_t NewsArticleViewEvent.Model.userArticleContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t NewsArticleViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t NewsArticleViewEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NewsArticleViewEvent.Model.badgeData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t NewsArticleViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

uint64_t NewsArticleViewEvent.Model.articleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 72));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NewsArticleViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t NewsArticleViewEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 80));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void NewsArticleViewEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 84));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_220298C74(v4, v5, v6, v7, v8, v9);
}

uint64_t NewsArticleViewEvent.Model.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewEvent.Model(0) + 88);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t NewsArticleViewEvent.Model.paywallData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 92));
  return result;
}

uint64_t NewsArticleViewEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 96));
  return result;
}

__n128 NewsArticleViewEvent.Model.init(eventData:timedData:newsArticleData:feedPositionData:inGroupPositionData:feedData:groupData:viewData:articleScienceData:userArticleContextData:orientationData:issueData:badgeData:channelData:articleViewData:viewEndData:purchaseSessionData:campaignData:referringArticleData:paywallData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, int *a4@<X3>, int *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int16 *a11, __int16 *a12, uint64_t *a13, __int16 *a14, __int128 *a15, uint64_t *a16, char *a17, uint64_t *a18, __int128 *a19, __n128 *a20, char *a21, char *a22)
{
  v27 = *a4;
  v64 = *(a4 + 4);
  v65 = *(a5 + 4);
  v66 = *a5;
  v68 = *a6;
  v67 = *(a6 + 2);
  v70 = a8[1];
  v71 = *a8;
  v69 = *(a8 + 8);
  v74 = *a11;
  v75 = *a12;
  v76 = a13[1];
  v77 = *a13;
  v78 = *a14;
  v88 = *a15;
  v84 = *(a15 + 2);
  v83 = *(a15 + 3);
  v81 = *(a15 + 33);
  v82 = *(a15 + 32);
  v85 = a16[1];
  v86 = *a16;
  v87 = *a17;
  v89 = a18[1];
  v90 = *a18;
  v95 = *a20;
  v92 = a20[1].n128_u64[0];
  v91 = a20[1].n128_u8[8];
  v93 = *a21;
  v94 = *a22;
  v28 = *(a7 + 4);
  v29 = *(a7 + 5);
  v79 = *(a19 + 5);
  v80 = *(a19 + 4);
  v30 = sub_22036F388();
  v72 = a19[1];
  v73 = *a19;
  v62 = a7[1];
  v63 = *a7;
  (*(*(v30 - 8) + 32))(a9, a1, v30);
  v31 = type metadata accessor for NewsArticleViewEvent.Model(0);
  v32 = v31[5];
  v33 = sub_22036F3C8();
  (*(*(v33 - 8) + 32))(a9 + v32, a2, v33);
  v34 = a9 + v31[6];
  *(v34 + 64) = *(a3 + 16);
  v35 = a3[3];
  v37 = *a3;
  v36 = a3[1];
  *(v34 + 32) = a3[2];
  *(v34 + 48) = v35;
  *v34 = v37;
  *(v34 + 16) = v36;
  v38 = a9 + v31[7];
  *v38 = v27;
  *(v38 + 4) = v64;
  v39 = a9 + v31[8];
  *v39 = v66;
  *(v39 + 4) = v65;
  v40 = a9 + v31[9];
  *(v40 + 16) = v67;
  *v40 = v68;
  v41 = a9 + v31[10];
  *(v41 + 32) = v28;
  *(v41 + 40) = v29;
  *v41 = v63;
  *(v41 + 16) = v62;
  v42 = a9 + v31[11];
  *v42 = v71;
  *(v42 + 8) = v70;
  *(v42 + 16) = v69;
  v43 = a9 + v31[12];
  *(v43 + 192) = *(a10 + 24);
  v44 = a10[11];
  v45 = a10[6];
  v46 = a10[7];
  v48 = a10[8];
  v47 = a10[9];
  v49 = a10[2];
  v50 = a10[3];
  v52 = a10[4];
  v51 = a10[5];
  v54 = *a10;
  v53 = a10[1];
  *(v43 + 160) = a10[10];
  *(v43 + 176) = v44;
  *(v43 + 96) = v45;
  *(v43 + 112) = v46;
  *(v43 + 128) = v48;
  *(v43 + 144) = v47;
  *(v43 + 32) = v49;
  *(v43 + 48) = v50;
  *(v43 + 64) = v52;
  *(v43 + 80) = v51;
  *v43 = v54;
  *(v43 + 16) = v53;
  *(a9 + v31[13]) = v74;
  *(a9 + v31[14]) = v75;
  v55 = (a9 + v31[15]);
  *v55 = v77;
  v55[1] = v76;
  *(a9 + v31[16]) = v78;
  v56 = a9 + v31[17];
  *(v56 + 16) = v84;
  *(v56 + 24) = v83;
  *(v56 + 32) = v82;
  *(v56 + 33) = v81;
  *v56 = v88;
  v57 = (a9 + v31[18]);
  *v57 = v86;
  v57[1] = v85;
  *(a9 + v31[19]) = v87;
  v58 = (a9 + v31[20]);
  *v58 = v90;
  v58[1] = v89;
  v59 = a9 + v31[21];
  *(v59 + 32) = v80;
  *(v59 + 40) = v79;
  *v59 = v73;
  *(v59 + 16) = v72;
  v60 = (a9 + v31[22]);
  v60[1].n128_u64[0] = v92;
  v60[1].n128_u8[8] = v91;
  result = v95;
  *v60 = v95;
  *(a9 + v31[23]) = v93;
  *(a9 + v31[24]) = v94;
  return result;
}

uint64_t sub_220364480(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x74614464656D6974;
    case 2:
      return 0x697472417377656ELL;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0xD000000000000013;
    case 5:
      v4 = 1684366694;
      return v4 | 0x6174614400000000;
    case 6:
      return 0x74614470756F7267;
    case 7:
      v4 = 2003134838;
      return v4 | 0x6174614400000000;
    case 8:
      return 0xD000000000000012;
    case 9:
      return 0xD000000000000016;
    case 10:
      return 0x7461746E6569726FLL;
    case 11:
      v3 = 1970500457;
      return v3 | 0x7461446500000000;
    case 12:
      v3 = 1734631778;
      return v3 | 0x7461446500000000;
    case 13:
      v5 = 0x656E6E616863;
      goto LABEL_25;
    case 14:
      return 0x56656C6369747261;
    case 15:
      return 0x44646E4577656976;
    case 16:
      return 0xD000000000000013;
    case 17:
      return 0x6E676961706D6163;
    case 18:
      return 0xD000000000000014;
    case 19:
      v5 = 0x6C6177796170;
LABEL_25:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2203646CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220366E44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220364700(uint64_t a1)
{
  v2 = sub_2203651F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22036473C(uint64_t a1)
{
  v2 = sub_2203651F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsArticleViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203661D4(0, &qword_27CF29878, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203651F8();
  sub_220370168();
  LOBYTE(v88) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for NewsArticleViewEvent.Model(0);
    v117 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + v10[6];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v114 = *(v11 + 32);
    v115 = v13;
    v14 = *(v11 + 16);
    v113[0] = *v11;
    v113[1] = v14;
    v15 = *(v11 + 48);
    v110 = v114;
    v111 = v15;
    v116 = *(v11 + 64);
    v112 = *(v11 + 64);
    v108 = v113[0];
    v109 = v12;
    v107 = 2;
    sub_22022ECDC(v113, &v88);
    sub_22022EDA0();
    sub_22036FFF8();
    v105[2] = v110;
    v105[3] = v111;
    v106 = v112;
    v105[0] = v108;
    v105[1] = v109;
    sub_22022ED14(v105);
    v16 = (v3 + v10[7]);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 4);
    LODWORD(v88) = v17;
    BYTE4(v88) = v16;
    LOBYTE(v75) = 3;
    sub_2202760D8();
    sub_22036FF88();
    v18 = (v3 + v10[8]);
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 4);
    LODWORD(v88) = v19;
    BYTE4(v88) = v18;
    LOBYTE(v75) = 4;
    sub_220276330();
    sub_22036FF88();
    v20 = (v3 + v10[9]);
    v21 = *(v20 + 2);
    v88 = *v20;
    *&v89 = v21;
    LOBYTE(v75) = 5;
    sub_2201FBD1C();

    sub_22036FF88();

    v22 = (v3 + v10[10]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v27 = v22[5];
    *&v88 = *v22;
    *(&v88 + 1) = v23;
    *&v89 = v24;
    *(&v89 + 1) = v25;
    *&v90 = v26;
    *(&v90 + 1) = v27;
    LOBYTE(v75) = 6;
    sub_22023846C(v88, v23, v24, v25, v26, v27);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1));
    v29 = (v3 + v10[11]);
    v30 = *v29;
    v31 = v29[1];
    LOWORD(v29) = *(v29 + 8);
    v102 = v30;
    v103 = v31;
    v104 = v29;
    v101 = 7;
    sub_220202110();

    sub_22036FFF8();

    v32 = (v3 + v10[12]);
    v33 = v32[9];
    v34 = v32[11];
    v98 = v32[10];
    v99 = v34;
    v35 = v32[5];
    v36 = v32[7];
    v94 = v32[6];
    v95 = v36;
    v37 = v32[7];
    v38 = v32[9];
    v96 = v32[8];
    v97 = v38;
    v39 = v32[1];
    v40 = v32[3];
    v90 = v32[2];
    v91 = v40;
    v41 = v32[3];
    v42 = v32[5];
    v92 = v32[4];
    v93 = v42;
    v43 = v32[1];
    v88 = *v32;
    v89 = v43;
    v44 = v32[11];
    v85 = v98;
    v86 = v44;
    v81 = v94;
    v82 = v37;
    v83 = v96;
    v84 = v33;
    v77 = v90;
    v78 = v41;
    v79 = v92;
    v80 = v35;
    v100 = *(v32 + 24);
    v87 = *(v32 + 24);
    v75 = v88;
    v76 = v39;
    v74 = 8;
    sub_220272A1C(&v88, v72);
    sub_22025E6C0();
    sub_22036FFF8();
    v72[9] = v84;
    v72[10] = v85;
    v72[11] = v86;
    v72[5] = v80;
    v72[6] = v81;
    v73 = v87;
    v72[7] = v82;
    v72[8] = v83;
    v72[2] = v77;
    v72[3] = v78;
    v72[4] = v79;
    v72[0] = v75;
    v72[1] = v76;
    sub_22027391C(v72);
    LOWORD(v66) = *(v3 + v10[13]);
    v71 = 9;
    sub_22025E918();
    sub_22036FFF8();
    LOWORD(v66) = *(v3 + v10[14]);
    v71 = 10;
    sub_2201F8860();
    sub_22036FFF8();
    v45 = (v3 + v10[15]);
    v46 = v45[1];
    v66 = *v45;
    *&v67 = v46;
    v71 = 11;
    sub_220237744();

    sub_22036FF88();

    LOWORD(v66) = *(v3 + v10[16]);
    v71 = 12;
    sub_2202FD580();
    sub_22036FF88();
    v47 = v3 + v10[17];
    v48 = *v47;
    v49 = *(v47 + 8);
    v50 = *(v47 + 16);
    v51 = *(v47 + 24);
    v52 = *(v47 + 32);
    LOBYTE(v47) = *(v47 + 33);
    v66 = v48;
    *&v67 = v49;
    *(&v67 + 1) = v50;
    v68 = v51;
    LOBYTE(v69) = v52;
    BYTE1(v69) = v47;
    v71 = 13;
    sub_220236A84();

    sub_22036FFF8();

    v53 = (v3 + v10[18]);
    v54 = v53[1];
    v66 = *v53;
    *&v67 = v54;
    v71 = 14;
    sub_220250F98();

    sub_22036FFF8();

    LOBYTE(v66) = *(v3 + v10[19]);
    v71 = 15;
    sub_2202310D4();
    sub_22036FFF8();
    v55 = (v3 + v10[20]);
    v56 = v55[1];
    v66 = *v55;
    *&v67 = v56;
    v71 = 16;
    sub_220265D28();

    sub_22036FF88();

    v57 = (v3 + v10[21]);
    v58 = v57[1];
    v59 = v57[2];
    v60 = v57[3];
    v61 = v57[4];
    v62 = v57[5];
    v66 = *v57;
    *&v67 = v58;
    *(&v67 + 1) = v59;
    v68 = v60;
    v69 = v61;
    v70 = v62;
    v71 = 17;
    sub_220298C74(v66, v58, v59, v60, v61, v62);
    sub_2202981C0();
    sub_22036FF88();
    sub_220299818(v66, v67, *(&v67 + 1), v68, v69, v70);
    v63 = v3 + v10[22];
    v64 = *(v63 + 24);
    v66 = *v63;
    v67 = *(v63 + 8);
    LOBYTE(v68) = v64;
    v71 = 18;
    sub_2202DC1E0();

    sub_22036FF88();

    LOBYTE(v66) = *(v3 + v10[23]);
    v71 = 19;
    sub_220266254();
    sub_22036FF88();
    LOBYTE(v66) = *(v3 + v10[24]);
    v71 = 20;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2203651F8()
{
  result = qword_281263FE0;
  if (!qword_281263FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263FE0);
  }

  return result;
}

void NewsArticleViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_22036F3C8();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v62 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203661D4(0, &qword_281261DB0, MEMORY[0x277D844C8]);
  v65 = v7;
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v54 - v8;
  v10 = type metadata accessor for NewsArticleViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203651F8();
  v64 = v9;
  v13 = v66;
  sub_220370148();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v61;
    v55 = v10;
    v56 = a1;
    v66 = v12;
    LOBYTE(v75) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v15 = v62;
    sub_22036FF28();
    v16 = *(v60 + 32);
    v17 = v66;
    v62 = v5;
    v16(v66, v15, v5);
    LOBYTE(v75) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v18 = v14;
    v19 = v59;
    sub_22036FF28();
    v54[1] = 0;
    v20 = v55;
    (*(v58 + 32))(&v17[v55[5]], v18, v19);
    v90 = 2;
    sub_22022ED48();
    sub_22036FF28();
    v21 = &v17[v20[6]];
    v22 = v73;
    *(v21 + 2) = v72;
    *(v21 + 3) = v22;
    *(v21 + 16) = v74;
    v23 = v71;
    *v21 = v70;
    *(v21 + 1) = v23;
    LOBYTE(v67) = 3;
    sub_220276084();
    sub_22036FEB8();
    v24 = BYTE4(v75);
    v25 = &v17[v20[7]];
    *v25 = v75;
    v25[4] = v24;
    LOBYTE(v67) = 4;
    sub_2202762DC();
    sub_22036FEB8();
    v26 = BYTE4(v75);
    v27 = &v17[v20[8]];
    *v27 = v75;
    v27[4] = v26;
    LOBYTE(v67) = 5;
    sub_2201FBCC4();
    sub_22036FEB8();
    v28 = v76;
    v29 = &v17[v20[9]];
    *v29 = v75;
    *(v29 + 2) = v28;
    LOBYTE(v67) = 6;
    sub_220236C88();
    sub_22036FEB8();
    v30 = &v17[v20[10]];
    v31 = v76;
    *v30 = v75;
    *(v30 + 1) = v31;
    *(v30 + 2) = v77;
    LOBYTE(v67) = 7;
    sub_2202020B8();
    sub_22036FF28();
    v32 = *(&v75 + 1);
    v33 = v76;
    v34 = &v17[v20[11]];
    *v34 = v75;
    *(v34 + 1) = v32;
    *(v34 + 8) = v33;
    v89 = 8;
    sub_22025E66C();
    sub_22036FF28();
    v35 = &v66[v55[12]];
    v36 = v86;
    *(v35 + 10) = v85;
    *(v35 + 11) = v36;
    *(v35 + 24) = v87;
    v37 = v82;
    *(v35 + 6) = v81;
    *(v35 + 7) = v37;
    v38 = v84;
    *(v35 + 8) = v83;
    *(v35 + 9) = v38;
    v39 = v78;
    *(v35 + 2) = v77;
    *(v35 + 3) = v39;
    v40 = v80;
    *(v35 + 4) = v79;
    *(v35 + 5) = v40;
    v41 = v76;
    *v35 = v75;
    *(v35 + 1) = v41;
    v88 = 9;
    sub_22025E8C4();
    sub_22036FF28();
    *&v66[v55[13]] = v67;
    v88 = 10;
    sub_2201F8808();
    sub_22036FF28();
    *&v66[v55[14]] = v67;
    v88 = 11;
    sub_2202376F0();
    sub_22036FEB8();
    *&v66[v55[15]] = v67;
    v88 = 12;
    sub_2202FD52C();
    sub_22036FEB8();
    *&v66[v55[16]] = v67;
    v88 = 13;
    sub_220236A30();
    sub_22036FF28();
    v42 = v68;
    v43 = v69;
    v44 = BYTE1(v69);
    v45 = &v66[v55[17]];
    *v45 = v67;
    *(v45 + 1) = v42;
    v45[32] = v43;
    v45[33] = v44;
    v88 = 14;
    sub_220250F44();
    sub_22036FF28();
    v46 = *(&v67 + 1);
    v47 = &v66[v55[18]];
    *v47 = v67;
    *(v47 + 1) = v46;
    v88 = 15;
    sub_220231080();
    sub_22036FF28();
    v66[v55[19]] = v67;
    v88 = 16;
    sub_220265CD4();
    sub_22036FEB8();
    *&v66[v55[20]] = v67;
    v88 = 17;
    sub_22029816C();
    sub_22036FEB8();
    v48 = &v66[v55[21]];
    v49 = v68;
    *v48 = v67;
    *(v48 + 1) = v49;
    *(v48 + 2) = v69;
    v88 = 18;
    sub_2202DC188();
    sub_22036FEB8();
    v50 = v68;
    v51 = BYTE8(v68);
    v52 = &v66[v55[22]];
    *v52 = v67;
    *(v52 + 2) = v50;
    v52[24] = v51;
    v88 = 19;
    sub_220266200();
    sub_22036FEB8();
    v66[v55[23]] = v67;
    v88 = 20;
    sub_220237C1C();
    sub_22036FEB8();
    (*(v63 + 8))(v64, v65);
    v53 = v66;
    v66[v55[24]] = v67;
    sub_220366238(v53, v57);
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_22036629C(v53);
  }
}

void sub_2203661D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203651F8();
    v7 = a3(a1, &type metadata for NewsArticleViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220366238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22036629C(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticleViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2203663FC(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_220362F1C(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_220362F1C(319, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
        if (v4 <= 0x3F)
        {
          sub_220362F1C(319, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
          if (v5 <= 0x3F)
          {
            sub_220362F1C(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_220362F1C(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_220362F1C(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_220362F1C(319, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
                  if (v9 <= 0x3F)
                  {
                    sub_220362F1C(319, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_220362F1C(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
                      if (v11 <= 0x3F)
                      {
                        sub_220362F1C(319, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
                        if (v12 <= 0x3F)
                        {
                          sub_220362F1C(319, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
                          if (v13 <= 0x3F)
                          {
                            sub_220362F1C(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
                            if (v14 <= 0x3F)
                            {
                              sub_220362F1C(319, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
                              if (v15 <= 0x3F)
                              {
                                sub_220362F1C(319, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
                                if (v16 <= 0x3F)
                                {
                                  sub_220362F1C(319, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_220362F1C(319, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_220362F1C(319, &qword_281266780, sub_2202DC188, sub_2202DC1E0, &type metadata for ReferringArticleData);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_220362F1C(319, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_220362F1C(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
                                          if (v21 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_220366A9C(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_2812652B8, &type metadata for FeedPositionData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_2812644F0, &type metadata for InGroupPositionData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_281262008, &type metadata for IssueData);
              if (v7 <= 0x3F)
              {
                sub_22023A8F4(319, &qword_2812620C0, &type metadata for BadgeData);
                if (v8 <= 0x3F)
                {
                  sub_22023A8F4(319, &qword_2812644B0, &type metadata for PurchaseSessionData);
                  if (v9 <= 0x3F)
                  {
                    sub_22023A8F4(319, &qword_281265DA0, &type metadata for CampaignData);
                    if (v10 <= 0x3F)
                    {
                      sub_22023A8F4(319, &qword_281263CA0, &type metadata for ReferringArticleData);
                      if (v11 <= 0x3F)
                      {
                        sub_22023A8F4(319, &qword_281266008, &type metadata for PaywallData);
                        if (v12 <= 0x3F)
                        {
                          sub_22023A8F4(319, &qword_281265970, &type metadata for WatchlistData);
                          if (v13 <= 0x3F)
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

unint64_t sub_220366D40()
{
  result = qword_27CF29880;
  if (!qword_27CF29880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29880);
  }

  return result;
}

unint64_t sub_220366D98()
{
  result = qword_281263FD0;
  if (!qword_281263FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263FD0);
  }

  return result;
}

unint64_t sub_220366DF0()
{
  result = qword_281263FD8;
  if (!qword_281263FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263FD8);
  }

  return result;
}

uint64_t sub_220366E44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390A80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390890 == a2 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002203908B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461446567646162 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x56656C6369747261 && a2 == 0xEF61746144776569 || (sub_220370048() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002203909D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392B30 == a2 || (sub_220370048() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 20;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_2203675A0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF298B8);
  __swift_project_value_buffer(v0, qword_27CF298B8);
  return sub_22036F108();
}

uint64_t SubscribeButtonTapEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscribeButtonTapEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 20);
  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 20);
  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 24);
  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 24);
  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 28);
  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 28);
  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 32);
  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 32);
  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 36);
  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 36);
  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 40);
  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 40);
  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 44);
  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 44);
  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 48);
  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 48);
  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.subscribeButtonContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 52);
  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214, &type metadata for SubscribeButtonContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220368518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SubscribeButtonTapEvent.subscribeButtonContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 52);
  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214, &type metadata for SubscribeButtonContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscribeButtonTapEvent(0);
  v5 = v4[5];
  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  (*(*(v21 - 8) + 104))(a1 + v20, v8, v21);
  v22 = v4[13];
  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214, &type metadata for SubscribeButtonContextData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t SubscribeButtonTapEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonTapEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2202669E8(v10, v9);
}

uint64_t SubscribeButtonTapEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

void SubscribeButtonTapEvent.Model.channelData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  sub_2202440A8(v4, v5, v6, v7);
}

void SubscribeButtonTapEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

uint64_t SubscribeButtonTapEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscribeButtonTapEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonTapEvent.Model.paywallData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t SubscribeButtonTapEvent.Model.subscribeButtonContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 SubscribeButtonTapEvent.Model.init(eventData:viewData:newsArticleData:feedData:channelData:groupData:purchaseSessionData:purchaseData:paywallData:subscribeButtonContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char *a10, __int16 *a11)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 8);
  v37 = *a4;
  v19 = *(a4 + 2);
  v20 = *(a5 + 16);
  v38 = *(a6 + 40);
  v39 = *(a6 + 32);
  v40 = a7[1];
  v41 = *a7;
  v43 = a8[1];
  v44 = *a8;
  v42 = *(a8 + 16);
  v45 = *a10;
  v46 = *a11;
  v21 = sub_22036F388();
  v35 = *(a6 + 16);
  v36 = *a6;
  v33 = a5[1];
  v34 = *a5;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  v23 = a9 + v22[5];
  *v23 = v16;
  *(v23 + 8) = v17;
  *(v23 + 16) = v18;
  v24 = a9 + v22[6];
  v25 = *(a3 + 48);
  *(v24 + 32) = *(a3 + 32);
  *(v24 + 48) = v25;
  *(v24 + 64) = *(a3 + 64);
  v26 = *(a3 + 16);
  *v24 = *a3;
  *(v24 + 16) = v26;
  v27 = a9 + v22[7];
  *v27 = v37;
  *(v27 + 16) = v19;
  v28 = a9 + v22[8];
  *v28 = v34;
  *(v28 + 16) = v33;
  *(v28 + 32) = v20;
  v29 = a9 + v22[9];
  result = v36;
  *v29 = v36;
  *(v29 + 16) = v35;
  *(v29 + 32) = v39;
  *(v29 + 40) = v38;
  v31 = (a9 + v22[10]);
  *v31 = v41;
  v31[1] = v40;
  v32 = a9 + v22[11];
  *v32 = v44;
  *(v32 + 8) = v43;
  *(v32 + 16) = v42;
  *(a9 + v22[12]) = v45;
  *(a9 + v22[13]) = v46;
  return result;
}

unint64_t sub_220368FF4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6573616863727570;
    v6 = 0x446C6C6177796170;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x74614470756F7267;
    if (a1 != 5)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x697472417377656ELL;
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x446C656E6E616863;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6174614477656976;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_220369168@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22036AD68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220369190(uint64_t a1)
{
  v2 = sub_220369790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203691CC(uint64_t a1)
{
  v2 = sub_220369790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22036A0A0(0, &qword_27CF298D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220369790();
  sub_220370168();
  LOBYTE(v50[0]) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v54 = v12;
    v55 = v13;
    v56 = v11;
    v59 = 1;
    sub_220202110();

    sub_22036FFF8();

    v14 = v3 + v10[6];
    v15 = *(v14 + 16);
    v16 = *(v14 + 48);
    v51 = *(v14 + 32);
    v52 = v16;
    v17 = *(v14 + 16);
    v50[0] = *v14;
    v50[1] = v17;
    v18 = *(v14 + 48);
    v47 = v51;
    v48 = v18;
    v53 = *(v14 + 64);
    v49 = *(v14 + 64);
    v45 = v50[0];
    v46 = v15;
    v58 = 2;
    sub_2202669E8(v50, v43);
    sub_22022EDA0();
    sub_22036FF88();
    v43[2] = v47;
    v43[3] = v48;
    v44 = v49;
    v43[0] = v45;
    v43[1] = v46;
    sub_220267640(v43);
    v20 = (v3 + v10[7]);
    v21 = *(v20 + 2);
    v38 = *v20;
    v39 = v21;
    v57 = 3;
    sub_2201FBD1C();

    sub_22036FF88();

    v22 = v3 + v10[8];
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    v26 = *(v22 + 32);
    *&v38 = *v22;
    *(&v38 + 1) = v23;
    v39 = v24;
    v40 = v25;
    LOWORD(v41) = v26;
    v57 = 4;
    sub_2202440A8(v38, v23, v24, v25);
    sub_220236A84();
    sub_22036FF88();
    sub_220244C08(v38, *(&v38 + 1), v39, v40);
    v27 = (v3 + v10[9]);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    v31 = v27[4];
    v32 = v27[5];
    *&v38 = *v27;
    *(&v38 + 1) = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v57 = 5;
    sub_22023846C(v38, v28, v29, v30, v31, v32);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v38, *(&v38 + 1), v39, v40, v41, v42);
    v33 = (v3 + v10[10]);
    v34 = v33[1];
    *&v38 = *v33;
    *(&v38 + 1) = v34;
    v57 = 6;
    sub_220265D28();

    sub_22036FFF8();

    v35 = (v3 + v10[11]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v35) = *(v35 + 16);
    *&v38 = v36;
    *(&v38 + 1) = v37;
    LOBYTE(v39) = v35;
    v57 = 7;
    sub_220265F80();

    sub_22036FFF8();

    LOBYTE(v38) = *(v3 + v10[12]);
    v57 = 8;
    sub_220266254();
    sub_22036FF88();
    LOWORD(v38) = *(v3 + v10[13]);
    v57 = 9;
    sub_220357214();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220369790()
{
  result = qword_27CF298E0;
  if (!qword_27CF298E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF298E0);
  }

  return result;
}

void SubscribeButtonTapEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_22036F388();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036A0A0(0, &qword_27CF298E8, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220369790();
  v42 = v9;
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v38 = a1;
    v36 = v10;
    v37 = v12;
    LOBYTE(v48) = 0;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    v13 = v41;
    sub_22036FF28();
    v14 = v37;
    (*(v40 + 32))(v37, v13, v4);
    LOBYTE(v45) = 1;
    sub_2202020B8();
    sub_22036FF28();
    v35 = v4;
    v41 = 0;
    v15 = *(&v48 + 1);
    v16 = v49;
    v17 = v36;
    v18 = &v14[v36[5]];
    *v18 = v48;
    *(v18 + 1) = v15;
    *(v18 + 8) = v16;
    v54 = 2;
    sub_22022ED48();
    sub_22036FEB8();
    v19 = &v14[v17[6]];
    v20 = v51;
    *(v19 + 2) = v50;
    *(v19 + 3) = v20;
    *(v19 + 16) = v52;
    v21 = v49;
    *v19 = v48;
    *(v19 + 1) = v21;
    v53 = 3;
    sub_2201FBCC4();
    sub_22036FEB8();
    v22 = v46;
    v23 = &v14[v17[7]];
    *v23 = v45;
    *(v23 + 2) = v22;
    v53 = 4;
    sub_220236A30();
    sub_22036FEB8();
    v24 = v47;
    v25 = &v14[v17[8]];
    v26 = v46;
    *v25 = v45;
    *(v25 + 1) = v26;
    *(v25 + 16) = v24;
    v53 = 5;
    sub_220236C88();
    sub_22036FEB8();
    v27 = &v14[v17[9]];
    v28 = v46;
    *v27 = v45;
    *(v27 + 1) = v28;
    *(v27 + 2) = v47;
    v53 = 6;
    sub_220265CD4();
    sub_22036FF28();
    v29 = *(&v45 + 1);
    v30 = &v14[v17[10]];
    *v30 = v45;
    *(v30 + 1) = v29;
    v53 = 7;
    sub_220265F2C();
    sub_22036FF28();
    v31 = *(&v45 + 1);
    v32 = v46;
    v33 = &v14[v17[11]];
    *v33 = v45;
    *(v33 + 1) = v31;
    v33[16] = v32;
    v53 = 8;
    sub_220266200();
    sub_22036FEB8();
    v14[v17[12]] = v45;
    v53 = 9;
    sub_2203571BC();
    sub_22036FF28();
    (*(v44 + 8))(v42, v43);
    v34 = v37;
    *&v37[v36[13]] = v45;
    sub_22036A104(v34, v39);
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_22036A168(v34);
  }
}

void sub_22036A0A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220369790();
    v7 = a3(a1, &type metadata for SubscribeButtonTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22036A104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22036A168(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22036A29C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  (*(*(v22 - 8) + 104))(a2 + v21, v9, v22);
  v23 = a1[13];
  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214, &type metadata for SubscribeButtonContextData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

void sub_22036A790(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220368518(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_220368518(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_220368518(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_220368518(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
          if (v5 <= 0x3F)
          {
            sub_220368518(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_220368518(319, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
              if (v7 <= 0x3F)
              {
                sub_220368518(319, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
                if (v8 <= 0x3F)
                {
                  sub_220368518(319, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
                  if (v9 <= 0x3F)
                  {
                    sub_220368518(319, &qword_27CF298D0, sub_2203571BC, sub_220357214, &type metadata for SubscribeButtonContextData);
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

void sub_22036AAF4(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF26930, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF26288, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281266008, &type metadata for PaywallData);
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

unint64_t sub_22036AC64()
{
  result = qword_27CF29910;
  if (!qword_27CF29910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29910);
  }

  return result;
}

unint64_t sub_22036ACBC()
{
  result = qword_27CF29918;
  if (!qword_27CF29918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29918);
  }

  return result;
}

unint64_t sub_22036AD14()
{
  result = qword_27CF29920;
  if (!qword_27CF29920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29920);
  }

  return result;
}

uint64_t sub_22036AD68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002203909D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220392B50 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22036B0B8()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_27CF29928);
  v1 = __swift_project_value_buffer(v0, qword_27CF29928);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_22036B1A4()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_27CF29940);
  v1 = __swift_project_value_buffer(v0, qword_27CF29940);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_22036B264()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29958);
  __swift_project_value_buffer(v0, qword_27CF29958);
  return sub_22036F108();
}

uint64_t VideoAdEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdEngagementEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 20);
  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 20);
  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 24);
  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 24);
  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 28);
  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 28);
  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 32);
  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 32);
  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.videoAdEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 36);
  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88, &type metadata for VideoAdEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.videoAdEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 36);
  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88, &type metadata for VideoAdEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 40);
  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22036BCCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t VideoAdEngagementEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 40);
  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for VideoAdEngagementEvent(0);
  v5 = v4[5];
  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88, &type metadata for VideoAdEngagementData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t VideoAdEngagementEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

uint64_t VideoAdEngagementEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t VideoAdEngagementEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t VideoAdEngagementEvent.Model.videoAdEngagementData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for VideoAdEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t VideoAdEngagementEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 VideoAdEngagementEvent.Model.init(eventData:adUserData:channelData:feedData:videoAdData:videoAdEngagementData:adPlacementData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __n128 *a4@<X3>, int *a5@<X4>, __int16 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a3 + 2);
  v13 = *(a3 + 3);
  v14 = *(a3 + 32);
  v15 = *(a3 + 33);
  v26 = *a3;
  v27 = *a4;
  v16 = a4[1].n128_u64[0];
  v17 = *a5;
  v28 = *(a5 + 2);
  v29 = *(a5 + 1);
  v30 = *a6;
  v31 = a7[1];
  v32 = *a7;
  v18 = sub_22036F388();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v10;
  v20[1] = v11;
  v21 = a8 + v19[6];
  result = v27;
  *v21 = v26;
  *(v21 + 16) = v12;
  *(v21 + 24) = v13;
  *(v21 + 32) = v14;
  *(v21 + 33) = v15;
  v23 = (a8 + v19[7]);
  *v23 = v27;
  v23[1].n128_u64[0] = v16;
  v24 = a8 + v19[8];
  *v24 = v17;
  *(v24 + 8) = v29;
  *(v24 + 16) = v28;
  *(a8 + v19[9]) = v30;
  v25 = (a8 + v19[10]);
  *v25 = v32;
  v25[1] = v31;
  return result;
}

unint64_t sub_22036C4E8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0x6D6563616C506461;
  }

  v4 = 0x6174614464656566;
  if (v1 != 3)
  {
    v4 = 0x4464416F65646976;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6144726573556461;
  if (v1 != 1)
  {
    v5 = 0x446C656E6E616863;
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

uint64_t sub_22036C5E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22036DAD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22036C608(uint64_t a1)
{
  v2 = sub_22036CA78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22036C644(uint64_t a1)
{
  v2 = sub_22036CA78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22036D0B4(0, &qword_27CF29978, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036CA78();
  sub_220370168();
  LOBYTE(v27) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for VideoAdEngagementEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v27 = *v11;
    *(&v27 + 1) = v12;
    v32 = 1;
    sub_2201F9420();

    sub_22036FFF8();

    v13 = (v3 + v10[6]);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    v18 = *(v13 + 32);
    LOBYTE(v13) = *(v13 + 33);
    *&v27 = v14;
    *(&v27 + 1) = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v13;
    v32 = 2;
    sub_220236A84();

    sub_22036FFF8();

    v19 = (v3 + v10[7]);
    v20 = *(v19 + 2);
    v27 = *v19;
    v28 = v20;
    v32 = 3;
    sub_2201FBD1C();

    sub_22036FF88();

    v21 = v3 + v10[8];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    LODWORD(v27) = *v21;
    *(&v27 + 1) = v22;
    v28 = v23;
    v32 = 4;
    sub_2202B744C();

    sub_22036FFF8();

    LOWORD(v27) = *(v3 + v10[9]);
    v32 = 5;
    sub_22030AB88();
    sub_22036FFF8();
    v25 = (v3 + v10[10]);
    v26 = v25[1];
    *&v27 = *v25;
    *(&v27 + 1) = v26;
    v32 = 6;
    sub_220242D28();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22036CA78()
{
  result = qword_27CF29980;
  if (!qword_27CF29980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29980);
  }

  return result;
}

uint64_t VideoAdEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_22036F388();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036D0B4(0, &qword_27CF29988, MEMORY[0x277D844C8]);
  v33 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036CA78();
  v34 = v8;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v31;
  LOBYTE(v35) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v13 = v32;
  sub_22036FF28();
  (*(v30 + 32))(v11, v13, v4);
  v40 = 1;
  sub_2201F93C8();
  sub_22036FF28();
  v14 = *(&v35 + 1);
  v15 = &v11[v9[5]];
  *v15 = v35;
  *(v15 + 1) = v14;
  v40 = 2;
  sub_220236A30();
  sub_22036FF28();
  v16 = v36;
  v17 = v37;
  v18 = v38;
  v19 = v39;
  v20 = &v11[v9[6]];
  *v20 = v35;
  *(v20 + 2) = v16;
  *(v20 + 3) = v17;
  v20[32] = v18;
  v20[33] = v19;
  v40 = 3;
  sub_2201FBCC4();
  sub_22036FEB8();
  v21 = v36;
  v22 = &v11[v9[7]];
  *v22 = v35;
  *(v22 + 2) = v21;
  v40 = 4;
  sub_2202B73F4();
  sub_22036FF28();
  v23 = *(&v35 + 1);
  v24 = v36;
  v25 = &v11[v9[8]];
  *v25 = v35;
  *(v25 + 1) = v23;
  *(v25 + 2) = v24;
  v40 = 5;
  sub_22030AB30();
  sub_22036FF28();
  *&v11[v9[9]] = v35;
  v40 = 6;
  sub_220242CD4();
  sub_22036FF28();
  (*(v12 + 8))(v34, v33);
  v26 = *(&v35 + 1);
  v27 = &v11[v9[10]];
  *v27 = v35;
  *(v27 + 1) = v26;
  sub_22036D118(v11, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22036D17C(v11);
}

void sub_22036D0B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22036CA78();
    v7 = a3(a1, &type metadata for VideoAdEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22036D118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22036D17C(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22036D2B0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88, &type metadata for VideoAdEngagementData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

void sub_22036D63C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22036BCCC(319, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
    if (v2 <= 0x3F)
    {
      sub_22036BCCC(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_22036BCCC(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_22036BCCC(319, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
          if (v5 <= 0x3F)
          {
            sub_22036BCCC(319, &qword_27CF29970, sub_22030AB30, sub_22030AB88, &type metadata for VideoAdEngagementData);
            if (v6 <= 0x3F)
            {
              sub_22036BCCC(319, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
              if (v7 <= 0x3F)
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

void sub_22036D8B0(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036D968();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22036D968()
{
  if (!qword_281262190)
  {
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_281262190);
    }
  }
}

unint64_t sub_22036D9CC()
{
  result = qword_27CF299B0;
  if (!qword_27CF299B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF299B0);
  }

  return result;
}

unint64_t sub_22036DA24()
{
  result = qword_27CF299B8;
  if (!qword_27CF299B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF299B8);
  }

  return result;
}

unint64_t sub_22036DA7C()
{
  result = qword_27CF299C0;
  if (!qword_27CF299C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF299C0);
  }

  return result;
}

uint64_t sub_22036DAD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220392B70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65)
  {

    return 6;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15StocksAnalytics15NewsArticleDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_22036DD80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22036DDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

StocksAnalytics::NetworkEventType_optional __swiftcall NetworkEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NetworkEventType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x6C754D6F6F686179;
    v8 = 0x77654E6F6F686179;
    if (v1 != 10)
    {
      v8 = 0xD000000000000010;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x6E696C6B72617073;
    v10 = 0xD000000000000011;
    if (v1 != 7)
    {
      v10 = 0x6168436F6F686179;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x7472616843736473;
    v3 = 0x6372616553736473;
    v4 = 0x6E676953736473;
    if (v1 != 4)
    {
      v4 = 0x6B72617053736473;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x65746F7551736473;
    if (v1 != 1)
    {
      v5 = 0x7377654E736473;
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
}

uint64_t sub_22036E03C()
{
  v0 = NetworkEventType.rawValue.getter();
  v2 = v1;
  if (v0 == NetworkEventType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_220370048();
  }

  return v5 & 1;
}

unint64_t sub_22036E0DC()
{
  result = qword_27CF299C8;
  if (!qword_27CF299C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF299C8);
  }

  return result;
}

uint64_t sub_22036E130()
{
  sub_220370108();
  NetworkEventType.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22036E198(uint64_t a1)
{
  NetworkEventType.rawValue.getter();
  sub_22036FB08();
}

uint64_t sub_22036E1FC(uint64_t a1)
{
  sub_220370108();
  NetworkEventType.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22036E26C@<X0>(uint64_t *a1@<X8>)
{
  result = NetworkEventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22036E354()
{
  result = qword_2812650E0;
  if (!qword_2812650E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812650E0);
  }

  return result;
}