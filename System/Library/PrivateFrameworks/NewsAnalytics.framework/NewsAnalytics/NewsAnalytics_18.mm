unint64_t sub_217C57F0C()
{
  result = qword_27CBA2C28;
  if (!qword_27CBA2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C28);
  }

  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_217D889CC();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C588EC(0, &qword_27CBA2C30, MEMORY[0x277D844C8]);
  v47 = v7;
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C57F0C();
  v48 = v9;
  v13 = v72;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v45;
  v72 = a1;
  v38 = v10;
  v39 = v12;
  LOBYTE(v63) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v15 = v46;
  sub_217D89BCC();
  v16 = v39;
  (*(v44 + 32))(v39, v15, v5);
  LOBYTE(v55) = 1;
  sub_217AF15FC();
  sub_217D89B5C();
  v37 = v5;
  v46 = 0;
  v17 = v38;
  *&v16[v38[5]] = v63;
  LOBYTE(v55) = 2;
  sub_217BF4018();
  sub_217D89BCC();
  v18 = DWORD1(v63);
  v19 = &v16[v17[6]];
  *v19 = v63;
  *(v19 + 1) = v18;
  v54 = 3;
  sub_217ACF4D8();
  sub_217D89BCC();
  v20 = &v16[v17[7]];
  v21 = *v62;
  *(v20 + 6) = v61;
  *(v20 + 7) = v21;
  *(v20 + 127) = *&v62[15];
  v22 = v58;
  *(v20 + 2) = v57;
  *(v20 + 3) = v22;
  v23 = v60;
  *(v20 + 4) = v59;
  *(v20 + 5) = v23;
  v24 = v56;
  *v20 = v55;
  *(v20 + 1) = v24;
  LOBYTE(v49) = 4;
  sub_217AD76BC();
  sub_217D89BCC();
  *&v16[v17[8]] = v63;
  LOBYTE(v49) = 5;
  sub_217B4FFA8();
  sub_217D89BCC();
  *&v16[v17[9]] = v63;
  v53 = 6;
  sub_217A5D308();
  sub_217D89BCC();
  v25 = &v16[v17[10]];
  v26 = v70;
  *(v25 + 6) = v69;
  *(v25 + 7) = v26;
  *(v25 + 8) = v71;
  v27 = v66;
  *(v25 + 2) = v65;
  *(v25 + 3) = v27;
  v28 = v68;
  *(v25 + 4) = v67;
  *(v25 + 5) = v28;
  v29 = v64;
  *v25 = v63;
  *(v25 + 1) = v29;
  v52 = 7;
  sub_217AF6AC0();
  sub_217D89BCC();
  v30 = v50;
  v31 = &v16[v17[11]];
  *v31 = v49;
  *(v31 + 1) = v30;
  v52 = 8;
  sub_217A5E738();
  sub_217D89BCC();
  v32 = v50;
  v33 = v51;
  v34 = &v16[v17[12]];
  *v34 = v49;
  *(v34 + 1) = v32;
  *(v34 + 8) = v33;
  LOBYTE(v49) = 9;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v42 + 32))(&v39[v38[13]], v41, v43);
  v52 = 10;
  sub_217B0B744();
  sub_217D89BCC();
  v39[v38[14]] = v49;
  v52 = 11;
  sub_217B0BA18();
  sub_217D89BCC();
  (*(v14 + 8))(v48, v47);
  v35 = v39;
  v39[v38[15]] = v49;
  sub_217C58950(v35, v40);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return sub_217C589B4(v35);
}

void sub_217C588EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C57F0C();
    v7 = a3(a1, &type metadata for WidgetHeadlineExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C58950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C589B4(uint64_t a1)
{
  v2 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C58AE8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654, &type metadata for WidgetData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0, &type metadata for AlternateHeadlineData);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217A608E0(0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v4, v28);
}

void sub_217C59094(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C568D8(319, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654, &type metadata for WidgetData);
    if (v2 <= 0x3F)
    {
      sub_217C568D8(319, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0, &type metadata for AlternateHeadlineData);
      if (v3 <= 0x3F)
      {
        sub_217C568D8(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
        if (v4 <= 0x3F)
        {
          sub_217C568D8(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_217C568D8(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
            if (v6 <= 0x3F)
            {
              sub_217C568D8(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_217C568D8(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
                if (v8 <= 0x3F)
                {
                  sub_217C568D8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A608E0(319);
                    if (v10 <= 0x3F)
                    {
                      sub_217C568D8(319, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
                      if (v11 <= 0x3F)
                      {
                        sub_217C568D8(319, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
                        if (v12 <= 0x3F)
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

void sub_217C59460(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217C5955C();
    if (v2 <= 0x3F)
    {
      sub_217D889CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217C5955C()
{
  if (!qword_27CBA2C58)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA2C58);
    }
  }
}

unint64_t sub_217C595C0()
{
  result = qword_27CBA2C60;
  if (!qword_27CBA2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C60);
  }

  return result;
}

unint64_t sub_217C59618()
{
  result = qword_27CBA2C68;
  if (!qword_27CBA2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C68);
  }

  return result;
}

unint64_t sub_217C59670()
{
  result = qword_27CBA2C70;
  if (!qword_27CBA2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C70);
  }

  return result;
}

uint64_t sub_217C596C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144746567646977 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD03E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDE60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6174614465707974 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144)
  {

    return 11;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

NewsAnalytics::ContentEnvironmentType_optional __swiftcall ContentEnvironmentType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ContentEnvironmentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x676E6967617473;
  v4 = 24945;
  if (v1 != 3)
  {
    v4 = 1953719668;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69746375646F7270;
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

unint64_t sub_217C59BA8()
{
  result = qword_27CBA2C78;
  if (!qword_27CBA2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2C78);
  }

  return result;
}

uint64_t sub_217C59BFC()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C59CD0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C59D90(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C59FA4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2CB0);
  __swift_project_value_buffer(v0, qword_27CBA2CB0);
  return sub_217D8866C();
}

uint64_t JourneyMessageLinkTapEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageLinkTapEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 20);
  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 20);
  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.urlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 24);
  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.urlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 24);
  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 28);
  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 28);
  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 32);
  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 32);
  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.engagementPlacementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 36);
  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.engagementPlacementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 36);
  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 40);
  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageLinkTapEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageLinkTapEvent(0) + 40);
  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageLinkTapEvent(0);
  v5 = v4[5];
  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v14, v17);
}

uint64_t JourneyMessageLinkTapEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageLinkTapEvent.Model(0) + 20));
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

uint64_t JourneyMessageLinkTapEvent.Model.urlData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageLinkTapEvent.Model(0) + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t JourneyMessageLinkTapEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t JourneyMessageLinkTapEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageLinkTapEvent.Model(0) + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageLinkTapEvent.Model.engagementPlacementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t JourneyMessageLinkTapEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageLinkTapEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 JourneyMessageLinkTapEvent.Model.init(eventData:userBundleSubscriptionContextData:urlData:dialogStyleData:placementData:engagementPlacementOriginationData:purchaseData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v28 = *a3;
  v12 = *(a3 + 2);
  v13 = *(a3 + 3);
  v14 = *a4;
  v15 = *a5;
  v16 = a5[1];
  v17 = *a6;
  v30 = a7[1];
  v31 = *a7;
  v29 = *(a7 + 16);
  v18 = sub_217D8899C();
  v26 = *(a5 + 2);
  v27 = *(a5 + 1);
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  v20 = a8 + v19[5];
  v21 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = *(a2 + 48);
  v22 = a8 + v19[6];
  *v22 = v28;
  *(v22 + 16) = v12;
  *(v22 + 24) = v13;
  *(a8 + v19[7]) = v14;
  v23 = a8 + v19[8];
  *v23 = v15;
  *(v23 + 8) = v16;
  result = v27;
  *(v23 + 16) = v27;
  *(v23 + 32) = v26;
  *(a8 + v19[9]) = v17;
  v25 = a8 + v19[10];
  *v25 = v31;
  *(v25 + 8) = v30;
  *(v25 + 16) = v29;
  return result;
}

