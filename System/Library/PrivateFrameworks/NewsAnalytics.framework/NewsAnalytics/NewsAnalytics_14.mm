NewsAnalytics::PaywallLocation_optional __swiftcall PaywallLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaywallLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x466C656E6E616863;
  v4 = 0x656E697A6167616DLL;
  if (v1 != 3)
  {
    v4 = 0x657069636572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C6369747261;
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

unint64_t sub_217BDD2E8()
{
  result = qword_27CBA1888;
  if (!qword_27CBA1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1888);
  }

  return result;
}

uint64_t sub_217BDD33C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BDD42C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BDD508(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BDD600(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEB00000000646565;
  v6 = 0x466C656E6E616863;
  v7 = 0xEC00000064656546;
  v8 = 0x656E697A6167616DLL;
  if (v2 != 3)
  {
    v8 = 0x657069636572;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C6369747261;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_217BDD76C()
{
  result = qword_27CBA1890;
  if (!qword_27CBA1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1890);
  }

  return result;
}

uint64_t PurchaseOffersData.offerIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217BDD83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x734449726566666FLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BDD8C4(uint64_t a1)
{
  v2 = sub_217BDDAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BDD900(uint64_t a1)
{
  v2 = sub_217BDDAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseOffersData.encode(to:)(void *a1)
{
  sub_217BDDD58(0, &qword_2811BC6B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDDAE4();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217BDDB38();
  sub_217BDDDBC(&qword_2811BCE28, sub_217AFF378, MEMORY[0x277D83948]);
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BDDAE4()
{
  result = qword_2811C2F30;
  if (!qword_2811C2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F30);
  }

  return result;
}

void sub_217BDDB38()
{
  if (!qword_2811BCE30)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCE30);
    }
  }
}

uint64_t PurchaseOffersData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217BDDD58(0, &qword_2811BCA20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDDAE4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BDDB38();
    sub_217BDDDBC(&qword_2811BCE20, sub_217AFF324, MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BDDD58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BDDAE4();
    v7 = a3(a1, &type metadata for PurchaseOffersData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BDDDBC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217BDDB38();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217BDDE2C()
{
  result = qword_2811C2F10;
  if (!qword_2811C2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F10);
  }

  return result;
}

unint64_t sub_217BDDE84()
{
  result = qword_2811C2F18;
  if (!qword_2811C2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F18);
  }

  return result;
}

unint64_t sub_217BDDF2C()
{
  result = qword_27CBA1898;
  if (!qword_27CBA1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1898);
  }

  return result;
}

unint64_t sub_217BDDF84()
{
  result = qword_2811C2F20;
  if (!qword_2811C2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F20);
  }

  return result;
}

unint64_t sub_217BDDFDC()
{
  result = qword_2811C2F28;
  if (!qword_2811C2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2F28);
  }

  return result;
}

uint64_t sub_217BDE044()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t GroupSectionData.sectionIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

NewsAnalytics::GroupSectionData __swiftcall GroupSectionData.init(sectionIDs:)(Swift::OpaquePointer_optional sectionIDs)
{
  rawValue = sectionIDs.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.sectionIDs.value._rawValue = v4;
  result.sectionIDs.is_nil = v5;
  return result;
}

uint64_t sub_217BDE240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496E6F6974636573 && a2 == 0xEA00000000007344)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BDE2D0(uint64_t a1)
{
  v2 = sub_217BDE4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BDE30C(uint64_t a1)
{
  v2 = sub_217BDE4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupSectionData.encode(to:)(void *a1)
{
  sub_217BDE6FC(0, &qword_2811BC718, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDE4E4();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_217D89C3C();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BDE4E4()
{
  result = qword_2811C5230;
  if (!qword_2811C5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5230);
  }

  return result;
}

uint64_t GroupSectionData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217BDE6FC(0, &qword_27CBA18A0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BDE4E4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BDE6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BDE4E4();
    v7 = a3(a1, &type metadata for GroupSectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BDE7BC()
{
  result = qword_27CBA18A8;
  if (!qword_27CBA18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA18A8);
  }

  return result;
}

unint64_t sub_217BDE814()
{
  result = qword_2811C5220;
  if (!qword_2811C5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5220);
  }

  return result;
}

unint64_t sub_217BDE86C()
{
  result = qword_2811C5228;
  if (!qword_2811C5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5228);
  }

  return result;
}

uint64_t sub_217BDE988()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA18E0);
  __swift_project_value_buffer(v0, qword_27CBA18E0);
  return sub_217D8866C();
}

uint64_t ArticleShareEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleShareEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 20);
  sub_217BDFE1C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 20);
  sub_217BDFE1C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 24);
  sub_217BDFE1C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 24);
  sub_217BDFE1C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 28);
  sub_217BDFE1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 28);
  sub_217BDFE1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 32);
  sub_217BDFE1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 32);
  sub_217BDFE1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 36);
  sub_217BDFE1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 36);
  sub_217BDFE1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 40);
  sub_217BDFE1C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 40);
  sub_217BDFE1C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 44);
  sub_217BDFE1C(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 44);
  sub_217BDFE1C(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 48);
  sub_217BDFE1C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 48);
  sub_217BDFE1C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 52);
  sub_217BDFE1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 52);
  sub_217BDFE1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 56);
  sub_217BDFE1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 56);
  sub_217BDFE1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 60);
  sub_217BDFE1C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleShareEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 60);
  sub_217BDFE1C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 64);
  sub_217BDFE1C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BDFE1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ArticleShareEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleShareEvent(0) + 64);
  sub_217BDFE1C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleShareEvent(0);
  v5 = v4[5];
  sub_217BDFE1C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BDFE1C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217BDFE1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217BDFE1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217BDFE1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217BDFE1C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217BDFE1C(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217BDFE1C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217BDFE1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217BDFE1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217BDFE1C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_217BDFE1C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v10, v29);
}

uint64_t ArticleShareEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ArticleShareEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleShareEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleShareEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleShareEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t ArticleShareEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleShareEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleShareEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void ArticleShareEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t ArticleShareEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t ArticleShareEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 56);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

void ArticleShareEvent.Model.adData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 60);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  sub_217AE39D0(v4, v5, v6, v7);
}

void ArticleShareEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleShareEvent.Model(0) + 64));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AE3AE8(v4, v5, v6, v7, v8);
}

__n128 ArticleShareEvent.Model.init(eventData:articleData:actionData:feedData:groupData:viewData:userChannelContextData:shareContextData:issueData:userBundleSubscriptionContextData:channelData:adData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t *a12, __int128 *a13, uint64_t a14)
{
  v18 = *a3;
  v43 = *a4;
  v19 = *(a4 + 2);
  v47 = a6[1];
  v48 = *a6;
  v46 = *(a6 + 8);
  v50 = a7[1];
  v51 = *a7;
  v49 = *(a7 + 1);
  v52 = a8[1];
  v53 = *a8;
  v62 = a12[1];
  v63 = *a12;
  v60 = *(a12 + 17);
  v61 = *(a12 + 16);
  v58 = a12[4];
  v59 = a12[3];
  v64 = *(a13 + 32);
  v65 = *(a14 + 32);
  v20 = sub_217D8899C();
  v56 = *(a14 + 16);
  v57 = *a14;
  v54 = a13[1];
  v55 = *a13;
  v44 = a10[1];
  v45 = *a10;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for ArticleShareEvent.Model(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 48);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 48) = v23;
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a2 + 127);
  v25 = *(a2 + 112);
  *(v22 + 96) = *(a2 + 96);
  *(v22 + 112) = v25;
  v26 = *(a2 + 80);
  *(v22 + 64) = *(a2 + 64);
  *(v22 + 80) = v26;
  *(a9 + v21[6]) = v18;
  v27 = a9 + v21[7];
  *v27 = v43;
  *(v27 + 16) = v19;
  v28 = (a9 + v21[8]);
  v29 = a5[3];
  v28[2] = a5[2];
  v28[3] = v29;
  v30 = a5[1];
  *v28 = *a5;
  v28[1] = v30;
  v31 = a5[8];
  v28[7] = a5[7];
  v28[8] = v31;
  v32 = a5[6];
  v28[5] = a5[5];
  v28[6] = v32;
  v28[4] = a5[4];
  v33 = a9 + v21[9];
  *v33 = v48;
  *(v33 + 8) = v47;
  *(v33 + 16) = v46;
  v34 = a9 + v21[10];
  *v34 = v51;
  *(v34 + 1) = v50;
  *(v34 + 2) = v49;
  v35 = (a9 + v21[11]);
  *v35 = v53;
  v35[1] = v52;
  v36 = (a9 + v21[12]);
  *v36 = v45;
  v36[1] = v44;
  v37 = a9 + v21[13];
  v38 = *(a11 + 16);
  *v37 = *a11;
  *(v37 + 16) = v38;
  *(v37 + 32) = *(a11 + 32);
  *(v37 + 48) = *(a11 + 48);
  v39 = a9 + v21[14];
  *v39 = v63;
  *(v39 + 8) = v62;
  *(v39 + 16) = v61;
  *(v39 + 17) = v60;
  *(v39 + 24) = v59;
  *(v39 + 32) = v58;
  v40 = a9 + v21[15];
  *v40 = v55;
  *(v40 + 16) = v54;
  *(v40 + 32) = v64;
  v41 = a9 + v21[16];
  result = v57;
  *v41 = v57;
  *(v41 + 16) = v56;
  *(v41 + 32) = v65;
  return result;
}

