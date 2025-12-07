void sub_217BA08AC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217A62B70(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217A62B70(319, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
        if (v4 <= 0x3F)
        {
          sub_217A62B70(319, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
          if (v5 <= 0x3F)
          {
            sub_217A62B70(319, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
            if (v6 <= 0x3F)
            {
              sub_217A62B70(319, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
              if (v7 <= 0x3F)
              {
                sub_217A62B70(319, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
                if (v8 <= 0x3F)
                {
                  sub_217A62B70(319, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8, &type metadata for UserEventStorageData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A62B70(319, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
                    if (v10 <= 0x3F)
                    {
                      sub_217A62B70(319, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0, &type metadata for TabiData);
                      if (v11 <= 0x3F)
                      {
                        sub_217A62B70(319, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048, &type metadata for UserEmbeddingData);
                        if (v12 <= 0x3F)
                        {
                          sub_217A62B70(319, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994, &type metadata for LiveActivityCountData);
                          if (v13 <= 0x3F)
                          {
                            sub_217A62B70(319, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450, &type metadata for ApplicationStateHistoryData);
                            if (v14 <= 0x3F)
                            {
                              sub_217A62B70(319, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8, &type metadata for CrashData);
                              if (v15 <= 0x3F)
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

unint64_t sub_217BA0D7C()
{
  result = qword_27CBA0E00;
  if (!qword_27CBA0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E00);
  }

  return result;
}

unint64_t sub_217BA0DD4()
{
  result = qword_2811C3FB0;
  if (!qword_2811C3FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3FB0);
  }

  return result;
}

unint64_t sub_217BA0E2C()
{
  result = qword_2811C3FB8;
  if (!qword_2811C3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3FB8);
  }

  return result;
}

uint64_t sub_217BA0E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCEC30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCEC50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6174614469626174 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCEC90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCECB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCECD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7461446873617263 && a2 == 0xE900000000000061)
  {

    return 14;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

NewsAnalytics::AudioEngagementStatus_optional __swiftcall AudioEngagementStatus.init(rawValue:)(Swift::String rawValue)
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

uint64_t AudioEngagementStatus.rawValue.getter()
{
  v1 = 0x64656761676E65;
  if (*v0 != 1)
  {
    v1 = 0x6761676E45746F6ELL;
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

uint64_t sub_217BA13EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656761676E65;
  if (v2 != 1)
  {
    v5 = 0x6761676E45746F6ELL;
    v4 = 0xEA00000000006465;
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

  v8 = 0x64656761676E65;
  if (*a2 != 1)
  {
    v8 = 0x6761676E45746F6ELL;
    v3 = 0xEA00000000006465;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217BA14F8()
{
  result = qword_27CBA0E08;
  if (!qword_27CBA0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E08);
  }

  return result;
}

uint64_t sub_217BA154C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BA15F4(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BA1688(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BA1738(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656761676E65;
  if (v2 != 1)
  {
    v5 = 0x6761676E45746F6ELL;
    v4 = 0xEA00000000006465;
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

unint64_t sub_217BA185C()
{
  result = qword_27CBA0E10;
  if (!qword_27CBA0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E10);
  }

  return result;
}

NewsAnalytics::PuzzleModalType_optional __swiftcall PuzzleModalType.init(rawValue:)(Swift::String rawValue)
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

unint64_t PuzzleModalType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C6169726F747574;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x656C7A7A7570;
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

unint64_t sub_217BA1998()
{
  result = qword_27CBA0E18;
  if (!qword_27CBA0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E18);
  }

  return result;
}

uint64_t sub_217BA19EC()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BA1AB0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BA1B60(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BA1C2C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x6C6169726F747574;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000217DCB080;
  }

  if (*v1)
  {
    v3 = 0x656C7A7A7570;
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

unint64_t sub_217BA1D6C()
{
  result = qword_27CBA0E20;
  if (!qword_27CBA0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E20);
  }

  return result;
}

uint64_t TodayTopStoriesMissingData.message.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TodayTopStoriesMissingData.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NewsAnalytics::TodayTopStoriesMissingData __swiftcall TodayTopStoriesMissingData.init(reason:message:)(NewsAnalytics::TodayTopStoriesMissingReason reason, Swift::String_optional message)
{
  *v2 = *reason;
  *(v2 + 8) = message;
  result.message = message;
  result.reason = reason;
  return result;
}

uint64_t sub_217BA1E98()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x6E6F73616572;
  }
}

uint64_t sub_217BA1ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

uint64_t sub_217BA1FA8(uint64_t a1)
{
  v2 = sub_217BA21B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA1FE4(uint64_t a1)
{
  v2 = sub_217BA21B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayTopStoriesMissingData.encode(to:)(void *a1)
{
  sub_217BA2440(0, &qword_27CBA0E28, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA21B0();
  sub_217D89E7C();
  v15 = v9;
  v14 = 0;
  sub_217BA2204();
  sub_217D89CAC();
  if (!v2)
  {
    v13 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217BA21B0()
{
  result = qword_27CBA0E30;
  if (!qword_27CBA0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E30);
  }

  return result;
}

unint64_t sub_217BA2204()
{
  result = qword_27CBA0E38;
  if (!qword_27CBA0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E38);
  }

  return result;
}

uint64_t TodayTopStoriesMissingData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BA2440(0, &qword_27CBA0E40, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA21B0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_217BA24A4();
  sub_217D89BCC();
  v10 = v18;
  v16 = 1;
  v11 = sub_217D89B2C();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BA2440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA21B0();
    v7 = a3(a1, &type metadata for TodayTopStoriesMissingData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BA24A4()
{
  result = qword_27CBA0E48;
  if (!qword_27CBA0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E48);
  }

  return result;
}

unint64_t sub_217BA24FC()
{
  result = qword_27CBA0E50;
  if (!qword_27CBA0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E50);
  }

  return result;
}

unint64_t sub_217BA2554()
{
  result = qword_27CBA0E58;
  if (!qword_27CBA0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E58);
  }

  return result;
}

unint64_t sub_217BA25FC()
{
  result = qword_27CBA0E60;
  if (!qword_27CBA0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E60);
  }

  return result;
}

unint64_t sub_217BA2654()
{
  result = qword_27CBA0E68;
  if (!qword_27CBA0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E68);
  }

  return result;
}

unint64_t sub_217BA26AC()
{
  result = qword_27CBA0E70;
  if (!qword_27CBA0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E70);
  }

  return result;
}

uint64_t SearchSelectionData.selectedResult.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchSelectionData.selectedResult.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

NewsAnalytics::SearchSelectionData __swiftcall SearchSelectionData.init(selectedResult:selectedResultType:)(NewsAnalytics::SearchSelectionData selectedResult, NewsAnalytics::SelectedResultType selectedResultType)
{
  v3 = *selectedResultType;
  *v2 = selectedResult.selectedResult;
  *(v2 + 16) = v3;
  selectedResult.selectedResultType = selectedResultType;
  return selectedResult;
}

uint64_t sub_217BA27D8()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_217BA2824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657463656C6573 && a2 == 0xEE00746C75736552;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCECF0 == a2)
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

uint64_t sub_217BA2910(uint64_t a1)
{
  v2 = sub_217BA2B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA294C(uint64_t a1)
{
  v2 = sub_217BA2B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchSelectionData.encode(to:)(void *a1)
{
  sub_217BA2DD4(0, &qword_27CBA0E78, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v14 = *(v1 + 16);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_217BA2B28();
  sub_217D89E7C();
  v17 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217BA2B7C();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v7, v11);
}

unint64_t sub_217BA2B28()
{
  result = qword_27CBA0E80;
  if (!qword_27CBA0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E80);
  }

  return result;
}

unint64_t sub_217BA2B7C()
{
  result = qword_27CBA0E88;
  if (!qword_27CBA0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E88);
  }

  return result;
}

uint64_t SearchSelectionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BA2DD4(0, &qword_27CBA0E90, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA2B28();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  sub_217BA2E38();
  sub_217D89BCC();
  (*(v7 + 8))(v9, v6);
  v14 = v18;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BA2DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA2B28();
    v7 = a3(a1, &type metadata for SearchSelectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BA2E38()
{
  result = qword_27CBA0E98;
  if (!qword_27CBA0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0E98);
  }

  return result;
}

unint64_t sub_217BA2E90()
{
  result = qword_27CBA0EA0;
  if (!qword_27CBA0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EA0);
  }

  return result;
}

unint64_t sub_217BA2EE8()
{
  result = qword_27CBA0EA8;
  if (!qword_27CBA0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EA8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_217BA2F80(uint64_t a1, int a2)
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

uint64_t sub_217BA2FC8(uint64_t result, int a2, int a3)
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

unint64_t sub_217BA302C()
{
  result = qword_27CBA0EB0;
  if (!qword_27CBA0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EB0);
  }

  return result;
}

unint64_t sub_217BA3084()
{
  result = qword_27CBA0EB8;
  if (!qword_27CBA0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EB8);
  }

  return result;
}

unint64_t sub_217BA30DC()
{
  result = qword_27CBA0EC0;
  if (!qword_27CBA0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EC0);
  }

  return result;
}

uint64_t sub_217BA31F8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0EC8);
  __swift_project_value_buffer(v0, qword_27CBA0EC8);
  return sub_217D8866C();
}

uint64_t SportsFetchFavoritesSyncEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsFetchFavoritesSyncEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsFetchFavoritesSyncEvent(0) + 20);
  sub_217A62BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsFetchFavoritesSyncEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsFetchFavoritesSyncEvent(0) + 20);
  sub_217A62BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsFetchFavoritesSyncEvent.fetchFavoritesSyncData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsFetchFavoritesSyncEvent(0) + 24);
  sub_217A62BEC(0, &qword_2811C8528, sub_217B47D48, sub_217B47DA0, &type metadata for SportsFetchFavoritesSyncData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsFetchFavoritesSyncEvent.fetchFavoritesSyncData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsFetchFavoritesSyncEvent(0) + 24);
  sub_217A62BEC(0, &qword_2811C8528, sub_217B47D48, sub_217B47DA0, &type metadata for SportsFetchFavoritesSyncData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsFetchFavoritesSyncEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  FavoritesSyncEvent = type metadata accessor for SportsFetchFavoritesSyncEvent(0);
  v5 = *(FavoritesSyncEvent + 20);
  sub_217A62BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(FavoritesSyncEvent + 24);
  sub_217A62BEC(0, &qword_2811C8528, sub_217B47D48, sub_217B47DA0, &type metadata for SportsFetchFavoritesSyncData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsFetchFavoritesSyncEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0) + 20));
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

uint64_t SportsFetchFavoritesSyncEvent.Model.fetchFavoritesSyncData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 SportsFetchFavoritesSyncEvent.Model.init(eventData:userBundleSubscriptionContextData:fetchFavoritesSyncData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  v10 = a4 + *(FavoritesSync + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(FavoritesSync + 24)) = v7;
  return result;
}

unint64_t sub_217BA3994()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_217BA3A00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BA4804(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BA3A28(uint64_t a1)
{
  v2 = sub_217BA3D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA3A64(uint64_t a1)
{
  v2 = sub_217BA3D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFetchFavoritesSyncEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BA41A0(0, &qword_27CBA0EE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA3D4C();
  sub_217D89E7C();
  v29 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
    v11 = (v3 + *(FavoritesSync + 20));
    v12 = v11[2];
    v13 = *v11;
    v14 = *v11;
    v26 = v11[1];
    v27 = v12;
    v25 = v13;
    v28 = *(v11 + 48);
    v21 = v14;
    v22 = v26;
    v23 = v11[2];
    v24 = *(v11 + 48);
    v20 = 1;
    sub_217ACC004(&v25, v18);
    sub_217A55B98();
    sub_217D89CAC();
    v18[0] = v21;
    v18[1] = v22;
    v18[2] = v23;
    v19 = v24;
    sub_217ACC69C(v18);
    v17 = *(v3 + *(FavoritesSync + 24));
    v16[11] = 2;
    sub_217B47DA0();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BA3D4C()
{
  result = qword_27CBA0EE8;
  if (!qword_27CBA0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0EE8);
  }

  return result;
}

uint64_t SportsFetchFavoritesSyncEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BA41A0(0, &qword_27CBA0EF0, MEMORY[0x277D844C8]);
  v27 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  MEMORY[0x28223BE20](FavoritesSync);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA3D4C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v24;
  v12 = v25;
  v21 = FavoritesSync;
  v22 = v11;
  LOBYTE(v28) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v26;
  v14 = v27;
  sub_217D89BCC();
  (*(v12 + 32))(v22, v15, v4);
  v34 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v16 = &v22[*(v21 + 20)];
  v17 = v29;
  *v16 = v28;
  *(v16 + 1) = v17;
  *(v16 + 2) = v30;
  v16[48] = v31;
  v33 = 2;
  sub_217B47D48();
  sub_217D89BCC();
  (*(v13 + 8))(v8, v14);
  v18 = v22;
  *&v22[*(v21 + 24)] = v32;
  sub_217BA4204(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BA4268(v18);
}

void sub_217BA41A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA3D4C();
    v7 = a3(a1, &type metadata for SportsFetchFavoritesSyncEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BA4204(uint64_t a1, uint64_t a2)
{
  FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  (*(*(FavoritesSync - 8) + 16))(a2, a1, FavoritesSync);
  return a2;
}

uint64_t sub_217BA4268(uint64_t a1)
{
  FavoritesSync = type metadata accessor for SportsFetchFavoritesSyncEvent.Model(0);
  (*(*(FavoritesSync - 8) + 8))(a1, FavoritesSync);
  return a1;
}

uint64_t sub_217BA439C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62BEC(0, &qword_2811C8528, sub_217B47D48, sub_217B47DA0, &type metadata for SportsFetchFavoritesSyncData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217BA4534(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A62BEC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A62BEC(319, &qword_2811C8528, sub_217B47D48, sub_217B47DA0, &type metadata for SportsFetchFavoritesSyncData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217BA4668(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217BA4700()
{
  result = qword_27CBA0F08;
  if (!qword_27CBA0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0F08);
  }

  return result;
}

unint64_t sub_217BA4758()
{
  result = qword_27CBA0F10;
  if (!qword_27CBA0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0F10);
  }

  return result;
}

unint64_t sub_217BA47B0()
{
  result = qword_27CBA0F18;
  if (!qword_27CBA0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0F18);
  }

  return result;
}

uint64_t sub_217BA4804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCED10 == a2)
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

uint64_t sub_217BA49F8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0F50);
  __swift_project_value_buffer(v0, qword_27CBA0F50);
  return sub_217D8866C();
}

uint64_t TodayTopStoriesMissingEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TodayTopStoriesMissingEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 20);
  sub_217A60550(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayTopStoriesMissingEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 20);
  sub_217A60550(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayTopStoriesMissingEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 24);
  sub_217A60550(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayTopStoriesMissingEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 24);
  sub_217A60550(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayTopStoriesMissingEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 28);
  sub_217A60550(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayTopStoriesMissingEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 28);
  sub_217A60550(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayTopStoriesMissingEvent.missingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 32);
  sub_217A60550(0, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554, &type metadata for TodayTopStoriesMissingData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayTopStoriesMissingEvent.missingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayTopStoriesMissingEvent(0) + 32);
  sub_217A60550(0, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554, &type metadata for TodayTopStoriesMissingData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TodayTopStoriesMissingEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for TodayTopStoriesMissingEvent(0);
  v5 = v4[5];
  sub_217A60550(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A60550(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A60550(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A60550(0, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554, &type metadata for TodayTopStoriesMissingData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t TodayTopStoriesMissingEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TodayTopStoriesMissingEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t TodayTopStoriesMissingEvent.Model.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TodayTopStoriesMissingEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t TodayTopStoriesMissingEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TodayTopStoriesMissingEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t TodayTopStoriesMissingEvent.Model.missingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TodayTopStoriesMissingEvent.Model(0) + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

__n128 TodayTopStoriesMissingEvent.Model.init(eventData:feedData:feedConfigData:viewData:missingData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v23 = *(a3 + 3);
  v14 = a3[5];
  v15 = *a4;
  v24 = *(a4 + 8);
  v28 = *a5;
  v27 = *(a5 + 1);
  v25 = a4[1];
  v26 = *(a5 + 2);
  v16 = sub_217D8899C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
  v18 = a6 + v17[5];
  *v18 = v8;
  *(v18 + 8) = v9;
  *(v18 + 16) = v10;
  v19 = a6 + v17[6];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  result = v23;
  *(v19 + 24) = v23;
  *(v19 + 40) = v14;
  v21 = a6 + v17[7];
  *v21 = v15;
  *(v21 + 8) = v25;
  *(v21 + 16) = v24;
  v22 = a6 + v17[8];
  *v22 = v28;
  *(v22 + 8) = v27;
  *(v22 + 16) = v26;
  return result;
}

uint64_t sub_217BA5720()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x666E6F4364656566;
  v4 = 0x6174614477656976;
  if (v1 != 3)
  {
    v4 = 0x44676E697373696DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6174614464656566;
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

uint64_t sub_217BA57D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BA6910(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BA57FC(uint64_t a1)
{
  v2 = sub_217BA5BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA5838(uint64_t a1)
{
  v2 = sub_217BA5BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayTopStoriesMissingEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BA6108(0, &qword_27CBA0F70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA5BAC();
  sub_217D89E7C();
  LOBYTE(v26) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    LOBYTE(v26) = *v11;
    v27 = v12;
    v28 = v13;
    v31 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[1];
    v16 = *(v14 + 16);
    v17 = v14[5];
    v26 = *v14;
    v27 = v15;
    LOBYTE(v28) = v16;
    v29 = *(v14 + 3);
    v30 = v17;
    v31 = 2;
    sub_217A6088C();

    sub_217D89CAC();

    v18 = (v3 + v10[7]);
    v19 = *v18;
    v20 = v18[1];
    LOWORD(v18) = *(v18 + 8);
    v26 = v19;
    v27 = v20;
    LOWORD(v28) = v18;
    v31 = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v22 = v3 + v10[8];
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    LOBYTE(v26) = *v22;
    v27 = v23;
    v28 = v24;
    v31 = 4;
    sub_217BA2554();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BA5BAC()
{
  result = qword_27CBA0F78;
  if (!qword_27CBA0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0F78);
  }

  return result;
}

uint64_t TodayTopStoriesMissingEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217BA6108(0, &qword_27CBA0F80, MEMORY[0x277D844C8]);
  v31 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA5BAC();
  v30 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v14 = v27;
  v13 = v28;
  v32[0] = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v29;
  sub_217D89BCC();
  (*(v13 + 32))(v12, v15, v4);
  v35 = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v16 = v12 + v9[5];
  *v16 = v32[0];
  *(v16 + 8) = *&v32[8];
  v35 = 2;
  sub_217A60838();
  v25[1] = 0;
  sub_217D89BCC();
  v29 = a1;
  v17 = v32[16];
  v18 = v34;
  v19 = v12 + v9[6];
  *v19 = *v32;
  *(v19 + 16) = v17;
  *(v19 + 24) = v33;
  *(v19 + 40) = v18;
  v35 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  v20 = *&v32[8];
  v21 = *&v32[16];
  v22 = v12 + v9[7];
  *v22 = *v32;
  *(v22 + 8) = v20;
  *(v22 + 16) = v21;
  v35 = 4;
  sub_217BA24FC();
  sub_217D89BCC();
  (*(v14 + 8))(v30, v31);
  v23 = v12 + v9[8];
  *v23 = v32[0];
  *(v23 + 8) = *&v32[8];
  sub_217BA616C(v12, v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_217BA61D0(v12);
}

void sub_217BA6108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA5BAC();
    v7 = a3(a1, &type metadata for TodayTopStoriesMissingEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BA616C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BA61D0(uint64_t a1)
{
  v2 = type metadata accessor for TodayTopStoriesMissingEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BA6304@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A60550(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A60550(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A60550(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A60550(0, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554, &type metadata for TodayTopStoriesMissingData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217BA658C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A60550(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A60550(319, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
      if (v3 <= 0x3F)
      {
        sub_217A60550(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217A60550(319, &qword_27CBA0F68, sub_217BA24FC, sub_217BA2554, &type metadata for TodayTopStoriesMissingData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217BA6760(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217BA680C()
{
  result = qword_27CBA0FA8;
  if (!qword_27CBA0FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FA8);
  }

  return result;
}

unint64_t sub_217BA6864()
{
  result = qword_27CBA0FB0;
  if (!qword_27CBA0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FB0);
  }

  return result;
}

unint64_t sub_217BA68BC()
{
  result = qword_27CBA0FB8;
  if (!qword_27CBA0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FB8);
  }

  return result;
}

uint64_t sub_217BA6910(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E6F4364656566 && a2 == 0xEE00617461446769 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44676E697373696DLL && a2 == 0xEB00000000617461)
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

uint64_t sub_217BA6B9C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0FC0);
  __swift_project_value_buffer(v0, qword_27CBA0FC0);
  return sub_217D8866C();
}

uint64_t EOAFeedViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EOAFeedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 24);
  sub_217BA7B08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 24);
  sub_217BA7B08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 28);
  sub_217BA7B08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 28);
  sub_217BA7B08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 32);
  sub_217BA7B08(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 32);
  sub_217BA7B08(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 36);
  sub_217BA7B08(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217BA73A0()
{
  result = qword_2811C6918;
  if (!qword_2811C6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6918);
  }

  return result;
}

unint64_t sub_217BA73F4()
{
  result = qword_2811C6920;
  if (!qword_2811C6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6920);
  }

  return result;
}

uint64_t EOAFeedViewEvent.hostArticleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 36);
  sub_217BA7B08(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 40);
  sub_217BA7B08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.hostArticleNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 40);
  sub_217BA7B08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 44);
  sub_217BA7B08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.hostArticleChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 44);
  sub_217BA7B08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 48);
  sub_217BA7B08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 48);
  sub_217BA7B08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 52);
  sub_217BA7B08(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BA7B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t EOAFeedViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 52);
  sub_217BA7B08(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EOAFeedViewEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BA7B08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BA7B08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217BA7B08(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217BA7B08(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217BA7B08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217BA7B08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v18 - 8) + 104))(a1 + v17, v2, v18);
  v19 = v4[12];
  sub_217BA7B08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v20 - 8) + 104))(a1 + v19, v2, v20);
  v21 = v4[13];
  sub_217BA7B08(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a1 + v21, v2, v22);
}

uint64_t sub_217BA814C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EOAFeedViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t EOAFeedViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EOAFeedViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for EOAFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t EOAFeedViewEvent.Model.hostArticleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EOAFeedViewEvent.Model.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 40);
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

uint64_t EOAFeedViewEvent.Model.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 44);
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

uint64_t EOAFeedViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

uint64_t EOAFeedViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EOAFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 EOAFeedViewEvent.Model.init(eventData:timedData:viewData:feedData:orientationData:hostArticleViewData:hostArticleNewsArticleData:hostArticleChannelData:userBundleSubscriptionContextData:viewEndData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v15 = *a3;
  v16 = a3[1];
  v17 = *(a3 + 8);
  v18 = *(a4 + 1);
  v35 = *(a4 + 2);
  v36 = *a4;
  v37 = *a5;
  v38 = a6[1];
  v39 = *a6;
  v44 = a8[1];
  v45 = *a8;
  v42 = *(a8 + 17);
  v43 = *(a8 + 16);
  v40 = a8[4];
  v41 = a8[3];
  v46 = *a11;
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for EOAFeedViewEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  v24 = a9 + v20[7];
  *v24 = v36;
  *(v24 + 8) = v18;
  *(v24 + 16) = v35;
  *(a9 + v20[8]) = v37;
  v25 = (a9 + v20[9]);
  *v25 = v39;
  v25[1] = v38;
  v26 = a9 + v20[10];
  v27 = *(a7 + 48);
  *(v26 + 32) = *(a7 + 32);
  *(v26 + 48) = v27;
  v28 = *(a7 + 16);
  *v26 = *a7;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a7 + 127);
  v29 = *(a7 + 112);
  *(v26 + 96) = *(a7 + 96);
  *(v26 + 112) = v29;
  v30 = *(a7 + 80);
  *(v26 + 64) = *(a7 + 64);
  *(v26 + 80) = v30;
  v31 = a9 + v20[11];
  *v31 = v45;
  *(v31 + 8) = v44;
  *(v31 + 16) = v43;
  *(v31 + 17) = v42;
  *(v31 + 24) = v41;
  *(v31 + 32) = v40;
  v32 = a9 + v20[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  result = *(a10 + 32);
  *(v32 + 32) = result;
  *(v32 + 48) = *(a10 + 48);
  *(a9 + v20[13]) = v46;
  return result;
}

unint64_t sub_217BA8688(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    if (a1 != 8)
    {
      v5 = 0x44646E4577656976;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000013;
    if (a1 != 5)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6174614477656976;
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x7461746E6569726FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74614464656D6974;
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

uint64_t sub_217BA87EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BAA52C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BA8814(uint64_t a1)
{
  v2 = sub_217BA8F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BA8850(uint64_t a1)
{
  v2 = sub_217BA8F20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EOAFeedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BA9A44(0, &qword_27CBA0FD8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v38[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BA8F20();
  sub_217D89E7C();
  LOBYTE(v66) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for EOAFeedViewEvent.Model(0);
    LOBYTE(v66) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    *&v66 = v12;
    *(&v66 + 1) = v13;
    LOWORD(v67) = v11;
    LOBYTE(v58) = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = v3 + v10[7];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    LOBYTE(v66) = *v14;
    *(&v66 + 1) = v15;
    *&v67 = v16;
    LOBYTE(v58) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    LOWORD(v66) = *(v3 + v10[8]);
    LOBYTE(v58) = 4;
    sub_217A4CF88();
    sub_217D89CAC();
    v17 = (v3 + v10[9]);
    v18 = v17[1];
    v75 = *v17;
    v76 = v18;
    v74 = 5;
    sub_217BA73F4();

    sub_217D89CAC();

    v19 = (v3 + v10[10]);
    v20 = v19[6];
    v21 = v19[4];
    v71 = v19[5];
    v72 = v20;
    v22 = v19[6];
    *v73 = v19[7];
    v23 = v19[1];
    v24 = v19[3];
    v68 = v19[2];
    v69 = v24;
    v25 = v19[3];
    v70 = v19[4];
    v26 = v19[1];
    v66 = *v19;
    v67 = v26;
    v63 = v71;
    v64 = v22;
    v65[0] = v19[7];
    v60 = v68;
    v61 = v25;
    v62 = v21;
    *&v73[15] = *(v19 + 127);
    *(v65 + 15) = *(v19 + 127);
    v58 = v66;
    v59 = v23;
    v57 = 6;
    sub_217AD1630(&v66, v55);
    sub_217ACF52C();
    sub_217D89CAC();
    v55[6] = v64;
    *v56 = v65[0];
    *&v56[15] = *(v65 + 15);
    v55[2] = v60;
    v55[3] = v61;
    v55[4] = v62;
    v55[5] = v63;
    v55[0] = v58;
    v55[1] = v59;
    sub_217AD2864(v55);
    v27 = (v3 + v10[11]);
    v28 = *v27;
    v77 = v27[1];
    v29 = *(v27 + 16);
    v30 = *(v27 + 17);
    v31 = v27[3];
    v32 = v27[4];
    v49 = v28;
    v50 = v77;
    v51 = v29;
    v52 = v30;
    v53 = v31;
    v54 = v32;
    v48 = 7;
    sub_217AD084C();

    sub_217D89CAC();

    v33 = (v3 + v10[12]);
    v34 = v33[1];
    v46[0] = *v33;
    v46[1] = v34;
    v36 = *v33;
    v35 = v33[1];
    v46[2] = v33[2];
    v47 = *(v33 + 48);
    v42 = v36;
    v43 = v35;
    v44 = v33[2];
    v45 = *(v33 + 48);
    v41 = 8;
    sub_217ACC004(v46, v39);
    sub_217A55B98();
    sub_217D89CAC();
    v39[0] = v42;
    v39[1] = v43;
    v39[2] = v44;
    v40 = v45;
    sub_217ACC69C(v39);
    v38[15] = *(v3 + v10[13]);
    v38[14] = 9;
    sub_217B570C0();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BA8F20()
{
  result = qword_2811C5590;
  if (!qword_2811C5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5590);
  }

  return result;
}

uint64_t EOAFeedViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_217D889CC();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BA9A44(0, &qword_2811BCA88, MEMORY[0x277D844C8]);
  v49 = v8;
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v41 - v9;
  v11 = type metadata accessor for EOAFeedViewEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217BA8F20();
  v50 = v10;
  v15 = v67;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v42 = v3;
  v43 = v11;
  v67 = v13;
  v60[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v16 = v47;
  sub_217D89BCC();
  v17 = v67;
  (*(v46 + 32))(v67, v16, v6);
  v60[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v18 = v42;
  sub_217D89BCC();
  v41[1] = v6;
  v47 = 0;
  v19 = v43;
  (*(v45 + 32))(&v17[v43[5]], v5, v18);
  LOBYTE(v54) = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v20 = *&v60[8];
  v21 = *&v60[16];
  v22 = &v17[v19[6]];
  *v22 = *v60;
  *(v22 + 1) = v20;
  *(v22 + 8) = v21;
  LOBYTE(v54) = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v23 = &v17[v19[7]];
  *v23 = v60[0];
  *(v23 + 8) = *&v60[8];
  LOBYTE(v54) = 4;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v17[v19[8]] = *v60;
  LOBYTE(v54) = 5;
  sub_217BA73A0();
  sub_217D89BCC();
  v24 = *&v60[8];
  v25 = &v17[v19[9]];
  *v25 = *v60;
  *(v25 + 1) = v24;
  v59 = 6;
  sub_217ACF4D8();
  sub_217D89BCC();
  v26 = &v17[v19[10]];
  v27 = v64;
  v28 = *v66;
  *(v26 + 6) = v65;
  *(v26 + 7) = v28;
  *(v26 + 127) = *&v66[15];
  v29 = v62;
  *(v26 + 2) = v61;
  *(v26 + 3) = v29;
  *(v26 + 4) = v63;
  *(v26 + 5) = v27;
  v30 = *&v60[16];
  *v26 = *v60;
  *(v26 + 1) = v30;
  v58 = 7;
  sub_217AD07F8();
  sub_217D89BCC();
  v31 = *(&v54 + 1);
  v32 = v55;
  v33 = BYTE1(v55);
  v34 = *(&v55 + 1);
  v35 = v56;
  v36 = &v67[v19[11]];
  *v36 = v54;
  *(v36 + 1) = v31;
  v36[16] = v32;
  v36[17] = v33;
  *(v36 + 3) = v34;
  *(v36 + 4) = v35;
  v58 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v37 = &v67[v43[12]];
  v38 = v55;
  *v37 = v54;
  *(v37 + 1) = v38;
  *(v37 + 2) = v56;
  v37[48] = v57;
  v52 = 9;
  sub_217B57068();
  sub_217D89BCC();
  (*(v48 + 8))(v50, v49);
  v39 = v67;
  v67[v43[13]] = v53;
  sub_217BA9AA8(v39, v44);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return sub_217BA9B0C(v39);
}

void sub_217BA9A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BA8F20();
    v7 = a3(a1, &type metadata for EOAFeedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BA9AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EOAFeedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BA9B0C(uint64_t a1)
{
  v2 = type metadata accessor for EOAFeedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BA9C40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BA7B08(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BA7B08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217BA7B08(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217BA7B08(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217BA7B08(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217BA7B08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v19 - 8) + 104))(a2 + v18, v4, v19);
  v20 = a1[12];
  sub_217BA7B08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v21 - 8) + 104))(a2 + v20, v4, v21);
  v22 = a1[13];
  sub_217BA7B08(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a2 + v22, v4, v23);
}

void sub_217BAA0E8(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217BA7B08(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_217BA7B08(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217BA7B08(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
          if (v5 <= 0x3F)
          {
            sub_217BA7B08(319, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
            if (v6 <= 0x3F)
            {
              sub_217BA7B08(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
              if (v7 <= 0x3F)
              {
                sub_217BA7B08(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                if (v8 <= 0x3F)
                {
                  sub_217BA7B08(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217BA7B08(319, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
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

unint64_t sub_217BAA428()
{
  result = qword_27CBA0FE0;
  if (!qword_27CBA0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FE0);
  }

  return result;
}

unint64_t sub_217BAA480()
{
  result = qword_2811C5580;
  if (!qword_2811C5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5580);
  }

  return result;
}

unint64_t sub_217BAA4D8()
{
  result = qword_2811C5588;
  if (!qword_2811C5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5588);
  }

  return result;
}

uint64_t sub_217BAA52C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCED30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCED50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCED70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::TodayTopStoriesMissingReason_optional __swiftcall TodayTopStoriesMissingReason.init(rawValue:)(Swift::String rawValue)
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

unint64_t TodayTopStoriesMissingReason.rawValue.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x4572657474696D65;
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

uint64_t sub_217BAA934(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000217DCB0A0;
  if (v2 == 1)
  {
    v5 = 0x8000000217DCB0A0;
  }

  else
  {
    v3 = 0x4572657474696D65;
    v5 = 0xEC000000726F7272;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x4572657474696D65;
    v4 = 0xEC000000726F7272;
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
    v10 = v4;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217BAAA44()
{
  result = qword_27CBA0FE8;
  if (!qword_27CBA0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FE8);
  }

  return result;
}

uint64_t sub_217BAAA98()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BAAB48(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BAABE4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BAAC9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000217DCB0A0;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x4572657474696D65;
    v4 = 0xEC000000726F7272;
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

unint64_t sub_217BAADC8()
{
  result = qword_27CBA0FF0;
  if (!qword_27CBA0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FF0);
  }

  return result;
}

uint64_t sub_217BAAE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_217BAAF14(uint64_t a1)
{
  v2 = sub_217BAB0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BAAF50(uint64_t a1)
{
  v2 = sub_217BAB0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailSignupUserActionData.encode(to:)(void *a1)
{
  sub_217BAB328(0, &qword_2811BC5B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB0E8();
  sub_217D89E7C();
  v11 = v8;
  sub_217BAB13C();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BAB0E8()
{
  result = qword_2811BF2B8;
  if (!qword_2811BF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2B8);
  }

  return result;
}

unint64_t sub_217BAB13C()
{
  result = qword_2811BF290;
  if (!qword_2811BF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF290);
  }

  return result;
}

uint64_t EmailSignupUserActionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BAB328(0, &qword_2811BC960, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB0E8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BAB38C();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BAB328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BAB0E8();
    v7 = a3(a1, &type metadata for EmailSignupUserActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BAB38C()
{
  result = qword_2811BF280;
  if (!qword_2811BF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF280);
  }

  return result;
}

unint64_t sub_217BAB43C()
{
  result = qword_27CBA0FF8;
  if (!qword_27CBA0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0FF8);
  }

  return result;
}

unint64_t sub_217BAB494()
{
  result = qword_2811BF2A8;
  if (!qword_2811BF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2A8);
  }

  return result;
}

unint64_t sub_217BAB4EC()
{
  result = qword_2811BF2B0;
  if (!qword_2811BF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2B0);
  }

  return result;
}

uint64_t sub_217BAB5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x50596C6C6F726373 && a2 == 0xEF6E6F697469736FLL)
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

uint64_t sub_217BAB634(uint64_t a1)
{
  v2 = sub_217BAB7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BAB670(uint64_t a1)
{
  v2 = sub_217BAB7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScrollStartData.encode(to:)(void *a1)
{
  sub_217BAB9D0(0, &qword_2811BC740, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB7F4();
  sub_217D89E7C();
  sub_217D89C9C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BAB7F4()
{
  result = qword_2811C60F0[0];
  if (!qword_2811C60F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C60F0);
  }

  return result;
}

uint64_t ScrollStartData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217BAB9D0(0, &qword_2811BCAA0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB7F4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217D89BBC();
    v11 = v10;
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BAB9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BAB7F4();
    v7 = a3(a1, &type metadata for ScrollStartData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BABA38()
{
  result = qword_2811C60D0;
  if (!qword_2811C60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60D0);
  }

  return result;
}

unint64_t sub_217BABA90()
{
  result = qword_2811C60D8;
  if (!qword_2811C60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60D8);
  }

  return result;
}

uint64_t sub_217BABAFC(void *a1)
{
  sub_217BAB9D0(0, &qword_2811BC740, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAB7F4();
  sub_217D89E7C();
  sub_217D89C9C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BABC68()
{
  result = qword_27CBA1000;
  if (!qword_27CBA1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1000);
  }

  return result;
}

unint64_t sub_217BABCC0()
{
  result = qword_2811C60E0;
  if (!qword_2811C60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60E0);
  }

  return result;
}

unint64_t sub_217BABD18()
{
  result = qword_2811C60E8;
  if (!qword_2811C60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60E8);
  }

  return result;
}

uint64_t sub_217BABE34()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1038);
  __swift_project_value_buffer(v0, qword_27CBA1038);
  return sub_217D8866C();
}

uint64_t UnfavoriteTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnfavoriteTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 20);
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfavoriteTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 20);
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfavoriteTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 24);
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfavoriteTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 24);
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfavoriteTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 28);
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfavoriteTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfavoriteTagEvent(0) + 28);
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfavoriteTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnfavoriteTagEvent(0);
  v5 = v4[5];
  sub_217B45A2C(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B45A2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B45A2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t UnfavoriteTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfavoriteTagEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UnfavoriteTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfavoriteTagEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t UnfavoriteTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfavoriteTagEvent.Model(0) + 28));
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

__n128 UnfavoriteTagEvent.Model.init(eventData:tagData:viewData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 8);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for UnfavoriteTagEvent.Model(0);
  v15 = (a5 + v14[5]);
  *v15 = v8;
  v15[1] = v9;
  v16 = a5 + v14[6];
  *v16 = v10;
  *(v16 + 8) = v11;
  *(v16 + 16) = v12;
  v17 = a5 + v14[7];
  v18 = *(a4 + 16);
  *v17 = *a4;
  *(v17 + 16) = v18;
  result = *(a4 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a4 + 48);
  return result;
}

uint64_t sub_217BAC888(uint64_t a1)
{
  v2 = sub_217BACC14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BAC8C4(uint64_t a1)
{
  v2 = sub_217BACC14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnfavoriteTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BAD0E8(0, &qword_27CBA1050, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BACC14();
  sub_217D89E7C();
  LOBYTE(v27[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for UnfavoriteTagEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v27[0] = *v11;
    *(&v27[0] + 1) = v12;
    LOBYTE(v23) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v13 = (v3 + v10[6]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v29 = v14;
    v30 = v15;
    v31 = v13;
    v33 = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v16 = (v3 + v10[7]);
    v17 = v16[1];
    v27[0] = *v16;
    v27[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v27[2] = v16[2];
    v28 = *(v16 + 48);
    v23 = v19;
    v24 = v18;
    v25 = v16[2];
    v26 = *(v16 + 48);
    v32 = 3;
    sub_217ACC004(v27, v21);
    sub_217A55B98();
    sub_217D89CAC();
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v22 = v26;
    sub_217ACC69C(v21);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BACC14()
{
  result = qword_27CBA1058;
  if (!qword_27CBA1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1058);
  }

  return result;
}

uint64_t UnfavoriteTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BAD0E8(0, &qword_27CBA1060, MEMORY[0x277D844C8]);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for UnfavoriteTagEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BACC14();
  v28 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  LOBYTE(v29) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v25;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  v33 = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v14 = *(&v29 + 1);
  v15 = &v11[v9[5]];
  *v15 = v29;
  *(v15 + 1) = v14;
  v33 = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v16 = *(&v29 + 1);
  v17 = v30;
  v18 = &v11[v9[6]];
  *v18 = v29;
  *(v18 + 1) = v16;
  *(v18 + 8) = v17;
  v33 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v26 + 8))(v28, v27);
  v19 = &v11[v9[7]];
  v20 = v30;
  *v19 = v29;
  *(v19 + 1) = v20;
  *(v19 + 2) = v31;
  v19[48] = v32;
  sub_217BAD14C(v11, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BAD1B0(v11);
}

void sub_217BAD0E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BACC14();
    v7 = a3(a1, &type metadata for UnfavoriteTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BAD14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnfavoriteTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BAD1B0(uint64_t a1)
{
  v2 = type metadata accessor for UnfavoriteTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217BAD348()
{
  result = qword_27CBA1088;
  if (!qword_27CBA1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1088);
  }

  return result;
}

unint64_t sub_217BAD3A0()
{
  result = qword_27CBA1090;
  if (!qword_27CBA1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1090);
  }

  return result;
}

unint64_t sub_217BAD3F8()
{
  result = qword_27CBA1098;
  if (!qword_27CBA1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1098);
  }

  return result;
}

uint64_t sub_217BAD514()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA10D0);
  __swift_project_value_buffer(v0, qword_27CBA10D0);
  return sub_217D8866C();
}

uint64_t UnfollowTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnfollowTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 20);
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 20);
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 24);
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 24);
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 28);
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 28);
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 32);
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 32);
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 36);
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowTagEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 36);
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 40);
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BADF88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t UnfollowTagEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowTagEvent(0) + 40);
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnfollowTagEvent(0);
  v5 = v4[5];
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v8, v17);
}

uint64_t UnfollowTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UnfollowTagEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t UnfollowTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t UnfollowTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 32));
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