unint64_t sub_217C5B1D4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  if (v1 == 5)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x7453676F6C616964;
  if (v1 != 3)
  {
    v4 = 0x6E656D6563616C70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 1)
  {
    v5 = 0x617461446C7275;
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

uint64_t sub_217C5B2DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C5C8E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C5B304(uint64_t a1)
{
  v2 = sub_217C5B8A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5B340(uint64_t a1)
{
  v2 = sub_217C5B8A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C5BEF4(0, &qword_27CBA2CC8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5B8A8();
  sub_217D89E7C();
  v46[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[2];
    v13 = *v11;
    v14 = *v11;
    v43 = v11[1];
    v44 = v12;
    v42 = v13;
    v45 = *(v11 + 48);
    v38 = v14;
    v15 = v11[2];
    v39 = v43;
    v40 = v15;
    v41 = *(v11 + 48);
    v37 = 1;
    sub_217ACC004(&v42, v35);
    sub_217A55B98();
    sub_217D89CAC();
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v36 = v41;
    sub_217ACC69C(v35);
    v16 = (v3 + v10[6]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v29 = *v16;
    v30 = v17;
    v31 = v18;
    *&v32 = v19;
    v34 = 2;
    sub_217B6AB1C();

    sub_217D89CAC();

    LOBYTE(v29) = *(v3 + v10[7]);
    v34 = 3;
    sub_217AFEA44();
    sub_217D89CAC();
    v21 = (v3 + v10[8]);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[5];
    v29 = *v21;
    v30 = v22;
    v31 = v23;
    v32 = *(v21 + 3);
    v33 = v24;
    v34 = 4;
    sub_217AFEC9C();

    sub_217D89CAC();

    LOBYTE(v29) = *(v3 + v10[9]);
    v34 = 5;
    sub_217AFF0A4();
    sub_217D89C3C();
    v25 = (v3 + v10[10]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v25) = *(v25 + 16);
    v29 = v26;
    v30 = v27;
    LOBYTE(v31) = v25;
    v34 = 6;
    sub_217AFF378();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C5B8A8()
{
  result = qword_27CBA2CD0;
  if (!qword_27CBA2CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2CD0);
  }

  return result;
}

uint64_t JourneyMessageLinkTapEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C5BEF4(0, &qword_27CBA2CD8, MEMORY[0x277D844C8]);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_217C5B8A8();
  v30 = v9;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v14 = v28;
  LOBYTE(v35) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v29;
  sub_217D89BCC();
  (*(v27 + 32))(v12, v6, v4);
  v40 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v16 = &v12[v10[5]];
  v17 = v36;
  *v16 = v35;
  *(v16 + 1) = v17;
  *(v16 + 2) = v37;
  v16[48] = v38;
  v39 = 2;
  sub_217B6AAC8();
  sub_217D89BCC();
  v18 = *(&v32 + 1);
  v19 = &v12[v10[6]];
  *v19 = v32;
  *(v19 + 1) = v18;
  *(v19 + 1) = v33;
  v39 = 3;
  sub_217AFE9F0();
  sub_217D89BCC();
  v12[v10[7]] = v32;
  v39 = 4;
  sub_217AFEC48();
  sub_217D89BCC();
  v20 = *(&v32 + 1);
  v21 = &v12[v10[8]];
  *v21 = v32;
  *(v21 + 1) = v20;
  v22 = v34;
  *(v21 + 1) = v33;
  *(v21 + 2) = v22;
  v39 = 5;
  sub_217AFF050();
  sub_217D89B5C();
  v12[v10[9]] = v32;
  v39 = 6;
  sub_217AFF324();
  sub_217D89B5C();
  (*(v14 + 8))(v30, v15);
  v23 = v33;
  v24 = &v12[v10[10]];
  *v24 = v32;
  v24[16] = v23;
  sub_217C5BF58(v12, v26);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_217C5BFBC(v12);
}

void sub_217C5BEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5B8A8();
    v7 = a3(a1, &type metadata for JourneyMessageLinkTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C5BF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C5BFBC(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C5C0F0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62E58(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62E58(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62E58(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A62E58(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217A62E58(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217A62E58(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v15, v18);
}

void sub_217C5C474(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A62E58(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A62E58(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
      if (v3 <= 0x3F)
      {
        sub_217A62E58(319, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
        if (v4 <= 0x3F)
        {
          sub_217A62E58(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
          if (v5 <= 0x3F)
          {
            sub_217A62E58(319, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
            if (v6 <= 0x3F)
            {
              sub_217A62E58(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
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

void sub_217C5C6E8(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CB9F100, &type metadata for EngagementPlacementOriginationData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9F108, &type metadata for PurchaseData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217C5C7E4()
{
  result = qword_27CBA2D00;
  if (!qword_27CBA2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D00);
  }

  return result;
}

unint64_t sub_217C5C83C()
{
  result = qword_27CBA2D08;
  if (!qword_27CBA2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D08);
  }

  return result;
}

unint64_t sub_217C5C894()
{
  result = qword_27CBA2D10;
  if (!qword_27CBA2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D10);
  }

  return result;
}

uint64_t sub_217C5C8E8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x617461446C7275 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453676F6C616964 && a2 == 0xEF61746144656C79 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217DCD720 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144)
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

__n128 UserEventStorageData.init(onDiskSize:prunedSessionCount:prunedSessionSize:totalSessionsCount:oldestSessionAge:newestSessionAge:aggregateStoreGenerationTime:aggregateTotalCount:meanCountOfEvents:standardDeviationOfEvents:totalEventsCount:headlineEventCount:headlinesWithValidTitleEmbeddingsEventCount:headlinesWithInvalidTitleEmbeddingsEventCount:headlinesWithValidBodyEmbeddingsEventCount:headlinesWithInvalidBodyEmbeddingsEventCount:eventCounts:aggregateData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = *(a17 + 80);
  v19 = *(a17 + 88);
  v20 = *(a18 + 80);
  v21 = *(a18 + 88);
  v22 = *(a18 + 90);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 128) = a16;
  v23 = *(a17 + 16);
  *(a9 + 136) = *a17;
  *(a9 + 152) = v23;
  v24 = *(a17 + 48);
  *(a9 + 168) = *(a17 + 32);
  *(a9 + 184) = v24;
  *(a9 + 200) = *(a17 + 64);
  *(a9 + 216) = v18;
  *(a9 + 224) = v19;
  v25 = *(a18 + 16);
  *(a9 + 232) = *a18;
  *(a9 + 248) = v25;
  v26 = *(a18 + 48);
  *(a9 + 264) = *(a18 + 32);
  *(a9 + 280) = v26;
  result = *(a18 + 64);
  *(a9 + 296) = result;
  *(a9 + 312) = v20;
  *(a9 + 320) = v21;
  *(a9 + 322) = v22;
  return result;
}

uint64_t UserEventStorageData.onDiskSize.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 UserEventStorageData.eventCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  *(a1 + 32) = *(v1 + 168);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 200);
  *(a1 + 73) = *(v1 + 209);
  result = *(v1 + 136);
  v4 = *(v1 + 152);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 UserEventStorageData.eventCounts.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 168) = *(a1 + 32);
  *(v1 + 184) = v2;
  *(v1 + 200) = *(a1 + 64);
  *(v1 + 209) = *(a1 + 73);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 136) = *a1;
  *(v1 + 152) = v4;
  return result;
}

__n128 UserEventStorageData.aggregateData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  *a1 = *(v1 + 232);
  *(a1 + 16) = v2;
  v3 = *(v1 + 280);
  *(a1 + 32) = *(v1 + 264);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 296);
  result = *(v1 + 307);
  *(a1 + 75) = result;
  return result;
}

__n128 UserEventStorageData.aggregateData.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 264) = *(a1 + 32);
  *(v1 + 280) = v2;
  *(v1 + 296) = *(a1 + 64);
  *(v1 + 307) = *(a1 + 75);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 232) = *a1;
  *(v1 + 248) = v4;
  return result;
}

unint64_t sub_217C5D01C(char a1)
{
  result = 0x69536B7369446E6FLL;
  switch(a1)
  {
    case 1:
    case 3:
    case 11:
      result = 0xD000000000000012;
      break;
    case 2:
    case 8:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD00000000000002BLL;
      break;
    case 13:
      result = 0xD00000000000002DLL;
      break;
    case 14:
      result = 0xD00000000000002ALL;
      break;
    case 15:
      result = 0xD00000000000002CLL;
      break;
    case 16:
      result = 0x756F43746E657665;
      break;
    case 17:
      result = 0x7461676572676761;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C5D234@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C5E100(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C5D268(uint64_t a1)
{
  v2 = sub_217C5D7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5D2A4(uint64_t a1)
{
  v2 = sub_217C5D7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEventStorageData.encode(to:)(void *a1)
{
  sub_217C5DE8C(0, &qword_2811BC638, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  LODWORD(v23) = *(v1 + 8);
  v8 = *(v1 + 16);
  v21[11] = *(v1 + 24);
  v22 = v8;
  v9 = *(v1 + 32);
  v21[9] = *(v1 + 40);
  v21[10] = v9;
  v10 = *(v1 + 48);
  v21[7] = *(v1 + 56);
  v21[8] = v10;
  v11 = *(v1 + 64);
  v12 = *(v1 + 96);
  v21[3] = *(v1 + 88);
  v21[4] = v12;
  v13 = *(v1 + 112);
  v21[5] = *(v1 + 104);
  v21[6] = v11;
  v14 = *(v1 + 128);
  v21[1] = *(v1 + 120);
  v21[2] = v13;
  v21[0] = v14;
  v15 = *(v1 + 184);
  v32 = *(v1 + 168);
  v33 = v15;
  v34[0] = *(v1 + 200);
  *(v34 + 9) = *(v1 + 209);
  v16 = *(v1 + 152);
  v30 = *(v1 + 136);
  v31 = v16;
  v17 = *(v1 + 280);
  v37 = *(v1 + 264);
  v38 = v17;
  v39[0] = *(v1 + 296);
  *(v39 + 11) = *(v1 + 307);
  v18 = *(v1 + 248);
  v35 = *(v1 + 232);
  v36 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5D7F4();
  sub_217D89E7C();
  LOBYTE(v24) = 0;
  v19 = v40;
  sub_217D89C5C();
  if (v19)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v40 = v5;
  LOBYTE(v24) = 1;
  sub_217D89CCC();
  LOBYTE(v24) = 2;
  sub_217D89CCC();
  LOBYTE(v24) = 3;
  sub_217D89CCC();
  LOBYTE(v24) = 4;
  sub_217D89CCC();
  LOBYTE(v24) = 5;
  sub_217D89CCC();
  LOBYTE(v24) = 6;
  sub_217D89CCC();
  LOBYTE(v24) = 7;
  sub_217D89CCC();
  LOBYTE(v24) = 8;
  sub_217D89C8C();
  LOBYTE(v24) = 9;
  v22 = v7;
  v23 = v4;
  sub_217D89C8C();
  LOBYTE(v24) = 10;
  sub_217D89CCC();
  LOBYTE(v24) = 11;
  sub_217D89CCC();
  LOBYTE(v24) = 12;
  sub_217D89CCC();
  LOBYTE(v24) = 13;
  sub_217D89CCC();
  LOBYTE(v24) = 14;
  sub_217D89CCC();
  LOBYTE(v24) = 15;
  sub_217D89CCC();
  v26 = v32;
  v27 = v33;
  *v28 = v34[0];
  *&v28[9] = *(v34 + 9);
  v24 = v30;
  v25 = v31;
  v29 = 16;
  sub_217B6DDD0();
  sub_217D89C3C();
  v26 = v37;
  v27 = v38;
  *v28 = v39[0];
  *&v28[11] = *(v39 + 11);
  v24 = v35;
  v25 = v36;
  v29 = 17;
  sub_217B31EB8();
  sub_217D89C3C();
  return (*(v40 + 8))(v22, v23);
}

unint64_t sub_217C5D7F4()
{
  result = qword_2811C1B88;
  if (!qword_2811C1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B88);
  }

  return result;
}

uint64_t UserEventStorageData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C5DE8C(0, &qword_2811BC9D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5D7F4();
  sub_217D89E5C();
  if (!v2)
  {
    LOBYTE(v45) = 0;
    v10 = sub_217D89B7C();
    v62 = v11 & 1;
    LOBYTE(v45) = 1;
    v12 = sub_217D89BEC();
    LOBYTE(v45) = 2;
    v63 = sub_217D89BEC();
    LOBYTE(v45) = 3;
    v43 = sub_217D89BEC();
    LOBYTE(v45) = 4;
    v42 = sub_217D89BEC();
    LOBYTE(v45) = 5;
    v41 = sub_217D89BEC();
    LOBYTE(v45) = 6;
    v40 = sub_217D89BEC();
    LOBYTE(v45) = 7;
    v39 = sub_217D89BEC();
    LOBYTE(v45) = 8;
    sub_217D89BAC();
    v15 = v14;
    LOBYTE(v45) = 9;
    sub_217D89BAC();
    v17 = v16;
    LOBYTE(v45) = 10;
    v38 = sub_217D89BEC();
    LOBYTE(v45) = 11;
    v37 = sub_217D89BEC();
    LOBYTE(v45) = 12;
    v36 = sub_217D89BEC();
    LOBYTE(v45) = 13;
    v35 = sub_217D89BEC();
    LOBYTE(v45) = 14;
    v34 = sub_217D89BEC();
    LOBYTE(v45) = 15;
    v33 = sub_217D89BEC();
    v53 = 16;
    sub_217B6DD78();
    sub_217D89B5C();
    v31 = v55;
    v32 = v54;
    v29 = v57;
    v30 = v56;
    v28 = v58;
    v27 = v59;
    v26 = v60;
    HIDWORD(v25) = v61;
    v44 = 17;
    sub_217B31E60();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v18 = v50;
    v19 = v51;
    v20 = v52;
    v21 = v62;
    *a2 = v10;
    *(a2 + 8) = v21;
    v22 = v63;
    *(a2 + 16) = v12;
    *(a2 + 24) = v22;
    *(a2 + 32) = v43;
    *(a2 + 40) = v42;
    *(a2 + 48) = v41;
    *(a2 + 56) = v40;
    *(a2 + 64) = v39;
    *(a2 + 72) = v15;
    *(a2 + 80) = v17;
    *(a2 + 88) = v38;
    *(a2 + 96) = v37;
    *(a2 + 104) = v36;
    *(a2 + 112) = v35;
    *(a2 + 120) = v34;
    *(a2 + 128) = v33;
    *(a2 + 152) = v31;
    *(a2 + 136) = v32;
    *(a2 + 184) = v29;
    *(a2 + 168) = v30;
    *(a2 + 200) = v28;
    *(a2 + 208) = v27;
    *(a2 + 216) = v26;
    *(a2 + 224) = BYTE4(v25);
    v23 = v46;
    *(a2 + 232) = v45;
    *(a2 + 248) = v23;
    v24 = v48;
    *(a2 + 264) = v47;
    *(a2 + 280) = v24;
    *(a2 + 296) = v49;
    *(a2 + 312) = v18;
    *(a2 + 320) = v19;
    *(a2 + 322) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C5DE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5D7F4();
    v7 = a3(a1, &type metadata for UserEventStorageData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C5DF30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 323))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217C5DF50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 312) = 0;
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
    *(result + 322) = 0;
    *(result + 320) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 323) = v3;
  return result;
}

unint64_t sub_217C5DFFC()
{
  result = qword_27CBA2D18;
  if (!qword_27CBA2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D18);
  }

  return result;
}

unint64_t sub_217C5E054()
{
  result = qword_2811C1B78;
  if (!qword_2811C1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B78);
  }

  return result;
}

unint64_t sub_217C5E0AC()
{
  result = qword_2811C1B80;
  if (!qword_2811C1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B80);
  }

  return result;
}

uint64_t sub_217C5E100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536B7369446E6FLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD12B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD12D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD12F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1310 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1330 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DD1350 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1370 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1390 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DD13B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD13D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD13F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000217DD1410 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000002DLL && 0x8000000217DD1440 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000217DD1470 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000002CLL && 0x8000000217DD14A0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x756F43746E657665 && a2 == 0xEB0000000073746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xED00006174614465)
  {

    return 17;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

NewsAnalytics::MediaUserAction_optional __swiftcall MediaUserAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaUserAction.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 2036427888;
    if (v1 != 2)
    {
      v7 = 0x6573756170;
    }

    if (*v0)
    {
      v6 = 0x616C506F54706174;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6168436465657073;
    v3 = 0x636172547478656ELL;
    if (v1 != 7)
    {
      v3 = 0x6B63614270696B73;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x656D75736572;
    if (v1 != 4)
    {
      v4 = 0x64656C696166;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_217C5E818()
{
  result = qword_27CBA2D20;
  if (!qword_27CBA2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D20);
  }

  return result;
}

uint64_t sub_217C5E86C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D83540(v3, v1);
  return sub_217D89E3C();
}

uint64_t sub_217C5E8BC(uint64_t a1)
{
  v2 = *v1;
  sub_217D89E1C();
  sub_217D83540(v4, v2);
  return sub_217D89E3C();
}

uint64_t sub_217C5E90C@<X0>(uint64_t *a1@<X8>)
{
  result = MediaUserAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217C5E9F4()
{
  result = qword_27CBA2D28;
  if (!qword_27CBA2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D28);
  }

  return result;
}

uint64_t MediaData.mediaID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MediaData.mediaID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MediaData.mediaDuration.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

_BYTE *MediaData.init(mediaType:mediaID:mediaDuration:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 28) = BYTE4(a4) & 1;
  return result;
}

uint64_t sub_217C5EB7C()
{
  v1 = 0x4449616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x727544616964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954616964656DLL;
  }
}

uint64_t sub_217C5EBE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C5F3FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C5EC10(uint64_t a1)
{
  v2 = sub_217C5EE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5EC4C(uint64_t a1)
{
  v2 = sub_217C5EE58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaData.encode(to:)(void *a1)
{
  sub_217C5F140(0, &qword_2811BC4D0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v10;
  v14 = *(v1 + 6);
  HIDWORD(v13) = v1[28];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5EE58();
  sub_217D89E7C();
  v21 = v9;
  v20 = 0;
  sub_217C5EEAC();
  sub_217D89CAC();
  if (!v2)
  {
    v11 = BYTE4(v13);
    v19 = 1;
    sub_217D89C6C();
    v18 = 2;
    v17 = v11;
    sub_217D89C4C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217C5EE58()
{
  result = qword_2811BD0F0;
  if (!qword_2811BD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0F0);
  }

  return result;
}

unint64_t sub_217C5EEAC()
{
  result = qword_2811BD0C8;
  if (!qword_2811BD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0C8);
  }

  return result;
}

uint64_t MediaData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C5F140(0, &qword_27CBA2D30, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5EE58();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_217C5F1A4();
  sub_217D89BCC();
  v10 = v21;
  v19 = 1;
  v11 = sub_217D89B8C();
  v13 = v12;
  v17 = v11;
  v18 = 2;
  v14 = sub_217D89B6C();
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  *(a2 + 8) = v17;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 28) = BYTE4(v14) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C5F140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5EE58();
    v7 = a3(a1, &type metadata for MediaData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C5F1A4()
{
  result = qword_27CBA2D38;
  if (!qword_27CBA2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D38);
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_217C5F244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
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

uint64_t sub_217C5F28C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217C5F2F8()
{
  result = qword_27CBA2D40;
  if (!qword_27CBA2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D40);
  }

  return result;
}

unint64_t sub_217C5F350()
{
  result = qword_2811BD0E0;
  if (!qword_2811BD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0E0);
  }

  return result;
}

unint64_t sub_217C5F3A8()
{
  result = qword_2811BD0E8;
  if (!qword_2811BD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0E8);
  }

  return result;
}

uint64_t sub_217C5F3FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449616964656DLL && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727544616964656DLL && a2 == 0xED00006E6F697461)
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

uint64_t sub_217C5F580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x756F436465646461 && a2 == 0xEA0000000000746ELL)
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

uint64_t sub_217C5F610(uint64_t a1)
{
  v2 = sub_217C5F7D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5F64C(uint64_t a1)
{
  v2 = sub_217C5F7D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsAddFavoritesSyncData.encode(to:)(void *a1)
{
  sub_217C5F9A4(0, &qword_27CBA2D48, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5F7D0();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C5F7D0()
{
  result = qword_27CBA2D50;
  if (!qword_27CBA2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D50);
  }

  return result;
}

uint64_t SportsAddFavoritesSyncData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217C5F9A4(0, &qword_27CBA2D58, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5F7D0();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C5F9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5F7D0();
    v7 = a3(a1, &type metadata for SportsAddFavoritesSyncData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C5FA28(void *a1)
{
  sub_217C5F9A4(0, &qword_27CBA2D48, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5F7D0();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C5FB94()
{
  result = qword_27CBA2D60;
  if (!qword_27CBA2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D60);
  }

  return result;
}

unint64_t sub_217C5FBEC()
{
  result = qword_27CBA2D68;
  if (!qword_27CBA2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D68);
  }

  return result;
}

unint64_t sub_217C5FC44()
{
  result = qword_27CBA2D70;
  if (!qword_27CBA2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D70);
  }

  return result;
}

uint64_t DebugData.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugData.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C5FD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_217C5FDC8(uint64_t a1)
{
  v2 = sub_217C5FF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5FE04(uint64_t a1)
{
  v2 = sub_217C5FF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1)
{
  sub_217C60164(0, &qword_27CBA2D78, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5FF8C();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C5FF8C()
{
  result = qword_27CBA2D80;
  if (!qword_27CBA2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D80);
  }

  return result;
}

uint64_t DebugData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C60164(0, &qword_27CBA2D88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5FF8C();
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

void sub_217C60164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C5FF8C();
    v7 = a3(a1, &type metadata for DebugData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C601E0(void *a1)
{
  sub_217C60164(0, &qword_27CBA2D78, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C5FF8C();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C60340()
{
  result = qword_27CBA2D90;
  if (!qword_27CBA2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D90);
  }

  return result;
}

unint64_t sub_217C60398()
{
  result = qword_27CBA2D98;
  if (!qword_27CBA2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2D98);
  }

  return result;
}

unint64_t sub_217C603F0()
{
  result = qword_27CBA2DA0;
  if (!qword_27CBA2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DA0);
  }

  return result;
}

NewsAnalytics::NotificationInterruptionLevel __swiftcall NotificationInterruptionLevel.init(_:)(UNNotificationInterruptionLevel a1)
{
  if (a1 < 4)
  {
    v2 = a1 + 1;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  return a1;
}

NewsAnalytics::NotificationInterruptionLevel __swiftcall NotificationInterruptionLevel.init(_:)(UNNotificationInterruptionLevel_optional a1)
{
  if (a1.is_nil || a1.value > UNNotificationInterruptionLevelCritical)
  {
    v2 = 0;
  }

  else
  {
    v2 = LOBYTE(a1.value) + 1;
  }

  *v1 = v2;
  return a1.value;
}

NewsAnalytics::BannerAdData __swiftcall BannerAdData.init(isInteractive:isDownloadable:isVideo:)(Swift::Bool isInteractive, Swift::Bool isDownloadable, Swift::Bool isVideo)
{
  *v3 = isInteractive;
  v3[1] = isDownloadable;
  v3[2] = isVideo;
  result.isInteractive = isInteractive;
  return result;
}

uint64_t sub_217C60518()
{
  v1 = 0x6F6C6E776F447369;
  if (*v0 != 1)
  {
    v1 = 0x6F656469567369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617265746E497369;
  }
}

uint64_t sub_217C6058C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C60DA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C605B4(uint64_t a1)
{
  v2 = sub_217C607CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C605F0(uint64_t a1)
{
  v2 = sub_217C607CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BannerAdData.encode(to:)(void *a1)
{
  sub_217C60A14(0, &qword_2811BC818, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v11 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C607CC();
  sub_217D89E7C();
  v14 = 0;
  v8 = v10[1];
  sub_217D89C7C();
  if (!v8)
  {
    v13 = 1;
    sub_217D89C7C();
    v12 = 2;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C607CC()
{
  result = qword_2811C7AF0;
  if (!qword_2811C7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AF0);
  }

  return result;
}

uint64_t BannerAdData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C60A14(0, &qword_27CBA2DA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C607CC();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    v18 = sub_217D89B9C() & 1;
    v15 = 1;
    v17 = sub_217D89B9C() & 1;
    v14 = 2;
    v11 = sub_217D89B9C();
    (*(v7 + 8))(v9, v6);
    v12 = v17;
    *a2 = v18;
    a2[1] = v12;
    a2[2] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C60A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C607CC();
    v7 = a3(a1, &type metadata for BannerAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C60A7C()
{
  result = qword_2811C7AD0;
  if (!qword_2811C7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AD0);
  }

  return result;
}

unint64_t sub_217C60AD4()
{
  result = qword_2811C7AD8;
  if (!qword_2811C7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AD8);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BannerAdData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for BannerAdData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_217C60C9C()
{
  result = qword_27CBA2DB0;
  if (!qword_27CBA2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DB0);
  }

  return result;
}

unint64_t sub_217C60CF4()
{
  result = qword_2811C7AE0;
  if (!qword_2811C7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AE0);
  }

  return result;
}

unint64_t sub_217C60D4C()
{
  result = qword_2811C7AE8;
  if (!qword_2811C7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AE8);
  }

  return result;
}

uint64_t sub_217C60DA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617265746E497369 && a2 == 0xED00006576697463;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6E776F447369 && a2 == 0xEE00656C62616461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F656469567369 && a2 == 0xE700000000000000)
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

NewsAnalytics::EventPath_optional __swiftcall EventPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 48;
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
      goto LABEL_65;
    case 47:
      v5 = 47;
LABEL_65:
      v6 = v5;
      break;
    case 48:
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
    case 65:
      v6 = 65;
      break;
    default:
      v6 = 66;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_217C6115C()
{
  v0 = EventPath.rawValue.getter();
  v2 = v1;
  if (v0 == EventPath.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217C611FC()
{
  result = qword_27CBA2DB8;
  if (!qword_27CBA2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DB8);
  }

  return result;
}

uint64_t sub_217C61250()
{
  sub_217D89E1C();
  EventPath.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C612B8(uint64_t a1)
{
  EventPath.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217C6131C(uint64_t a1)
{
  sub_217D89E1C();
  EventPath.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C6138C@<X0>(uint64_t *a1@<X8>)
{
  result = EventPath.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EventPath(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBF)
  {
    goto LABEL_17;
  }

  if (a2 + 65 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 65) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 65;
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

      return (*a1 | (v4 << 8)) - 65;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 65;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x42;
  v8 = v6 - 66;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventPath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 65) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBF)
  {
    v4 = 0;
  }

  if (a2 > 0xBE)
  {
    v5 = ((a2 - 191) >> 8) + 1;
    *result = a2 + 65;
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
    *result = a2 + 65;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C615B4()
{
  result = qword_27CBA2DC0;
  if (!qword_27CBA2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DC0);
  }

  return result;
}

uint64_t sub_217C61670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DD14D0 == a2)
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

uint64_t sub_217C61704(uint64_t a1)
{
  v2 = sub_217C618D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C61740(uint64_t a1)
{
  v2 = sub_217C618D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementOriginationData.encode(to:)(void *a1)
{
  sub_217C61B18(0, &qword_27CBA2DC8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C618D8();
  sub_217D89E7C();
  v11 = v8;
  sub_217C6192C();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C618D8()
{
  result = qword_27CBA2DD0;
  if (!qword_27CBA2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DD0);
  }

  return result;
}

unint64_t sub_217C6192C()
{
  result = qword_27CBA2DD8;
  if (!qword_27CBA2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DD8);
  }

  return result;
}

uint64_t AudioEngagementOriginationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C61B18(0, &qword_27CBA2DE0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C618D8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C61B7C();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C61B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C618D8();
    v7 = a3(a1, &type metadata for AudioEngagementOriginationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C61B7C()
{
  result = qword_27CBA2DE8;
  if (!qword_27CBA2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DE8);
  }

  return result;
}

unint64_t sub_217C61C2C()
{
  result = qword_27CBA2DF0;
  if (!qword_27CBA2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DF0);
  }

  return result;
}

unint64_t sub_217C61C84()
{
  result = qword_27CBA2DF8;
  if (!qword_27CBA2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2DF8);
  }

  return result;
}

unint64_t sub_217C61CDC()
{
  result = qword_27CBA2E00;
  if (!qword_27CBA2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2E00);
  }

  return result;
}

uint64_t AdSizeData.init(width:height:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_217C61DA0()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_217C61DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
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

uint64_t sub_217C61EA8(uint64_t a1)
{
  v2 = sub_217C62094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C61EE4(uint64_t a1)
{
  v2 = sub_217C62094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdSizeData.encode(to:)(void *a1)
{
  sub_217C62298(0, &qword_2811BC8B0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C62094();
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

unint64_t sub_217C62094()
{
  result = qword_2811C8018;
  if (!qword_2811C8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8018);
  }

  return result;
}

uint64_t AdSizeData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217C62298(0, &qword_27CBA2E08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C62094();
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

void sub_217C62298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C62094();
    v7 = a3(a1, &type metadata for AdSizeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C62358()
{
  result = qword_27CBA2E10;
  if (!qword_27CBA2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2E10);
  }

  return result;
}

unint64_t sub_217C623B0()
{
  result = qword_2811C8008;
  if (!qword_2811C8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8008);
  }

  return result;
}

unint64_t sub_217C62408()
{
  result = qword_2811C8010;
  if (!qword_2811C8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8010);
  }

  return result;
}

NewsAnalytics::UserChannelContextData __swiftcall UserChannelContextData.init(isFollowing:isBlocked:paidSubscriptionStatus:paidSubscriptionOrigin:)(Swift::Bool isFollowing, Swift::Bool isBlocked, NewsAnalytics::SubscriptionStatus paidSubscriptionStatus, NewsAnalytics::SubscriptionOrigin paidSubscriptionOrigin)
{
  v5 = *paidSubscriptionStatus;
  v6 = *paidSubscriptionOrigin;
  *v4 = isFollowing;
  v4[1] = isBlocked;
  v4[2] = v5;
  v4[3] = v6;
  result.isFollowing = isFollowing;
  return result;
}

uint64_t sub_217C62550()
{
  v1 = 0x776F6C6C6F467369;
  if (*v0)
  {
    v1 = 0x656B636F6C427369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_217C625E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C62EE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C62608(uint64_t a1)
{
  v2 = sub_217C6288C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C62644(uint64_t a1)
{
  v2 = sub_217C6288C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserChannelContextData.encode(to:)(void *a1)
{
  sub_217C62BD4(0, &qword_2811BC5E0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  HIDWORD(v13) = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C6288C();
  sub_217D89E7C();
  v21 = 0;
  sub_217D89C7C();
  if (!v2)
  {
    v10 = BYTE4(v13);
    v11 = v14;
    v20 = 1;
    sub_217D89C7C();
    v19 = v11;
    v18 = 2;
    sub_217C628E0();
    sub_217D89CAC();
    v17 = v10;
    v16 = 3;
    sub_217C62934();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217C6288C()
{
  result = qword_2811C01F0[0];
  if (!qword_2811C01F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C01F0);
  }

  return result;
}

unint64_t sub_217C628E0()
{
  result = qword_2811C2E20;
  if (!qword_2811C2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E20);
  }

  return result;
}

unint64_t sub_217C62934()
{
  result = qword_2811C2E38;
  if (!qword_2811C2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E38);
  }

  return result;
}

uint64_t UserChannelContextData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C62BD4(0, &qword_2811BC980, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C6288C();
  sub_217D89E5C();
  if (!v2)
  {
    v20 = 0;
    v22 = sub_217D89B9C() & 1;
    v19 = 1;
    v21 = sub_217D89B9C() & 1;
    v17 = 2;
    sub_217C62C38();
    sub_217D89BCC();
    v10 = v18;
    v15 = 3;
    sub_217C62C8C();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v12 = v16;
    v13 = v21;
    *a2 = v22;
    a2[1] = v13;
    a2[2] = v10;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C62BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C6288C();
    v7 = a3(a1, &type metadata for UserChannelContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C62C38()
{
  result = qword_2811C2E10;
  if (!qword_2811C2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E10);
  }

  return result;
}

unint64_t sub_217C62C8C()
{
  result = qword_2811C2E28;
  if (!qword_2811C2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserChannelContextData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UserChannelContextData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_217C62DDC()
{
  result = qword_27CBA2E18;
  if (!qword_27CBA2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2E18);
  }

  return result;
}

unint64_t sub_217C62E34()
{
  result = qword_2811C01E0;
  if (!qword_2811C01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C01E0);
  }

  return result;
}

unint64_t sub_217C62E8C()
{
  result = qword_2811C01E8;
  if (!qword_2811C01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C01E8);
  }

  return result;
}

uint64_t sub_217C62EE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C6C6F467369 && a2 == 0xEB00000000676E69;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656B636F6C427369 && a2 == 0xE900000000000064 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD14F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD1510 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217C630A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217C63318(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217D881AC();
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(v13 - v10, a1, v9);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(v8, v5);
    sub_217C633D4(0);
    sub_217D87A4C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217D8D8F0;
    sub_217D87A1C();
  }

  else
  {
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

void sub_217C63318(uint64_t a1)
{
  if (!qword_2811C8870)
  {
    type metadata accessor for AppSessionStartEvent(255);
    sub_217C6337C();
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8870);
    }
  }
}

unint64_t sub_217C6337C()
{
  result = qword_2811C2300[0];
  if (!qword_2811C2300[0])
  {
    type metadata accessor for AppSessionStartEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2300);
  }

  return result;
}

void sub_217C633D4(uint64_t a1)
{
  if (!qword_2811BC4C0)
  {
    sub_217D87A4C();
    v1 = sub_217D89D0C();
    if (!v2)
    {
      atomic_store(v1, &qword_2811BC4C0);
    }
  }
}

uint64_t sub_217C6342C()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA2E20);
  v1 = __swift_project_value_buffer(v0, qword_27CBA2E20);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217C63518()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA2E38);
  v1 = __swift_project_value_buffer(v0, qword_27CBA2E38);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217C635D8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2E50);
  __swift_project_value_buffer(v0, qword_27CBA2E50);
  return sub_217D8866C();
}

uint64_t VideoAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VideoAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdImpressionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 20);
  sub_217A6018C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 24);
  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 24);
  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 28);
  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 28);
  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 32);
  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 32);
  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 36);
  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 36);
  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 40);
  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 40);
  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 44);
  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C641FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t VideoAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 44);
  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for VideoAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A6018C(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v16, v19);
}

uint64_t VideoAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_217C64788@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t VideoAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 24));
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

uint64_t VideoAdImpressionEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 28);
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

uint64_t VideoAdImpressionEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t VideoAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t VideoAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

__n128 VideoAdImpressionEvent.Model.init(adUserData:eventData:userBundleSubscriptionContextData:channelData:videoAdData:adPlacementData:adFeedData:adGroupData:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>)
{
  v12 = a1[1];
  v13 = a4[1];
  v14 = *(a4 + 16);
  v15 = *(a4 + 17);
  v16 = a4[3];
  v17 = a4[4];
  v30 = *a5;
  v29 = *(a5 + 1);
  v27 = *a4;
  v28 = *(a5 + 2);
  v31 = a6[1];
  v32 = *a6;
  v33 = *a7;
  v34 = *a8;
  *a9 = *a1;
  *(a9 + 1) = v12;
  v18 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  v19 = v18[5];
  v20 = sub_217D8899C();
  (*(*(v20 - 8) + 32))(&a9[v19], a2, v20);
  v21 = &a9[v18[6]];
  v22 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 1) = v22;
  result = *(a3 + 32);
  *(v21 + 2) = result;
  v21[48] = *(a3 + 48);
  v24 = &a9[v18[7]];
  *v24 = v27;
  *(v24 + 1) = v13;
  v24[16] = v14;
  v24[17] = v15;
  *(v24 + 3) = v16;
  *(v24 + 4) = v17;
  v25 = &a9[v18[8]];
  *v25 = v30;
  *(v25 + 1) = v29;
  *(v25 + 2) = v28;
  v26 = &a9[v18[9]];
  *v26 = v32;
  *(v26 + 1) = v31;
  a9[v18[10]] = v33;
  a9[v18[11]] = v34;
  return result;
}

uint64_t sub_217C64B5C()
{
  v1 = *v0;
  v2 = 0x6144726573556461;
  v3 = 0x6144646565466461;
  if (v1 != 6)
  {
    v3 = 0x4470756F72476461;
  }

  v4 = 0x4464416F65646976;
  if (v1 != 4)
  {
    v4 = 0x6D6563616C506461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x746144746E657665;
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

uint64_t sub_217C64C84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C66418(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C64CAC(uint64_t a1)
{
  v2 = sub_217C65250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C64CE8(uint64_t a1)
{
  v2 = sub_217C65250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C6594C(0, &qword_27CBA2E68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C65250();
  sub_217D89E7C();
  v10 = v3[1];
  *&v41[0] = *v3;
  *(&v41[0] + 1) = v10;
  LOBYTE(v37) = 0;
  sub_217A586D4();

  sub_217D89CAC();

  if (!v2)
  {
    v11 = type metadata accessor for VideoAdImpressionEvent.Model(0);
    v43[0] = 1;
    sub_217D8899C();
    sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
    sub_217D89CAC();
    v12 = v3 + v11[6];
    v13 = *(v12 + 1);
    v41[0] = *v12;
    v41[1] = v13;
    v15 = *v12;
    v14 = *(v12 + 1);
    v41[2] = *(v12 + 2);
    v42 = v12[48];
    v37 = v15;
    v38 = v14;
    v39 = *(v12 + 2);
    v40 = v12[48];
    v36 = 2;
    sub_217ACC004(v41, v34);
    sub_217A55B98();
    sub_217D89CAC();
    v34[0] = v37;
    v34[1] = v38;
    v34[2] = v39;
    v35 = v40;
    sub_217ACC69C(v34);
    v17 = v3 + v11[7];
    v18 = *(v17 + 1);
    v19 = v17[16];
    v20 = v17[17];
    v21 = *(v17 + 3);
    v22 = *(v17 + 4);
    v29 = *v17;
    v30 = v18;
    LOBYTE(v31) = v19;
    BYTE1(v31) = v20;
    v32 = v21;
    v33 = v22;
    HIBYTE(v28) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v23 = v3 + v11[8];
    v24 = *(v23 + 1);
    v25 = *(v23 + 2);
    LODWORD(v29) = *v23;
    v30 = v24;
    v31 = v25;
    HIBYTE(v28) = 4;
    sub_217BD4488();

    sub_217D89CAC();

    v26 = (v3 + v11[9]);
    v27 = v26[1];
    v29 = *v26;
    v30 = v27;
    HIBYTE(v28) = 5;
    sub_217B3CE84();

    sub_217D89CAC();

    LOBYTE(v29) = *(v3 + v11[10]);
    HIBYTE(v28) = 6;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v29) = *(v3 + v11[11]);
    HIBYTE(v28) = 7;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C65250()
{
  result = qword_27CBA2E70;
  if (!qword_27CBA2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2E70);
  }

  return result;
}

uint64_t VideoAdImpressionEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_217D8899C();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C6594C(0, &qword_27CBA2E78, MEMORY[0x277D844C8]);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_217C65250();
  v40 = v9;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v14 = v6;
  v15 = v37;
  v35 = v4;
  v16 = v12;
  LOBYTE(v42) = 0;
  sub_217A5867C();
  sub_217D89BCC();
  v17 = *(&v47 + 1);
  *v12 = v47;
  *(v12 + 1) = v17;
  LOBYTE(v47) = 1;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v18 = v35;
  sub_217D89BCC();
  (*(v15 + 32))(&v12[v10[5]], v14, v18);
  v52 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v19 = &v12[v10[6]];
  v20 = v48;
  *v19 = v47;
  *(v19 + 1) = v20;
  *(v19 + 2) = v49;
  v19[48] = v50;
  v51 = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v21 = v38;
  v22 = v43;
  v23 = v44;
  v24 = BYTE1(v44);
  v25 = v45;
  v26 = v46;
  v27 = &v12[v10[7]];
  *v27 = v42;
  *(v27 + 1) = v22;
  v27[16] = v23;
  v27[17] = v24;
  *(v27 + 3) = v25;
  *(v27 + 4) = v26;
  v51 = 4;
  sub_217BD4434();
  sub_217D89BCC();
  v28 = v43;
  v29 = v44;
  v30 = &v12[v10[8]];
  *v30 = v42;
  *(v30 + 1) = v28;
  *(v30 + 2) = v29;
  v51 = 5;
  sub_217B3CE30();
  sub_217D89BCC();
  v31 = v43;
  v32 = &v12[v10[9]];
  *v32 = v42;
  *(v32 + 1) = v31;
  v51 = 6;
  sub_217A5BD70();
  sub_217D89B5C();
  v12[v10[10]] = v42;
  v51 = 7;
  sub_217B3D50C();
  v33 = v39;
  sub_217D89B5C();
  (*(v21 + 8))(v40, v33);
  *(v16 + v10[11]) = v42;
  sub_217C659B0(v16, v36);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_217C65A14(v16);
}

void sub_217C6594C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C65250();
    v7 = a3(a1, &type metadata for VideoAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C659B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C65A14(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C65B48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217C641FC(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A6018C(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C641FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C641FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C641FC(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217C641FC(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_217C641FC(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_217C641FC(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v17, v20);
}

void sub_217C65F44(uint64_t a1)
{
  sub_217C641FC(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  if (v1 <= 0x3F)
  {
    sub_217A6018C(319);
    if (v2 <= 0x3F)
    {
      sub_217C641FC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217C641FC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217C641FC(319, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
          if (v5 <= 0x3F)
          {
            sub_217C641FC(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
            if (v6 <= 0x3F)
            {
              sub_217C641FC(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
              if (v7 <= 0x3F)
              {
                sub_217C641FC(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
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

void sub_217C66208(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_27CB9FD68, &type metadata for AdFeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9FD70, &type metadata for AdGroupData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217C66314()
{
  result = qword_27CBA2EA0;
  if (!qword_27CBA2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EA0);
  }

  return result;
}

unint64_t sub_217C6636C()
{
  result = qword_27CBA2EA8;
  if (!qword_27CBA2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EA8);
  }

  return result;
}

unint64_t sub_217C663C4()
{
  result = qword_27CBA2EB0;
  if (!qword_27CBA2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EB0);
  }

  return result;
}

uint64_t sub_217C66418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144726573556461 && a2 == 0xEA00000000006174;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
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

uint64_t sub_217C6679C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C0668);
  __swift_project_value_buffer(v0, qword_2811C0668);
  return sub_217D8866C();
}

uint64_t ArticleViewResumeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleViewResumeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 20);
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 20);
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 24);
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 24);
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 28);
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 28);
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 32);
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 32);
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 36);
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResumeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResumeEvent(0) + 36);
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResumeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleViewResumeEvent(0);
  v5 = v4[5];
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t ArticleViewResumeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewResumeEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleViewResumeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewResumeEvent.Model(0) + 24));
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

uint64_t ArticleViewResumeEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewResumeEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ArticleViewResumeEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewResumeEvent.Model(0) + 32);
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

uint64_t ArticleViewResumeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewResumeEvent.Model(0) + 36);
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

__n128 ArticleViewResumeEvent.Model.init(eventData:viewData:userBundleSubscriptionContextData:orientationData:articleData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 8);
  v14 = *a4;
  v31 = a6[1];
  v32 = *a6;
  v29 = *(a6 + 17);
  v30 = *(a6 + 16);
  v15 = a6[3];
  v16 = a6[4];
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for ArticleViewResumeEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  v20 = a7 + v18[6];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a3 + 32);
  *(v20 + 48) = *(a3 + 48);
  *(a7 + v18[7]) = v14;
  v22 = a7 + v18[8];
  v23 = *(a5 + 48);
  *(v22 + 32) = *(a5 + 32);
  *(v22 + 48) = v23;
  v24 = *(a5 + 16);
  *v22 = *a5;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a5 + 127);
  v25 = *(a5 + 112);
  *(v22 + 96) = *(a5 + 96);
  *(v22 + 112) = v25;
  result = *(a5 + 64);
  v27 = *(a5 + 80);
  *(v22 + 64) = result;
  *(v22 + 80) = v27;
  v28 = a7 + v18[9];
  *v28 = v32;
  *(v28 + 8) = v31;
  *(v28 + 16) = v30;
  *(v28 + 17) = v29;
  *(v28 + 24) = v15;
  *(v28 + 32) = v16;
  return result;
}

uint64_t sub_217C677B0(uint64_t a1)
{
  v2 = sub_217C67CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C677EC(uint64_t a1)
{
  v2 = sub_217C67CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewResumeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C683E4(0, &qword_27CBA2EB8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C67CDC();
  sub_217D89E7C();
  LOBYTE(v51[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleViewResumeEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v70 = v12;
    v71 = v13;
    v72 = v11;
    v69 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[1];
    v67[0] = *v14;
    v67[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v67[2] = v14[2];
    v68 = *(v14 + 48);
    v63 = v17;
    v64 = v16;
    v65 = v14[2];
    v66 = *(v14 + 48);
    v62 = 2;
    sub_217ACC004(v67, v51);
    sub_217A55B98();
    sub_217D89CAC();
    v60[0] = v63;
    v60[1] = v64;
    v60[2] = v65;
    v61 = v66;
    sub_217ACC69C(v60);
    v59 = *(v3 + v10[7]);
    v58 = 3;
    sub_217A4CF88();
    sub_217D89CAC();
    v18 = v3 + v10[8];
    v19 = *(v18 + 96);
    v20 = *(v18 + 64);
    v55 = *(v18 + 80);
    v56 = v19;
    v21 = *(v18 + 96);
    *v57 = *(v18 + 112);
    v22 = *(v18 + 16);
    v23 = *(v18 + 48);
    v52 = *(v18 + 32);
    v53 = v23;
    v24 = *(v18 + 48);
    v54 = *(v18 + 64);
    v25 = *(v18 + 16);
    v51[0] = *v18;
    v51[1] = v25;
    v48 = v55;
    v49 = v21;
    v50[0] = *(v18 + 112);
    v45 = v52;
    v46 = v24;
    v47 = v20;
    *&v57[15] = *(v18 + 127);
    *(v50 + 15) = *(v18 + 127);
    v43 = v51[0];
    v44 = v22;
    v42 = 4;
    sub_217AD1630(v51, v40);
    sub_217ACF52C();
    sub_217D89CAC();
    v40[6] = v49;
    *v41 = v50[0];
    *&v41[15] = *(v50 + 15);
    v40[2] = v45;
    v40[3] = v46;
    v40[4] = v47;
    v40[5] = v48;
    v40[0] = v43;
    v40[1] = v44;
    sub_217AD2864(v40);
    v27 = (v3 + v10[9]);
    v28 = v27[1];
    v29 = *(v27 + 16);
    v30 = *(v27 + 17);
    v31 = v27[3];
    v32 = v27[4];
    v34 = *v27;
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v33[7] = 5;
    sub_217AD084C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C67CDC()
{
  result = qword_27CBA2EC0;
  if (!qword_27CBA2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EC0);
  }

  return result;
}

uint64_t ArticleViewResumeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_217D8899C();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C683E4(0, &qword_27CBA2EC8, MEMORY[0x277D844C8]);
  v36 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for ArticleViewResumeEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_217C67CDC();
  v37 = v9;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v14 = v35;
  LOBYTE(v49) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  (*(v34 + 32))(v12, v6, v4);
  LOBYTE(v47[0]) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v15 = *(&v49 + 1);
  v16 = v50;
  v17 = &v12[v10[5]];
  *v17 = v49;
  *(v17 + 1) = v15;
  *(v17 + 8) = v16;
  v46 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v18 = &v12[v10[6]];
  v19 = v47[1];
  *v18 = v47[0];
  *(v18 + 1) = v19;
  *(v18 + 2) = v47[2];
  v18[48] = v48;
  LOBYTE(v39) = 3;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v12[v10[7]] = v49;
  v45 = 4;
  sub_217ACF4D8();
  sub_217D89BCC();
  v20 = &v12[v10[8]];
  v21 = *v56;
  *(v20 + 6) = v55;
  *(v20 + 7) = v21;
  *(v20 + 127) = *&v56[15];
  v22 = v52;
  *(v20 + 2) = v51;
  *(v20 + 3) = v22;
  v23 = v54;
  *(v20 + 4) = v53;
  *(v20 + 5) = v23;
  v24 = v50;
  *v20 = v49;
  *(v20 + 1) = v24;
  v38 = 5;
  sub_217AD07F8();
  sub_217D89BCC();
  (*(v14 + 8))(v37, v36);
  v25 = v40;
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v30 = &v12[v10[9]];
  *v30 = v39;
  *(v30 + 1) = v25;
  v30[16] = v26;
  v30[17] = v27;
  *(v30 + 3) = v28;
  *(v30 + 4) = v29;
  sub_217C68448(v12, v33);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return sub_217C684AC(v12);
}

void sub_217C683E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C67CDC();
    v7 = a3(a1, &type metadata for ArticleViewResumeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C68448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewResumeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C684AC(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewResumeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217C68644()
{
  result = qword_27CBA2ED0;
  if (!qword_27CBA2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2ED0);
  }

  return result;
}

unint64_t sub_217C6869C()
{
  result = qword_27CBA2ED8;
  if (!qword_27CBA2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2ED8);
  }

  return result;
}

unint64_t sub_217C686F4()
{
  result = qword_27CBA2EE0;
  if (!qword_27CBA2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EE0);
  }

  return result;
}

uint64_t sub_217C68794(uint64_t a1)
{
  v2 = sub_217C68968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C687D0(uint64_t a1)
{
  v2 = sub_217C68968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadLocationData.encode(to:)(void *a1)
{
  sub_217C68BA8(0, &qword_27CBA2EE8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C68968();
  sub_217D89E7C();
  v11 = v8;
  sub_217C689BC();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C68968()
{
  result = qword_27CBA2EF0;
  if (!qword_27CBA2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EF0);
  }

  return result;
}

unint64_t sub_217C689BC()
{
  result = qword_27CBA2EF8;
  if (!qword_27CBA2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2EF8);
  }

  return result;
}

uint64_t DownloadLocationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C68BA8(0, &qword_27CBA2F00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C68968();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C68C0C();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C68BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C68968();
    v7 = a3(a1, &type metadata for DownloadLocationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C68C0C()
{
  result = qword_27CBA2F08;
  if (!qword_27CBA2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F08);
  }

  return result;
}

unint64_t sub_217C68C64()
{
  result = qword_2811C2208;
  if (!qword_2811C2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2208);
  }

  return result;
}

unint64_t sub_217C68CBC()
{
  result = qword_2811C2210;
  if (!qword_2811C2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2210);
  }

  return result;
}

unint64_t sub_217C68D64()
{
  result = qword_27CBA2F10;
  if (!qword_27CBA2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F10);
  }

  return result;
}

unint64_t sub_217C68DBC()
{
  result = qword_27CBA2F18;
  if (!qword_27CBA2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F18);
  }

  return result;
}

unint64_t sub_217C68E14()
{
  result = qword_27CBA2F20;
  if (!qword_27CBA2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F20);
  }

  return result;
}

uint64_t sub_217C68EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
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

uint64_t sub_217C68F4C(uint64_t a1)
{
  v2 = sub_217C69120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C68F88(uint64_t a1)
{
  v2 = sub_217C69120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShareOriginationData.encode(to:)(void *a1)
{
  sub_217C69360(0, &qword_27CBA2F28, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C69120();
  sub_217D89E7C();
  v11 = v8;
  sub_217C69174();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C69120()
{
  result = qword_27CBA2F30;
  if (!qword_27CBA2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F30);
  }

  return result;
}

unint64_t sub_217C69174()
{
  result = qword_27CBA2F38;
  if (!qword_27CBA2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F38);
  }

  return result;
}

uint64_t ShareOriginationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C69360(0, &qword_27CBA2F40, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C69120();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C693C4();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C69360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C69120();
    v7 = a3(a1, &type metadata for ShareOriginationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C693C4()
{
  result = qword_27CBA2F48;
  if (!qword_27CBA2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F48);
  }

  return result;
}

unint64_t sub_217C69474()
{
  result = qword_27CBA2F50;
  if (!qword_27CBA2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F50);
  }

  return result;
}

unint64_t sub_217C694CC()
{
  result = qword_27CBA2F58;
  if (!qword_27CBA2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F58);
  }

  return result;
}

unint64_t sub_217C69524()
{
  result = qword_27CBA2F60;
  if (!qword_27CBA2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F60);
  }

  return result;
}

NewsAnalytics::DeviceOrientation_optional __swiftcall DeviceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceOrientation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x705565636166;
  if (v1 != 5)
  {
    v3 = 0x6E776F4465636166;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x70616373646E616CLL;
  }

  v4 = 0x7469617274726F70;
  if (v1 != 1)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_217C69704()
{
  result = qword_27CBA2F68;
  if (!qword_27CBA2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F68);
  }

  return result;
}

uint64_t sub_217C69764(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217C698A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x705565636166;
  if (v2 != 5)
  {
    v6 = 0x6E776F4465636166;
    v5 = 0xE800000000000000;
  }

  v7 = 0xED00007466654C65;
  if (v2 != 3)
  {
    v7 = 0xEE00746867695265;
  }

  if (*v1 <= 4u)
  {
    v6 = 0x70616373646E616CLL;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7469617274726F70;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = 0x8000000217DCB8E0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_217C69A58()
{
  result = qword_2811C4678;
  if (!qword_2811C4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4678);
  }

  return result;
}

uint64_t JourneyMessageFailureReasonData.triggerInactiveErrorDetail.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_217C69B50()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000022;
  }
}

uint64_t sub_217C69B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000022 && 0x8000000217DD1570 == a2;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD15A0 == a2)
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

uint64_t sub_217C69C6C(uint64_t a1)
{
  v2 = sub_217C69ECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C69CA8(uint64_t a1)
{
  v2 = sub_217C69ECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageFailureReasonData.encode(to:)(void *a1)
{
  sub_217C6A250(0, &qword_2811BC550, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = *v1;
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C69ECC();
  sub_217D89E7C();
  v14 = v9;
  v13 = 0;
  sub_217C69F20();
  sub_217D89CAC();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_217C69F74();
    sub_217C6A308(&qword_2811BCD68, sub_217C69FC4, MEMORY[0x277D83948]);
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217C69ECC()
{
  result = qword_2811BDF70[0];
  if (!qword_2811BDF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BDF70);
  }

  return result;
}

unint64_t sub_217C69F20()
{
  result = qword_2811BDC90;
  if (!qword_2811BDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDC90);
  }

  return result;
}

void sub_217C69F74()
{
  if (!qword_2811BCD70)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCD70);
    }
  }
}