uint64_t sub_217BE0CBC(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x61446E6F69746361;
      break;
    case 3:
      v3 = 1684366694;
      goto LABEL_11;
    case 4:
      result = 0x74614470756F7267;
      break;
    case 5:
      v3 = 2003134838;
LABEL_11:
      result = v3 | 0x6174614400000000;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7461446575737369;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x446C656E6E616863;
      break;
    case 11:
      result = 0x617461446461;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217BE0E38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BE3080(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BE0E60(uint64_t a1)
{
  v2 = sub_217BE1780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE0E9C(uint64_t a1)
{
  v2 = sub_217BE1780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleShareEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BE22BC(0, &qword_27CBA18F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v66 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE1780();
  sub_217D89E7C();
  v132[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v133 = v7;
  v66 = type metadata accessor for ArticleShareEvent.Model(0);
  v67 = v3;
  v11 = v3 + v66[5];
  v12 = *(v11 + 96);
  v13 = *(v11 + 64);
  v129 = *(v11 + 80);
  v130 = v12;
  v14 = *(v11 + 96);
  *v131 = *(v11 + 112);
  v15 = *(v11 + 16);
  v16 = *(v11 + 48);
  v126 = *(v11 + 32);
  v127 = v16;
  v17 = *(v11 + 48);
  v128 = *(v11 + 64);
  v18 = *(v11 + 16);
  v125[0] = *v11;
  v125[1] = v18;
  v122 = v129;
  v123 = v14;
  v124[0] = *(v11 + 112);
  v119 = v126;
  v120 = v17;
  v121 = v13;
  *&v131[15] = *(v11 + 127);
  *(v124 + 15) = *(v11 + 127);
  v117 = v125[0];
  v118 = v15;
  v116 = 1;
  sub_217AD1630(v125, &v101);
  sub_217ACF52C();
  sub_217D89CAC();
  v114[5] = v122;
  v114[6] = v123;
  *v115 = v124[0];
  *&v115[15] = *(v124 + 15);
  v114[2] = v119;
  v114[3] = v120;
  v114[4] = v121;
  v114[0] = v117;
  v114[1] = v118;
  sub_217AD2864(v114);
  v20 = v66;
  v19 = v67;
  LOBYTE(v101) = *(v67 + v66[6]);
  LOBYTE(v92) = 2;
  sub_217AED190();
  sub_217D89CAC();
  v21 = (v19 + v20[7]);
  v22 = v21[1];
  v23 = v21[2];
  v111 = *v21;
  v112 = v22;
  v113 = v23;
  v110 = 3;
  sub_217AD1A68(v111, v22, v23);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v111, v112, v113);
  v24 = (v19 + v20[8]);
  v25 = v24[6];
  v26 = v24[4];
  v106 = v24[5];
  v107 = v25;
  v27 = v24[6];
  v28 = v24[8];
  v108 = v24[7];
  v109 = v28;
  v29 = v24[2];
  v30 = *v24;
  v102 = v24[1];
  v103 = v29;
  v31 = v24[2];
  v32 = v24[4];
  v104 = v24[3];
  v105 = v32;
  v33 = *v24;
  v98 = v27;
  v99 = v108;
  v100 = v24[8];
  v101 = v33;
  v94 = v31;
  v95 = v104;
  v96 = v26;
  v97 = v106;
  v92 = v30;
  v93 = v102;
  v91 = 4;
  sub_217AD87FC(&v101, v90);
  sub_217A5D3B4();
  sub_217D89C3C();
  v90[6] = v98;
  v90[7] = v99;
  v90[8] = v100;
  v90[2] = v94;
  v90[3] = v95;
  v90[4] = v96;
  v90[5] = v97;
  v90[0] = v92;
  v90[1] = v93;
  sub_217AD96E8(v90);
  v34 = (v19 + v20[9]);
  v35 = *v34;
  v36 = v34[1];
  LOWORD(v34) = *(v34 + 8);
  *&v81 = v35;
  *(&v81 + 1) = v36;
  LOWORD(v82) = v34;
  LOBYTE(v77) = 5;
  sub_217A5E790();

  sub_217D89C3C();

  v37 = (v19 + v20[10]);
  v38 = *v37;
  v39 = v37[1];
  LOWORD(v37) = *(v37 + 1);
  LOBYTE(v81) = v38;
  BYTE1(v81) = v39;
  WORD1(v81) = v37;
  LOBYTE(v77) = 6;
  sub_217ACFB8C();
  sub_217D89CAC();
  v40 = (v19 + v20[11]);
  v41 = v40[1];
  *&v81 = *v40;
  *(&v81 + 1) = v41;
  LOBYTE(v77) = 7;
  sub_217AF2CAC();

  sub_217D89CAC();

  v42 = (v19 + v20[12]);
  v43 = v42[1];
  v44 = v42[2];
  v45 = v42[3];
  v86 = *v42;
  v87 = v43;
  v88 = v44;
  v89 = v45;
  v85 = 8;
  sub_217AE39D0(v86, v43, v44, v45);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v86, v87, v88, v89);
  v46 = (v19 + v20[13]);
  v47 = v46[1];
  v81 = *v46;
  v82 = v47;
  v49 = *v46;
  v48 = v46[1];
  v83 = v46[2];
  v84 = *(v46 + 48);
  v77 = v49;
  v78 = v48;
  v79 = v46[2];
  v80 = *(v46 + 48);
  v76 = 9;
  sub_217ACC004(&v81, v74);
  sub_217A55B98();
  sub_217D89CAC();
  v74[0] = v77;
  v74[1] = v78;
  v74[2] = v79;
  v75 = v80;
  sub_217ACC69C(v74);
  v50 = v19 + v20[14];
  v51 = *(v50 + 8);
  v52 = *(v50 + 16);
  v53 = *(v50 + 17);
  v54 = *(v50 + 24);
  v55 = *(v50 + 32);
  v69 = *v50;
  v70 = v51;
  LOBYTE(v71) = v52;
  BYTE1(v71) = v53;
  v72 = v54;
  v73 = v55;
  v68 = 10;
  sub_217AD084C();

  sub_217D89CAC();

  v56 = v67 + v66[15];
  v57 = *(v56 + 8);
  v58 = *(v56 + 16);
  v59 = *(v56 + 24);
  v60 = *(v56 + 32);
  v69 = *v56;
  v70 = v57;
  v71 = v58;
  v72 = v59;
  LOBYTE(v73) = v60;
  v68 = 11;
  sub_217AE39D0(v69, v57, v58, v59);
  sub_217AF3490();
  sub_217D89C3C();
  sub_217AE4AA0(v69, v70, v71, v72);
  v61 = (v67 + v66[16]);
  v62 = v61[1];
  v63 = v61[2];
  v64 = v61[3];
  v65 = v61[4];
  v69 = *v61;
  v70 = v62;
  v71 = v63;
  v72 = v64;
  v73 = v65;
  v68 = 12;
  sub_217AE3AE8(v69, v62, v63, v64, v65);
  sub_217AE2CFC();
  sub_217D89C3C();
  sub_217AE4AE4(v69, v70, v71, v72, v73);
  return (*(v133 + 8))(v9, v6);
}

unint64_t sub_217BE1780()
{
  result = qword_27CBA1900;
  if (!qword_27CBA1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1900);
  }

  return result;
}

void ArticleShareEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_217D8899C();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BE22BC(0, &qword_27CBA1908, MEMORY[0x277D844C8]);
  v60 = v5;
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v8 = type metadata accessor for ArticleShareEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE1780();
  v61 = v7;
  v11 = v90;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v58;
    v54 = v8;
    v55 = a1;
    v90 = v10;
    LOBYTE(v81) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v59;
    sub_217D89BCC();
    v14 = *(v57 + 32);
    v15 = v90;
    v59 = v3;
    v14(v90, v13, v3);
    v72 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v53 = 0;
    v16 = v54;
    v17 = &v15[v54[5]];
    v18 = *v80;
    *(v17 + 6) = v79;
    *(v17 + 7) = v18;
    *(v17 + 127) = *&v80[15];
    v19 = v76;
    *(v17 + 2) = v75;
    *(v17 + 3) = v19;
    v20 = v78;
    *(v17 + 4) = v77;
    *(v17 + 5) = v20;
    v21 = v74;
    *v17 = v73;
    *(v17 + 1) = v21;
    LOBYTE(v67) = 2;
    sub_217AED13C();
    sub_217D89BCC();
    v15[v16[6]] = v81;
    LOBYTE(v67) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v22 = v82;
    v23 = &v15[v16[7]];
    *v23 = v81;
    *(v23 + 2) = v22;
    v71 = 4;
    sub_217A5D308();
    sub_217D89B5C();
    v24 = &v15[v16[8]];
    v25 = v86;
    v26 = v88;
    *(v24 + 6) = v87;
    *(v24 + 7) = v26;
    *(v24 + 8) = v89;
    v27 = v84;
    *(v24 + 2) = v83;
    *(v24 + 3) = v27;
    *(v24 + 4) = v85;
    *(v24 + 5) = v25;
    v28 = v82;
    *v24 = v81;
    *(v24 + 1) = v28;
    LOBYTE(v63) = 5;
    sub_217A5E738();
    sub_217D89B5C();
    v29 = v68;
    v30 = &v15[v16[9]];
    *v30 = v67;
    *(v30 + 8) = v29;
    LOBYTE(v63) = 6;
    sub_217ACFB38();
    sub_217D89BCC();
    v31 = BYTE1(v67);
    v32 = WORD1(v67);
    v33 = &v15[v16[10]];
    *v33 = v67;
    v33[1] = v31;
    *(v33 + 1) = v32;
    LOBYTE(v63) = 7;
    sub_217AF2C58();
    sub_217D89BCC();
    v34 = *(&v67 + 1);
    v35 = &v90[v16[11]];
    *v35 = v67;
    *(v35 + 1) = v34;
    LOBYTE(v63) = 8;
    sub_217ACFF40();
    sub_217D89B5C();
    v36 = &v90[v54[12]];
    v37 = v68;
    *v36 = v67;
    *(v36 + 1) = v37;
    v66 = 9;
    sub_217A54D08();
    sub_217D89BCC();
    v38 = &v90[v54[13]];
    v39 = v68;
    *v38 = v67;
    *(v38 + 1) = v39;
    *(v38 + 2) = v69;
    v38[48] = v70;
    v62 = 10;
    sub_217AD07F8();
    sub_217D89BCC();
    v40 = *(&v63 + 1);
    v41 = v64;
    v42 = BYTE1(v64);
    v43 = *(&v64 + 1);
    v44 = v65;
    v45 = &v90[v54[14]];
    *v45 = v63;
    *(v45 + 1) = v40;
    v45[16] = v41;
    v45[17] = v42;
    *(v45 + 3) = v43;
    *(v45 + 4) = v44;
    v62 = 11;
    sub_217AF343C();
    sub_217D89B5C();
    v46 = v65;
    v47 = &v90[v54[15]];
    v48 = v64;
    *v47 = v63;
    *(v47 + 1) = v48;
    v47[32] = v46;
    v62 = 12;
    sub_217AE2CA8();
    sub_217D89B5C();
    (*(v12 + 8))(v61, v60);
    v49 = v65;
    v50 = v90;
    v51 = &v90[v54[16]];
    v52 = v64;
    *v51 = v63;
    *(v51 + 1) = v52;
    *(v51 + 4) = v49;
    sub_217BE2320(v50, v56);
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_217BE2384(v50);
  }
}

void sub_217BE22BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE1780();
    v7 = a3(a1, &type metadata for ArticleShareEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BE2320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BE2384(uint64_t a1)
{
  v2 = type metadata accessor for ArticleShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BE24B8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BDFE1C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BDFE1C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217BDFE1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217BDFE1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217BDFE1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217BDFE1C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217BDFE1C(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217BDFE1C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217BDFE1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217BDFE1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217BDFE1C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  (*(*(v28 - 8) + 104))(a2 + v27, v11, v28);
  v29 = a1[16];
  sub_217BDFE1C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v31 = *(*(v30 - 8) + 104);

  return v31(a2 + v29, v11, v30);
}

void sub_217BE2B14(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217BDFE1C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217BDFE1C(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        sub_217BDFE1C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217BDFE1C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217BDFE1C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_217BDFE1C(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
              if (v7 <= 0x3F)
              {
                sub_217BDFE1C(319, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
                if (v8 <= 0x3F)
                {
                  sub_217BDFE1C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                  if (v9 <= 0x3F)
                  {
                    sub_217BDFE1C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217BDFE1C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                      if (v11 <= 0x3F)
                      {
                        sub_217BDFE1C(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
                        if (v12 <= 0x3F)
                        {
                          sub_217BDFE1C(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
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

unint64_t sub_217BE2F7C()
{
  result = qword_27CBA1910;
  if (!qword_27CBA1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1910);
  }

  return result;
}

unint64_t sub_217BE2FD4()
{
  result = qword_27CBA1918;
  if (!qword_27CBA1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1918);
  }

  return result;
}

unint64_t sub_217BE302C()
{
  result = qword_27CBA1920;
  if (!qword_27CBA1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1920);
  }

  return result;
}

uint64_t sub_217BE3080(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD6C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

id AppSessionObserver.__allocating_init(appSessionManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13NewsAnalytics18AppSessionObserver_appSessionManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AppSessionObserver.init(appSessionManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13NewsAnalytics18AppSessionObserver_appSessionManager] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AppSessionObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppSessionObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AppSessionObserver.endAppSession(withEndReason:)(NSNumber withEndReason)
{
  v1 = [(objc_class *)withEndReason.super.super.isa integerValue];
  if (v1 >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x504020300uLL >> (8 * v1);
  }

  sub_217A535B4();
  v3 = sub_217D898DC();
  sub_217A53658(0, &qword_2811BC410, sub_217A53700);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_217D8D8F0;
  v6 = v2 & 7;
  if (v6 <= 2)
  {
    if ((v2 & 7) != 0)
    {
      v7 = 0x636142656E656373;
      v8 = 0xEF646E756F72676BLL;
    }

    else
    {
      v8 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E75;
    }
  }

  else if (v6 == 3)
  {
    v8 = 0x8000000217DCCA10;
    v7 = 0xD000000000000015;
  }

  else if (v6 == 4)
  {
    v7 = 0x6975516563726F66;
    v8 = 0xE900000000000074;
  }

  else
  {
    v7 = 0x72617073646C6566;
    v8 = 0xEF74657365524449;
  }

  v9 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v10 = sub_217A62448();
  v5[8] = v10;
  v5[4] = v7;
  v5[5] = v8;
  v11 = sub_217D897FC();
  sub_217D88E5C("Ending app analytics session due to Feldspar analytics session will end with endReason %@", 89, 2, &dword_217A45000, v3, v11, v5);

  v12 = sub_217D898DC();
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = xmmword_217D8D8F0;
  if (v2 <= 2u)
  {
    if (v2)
    {
      v15 = 0x636142656E656373;
      v16 = 0xEF646E756F72676BLL;
    }

    else
    {
      v16 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E75;
    }
  }

  else if (v2 == 3)
  {
    v16 = 0x8000000217DCCA10;
    v15 = 0xD000000000000015;
  }

  else if (v2 == 4)
  {
    v15 = 0x6975516563726F66;
    v16 = 0xE900000000000074;
  }

  else
  {
    v15 = 0x72617073646C6566;
    v16 = 0xEF74657365524449;
  }

  *(v13 + 56) = v9;
  *(v13 + 64) = v10;
  *(v13 + 32) = v15;
  *(v13 + 40) = v16;
  v17 = sub_217D897FC();
  sub_217D88E5C("Ending App session due to Feldspar analytics session restart with endReason %@", 78, 2, &dword_217A45000, v12, v17, v14);

  *(swift_allocObject() + 16) = v2;
  sub_217D87FAC();

  *(swift_allocObject() + 16) = v2;
  sub_217D87F7C();
}

uint64_t sub_217BE39C0(uint64_t a1, uint64_t a2, char a3)
{
  sub_217A53658(0, &qword_2811BC490, MEMORY[0x277CEAD20]);
  v3 = sub_217D882DC();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217D8D8F0;
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277CEAD10], v3);
  sub_217BE3E20();
  sub_217D8820C();
}

void sub_217BE3B0C(unsigned __int8 a1)
{
  sub_217A53658(0, &qword_2811BC410, sub_217A53700);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_217D8D8F0;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v8 = 0xEE006E6F69746167;
        v7 = 0x6976614E72657375;
      }

      else
      {
        v8 = 0xE500000000000000;
        v7 = 0x6873617263;
      }
    }

    else if (a1 == 4)
    {
      v8 = 0xE900000000000074;
      v7 = 0x6975516563726F66;
    }

    else
    {
      v8 = 0xEF74657365524449;
      v7 = 0x72617073646C6566;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xEF646E756F72676BLL;
    v6 = 0x636142656E656373;
    if (a1 != 2)
    {
      v6 = 0xD000000000000015;
      v5 = 0x8000000217DCCA10;
    }

    if (a1)
    {
      v4 = 0x676B636142707061;
      v3 = 0xED0000646E756F72;
    }

    if (a1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (a1 <= 1u)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  *(v2 + 56) = MEMORY[0x277D837D0];
  v9 = v2;
  *(v2 + 64) = sub_217A62448();
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  sub_217A535B4();
  v11 = sub_217D898BC();
  v10 = sub_217D897FC();
  sub_217D88E5C("Ended app analytics App session due to Feldspar analytics session will end with endReason  %@", 93, 2, &dword_217A45000, v11, v10, v9);
}

unint64_t sub_217BE3E20()
{
  result = qword_2811C7B60;
  if (!qword_2811C7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B60);
  }

  return result;
}

uint64_t sub_217BE3EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000217DD0320 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217BE3F70(uint64_t a1)
{
  v2 = sub_217BE4144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE3FAC(uint64_t a1)
{
  v2 = sub_217BE4144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityUserActionData.encode(to:)(void *a1)
{
  sub_217BE4384(0, &qword_27CBA19A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE4144();
  sub_217D89E7C();
  v11 = v8;
  sub_217BE4198();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BE4144()
{
  result = qword_27CBA19A8;
  if (!qword_27CBA19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19A8);
  }

  return result;
}

unint64_t sub_217BE4198()
{
  result = qword_27CBA19B0;
  if (!qword_27CBA19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19B0);
  }

  return result;
}

uint64_t LiveActivityUserActionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BE4384(0, &qword_27CBA19B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE4144();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BE43E8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BE4384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE4144();
    v7 = a3(a1, &type metadata for LiveActivityUserActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BE43E8()
{
  result = qword_27CBA19C0;
  if (!qword_27CBA19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19C0);
  }

  return result;
}

unint64_t sub_217BE4498()
{
  result = qword_27CBA19C8;
  if (!qword_27CBA19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19C8);
  }

  return result;
}

unint64_t sub_217BE44F0()
{
  result = qword_27CBA19D0;
  if (!qword_27CBA19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19D0);
  }

  return result;
}

unint64_t sub_217BE4548()
{
  result = qword_27CBA19D8;
  if (!qword_27CBA19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19D8);
  }

  return result;
}

NewsAnalytics::IngredientsShareActionMethod_optional __swiftcall IngredientsShareActionMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t IngredientsShareActionMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000017;
  if (v1 != 4)
  {
    v4 = 0x42797265636F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726142756E656DLL;
  if (v1 != 1)
  {
    v5 = 0x53726142756E656DLL;
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

unint64_t sub_217BE46E0()
{
  result = qword_27CBA19E0;
  if (!qword_27CBA19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19E0);
  }

  return result;
}

uint64_t sub_217BE473C(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217BE485C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xD000000000000013;
  v6 = 0x8000000217DCB1D0;
  v7 = 0x8000000217DCB1F0;
  v8 = 0xD000000000000017;
  if (v2 != 4)
  {
    v8 = 0x42797265636F7267;
    v7 = 0xED00006E6F747475;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x726142756E656DLL;
  if (v2 != 1)
  {
    v10 = 0x53726142756E656DLL;
    v9 = 0xEE00776F72726168;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217BE49F8()
{
  result = qword_27CBA19E8;
  if (!qword_27CBA19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19E8);
  }

  return result;
}

uint64_t sub_217BE4AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x8000000217DD0340 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217BE4B48(uint64_t a1)
{
  v2 = sub_217BE4D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE4B84(uint64_t a1)
{
  v2 = sub_217BE4D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IngredientsShareActionData.encode(to:)(void *a1)
{
  sub_217BE4F5C(0, &qword_27CBA19F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE4D1C();
  sub_217D89E7C();
  v11 = v8;
  sub_217BE4D70();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BE4D1C()
{
  result = qword_27CBA19F8;
  if (!qword_27CBA19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA19F8);
  }

  return result;
}

unint64_t sub_217BE4D70()
{
  result = qword_27CBA1A00;
  if (!qword_27CBA1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A00);
  }

  return result;
}

uint64_t IngredientsShareActionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BE4F5C(0, &qword_27CBA1A08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE4D1C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BE4FC0();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BE4F5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE4D1C();
    v7 = a3(a1, &type metadata for IngredientsShareActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BE4FC0()
{
  result = qword_27CBA1A10;
  if (!qword_27CBA1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A10);
  }

  return result;
}

unint64_t sub_217BE5018()
{
  result = qword_27CBA1A18;
  if (!qword_27CBA1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A18);
  }

  return result;
}

unint64_t sub_217BE5070()
{
  result = qword_27CBA1A20;
  if (!qword_27CBA1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A20);
  }

  return result;
}

unint64_t sub_217BE5118()
{
  result = qword_27CBA1A28;
  if (!qword_27CBA1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A28);
  }

  return result;
}

unint64_t sub_217BE5170()
{
  result = qword_27CBA1A30;
  if (!qword_27CBA1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A30);
  }

  return result;
}

unint64_t sub_217BE51C8()
{
  result = qword_27CBA1A38;
  if (!qword_27CBA1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A38);
  }

  return result;
}

uint64_t FeedKind.asFeedType.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_217D8919C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  result = (*(v4 + 88))(v6, v3);
  if (result == *MEMORY[0x277D32EB8])
  {
    v8 = 0;
LABEL_15:
    *a1 = v8;
    return result;
  }

  if (result == *MEMORY[0x277D32E80])
  {
    v8 = 10;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32EB0] || result == *MEMORY[0x277D32E68])
  {
    goto LABEL_10;
  }

  if (result == *MEMORY[0x277D32E40])
  {
    v8 = 9;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32EC0])
  {
    v8 = 14;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E88] || result == *MEMORY[0x277D32E48])
  {
    goto LABEL_10;
  }

  if (result == *MEMORY[0x277D32ED0])
  {
    v8 = 2;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32ED8])
  {
LABEL_10:
    v8 = 6;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E90])
  {
    v8 = 13;
    goto LABEL_15;
  }

  v8 = 15;
  if (result == *MEMORY[0x277D32EA8] || result == *MEMORY[0x277D32E28] || result == *MEMORY[0x277D32E70] || result == *MEMORY[0x277D32E78] || result == *MEMORY[0x277D32E50])
  {
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E60])
  {
    v8 = 17;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E98])
  {
    v8 = 1;
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32EA0])
  {
    v8 = 7;
    goto LABEL_15;
  }

  v8 = 0;
  if (result == *MEMORY[0x277D32EC8] || result == *MEMORY[0x277D32E38] || result == *MEMORY[0x277D32E58])
  {
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D32E30])
  {
    v8 = 19;
    goto LABEL_15;
  }

  result = sub_217D89A9C();
  __break(1u);
  return result;
}