uint64_t UnfollowTagEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UnfollowTagEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t UnfollowTagEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UnfollowTagEvent.Model(0) + 40);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

__n128 UnfollowTagEvent.Model.init(eventData:tagData:feedData:viewData:userBundleSubscriptionContextData:actionData:sectionData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v27 = *a3;
  v13 = *(a3 + 2);
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 8);
  v17 = *a6;
  v30 = *a7;
  v29 = a7[1].n128_u64[0];
  v28 = a7[1].n128_u8[8];
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for UnfollowTagEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v11;
  v20[1] = v12;
  v21 = a8 + v19[6];
  *v21 = v27;
  *(v21 + 16) = v13;
  v22 = a8 + v19[7];
  *v22 = v14;
  *(v22 + 8) = v15;
  *(v22 + 16) = v16;
  v23 = a8 + v19[8];
  v24 = *(a5 + 16);
  *v23 = *a5;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a5 + 32);
  *(v23 + 48) = *(a5 + 48);
  *(a8 + v19[9]) = v17;
  v25 = (a8 + v19[10]);
  result = v30;
  *v25 = v30;
  v25[1].n128_u64[0] = v29;
  v25[1].n128_u8[8] = v28;
  return result;
}

uint64_t sub_217BAE7C4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x61446E6F69746361;
  if (v1 != 5)
  {
    v3 = 0x446E6F6974636573;
  }

  v4 = 0x6174614477656976;
  if (v1 != 3)
  {
    v4 = 0xD000000000000021;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x61746144676174;
  if (v1 != 1)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_217BAE8B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BAFE2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BAE8DC(uint64_t a1)
{
  v2 = sub_217BAEDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BAE918(uint64_t a1)
{
  v2 = sub_217BAEDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnfollowTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BAF438(0, &qword_27CBA10E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAEDC8();
  sub_217D89E7C();
  LOBYTE(v35) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for UnfollowTagEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v35 = *v11;
    *(&v35 + 1) = v12;
    LOBYTE(v31) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v13 = (v3 + v10[6]);
    v14 = v13[1];
    v15 = v13[2];
    *&v35 = *v13;
    *(&v35 + 1) = v14;
    *&v36 = v15;
    LOBYTE(v31) = 2;
    sub_217AD1A68(v35, v14, v15);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v35, *(&v35 + 1), v36);
    v17 = (v3 + v10[7]);
    v18 = *v17;
    v19 = v17[1];
    LOWORD(v17) = *(v17 + 8);
    v39 = v18;
    v40 = v19;
    v41 = v17;
    v44 = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v20 = (v3 + v10[8]);
    v21 = v20[1];
    v35 = *v20;
    v36 = v21;
    v23 = *v20;
    v22 = v20[1];
    v37 = v20[2];
    v38 = *(v20 + 48);
    v31 = v23;
    v32 = v22;
    v33 = v20[2];
    v34 = *(v20 + 48);
    v43 = 4;
    sub_217ACC004(&v35, v29);
    sub_217A55B98();
    sub_217D89CAC();
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v30 = v34;
    sub_217ACC69C(v29);
    LOBYTE(v26) = *(v3 + v10[9]);
    v42 = 5;
    sub_217AED190();
    sub_217D89CAC();
    v24 = (v3 + v10[10]);
    v25 = *(v24 + 24);
    v26 = *v24;
    v27 = *(v24 + 1);
    v28 = v25;
    v42 = 6;
    sub_217B17644();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BAEDC8()
{
  result = qword_27CBA10F0;
  if (!qword_27CBA10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA10F0);
  }

  return result;
}

uint64_t UnfollowTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BAF438(0, &qword_27CBA10F8, MEMORY[0x277D844C8]);
  v31 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for UnfollowTagEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BAEDC8();
  v32 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v29;
  LOBYTE(v36) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v30;
  sub_217D89BCC();
  (*(v28 + 32))(v11, v13, v4);
  LOBYTE(v33) = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v30 = 0;
  v14 = *(&v36 + 1);
  v15 = &v11[v9[5]];
  *v15 = v36;
  *(v15 + 1) = v14;
  LOBYTE(v33) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v16 = v37;
  v17 = &v11[v9[6]];
  *v17 = v36;
  *(v17 + 2) = v16;
  LOBYTE(v33) = 3;
  sub_217A5E738();
  sub_217D89BCC();
  v18 = *(&v36 + 1);
  v19 = v37;
  v20 = &v11[v9[7]];
  *v20 = v36;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  v41 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  v21 = &v11[v9[8]];
  v22 = v37;
  *v21 = v36;
  *(v21 + 1) = v22;
  *(v21 + 2) = v38;
  v21[48] = v39;
  v40 = 5;
  sub_217AED13C();
  sub_217D89BCC();
  v11[v9[9]] = v33;
  v40 = 6;
  sub_217B175F0();
  sub_217D89B5C();
  (*(v12 + 8))(v32, v31);
  v23 = v34;
  v24 = v35;
  v25 = &v11[v9[10]];
  *v25 = v33;
  *(v25 + 2) = v23;
  v25[24] = v24;
  sub_217BAF49C(v11, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BAF500(v11);
}

void sub_217BAF438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BAEDC8();
    v7 = a3(a1, &type metadata for UnfollowTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BAF49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnfollowTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BAF500(uint64_t a1)
{
  v2 = type metadata accessor for UnfollowTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BAF634@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v9, v18);
}

void sub_217BAF9C0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217BADF88(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
    if (v2 <= 0x3F)
    {
      sub_217BADF88(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217BADF88(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217BADF88(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
          if (v5 <= 0x3F)
          {
            sub_217BADF88(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
            if (v6 <= 0x3F)
            {
              sub_217BADF88(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
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

void sub_217BAFC34(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7C80, &type metadata for SectionData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BAFD28()
{
  result = qword_27CBA1100;
  if (!qword_27CBA1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1100);
  }

  return result;
}

unint64_t sub_217BAFD80()
{
  result = qword_27CBA1108;
  if (!qword_27CBA1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1108);
  }

  return result;
}

unint64_t sub_217BAFDD8()
{
  result = qword_27CBA1110;
  if (!qword_27CBA1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1110);
  }

  return result;
}

uint64_t sub_217BAFE2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217BB00DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DCED90 == a2)
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

uint64_t sub_217BB0170(uint64_t a1)
{
  v2 = sub_217A69EFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB01AC(uint64_t a1)
{
  v2 = sub_217A69EFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BadgeOriginationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217A69D24(0, &qword_27CBA1118, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A69EFC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BB0380();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217BB0380()
{
  result = qword_27CBA1120;
  if (!qword_27CBA1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1120);
  }

  return result;
}

unint64_t sub_217BB03D8()
{
  result = qword_27CBA1128;
  if (!qword_27CBA1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1128);
  }

  return result;
}

unint64_t sub_217BB046C()
{
  result = qword_27CBA1130;
  if (!qword_27CBA1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1130);
  }

  return result;
}

uint64_t PDFPageContext.pageIndices.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PDFPageContext.init(pageIndices:pageCount:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_217BB0558()
{
  if (*v0)
  {
    return 0x6E756F4365676170;
  }

  else
  {
    return 0x69646E4965676170;
  }
}

uint64_t sub_217BB05A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69646E4965676170 && a2 == 0xEB00000000736563;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E756F4365676170 && a2 == 0xE900000000000074)
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

uint64_t sub_217BB0688(uint64_t a1)
{
  v2 = sub_217BB08E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB06C4(uint64_t a1)
{
  v2 = sub_217BB08E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PDFPageContext.encode(to:)(void *a1)
{
  sub_217BB0BB4(0, &qword_27CBA1138, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = *v1;
  v11[2] = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB08E0();

  sub_217D89E7C();
  v14 = v9;
  v13 = 0;
  sub_217BB0934();
  sub_217BB0C18(&qword_2811BCCF8, MEMORY[0x277D849B0], MEMORY[0x277D83948]);
  sub_217D89CAC();

  if (!v2)
  {
    v12 = 1;
    sub_217D89CBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217BB08E0()
{
  result = qword_27CBA1140;
  if (!qword_27CBA1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1140);
  }

  return result;
}

void sub_217BB0934()
{
  if (!qword_2811BCD00)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCD00);
    }
  }
}

uint64_t PDFPageContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BB0BB4(0, &qword_27CBA1148, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB08E0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_217BB0934();
  v13[15] = 0;
  sub_217BB0C18(&qword_2811BCCF0, MEMORY[0x277D849D8], MEMORY[0x277D83978]);
  sub_217D89BCC();
  v10 = v14;
  v13[14] = 1;
  v11 = sub_217D89BDC();
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  *(a2 + 8) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB0BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB08E0();
    v7 = a3(a1, &type metadata for PDFPageContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BB0C18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217BB0934();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217BB0C7C()
{
  result = qword_2811C6BB8;
  if (!qword_2811C6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6BB8);
  }

  return result;
}

unint64_t sub_217BB0CD4()
{
  result = qword_2811C6BC0[0];
  if (!qword_2811C6BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C6BC0);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_217BB0D6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_217BB0DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217BB0E18()
{
  result = qword_27CBA1150;
  if (!qword_27CBA1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1150);
  }

  return result;
}

unint64_t sub_217BB0E70()
{
  result = qword_27CBA1158;
  if (!qword_27CBA1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1158);
  }

  return result;
}

unint64_t sub_217BB0EC8()
{
  result = qword_27CBA1160;
  if (!qword_27CBA1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1160);
  }

  return result;
}

NewsAnalytics::AdState_optional __swiftcall AdState.init(rawValue:)(Swift::String rawValue)
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

uint64_t AdState.rawValue.getter()
{
  v1 = 0x6C616974696E69;
  v2 = 0x64656C696166;
  if (*v0 != 2)
  {
    v2 = 0x656C6C69666C7566;
  }

  if (*v0)
  {
    v1 = 0x676E69646E6570;
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

unint64_t sub_217BB1004()
{
  result = qword_27CBA1168;
  if (!qword_27CBA1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1168);
  }

  return result;
}

uint64_t sub_217BB1058()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BB111C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BB11CC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BB1298(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C616974696E69;
  v4 = 0xE600000000000000;
  v5 = 0x64656C696166;
  if (*v1 != 2)
  {
    v5 = 0x656C6C69666C7566;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x676E69646E6570;
    v2 = 0xE700000000000000;
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

unint64_t sub_217BB13D8()
{
  result = qword_2811BD3E0;
  if (!qword_2811BD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3E0);
  }

  return result;
}

uint64_t RecipeListData.recipeIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

NewsAnalytics::RecipeListData __swiftcall RecipeListData.init(recipeIDs:)(Swift::OpaquePointer_optional recipeIDs)
{
  rawValue = recipeIDs.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.recipeIDs.value._rawValue = v4;
  result.recipeIDs.is_nil = v5;
  return result;
}

uint64_t sub_217BB14D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449657069636572 && a2 == 0xE900000000000073)
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

uint64_t sub_217BB1564(uint64_t a1)
{
  v2 = sub_217BB1778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB15A0(uint64_t a1)
{
  v2 = sub_217BB1778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeListData.encode(to:)(void *a1)
{
  sub_217BB1990(0, &qword_2811BC788, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB1778();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_217D89C3C();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BB1778()
{
  result = qword_2811C6B00;
  if (!qword_2811C6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6B00);
  }

  return result;
}

uint64_t RecipeListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217BB1990(0, &qword_2811BCAC8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB1778();
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

void sub_217BB1990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB1778();
    v7 = a3(a1, &type metadata for RecipeListData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB19F8()
{
  result = qword_2811C6AE0;
  if (!qword_2811C6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6AE0);
  }

  return result;
}

unint64_t sub_217BB1A50()
{
  result = qword_2811C6AE8;
  if (!qword_2811C6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6AE8);
  }

  return result;
}

unint64_t sub_217BB1AF8()
{
  result = qword_27CBA1170;
  if (!qword_27CBA1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1170);
  }

  return result;
}

unint64_t sub_217BB1B50()
{
  result = qword_2811C6AF0;
  if (!qword_2811C6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6AF0);
  }

  return result;
}

unint64_t sub_217BB1BA8()
{
  result = qword_2811C6AF8;
  if (!qword_2811C6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6AF8);
  }

  return result;
}

NewsAnalytics::ApplicationStateHistoryData __swiftcall ApplicationStateHistoryData.init(currentApplicationState:previousApplicationState:)(NewsAnalytics::ApplicationState currentApplicationState, NewsAnalytics::ApplicationState previousApplicationState)
{
  v3 = *previousApplicationState;
  *v2 = *currentApplicationState;
  v2[1] = v3;
  result.currentApplicationState = currentApplicationState;
  return result;
}

unint64_t sub_217BB1C88()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_217BB1CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000217DCEDB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEDD0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

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

uint64_t sub_217BB1DA4(uint64_t a1)
{
  v2 = sub_217BB1FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB1DE0(uint64_t a1)
{
  v2 = sub_217BB1FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApplicationStateHistoryData.encode(to:)(void *a1)
{
  sub_217BB224C(0, &qword_27CBA1178, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB1FC0();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217BB2014();
  sub_217D89CAC();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217BB1FC0()
{
  result = qword_27CBA1180;
  if (!qword_27CBA1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1180);
  }

  return result;
}

unint64_t sub_217BB2014()
{
  result = qword_27CBA1188;
  if (!qword_27CBA1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1188);
  }

  return result;
}

uint64_t ApplicationStateHistoryData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BB224C(0, &qword_27CBA1190, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB1FC0();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217BB22B0();
    sub_217D89BCC();
    v10 = v17;
    v14 = 1;
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB224C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB1FC0();
    v7 = a3(a1, &type metadata for ApplicationStateHistoryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB22B0()
{
  result = qword_27CBA1198;
  if (!qword_27CBA1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1198);
  }

  return result;
}

unint64_t sub_217BB2360()
{
  result = qword_27CBA11A0;
  if (!qword_27CBA11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11A0);
  }

  return result;
}

unint64_t sub_217BB23B8()
{
  result = qword_27CBA11A8;
  if (!qword_27CBA11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11A8);
  }

  return result;
}

unint64_t sub_217BB2410()
{
  result = qword_27CBA11B0;
  if (!qword_27CBA11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11B0);
  }

  return result;
}

uint64_t FeedConfigData.recordID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedConfigData.recordID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeedConfigData.init(recordID:source:fetchStartTime:fetchEndTime:publishDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_217BB25D4()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x6174536863746566;
  v4 = 0x646E456863746566;
  if (v1 != 3)
  {
    v4 = 0x446873696C627570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656372756F73;
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

uint64_t sub_217BB2688@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BB2F54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BB26B0(uint64_t a1)
{
  v2 = sub_217BB2958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB26EC(uint64_t a1)
{
  v2 = sub_217BB2958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedConfigData.encode(to:)(void *a1)
{
  sub_217BB2C80(0, &qword_2811BC798, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v12 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11[2] = *(v1 + 32);
  v11[3] = v8;
  v11[1] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB2958();
  sub_217D89E7C();
  v19 = 0;
  v9 = v13;
  sub_217D89C0C();
  if (!v9)
  {
    v18 = v12;
    v17 = 1;
    sub_217BB29AC();
    sub_217D89CAC();
    v16 = 2;
    sub_217D89CCC();
    v15 = 3;
    sub_217D89CCC();
    v14 = 4;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BB2958()
{
  result = qword_2811C70A0;
  if (!qword_2811C70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70A0);
  }

  return result;
}

unint64_t sub_217BB29AC()
{
  result = qword_2811C5270[0];
  if (!qword_2811C5270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C5270);
  }

  return result;
}

uint64_t FeedConfigData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BB2C80(0, &qword_27CBA11B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB2958();
  sub_217D89E5C();
  if (!v2)
  {
    v28 = 0;
    v10 = sub_217D89B2C();
    v12 = v11;
    v13 = v10;
    v26 = 1;
    sub_217BB2CE4();
    sub_217D89BCC();
    v14 = v27;
    v25 = 2;
    v22 = sub_217D89BEC();
    v24 = 3;
    v15 = sub_217D89BEC();
    v20 = v14;
    v21 = v15;
    v23 = 4;
    v17 = sub_217D89BEC();
    (*(v7 + 8))(v9, v6);
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v20;
    v18 = v21;
    *(a2 + 24) = v22;
    *(a2 + 32) = v18;
    *(a2 + 40) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB2C80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB2958();
    v7 = a3(a1, &type metadata for FeedConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB2CE4()
{
  result = qword_27CBA11C0;
  if (!qword_27CBA11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11C0);
  }

  return result;
}

uint64_t sub_217BB2D70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_217BB2DCC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217BB2E50()
{
  result = qword_27CBA11C8;
  if (!qword_27CBA11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11C8);
  }

  return result;
}

unint64_t sub_217BB2EA8()
{
  result = qword_2811C7090;
  if (!qword_2811C7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7090);
  }

  return result;
}

unint64_t sub_217BB2F00()
{
  result = qword_2811C7098;
  if (!qword_2811C7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7098);
  }

  return result;
}

uint64_t sub_217BB2F54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174536863746566 && a2 == 0xEE00656D69547472 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E456863746566 && a2 == 0xEC000000656D6954 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461)
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

uint64_t PurchaseRestoreListData.purchaseRestoreData.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217BB3190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000217DCEE90 == a2)
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

uint64_t sub_217BB3224(uint64_t a1)
{
  v2 = sub_217BB3444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB3260(uint64_t a1)
{
  v2 = sub_217BB3444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseRestoreListData.encode(to:)(void *a1)
{
  sub_217BB370C(0, &qword_27CBA11D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB3444();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217BB3498();
  sub_217BB3770(&qword_27CBA11E8, sub_217BB34E8, MEMORY[0x277D83948]);
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BB3444()
{
  result = qword_27CBA11D8;
  if (!qword_27CBA11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11D8);
  }

  return result;
}

void sub_217BB3498()
{
  if (!qword_27CBA11E0)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA11E0);
    }
  }
}

unint64_t sub_217BB34E8()
{
  result = qword_27CBA11F0;
  if (!qword_27CBA11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA11F0);
  }

  return result;
}

uint64_t PurchaseRestoreListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217BB370C(0, &qword_27CBA11F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB3444();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BB3498();
    sub_217BB3770(&qword_27CBA1200, sub_217BB37DC, MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB370C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB3444();
    v7 = a3(a1, &type metadata for PurchaseRestoreListData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BB3770(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217BB3498();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217BB37DC()
{
  result = qword_27CBA1208;
  if (!qword_27CBA1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1208);
  }

  return result;
}

unint64_t sub_217BB3834()
{
  result = qword_27CBA1210;
  if (!qword_27CBA1210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1210);
  }

  return result;
}

unint64_t sub_217BB388C()
{
  result = qword_27CBA1218;
  if (!qword_27CBA1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1218);
  }

  return result;
}

unint64_t sub_217BB3934()
{
  result = qword_27CBA1220;
  if (!qword_27CBA1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1220);
  }

  return result;
}

unint64_t sub_217BB398C()
{
  result = qword_27CBA1228;
  if (!qword_27CBA1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1228);
  }

  return result;
}

unint64_t sub_217BB39E4()
{
  result = qword_27CBA1230;
  if (!qword_27CBA1230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1230);
  }

  return result;
}

void *sub_217BB3A38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_217BB3B98()
{
  result = qword_2811BCCD0;
  if (!qword_2811BCCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCCD0);
  }

  return result;
}

void sub_217BB3C04(char *a3@<X8>)
{
  v4 = [objc_opt_self() standardUserDefaults];

  v5 = sub_217D8951C();

  v6 = [v4 stringForKey_];

  v7 = 2;
  if (v6)
  {
    sub_217D8954C();

    v8 = sub_217D89B0C();

    if (v8 >= 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = v8;
    }
  }

  *a3 = v7;
}

void sub_217BB3D98()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];

  v2 = sub_217D8951C();

  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = [v0 standardUserDefaults];

    v5 = sub_217D8951C();

    [v4 setObject:v3 forKey:v5];
  }
}

void sub_217BB3EDC(uint64_t a1)
{
  sub_217BB3D98();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_217D8951C();

  v3 = sub_217D8951C();

  [v1 setObject:v2 forKey:v3];
}

uint64_t CustomItemData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CustomItemData.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CustomItemData.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CustomItemData.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsAnalytics::CustomItemData __swiftcall CustomItemData.init(identifier:name:)(Swift::String identifier, Swift::String name)
{
  *v2 = identifier;
  v2[1] = name;
  result.name = name;
  result.identifier = identifier;
  return result;
}

uint64_t sub_217BB40CC()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_217BB4104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_217BB41E8(uint64_t a1)
{
  v2 = sub_217BB43E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB4224(uint64_t a1)
{
  v2 = sub_217BB43E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomItemData.encode(to:)(void *a1)
{
  sub_217BB4644(0, &qword_2811BC7A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB43E0();
  sub_217D89E7C();
  v13 = 0;
  v9 = v11[3];
  sub_217D89C6C();
  if (!v9)
  {
    v12 = 1;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BB43E0()
{
  result = qword_2811C70E8;
  if (!qword_2811C70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70E8);
  }

  return result;
}

uint64_t CustomItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BB4644(0, &qword_27CBA1258, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB43E0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_217D89B8C();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB4644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB43E0();
    v7 = a3(a1, &type metadata for CustomItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB4704()
{
  result = qword_27CBA1260;
  if (!qword_27CBA1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1260);
  }

  return result;
}

unint64_t sub_217BB475C()
{
  result = qword_2811C70F0;
  if (!qword_2811C70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70F0);
  }

  return result;
}

unint64_t sub_217BB47B4()
{
  result = qword_2811C70F8;
  if (!qword_2811C70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70F8);
  }

  return result;
}

NewsAnalytics::InteractionType_optional __swiftcall InteractionType.init(rawValue:)(Swift::String rawValue)
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

unint64_t InteractionType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1752461154;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4572657474656CLL;
  }
}

uint64_t sub_217BB48C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x8000000217DCB110;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000217DCB110;
  }

  else
  {
    v3 = 1752461154;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E4572657474656CLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000797274;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 1752461154;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E4572657474656CLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000797274;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217BB49B8()
{
  result = qword_27CBA1268;
  if (!qword_27CBA1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1268);
  }

  return result;
}

uint64_t sub_217BB4A0C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BB4AB4(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BB4B48(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BB4BF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000797274;
  v4 = 0x8000000217DCB110;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 1752461154;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E4572657474656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217BB4D1C()
{
  result = qword_27CBA1270;
  if (!qword_27CBA1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1270);
  }

  return result;
}

uint64_t sub_217BB4DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_217BB4E54(uint64_t a1)
{
  v2 = sub_217BB5028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB4E90(uint64_t a1)
{
  v2 = sub_217BB5028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdStateData.encode(to:)(void *a1)
{
  sub_217BB5268(0, &qword_2811BC868, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5028();
  sub_217D89E7C();
  v11 = v8;
  sub_217BB507C();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BB5028()
{
  result = qword_2811C7E08;
  if (!qword_2811C7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E08);
  }

  return result;
}

unint64_t sub_217BB507C()
{
  result = qword_2811BD3E8;
  if (!qword_2811BD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3E8);
  }

  return result;
}

uint64_t AdStateData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217BB5268(0, &qword_27CBA1278, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5028();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217BB52CC();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB5268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB5028();
    v7 = a3(a1, &type metadata for AdStateData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BB52CC()
{
  result = qword_27CBA1280;
  if (!qword_27CBA1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1280);
  }

  return result;
}

unint64_t sub_217BB5324()
{
  result = qword_2811C7DE8;
  if (!qword_2811C7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DE8);
  }

  return result;
}

unint64_t sub_217BB537C()
{
  result = qword_2811C7DF0;
  if (!qword_2811C7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DF0);
  }

  return result;
}

unint64_t sub_217BB5424()
{
  result = qword_27CBA1288;
  if (!qword_27CBA1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1288);
  }

  return result;
}

unint64_t sub_217BB547C()
{
  result = qword_2811C7DF8;
  if (!qword_2811C7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DF8);
  }

  return result;
}

unint64_t sub_217BB54D4()
{
  result = qword_2811C7E00;
  if (!qword_2811C7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E00);
  }

  return result;
}

uint64_t sub_217BB55F0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C6A70);
  __swift_project_value_buffer(v0, qword_2811C6A70);
  return sub_217D8866C();
}

uint64_t TelemetryEvent.networkEventData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217BB56E8(0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_217BB56E8(uint64_t a1)
{
  if (!qword_2811C8860)
  {
    type metadata accessor for NetworkEventData(255);
    sub_217BB5798(&qword_2811C5020, &protocol conformance descriptor for NetworkEventData);
    sub_217BB5798(&qword_2811C5028, &protocol conformance descriptor for NetworkEventData);
    v1 = sub_217D8829C();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8860);
    }
  }
}