unint64_t sub_217C69FC4()
{
  result = qword_2811BD6A0;
  if (!qword_2811BD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD6A0);
  }

  return result;
}

uint64_t JourneyMessageFailureReasonData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C6A250(0, &qword_27CBA2F70, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C69ECC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_217C6A2B4();
  sub_217D89BCC();
  v10 = v16;
  sub_217C69F74();
  v14 = 1;
  sub_217C6A308(&qword_27CBA2F80, sub_217C6A374, MEMORY[0x277D83978]);
  sub_217D89B5C();
  (*(v7 + 8))(v9, v6);
  v11 = v13[1];
  *a2 = v10;
  *(a2 + 8) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C6A250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C69ECC();
    v7 = a3(a1, &type metadata for JourneyMessageFailureReasonData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C6A2B4()
{
  result = qword_27CBA2F78;
  if (!qword_27CBA2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F78);
  }

  return result;
}

uint64_t sub_217C6A308(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217C69F74();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217C6A374()
{
  result = qword_27CBA2F88;
  if (!qword_27CBA2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F88);
  }

  return result;
}

uint64_t sub_217C6A400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_217C6A45C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217C6A4D0()
{
  result = qword_27CBA2F90;
  if (!qword_27CBA2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F90);
  }

  return result;
}

unint64_t sub_217C6A528()
{
  result = qword_2811BDF60;
  if (!qword_2811BDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDF60);
  }

  return result;
}