uint64_t JourneyPlacementData.placementID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JourneyPlacementData.placementID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JourneyPlacementData.placementName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JourneyPlacementData.placementName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JourneyPlacementData.messageID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t JourneyPlacementData.messageID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall JourneyPlacementData.init(placementID:placementName:messageID:)(NewsAnalytics::JourneyPlacementData *__return_ptr retstr, Swift::String placementID, Swift::String_optional placementName, Swift::String_optional messageID)
{
  retstr->placementID = placementID;
  retstr->placementName = placementName;
  retstr->messageID = messageID;
}

uint64_t sub_217BE5728()
{
  v1 = 0x496567617373656DLL;
  if (*v0 == 1)
  {
    v1 = 0x6E656D6563616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656D6563616C70;
  }
}

uint64_t sub_217BE578C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BE5E68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BE57B4(uint64_t a1)
{
  v2 = sub_217BE59DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE57F0(uint64_t a1)
{
  v2 = sub_217BE59DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyPlacementData.encode(to:)(void *a1)
{
  sub_217BE5CA4(0, &qword_2811BC648, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE59DC();
  sub_217D89E7C();
  v15 = 0;
  v10 = v12[5];
  sub_217D89C6C();
  if (!v10)
  {
    v14 = 1;
    sub_217D89C0C();
    v13 = 2;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BE59DC()
{
  result = qword_2811C1ED8;
  if (!qword_2811C1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1ED8);
  }

  return result;
}

uint64_t JourneyPlacementData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BE5CA4(0, &qword_2811BC9E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE59DC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v25 = v10;
  v27 = 1;
  v13 = sub_217D89B2C();
  v15 = v14;
  v24 = v13;
  v26 = 2;
  v16 = sub_217D89B2C();
  v19 = v18;
  v20 = *(v7 + 8);
  v23 = v16;
  v20(v9, v6);
  v21 = v24;
  *a2 = v25;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v23;
  a2[5] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BE5CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE59DC();
    v7 = a3(a1, &type metadata for JourneyPlacementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BE5D64()
{
  result = qword_27CBA1A40;
  if (!qword_27CBA1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A40);
  }

  return result;
}

unint64_t sub_217BE5DBC()
{
  result = qword_2811C1EC8;
  if (!qword_2811C1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EC8);
  }

  return result;
}

unint64_t sub_217BE5E14()
{
  result = qword_2811C1ED0;
  if (!qword_2811C1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1ED0);
  }

  return result;
}

uint64_t sub_217BE5E68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E656D6563616C70 && a2 == 0xEB00000000444974;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED0000656D614E74 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::BundleSubscriptionStatus_optional __swiftcall BundleSubscriptionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BundleSubscriptionStatus.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6269726373627573;
  if (*v0 != 2)
  {
    v2 = 0x6373627553746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6C61697274;
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

unint64_t sub_217BE609C()
{
  result = qword_27CBA1A48;
  if (!qword_27CBA1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A48);
  }

  return result;
}

uint64_t sub_217BE60F0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BE61C0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BE627C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BE648C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C30D0);
  __swift_project_value_buffer(v0, qword_2811C30D0);
  return sub_217D8866C();
}

uint64_t MediaExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 24);
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 24);
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 28);
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 28);
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 32);
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 32);
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 36);
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 36);
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 40);
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 40);
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 44);
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 44);
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 48);
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 48);
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 52);
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820, &type metadata for GalleryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.galleryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 52);
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820, &type metadata for GalleryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 56);
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 56);
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 60);
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 60);
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 64);
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 64);
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B03D84(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B03D84(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217B03D84(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217B03D84(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217B03D84(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B03D84(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217B03D84(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217B03D84(0, &qword_2811C87E0, sub_217B037CC, sub_217B03820, &type metadata for GalleryData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217B03D84(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217B03D84(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v27 - 8) + 104))(a1 + v26, v12, v27);
  v28 = v4[16];
  sub_217B03D84(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v12, v29);
}

uint64_t sub_217BE7FA4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t MediaExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t MediaExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t MediaExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178, &type metadata for GroupData);
}

uint64_t MediaExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t MediaExposureEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 40));
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

uint64_t MediaExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaExposureEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 48));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v10 = v3[2];
  v6 = v10;
  v11 = v5;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_217AE38AC(v9, &v8, &qword_27CB9ECA0, &type metadata for ANFComponentData);
}

uint64_t MediaExposureEvent.Model.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t MediaExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 56);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

void MediaExposureEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t MediaExposureEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 MediaExposureEvent.Model.init(eventData:timedData:articleData:channelData:groupData:feedData:mediaData:viewData:anfComponentData:galleryData:userBundleSubscriptionContextData:issueData:issueViewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, uint64_t a12, __n128 *a13, uint64_t *a14)
{
  v19 = *a4;
  v20 = a4[1];
  v50 = *(a4 + 17);
  v51 = *(a4 + 16);
  v48 = a4[4];
  v49 = a4[3];
  v53 = *a6;
  v52 = *(a6 + 2);
  v57 = *(a7 + 1);
  v56 = *(a7 + 2);
  v55 = *(a7 + 6);
  v54 = a7[28];
  v61 = *a8;
  v60 = a8[1];
  v58 = *a7;
  v59 = *(a8 + 8);
  v65 = *a11;
  v64 = *(a11 + 2);
  v63 = *(a11 + 6);
  v67 = a14[1];
  v68 = *a14;
  v21 = sub_217D8899C();
  v66 = *a13;
  v62 = a13[1];
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for MediaExposureEvent.Model(0);
  v23 = v22[5];
  v24 = sub_217D889CC();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  v26 = *(a3 + 48);
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = v26;
  v27 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v27;
  *(v25 + 127) = *(a3 + 127);
  v28 = *(a3 + 112);
  *(v25 + 96) = *(a3 + 96);
  *(v25 + 112) = v28;
  v29 = *(a3 + 80);
  *(v25 + 64) = *(a3 + 64);
  *(v25 + 80) = v29;
  v30 = a9 + v22[7];
  *v30 = v19;
  *(v30 + 8) = v20;
  *(v30 + 16) = v51;
  *(v30 + 17) = v50;
  *(v30 + 24) = v49;
  *(v30 + 32) = v48;
  v31 = (a9 + v22[8]);
  v32 = a5[3];
  v31[2] = a5[2];
  v31[3] = v32;
  v33 = a5[1];
  *v31 = *a5;
  v31[1] = v33;
  v34 = a5[8];
  v31[7] = a5[7];
  v31[8] = v34;
  v35 = a5[6];
  v31[5] = a5[5];
  v31[6] = v35;
  v31[4] = a5[4];
  v36 = a9 + v22[9];
  *v36 = v53;
  *(v36 + 16) = v52;
  v37 = a9 + v22[10];
  *v37 = v58;
  *(v37 + 8) = v57;
  *(v37 + 16) = v56;
  *(v37 + 24) = v55;
  *(v37 + 28) = v54;
  v38 = a9 + v22[11];
  *v38 = v61;
  *(v38 + 8) = v60;
  *(v38 + 16) = v59;
  v39 = (a9 + v22[12]);
  v40 = a10[1];
  *v39 = *a10;
  v39[1] = v40;
  v41 = a10[3];
  v39[2] = a10[2];
  v39[3] = v41;
  v42 = a9 + v22[13];
  *v42 = v65;
  *(v42 + 16) = v64;
  *(v42 + 24) = v63;
  v43 = a9 + v22[14];
  *(v43 + 48) = *(a12 + 48);
  v44 = *(a12 + 32);
  *(v43 + 16) = *(a12 + 16);
  *(v43 + 32) = v44;
  *v43 = *a12;
  v45 = (a9 + v22[15]);
  result = v66;
  *v45 = v66;
  v45[1] = v62;
  v47 = (a9 + v22[16]);
  *v47 = v68;
  v47[1] = v67;
  return result;
}