uint64_t sub_217BB5798(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NetworkEventData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TelemetryEvent.networkEventData.setter(uint64_t a1)
{
  sub_217BB56E8(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TelemetryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217BB56E8(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_217BB58E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkEventData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BB5994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000217DCEEF0 == a2)
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

uint64_t sub_217BB5A28(uint64_t a1)
{
  v2 = sub_217BB5C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB5A64(uint64_t a1)
{
  v2 = sub_217BB5C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TelemetryEvent.Model.encode(to:)(void *a1)
{
  sub_217BB5EF0(0, &qword_27CBA1290, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5C14();
  sub_217D89E7C();
  type metadata accessor for NetworkEventData(0);
  sub_217BB5798(&qword_2811C5028, &protocol conformance descriptor for NetworkEventData);
  sub_217D89CAC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217BB5C14()
{
  result = qword_27CBA1298;
  if (!qword_27CBA1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1298);
  }

  return result;
}

uint64_t TelemetryEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for NetworkEventData(0);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BB5EF0(0, &qword_27CBA12A0, MEMORY[0x277D844C8]);
  v7 = v6;
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TelemetryEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5C14();
  sub_217D89E5C();
  if (!v2)
  {
    v13 = v17;
    sub_217BB5798(&qword_2811C5020, &protocol conformance descriptor for NetworkEventData);
    v14 = v18;
    sub_217D89BCC();
    (*(v13 + 8))(v9, v7);
    sub_217BB5F74(v14, v12, type metadata accessor for NetworkEventData);
    sub_217BB5F74(v12, v16, type metadata accessor for TelemetryEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BB5EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB5C14();
    v7 = a3(a1, &type metadata for TelemetryEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BB5F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217BB5FF4(void *a1)
{
  sub_217BB5EF0(0, &qword_27CBA1290, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB5C14();
  sub_217D89E7C();
  type metadata accessor for NetworkEventData(0);
  sub_217BB5798(&qword_2811C5028, &protocol conformance descriptor for NetworkEventData);
  sub_217D89CAC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_217BB6210@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217BB56E8(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_217BB6408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217BB648C()
{
  result = qword_27CBA12B8;
  if (!qword_27CBA12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA12B8);
  }

  return result;
}

unint64_t sub_217BB64E4()
{
  result = qword_27CBA12C0;
  if (!qword_27CBA12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA12C0);
  }

  return result;
}

unint64_t sub_217BB653C()
{
  result = qword_27CBA12C8;
  if (!qword_27CBA12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA12C8);
  }

  return result;
}

uint64_t sub_217BB6658()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1300);
  __swift_project_value_buffer(v0, qword_27CBA1300);
  return sub_217D8866C();
}

uint64_t UnblockTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnblockTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 20);
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 20);
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 24);
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 24);
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 28);
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 28);
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 32);
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 32);
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 36);
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnblockTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 36);
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 40);
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BB70CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t UnblockTagEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnblockTagEvent(0) + 40);
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnblockTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnblockTagEvent(0);
  v5 = v4[5];
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t UnblockTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t UnblockTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UnblockTagEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t UnblockTagEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 32);
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
  return sub_217AFFBC0(v17, v16);
}