unint64_t sub_217C6A580()
{
  result = qword_2811BDF68;
  if (!qword_2811BDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDF68);
  }

  return result;
}

NewsAnalytics::PaywallType_optional __swiftcall PaywallType.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_217C6A67C(_BYTE *a1, _BYTE *a2)
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
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217C6A764()
{
  result = qword_27CBA2F98;
  if (!qword_27CBA2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2F98);
  }

  return result;
}

uint64_t sub_217C6A7B8()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C6A84C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C6A8CC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C6A968(uint64_t *a1@<X8>)
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

unint64_t sub_217C6AA78()
{
  result = qword_2811C7CE8;
  if (!qword_2811C7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CE8);
  }

  return result;
}

uint64_t sub_217C6AB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000217DD15C0 == a2)
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

uint64_t sub_217C6ABC8(uint64_t a1)
{
  v2 = sub_217C6AD9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C6AC04(uint64_t a1)
{
  v2 = sub_217C6AD9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueViewContextData.encode(to:)(void *a1)
{
  sub_217C6AFDC(0, &qword_2811BC650, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C6AD9C();
  sub_217D89E7C();
  v11 = v8;
  sub_217C6ADF0();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C6AD9C()
{
  result = qword_2811C1F08;
  if (!qword_2811C1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1F08);
  }

  return result;
}

unint64_t sub_217C6ADF0()
{
  result = qword_2811C5208;
  if (!qword_2811C5208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5208);
  }

  return result;
}

uint64_t IssueViewContextData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C6AFDC(0, &qword_2811BC9E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C6AD9C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C6B040();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C6AFDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C6AD9C();
    v7 = a3(a1, &type metadata for IssueViewContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C6B040()
{
  result = qword_2811C51F8;
  if (!qword_2811C51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C51F8);
  }

  return result;
}

unint64_t sub_217C6B0F0()
{
  result = qword_27CBA2FA0;
  if (!qword_27CBA2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FA0);
  }

  return result;
}

unint64_t sub_217C6B148()
{
  result = qword_2811C1EF8;
  if (!qword_2811C1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EF8);
  }

  return result;
}

unint64_t sub_217C6B1A0()
{
  result = qword_2811C1F00;
  if (!qword_2811C1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1F00);
  }

  return result;
}