uint64_t sub_217BE8790(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x44656C6369747261;
      break;
    case 3:
      result = 0x446C656E6E616863;
      break;
    case 4:
      result = 0x74614470756F7267;
      break;
    case 5:
      v3 = 1684366694;
      goto LABEL_12;
    case 6:
      result = 0x746144616964656DLL;
      break;
    case 7:
      v3 = 2003134838;
LABEL_12:
      result = v3 | 0x6174614400000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x447972656C6C6167;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x7461446575737369;
      break;
    case 12:
      result = 0x6569566575737369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217BE88F8(uint64_t a1)
{
  v2 = sub_217BE92DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BE8934(uint64_t a1)
{
  v2 = sub_217BE92DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BEA050(0, &qword_27CBA1A50, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE92DC();
  sub_217D89E7C();
  LOBYTE(v113) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for MediaExposureEvent.Model(0);
    v148 = v3;
    v147[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    v11 = v148;
    sub_217D89CAC();
    v69 = v10;
    v12 = v11 + *(v10 + 24);
    v13 = *(v12 + 96);
    v14 = *(v12 + 64);
    v144 = *(v12 + 80);
    v145 = v13;
    v15 = *(v12 + 96);
    *v146 = *(v12 + 112);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v141 = *(v12 + 32);
    v142 = v17;
    v18 = *(v12 + 48);
    v143 = *(v12 + 64);
    v19 = *(v12 + 16);
    v140[0] = *v12;
    v140[1] = v19;
    v137 = v144;
    v138 = v15;
    v139[0] = *(v12 + 112);
    v134 = v141;
    v135 = v18;
    v136 = v14;
    *&v146[15] = *(v12 + 127);
    *(v139 + 15) = *(v12 + 127);
    v132 = v140[0];
    v133 = v16;
    v131 = 2;
    sub_217AD1630(v140, &v113);
    sub_217ACF52C();
    sub_217D89CAC();
    v129[5] = v137;
    v129[6] = v138;
    *v130 = v139[0];
    *&v130[15] = *(v139 + 15);
    v129[2] = v134;
    v129[3] = v135;
    v129[4] = v136;
    v129[0] = v132;
    v129[1] = v133;
    sub_217AD2864(v129);
    v20 = v148;
    v21 = (v148 + v69[7]);
    v22 = v21[1];
    v23 = *(v21 + 16);
    v24 = *(v21 + 17);
    v25 = v21[3];
    v26 = v21[4];
    v123 = *v21;
    v124 = v22;
    v125 = v23;
    v126 = v24;
    v127 = v25;
    v128 = v26;
    v122 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v27 = v69;
    v28 = (v20 + v69[8]);
    v29 = v28[6];
    v30 = v28[4];
    v118 = v28[5];
    v119 = v29;
    v31 = v28[6];
    v32 = v28[8];
    v120 = v28[7];
    v121 = v32;
    v33 = v28[2];
    v34 = *v28;
    v114 = v28[1];
    v115 = v33;
    v35 = v28[2];
    v36 = v28[4];
    v116 = v28[3];
    v117 = v36;
    v37 = *v28;
    v110 = v31;
    v111 = v120;
    v112 = v28[8];
    v113 = v37;
    v106 = v35;
    v107 = v116;
    v108 = v30;
    v109 = v118;
    v104 = v34;
    v105 = v114;
    v103 = 4;
    sub_217AE38AC(&v113, v102, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v102[6] = v110;
    v102[7] = v111;
    v102[8] = v112;
    v102[2] = v106;
    v102[3] = v107;
    v102[4] = v108;
    v102[5] = v109;
    v102[0] = v104;
    v102[1] = v105;
    sub_217AE4A44(v102, &qword_2811BD178, &type metadata for GroupData);
    v38 = (v20 + v27[9]);
    v39 = v38[1];
    v40 = v38[2];
    *&v94 = *v38;
    *(&v94 + 1) = v39;
    *&v95 = v40;
    LOBYTE(v90) = 5;
    sub_217AD1A68(v94, v39, v40);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v94, *(&v94 + 1), v95);
    v42 = (v20 + v27[10]);
    v43 = *v42;
    v44 = *(v42 + 1);
    v45 = *(v42 + 2);
    v46 = *(v42 + 6);
    LOBYTE(v42) = v42[28];
    LOBYTE(v94) = v43;
    *(&v94 + 1) = v44;
    *&v95 = v45;
    DWORD2(v95) = v46;
    BYTE12(v95) = v42;
    LOBYTE(v90) = 6;
    sub_217AE1D08();

    sub_217D89CAC();

    v47 = (v20 + v27[11]);
    v48 = *v47;
    v49 = v47[1];
    LOWORD(v47) = *(v47 + 8);
    v99 = v48;
    v100 = v49;
    v101 = v47;
    v98 = 7;
    sub_217A5E790();

    sub_217D89CAC();

    v50 = (v20 + v27[12]);
    v51 = v50[1];
    v94 = *v50;
    v95 = v51;
    v52 = v50[3];
    v54 = *v50;
    v53 = v50[1];
    v96 = v50[2];
    v97 = v52;
    v90 = v54;
    v91 = v53;
    v55 = v50[3];
    v92 = v50[2];
    v93 = v55;
    v89 = 8;
    sub_217AE38AC(&v94, v88, &qword_27CB9ECA0, &type metadata for ANFComponentData);
    sub_217AE2368();
    sub_217D89C3C();
    v88[0] = v90;
    v88[1] = v91;
    v88[2] = v92;
    v88[3] = v93;
    sub_217AE4A44(v88, &qword_27CB9ECA0, &type metadata for ANFComponentData);
    v56 = (v20 + v27[13]);
    v57 = *(v56 + 2);
    v58 = *(v56 + 6);
    v85 = *v56;
    v86 = v57;
    v87 = v58;
    v84 = 9;
    sub_217B03820();

    sub_217D89C3C();

    v59 = (v20 + v27[14]);
    v60 = v59[1];
    v82[0] = *v59;
    v82[1] = v60;
    v62 = *v59;
    v61 = v59[1];
    v82[2] = v59[2];
    v83 = *(v59 + 48);
    v78 = v62;
    v79 = v61;
    v80 = v59[2];
    v81 = *(v59 + 48);
    v77 = 10;
    sub_217ACC004(v82, v75);
    sub_217A55B98();
    sub_217D89CAC();
    v75[0] = v78;
    v75[1] = v79;
    v75[2] = v80;
    v76 = v81;
    sub_217ACC69C(v75);
    v63 = (v148 + v69[15]);
    v64 = v63[1];
    v65 = v63[2];
    v66 = v63[3];
    v71 = *v63;
    v72 = v64;
    v73 = v65;
    v74 = v66;
    v70 = 11;
    sub_217AE39D0(v71, v64, v65, v66);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v71, v72, v73, v74);
    v67 = (v148 + v69[16]);
    v68 = v67[1];
    v71 = *v67;
    v72 = v68;
    v70 = 12;
    sub_217AD01EC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BE92DC()
{
  result = qword_27CBA1A58;
  if (!qword_27CBA1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A58);
  }

  return result;
}

void MediaExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v65 = sub_217D889CC();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D8899C();
  v64 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BEA050(0, &qword_27CBA1A60, MEMORY[0x277D844C8]);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v59 - v7;
  v9 = type metadata accessor for MediaExposureEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BE92DC();
  v70 = v8;
  v12 = v103;
  sub_217D89E5C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v66;
    v60 = v9;
    v61 = a1;
    v103 = v11;
    LOBYTE(v94) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v14 = v67;
    sub_217D89BCC();
    v15 = v4;
    v16 = *(v64 + 32);
    v17 = v103;
    v67 = v15;
    v16(v103, v14);
    LOBYTE(v94) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v18 = v13;
    v19 = v65;
    sub_217D89BCC();
    v59[1] = 0;
    v20 = v60;
    (*(v63 + 32))(&v17[v60[5]], v18, v19);
    v85 = 2;
    sub_217ACF4D8();
    sub_217D89BCC();
    v21 = &v17[v20[6]];
    v22 = v91;
    v23 = *v93;
    *(v21 + 6) = v92;
    *(v21 + 7) = v23;
    *(v21 + 127) = *&v93[15];
    v24 = v87;
    v25 = v89;
    *(v21 + 2) = v88;
    *(v21 + 3) = v25;
    *(v21 + 4) = v90;
    *(v21 + 5) = v22;
    *v21 = v86;
    *(v21 + 1) = v24;
    LOBYTE(v80) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v26 = *(&v94 + 1);
    v27 = v95;
    v28 = BYTE1(v95);
    v29 = *(&v95 + 1);
    v30 = v96;
    v31 = &v17[v20[7]];
    *v31 = v94;
    *(v31 + 1) = v26;
    v31[16] = v27;
    v31[17] = v28;
    *(v31 + 3) = v29;
    *(v31 + 4) = v30;
    v84 = 4;
    sub_217A5D308();
    sub_217D89B5C();
    v32 = &v17[v20[8]];
    v33 = v101;
    *(v32 + 6) = v100;
    *(v32 + 7) = v33;
    *(v32 + 8) = v102;
    v34 = v97;
    *(v32 + 2) = v96;
    *(v32 + 3) = v34;
    v35 = v99;
    *(v32 + 4) = v98;
    *(v32 + 5) = v35;
    v36 = v95;
    *v32 = v94;
    *(v32 + 1) = v36;
    LOBYTE(v75) = 5;
    sub_217A5B978();
    sub_217D89B5C();
    v37 = v81;
    v38 = &v17[v20[9]];
    *v38 = v80;
    *(v38 + 2) = v37;
    LOBYTE(v75) = 6;
    sub_217AE1CB4();
    sub_217D89BCC();
    v39 = *(&v80 + 1);
    v40 = v81;
    v41 = DWORD2(v81);
    v42 = BYTE12(v81);
    v43 = &v17[v20[10]];
    *v43 = v80;
    *(v43 + 1) = v39;
    *(v43 + 2) = v40;
    *(v43 + 6) = v41;
    v43[28] = v42;
    LOBYTE(v75) = 7;
    sub_217A5E738();
    sub_217D89BCC();
    v44 = *(&v80 + 1);
    v45 = v81;
    v46 = &v17[v20[11]];
    *v46 = v80;
    *(v46 + 1) = v44;
    *(v46 + 8) = v45;
    v79 = 8;
    sub_217AE2314();
    sub_217D89B5C();
    v47 = &v103[v60[12]];
    v48 = v81;
    v49 = v82;
    *v47 = v80;
    *(v47 + 1) = v48;
    v50 = v83;
    *(v47 + 2) = v49;
    *(v47 + 3) = v50;
    LOBYTE(v72) = 9;
    sub_217B037CC();
    sub_217D89B5C();
    v51 = v76;
    v52 = DWORD2(v76);
    v53 = &v103[v60[13]];
    *v53 = v75;
    *(v53 + 2) = v51;
    *(v53 + 6) = v52;
    v74 = 10;
    sub_217A54D08();
    sub_217D89BCC();
    v54 = &v103[v60[14]];
    v55 = v76;
    *v54 = v75;
    *(v54 + 1) = v55;
    *(v54 + 2) = v77;
    v54[48] = v78;
    v71 = 11;
    sub_217ACFF40();
    sub_217D89B5C();
    v56 = &v103[v60[15]];
    v57 = v73;
    *v56 = v72;
    *(v56 + 1) = v57;
    v71 = 12;
    sub_217AD0198();
    sub_217D89B5C();
    (*(v68 + 8))(v70, v69);
    v58 = v103;
    *&v103[v60[16]] = v72;
    sub_217BEA0B4(v58, v62);
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_217BEA118(v58);
  }
}

void sub_217BEA050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BE92DC();
    v7 = a3(a1, &type metadata for MediaExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BEA0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BEA118(uint64_t a1)
{
  v2 = type metadata accessor for MediaExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217BEA2B0()
{
  result = qword_27CBA1A68;
  if (!qword_27CBA1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A68);
  }

  return result;
}

unint64_t sub_217BEA308()
{
  result = qword_27CBA1A70;
  if (!qword_27CBA1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A70);
  }

  return result;
}

unint64_t sub_217BEA360()
{
  result = qword_27CBA1A78;
  if (!qword_27CBA1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A78);
  }

  return result;
}

uint64_t sub_217BEA424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F697463656C6573 && a2 == 0xED0000657079546ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BEA4B4(uint64_t a1)
{
  v2 = sub_217BEA688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEA4F0(uint64_t a1)
{
  v2 = sub_217BEA688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSelectionData.encode(to:)(void *a1)
{
  sub_217BEA8C8(0, &qword_27CBA1A80, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEA688();
  sub_217D89E7C();
  v11 = v8;
  sub_217BEA6DC();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BEA688()
{
  result = qword_27CBA1A88;
  if (!qword_27CBA1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A88);
  }

  return result;
}

unint64_t sub_217BEA6DC()
{
  result = qword_27CBA1A90;
  if (!qword_27CBA1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1A90);
  }

  return result;
}

uint64_t UserSelectionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BEA8C8(0, &qword_27CBA1A98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEA688();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BEA92C();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BEA8C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEA688();
    v7 = a3(a1, &type metadata for UserSelectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BEA92C()
{
  result = qword_27CBA1AA0;
  if (!qword_27CBA1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AA0);
  }

  return result;
}

unint64_t sub_217BEA9DC()
{
  result = qword_27CBA1AA8;
  if (!qword_27CBA1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AA8);
  }

  return result;
}

unint64_t sub_217BEAA34()
{
  result = qword_27CBA1AB0;
  if (!qword_27CBA1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AB0);
  }

  return result;
}

unint64_t sub_217BEAA8C()
{
  result = qword_27CBA1AB8;
  if (!qword_27CBA1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AB8);
  }

  return result;
}

uint64_t AdReferralData.qToken.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AdReferralData.qToken.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217BEAB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F5471 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BEAC10(uint64_t a1)
{
  v2 = sub_217BEADD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEAC4C(uint64_t a1)
{
  v2 = sub_217BEADD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdReferralData.encode(to:)(void *a1)
{
  sub_217BEAFAC(0, &qword_27CBA1AC0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEADD4();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BEADD4()
{
  result = qword_27CBA1AC8;
  if (!qword_27CBA1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AC8);
  }

  return result;
}

uint64_t AdReferralData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BEAFAC(0, &qword_27CBA1AD0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEADD4();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BEAFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEADD4();
    v7 = a3(a1, &type metadata for AdReferralData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BEB014()
{
  result = qword_2811C7100;
  if (!qword_2811C7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7100);
  }

  return result;
}

unint64_t sub_217BEB06C()
{
  result = qword_2811C7108;
  if (!qword_2811C7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7108);
  }

  return result;
}

uint64_t sub_217BEB0D8(void *a1)
{
  sub_217BEAFAC(0, &qword_27CBA1AC0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEADD4();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BEB238()
{
  result = qword_27CBA1AD8;
  if (!qword_27CBA1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AD8);
  }

  return result;
}

unint64_t sub_217BEB290()
{
  result = qword_27CBA1AE0;
  if (!qword_27CBA1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AE0);
  }

  return result;
}

unint64_t sub_217BEB2E8()
{
  result = qword_27CBA1AE8;
  if (!qword_27CBA1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AE8);
  }

  return result;
}

uint64_t sub_217BEB404()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C0E78);
  __swift_project_value_buffer(v0, qword_2811C0E78);
  return sub_217D8866C();
}

uint64_t OfflineModeStartEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OfflineModeStartEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfflineModeStartEvent(0) + 20);
  sub_217B8A2C8(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OfflineModeStartEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfflineModeStartEvent(0) + 20);
  sub_217B8A2C8(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OfflineModeStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for OfflineModeStartEvent(0) + 20);
  sub_217B8A2C8(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t OfflineModeStartEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OfflineModeStartEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 OfflineModeStartEvent.Model.init(eventData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for OfflineModeStartEvent.Model(0) + 20);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  result = *(a2 + 32);
  *(v7 + 32) = result;
  *(v7 + 48) = *(a2 + 48);
  return result;
}

uint64_t sub_217BEB88C(uint64_t a1)
{
  v2 = sub_217BEBB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEB8C8(uint64_t a1)
{
  v2 = sub_217BEBB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfflineModeStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BEBEF4(0, &qword_27CBA1AF0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEBB34();
  sub_217D89E7C();
  v26 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for OfflineModeStartEvent.Model(0) + 20));
    v11 = v10[2];
    v12 = *v10;
    v13 = *v10;
    v22 = v10[1];
    v23 = v11;
    v21 = v12;
    v24 = *(v10 + 48);
    v17 = v13;
    v18 = v22;
    v19 = v10[2];
    v20 = *(v10 + 48);
    v25 = 1;
    sub_217ACC004(&v21, v15);
    sub_217A55B98();
    sub_217D89CAC();
    v15[0] = v17;
    v15[1] = v18;
    v15[2] = v19;
    v16 = v20;
    sub_217ACC69C(v15);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BEBB34()
{
  result = qword_27CBA1AF8;
  if (!qword_27CBA1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1AF8);
  }

  return result;
}

uint64_t OfflineModeStartEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_217D8899C();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BEBEF4(0, &qword_27CBA1B00, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  started = type metadata accessor for OfflineModeStartEvent.Model(0);
  MEMORY[0x28223BE20](started);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEBB34();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = started;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v27;
  v16 = v25;
  sub_217D89BCC();
  (*(v14 + 32))(v13, v5, v15);
  v32 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v26 + 8))(v9, v16);
  v17 = v23;
  v18 = v13 + *(v22 + 20);
  v19 = v29;
  *v18 = v28;
  *(v18 + 16) = v19;
  *(v18 + 32) = v30;
  *(v18 + 48) = v31;
  sub_217BEBF58(v13, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BEBFBC(v13);
}