uint64_t UnblockTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnblockTagEvent.Model(0) + 36));
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

uint64_t UnblockTagEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UnblockTagEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 UnblockTagEvent.Model.init(eventData:viewData:tagData:feedData:articleData:userBundleSubscriptionContextData:actionData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 8);
  v15 = *a3;
  v16 = a3[1];
  v31 = *a4;
  v17 = *(a4 + 2);
  v32 = *a7;
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for UnblockTagEvent.Model(0);
  v20 = a8 + v19[5];
  *v20 = v12;
  *(v20 + 8) = v13;
  *(v20 + 16) = v14;
  v21 = (a8 + v19[6]);
  *v21 = v15;
  v21[1] = v16;
  v22 = a8 + v19[7];
  *v22 = v31;
  *(v22 + 16) = v17;
  v23 = a8 + v19[8];
  v24 = *(a5 + 48);
  *(v23 + 32) = *(a5 + 32);
  *(v23 + 48) = v24;
  v25 = *(a5 + 16);
  *v23 = *a5;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a5 + 127);
  v26 = *(a5 + 112);
  *(v23 + 96) = *(a5 + 96);
  *(v23 + 112) = v26;
  v27 = *(a5 + 80);
  *(v23 + 64) = *(a5 + 64);
  *(v23 + 80) = v27;
  v28 = a8 + v19[9];
  v29 = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = v29;
  result = *(a6 + 32);
  *(v28 + 32) = result;
  *(v28 + 48) = *(a6 + 48);
  *(a8 + v19[10]) = v32;
  return result;
}