uint64_t sub_217C6B2BC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C59E0);
  __swift_project_value_buffer(v0, qword_2811C59E0);
  return sub_217D8866C();
}

uint64_t ArticleViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleViewEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 20);
  sub_217C6F060(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 20);
  sub_217C6F060(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 24);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 28);
  sub_217C6F060(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 28);
  sub_217C6F060(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 32);
  sub_217C6F060(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 32);
  sub_217C6F060(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 36);
  sub_217C6F060(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 36);
  sub_217C6F060(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 40);
  sub_217C6F060(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 40);
  sub_217C6F060(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 44);
  sub_217C6F060(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 44);
  sub_217C6F060(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 48);
  sub_217C6F060(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 48);
  sub_217C6F060(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 52);
  sub_217C6F060(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 52);
  sub_217C6F060(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 56);
  sub_217C6F060(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 56);
  sub_217C6F060(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 60);
  sub_217C6F060(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 60);
  sub_217C6F060(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 64);
  sub_217C6F060(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 64);
  sub_217C6F060(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 68);
  sub_217C6F060(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 68);
  sub_217C6F060(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.issueExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 72);
  sub_217C6F060(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.issueExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 72);
  sub_217C6F060(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 76);
  sub_217C6F060(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 76);
  sub_217C6F060(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 80);
  sub_217C6F060(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 80);
  sub_217C6F060(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.referralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 84);
  sub_217C6F060(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.referralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 84);
  sub_217C6F060(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 88);
  sub_217C6F060(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 88);
  sub_217C6F060(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 92);
  sub_217C6F060(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 92);
  sub_217C6F060(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 96);
  sub_217C6F060(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 96);
  sub_217C6F060(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.issueViewContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 100);
  sub_217C6F060(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4, &type metadata for IssueViewContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.issueViewContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 100);
  sub_217C6F060(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4, &type metadata for IssueViewContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.engagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 104);
  sub_217C6F060(0, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4, &type metadata for EngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C6D770()
{
  result = qword_2811C70B0;
  if (!qword_2811C70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70B0);
  }

  return result;
}

unint64_t sub_217C6D7C4()
{
  result = qword_2811C70B8;
  if (!qword_2811C70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70B8);
  }

  return result;
}

uint64_t ArticleViewEvent.engagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 104);
  sub_217C6F060(0, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4, &type metadata for EngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 108);
  sub_217C6F060(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 108);
  sub_217C6F060(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.widgetEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 112);
  sub_217C6F060(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650, &type metadata for WidgetEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.widgetEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 112);
  sub_217C6F060(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650, &type metadata for WidgetEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 116);
  sub_217C6F060(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.referringArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 116);
  sub_217C6F060(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 120);
  sub_217C6F060(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 120);
  sub_217C6F060(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.purchaseOffersData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 124);
  sub_217C6F060(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.purchaseOffersData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 124);
  sub_217C6F060(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.stateRestoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 128);
  sub_217C6F060(0, &qword_2811C8858, sub_217C6E238, sub_217C6E28C, &type metadata for AppStateRestoreData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C6E238()
{
  result = qword_2811C2C38;
  if (!qword_2811C2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2C38);
  }

  return result;
}

unint64_t sub_217C6E28C()
{
  result = qword_2811C2C40;
  if (!qword_2811C2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2C40);
  }

  return result;
}