void sub_217BEBEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEBB34();
    v7 = a3(a1, &type metadata for OfflineModeStartEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BEBF58(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for OfflineModeStartEvent.Model(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_217BEBFBC(uint64_t a1)
{
  started = type metadata accessor for OfflineModeStartEvent.Model(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

unint64_t sub_217BEC154()
{
  result = qword_27CBA1B18;
  if (!qword_27CBA1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B18);
  }

  return result;
}

unint64_t sub_217BEC1AC()
{
  result = qword_27CBA1B20;
  if (!qword_27CBA1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B20);
  }

  return result;
}

unint64_t sub_217BEC204()
{
  result = qword_27CBA1B28;
  if (!qword_27CBA1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B28);
  }

  return result;
}

uint64_t sub_217BEC2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615074756F79616CLL && a2 == 0xEA00000000006874)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BEC350(uint64_t a1)
{
  v2 = sub_217BEC524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEC38C(uint64_t a1)
{
  v2 = sub_217BEC524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutData.encode(to:)(void *a1)
{
  sub_217BEC764(0, &qword_2811BC688, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEC524();
  sub_217D89E7C();
  v11 = v8;
  sub_217BEC578();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BEC524()
{
  result = qword_2811C2A60;
  if (!qword_2811C2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A60);
  }

  return result;
}

unint64_t sub_217BEC578()
{
  result = qword_2811C2A38;
  if (!qword_2811C2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A38);
  }

  return result;
}

uint64_t FeedGroupLayoutData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BEC764(0, &qword_27CBA1B30, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEC524();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BEC7C8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BEC764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEC524();
    v7 = a3(a1, &type metadata for FeedGroupLayoutData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BEC7C8()
{
  result = qword_27CBA1B38;
  if (!qword_27CBA1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B38);
  }

  return result;
}

unint64_t sub_217BEC878()
{
  result = qword_27CBA1B40;
  if (!qword_27CBA1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B40);
  }

  return result;
}

unint64_t sub_217BEC8D0()
{
  result = qword_2811C2A50;
  if (!qword_2811C2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A50);
  }

  return result;
}

unint64_t sub_217BEC928()
{
  result = qword_2811C2A58;
  if (!qword_2811C2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A58);
  }

  return result;
}

uint64_t sub_217BEC9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BECA60(uint64_t a1)
{
  v2 = sub_217BECC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BECA9C(uint64_t a1)
{
  v2 = sub_217BECC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultActionData.encode(to:)(void *a1)
{
  sub_217BECE74(0, &qword_27CBA1B48, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BECC34();
  sub_217D89E7C();
  v11 = v8;
  sub_217BECC88();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BECC34()
{
  result = qword_27CBA1B50;
  if (!qword_27CBA1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B50);
  }

  return result;
}

unint64_t sub_217BECC88()
{
  result = qword_27CBA1B58;
  if (!qword_27CBA1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B58);
  }

  return result;
}

uint64_t ResultActionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BECE74(0, &qword_27CBA1B60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BECC34();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BECED8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BECE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BECC34();
    v7 = a3(a1, &type metadata for ResultActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BECED8()
{
  result = qword_27CBA1B68;
  if (!qword_27CBA1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B68);
  }

  return result;
}

unint64_t sub_217BECF88()
{
  result = qword_27CBA1B70;
  if (!qword_27CBA1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B70);
  }

  return result;
}

unint64_t sub_217BECFE0()
{
  result = qword_27CBA1B78;
  if (!qword_27CBA1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B78);
  }

  return result;
}

unint64_t sub_217BED038()
{
  result = qword_27CBA1B80;
  if (!qword_27CBA1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1B80);
  }

  return result;
}

uint64_t sub_217BED154()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1BB8);
  __swift_project_value_buffer(v0, qword_27CBA1BB8);
  return sub_217D8866C();
}