unint64_t sub_217BB7954()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  if (v1 != 5)
  {
    v3 = 0x61446E6F69746361;
  }

  v4 = 0x6174614464656566;
  if (v1 != 3)
  {
    v4 = 0x44656C6369747261;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6174614477656976;
  if (v1 != 1)
  {
    v5 = 0x61746144676174;
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

uint64_t sub_217BB7A44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BB91E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BB7A6C(uint64_t a1)
{
  v2 = sub_217BB7FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BB7AA8(uint64_t a1)
{
  v2 = sub_217BB7FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnblockTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BB87E8(0, &qword_27CBA1318, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BB7FEC();
  sub_217D89E7C();
  LOBYTE(v51) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v63 = type metadata accessor for UnblockTagEvent.Model(0);
    v10 = (v3 + v63[5]);
    v11 = *v10;
    v12 = v10[1];
    LOWORD(v10) = *(v10 + 8);
    *&v51 = v11;
    *(&v51 + 1) = v12;
    LOWORD(v52) = v10;
    LOBYTE(v43) = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v13 = (v3 + v63[6]);
    v14 = v13[1];
    *&v51 = *v13;
    *(&v51 + 1) = v14;
    LOBYTE(v43) = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v16 = (v3 + v63[7]);
    v17 = v16[1];
    v18 = v16[2];
    v60 = *v16;
    v61 = v17;
    v62 = v18;
    v59 = 3;
    sub_217AD1A68(v60, v17, v18);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v60, v61, v62);
    v19 = (v3 + v63[8]);
    v20 = v19[6];
    v21 = v19[4];
    v56 = v19[5];
    v57 = v20;
    v22 = v19[6];
    *v58 = v19[7];
    v23 = v19[1];
    v24 = v19[3];
    v53 = v19[2];
    v54 = v24;
    v25 = v19[3];
    v55 = v19[4];
    v26 = v19[1];
    v51 = *v19;
    v52 = v26;
    v48 = v56;
    v49 = v22;
    v50[0] = v19[7];
    v45 = v53;
    v46 = v25;
    v47 = v21;
    *&v58[15] = *(v19 + 127);
    *(v50 + 15) = *(v19 + 127);
    v43 = v51;
    v44 = v23;
    v42 = 4;
    sub_217AFFBC0(&v51, v40);
    sub_217ACF52C();
    sub_217D89C3C();
    v40[6] = v49;
    *v41 = v50[0];
    *&v41[15] = *(v50 + 15);
    v40[2] = v45;
    v40[3] = v46;
    v40[4] = v47;
    v40[5] = v48;
    v40[0] = v43;
    v40[1] = v44;
    sub_217B009E0(v40);
    v27 = v3 + v63[9];
    v28 = *(v27 + 16);
    v29 = *(v27 + 32);
    v38[0] = *v27;
    v38[1] = v28;
    v38[2] = v29;
    v39 = *(v27 + 48);
    v34 = v38[0];
    v35 = v28;
    v36 = *(v27 + 32);
    v37 = *(v27 + 48);
    v33 = 5;
    sub_217ACC004(v38, v31);
    sub_217A55B98();
    sub_217D89CAC();
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v32 = v37;
    sub_217ACC69C(v31);
    v30[15] = *(v3 + v63[10]);
    v30[14] = 6;
    sub_217AED190();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BB7FEC()
{
  result = qword_27CBA1320;
  if (!qword_27CBA1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1320);
  }

  return result;
}

uint64_t UnblockTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_217D8899C();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BB87E8(0, &qword_27CBA1328, MEMORY[0x277D844C8]);
  v36 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for UnblockTagEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_217BB7FEC();
  v37 = v9;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v14 = v35;
  v15 = v12;
  LOBYTE(v44) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v16 = v36;
  sub_217D89BCC();
  (*(v34 + 32))(v15, v6, v4);
  LOBYTE(v41[0]) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v17 = *(&v44 + 1);
  v18 = v45;
  v19 = v15 + v10[5];
  *v19 = v44;
  *(v19 + 8) = v17;
  *(v19 + 16) = v18;
  LOBYTE(v41[0]) = 2;
  sub_217AF6AC0();
  sub_217D89BCC();
  v20 = *(&v44 + 1);
  v21 = (v15 + v10[6]);
  *v21 = v44;
  v21[1] = v20;
  LOBYTE(v41[0]) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v22 = v45;
  v23 = v15 + v10[7];
  *v23 = v44;
  *(v23 + 16) = v22;
  v43 = 4;
  sub_217ACF4D8();
  sub_217D89B5C();
  v24 = v15 + v10[8];
  v25 = v49;
  v26 = v51[0];
  *(v24 + 96) = v50;
  *(v24 + 112) = v26;
  *(v24 + 127) = *(v51 + 15);
  v27 = v47;
  *(v24 + 32) = v46;
  *(v24 + 48) = v27;
  *(v24 + 64) = v48;
  *(v24 + 80) = v25;
  v28 = v45;
  *v24 = v44;
  *(v24 + 16) = v28;
  v40 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v29 = v15 + v10[9];
  v30 = v41[1];
  *v29 = v41[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v41[2];
  *(v29 + 48) = v42;
  v38 = 6;
  sub_217AED13C();
  sub_217D89BCC();
  (*(v14 + 8))(v37, v16);
  *(v15 + v10[10]) = v39;
  sub_217BB884C(v15, v33);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_217BB88B0(v15);
}

void sub_217BB87E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BB7FEC();
    v7 = a3(a1, &type metadata for UnblockTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BB884C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnblockTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BB88B0(uint64_t a1)
{
  v2 = type metadata accessor for UnblockTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BB89E4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

void sub_217BB8D70(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217BB70CC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217BB70CC(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
      if (v3 <= 0x3F)
      {
        sub_217BB70CC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217BB70CC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
          if (v5 <= 0x3F)
          {
            sub_217BB70CC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
            if (v6 <= 0x3F)
            {
              sub_217BB70CC(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
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

void sub_217BB8FE4(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217BB90E4()
{
  result = qword_27CBA1330;
  if (!qword_27CBA1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1330);
  }

  return result;
}

unint64_t sub_217BB913C()
{
  result = qword_27CBA1338;
  if (!qword_27CBA1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1338);
  }

  return result;
}

unint64_t sub_217BB9194()
{
  result = qword_27CBA1340;
  if (!qword_27CBA1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1340);
  }

  return result;
}

uint64_t sub_217BB91E8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

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

__n128 WidgetEngagementData.init(identifier:engagementType:webEmbedData:articleData:groupData:tagData:contentFetchDate:displayMode:topicTag:userID:engagementURL:typeData:locationData:storyType:engagementID:entryID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, char *a15, char *a16, __int128 a17, __n128 a18, uint64_t a19, uint64_t a20)
{
  v23 = *a3;
  v24 = *a4;
  v25 = a4[1];
  v26 = *a7;
  v27 = a7[1];
  v28 = *a10;
  v29 = *a15;
  v30 = *a16;
  v40 = (a9 + 424);
  v41 = (a9 + 408);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v23;

  v31 = a5[4];
  *(a9 + 120) = a5[5];
  v32 = a5[7];
  *(a9 + 136) = a5[6];
  *(a9 + 152) = v32;
  v33 = *a5;
  *(a9 + 56) = a5[1];
  v34 = a5[3];
  *(a9 + 72) = a5[2];
  *(a9 + 88) = v34;
  *(a9 + 24) = v24;
  *(a9 + 32) = v25;
  *(a9 + 167) = *(a5 + 127);
  *(a9 + 104) = v31;
  *(a9 + 40) = v33;
  v35 = a6[7];
  *(a9 + 272) = a6[6];
  *(a9 + 288) = v35;
  *(a9 + 304) = a6[8];
  v36 = a6[3];
  *(a9 + 208) = a6[2];
  *(a9 + 224) = v36;
  v37 = a6[5];
  *(a9 + 240) = a6[4];
  *(a9 + 256) = v37;
  v38 = a6[1];
  *(a9 + 176) = *a6;
  *(a9 + 192) = v38;
  *(a9 + 320) = v26;
  *(a9 + 328) = v27;
  *(a9 + 336) = a8;
  *(a9 + 344) = v28;
  *(a9 + 352) = a11;
  *(a9 + 368) = a12;
  *(a9 + 384) = a13;
  *(a9 + 392) = a14;
  *(a9 + 400) = v29;
  *(a9 + 401) = v30;
  result = a18;
  *v41 = a17;
  *v40 = a18;
  *(a9 + 440) = a19;
  *(a9 + 448) = a20;
  return result;
}

uint64_t WidgetEngagementData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WidgetEngagementData.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetEngagementData.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t WidgetEngagementData.webEmbedData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t WidgetEngagementData.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v12[6] = *(v1 + 136);
  v13[0] = v3;
  *(v13 + 15) = *(v1 + 167);
  v4 = *(v1 + 56);
  v5 = *(v1 + 88);
  v12[2] = *(v1 + 72);
  v12[3] = v5;
  v12[4] = *(v1 + 104);
  v12[5] = v2;
  v12[0] = *(v1 + 40);
  v12[1] = v4;
  v6 = *(v1 + 120);
  v7 = *(v1 + 152);
  *(a1 + 96) = *(v1 + 136);
  *(a1 + 112) = v7;
  *(a1 + 127) = *(v1 + 167);
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  *(a1 + 32) = *(v1 + 72);
  *(a1 + 48) = v9;
  *(a1 + 64) = *(v1 + 104);
  *(a1 + 80) = v6;
  *a1 = *(v1 + 40);
  *(a1 + 16) = v8;
  return sub_217AD1630(v12, v11);
}

__n128 WidgetEngagementData.articleData.setter(__int128 *a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v12[6] = *(v1 + 136);
  v13[0] = v4;
  *(v13 + 15) = *(v1 + 167);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  v12[2] = *(v1 + 72);
  v12[3] = v6;
  v12[4] = *(v1 + 104);
  v12[5] = v3;
  v12[0] = *(v1 + 40);
  v12[1] = v5;
  sub_217AD2864(v12);
  v7 = a1[4];
  *(v1 + 120) = a1[5];
  v8 = a1[7];
  *(v1 + 136) = a1[6];
  *(v1 + 152) = v8;
  v9 = *a1;
  *(v1 + 56) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 72) = result;
  *(v1 + 88) = v11;
  *(v1 + 104) = v7;
  *(v1 + 167) = *(a1 + 127);
  *(v1 + 40) = v9;
  return result;
}

uint64_t WidgetEngagementData.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[18];
  v20 = v1[17];
  v21 = v3;
  v4 = v1[18];
  v22 = v1[19];
  v5 = v1[12];
  v6 = v1[14];
  v16 = v1[13];
  v7 = v16;
  v17 = v6;
  v8 = v1[14];
  v9 = v1[16];
  v18 = v1[15];
  v10 = v18;
  v19 = v9;
  v11 = v1[12];
  v15[0] = v1[11];
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[19];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_217AF7618(v15, &v14);
}

__n128 WidgetEngagementData.groupData.setter(uint64_t a1)
{
  v3 = v1[18];
  v11[6] = v1[17];
  v11[7] = v3;
  v11[8] = v1[19];
  v4 = v1[14];
  v11[2] = v1[13];
  v11[3] = v4;
  v5 = v1[16];
  v11[4] = v1[15];
  v11[5] = v5;
  v6 = v1[12];
  v11[0] = v1[11];
  v11[1] = v6;
  sub_217AF8104(v11);
  v7 = *(a1 + 112);
  v1[17] = *(a1 + 96);
  v1[18] = v7;
  v1[19] = *(a1 + 128);
  v8 = *(a1 + 48);
  v1[13] = *(a1 + 32);
  v1[14] = v8;
  v9 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v9;
  result = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = result;
  return result;
}

uint64_t WidgetEngagementData.tagData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 328);
  *a1 = *(v1 + 320);
  a1[1] = v2;
}

uint64_t WidgetEngagementData.tagData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 320) = v2;
  *(v1 + 328) = v3;
  return result;
}

uint64_t WidgetEngagementData.topicTag.getter()
{
  v1 = *(v0 + 352);

  return v1;
}

uint64_t WidgetEngagementData.topicTag.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 352) = a1;
  *(v2 + 360) = a2;
  return result;
}