uint64_t ArticleViewEvent.stateRestoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 128);
  sub_217C6F060(0, &qword_2811C8858, sub_217C6E238, sub_217C6E28C, &type metadata for AppStateRestoreData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.searchResponseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 132);
  sub_217C6F060(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.searchResponseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 132);
  sub_217C6F060(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 136);
  sub_217C6F060(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 136);
  sub_217C6F060(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.shareOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 140);
  sub_217C6F060(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.shareOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 140);
  sub_217C6F060(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.experimentalScoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 144);
  sub_217C6F060(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C, &type metadata for ScoreData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.experimentalScoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 144);
  sub_217C6F060(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C, &type metadata for ScoreData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.textSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 148);
  sub_217C6F060(0, &qword_2811C8630, sub_217B34774, sub_217B347CC, &type metadata for ArticleTextSizeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.textSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 148);
  sub_217C6F060(0, &qword_2811C8630, sub_217B34774, sub_217B347CC, &type metadata for ArticleTextSizeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.referringRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 152);
  sub_217C6F060(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.referringRecipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 152);
  sub_217C6F060(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.recipeListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 156);
  sub_217C6F060(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50, &type metadata for RecipeListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.recipeListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 156);
  sub_217C6F060(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50, &type metadata for RecipeListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.experimentationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 160);
  sub_217C6F060(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C6F060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ArticleViewEvent.experimentationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 160);
  sub_217C6F060(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleViewEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C6F060(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217A608E0(0);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217C6F060(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C6F060(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_217C6F060(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  sub_217C6F060(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  sub_217C6F060(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v19 - 8) + 104))(a1 + v18, v6, v19);
  v20 = v4[12];
  sub_217C6F060(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C6F060(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C6F060(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C6F060(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217C6F060(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v29 - 8) + 104))(a1 + v28, v6, v29);
  v30 = v4[17];
  sub_217C6F060(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217C6F060(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  (*(*(v33 - 8) + 104))(a1 + v32, v6, v33);
  v34 = v4[19];
  sub_217C6F060(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v35 - 8) + 104))(a1 + v34, v2, v35);
  v36 = v4[20];
  sub_217C6F060(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v37 - 8) + 104))(a1 + v36, v2, v37);
  v38 = v4[21];
  sub_217C6F060(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  (*(*(v39 - 8) + 104))(a1 + v38, v6, v39);
  v40 = v4[22];
  sub_217C6F060(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v41 - 8) + 104))(a1 + v40, v6, v41);
  v42 = v4[23];
  sub_217C6F060(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v43 - 8) + 104))(a1 + v42, v6, v43);
  v44 = v4[24];
  sub_217C6F060(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  (*(*(v45 - 8) + 104))(a1 + v44, v6, v45);
  v46 = v4[25];
  sub_217C6F060(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4, &type metadata for IssueViewContextData);
  (*(*(v47 - 8) + 104))(a1 + v46, v6, v47);
  v48 = v4[26];
  sub_217C6F060(0, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4, &type metadata for EngagementData);
  (*(*(v49 - 8) + 104))(a1 + v48, v6, v49);
  v50 = v4[27];
  sub_217C6F060(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  (*(*(v51 - 8) + 104))(a1 + v50, v6, v51);
  v52 = v4[28];
  sub_217C6F060(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650, &type metadata for WidgetEngagementData);
  (*(*(v53 - 8) + 104))(a1 + v52, v6, v53);
  v54 = v4[29];
  sub_217C6F060(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  (*(*(v55 - 8) + 104))(a1 + v54, v6, v55);
  v56 = v4[30];
  sub_217C6F060(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  (*(*(v57 - 8) + 104))(a1 + v56, v6, v57);
  v58 = v4[31];
  sub_217C6F060(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  (*(*(v59 - 8) + 104))(a1 + v58, v6, v59);
  v60 = v4[32];
  sub_217C6F060(0, &qword_2811C8858, sub_217C6E238, sub_217C6E28C, &type metadata for AppStateRestoreData);
  (*(*(v61 - 8) + 104))(a1 + v60, v6, v61);
  v62 = v4[33];
  sub_217C6F060(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  (*(*(v63 - 8) + 104))(a1 + v62, v6, v63);
  v64 = v4[34];
  sub_217C6F060(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v65 - 8) + 104))(a1 + v64, v6, v65);
  v66 = v4[35];
  sub_217C6F060(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  (*(*(v67 - 8) + 104))(a1 + v66, v6, v67);
  v68 = v4[36];
  sub_217C6F060(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C, &type metadata for ScoreData);
  (*(*(v69 - 8) + 104))(a1 + v68, v6, v69);
  v70 = v4[37];
  sub_217C6F060(0, &qword_2811C8630, sub_217B34774, sub_217B347CC, &type metadata for ArticleTextSizeData);
  (*(*(v71 - 8) + 104))(a1 + v70, v2, v71);
  v72 = v4[38];
  sub_217C6F060(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v73 - 8) + 104))(a1 + v72, v6, v73);
  v74 = v4[39];
  sub_217C6F060(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50, &type metadata for RecipeListData);
  (*(*(v75 - 8) + 104))(a1 + v74, v6, v75);
  v76 = v4[40];
  sub_217C6F060(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v78 = *(*(v77 - 8) + 104);

  return v78(a1 + v76, v6, v77);
}

void ArticleViewEvent.Model.adData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 20);
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

uint64_t sub_217C703B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleViewEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 28);
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

uint64_t ArticleViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t ArticleViewEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t ArticleViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 44));
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

uint64_t ArticleViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleViewEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent.Model(0) + 52);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t ArticleViewEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

void ArticleViewEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 64));
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

uint64_t ArticleViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 68));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleViewEvent.Model.issueExposureContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 72));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 76);
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

uint64_t ArticleViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 80);
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

void ArticleViewEvent.Model.referralData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 84));
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
  sub_217B1563C(v4, v5, v6, v7, v8, v9);
}

uint64_t ArticleViewEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 88));
  return result;
}

void ArticleViewEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 92));
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
  sub_217B1563C(v4, v5, v6, v7, v8, v9);
}

uint64_t ArticleViewEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 96));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_217AE38AC(v11, &v10, &qword_2811C4F30, &type metadata for NotificationData);
}

uint64_t ArticleViewEvent.Model.issueViewContextData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 100));
  return result;
}

uint64_t ArticleViewEvent.Model.engagementData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

void ArticleViewEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 108));
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

uint64_t ArticleViewEvent.Model.widgetEngagementData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent.Model(0) + 112);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x1C8uLL);
  return sub_217AE38AC(__dst, &v5, &qword_2811C1A08, &type metadata for WidgetEngagementData);
}

uint64_t ArticleViewEvent.Model.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 116);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

void ArticleViewEvent.Model.searchData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 120));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217C70C5C(v4, v5, v6, v7);
}

void sub_217C70C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t ArticleViewEvent.Model.purchaseOffersData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 124));
}

uint64_t ArticleViewEvent.Model.stateRestoreData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 128));
  return result;
}

uint64_t ArticleViewEvent.Model.searchResponseData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 132));
  return result;
}

void ArticleViewEvent.Model.placementData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 136));
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
  sub_217B1563C(v4, v5, v6, v7, v8, v9);
}

uint64_t ArticleViewEvent.Model.shareOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 140));
  return result;
}

uint64_t ArticleViewEvent.Model.experimentalScoreData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 144));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t ArticleViewEvent.Model.textSizeData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 148));
  return result;
}

void ArticleViewEvent.Model.referringRecipeData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 152));
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

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t ArticleViewEvent.Model.recipeListData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 156));
  *a1 = v3;

  return sub_217AF77A0(v3);
}

void ArticleViewEvent.Model.experimentationData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 160));
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

__n128 ArticleViewEvent.Model.init(eventData:adData:timedData:articleData:feedPositionData:inGroupPositionData:feedData:groupData:viewData:articleScienceData:userChannelContextData:orientationData:issueData:issueViewData:issueExposureContextData:userBundleSubscriptionContextData:channelData:referralData:paywallData:campaignData:notificationData:issueViewContextData:engagementData:articleExposureContextData:widgetEngagementData:referringArticleData:searchData:purchaseOffersData:stateRestoreData:searchResponseData:placementData:shareOriginationData:experimentalScoreData:textSizeData:referringRecipeData:recipeListData:experimentationData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, int *a6@<X5>, __int128 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, const void *a11, char *a12, __int16 *a13, __int128 *a14, uint64_t *a15, uint64_t *a16, uint64_t a17, uint64_t *a18, __int128 *a19, __int16 *a20, __int128 *a21, _OWORD *a22, char *a23, char *a24, __int128 *a25, const void *a26, __int128 *a27, __int128 *a28, uint64_t *a29, char *a30, char *a31, __int128 *a32, char *a33, uint64_t *a34, __int16 *a35, __int128 *a36, uint64_t *a37, __n128 *a38)
{
  v90 = *a5;
  v89 = *(a5 + 4);
  v92 = *(a6 + 4);
  v93 = *a6;
  v97 = *a7;
  v96 = *(a7 + 2);
  v105 = *a10;
  v104 = a10[1];
  v103 = *(a10 + 8);
  v109 = *a12;
  v108 = a12[1];
  v107 = *(a12 + 1);
  v110 = *a13;
  v111 = a15[1];
  v112 = *a15;
  v114 = a16[1];
  v115 = *a16;
  v125 = *a18;
  v124 = a18[1];
  v123 = *(a18 + 16);
  v122 = *(a18 + 17);
  v120 = a18[4];
  v121 = a18[3];
  v127 = *a20;
  v134 = *a23;
  v135 = *a24;
  v139 = *a27;
  v138 = *(a27 + 2);
  v137 = *(a27 + 24);
  v142 = *a29;
  v140 = *a31;
  v141 = *a30;
  v145 = *(a34 + 8);
  v143 = *a33;
  v144 = *a35;
  v146 = *a34;
  v147 = *a37;
  v83 = *(a2 + 32);
  v98 = *(a19 + 5);
  v99 = *(a19 + 4);
  v101 = *(a21 + 5);
  v102 = *(a21 + 4);
  v118 = *(a25 + 4);
  v130 = *(a32 + 5);
  v131 = *(a32 + 4);
  v136 = *(a36 + 4);
  v40 = sub_217D8899C();
  v132 = a38[1];
  v133 = *a38;
  v129 = *a36;
  v128 = a36[1];
  v126 = *a32;
  v119 = a32[1];
  v117 = *a28;
  v113 = a28[1];
  v106 = *a25;
  v100 = a25[1];
  v95 = *a21;
  v91 = a21[1];
  v87 = a19[1];
  v88 = *a19;
  v84 = a14[1];
  v85 = *a14;
  v80 = *a2;
  v82 = a2[1];
  (*(*(v40 - 8) + 32))(a9, a1, v40);
  v41 = type metadata accessor for ArticleViewEvent.Model(0);
  v42 = a9 + v41[5];
  *v42 = v80;
  *(v42 + 16) = v82;
  *(v42 + 32) = v83;
  v43 = v41[6];
  v44 = sub_217D889CC();
  (*(*(v44 - 8) + 32))(a9 + v43, a3, v44);
  v45 = a9 + v41[7];
  v46 = *(a4 + 48);
  *(v45 + 32) = *(a4 + 32);
  *(v45 + 48) = v46;
  v47 = *(a4 + 16);
  *v45 = *a4;
  *(v45 + 16) = v47;
  *(v45 + 127) = *(a4 + 127);
  v48 = *(a4 + 112);
  *(v45 + 96) = *(a4 + 96);
  *(v45 + 112) = v48;
  v49 = *(a4 + 80);
  *(v45 + 64) = *(a4 + 64);
  *(v45 + 80) = v49;
  v50 = a9 + v41[8];
  *v50 = v90;
  *(v50 + 4) = v89;
  v51 = a9 + v41[9];
  *v51 = v93;
  *(v51 + 4) = v92;
  v52 = a9 + v41[10];
  *v52 = v97;
  *(v52 + 16) = v96;
  v53 = (a9 + v41[11]);
  v54 = a8[7];
  v53[6] = a8[6];
  v53[7] = v54;
  v53[8] = a8[8];
  v55 = a8[3];
  v53[2] = a8[2];
  v53[3] = v55;
  v56 = a8[5];
  v53[4] = a8[4];
  v53[5] = v56;
  v57 = a8[1];
  *v53 = *a8;
  v53[1] = v57;
  v58 = a9 + v41[12];
  *v58 = v105;
  *(v58 + 8) = v104;
  *(v58 + 16) = v103;
  memcpy((a9 + v41[13]), a11, 0x111uLL);
  v59 = a9 + v41[14];
  *v59 = v109;
  *(v59 + 1) = v108;
  *(v59 + 2) = v107;
  *(a9 + v41[15]) = v110;
  v60 = (a9 + v41[16]);
  *v60 = v85;
  v60[1] = v84;
  v61 = (a9 + v41[17]);
  *v61 = v112;
  v61[1] = v111;
  v62 = (a9 + v41[18]);
  *v62 = v115;
  v62[1] = v114;
  v63 = a9 + v41[19];
  v64 = *(a17 + 16);
  *v63 = *a17;
  *(v63 + 16) = v64;
  *(v63 + 32) = *(a17 + 32);
  *(v63 + 48) = *(a17 + 48);
  v65 = a9 + v41[20];
  *v65 = v125;
  *(v65 + 8) = v124;
  *(v65 + 16) = v123;
  *(v65 + 17) = v122;
  *(v65 + 24) = v121;
  *(v65 + 32) = v120;
  v66 = a9 + v41[21];
  *v66 = v88;
  *(v66 + 16) = v87;
  *(v66 + 32) = v99;
  *(v66 + 40) = v98;
  *(a9 + v41[22]) = v127;
  v67 = a9 + v41[23];
  *v67 = v95;
  *(v67 + 16) = v91;
  *(v67 + 32) = v102;
  *(v67 + 40) = v101;
  v68 = (a9 + v41[24]);
  v69 = a22[1];
  *v68 = *a22;
  v68[1] = v69;
  v70 = a22[5];
  v68[4] = a22[4];
  v68[5] = v70;
  v71 = a22[3];
  v68[2] = a22[2];
  v68[3] = v71;
  *(a9 + v41[25]) = v134;
  *(a9 + v41[26]) = v135;
  v72 = a9 + v41[27];
  *v72 = v106;
  *(v72 + 16) = v100;
  *(v72 + 32) = v118;
  memcpy((a9 + v41[28]), a26, 0x1C8uLL);
  v73 = a9 + v41[29];
  *v73 = v139;
  *(v73 + 16) = v138;
  *(v73 + 24) = v137;
  v74 = (a9 + v41[30]);
  *v74 = v117;
  v74[1] = v113;
  *(a9 + v41[31]) = v142;
  *(a9 + v41[32]) = v141;
  *(a9 + v41[33]) = v140;
  v75 = a9 + v41[34];
  *v75 = v126;
  *(v75 + 16) = v119;
  *(v75 + 32) = v131;
  *(v75 + 40) = v130;
  *(a9 + v41[35]) = v143;
  v76 = a9 + v41[36];
  *v76 = v146;
  *(v76 + 8) = v145;
  *(a9 + v41[37]) = v144;
  v77 = a9 + v41[38];
  *v77 = v129;
  *(v77 + 16) = v128;
  *(v77 + 32) = v136;
  *(a9 + v41[39]) = v147;
  v78 = (a9 + v41[40]);
  result = v133;
  *v78 = v133;
  v78[1] = v132;
  return result;
}