uint64_t ReplicaAdvertisementEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReplicaAdvertisementEngagementEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 20);
  sub_217BEDD78(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 20);
  sub_217BEDD78(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 24);
  sub_217BEDD78(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 24);
  sub_217BEDD78(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 28);
  sub_217BEDD78(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 28);
  sub_217BEDD78(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 32);
  sub_217BEDD78(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 32);
  sub_217BEDD78(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 36);
  sub_217BEDD78(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 36);
  sub_217BEDD78(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 40);
  sub_217BEDD78(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 40);
  sub_217BEDD78(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 44);
  sub_217BEDD78(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BEDD78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ReplicaAdvertisementEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementEngagementEvent(0) + 44);
  sub_217BEDD78(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReplicaAdvertisementEngagementEvent(0);
  v5 = v4[5];
  sub_217BEDD78(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BEDD78(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BEDD78(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217BEDD78(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217BEDD78(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_217BEDD78(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_217BEDD78(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v16, v19);
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 36);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

__n128 ReplicaAdvertisementEngagementEvent.Model.init(eventData:viewData:articleData:channelData:userChannelContextData:issueData:issueViewData:feedData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a2;
  v12 = a2[1];
  v14 = *(a2 + 8);
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 16);
  v18 = *(a4 + 17);
  v33 = a4[4];
  v34 = a4[3];
  v36 = a5[1];
  v37 = *a5;
  v35 = *(a5 + 1);
  v41 = a6[1];
  v42 = *a6;
  v39 = *(a6 + 17);
  v40 = *(a6 + 16);
  v38 = a6[3];
  v43 = a7[1];
  v44 = *a7;
  v46 = *a8;
  v45 = a8[1].n128_u64[0];
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  v21 = a9 + v20[5];
  *v21 = v13;
  *(v21 + 8) = v12;
  *(v21 + 16) = v14;
  v22 = a9 + v20[6];
  v23 = *(a3 + 112);
  *(v22 + 96) = *(a3 + 96);
  *(v22 + 112) = v23;
  *(v22 + 127) = *(a3 + 127);
  v24 = *(a3 + 48);
  *(v22 + 32) = *(a3 + 32);
  *(v22 + 48) = v24;
  v25 = *(a3 + 80);
  *(v22 + 64) = *(a3 + 64);
  *(v22 + 80) = v25;
  v26 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 16) = v26;
  v27 = a9 + v20[7];
  *v27 = v15;
  *(v27 + 8) = v16;
  *(v27 + 16) = v17;
  *(v27 + 17) = v18;
  *(v27 + 24) = v34;
  *(v27 + 32) = v33;
  v28 = a9 + v20[8];
  *v28 = v37;
  *(v28 + 1) = v36;
  *(v28 + 2) = v35;
  v29 = a9 + v20[9];
  *v29 = v42;
  *(v29 + 8) = v41;
  *(v29 + 16) = v40;
  *(v29 + 17) = v39;
  *(v29 + 24) = v38;
  v30 = (a9 + v20[10]);
  *v30 = v44;
  v30[1] = v43;
  v31 = (a9 + v20[11]);
  result = v46;
  *v31 = v46;
  v31[1].n128_u64[0] = v45;
  return result;
}

uint64_t sub_217BEE764()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6569566575737369;
  if (v1 != 6)
  {
    v3 = 0x6174614464656566;
  }

  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x7461446575737369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x6174614477656976;
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

uint64_t sub_217BEE880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BF022C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BEE8A8(uint64_t a1)
{
  v2 = sub_217BEEEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BEE8E4(uint64_t a1)
{
  v2 = sub_217BEEEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BEF768(0, &qword_27CBA1BD0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEEEB8();
  sub_217D89E7C();
  LOBYTE(v61[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v69 = v12;
    v70 = v13;
    v71 = v11;
    v68 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v72 = v10;
    v14 = v3 + *(v10 + 24);
    v15 = *(v14 + 96);
    v16 = *(v14 + 64);
    v65 = *(v14 + 80);
    v66 = v15;
    v17 = *(v14 + 96);
    *v67 = *(v14 + 112);
    v18 = *(v14 + 16);
    v19 = *(v14 + 48);
    v62 = *(v14 + 32);
    v63 = v19;
    v20 = *(v14 + 48);
    v64 = *(v14 + 64);
    v21 = *(v14 + 16);
    v61[0] = *v14;
    v61[1] = v21;
    v58 = v65;
    v59 = v17;
    v60[0] = *(v14 + 112);
    v55 = v62;
    v56 = v20;
    v57 = v16;
    *&v67[15] = *(v14 + 127);
    *(v60 + 15) = *(v14 + 127);
    v53 = v61[0];
    v54 = v18;
    v52 = 2;
    sub_217AD1630(v61, v50);
    sub_217ACF52C();
    sub_217D89CAC();
    v50[6] = v59;
    *v51 = v60[0];
    *&v51[15] = *(v60 + 15);
    v50[2] = v55;
    v50[3] = v56;
    v50[4] = v57;
    v50[5] = v58;
    v50[0] = v53;
    v50[1] = v54;
    sub_217AD2864(v50);
    v22 = v3 + v72[7];
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 17);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    v45 = *v22;
    v46 = v23;
    LOBYTE(v47) = v24;
    BYTE1(v47) = v25;
    v48 = v26;
    v49 = v27;
    HIBYTE(v44) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v28 = v72;
    v29 = (v3 + v72[8]);
    v30 = *v29;
    v31 = v29[1];
    LOWORD(v29) = *(v29 + 1);
    LOBYTE(v45) = v30;
    BYTE1(v45) = v31;
    WORD1(v45) = v29;
    HIBYTE(v44) = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
    v33 = v3 + v28[9];
    v34 = *(v33 + 8);
    v35 = *(v33 + 16);
    v36 = *(v33 + 17);
    v37 = *(v33 + 24);
    v45 = *v33;
    v46 = v34;
    LOBYTE(v47) = v35;
    BYTE1(v47) = v36;
    v48 = v37;
    HIBYTE(v44) = 5;
    sub_217ACFF94();

    sub_217D89CAC();

    v38 = v72;
    v39 = (v3 + v72[10]);
    v40 = v39[1];
    v45 = *v39;
    v46 = v40;
    HIBYTE(v44) = 6;
    sub_217AD01EC();

    sub_217D89C3C();

    v41 = (v3 + v38[11]);
    v42 = v41[1];
    v43 = v41[2];
    v45 = *v41;
    v46 = v42;
    v47 = v43;
    HIBYTE(v44) = 7;
    sub_217AD1A68(v45, v42, v43);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v45, v46, v47);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BEEEB8()
{
  result = qword_27CBA1BD8;
  if (!qword_27CBA1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1BD8);
  }

  return result;
}

uint64_t ReplicaAdvertisementEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_217D8899C();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BEF768(0, &qword_27CBA1BE0, MEMORY[0x277D844C8]);
  v61 = v6;
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BEEEB8();
  v46 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v44;
  LOBYTE(v53) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v45;
  sub_217D89BCC();
  v14 = *(v43 + 32);
  v45 = v4;
  v14(v11, v13, v4);
  LOBYTE(v48) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v15 = *(&v53 + 1);
  v16 = v54;
  v17 = &v11[v9[5]];
  *v17 = v53;
  *(v17 + 1) = v15;
  *(v17 + 8) = v16;
  v52 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v18 = &v11[v9[6]];
  v19 = v58;
  v20 = v60[0];
  *(v18 + 6) = v59;
  *(v18 + 7) = v20;
  *(v18 + 127) = *(v60 + 15);
  v21 = v56;
  *(v18 + 2) = v55;
  *(v18 + 3) = v21;
  *(v18 + 4) = v57;
  *(v18 + 5) = v19;
  v22 = v54;
  *v18 = v53;
  *(v18 + 1) = v22;
  v47 = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v41 = a1;
  v23 = *(&v48 + 1);
  v24 = v49;
  v25 = BYTE1(v49);
  v26 = v50;
  v27 = v51;
  v28 = &v11[v9[7]];
  *v28 = v48;
  *(v28 + 1) = v23;
  v28[16] = v24;
  v28[17] = v25;
  *(v28 + 3) = v26;
  *(v28 + 4) = v27;
  v47 = 4;
  sub_217ACFB38();
  sub_217D89BCC();
  v29 = BYTE1(v48);
  v30 = WORD1(v48);
  v31 = &v11[v9[8]];
  *v31 = v48;
  v31[1] = v29;
  *(v31 + 1) = v30;
  v47 = 5;
  sub_217ACFF40();
  sub_217D89BCC();
  v32 = *(&v48 + 1);
  v33 = v49;
  v34 = BYTE1(v49);
  v35 = v50;
  v36 = &v11[v9[9]];
  *v36 = v48;
  *(v36 + 1) = v32;
  v36[16] = v33;
  v36[17] = v34;
  *(v36 + 3) = v35;
  v47 = 6;
  sub_217AD0198();
  sub_217D89B5C();
  *&v11[v9[10]] = v48;
  v47 = 7;
  sub_217A5B978();
  sub_217D89B5C();
  (*(v12 + 8))(v46, v61);
  v37 = v49;
  v38 = &v11[v9[11]];
  *v38 = v48;
  *(v38 + 2) = v37;
  sub_217BEF7CC(v11, v42);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_217BEF830(v11);
}

void sub_217BEF768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BEEEB8();
    v7 = a3(a1, &type metadata for ReplicaAdvertisementEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BEF7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BEF830(uint64_t a1)
{
  v2 = type metadata accessor for ReplicaAdvertisementEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BEF964@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BEDD78(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BEDD78(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BEDD78(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217BEDD78(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217BEDD78(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_217BEDD78(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_217BEDD78(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v17, v20);
}

void sub_217BEFD60(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217BEDD78(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217BEDD78(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217BEDD78(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217BEDD78(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
          if (v5 <= 0x3F)
          {
            sub_217BEDD78(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
            if (v6 <= 0x3F)
            {
              sub_217BEDD78(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
              if (v7 <= 0x3F)
              {
                sub_217BEDD78(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
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

void sub_217BF0024(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BF0128()
{
  result = qword_27CBA1BE8;
  if (!qword_27CBA1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1BE8);
  }

  return result;
}

unint64_t sub_217BF0180()
{
  result = qword_27CBA1BF0;
  if (!qword_27CBA1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1BF0);
  }

  return result;
}

unint64_t sub_217BF01D8()
{
  result = qword_27CBA1BF8;
  if (!qword_27CBA1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1BF8);
  }

  return result;
}

uint64_t sub_217BF022C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217BF0524(uint64_t a1)
{
  v2 = sub_217BF06E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF0560(uint64_t a1)
{
  v2 = sub_217BF06E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdPositionData.encode(to:)(void *a1)
{
  sub_217BF08B8(0, &qword_2811BC7A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF06E4();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BF06E4()
{
  result = qword_2811C7130;
  if (!qword_2811C7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7130);
  }

  return result;
}

uint64_t AdPositionData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217BF08B8(0, &qword_27CBA1C00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF06E4();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF08B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF06E4();
    v7 = a3(a1, &type metadata for AdPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BF093C(void *a1)
{
  sub_217BF08B8(0, &qword_2811BC7A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF06E4();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BF0AA8()
{
  result = qword_27CBA1C08;
  if (!qword_27CBA1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C08);
  }

  return result;
}

unint64_t sub_217BF0B00()
{
  result = qword_2811C7120;
  if (!qword_2811C7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7120);
  }

  return result;
}

unint64_t sub_217BF0B58()
{
  result = qword_2811C7128;
  if (!qword_2811C7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7128);
  }

  return result;
}

id FCHeadlineProviding.articleData()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_217BF181C(0, &qword_2811C8C80, MEMORY[0x277CC9578]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v42[-v8];
  FCHeadlineProviding.alternateHeadlineData()(v62);
  v10 = v62[0];
  v11 = v63;
  v56 = [v1 isPaid];
  v12 = [v1 articleID];
  v13 = sub_217D8954C();
  v59 = v14;
  v60 = v13;

  v53 = [v2 contentType];
  v58 = [v2 backendArticleVersion];
  v15 = [v2 respondsToSelector_];
  v16 = 0;
  v57 = v15;
  if (v15)
  {
    v16 = [v2 bodyTextLength];
  }

  v55 = v16;
  v54 = [v2 hasVideo];
  v17 = [v2 iAdCategories];
  if (v17)
  {
    v18 = v17;
    v52 = sub_217D896EC();
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  v19 = [v2 publishDate];
  if (v19)
  {
    v20 = v19;
    sub_217D87C7C();

    v21 = sub_217D87C9C();
    (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
  }

  else
  {
    v21 = sub_217D87C9C();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  }

  sub_217BF129C(v7, v9);
  sub_217D87C9C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) != 1)
  {
    sub_217D87C6C();
    v25 = v24;
    result = (*(v22 + 8))(v9, v21);
    v23 = v25 * 1000.0;
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v23 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v23 < 9.22337204e18)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_217A5B4EC(v9, &qword_2811C8C80, MEMORY[0x277CC9578]);
  v23 = 0.0;
LABEL_14:
  v50 = [v2 publisherArticleVersion];
  v27 = [v2 referencedArticleID];
  if (v27)
  {
    v28 = v27;
    v29 = sub_217D8954C();
    v48 = v30;
    v49 = v29;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    sub_217BF131C([v2 role], &v61);
    v47 = v61;
  }

  else
  {
    v47 = 0;
  }

  v31 = [v2 topicIDs];
  if (v31)
  {
    v32 = v31;
    v46 = sub_217D896EC();
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  if ([v2 respondsToSelector_])
  {
    v45 = [v2 hasAudioTrack];
  }

  else
  {
    v45 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v44 = [v2 isEvergreen];
  }

  else
  {
    v44 = 0;
  }

  v51 = v10;
  v33 = v11;
  if ([v2 respondsToSelector_])
  {
    v43 = [v2 isFeatured];
  }

  else
  {
    v43 = 0;
  }

  v34 = [v2 isFeatureCandidate];
  if ([v2 respondsToSelector_])
  {
    v35 = [v2 reduceVisibility];
  }

  else
  {
    v35 = 0;
  }

  if ([v2 respondsToSelector_])
  {
    v36 = [v2 webConverted];
  }

  else
  {
    v36 = 0;
  }

  if (v53 == 2)
  {
    v37 = 1;
  }

  else
  {
    v37 = 2 * (v53 == 1);
  }

  if (v56)
  {
    v38 = 2;
  }

  else
  {
    v38 = 1;
  }

  result = [v2 isAIGenerated];
  *a1 = v51;
  *(a1 + 4) = v33;
  *(a1 + 8) = v38;
  v39 = v59;
  *(a1 + 16) = v60;
  *(a1 + 24) = v39;
  *(a1 + 32) = v37;
  v40 = v55;
  *(a1 + 40) = v58;
  *(a1 + 48) = v40;
  *(a1 + 56) = (v57 & 1) == 0;
  *(a1 + 57) = v54;
  *(a1 + 64) = v52;
  *(a1 + 72) = v23;
  *(a1 + 80) = 0;
  v41 = v49;
  *(a1 + 88) = v50;
  *(a1 + 96) = v41;
  *(a1 + 104) = v48;
  *(a1 + 112) = v47;
  *(a1 + 120) = v46;
  LOBYTE(v41) = v44;
  *(a1 + 128) = v45;
  *(a1 + 129) = v41;
  *(a1 + 130) = v43;
  *(a1 + 131) = v34;
  *(a1 + 132) = v35;
  *(a1 + 133) = v36;
  *(a1 + 134) = result;
  return result;
}

void FCHeadlineProviding.alternateHeadlineData()(uint64_t a1@<X8>)
{
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = [v1 experimentalTitleMetadata];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 treatmentState];
  if (v5 >= 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x50003000100uLL >> (8 * v5);
  }

  v7 = [v4 arrayIndexUsedforTitle];

  if (v7 >= 0xFFFFFFFF80000000)
  {
    if (v7 <= 0x7FFFFFFF)
    {
LABEL_10:
      *a1 = v6;
      *(a1 + 4) = v7;
      return;
    }

    __break(1u);
LABEL_9:
    v6 = 0;
    LODWORD(v7) = 0;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_217BF129C(uint64_t a1, uint64_t a2)
{
  sub_217BF181C(0, &qword_2811C8C80, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_217BF131C@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 8)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = byte_217DA79E6[result];
  }

  return result;
}

unint64_t FCHeadlineProviding.referringArticleData()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 articleID];
  v5 = sub_217D8954C();
  v7 = v6;

  v8 = [v2 publisherArticleVersion];
  result = [v2 respondsToSelector_];
  if (result)
  {
    result = sub_217BF131C([v2 role], &v11);
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  return result;
}

void __swiftcall FCHeadlineProviding.articleExposureContextData()(NewsAnalytics::ArticleExposureContextData *__return_ptr retstr)
{
  v3 = [v1 surfacedByTopicID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_217D8954C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v1 surfacedByChannelID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_217D8954C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_217BF14D4(v1);
  retstr->surfacedByTopicID.value._countAndFlagsBits = v5;
  retstr->surfacedByTopicID.value._object = v7;
  retstr->surfacedByChannelID.value._countAndFlagsBits = v10;
  retstr->surfacedByChannelID.value._object = v12;
  retstr->surfacedByArticleListIDs.value._rawValue = v13;
}

uint64_t sub_217BF14D4(void *a1)
{
  v1 = [a1 surfacedByArticleListIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_217D896EC();

  return v3;
}

NewsAnalytics::ShareOriginationData_optional __swiftcall FCHeadlineProviding.shareOriginationData()()
{
  v2 = v1;
  v19 = v0;
  v3 = sub_217D891BC();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BF181C(0, &qword_2811BCEC8, MEMORY[0x277D33250]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_217D891CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D8927C();
  v13 = sub_217D8926C();
  v14 = [v2 articleID];
  sub_217D8954C();

  sub_217D8925C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result.value.origin = sub_217A5B4EC(v8, &qword_2811BCEC8, MEMORY[0x277D33250]);
    v16 = 2;
LABEL_6:
    *v19 = v16;
    return result;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_217D891AC();
  v17 = (*(v18 + 88))(v5, v3);
  if (v17 == *MEMORY[0x277D33248] || v17 == *MEMORY[0x277D33240])
  {
    v16 = v17 != *MEMORY[0x277D33248];
    result.value.origin = (*(v10 + 8))(v12, v9);
    goto LABEL_6;
  }

  result.value.origin = sub_217D89D3C();
  __break(1u);
  return result;
}

void sub_217BF181C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D898EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void FCHeadlineProviding.recipeListData.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 recipeIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_217D896EC();
  }

  else
  {
    v5 = 1;
  }

  *a1 = v5;
}

uint64_t sub_217BF1938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BF19BC(uint64_t a1)
{
  v2 = sub_217BF1B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF19F8(uint64_t a1)
{
  v2 = sub_217BF1B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogStyleData.encode(to:)(void *a1)
{
  sub_217BF1DD0(0, &qword_2811BC760, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF1B90();
  sub_217D89E7C();
  v11 = v8;
  sub_217BF1BE4();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BF1B90()
{
  result = qword_2811C6908;
  if (!qword_2811C6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6908);
  }

  return result;
}

unint64_t sub_217BF1BE4()
{
  result = qword_2811C7D68;
  if (!qword_2811C7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D68);
  }

  return result;
}

uint64_t DialogStyleData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BF1DD0(0, &qword_27CBA1C10, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF1B90();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BF1E34();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF1DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF1B90();
    v7 = a3(a1, &type metadata for DialogStyleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF1E34()
{
  result = qword_27CBA1C18;
  if (!qword_27CBA1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C18);
  }

  return result;
}

unint64_t sub_217BF1EE4()
{
  result = qword_27CBA1C20;
  if (!qword_27CBA1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C20);
  }

  return result;
}

unint64_t sub_217BF1F3C()
{
  result = qword_2811C68F8;
  if (!qword_2811C68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68F8);
  }

  return result;
}

unint64_t sub_217BF1F94()
{
  result = qword_2811C6900;
  if (!qword_2811C6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6900);
  }

  return result;
}

uint64_t ReferralFeedData.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t ReferralFeedData.feedData.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

NewsAnalytics::ReferralFeedData __swiftcall ReferralFeedData.init(feedData:)(NewsAnalytics::ReferralFeedData feedData)
{
  *v1 = **&feedData.feedData.feedType;
  *(v1 + 8) = *(*&feedData.feedData.feedType + 8);
  return feedData;
}

uint64_t sub_217BF208C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BF2114(uint64_t a1)
{
  v2 = sub_217BF230C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF2150(uint64_t a1)
{
  v2 = sub_217BF230C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralFeedData.encode(to:)(void *a1)
{
  sub_217BF2504(0, &qword_27CBA1C28, MEMORY[0x277D84538]);
  v4 = v3;
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5 - 8];
  v7 = *v1;
  v9 = *(v1 + 1);
  v8 = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF230C();

  sub_217D89E7C();
  v12[0] = v7;
  v13 = v9;
  v14 = v8;
  sub_217A5BA2C();
  sub_217D89CAC();

  return (*(v15 + 8))(v6, v4);
}

unint64_t sub_217BF230C()
{
  result = qword_27CBA1C30;
  if (!qword_27CBA1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C30);
  }

  return result;
}

uint64_t ReferralFeedData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BF2504(0, &qword_27CBA1C38, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF230C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A5B978();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v10 = v13;
    *a2 = v12[8];
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF2504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF230C();
    v7 = a3(a1, &type metadata for ReferralFeedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF25AC()
{
  result = qword_27CBA1C40;
  if (!qword_27CBA1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C40);
  }

  return result;
}

unint64_t sub_217BF2604()
{
  result = qword_27CBA1C48;
  if (!qword_27CBA1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C48);
  }

  return result;
}

unint64_t sub_217BF265C()
{
  result = qword_27CBA1C50;
  if (!qword_27CBA1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C50);
  }

  return result;
}

uint64_t ArticleData.init(alternateHeadlineData:articleAccessType:articleID:articleType:backendArticleVersion:bodyTextLength:hasVideo:iAdCategories:publishDate:publisherArticleVersion:referencedArticleID:role:topicIDs:isAudio:isEvergreen:isFeatured:isFeatureCandidate:reduceVisibility:webConverted:hasAIGeneratedContent:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, __int128 a14, uint64_t a15, char *a16, uint64_t a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24)
{
  v24 = *a1;
  v25 = *(a1 + 1);
  v26 = *a2;
  v27 = *a5;
  v28 = *a16;
  *a9 = v24;
  *(a9 + 4) = v25;
  *(a9 + 8) = v26;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v27;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  result = a8 & 1;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13 & 1;
  *(a9 + 88) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = v28;
  *(a9 + 120) = a17;
  *(a9 + 128) = a18;
  *(a9 + 129) = a19;
  *(a9 + 130) = a20;
  *(a9 + 131) = a21;
  *(a9 + 132) = a22;
  *(a9 + 133) = a23;
  *(a9 + 134) = a24;
  return result;
}

void ArticleData.alternateHeadlineData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t ArticleData.alternateHeadlineData.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

uint64_t ArticleData.articleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArticleData.articleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ArticleData.bodyTextLength.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ArticleData.iAdCategories.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ArticleData.publishDate.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t ArticleData.referencedArticleID.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ArticleData.referencedArticleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ArticleData.topicIDs.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

unint64_t sub_217BF2C78(char a1)
{
  result = 0x49656C6369747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x54656C6369747261;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7478655479646F62;
      break;
    case 6:
      result = 0x6F65646956736168;
      break;
    case 7:
      result = 0x6765746143644169;
      break;
    case 8:
      result = 0x446873696C627570;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 1701605234;
      break;
    case 12:
      result = 0x7344496369706F74;
      break;
    case 13:
      result = 0x6F696475417369;
      break;
    case 14:
      result = 0x7267726576457369;
      break;
    case 15:
      result = 0x7275746165467369;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x65766E6F43626577;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_217BF2EE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BF4420(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BF2F18(uint64_t a1)
{
  v2 = sub_217BF357C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF2F54(uint64_t a1)
{
  v2 = sub_217BF357C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleData.encode(to:)(void *a1)
{
  sub_217BF3FB4(0, &qword_2811BC860, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v38 = v1[8];
  v9 = *(v1 + 2);
  v36 = *(v1 + 3);
  v37 = v9;
  v35 = v1[32];
  v10 = *(v1 + 6);
  v34 = *(v1 + 5);
  v32 = v10;
  v33 = v1[56];
  v31 = v1[57];
  v11 = *(v1 + 9);
  v30 = *(v1 + 8);
  v29 = v1[80];
  v12 = *(v1 + 12);
  v27 = *(v1 + 11);
  v28 = v11;
  v13 = *(v1 + 13);
  v25 = v12;
  v26 = v13;
  v24 = v1[112];
  v23 = *(v1 + 15);
  LODWORD(v9) = v1[128];
  v22[4] = v1[129];
  v22[5] = v9;
  LODWORD(v9) = v1[130];
  v22[2] = v1[131];
  v22[3] = v9;
  LODWORD(v13) = v1[133];
  v22[0] = v1[132];
  v22[1] = v13;
  v14 = v1[134];
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_217BF357C();
  sub_217D89E7C();
  LOBYTE(v41) = v7;
  HIDWORD(v41) = v8;
  v40 = 0;
  sub_217BF35D0();
  v19 = v39;
  sub_217D89CAC();
  if (!v19)
  {
    v20 = v35;
    LODWORD(v39) = v14;
    LOBYTE(v41) = v38;
    v40 = 1;
    sub_217BF3624();
    sub_217D89CAC();
    LOBYTE(v41) = 2;
    sub_217D89C6C();
    LOBYTE(v41) = v20;
    v40 = 3;
    sub_217BF3678();
    sub_217D89CAC();
    LOBYTE(v41) = 4;
    sub_217D89CCC();
    LOBYTE(v41) = 5;
    sub_217D89C5C();
    LOBYTE(v41) = 6;
    sub_217D89C7C();
    v41 = v30;
    v40 = 7;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_217D89C3C();
    LOBYTE(v41) = 8;
    sub_217D89C5C();
    LOBYTE(v41) = 9;
    sub_217D89CCC();
    LOBYTE(v41) = 10;
    sub_217D89C0C();
    LOBYTE(v41) = v24;
    v40 = 11;
    sub_217ADB920();
    sub_217D89CAC();
    v41 = v23;
    v40 = 12;
    sub_217D89CAC();
    LOBYTE(v41) = 13;
    sub_217D89C7C();
    LOBYTE(v41) = 14;
    sub_217D89C7C();
    LOBYTE(v41) = 15;
    sub_217D89C7C();
    LOBYTE(v41) = 16;
    sub_217D89C7C();
    LOBYTE(v41) = 17;
    sub_217D89C7C();
    LOBYTE(v41) = 18;
    sub_217D89C7C();
    LOBYTE(v41) = 19;
    sub_217D89C1C();
  }

  return (*(v4 + 8))(v6, v18);
}

unint64_t sub_217BF357C()
{
  result = qword_2811C7DE0;
  if (!qword_2811C7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DE0);
  }

  return result;
}

unint64_t sub_217BF35D0()
{
  result = qword_2811C19D0;
  if (!qword_2811C19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19D0);
  }

  return result;
}

unint64_t sub_217BF3624()
{
  result = qword_2811C4980[0];
  if (!qword_2811C4980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4980);
  }

  return result;
}

unint64_t sub_217BF3678()
{
  result = qword_2811C7DB0;
  if (!qword_2811C7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DB0);
  }

  return result;
}

uint64_t ArticleData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BF3FB4(0, &qword_2811BCB50, MEMORY[0x277D844C8]);
  v111 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF357C();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    LOBYTE(v62) = 0;
    sub_217BF4018();
    sub_217D89BCC();
    v10 = v70;
    v11 = HIDWORD(v70);
    LOBYTE(v62) = 1;
    sub_217BF406C();
    sub_217D89BCC();
    v61 = v10;
    v12 = v70;
    LOBYTE(v70) = 2;
    v13 = sub_217D89B8C();
    v57 = v12;
    v58 = v13;
    v60 = v14;
    LOBYTE(v62) = 3;
    sub_217BF40C0();
    sub_217D89BCC();
    v15 = v70;
    LOBYTE(v70) = 4;
    v56 = sub_217D89BEC();
    LOBYTE(v70) = 5;
    v55 = sub_217D89B7C();
    v106 = v16 & 1;
    LOBYTE(v70) = 6;
    v53 = sub_217D89B9C();
    sub_217A55F8C();
    v18 = v17;
    LOBYTE(v62) = 7;
    v19 = sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v59 = v18;
    v54 = v19;
    sub_217D89B5C();
    v52 = v11;
    v50 = a2;
    v20 = v70;
    LOBYTE(v70) = 8;
    v51 = sub_217D89B7C();
    v103 = v21 & 1;
    LOBYTE(v70) = 9;
    v49 = sub_217D89BEC();
    LOBYTE(v70) = 10;
    *&v48 = sub_217D89B2C();
    *(&v48 + 1) = v22;
    LOBYTE(v62) = 11;
    sub_217ADBC10();
    sub_217D89BCC();
    v47 = v70;
    LOBYTE(v62) = 12;
    sub_217D89BCC();
    v59 = v70;
    LOBYTE(v70) = 13;
    LODWORD(v54) = sub_217D89B9C();
    LOBYTE(v70) = 14;
    v46 = sub_217D89B9C();
    LOBYTE(v70) = 15;
    v45 = sub_217D89B9C();
    LOBYTE(v70) = 16;
    v44 = sub_217D89B9C();
    LOBYTE(v70) = 17;
    v43 = sub_217D89B9C();
    LOBYTE(v70) = 18;
    v42 = sub_217D89B9C();
    v100 = 19;
    v41 = sub_217D89B3C();
    v23 = v53 & 1;
    v38 = v53 & 1;
    v53 = v46 & 1;
    LOBYTE(v54) = v54 & 1;
    LODWORD(v54) = v54;
    v24 = v45 & 1;
    v40 = v44 & 1;
    v45 = v43 & 1;
    v46 = v24;
    v44 = v42 & 1;
    (*(v9 + 8))(v8, v111);
    LOBYTE(v62) = v61;
    *(&v62 + 1) = v109;
    BYTE3(v62) = v110;
    DWORD1(v62) = v52;
    BYTE8(v62) = v57;
    *(&v62 + 9) = *v108;
    HIDWORD(v62) = *&v108[3];
    *&v63 = v58;
    *(&v63 + 1) = v60;
    v39 = v15;
    LOBYTE(v64) = v15;
    *(&v64 + 1) = *v107;
    DWORD1(v64) = *&v107[3];
    *(&v64 + 1) = v56;
    *&v65 = v55;
    LODWORD(v111) = v106;
    BYTE8(v65) = v106;
    BYTE9(v65) = v23;
    *(&v65 + 10) = v104;
    HIWORD(v65) = v105;
    *&v66 = v20;
    *(&v66 + 1) = v51;
    v43 = v103;
    LOBYTE(v67) = v103;
    *(&v67 + 1) = *v102;
    DWORD1(v67) = *&v102[3];
    v25 = *(&v48 + 1);
    v26 = v49;
    v27 = v48;
    *(&v67 + 1) = v49;
    v68 = v48;
    v69[0] = v47;
    *&v69[4] = *&v101[3];
    *&v69[1] = *v101;
    *&v69[8] = v59;
    v69[16] = v54;
    v69[17] = v53;
    v69[18] = v46;
    v28 = v41;
    v69[19] = v40;
    v69[20] = v45;
    v69[21] = v44;
    v69[22] = v41;
    v29 = v62;
    v30 = v63;
    v31 = v65;
    v32 = v50;
    *(v50 + 32) = v64;
    *(v32 + 48) = v31;
    *v32 = v29;
    *(v32 + 16) = v30;
    v33 = v66;
    v34 = v67;
    v35 = v68;
    v36 = *v69;
    *(v32 + 127) = *&v69[15];
    *(v32 + 96) = v35;
    *(v32 + 112) = v36;
    *(v32 + 64) = v33;
    *(v32 + 80) = v34;
    sub_217AD1630(&v62, &v70);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v70) = v61;
    *(&v70 + 1) = v109;
    BYTE3(v70) = v110;
    HIDWORD(v70) = v52;
    v71 = v57;
    *v72 = *v108;
    *&v72[3] = *&v108[3];
    v73 = v58;
    v74 = v60;
    v75 = v39;
    *v76 = *v107;
    *&v76[3] = *&v107[3];
    v77 = v56;
    v78 = v55;
    v79 = v111;
    v80 = v38;
    v81 = v104;
    v82 = v105;
    v83 = v20;
    v84 = v51;
    v85 = v43;
    *v86 = *v102;
    *&v86[3] = *&v102[3];
    v87 = v26;
    v88 = v27;
    v89 = v25;
    v90 = v47;
    *&v91[3] = *&v101[3];
    *v91 = *v101;
    v92 = v59;
    v93 = v54;
    v94 = v53;
    v95 = v46;
    v96 = v40;
    v97 = v45;
    v98 = v44;
    v99 = v28;
    return sub_217AD2864(&v70);
  }
}

void sub_217BF3FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF357C();
    v7 = a3(a1, &type metadata for ArticleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF4018()
{
  result = qword_2811C19C8;
  if (!qword_2811C19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19C8);
  }

  return result;
}

unint64_t sub_217BF406C()
{
  result = qword_2811C4970;
  if (!qword_2811C4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4970);
  }

  return result;
}

unint64_t sub_217BF40C0()
{
  result = qword_2811C7DA0;
  if (!qword_2811C7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DA0);
  }

  return result;
}

__n128 __swift_memcpy135_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_217BF4180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 135))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for NetworkEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217BF431C()
{
  result = qword_27CBA1C58;
  if (!qword_27CBA1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C58);
  }

  return result;
}

unint64_t sub_217BF4374()
{
  result = qword_2811C7DD0;
  if (!qword_2811C7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DD0);
  }

  return result;
}

unint64_t sub_217BF43CC()
{
  result = qword_2811C7DD8;
  if (!qword_2811C7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DD8);
  }

  return result;
}

uint64_t sub_217BF4420(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DD03E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD0400 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000044 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54656C6369747261 && a2 == 0xEB00000000657079 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0420 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7478655479646F62 && a2 == 0xEE006874676E654CLL || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F65646956736168 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6765746143644169 && a2 == 0xED0000736569726FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCCD60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD0440 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7344496369706F74 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F696475417369 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7267726576457369 && a2 == 0xEB000000006E6565 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD0460 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD0480 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x65766E6F43626577 && a2 == 0xEC00000064657472 || (sub_217D89D4C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD04A0 == a2)
  {

    return 19;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

void __swiftcall CampaignData.init(campaignId:campaignType:creativeId:)(NewsAnalytics::CampaignData *__return_ptr retstr, Swift::String campaignId, Swift::String_optional campaignType, Swift::String_optional creativeId)
{
  retstr->campaignId = campaignId;
  retstr->campaignType = campaignType;
  retstr->creativeId = creativeId;
}

uint64_t CampaignData.campaignId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CampaignData.campaignId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CampaignData.campaignType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CampaignData.campaignType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CampaignData.creativeId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CampaignData.creativeId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_217BF4C20()
{
  v1 = 0x6576697461657263;
  if (*v0 == 1)
  {
    v1 = 0x6E676961706D6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E676961706D6163;
  }
}

uint64_t sub_217BF4C74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BF5338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BF4C9C(uint64_t a1)
{
  v2 = sub_217BF4EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF4CD8(uint64_t a1)
{
  v2 = sub_217BF4EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CampaignData.encode(to:)(void *a1)
{
  sub_217BF518C(0, &qword_2811BC810, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF4EC4();
  sub_217D89E7C();
  v15 = 0;
  v10 = v12[5];
  sub_217D89C6C();
  if (!v10)
  {
    v14 = 1;
    sub_217D89C0C();
    v13 = 2;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BF4EC4()
{
  result = qword_2811C7AC8;
  if (!qword_2811C7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AC8);
  }

  return result;
}

uint64_t CampaignData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BF518C(0, &qword_2811BCB18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF4EC4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v25 = v10;
  v27 = 1;
  v13 = sub_217D89B2C();
  v15 = v14;
  v24 = v13;
  v26 = 2;
  v16 = sub_217D89B2C();
  v19 = v18;
  v20 = *(v7 + 8);
  v23 = v16;
  v20(v9, v6);
  v21 = v24;
  *a2 = v25;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v23;
  a2[5] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF518C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF4EC4();
    v7 = a3(a1, &type metadata for CampaignData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF5234()
{
  result = qword_27CBA1C60;
  if (!qword_27CBA1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C60);
  }

  return result;
}

unint64_t sub_217BF528C()
{
  result = qword_2811C7AB8;
  if (!qword_2811C7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AB8);
  }

  return result;
}

unint64_t sub_217BF52E4()
{
  result = qword_2811C7AC0;
  if (!qword_2811C7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AC0);
  }

  return result;
}

uint64_t sub_217BF5338(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E676961706D6163 && a2 == 0xEA00000000006449;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000065707954 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697461657263 && a2 == 0xEA00000000006449)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t MagazineCategoryData.init(identifier:position:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_217BF54CC()
{
  if (*v0)
  {
    return 0x6E6F697469736F70;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_217BF550C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217BF55F0(uint64_t a1)
{
  v2 = sub_217BF57DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF562C(uint64_t a1)
{
  v2 = sub_217BF57DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MagazineCategoryData.encode(to:)(void *a1)
{
  sub_217BF59E0(0, &qword_27CBA1C68, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF57DC();
  sub_217D89E7C();
  v13 = 0;
  sub_217D89CBC();
  if (!v2)
  {
    v12 = 1;
    sub_217D89CBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217BF57DC()
{
  result = qword_27CBA1C70;
  if (!qword_27CBA1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C70);
  }

  return result;
}

uint64_t MagazineCategoryData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217BF59E0(0, &qword_27CBA1C78, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF57DC();
  sub_217D89E5C();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_217D89BDC();
    v14 = 1;
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF59E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF57DC();
    v7 = a3(a1, &type metadata for MagazineCategoryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF5AA0()
{
  result = qword_27CBA1C80;
  if (!qword_27CBA1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C80);
  }

  return result;
}

unint64_t sub_217BF5AF8()
{
  result = qword_27CBA1C88;
  if (!qword_27CBA1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C88);
  }

  return result;
}

unint64_t sub_217BF5B50()
{
  result = qword_27CBA1C90;
  if (!qword_27CBA1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C90);
  }

  return result;
}

uint64_t FormatPackageReferenceData.url.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatPackageReferenceData.url.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217BF5C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BF5CD4(uint64_t a1)
{
  v2 = sub_217BF5E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF5D10(uint64_t a1)
{
  v2 = sub_217BF5E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FormatPackageReferenceData.encode(to:)(void *a1)
{
  sub_217BF6070(0, &qword_27CBA1C98, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF5E98();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BF5E98()
{
  result = qword_27CBA1CA0;
  if (!qword_27CBA1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CA0);
  }

  return result;
}

uint64_t FormatPackageReferenceData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BF6070(0, &qword_27CBA1CA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF5E98();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF6070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF5E98();
    v7 = a3(a1, &type metadata for FormatPackageReferenceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF60D8()
{
  result = qword_27CBA1CB0;
  if (!qword_27CBA1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CB0);
  }

  return result;
}

unint64_t sub_217BF6130()
{
  result = qword_27CBA1CB8;
  if (!qword_27CBA1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CB8);
  }

  return result;
}

uint64_t sub_217BF619C(void *a1)
{
  sub_217BF6070(0, &qword_27CBA1C98, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF5E98();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BF630C()
{
  result = qword_27CBA1CC0;
  if (!qword_27CBA1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CC0);
  }

  return result;
}

unint64_t sub_217BF6364()
{
  result = qword_27CBA1CC8;
  if (!qword_27CBA1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CC8);
  }

  return result;
}

unint64_t sub_217BF63BC()
{
  result = qword_27CBA1CD0;
  if (!qword_27CBA1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CD0);
  }

  return result;
}

uint64_t sub_217BF64D8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1D08);
  __swift_project_value_buffer(v0, qword_27CBA1D08);
  return sub_217D8866C();
}

uint64_t SearchResultsReturnedEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchResultsReturnedEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  sub_217BF6BEC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  sub_217BF6BEC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  sub_217BF6BEC(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  sub_217BF6BEC(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 28);
  sub_217BF6BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 28);
  sub_217BF6BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 32);
  sub_217BF6BEC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BF6BEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SearchResultsReturnedEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 32);
  sub_217BF6BEC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultsReturnedEvent(0);
  v5 = v4[5];
  sub_217BF6BEC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BF6BEC(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BF6BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217BF6BEC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t SearchResultsReturnedEvent.Model.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
}

uint64_t SearchResultsReturnedEvent.Model.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 24);
  v4 = *(v3 + 112);
  v5 = *(v3 + 144);
  v27 = *(v3 + 128);
  v28 = v5;
  v6 = *(v3 + 48);
  v7 = *(v3 + 80);
  v23 = *(v3 + 64);
  v8 = v23;
  v24 = v7;
  v9 = *(v3 + 80);
  v10 = *(v3 + 112);
  v25 = *(v3 + 96);
  v11 = v25;
  v26 = v10;
  v12 = *(v3 + 16);
  v13 = *(v3 + 48);
  v21 = *(v3 + 32);
  v14 = v21;
  v22 = v13;
  v15 = *(v3 + 16);
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  v17 = *(v3 + 144);
  *(a1 + 128) = v27;
  *(a1 + 144) = v17;
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  *a1 = v16;
  *(a1 + 16) = v12;
  v29 = *(v3 + 160);
  *(a1 + 160) = *(v3 + 160);
  *(a1 + 32) = v14;
  *(a1 + 48) = v6;
  return sub_217B09D18(v20, v19);
}

uint64_t SearchResultsReturnedEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t SearchResultsReturnedEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 SearchResultsReturnedEvent.Model.init(eventData:searchData:searchResultsData:userBundleSubscriptionContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v13 = a2[3];
  v14 = a5[1];
  v29 = *a5;
  v15 = *(a5 + 8);
  v16 = sub_217D8899C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  v18 = a6 + v17[5];
  *v18 = v10;
  *(v18 + 8) = v11;
  *(v18 + 16) = v12;
  *(v18 + 24) = v13;
  v19 = a6 + v17[6];
  v20 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v20;
  v21 = *(a3 + 80);
  *(v19 + 64) = *(a3 + 64);
  *(v19 + 80) = v21;
  v22 = *(a3 + 48);
  *(v19 + 32) = *(a3 + 32);
  *(v19 + 48) = v22;
  *(v19 + 160) = *(a3 + 160);
  v23 = *(a3 + 144);
  *(v19 + 128) = *(a3 + 128);
  *(v19 + 144) = v23;
  v24 = *(a3 + 112);
  *(v19 + 96) = *(a3 + 96);
  *(v19 + 112) = v24;
  v25 = a6 + v17[7];
  v26 = *(a4 + 16);
  *v25 = *a4;
  *(v25 + 16) = v26;
  result = *(a4 + 32);
  *(v25 + 32) = result;
  *(v25 + 48) = *(a4 + 48);
  v28 = a6 + v17[8];
  *v28 = v29;
  *(v28 + 8) = v14;
  *(v28 + 16) = v15;
  return result;
}

unint64_t sub_217BF7300()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0x6174614477656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144686372616573;
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

uint64_t sub_217BF73A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BF86E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BF73D0(uint64_t a1)
{
  v2 = sub_217BF78D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF740C(uint64_t a1)
{
  v2 = sub_217BF78D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultsReturnedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BF7EDC(0, &qword_27CBA1D28, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v41[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF78D4();
  sub_217D89E7C();
  LOBYTE(v70[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
    v11 = v3;
    v12 = v10;
    v13 = *(v10 + 20);
    v85 = v11;
    v14 = (v11 + v13);
    v15 = v14[1];
    v16 = *(v14 + 16);
    v17 = v14[3];
    v81 = *v14;
    v82 = v15;
    v83 = v16;
    v84 = v17;
    v80 = 1;
    sub_217B23A38();

    sub_217D89CAC();

    v18 = v12;
    v19 = *(v12 + 24);
    v20 = v85;
    v21 = (v85 + v19);
    v22 = v21[7];
    v23 = v21[9];
    v77 = v21[8];
    v78 = v23;
    v24 = v21[3];
    v25 = v21[5];
    v73 = v21[4];
    v74 = v25;
    v26 = v21[5];
    v27 = v21[7];
    v75 = v21[6];
    v76 = v27;
    v28 = v21[1];
    v70[0] = *v21;
    v70[1] = v28;
    v29 = v21[3];
    v31 = *v21;
    v30 = v21[1];
    v71 = v21[2];
    v72 = v29;
    v32 = v21[9];
    v67 = v77;
    v68 = v32;
    v63 = v73;
    v64 = v26;
    v65 = v75;
    v66 = v22;
    v59 = v31;
    v60 = v30;
    v79 = *(v21 + 20);
    v69 = *(v21 + 20);
    v61 = v71;
    v62 = v24;
    v58 = 2;
    sub_217B09D18(v70, v56);
    sub_217B09DDC();
    sub_217D89CAC();
    v56[8] = v67;
    v56[9] = v68;
    v57 = v69;
    v56[4] = v63;
    v56[5] = v64;
    v56[6] = v65;
    v56[7] = v66;
    v56[0] = v59;
    v56[1] = v60;
    v56[2] = v61;
    v56[3] = v62;
    sub_217B09D50(v56);
    v33 = (v20 + *(v18 + 28));
    v34 = v33[2];
    v35 = *v33;
    v36 = *v33;
    v53 = v33[1];
    v54 = v34;
    v52 = v35;
    v55 = *(v33 + 48);
    v48 = v36;
    v49 = v53;
    v50 = v33[2];
    v51 = *(v33 + 48);
    v47 = 3;
    sub_217ACC004(&v52, v45);
    sub_217A55B98();
    sub_217D89CAC();
    v45[0] = v48;
    v45[1] = v49;
    v45[2] = v50;
    v46 = v51;
    sub_217ACC69C(v45);
    v38 = (v20 + *(v18 + 32));
    v39 = *v38;
    v40 = v38[1];
    LOWORD(v38) = *(v38 + 8);
    v42 = v39;
    v43 = v40;
    v44 = v38;
    v41[7] = 4;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BF78D4()
{
  result = qword_27CBA1D30;
  if (!qword_27CBA1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D30);
  }

  return result;
}

uint64_t SearchResultsReturnedEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_217D8899C();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BF7EDC(0, &qword_27CBA1D38, MEMORY[0x277D844C8]);
  v40 = v5;
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF78D4();
  v39 = v7;
  v11 = v62;
  sub_217D89E5C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v37;
  v13 = a1;
  v62 = v10;
  LOBYTE(v51) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v14 = v38;
  sub_217D89BCC();
  v15 = v3;
  v16 = v62;
  (*(v36 + 32))(v62, v14, v15);
  LOBYTE(v46) = 1;
  sub_217B23D2C();
  sub_217D89BCC();
  v17 = *(&v51 + 1);
  v18 = v52;
  v19 = *(&v52 + 1);
  v20 = v16 + v8[5];
  *v20 = v51;
  *(v20 + 8) = v17;
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v50 = 2;
  sub_217B09D84();
  v38 = 0;
  sub_217D89BCC();
  v21 = v16 + v8[6];
  v22 = v58;
  v23 = v60;
  *(v21 + 128) = v59;
  *(v21 + 144) = v23;
  v24 = v54;
  v25 = v56;
  v26 = v57;
  *(v21 + 64) = v55;
  *(v21 + 80) = v25;
  *(v21 + 160) = v61;
  *(v21 + 96) = v26;
  *(v21 + 112) = v22;
  v27 = v52;
  *v21 = v51;
  *(v21 + 16) = v27;
  *(v21 + 32) = v53;
  *(v21 + 48) = v24;
  v45 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v28 = v16 + v8[7];
  v29 = v47;
  *v28 = v46;
  *(v28 + 16) = v29;
  *(v28 + 32) = v48;
  *(v28 + 48) = v49;
  v41 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v12 + 8))(v39, v40);
  v30 = v43;
  v31 = v44;
  v32 = v16 + v8[8];
  *v32 = v42;
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  sub_217BF7F40(v16, v35);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_217BF7FA4(v16);
}

void sub_217BF7EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF78D4();
    v7 = a3(a1, &type metadata for SearchResultsReturnedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BF7F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BF7FA4(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BF80D8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BF6BEC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BF6BEC(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BF6BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217BF6BEC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217BF8360(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217BF6BEC(319, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
    if (v2 <= 0x3F)
    {
      sub_217BF6BEC(319, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
      if (v3 <= 0x3F)
      {
        sub_217BF6BEC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217BF6BEC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217BF8534(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217BF85E0()
{
  result = qword_27CBA1D60;
  if (!qword_27CBA1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D60);
  }

  return result;
}

unint64_t sub_217BF8638()
{
  result = qword_27CBA1D68;
  if (!qword_27CBA1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D68);
  }

  return result;
}

unint64_t sub_217BF8690()
{
  result = qword_27CBA1D70;
  if (!qword_27CBA1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D70);
  }

  return result;
}

uint64_t sub_217BF86E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD04C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::ArticleType_optional __swiftcall ArticleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticleType.rawValue.getter()
{
  v1 = 6712929;
  if (*v0 != 1)
  {
    v1 = 6448503;
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

uint64_t sub_217BF8958(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 6712929;
  if (v2 != 1)
  {
    v3 = 6448503;
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
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 6712929;
  if (*a2 != 1)
  {
    v6 = 6448503;
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
    v8 = 0xE300000000000000;
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
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217BF8A40()
{
  result = qword_27CBA1D78;
  if (!qword_27CBA1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D78);
  }

  return result;
}

uint64_t sub_217BF8A94()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BF8B28(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BF8BA8(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BF8C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 6712929;
  if (v2 != 1)
  {
    v4 = 6448503;
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
    v3 = 0xE300000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217BF8D54()
{
  result = qword_2811C7DA8;
  if (!qword_2811C7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DA8);
  }

  return result;
}

NewsAnalytics::JourneyMessageDisplayFailureReason_optional __swiftcall JourneyMessageDisplayFailureReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t JourneyMessageDisplayFailureReason.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0xD000000000000010;
    v6 = 0x6576697463416F6ELL;
    if (v1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (v1 == 5)
    {
      v7 = 0xD000000000000015;
    }

    if (*v0 <= 6u)
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
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xD00000000000001FLL;
    if (v1 != 2)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (*v0)
    {
      v2 = 0xD000000000000018;
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
}

unint64_t sub_217BF8F74()
{
  result = qword_27CBA1D80;
  if (!qword_27CBA1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D80);
  }

  return result;
}

uint64_t sub_217BF8FC8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D8309C(v3, v1);
  return sub_217D89E3C();
}

uint64_t sub_217BF9018(uint64_t a1)
{
  v2 = *v1;
  sub_217D89E1C();
  sub_217D8309C(v4, v2);
  return sub_217D89E3C();
}

unint64_t sub_217BF9068@<X0>(unint64_t *a1@<X8>)
{
  result = JourneyMessageDisplayFailureReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217BF9150()
{
  result = qword_2811BDC88;
  if (!qword_2811BDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDC88);
  }

  return result;
}

uint64_t sub_217BF926C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1DB8);
  __swift_project_value_buffer(v0, qword_27CBA1DB8);
  return sub_217D8866C();
}

uint64_t IssueNewsletterOptinEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IssueNewsletterOptinEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueNewsletterOptinEvent.userActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 24);
  sub_217BF9710(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueNewsletterOptinEvent.userActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 24);
  sub_217BF9710(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueNewsletterOptinEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 28);
  sub_217BF9710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BF9710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t IssueNewsletterOptinEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 28);
  sub_217BF9710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueNewsletterOptinEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IssueNewsletterOptinEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BF9710(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BF9710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217BF9A84@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t IssueNewsletterOptinEvent.Model.userActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t IssueNewsletterOptinEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueNewsletterOptinEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 IssueNewsletterOptinEvent.Model.init(eventData:timedData:userActionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = sub_217D8899C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  v12 = v11[5];
  v13 = sub_217D889CC();
  (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + v11[6]) = v9;
  v14 = a5 + v11[7];
  v15 = *(a4 + 16);
  *v14 = *a4;
  *(v14 + 16) = v15;
  result = *(a4 + 32);
  *(v14 + 32) = result;
  *(v14 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217BF9CBC()
{
  v1 = 0x746144746E657665;
  v2 = 0x6974634172657375;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_217BF9D48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BFAD68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BF9D70(uint64_t a1)
{
  v2 = sub_217BFA0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF9DAC(uint64_t a1)
{
  v2 = sub_217BFA0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueNewsletterOptinEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BFA694(0, &qword_27CBA1DD0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFA0E8();
  sub_217D89E7C();
  LOBYTE(v22[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
    LOBYTE(v22[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v26 = *(v3 + *(v10 + 24));
    v25 = 2;
    sub_217B99A48();
    sub_217D89CAC();
    v11 = (v3 + *(v10 + 28));
    v12 = v11[1];
    v22[0] = *v11;
    v22[1] = v12;
    v14 = *v11;
    v13 = v11[1];
    v22[2] = v11[2];
    v23 = *(v11 + 48);
    v18 = v14;
    v19 = v13;
    v20 = v11[2];
    v21 = *(v11 + 48);
    v24 = 3;
    sub_217ACC004(v22, v16);
    sub_217A55B98();
    sub_217D89CAC();
    v16[0] = v18;
    v16[1] = v19;
    v16[2] = v20;
    v17 = v21;
    sub_217ACC69C(v16);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BFA0E8()
{
  result = qword_27CBA1DD8;
  if (!qword_27CBA1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1DD8);
  }

  return result;
}

uint64_t IssueNewsletterOptinEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_217D889CC();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v28 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BFA694(0, &qword_27CBA1DE0, MEMORY[0x277D844C8]);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFA0E8();
  v29 = v9;
  v13 = v30;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v10;
  v14 = v24;
  v15 = v25;
  LOBYTE(v31) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v16 = *(v14 + 32);
  v17 = v28;
  v28 = v5;
  v16(v12, v17);
  LOBYTE(v31) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v23 + 32))(&v12[*(v30 + 20)], v4, v15);
  v35 = 2;
  sub_217B999F4();
  sub_217D89BCC();
  v18 = v30;
  v12[*(v30 + 24)] = v31;
  v35 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v26 + 8))(v29, v27);
  v19 = &v12[*(v18 + 28)];
  v20 = v32;
  *v19 = v31;
  *(v19 + 1) = v20;
  *(v19 + 2) = v33;
  v19[48] = v34;
  sub_217BFA6F8(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BFA75C(v12);
}

void sub_217BFA694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BFA0E8();
    v7 = a3(a1, &type metadata for IssueNewsletterOptinEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BFA6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BFA75C(uint64_t a1)
{
  v2 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BFA890@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BF9710(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BF9710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217BFAA68(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217BF9710(319, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
      if (v3 <= 0x3F)
      {
        sub_217BF9710(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}