uint64_t WidgetEngagementData.userID.getter()
{
  v1 = *(v0 + 368);

  return v1;
}

uint64_t WidgetEngagementData.userID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 368) = a1;
  *(v2 + 376) = a2;
  return result;
}

uint64_t WidgetEngagementData.engagementURL.getter()
{
  v1 = *(v0 + 384);

  return v1;
}

uint64_t WidgetEngagementData.engagementURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 384) = a1;
  *(v2 + 392) = a2;
  return result;
}

uint64_t WidgetEngagementData.storyType.getter()
{
  v1 = *(v0 + 408);

  return v1;
}

uint64_t WidgetEngagementData.storyType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 408) = a1;
  *(v2 + 416) = a2;
  return result;
}

uint64_t WidgetEngagementData.engagementID.getter()
{
  v1 = *(v0 + 424);

  return v1;
}

uint64_t WidgetEngagementData.engagementID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 424) = a1;
  *(v2 + 432) = a2;
  return result;
}

uint64_t WidgetEngagementData.entryID.getter()
{
  v1 = *(v0 + 440);

  return v1;
}

uint64_t WidgetEngagementData.entryID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 440) = a1;
  *(v2 + 448) = a2;
  return result;
}

unint64_t sub_217BB9DD4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 10:
    case 14:
      result = 0x656D656761676E65;
      break;
    case 2:
      result = 0x6465626D45626577;
      break;
    case 3:
      result = 0x44656C6369747261;
      break;
    case 4:
      result = 0x74614470756F7267;
      break;
    case 5:
      result = 0x61746144676174;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x4D79616C70736964;
      break;
    case 8:
      result = 0x6761546369706F74;
      break;
    case 9:
      result = 0x444972657375;
      break;
    case 11:
      result = 0x6174614465707974;
      break;
    case 12:
      result = 0x6E6F697461636F6CLL;
      break;
    case 13:
      result = 0x70795479726F7473;
      break;
    case 15:
      result = 0x44497972746E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217BB9FA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BBB900(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BB9FCC(uint64_t a1)
{
  v2 = sub_217BBA72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BBA008(uint64_t a1)
{
  v2 = sub_217BBA72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetEngagementData.encode(to:)(void *a1)
{
  sub_217BBB480(0, &qword_2811BC628, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - v5;
  v7 = *v1;
  v47 = v1[1];
  v48 = v7;
  v46 = *(v1 + 16);
  v8 = v1[3];
  v44 = v1[4];
  v45 = v8;
  v9 = *(v1 + 17);
  v79 = *(v1 + 15);
  v80 = v9;
  v81[0] = *(v1 + 19);
  *(v81 + 15) = *(v1 + 167);
  v10 = *(v1 + 7);
  v11 = *(v1 + 11);
  v76 = *(v1 + 9);
  v77 = v11;
  v78 = *(v1 + 13);
  v74 = *(v1 + 5);
  v75 = v10;
  v12 = *(v1 + 18);
  v88 = *(v1 + 17);
  v89 = v12;
  v90 = *(v1 + 19);
  v13 = *(v1 + 14);
  v84 = *(v1 + 13);
  v85 = v13;
  v14 = *(v1 + 16);
  v86 = *(v1 + 15);
  v87 = v14;
  v15 = *(v1 + 12);
  v82 = *(v1 + 11);
  v83 = v15;
  v16 = v1[41];
  v42 = v1[40];
  v43 = v16;
  v41 = v1[42];
  v40 = *(v1 + 344);
  v17 = v1[45];
  v38 = v1[44];
  v39 = v17;
  v18 = v1[47];
  v36 = v1[46];
  v37 = v18;
  v19 = v1[49];
  v34 = v1[48];
  v35 = v19;
  LODWORD(v8) = *(v1 + 400);
  v32 = *(v1 + 401);
  v33 = v8;
  v20 = v1[51];
  v31[3] = v1[52];
  v31[4] = v20;
  v21 = v1[53];
  v31[1] = v1[54];
  v31[2] = v21;
  v22 = v1[56];
  v31[0] = v1[55];
  v23 = a1[3];
  v24 = a1;
  v26 = v25;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  sub_217BBA72C();
  sub_217D89E7C();
  LOBYTE(v54) = 0;
  v27 = v91;
  sub_217D89C6C();
  if (v27)
  {
    return (*(v4 + 8))(v6, v26);
  }

  v29 = v44;
  v28 = v45;
  v91 = v22;
  LOBYTE(v54) = v46;
  LOBYTE(v52[0]) = 1;
  sub_217BBA780();
  sub_217D89CAC();
  *&v54 = v28;
  *(&v54 + 1) = v29;
  LOBYTE(v52[0]) = 2;
  sub_217AE89C8();

  sub_217D89C3C();

  v71 = v79;
  v72 = v80;
  v73[0] = v81[0];
  *(v73 + 15) = *(v81 + 15);
  v68 = v76;
  v69 = v77;
  v70 = v78;
  v66 = v74;
  v67 = v75;
  v65 = 3;
  sub_217AD1630(&v74, &v54);
  sub_217ACF52C();
  v48 = v6;
  sub_217D89CAC();
  v63[5] = v71;
  v63[6] = v72;
  *v64 = v73[0];
  *&v64[15] = *(v73 + 15);
  v63[2] = v68;
  v63[3] = v69;
  v63[4] = v70;
  v63[0] = v66;
  v63[1] = v67;
  sub_217AD2864(v63);
  v60 = v88;
  v61 = v89;
  v62 = v90;
  v56 = v84;
  v57 = v85;
  v58 = v86;
  v59 = v87;
  v54 = v82;
  v55 = v83;
  v53 = 4;
  sub_217AF7618(&v82, v52);
  sub_217A5D3B4();
  sub_217D89CAC();
  v52[7] = v61;
  v52[8] = v62;
  v52[2] = v56;
  v52[3] = v57;
  v52[5] = v59;
  v52[6] = v60;
  v52[4] = v58;
  v52[0] = v54;
  v52[1] = v55;
  sub_217AF8104(v52);
  v50 = v42;
  v51 = v43;
  v49 = 5;
  sub_217AF6B14();

  sub_217D89CAC();

  LOBYTE(v50) = 6;
  sub_217D89CCC();
  LOBYTE(v50) = v40;
  v49 = 7;
  sub_217BBA7D4();
  sub_217D89CAC();
  LOBYTE(v50) = 8;
  sub_217D89C0C();
  LOBYTE(v50) = 9;
  sub_217D89C6C();
  LOBYTE(v50) = 10;
  sub_217D89C6C();
  LOBYTE(v50) = v33;
  v49 = 11;
  sub_217B0B798();
  sub_217D89CAC();
  LOBYTE(v50) = v32;
  v49 = 12;
  sub_217B0BA6C();
  sub_217D89CAC();
  LOBYTE(v50) = 13;
  sub_217D89C0C();
  LOBYTE(v50) = 14;
  sub_217D89C0C();
  LOBYTE(v50) = 15;
  sub_217D89C0C();
  return (*(v4 + 8))(v48, v26);
}

unint64_t sub_217BBA72C()
{
  result = qword_2811C1A38[0];
  if (!qword_2811C1A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C1A38);
  }

  return result;
}

unint64_t sub_217BBA780()
{
  result = qword_2811C1A00;
  if (!qword_2811C1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A00);
  }

  return result;
}

unint64_t sub_217BBA7D4()
{
  result = qword_2811C68E0;
  if (!qword_2811C68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68E0);
  }

  return result;
}

uint64_t WidgetEngagementData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217BBB480(0, &qword_2811BC9C0, MEMORY[0x277D844C8]);
  v120 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BBA72C();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v50 = v6;
    LOBYTE(v52) = 0;
    v9 = sub_217D89B8C();
    v46 = a2;
    v10 = v9;
    v49 = v11;
    LOBYTE(v51[0]) = 1;
    sub_217BBB4E4();
    sub_217D89BCC();
    v12 = v52;
    LOBYTE(v51[0]) = 2;
    sub_217AE8974();
    sub_217D89B5C();
    v43 = v12;
    v13 = v52;
    v48 = v53;

    v98 = 3;
    sub_217ACF4D8();
    sub_217D89BCC();
    v42 = v13;
    v116 = v104;
    v117 = v105;
    *v118 = *v106;
    *&v118[15] = *&v106[15];
    v113 = v101;
    v114 = v102;
    v115 = v103;
    v111 = v99;
    v112 = v100;
    v88 = 4;
    sub_217A5D308();
    sub_217D89BCC();
    *&v110[81] = v94;
    *&v110[97] = v95;
    *&v110[113] = v96;
    *&v110[129] = v97;
    *&v110[17] = v90;
    *&v110[33] = v91;
    *&v110[49] = v92;
    *&v110[65] = v93;
    *&v110[1] = v89;
    LOBYTE(v51[0]) = 5;
    sub_217AF6AC0();
    sub_217D89BCC();
    v41 = v52;
    v14 = v53;
    LOBYTE(v52) = 6;
    v15 = sub_217D89BEC();
    v45 = v14;
    v40 = v15;
    LOBYTE(v51[0]) = 7;
    sub_217BBB538();
    sub_217D89BCC();
    LODWORD(v14) = v52;
    LOBYTE(v52) = 8;
    v39 = sub_217D89B2C();
    v37 = v14;
    v38 = v10;
    v47 = v16;
    LOBYTE(v52) = 9;
    v17 = sub_217D89B8C();
    v44 = v18;
    v19 = v17;
    LOBYTE(v52) = 10;
    v36 = sub_217D89B8C();
    v21 = v20;
    LOBYTE(v51[0]) = 11;
    sub_217B0B744();
    sub_217D89BCC();
    v35 = v52;
    LOBYTE(v51[0]) = 12;
    sub_217B0BA18();
    sub_217D89BCC();
    v34 = v52;
    LOBYTE(v52) = 13;
    v33 = sub_217D89B2C();
    v23 = v22;
    LOBYTE(v52) = 14;
    v32 = sub_217D89B2C();
    v25 = v24;
    v87 = 15;
    v26 = sub_217D89B2C();
    v30 = v27;
    v31 = v26;
    (*(v50 + 8))(v8, v120);
    *&v51[15] = v116;
    *&v51[17] = v117;
    *&v51[19] = *v118;
    *&v51[7] = v112;
    *&v51[9] = v113;
    *&v51[11] = v114;
    *&v51[13] = v115;
    *&v51[5] = v111;
    *(&v51[33] + 7) = *&v110[96];
    *(&v51[35] + 7) = *&v110[112];
    *(&v51[37] + 7) = *&v110[128];
    *(&v51[25] + 7) = *&v110[32];
    *(&v51[27] + 7) = *&v110[48];
    *(&v51[29] + 7) = *&v110[64];
    *(&v51[31] + 7) = *&v110[80];
    *(&v51[21] + 7) = *v110;
    v51[0] = v38;
    v51[1] = v49;
    LOBYTE(v51[2]) = v43;
    *(&v51[2] + 1) = v119[0];
    HIDWORD(v51[2]) = *(v119 + 3);
    v51[3] = v42;
    v51[4] = v48;
    *(&v51[20] + 7) = *&v118[15];
    HIBYTE(v51[39]) = v110[144];
    *(&v51[23] + 7) = *&v110[16];
    v51[40] = v41;
    v51[41] = v45;
    v51[42] = v40;
    LOBYTE(v51[43]) = v37;
    *(&v51[43] + 1) = *v109;
    HIDWORD(v51[43]) = *&v109[3];
    v51[44] = v39;
    v51[45] = v47;
    v51[46] = v19;
    v51[47] = v44;
    v51[48] = v36;
    v51[49] = v21;
    LOBYTE(v51[50]) = v35;
    BYTE1(v51[50]) = v34;
    *(&v51[50] + 2) = v107;
    HIWORD(v51[50]) = v108;
    v51[51] = v33;
    v51[52] = v23;
    v51[53] = v32;
    v51[54] = v25;
    v51[55] = v31;
    v51[56] = v30;
    memcpy(v46, v51, 0x1C8uLL);
    sub_217BBB58C(v51, &v52);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v63 = v116;
    v64 = v117;
    *v65 = *v118;
    v59 = v112;
    v60 = v113;
    v61 = v114;
    *&v65[119] = *&v110[96];
    *&v65[135] = *&v110[112];
    *&v65[151] = *&v110[128];
    v62 = v115;
    v58 = v111;
    *&v65[55] = *&v110[32];
    *&v65[71] = *&v110[48];
    *&v65[87] = *&v110[64];
    *&v65[103] = *&v110[80];
    *&v65[23] = *v110;
    v52 = v38;
    v53 = v49;
    v54 = v43;
    *v55 = v119[0];
    *&v55[3] = *(v119 + 3);
    v56 = v42;
    v57 = v48;
    *&v65[15] = *&v118[15];
    v65[167] = v110[144];
    *&v65[39] = *&v110[16];
    v66 = v41;
    v67 = v45;
    v68 = v40;
    v69 = v37;
    *v70 = *v109;
    *&v70[3] = *&v109[3];
    v71 = v39;
    v72 = v47;
    v73 = v19;
    v74 = v44;
    v75 = v36;
    v76 = v21;
    v77 = v35;
    v78 = v34;
    v79 = v107;
    v80 = v108;
    v81 = v33;
    v82 = v23;
    v83 = v32;
    v84 = v25;
    v85 = v31;
    v86 = v30;
    return sub_217BBB5C4(&v52);
  }
}