uint64_t sub_217C7155C(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x617461446461;
    case 2:
      return 0x74614464656D6974;
    case 3:
      return 0x44656C6369747261;
    case 4:
    case 20:
    case 28:
      return 0xD000000000000010;
    case 5:
    case 34:
    case 36:
      return 0xD000000000000013;
    case 6:
      v4 = 1684366694;
      return v4 | 0x6174614400000000;
    case 7:
      return 0x74614470756F7267;
    case 8:
      v4 = 2003134838;
      return v4 | 0x6174614400000000;
    case 9:
    case 27:
    case 29:
      return 0xD000000000000012;
    case 10:
      return 0xD000000000000016;
    case 11:
      return 0x7461746E6569726FLL;
    case 12:
      return 0x7461446575737369;
    case 13:
      return 0x6569566575737369;
    case 14:
      return 0xD000000000000018;
    case 15:
      return 0xD000000000000021;
    case 16:
      v3 = 0x656E6E616863;
      goto LABEL_23;
    case 17:
      return 0x6C61727265666572;
    case 18:
      v3 = 0x6C6177796170;
LABEL_23:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 19:
      result = 0x6E676961706D6163;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0x656D656761676E65;
      break;
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0x6144686372616573;
      break;
    case 30:
      result = 0x6E656D6563616C70;
      break;
    case 31:
      result = 0xD000000000000014;
      break;
    case 32:
      result = 0xD000000000000015;
      break;
    case 33:
      result = 0x657A695374786574;
      break;
    case 35:
      result = 0x694C657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C71920@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C75AA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C71954(uint64_t a1)
{
  v2 = sub_217C72DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C71990(uint64_t a1)
{
  v2 = sub_217C72DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C74A78(0, &qword_27CBA2FA8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v117 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C72DF8();
  sub_217D89E7C();
  LOBYTE(v125[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleViewEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v125[0] = *v11;
    v125[1] = v12;
    v125[2] = v13;
    v125[3] = v14;
    LOBYTE(v125[4]) = v15;
    v124[0] = 1;
    sub_217AE39D0(v125[0], v12, v13, v14);
    sub_217AF3490();
    sub_217D89C3C();
    sub_217AE4AA0(v125[0], v125[1], v125[2], v125[3]);
    v211[0] = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v16 = v3 + v10[7];
    v17 = *(v16 + 80);
    v18 = *(v16 + 112);
    v209 = *(v16 + 96);
    *v210 = v18;
    v19 = *(v16 + 16);
    v20 = *(v16 + 48);
    v205 = *(v16 + 32);
    v206 = v20;
    v21 = *(v16 + 48);
    v22 = *(v16 + 80);
    v207 = *(v16 + 64);
    v208 = v22;
    v23 = *(v16 + 16);
    v204[0] = *v16;
    v204[1] = v23;
    v24 = *(v16 + 112);
    v202 = v209;
    v203[0] = v24;
    v198 = v205;
    v199 = v21;
    v201 = v17;
    v200 = v207;
    *&v210[15] = *(v16 + 127);
    *(v203 + 15) = *(v16 + 127);
    v197 = v19;
    v196 = v204[0];
    v195 = 3;
    sub_217AD1630(v204, v125);
    sub_217ACF52C();
    sub_217D89CAC();
    v193[6] = v202;
    *v194 = v203[0];
    *&v194[15] = *(v203 + 15);
    v193[2] = v198;
    v193[3] = v199;
    v193[5] = v201;
    v193[4] = v200;
    v193[1] = v197;
    v193[0] = v196;
    sub_217AD2864(v193);
    v25 = (v3 + v10[8]);
    v26 = *v25;
    LOBYTE(v25) = *(v25 + 4);
    LODWORD(v125[0]) = v26;
    BYTE4(v125[0]) = v25;
    v124[0] = 4;
    sub_217AD7710();
    sub_217D89C3C();
    v27 = (v3 + v10[9]);
    v28 = *v27;
    LOBYTE(v27) = *(v27 + 4);
    LODWORD(v125[0]) = v28;
    BYTE4(v125[0]) = v27;
    v124[0] = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v29 = (v3 + v10[10]);
    v30 = v29[1];
    v31 = v29[2];
    v190 = *v29;
    v191 = v30;
    v192 = v31;
    v189 = 6;
    sub_217AD1A68(v190, v30, v31);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v190, v191, v192);
    v32 = (v3 + v10[11]);
    v33 = v32[5];
    v34 = v32[7];
    v186 = v32[6];
    v187 = v34;
    v35 = v32[7];
    v188 = v32[8];
    v36 = v32[1];
    v37 = v32[3];
    v182 = v32[2];
    v183 = v37;
    v39 = v32[3];
    v38 = v32[4];
    v40 = v38;
    v185 = v32[5];
    v184 = v38;
    v41 = *v32;
    v42 = *v32;
    v181[1] = v32[1];
    v181[0] = v41;
    v178 = v186;
    v179 = v35;
    v180 = v32[8];
    v174 = v182;
    v175 = v39;
    v177 = v33;
    v176 = v40;
    v173 = v36;
    v172 = v42;
    v171 = 7;
    sub_217AE38AC(v181, v125, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v170[6] = v178;
    v170[7] = v179;
    v170[8] = v180;
    v170[2] = v174;
    v170[3] = v175;
    v170[5] = v177;
    v170[4] = v176;
    v170[1] = v173;
    v170[0] = v172;
    sub_217AE4A44(v170, &qword_2811BD178, &type metadata for GroupData);
    v43 = (v3 + v10[12]);
    v44 = *v43;
    v45 = v43[1];
    LOWORD(v43) = *(v43 + 8);
    v167 = v44;
    v168 = v45;
    v169 = v43;
    v166[279] = 8;
    sub_217A5E790();

    sub_217D89CAC();

    v46 = v10[13];
    memcpy(v166, (v3 + v46), 0x111uLL);
    memcpy(v165, (v3 + v46), sizeof(v165));
    v164[279] = 9;
    sub_217AD1744(v166, v125);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v164, v165, 0x111uLL);
    sub_217AD28B8(v164);
    v47 = (v3 + v10[14]);
    v48 = *v47;
    v49 = v47[1];
    LOWORD(v47) = *(v47 + 1);
    LOBYTE(v125[0]) = v48;
    BYTE1(v125[0]) = v49;
    WORD1(v125[0]) = v47;
    v124[0] = 10;
    sub_217ACFB8C();
    sub_217D89CAC();
    LOWORD(v125[0]) = *(v3 + v10[15]);
    v124[0] = 11;
    sub_217A4CF88();
    sub_217D89CAC();
    v50 = (v3 + v10[16]);
    v51 = v50[1];
    v52 = v50[2];
    v53 = v50[3];
    v125[0] = *v50;
    v125[1] = v51;
    v125[2] = v52;
    v125[3] = v53;
    v124[0] = 12;
    sub_217AE39D0(v125[0], v51, v52, v53);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v125[0], v125[1], v125[2], v125[3]);
    v54 = (v3 + v10[17]);
    v55 = v54[1];
    v125[0] = *v54;
    v125[1] = v55;
    v124[0] = 13;
    sub_217AD01EC();

    sub_217D89C3C();

    v56 = (v3 + v10[18]);
    v57 = v56[1];
    v162 = *v56;
    v163 = v57;
    v161 = 14;
    sub_217AD0444();

    sub_217D89C3C();

    v58 = (v3 + v10[19]);
    v59 = v58[1];
    v159[0] = *v58;
    v159[1] = v59;
    v61 = *v58;
    v60 = v58[1];
    v159[2] = v58[2];
    v160 = *(v58 + 48);
    v155 = v61;
    v156 = v60;
    v157 = v58[2];
    v158 = *(v58 + 48);
    v154 = 15;
    sub_217ACC004(v159, v125);
    sub_217A55B98();
    sub_217D89CAC();
    v152[0] = v155;
    v152[1] = v156;
    v152[2] = v157;
    v153 = v158;
    sub_217ACC69C(v152);
    v62 = v3 + v10[20];
    v63 = *(v62 + 8);
    v64 = *(v62 + 16);
    v65 = *(v62 + 17);
    v66 = *(v62 + 24);
    v67 = *(v62 + 32);
    v125[0] = *v62;
    v125[1] = v63;
    LOBYTE(v125[2]) = v64;
    BYTE1(v125[2]) = v65;
    v125[3] = v66;
    v125[4] = v67;
    v124[0] = 16;
    sub_217AD084C();

    sub_217D89CAC();

    v68 = (v3 + v10[21]);
    v69 = v68[1];
    v70 = v68[2];
    v71 = v68[3];
    v72 = v68[4];
    v73 = v68[5];
    v125[0] = *v68;
    v125[1] = v69;
    v125[2] = v70;
    v125[3] = v71;
    v125[4] = v72;
    v125[5] = v73;
    v124[0] = 17;
    sub_217B1563C(v125[0], v69, v70, v71, v72, v73);
    sub_217ACDCB0();
    sub_217D89C3C();
    sub_217B15D30(v125[0], v125[1], v125[2], v125[3], v125[4], v125[5]);
    LOWORD(v125[0]) = *(v3 + v10[22]);
    v124[0] = 18;
    sub_217B1DEE8();
    sub_217D89C3C();
    v75 = (v3 + v10[23]);
    v76 = v75[1];
    v77 = v75[2];
    v78 = v75[3];
    v79 = v75[4];
    v80 = v75[5];
    v146 = *v75;
    v147 = v76;
    v148 = v77;
    v149 = v78;
    v150 = v79;
    v151 = v80;
    v145 = 19;
    sub_217B1563C(v146, v76, v77, v78, v79, v80);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v146, v147, v148, v149, v150, v151);
    v81 = (v3 + v10[24]);
    v82 = v81[3];
    v83 = v81[1];
    v141 = v81[2];
    v142 = v82;
    v84 = v81[3];
    v85 = v81[5];
    v143 = v81[4];
    v144 = v85;
    v86 = v81[1];
    v140[0] = *v81;
    v140[1] = v86;
    v136 = v141;
    v137 = v84;
    v87 = v81[5];
    v138 = v143;
    v139 = v87;
    v134 = v140[0];
    v135 = v83;
    v133 = 20;
    sub_217AE38AC(v140, v125, &qword_2811C4F30, &type metadata for NotificationData);
    sub_217B9C280();
    sub_217D89C3C();
    v132[2] = v136;
    v132[3] = v137;
    v132[4] = v138;
    v132[5] = v139;
    v132[0] = v134;
    v132[1] = v135;
    sub_217AE4A44(v132, &qword_2811C4F30, &type metadata for NotificationData);
    LOBYTE(v125[0]) = *(v3 + v10[25]);
    v124[0] = 21;
    sub_217AD0AA4();
    sub_217D89C3C();
    LOBYTE(v125[0]) = *(v3 + v10[26]);
    v124[0] = 22;
    sub_217C6D7C4();
    sub_217D89C3C();
    v88 = (v3 + v10[27]);
    v89 = v88[1];
    v90 = v88[2];
    v91 = v88[3];
    v92 = v88[4];
    v127 = *v88;
    v128 = v89;
    v129 = v90;
    v130 = v91;
    v131 = v92;
    v126 = 23;
    sub_217AE3AE8(v127, v89, v90, v91, v92);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v127, v128, v129, v130, v131);
    v93 = v10[28];
    memcpy(v125, (v3 + v93), 0x1C8uLL);
    memcpy(v124, (v3 + v93), sizeof(v124));
    v123[463] = 24;
    sub_217AE38AC(v125, v123, &qword_2811C1A08, &type metadata for WidgetEngagementData);
    sub_217BBB650();
    sub_217D89C3C();
    memcpy(v123, v124, 0x1C8uLL);
    sub_217AE4A44(v123, &qword_2811C1A08, &type metadata for WidgetEngagementData);
    v94 = v3 + v10[29];
    v95 = *(v94 + 24);
    v117 = *v94;
    v118 = *(v94 + 8);
    LOBYTE(v119) = v95;
    v122 = 25;
    sub_217A5D95C();

    sub_217D89C3C();

    v96 = (v3 + v10[30]);
    v97 = v96[1];
    v98 = v96[2];
    v99 = v96[3];
    v117 = *v96;
    *&v118 = v97;
    *(&v118 + 1) = v98;
    v119 = v99;
    v122 = 26;
    sub_217C70C5C(v117, v97, v98, v99);
    sub_217B23A38();
    sub_217D89C3C();
    sub_217AE4AA0(v117, v118, *(&v118 + 1), v119);
    v117 = *(v3 + v10[31]);
    v122 = 27;
    sub_217BDDE84();

    sub_217D89C3C();

    LOBYTE(v117) = *(v3 + v10[32]);
    v122 = 28;
    sub_217C6E28C();
    sub_217D89C3C();
    LOBYTE(v117) = *(v3 + v10[33]);
    v122 = 29;
    sub_217B2BA84();
    sub_217D89C3C();
    v100 = (v3 + v10[34]);
    v101 = v100[1];
    v102 = v100[2];
    v103 = v100[3];
    v104 = v100[4];
    v105 = v100[5];
    v117 = *v100;
    *&v118 = v101;
    *(&v118 + 1) = v102;
    v119 = v103;
    v120 = v104;
    v121 = v105;
    v122 = 30;
    sub_217B1563C(v117, v101, v102, v103, v104, v105);
    sub_217AFEC9C();
    sub_217D89C3C();
    sub_217B15D30(v117, v118, *(&v118 + 1), v119, v120, v121);
    LOBYTE(v117) = *(v3 + v10[35]);
    v122 = 31;
    sub_217C46AB8();
    sub_217D89C3C();
    v106 = v3 + v10[36];
    v107 = *v106;
    LOBYTE(v106) = *(v106 + 8);
    v117 = v107;
    LOBYTE(v118) = v106;
    v122 = 32;
    sub_217B86F3C();
    sub_217D89C3C();
    LOWORD(v117) = *(v3 + v10[37]);
    v122 = 33;
    sub_217B347CC();
    sub_217D89CAC();
    v108 = (v3 + v10[38]);
    v109 = v108[1];
    v110 = v108[2];
    v111 = v108[3];
    v112 = v108[4];
    v117 = *v108;
    *&v118 = v109;
    *(&v118 + 1) = v110;
    v119 = v111;
    v120 = v112;
    v122 = 34;
    sub_217AD86BC(v117, v109, v110, v111, v112);
    sub_217B1F08C();
    sub_217D89C3C();
    sub_217AD96A4(v117, v118, *(&v118 + 1), v119, v120);
    v117 = *(v3 + v10[39]);
    v122 = 35;
    sub_217AF77A0(v117);
    sub_217BB1A50();
    sub_217D89C3C();
    sub_217AF8158(v117);
    v113 = (v3 + v10[40]);
    v114 = v113[1];
    v115 = v113[2];
    v116 = v113[3];
    v117 = *v113;
    *&v118 = v114;
    *(&v118 + 1) = v115;
    v119 = v116;
    v122 = 36;
    sub_217AE39D0(v117, v114, v115, v116);
    sub_217B368B0();
    sub_217D89C3C();
    sub_217AE4AA0(v117, v118, *(&v118 + 1), v119);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C72DF8()
{
  result = qword_2811C59D0;
  if (!qword_2811C59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C59D0);
  }

  return result;
}

void ArticleViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_217D889CC();
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v88 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v89 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C74A78(0, &qword_2811BCA90, MEMORY[0x277D844C8]);
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v83 - v9;
  v11 = type metadata accessor for ArticleViewEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217C72DF8();
  v92 = v10;
  v15 = v93;
  sub_217D89E5C();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

  else
  {
    v84 = v11;
    v93 = v13;
    LOBYTE(v131[0]) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v16 = v89;
    sub_217D89BCC();
    v17 = v6;
    v18 = *(v88 + 32);
    v19 = v93;
    v89 = v17;
    v18(v93, v16);
    v112[0] = 1;
    sub_217AF343C();
    sub_217D89B5C();
    v83[7] = 0;
    v20 = v131[2];
    v21 = &v19[v84[5]];
    v22 = v131[1];
    *v21 = v131[0];
    *(v21 + 1) = v22;
    v21[32] = v20;
    LOBYTE(v131[0]) = 2;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v23 = v87;
    sub_217D89BCC();
    (*(v86 + 32))(&v19[v84[6]], v5, v23);
    v122 = 3;
    sub_217ACF4D8();
    sub_217D89BCC();
    v24 = &v19[v84[7]];
    v25 = v128;
    v26 = *v130;
    *(v24 + 6) = v129;
    *(v24 + 7) = v26;
    *(v24 + 127) = *&v130[15];
    v27 = v126;
    *(v24 + 2) = v125;
    *(v24 + 3) = v27;
    *(v24 + 4) = v127;
    *(v24 + 5) = v25;
    v28 = v124;
    *v24 = v123;
    *(v24 + 1) = v28;
    v112[0] = 4;
    sub_217AD76BC();
    sub_217D89B5C();
    v29 = BYTE4(v131[0]);
    v30 = &v19[v84[8]];
    *v30 = v131[0];
    v30[4] = v29;
    v112[0] = 5;
    sub_217B4FFA8();
    sub_217D89B5C();
    v31 = BYTE4(v131[0]);
    v32 = &v19[v84[9]];
    *v32 = v131[0];
    v32[4] = v31;
    v112[0] = 6;
    sub_217A5B978();
    sub_217D89B5C();
    v33 = *&v131[1];
    v34 = &v19[v84[10]];
    *v34 = v131[0];
    *(v34 + 2) = v33;
    v112[279] = 7;
    sub_217A5D308();
    sub_217D89B5C();
    v35 = &v19[v84[11]];
    v36 = v120;
    *(v35 + 6) = v119;
    *(v35 + 7) = v36;
    *(v35 + 8) = v121;
    v37 = v116;
    *(v35 + 2) = v115;
    *(v35 + 3) = v37;
    v38 = v118;
    *(v35 + 4) = v117;
    *(v35 + 5) = v38;
    v39 = v114;
    *v35 = v113;
    *(v35 + 1) = v39;
    v112[0] = 8;
    sub_217A5E738();
    sub_217D89BCC();
    v40 = *(&v131[0] + 1);
    v41 = v131[1];
    v42 = &v93[v84[12]];
    *v42 = *&v131[0];
    *(v42 + 1) = v40;
    *(v42 + 8) = v41;
    v111 = 9;
    sub_217ACF8E0();
    sub_217D89BCC();
    memcpy(&v93[v84[13]], v112, 0x111uLL);
    LOBYTE(v100) = 10;
    sub_217ACFB38();
    sub_217D89BCC();
    v43 = BYTE1(v131[0]);
    v44 = WORD1(v131[0]);
    v45 = &v93[v84[14]];
    *v45 = v131[0];
    v45[1] = v43;
    *(v45 + 1) = v44;
    LOBYTE(v100) = 11;
    sub_217A4CF30();
    sub_217D89BCC();
    *&v93[v84[15]] = v131[0];
    LOBYTE(v100) = 12;
    sub_217ACFF40();
    sub_217D89B5C();
    v46 = &v93[v84[16]];
    v47 = v131[1];
    *v46 = v131[0];
    *(v46 + 1) = v47;
    LOBYTE(v100) = 13;
    sub_217AD0198();
    sub_217D89B5C();
    *&v93[v84[17]] = v131[0];
    LOBYTE(v100) = 14;
    sub_217AD03F0();
    sub_217D89B5C();
    *&v93[v84[18]] = v131[0];
    v106 = 15;
    sub_217A54D08();
    sub_217D89BCC();
    v48 = &v93[v84[19]];
    v49 = v108;
    *v48 = v107;
    *(v48 + 1) = v49;
    *(v48 + 2) = v109;
    v48[48] = v110;
    LOBYTE(v100) = 16;
    sub_217AD07F8();
    sub_217D89BCC();
    v50 = *(&v131[0] + 1);
    v51 = v131[1];
    v52 = BYTE1(v131[1]);
    v53 = *(&v131[1] + 1);
    v54 = *&v131[2];
    v55 = &v93[v84[20]];
    *v55 = *&v131[0];
    *(v55 + 1) = v50;
    v55[16] = v51;
    v55[17] = v52;
    *(v55 + 3) = v53;
    *(v55 + 4) = v54;
    LOBYTE(v100) = 17;
    sub_217ACDC58();
    sub_217D89B5C();
    v56 = &v93[v84[21]];
    v57 = v131[1];
    *v56 = v131[0];
    *(v56 + 1) = v57;
    *(v56 + 2) = v131[2];
    LOBYTE(v100) = 18;
    sub_217B1DE94();
    sub_217D89B5C();
    *&v93[v84[22]] = v131[0];
    LOBYTE(v100) = 19;
    sub_217A66A84();
    sub_217D89B5C();
    v58 = &v93[v84[23]];
    v59 = v131[1];
    *v58 = v131[0];
    *(v58 + 1) = v59;
    *(v58 + 2) = v131[2];
    v99 = 20;
    sub_217B9C22C();
    sub_217D89B5C();
    v60 = &v93[v84[24]];
    v61 = v103;
    *(v60 + 2) = v102;
    *(v60 + 3) = v61;
    v62 = v105;
    *(v60 + 4) = v104;
    *(v60 + 5) = v62;
    v63 = v101;
    *v60 = v100;
    *(v60 + 1) = v63;
    LOBYTE(v94) = 21;
    sub_217AD0A50();
    sub_217D89B5C();
    v93[v84[25]] = v131[0];
    LOBYTE(v94) = 22;
    sub_217C6D770();
    sub_217D89B5C();
    v93[v84[26]] = v131[0];
    LOBYTE(v94) = 23;
    sub_217AE2CA8();
    sub_217D89B5C();
    v64 = *&v131[2];
    v65 = &v93[v84[27]];
    v66 = v131[1];
    *v65 = v131[0];
    *(v65 + 1) = v66;
    *(v65 + 4) = v64;
    v98 = 24;
    sub_217BBB5F8();
    sub_217D89B5C();
    memcpy(&v93[v84[28]], v131, 0x1C8uLL);
    v97 = 25;
    sub_217A5D8AC();
    sub_217D89B5C();
    v67 = v95;
    v68 = BYTE8(v95);
    v69 = &v93[v84[29]];
    *v69 = v94;
    *(v69 + 2) = v67;
    v69[24] = v68;
    v97 = 26;
    sub_217B23D2C();
    sub_217D89B5C();
    v70 = &v93[v84[30]];
    v71 = v95;
    *v70 = v94;
    *(v70 + 1) = v71;
    v97 = 27;
    sub_217BDDE2C();
    sub_217D89B5C();
    *&v93[v84[31]] = v94;
    v97 = 28;
    sub_217C6E238();
    sub_217D89B5C();
    v93[v84[32]] = v94;
    v97 = 29;
    sub_217B2BA2C();
    sub_217D89B5C();
    v93[v84[33]] = v94;
    v97 = 30;
    sub_217AFEC48();
    sub_217D89B5C();
    v72 = &v93[v84[34]];
    v73 = v95;
    *v72 = v94;
    *(v72 + 1) = v73;
    *(v72 + 2) = v96;
    v97 = 31;
    sub_217C46A64();
    sub_217D89B5C();
    v93[v84[35]] = v94;
    v97 = 32;
    sub_217B86EE4();
    sub_217D89B5C();
    v74 = BYTE8(v94);
    v75 = &v93[v84[36]];
    *v75 = v94;
    v75[8] = v74;
    v97 = 33;
    sub_217B34774();
    sub_217D89BCC();
    *&v93[v84[37]] = v94;
    v97 = 34;
    sub_217B1F038();
    sub_217D89B5C();
    v76 = v96;
    v77 = &v93[v84[38]];
    v78 = v95;
    *v77 = v94;
    *(v77 + 1) = v78;
    *(v77 + 4) = v76;
    v97 = 35;
    sub_217BB19F8();
    sub_217D89B5C();
    *&v93[v84[39]] = v94;
    v97 = 36;
    sub_217B36858();
    sub_217D89B5C();
    (*(v90 + 8))(v92, v91);
    v79 = v85;
    v80 = v93;
    v81 = &v93[v84[40]];
    v82 = v95;
    *v81 = v94;
    *(v81 + 1) = v82;
    sub_217C74ADC(v80, v79);
    __swift_destroy_boxed_opaque_existential_1(v132);
    sub_217C74B40(v80);
  }
}