void sub_217BBB480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BBA72C();
    v7 = a3(a1, &type metadata for WidgetEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BBB4E4()
{
  result = qword_2811C19F0;
  if (!qword_2811C19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19F0);
  }

  return result;
}

unint64_t sub_217BBB538()
{
  result = qword_2811C68D0;
  if (!qword_2811C68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68D0);
  }

  return result;
}

unint64_t sub_217BBB5F8()
{
  result = qword_2811C1A10;
  if (!qword_2811C1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A10);
  }

  return result;
}

unint64_t sub_217BBB650()
{
  result = qword_2811C1A18;
  if (!qword_2811C1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A18);
  }

  return result;
}

uint64_t sub_217BBB6DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 456))
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

uint64_t sub_217BBB724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217BBB7FC()
{
  result = qword_27CBA1348;
  if (!qword_27CBA1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1348);
  }

  return result;
}

unint64_t sub_217BBB854()
{
  result = qword_2811C1A28;
  if (!qword_2811C1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A28);
  }

  return result;
}

unint64_t sub_217BBB8AC()
{
  result = qword_2811C1A30;
  if (!qword_2811C1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A30);
  }

  return result;
}

uint64_t sub_217BBB900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEE0065707954746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEF10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D79616C70736964 && a2 == 0xEB0000000065646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6761546369706F74 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xED00004C5255746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6174614465707974 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x70795479726F7473 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEC0000004449746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x44497972746E65 && a2 == 0xE700000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