void sub_217C74A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C72DF8();
    v7 = a3(a1, &type metadata for ArticleViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C74ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C74B40(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217C74CA0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C6F060(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
    if (v2 <= 0x3F)
    {
      sub_217A608E0(319);
      if (v3 <= 0x3F)
      {
        sub_217C6F060(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
        if (v4 <= 0x3F)
        {
          sub_217C6F060(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_217C6F060(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
            if (v6 <= 0x3F)
            {
              sub_217C6F060(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
              if (v7 <= 0x3F)
              {
                sub_217C6F060(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
                if (v8 <= 0x3F)
                {
                  sub_217C6F060(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                  if (v9 <= 0x3F)
                  {
                    sub_217C6F060(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
                    if (v10 <= 0x3F)
                    {
                      sub_217C6F060(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
                      if (v11 <= 0x3F)
                      {
                        sub_217C6F060(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
                        if (v12 <= 0x3F)
                        {
                          sub_217C6F060(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                          if (v13 <= 0x3F)
                          {
                            sub_217C6F060(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                            if (v14 <= 0x3F)
                            {
                              sub_217C6F060(319, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
                              if (v15 <= 0x3F)
                              {
                                sub_217C6F060(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                                if (v16 <= 0x3F)
                                {
                                  sub_217C6F060(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_217C6F060(319, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_217C6F060(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_217C6F060(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_217C6F060(319, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_217C6F060(319, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4, &type metadata for IssueViewContextData);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_217C6F060(319, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4, &type metadata for EngagementData);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_217C6F060(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_217C6F060(319, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650, &type metadata for WidgetEngagementData);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_217C6F060(319, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_217C6F060(319, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_217C6F060(319, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_217C6F060(319, &qword_2811C8858, sub_217C6E238, sub_217C6E28C, &type metadata for AppStateRestoreData);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            sub_217C6F060(319, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              sub_217C6F060(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                sub_217C6F060(319, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  sub_217C6F060(319, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C, &type metadata for ScoreData);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    sub_217C6F060(319, &qword_2811C8630, sub_217B34774, sub_217B347CC, &type metadata for ArticleTextSizeData);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      sub_217C6F060(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        sub_217C6F060(319, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50, &type metadata for RecipeListData);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          sub_217C6F060(319, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
                                                                          if (v37 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for ArticleViewEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleViewEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C7599C()
{
  result = qword_27CBA2FB0;
  if (!qword_27CBA2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FB0);
  }

  return result;
}

unint64_t sub_217C759F4()
{
  result = qword_2811C59C0;
  if (!qword_2811C59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C59C0);
  }

  return result;
}

unint64_t sub_217C75A4C()
{
  result = qword_2811C59C8;
  if (!qword_2811C59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C59C8);
  }

  return result;
}

uint64_t sub_217C75AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDE60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCCCE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCCD00 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEE0061746144746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1290 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD15E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1600 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1620 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1210 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1230 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0520 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x657A695374786574 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1640 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x694C657069636572 && a2 == 0xEE00617461447473 || (sub_217D89D4C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCE340 == a2)
  {

    return 36;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 36;
    }

    else
    {
      return 37;
    }
  }
}

void static TagData.obfuscated(tag:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 asSports];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 sportsType];
    if (v6 > 0xB || ((1 << v6) & 0xFE7) != 0)
    {
      v7 = [a1 identifier];
      v8 = sub_217D8954C();
      v10 = v9;

      swift_unknownObjectRelease();
    }

    else
    {
      v13 = [v5 topLevelGroupsTagIdentifiers];
      if (v13)
      {
        v14 = v13;
        v15 = sub_217D896EC();

        v26 = v15;

        sub_217C768B8(&v26);

        if (*(v26 + 2))
        {
          v8 = *(v26 + 4);
          v10 = *(v26 + 5);

          swift_unknownObjectRelease();

          goto LABEL_6;
        }
      }

      v16 = [v5 topLevelSportTagIdentifier];
      if (v16)
      {
        v17 = v16;
        v8 = sub_217D8954C();
        v10 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        sub_217A536AC(0, &qword_2811BC410, sub_217A53700);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_217D8D8F0;
        v20 = [a1 identifier];
        v21 = sub_217D8954C();
        v23 = v22;

        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_217A62448();
        *(v19 + 32) = v21;
        *(v19 + 40) = v23;
        sub_217A535B4();
        v24 = sub_217D898BC();
        v25 = sub_217D897FC();
        sub_217D88E5C("Unable to generate obfuscated analytics identifier for sports topic=%{public}@; topLevelSportTagIdentifier should be populated.", 127, 2, &dword_217A45000, v24, v25, v19);
        swift_unknownObjectRelease();

        v8 = 0;
        v10 = 0xE000000000000000;
      }
    }
  }

  else
  {
    v11 = [a1 identifier];
    v8 = sub_217D8954C();
    v10 = v12;
  }

LABEL_6:
  *a2 = v8;
  a2[1] = v10;
}

uint64_t sub_217C768B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_217C774A4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_217C76924(v5);
  *a1 = v2;
  return result;
}