NewsAnalytics::DownloadLocation_optional __swiftcall DownloadLocation.init(rawValue:)(Swift::String rawValue)
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

uint64_t DownloadLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x756F59726F66;
  v4 = 0x6C656E6E616863;
  if (v1 != 3)
  {
    v4 = 0x756F72676B636162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E697A6167616DLL;
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

unint64_t sub_217BBBF28()
{
  result = qword_27CBA1350;
  if (!qword_27CBA1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1350);
  }

  return result;
}

uint64_t sub_217BBBF7C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BBC060(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217BBC130(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BBC21C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x756F59726F66;
  v7 = 0xE700000000000000;
  v8 = 0x6C656E6E616863;
  if (v2 != 3)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEA0000000000646ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656E697A6167616DLL;
    v3 = 0xE800000000000000;
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

unint64_t sub_217BBC37C()
{
  result = qword_27CBA1358;
  if (!qword_27CBA1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1358);
  }

  return result;
}

uint64_t sub_217BBC498()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C75C0);
  __swift_project_value_buffer(v0, qword_2811C75C0);
  return sub_217D8866C();
}

uint64_t FeedLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedLoadEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 20);
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 20);
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 24);
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 24);
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 28);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 32);
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadEvent(0) + 32);
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for FeedLoadEvent(0);
  v5 = Event[5];
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  sub_217A608E0(0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = Event[8];
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t FeedLoadEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedLoadEvent.Model.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t sub_217BBCF0C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedLoadEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedLoadEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedLoadEvent.Model.init(eventData:feedData:feedConfigData:timedData:viewData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v24 = *(a3 + 3);
  v14 = a3[5];
  v15 = *a5;
  v26 = a5[1];
  v25 = *(a5 + 8);
  v16 = sub_217D8899C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for FeedLoadEvent.Model(0);
  v18 = a6 + v17[5];
  *v18 = v8;
  *(v18 + 8) = v9;
  *(v18 + 16) = v10;
  v19 = a6 + v17[6];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  *(v19 + 24) = v24;
  *(v19 + 40) = v14;
  v20 = v17[7];
  v21 = sub_217D889CC();
  result = (*(*(v21 - 8) + 32))(a6 + v20, a4, v21);
  v23 = a6 + v17[8];
  *v23 = v15;
  *(v23 + 8) = v26;
  *(v23 + 16) = v25;
  return result;
}

uint64_t sub_217BBD12C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x666E6F4364656566;
  v4 = 0x74614464656D6974;
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
    v2 = 0x6174614464656566;
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

uint64_t sub_217BBD1D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BBE254(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BBD1FC(uint64_t a1)
{
  v2 = sub_217BBD5D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BBD238(uint64_t a1)
{
  v2 = sub_217BBD5D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BBDC24(0, &qword_27CBA1360, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BBD5D0();
  sub_217D89E7C();
  LOBYTE(v23) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FeedLoadEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    LOBYTE(v23) = *v11;
    v24 = v12;
    v25 = v13;
    v28 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[1];
    v16 = *(v14 + 16);
    v17 = v14[5];
    v23 = *v14;
    v24 = v15;
    LOBYTE(v25) = v16;
    v26 = *(v14 + 3);
    v27 = v17;
    v28 = 2;
    sub_217A6088C();

    sub_217D89CAC();

    LOBYTE(v23) = 3;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v19 = (v3 + v10[8]);
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 8);
    v23 = v20;
    v24 = v21;
    LOWORD(v25) = v19;
    v28 = 4;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BBD5D0()
{
  result = qword_27CBA1368;
  if (!qword_27CBA1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1368);
  }

  return result;
}

uint64_t FeedLoadEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_217D889CC();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBDC24(0, &qword_27CBA1370, MEMORY[0x277D844C8]);
  v34 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for FeedLoadEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BBD5D0();
  v33 = v10;
  v14 = v35;
  sub_217D89E5C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v13;
  v36[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v16 = v31;
  sub_217D89BCC();
  (*(v30 + 32))(v15, v16, v6);
  v39 = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v17 = v15 + v11[5];
  *v17 = v36[0];
  *(v17 + 8) = *&v36[8];
  v39 = 2;
  sub_217A60838();
  sub_217D89BCC();
  v18 = v36[16];
  v19 = v38;
  v20 = v15 + v11[6];
  *v20 = *v36;
  *(v20 + 16) = v18;
  *(v20 + 24) = v37;
  *(v20 + 40) = v19;
  v36[0] = 3;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v21 = v29;
  sub_217D89BCC();
  (*(v28 + 32))(v15 + v11[7], v5, v21);
  v39 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v32 + 8))(v33, v34);
  v22 = *&v36[8];
  v23 = *&v36[16];
  v24 = v15 + v11[8];
  *v24 = *v36;
  *(v24 + 8) = v22;
  *(v24 + 16) = v23;
  sub_217BBDC88(v15, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BBDCEC(v15);
}

void sub_217BBDC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BBD5D0();
    v7 = a3(a1, &type metadata for FeedLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BBDC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BBDCEC(uint64_t a1)
{
  v2 = type metadata accessor for FeedLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BBDE20@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A608E0(0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

uint64_t sub_217BBE098(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217BBE150()
{
  result = qword_27CBA1388;
  if (!qword_27CBA1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1388);
  }

  return result;
}

unint64_t sub_217BBE1A8()
{
  result = qword_27CBA1390;
  if (!qword_27CBA1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1390);
  }

  return result;
}

unint64_t sub_217BBE200()
{
  result = qword_27CBA1398;
  if (!qword_27CBA1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1398);
  }

  return result;
}

uint64_t sub_217BBE254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E6F4364656566 && a2 == 0xEE00617461446769 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
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

uint64_t sub_217BBE41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217BBF3C8(0);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF45C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_217D881AC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  (*(v15 + 16))(&v20 - v16, a1, v14);
  if (swift_dynamicCast())
  {
    sub_217BBE6AC(a1, a2, a3);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = v22;
    if (swift_dynamicCast())
    {
      sub_217BBE6AC(a1, a2, a3);
      (*(v21 + 8))(v8, v18);
    }
  }

  return (*(v15 + 8))(v17, v14);
}