void sub_217AD34F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AD2810();
    v7 = a3(a1, &type metadata for ReplicaAdvertisementViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AD355C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AD35C0(uint64_t a1)
{
  v2 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AD36F4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AD0CA8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217AD0CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217AD0CA8(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217AD0CA8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217AD0CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217AD0CA8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v19 - 8) + 104))(a2 + v18, v4, v19);
  v20 = a1[12];
  v21 = *MEMORY[0x277CEACF0];
  sub_217AD0CA8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v22 - 8) + 104))(a2 + v20, v21, v22);
  v23 = a1[13];
  sub_217AD0CA8(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  (*(*(v24 - 8) + 104))(a2 + v23, v21, v24);
  v25 = a1[14];
  sub_217AD0CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217AD0CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217AD0CA8(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4, &type metadata for IssueViewContextData);
  (*(*(v30 - 8) + 104))(a2 + v29, v21, v30);
  v31 = a1[17];
  sub_217AD0CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v33 = *(*(v32 - 8) + 104);

  return v33(a2 + v31, v21, v32);
}

void sub_217AD3D90(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217AD0CA8(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217AD0CA8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217AD0CA8(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
          if (v5 <= 0x3F)
          {
            sub_217AD0CA8(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
            if (v6 <= 0x3F)
            {
              sub_217AD0CA8(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
              if (v7 <= 0x3F)
              {
                sub_217AD0CA8(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                if (v8 <= 0x3F)
                {
                  sub_217AD0CA8(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                  if (v9 <= 0x3F)
                  {
                    sub_217AD0CA8(319, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217AD0CA8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                      if (v11 <= 0x3F)
                      {
                        sub_217AD0CA8(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                        if (v12 <= 0x3F)
                        {
                          sub_217AD0CA8(319, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4, &type metadata for IssueViewContextData);
                          if (v13 <= 0x3F)
                          {
                            sub_217AD0CA8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
                            if (v14 <= 0x3F)
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

void sub_217AD41FC(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BF960, &type metadata for IssueExposureContextData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C1EE0, &type metadata for IssueViewContextData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
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

uint64_t getEnumTagSinglePayload for ViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217AD44D0()
{
  result = qword_27CB9EB08;
  if (!qword_27CB9EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB08);
  }

  return result;
}

unint64_t sub_217AD4528()
{
  result = qword_27CB9EB10;
  if (!qword_27CB9EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB10);
  }

  return result;
}

unint64_t sub_217AD4580()
{
  result = qword_27CB9EB18;
  if (!qword_27CB9EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB18);
  }

  return result;
}

uint64_t sub_217AD45D4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCCCE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCCD00 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
  {

    return 13;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_217AD4B1C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C5C68);
  __swift_project_value_buffer(v0, qword_2811C5C68);
  return sub_217D8866C();
}

uint64_t ArticleLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleLoadEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 24);
  sub_217A602E4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLoadEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 24);
  sub_217A602E4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadEvent.articleLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 28);
  sub_217A602E4(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD4FC0()
{
  result = qword_2811C6940;
  if (!qword_2811C6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6940);
  }

  return result;
}

unint64_t sub_217AD5014()
{
  result = qword_2811C6948;
  if (!qword_2811C6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6948);
  }

  return result;
}

uint64_t ArticleLoadEvent.articleLoadData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadEvent(0) + 28);
  sub_217A602E4(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for ArticleLoadEvent(0);
  v5 = Event[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217A602E4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = Event[7];
  sub_217A602E4(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t sub_217AD5374@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleLoadEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLoadEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleLoadEvent.Model.articleLoadData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLoadEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 ArticleLoadEvent.Model.init(eventData:timedData:feedData:articleLoadData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *a3;
  v8 = a3[1].n128_u64[0];
  v9 = *a4;
  v10 = a4[1];
  v11 = sub_217D8899C();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  v12 = type metadata accessor for ArticleLoadEvent.Model(0);
  v13 = v12[5];
  v14 = sub_217D889CC();
  (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  v15 = (a5 + v12[6]);
  result = v18;
  *v15 = v18;
  v15[1].n128_u64[0] = v8;
  v17 = (a5 + v12[7]);
  *v17 = v9;
  v17[1] = v10;
  return result;
}

uint64_t sub_217AD55B8()
{
  v1 = 0x746144746E657665;
  v2 = 0x6174614464656566;
  if (*v0 != 2)
  {
    v2 = 0x4C656C6369747261;
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

uint64_t sub_217AD5640@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AD66BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AD5668(uint64_t a1)
{
  v2 = sub_217AD59C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AD56A4(uint64_t a1)
{
  v2 = sub_217AD59C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AD5F7C(0, &qword_27CB9EB20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AD59C0();
  sub_217D89E7C();
  LOBYTE(v18) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleLoadEvent.Model(0);
    LOBYTE(v18) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + *(v10 + 24));
    v12 = v11[1];
    v13 = v11[2];
    v18 = *v11;
    v19 = v12;
    v20 = v13;
    HIBYTE(v17) = 2;
    sub_217AD1A68(v18, v12, v13);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v18, v19, v20);
    v14 = (v3 + *(v10 + 28));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    HIBYTE(v17) = 3;
    sub_217AD5014();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AD59C0()
{
  result = qword_27CB9EB28;
  if (!qword_27CB9EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB28);
  }

  return result;
}

uint64_t ArticleLoadEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_217D889CC();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AD5F7C(0, &qword_27CB9EB30, MEMORY[0x277D844C8]);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ArticleLoadEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AD59C0();
  v34 = v9;
  v13 = v35;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v10;
  v14 = v12;
  v15 = v29;
  v16 = v30;
  LOBYTE(v36) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v17 = *(v15 + 32);
  v18 = v33;
  v33 = v5;
  v17(v12, v18);
  LOBYTE(v36) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v28 + 32))(&v12[*(v35 + 20)], v4, v16);
  v38 = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v19 = a1;
  v20 = v37;
  v21 = v35;
  v22 = v14 + *(v35 + 24);
  *v22 = v36;
  *(v22 + 16) = v20;
  v38 = 3;
  sub_217AD4FC0();
  sub_217D89BCC();
  (*(v31 + 8))(v34, v32);
  v23 = *(&v36 + 1);
  v24 = (v14 + *(v21 + 28));
  *v24 = v36;
  v24[1] = v23;
  sub_217AD5FE0(v14, v27);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_217AD6044(v14);
}

void sub_217AD5F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AD59C0();
    v7 = a3(a1, &type metadata for ArticleLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AD5FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AD6044(uint64_t a1)
{
  v2 = type metadata accessor for ArticleLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AD6178@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217A602E4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217A602E4(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

void sub_217AD6364(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217A602E4(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A602E4(319, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_217AD64B0(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217AD6554();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217AD6554()
{
  if (!qword_2811BD308)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BD308);
    }
  }
}

unint64_t sub_217AD65B8()
{
  result = qword_27CB9EB48;
  if (!qword_27CB9EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB48);
  }

  return result;
}

unint64_t sub_217AD6610()
{
  result = qword_27CB9EB50;
  if (!qword_27CB9EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB50);
  }

  return result;
}

unint64_t sub_217AD6668()
{
  result = qword_27CB9EB58;
  if (!qword_27CB9EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB58);
  }

  return result;
}

uint64_t sub_217AD66BC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C656C6369747261 && a2 == 0xEF6174614464616FLL)
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

uint64_t sub_217AD6900()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C2770);
  __swift_project_value_buffer(v0, qword_2811C2770);
  return sub_217D8866C();
}

uint64_t PuzzleExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PuzzleExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 20);
  sub_217AD7D1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 20);
  sub_217AD7D1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 24);
  sub_217AD7D1C(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD6CB4()
{
  result = qword_2811C7F28;
  if (!qword_2811C7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F28);
  }

  return result;
}

unint64_t sub_217AD6D08()
{
  result = qword_2811C7F30;
  if (!qword_2811C7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F30);
  }

  return result;
}

uint64_t PuzzleExposureEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 24);
  sub_217AD7D1C(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 28);
  sub_217AD7D1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 28);
  sub_217AD7D1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 32);
  sub_217AD7D1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 32);
  sub_217AD7D1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 36);
  sub_217AD7D1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 36);
  sub_217AD7D1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 40);
  sub_217AD7D1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 40);
  sub_217AD7D1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 44);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 48);
  sub_217AD7D1C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD76BC()
{
  result = qword_2811C5240;
  if (!qword_2811C5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5240);
  }

  return result;
}

unint64_t sub_217AD7710()
{
  result = qword_2811C5248;
  if (!qword_2811C5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5248);
  }

  return result;
}

uint64_t PuzzleExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 48);
  sub_217AD7D1C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.puzzleLayoutData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 52);
  sub_217AD7D1C(0, &qword_2811C86B0, sub_217AD7914, sub_217AD7968, &type metadata for PuzzleLayoutData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD7914()
{
  result = qword_2811C4D78;
  if (!qword_2811C4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D78);
  }

  return result;
}

unint64_t sub_217AD7968()
{
  result = qword_2811C4D80[0];
  if (!qword_2811C4D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4D80);
  }

  return result;
}

uint64_t PuzzleExposureEvent.puzzleLayoutData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 52);
  sub_217AD7D1C(0, &qword_2811C86B0, sub_217AD7914, sub_217AD7968, &type metadata for PuzzleLayoutData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.offlineModeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 56);
  sub_217AD7D1C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleExposureEvent.offlineModeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 56);
  sub_217AD7D1C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 60);
  sub_217AD7D1C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AD7D1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

unint64_t sub_217AD7D98()
{
  result = qword_2811C7630;
  if (!qword_2811C7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7630);
  }

  return result;
}

unint64_t sub_217AD7DEC()
{
  result = qword_2811C7638;
  if (!qword_2811C7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7638);
  }

  return result;
}

uint64_t PuzzleExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleExposureEvent(0) + 60);
  sub_217AD7D1C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PuzzleExposureEvent(0);
  v5 = v4[5];
  sub_217AD7D1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AD7D1C(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AD7D1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217AD7D1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217AD7D1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217AD7D1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_217A608E0(0);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AD7D1C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217AD7D1C(0, &qword_2811C86B0, sub_217AD7914, sub_217AD7968, &type metadata for PuzzleLayoutData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217AD7D1C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217AD7D1C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v10, v27);
}

uint64_t PuzzleExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PuzzleExposureEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 24));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_217AD85B8(v10, &v9);
}

uint64_t PuzzleExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

void PuzzleExposureEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 32));
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

void sub_217AD86BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t PuzzleExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 36));
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

uint64_t PuzzleExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 40));
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

uint64_t sub_217AD87FC(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_2811BD178, &type metadata for GroupData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AD889C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 44);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PuzzleExposureEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PuzzleExposureEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t PuzzleExposureEvent.Model.puzzleLayoutData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PuzzleExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t PuzzleExposureEvent.Model.offlineModeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PuzzleExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t PuzzleExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleExposureEvent.Model(0) + 60));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PuzzleExposureEvent.Model.init(eventData:viewData:puzzleData:feedData:channelData:userBundleSubscriptionContextData:groupData:timedData:feedPositionData:puzzleLayoutData:offlineModeData:dismissalData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int *a10, char *a11, char *a12, uint64_t *a13)
{
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 8);
  v45 = *a4;
  v22 = *(a4 + 2);
  v46 = *(a5 + 4);
  v47 = *(a10 + 4);
  v48 = *a10;
  v49 = *a11;
  v50 = *a12;
  v52 = a13[1];
  v53 = *a13;
  v51 = *(a13 + 16);
  v23 = sub_217D8899C();
  v43 = a5[1];
  v44 = *a5;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for PuzzleExposureEvent.Model(0);
  v25 = a9 + v24[5];
  *v25 = v19;
  *(v25 + 8) = v20;
  *(v25 + 16) = v21;
  v26 = (a9 + v24[6]);
  v27 = a3[3];
  v26[2] = a3[2];
  v26[3] = v27;
  v26[4] = a3[4];
  v28 = a3[1];
  *v26 = *a3;
  v26[1] = v28;
  v29 = a9 + v24[7];
  *v29 = v45;
  *(v29 + 16) = v22;
  v30 = a9 + v24[8];
  *v30 = v44;
  *(v30 + 16) = v43;
  *(v30 + 32) = v46;
  v31 = a9 + v24[9];
  v32 = *(a6 + 16);
  *v31 = *a6;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a6 + 32);
  *(v31 + 48) = *(a6 + 48);
  v33 = (a9 + v24[10]);
  v34 = a7[7];
  v33[6] = a7[6];
  v33[7] = v34;
  v33[8] = a7[8];
  v35 = a7[3];
  v33[2] = a7[2];
  v33[3] = v35;
  v36 = a7[5];
  v33[4] = a7[4];
  v33[5] = v36;
  v37 = a7[1];
  *v33 = *a7;
  v33[1] = v37;
  v38 = v24[11];
  v39 = sub_217D889CC();
  result = (*(*(v39 - 8) + 32))(a9 + v38, a8, v39);
  v41 = a9 + v24[12];
  *v41 = v48;
  *(v41 + 4) = v47;
  *(a9 + v24[13]) = v49;
  *(a9 + v24[14]) = v50;
  v42 = a9 + v24[15];
  *v42 = v53;
  *(v42 + 8) = v52;
  *(v42 + 16) = v51;
  return result;
}

unint64_t sub_217AD8C48(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000010;
    v7 = 0x4D656E696C66666FLL;
    if (a1 != 10)
    {
      v7 = 0x617373696D736964;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x74614470756F7267;
    v9 = 0x74614464656D6974;
    if (a1 != 7)
    {
      v9 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6174614464656566;
    v3 = 0x446C656E6E616863;
    if (a1 != 4)
    {
      v3 = 0xD000000000000021;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6174614477656976;
    if (a1 != 1)
    {
      v4 = 0x6144656C7A7A7570;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217AD8DFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217ADB0FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AD8E30(uint64_t a1)
{
  v2 = sub_217AD95FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AD8E6C(uint64_t a1)
{
  v2 = sub_217AD95FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217ADA194(0, &qword_27CB9EB60, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AD95FC();
  sub_217D89E7C();
  LOBYTE(v65) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for PuzzleExposureEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v100 = v12;
    v101 = v13;
    v102 = v11;
    v99 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[2];
    v16 = *v14;
    v95 = v14[1];
    v96 = v15;
    v17 = v14[2];
    v18 = v14[4];
    v97 = v14[3];
    v98 = v18;
    v19 = *v14;
    v91 = v17;
    v92 = v97;
    v93 = v14[4];
    v94 = v19;
    v89 = v16;
    v90 = v95;
    v88 = 2;
    sub_217AD85B8(&v94, &v65);
    sub_217AD6D08();
    sub_217D89CAC();
    v87[2] = v91;
    v87[3] = v92;
    v87[4] = v93;
    v87[0] = v89;
    v87[1] = v90;
    sub_217AD9650(v87);
    v20 = (v3 + v10[7]);
    v21 = v20[1];
    v22 = v20[2];
    *&v65 = *v20;
    *(&v65 + 1) = v21;
    *&v66 = v22;
    LOBYTE(v54) = 3;
    sub_217AD1A68(v65, v21, v22);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v65, *(&v65 + 1), v66);
    v23 = (v3 + v10[8]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v27 = v23[4];
    v82 = *v23;
    v83 = v24;
    v84 = v25;
    v85 = v26;
    v86 = v27;
    v81 = 4;
    sub_217AD86BC(v82, v24, v25, v26, v27);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v82, v83, v84, v85, v86);
    v28 = (v3 + v10[9]);
    v29 = v28[1];
    v79[0] = *v28;
    v79[1] = v29;
    v31 = *v28;
    v30 = v28[1];
    v79[2] = v28[2];
    v80 = *(v28 + 48);
    v75 = v31;
    v76 = v30;
    v77 = v28[2];
    v78 = *(v28 + 48);
    v74 = 5;
    sub_217ACC004(v79, &v65);
    sub_217A55B98();
    sub_217D89CAC();
    v63[0] = v75;
    v63[1] = v76;
    v63[2] = v77;
    v64 = v78;
    sub_217ACC69C(v63);
    v32 = (v3 + v10[10]);
    v33 = v32[5];
    v34 = v32[7];
    v71 = v32[6];
    v72 = v34;
    v35 = v32[7];
    v73 = v32[8];
    v36 = v32[1];
    v37 = v32[3];
    v67 = v32[2];
    v68 = v37;
    v38 = v32[3];
    v39 = v32[5];
    v69 = v32[4];
    v70 = v39;
    v40 = v32[1];
    v65 = *v32;
    v66 = v40;
    v60 = v71;
    v61 = v35;
    v62 = v32[8];
    v56 = v67;
    v57 = v38;
    v58 = v69;
    v59 = v33;
    v54 = v65;
    v55 = v36;
    v53 = 6;
    sub_217AD87FC(&v65, v52);
    sub_217A5D3B4();
    sub_217D89C3C();
    v52[7] = v61;
    v52[8] = v62;
    v52[2] = v56;
    v52[3] = v57;
    v52[5] = v59;
    v52[6] = v60;
    v52[4] = v58;
    v52[0] = v54;
    v52[1] = v55;
    sub_217AD96E8(v52);
    LOBYTE(v48) = 7;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v41 = (v3 + v10[12]);
    v42 = *v41;
    LOBYTE(v41) = *(v41 + 4);
    LODWORD(v48) = v42;
    BYTE4(v48) = v41;
    v51 = 8;
    sub_217AD7710();
    sub_217D89C3C();
    LOBYTE(v48) = *(v3 + v10[13]);
    v51 = 9;
    sub_217AD7968();
    sub_217D89C3C();
    LOBYTE(v48) = *(v3 + v10[14]);
    v51 = 10;
    sub_217ACA390();
    sub_217D89CAC();
    v44 = (v3 + v10[15]);
    v45 = *v44;
    v46 = v44[1];
    LOBYTE(v44) = *(v44 + 16);
    v48 = v45;
    v49 = v46;
    v50 = v44;
    v51 = 11;
    sub_217AD7DEC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AD95FC()
{
  result = qword_27CB9EB68;
  if (!qword_27CB9EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB68);
  }

  return result;
}

void sub_217AD96A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_217AD96E8(uint64_t a1)
{
  sub_217A5E974(0, &qword_2811BD178, &type metadata for GroupData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PuzzleExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_217D889CC();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217ADA194(0, &qword_27CB9EB70, MEMORY[0x277D844C8]);
  v57 = v9;
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for PuzzleExposureEvent.Model(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217AD95FC();
  v58 = v11;
  v16 = v59;
  sub_217D89E5C();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    v17 = v55;
    v59 = v12;
    v50 = v14;
    LOBYTE(v72) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v18 = v56;
    sub_217D89BCC();
    v19 = *(v54 + 32);
    v20 = v50;
    v56 = v7;
    v19(v50, v18, v7);
    LOBYTE(v67) = 1;
    sub_217A5E738();
    sub_217D89BCC();
    v49 = 0;
    v21 = *(&v72 + 1);
    v22 = v73;
    v23 = v59;
    v24 = &v20[v59[5]];
    *v24 = v72;
    *(v24 + 1) = v21;
    *(v24 + 8) = v22;
    v84 = 2;
    sub_217AD6CB4();
    sub_217D89BCC();
    v25 = &v20[v23[6]];
    v26 = v70;
    *(v25 + 2) = v69;
    *(v25 + 3) = v26;
    *(v25 + 4) = v71;
    v27 = v68;
    *v25 = v67;
    *(v25 + 1) = v27;
    LOBYTE(v63) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v28 = v73;
    v29 = &v20[v23[7]];
    *v29 = v72;
    *(v29 + 2) = v28;
    LOBYTE(v63) = 4;
    sub_217AD07F8();
    sub_217D89B5C();
    v30 = v74;
    v31 = &v20[v23[8]];
    v32 = v73;
    *v31 = v72;
    *(v31 + 1) = v32;
    *(v31 + 4) = v30;
    v83 = 5;
    sub_217A54D08();
    sub_217D89BCC();
    v33 = &v20[v23[9]];
    v34 = v64;
    *v33 = v63;
    *(v33 + 1) = v34;
    *(v33 + 2) = v65;
    v33[48] = v66;
    v82 = 6;
    sub_217A5D308();
    sub_217D89B5C();
    v35 = &v20[v23[10]];
    v36 = v79;
    *(v35 + 6) = v78;
    *(v35 + 7) = v36;
    *(v35 + 8) = v80;
    v37 = v75;
    *(v35 + 2) = v74;
    *(v35 + 3) = v37;
    v38 = v77;
    *(v35 + 4) = v76;
    *(v35 + 5) = v38;
    v39 = v73;
    *v35 = v72;
    *(v35 + 1) = v39;
    LOBYTE(v61) = 7;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v48 = v6;
    v40 = v52;
    sub_217D89BCC();
    (*(v53 + 32))(&v20[v23[11]], v48, v40);
    v81 = 8;
    sub_217AD76BC();
    sub_217D89B5C();
    v41 = BYTE4(v61);
    v42 = &v20[v59[12]];
    *v42 = v61;
    v42[4] = v41;
    v81 = 9;
    sub_217AD7914();
    sub_217D89B5C();
    v50[v59[13]] = v61;
    v81 = 10;
    sub_217ACA338();
    sub_217D89BCC();
    v50[v59[14]] = v61;
    v81 = 11;
    sub_217AD7D98();
    sub_217D89B5C();
    (*(v17 + 8))(v58, v57);
    v43 = v62;
    v45 = v50;
    v44 = v51;
    v46 = &v50[v59[15]];
    *v46 = v61;
    v46[16] = v43;
    sub_217ADA1F8(v45, v44);
    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_217ADA25C(v45);
  }
}

void sub_217ADA194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AD95FC();
    v7 = a3(a1, &type metadata for PuzzleExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217ADA1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217ADA25C(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217ADA390@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AD7D1C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AD7D1C(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217AD7D1C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217AD7D1C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217AD7D1C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217AD7D1C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_217A608E0(0);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217AD7D1C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217AD7D1C(0, &qword_2811C86B0, sub_217AD7914, sub_217AD7968, &type metadata for PuzzleLayoutData);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217AD7D1C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217AD7D1C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v11, v28);
}

void sub_217ADA93C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217AD7D1C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217AD7D1C(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
      if (v3 <= 0x3F)
      {
        sub_217AD7D1C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217AD7D1C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
          if (v5 <= 0x3F)
          {
            sub_217AD7D1C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
            if (v6 <= 0x3F)
            {
              sub_217AD7D1C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_217A608E0(319);
                if (v8 <= 0x3F)
                {
                  sub_217AD7D1C(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217AD7D1C(319, &qword_2811C86B0, sub_217AD7914, sub_217AD7968, &type metadata for PuzzleLayoutData);
                    if (v10 <= 0x3F)
                    {
                      sub_217AD7D1C(319, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
                      if (v11 <= 0x3F)
                      {
                        sub_217AD7D1C(319, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
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

void sub_217ADAD08(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217D889CC();
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C5238, &type metadata for FeedPositionData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_27CB9EB88, &type metadata for PuzzleLayoutData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C7628, &type metadata for DismissalData);
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

uint64_t getEnumTagSinglePayload for PuzzleExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PuzzleExposureEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217ADAFF8()
{
  result = qword_27CB9EB90;
  if (!qword_27CB9EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB90);
  }

  return result;
}

unint64_t sub_217ADB050()
{
  result = qword_27CB9EB98;
  if (!qword_27CB9EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EB98);
  }

  return result;
}

unint64_t sub_217ADB0A8()
{
  result = qword_27CB9EBA0;
  if (!qword_27CB9EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBA0);
  }

  return result;
}

uint64_t sub_217ADB0FC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D656E696C66666FLL && a2 == 0xEF6174614465646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
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

uint64_t ReferringArticleData.articleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReferringArticleData.articleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReferringArticleData.init(articleID:publisherArticleVersion:role:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

unint64_t sub_217ADB5FC()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 1701605234;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49656C6369747261;
  }
}

uint64_t sub_217ADB658@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217ADBE08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ADB680(uint64_t a1)
{
  v2 = sub_217ADB8CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ADB6BC(uint64_t a1)
{
  v2 = sub_217ADB8CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferringArticleData.encode(to:)(void *a1)
{
  sub_217ADBBAC(0, &qword_2811BC640, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[0] = *(v1 + 16);
  v12 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ADB8CC();
  sub_217D89E7C();
  v16 = 0;
  v8 = v11[1];
  sub_217D89C6C();
  if (!v8)
  {
    v9 = v12;
    v15 = 1;
    sub_217D89CCC();
    v14 = v9;
    v13 = 2;
    sub_217ADB920();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217ADB8CC()
{
  result = qword_2811C1C98[0];
  if (!qword_2811C1C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C1C98);
  }

  return result;
}

unint64_t sub_217ADB920()
{
  result = qword_2811BD418[0];
  if (!qword_2811BD418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BD418);
  }

  return result;
}

uint64_t ReferringArticleData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217ADBBAC(0, &qword_2811BC9D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ADB8CC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v20 = 1;
  v17 = sub_217D89BEC();
  v18 = 2;
  sub_217ADBC10();
  sub_217D89BCC();
  (*(v7 + 8))(v9, v6);
  v15 = v19;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217ADBBAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ADB8CC();
    v7 = a3(a1, &type metadata for ReferringArticleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217ADBC10()
{
  result = qword_2811BD408;
  if (!qword_2811BD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD408);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_217ADBCA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

unint64_t sub_217ADBD04()
{
  result = qword_27CB9EBA8;
  if (!qword_27CB9EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBA8);
  }

  return result;
}

unint64_t sub_217ADBD5C()
{
  result = qword_2811C1C88;
  if (!qword_2811C1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C88);
  }

  return result;
}

unint64_t sub_217ADBDB4()
{
  result = qword_2811C1C90;
  if (!qword_2811C1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C90);
  }

  return result;
}

uint64_t sub_217ADBE08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCCD60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
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

uint64_t ProgressInfo.lastPlayedDate.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ProgressInfo.completedDate.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ProgressInfo.init(progressLevel:lastPlayedDate:completedDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_217ADC000()
{
  v1 = 0x79616C507473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736572676F7270;
  }
}

uint64_t sub_217ADC080@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217ADC7FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ADC0A8(uint64_t a1)
{
  v2 = sub_217ADC2D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ADC0E4(uint64_t a1)
{
  v2 = sub_217ADC2D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgressInfo.encode(to:)(void *a1)
{
  sub_217ADC52C(0, &qword_2811BC808, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 8);
  v12 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ADC2D4();
  sub_217D89E7C();
  v15 = 0;
  v9 = v11[3];
  sub_217D89CBC();
  if (!v9)
  {
    v14 = 1;
    sub_217D89C5C();
    v13 = 2;
    sub_217D89C5C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217ADC2D4()
{
  result = qword_2811C7980;
  if (!qword_2811C7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7980);
  }

  return result;
}

uint64_t ProgressInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217ADC52C(0, &qword_27CB9EBB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ADC2D4();
  sub_217D89E5C();
  if (!v2)
  {
    v22 = 0;
    v10 = sub_217D89BDC();
    v21 = 1;
    v18 = sub_217D89B7C();
    v19 = v11 & 1;
    v20 = 2;
    v13 = sub_217D89B7C();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    v16 = v19;
    *a2 = v10;
    *(a2 + 8) = v18;
    *(a2 + 16) = v16;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217ADC52C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ADC2D4();
    v7 = a3(a1, &type metadata for ProgressInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217ADC594()
{
  result = qword_27CB9EBB8;
  if (!qword_27CB9EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBB8);
  }

  return result;
}

unint64_t sub_217ADC5EC()
{
  result = qword_2811C7968;
  if (!qword_2811C7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7968);
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

uint64_t sub_217ADC684(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217ADC6A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

unint64_t sub_217ADC6F8()
{
  result = qword_27CB9EBC0;
  if (!qword_27CB9EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBC0);
  }

  return result;
}

unint64_t sub_217ADC750()
{
  result = qword_2811C7970;
  if (!qword_2811C7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7970);
  }

  return result;
}

unint64_t sub_217ADC7A8()
{
  result = qword_2811C7978;
  if (!qword_2811C7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7978);
  }

  return result;
}

uint64_t sub_217ADC7FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xED00006C6576654CLL;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xED00006574614464)
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

NewsAnalytics::ResultAction_optional __swiftcall ResultAction.init(rawValue:)(Swift::String rawValue)
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

uint64_t ResultAction.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x646564616F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x676B636142707061;
  }

  if (*v0)
  {
    v1 = 0x656E6F646E616261;
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

unint64_t sub_217ADCA20()
{
  result = qword_27CB9EBC8;
  if (!qword_27CB9EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBC8);
  }

  return result;
}

uint64_t sub_217ADCA74()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217ADCB44(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217ADCC00(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217ADCCD8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x646564616F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x676B636142707061;
    v4 = 0xEF6465646E756F72;
  }

  if (*v1)
  {
    v3 = 0x656E6F646E616261;
    v2 = 0xE900000000000064;
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

unint64_t sub_217ADCE24()
{
  result = qword_27CB9EBD0;
  if (!qword_27CB9EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBD0);
  }

  return result;
}

uint64_t NotificationReceiptReporter.__allocating_init(log:contentType:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NotificationReceiptReporter.init(log:contentType:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall NotificationReceiptReporter.startSession()()
{
  v1 = sub_217D87C9C();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_217D87CCC();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_217D888BC();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SessionData;
  v35 = MEMORY[0x277D83D88];
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = *(v0 + 24);
  v16 = sub_217D897FC();
  sub_217D88E5C("NotificationReceiptReporter starting session", 44, 2, &dword_217A45000, v15, v16, MEMORY[0x277D84F90]);
  sub_217ADD3A0(v0, v14);
  sub_217ADD6C8(v0, v42);
  sub_217ADD8DC(v0, &v43);
  v32 = v43;
  v31 = v44;
  sub_217ADDAEC(v0, &v43);
  sub_217ADE808(v14, v12);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_217ADE89C(v12, v20 + v17);
  v21 = (v20 + v18);
  v22 = v42[1];
  *v21 = v42[0];
  v21[1] = v22;
  v23 = v42[3];
  v21[2] = v42[2];
  v21[3] = v23;
  v24 = (v20 + v19);
  v25 = v31;
  *v24 = v32;
  v24[1] = v25;
  v26 = v20 + ((v19 + 39) & 0xFFFFFFFFFFFFFFF8);
  v27 = v45;
  *(v26 + 16) = v44;
  *(v26 + 32) = v27;
  *v26 = v43;
  *(v26 + 48) = v46;
  sub_217D8833C();

  strcpy(v7, "notification");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  v28 = v33;
  v29 = v34;
  (*(v33 + 104))(v7, *MEMORY[0x277CEAE70], v34);
  sub_217D87CBC();
  sub_217D87CAC();
  (*(v37 + 8))(v5, v38);
  v30 = v39;
  sub_217D87C8C();
  sub_217D8836C();

  (*(v40 + 8))(v30, v41);
  (*(v28 + 8))(v7, v29);
  sub_217AE0580(v14, &qword_27CB9EBD8, v36, v35, sub_217A520D0);
}

uint64_t sub_217ADD3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SessionData(0);
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  v8 = sub_217D8951C();
  v9 = [v7 dataForKey_];

  if (v9)
  {
    v10 = sub_217D87C0C();
    v12 = v11;

    sub_217A52088(&qword_2811C7C50, type metadata accessor for SessionData, &protocol conformance descriptor for SessionData);
    sub_217D88A1C();
    sub_217AE010C(v10, v12);
    sub_217AE045C(v6, a2);
    return (*(v18 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v13 = *(a1 + 24);
    v14 = sub_217D897DC();
    sub_217D88E5C("Could not find session data in defaults", 39, 2, &dword_217A45000, v13, v14, MEMORY[0x277D84F90]);
    v15 = *(v18 + 56);

    return v15(a2, 1, 1, v4);
  }
}

double sub_217ADD6C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_217D8951C();
  v6 = [v4 dataForKey_];

  if (v6)
  {
    v7 = sub_217D87C0C();
    v9 = v8;

    sub_217A59044();
    sub_217D88A1C();
    sub_217AE010C(v7, v9);
    *a2 = v13;
    a2[1] = v14;
    result = *&v15;
    a2[2] = v15;
    a2[3] = v16;
  }

  else
  {
    v10 = *(a1 + 24);
    v11 = sub_217D897DC();
    sub_217D88E5C("Could not find user data in defaults", 36, 2, &dword_217A45000, v10, v11, MEMORY[0x277D84F90]);
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_217ADD8DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_217D8951C();
  v6 = [v4 dataForKey_];

  if (v6)
  {
    v7 = sub_217D87C0C();
    v9 = v8;

    sub_217A57A28();
    sub_217D88A1C();
    sub_217AE010C(v7, v9);
    result = *&v13;
    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
  }

  else
  {
    v10 = *(a1 + 24);
    v11 = sub_217D897DC();
    sub_217D88E5C("Could not find app data in defaults", 35, 2, &dword_217A45000, v10, v11, MEMORY[0x277D84F90]);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_217ADDAEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_217D8951C();
  v6 = [v4 dataForKey_];

  if (v6)
  {
    v7 = sub_217D87C0C();
    v9 = v8;

    sub_217A57F3C();
    sub_217D88A1C();
    sub_217AE010C(v7, v9);
    *a2 = v13;
    *(a2 + 16) = v14;
    result = *&v15;
    *(a2 + 32) = v15;
    *(a2 + 48) = v16;
  }

  else
  {
    v10 = *(a1 + 24);
    v11 = sub_217D897DC();
    sub_217D88E5C("Could not find device data in defaults", 38, 2, &dword_217A45000, v10, v11, MEMORY[0x277D84F90]);
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_217ADDD0C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  *&v67 = a6;
  *(&v67 + 1) = a7;
  v80 = a1;
  v81 = a5;
  v66 = a4;
  v10 = a8[1];
  v71 = a8 + 1;
  v11 = *a8;
  v75 = v10;
  v76 = v11;
  v12 = *(a8 + 4);
  v73 = *(a8 + 5);
  v74 = v12;
  v82 = a8;
  v72 = *(a8 + 6);
  v13 = a3[1];
  v93 = *a3;
  v94 = v13;
  v14 = a3[3];
  v95 = a3[2];
  v96 = v14;
  sub_217AE0368(0, &qword_2811C8970, sub_217A57EE4, &type metadata for DeviceData);
  v78 = *(v15 - 8);
  v79 = v15;
  MEMORY[0x28223BE20](v15);
  v77 = &v60 - v16;
  sub_217AE0368(0, &qword_2811C8940, sub_217A579D0, &type metadata for AppData);
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x28223BE20](v17);
  v68 = &v60 - v18;
  sub_217AE0368(0, &qword_2811C8990, sub_217A58FEC, &type metadata for UserData);
  v64 = *(v19 - 8);
  v65 = v19;
  MEMORY[0x28223BE20](v19);
  v63 = &v60 - v20;
  sub_217AE03C8(0);
  v61 = *(v21 - 8);
  v62 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v60 - v25;
  v27 = type metadata accessor for SessionData(0);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v60 - v32;
  sub_217ADE808(a2, v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    result = sub_217AE0580(v26, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88], sub_217A520D0);
  }

  else
  {
    sub_217AE045C(v26, v33);
    sub_217AE04C0(v33, v31);
    v60 = sub_217A52088(&qword_2811C7C60, type metadata accessor for SessionData, &protocol conformance descriptor for SessionData);
    sub_217D880EC();
    sub_217A520D0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v35 = sub_217D882DC();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_217D8D8F0;
    (*(v36 + 104))(v38 + v37, *MEMORY[0x277CEAD10], v35);
    sub_217D8854C();

    (*(v61 + 8))(v23, v62);
    result = sub_217AE0524(v33);
  }

  v39 = *(a3 + 1);
  if (v39)
  {
    v40 = *a3;
    v41 = a3[2];
    v86 = a3[1];
    v87 = v41;
    v88 = a3[3];
    v84 = v40;
    v85 = v39;
    v89 = v93;
    v90 = v94;
    v91 = v95;
    v92 = v96;
    sub_217A6395C(&v89, v83);
    sub_217A58FEC();
    v42 = v63;
    sub_217D880EC();
    sub_217A520D0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v43 = sub_217D882DC();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_217D8D8F0;
    (*(v44 + 104))(v46 + v45, *MEMORY[0x277CEAD10], v43);
    sub_217D8854C();

    result = (*(v64 + 8))(v42, v65);
  }

  if (v81)
  {
    *&v89 = v66;
    *(&v89 + 1) = v81;
    v90 = v67;
    sub_217A579D0();

    v47 = v68;
    sub_217D880EC();
    sub_217A520D0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v48 = sub_217D882DC();
    v49 = *(v48 - 8);
    v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_217D8D8F0;
    (*(v49 + 104))(v51 + v50, *MEMORY[0x277CEAD10], v48);
    sub_217D8854C();

    result = (*(v69 + 8))(v47, v70);
  }

  v52 = *(v82 + 1);
  if (v52)
  {
    v53 = *v82;
    v54 = v71[1];
    v86 = *v71;
    v87 = v54;
    *&v88 = *(v71 + 4);
    v84 = v53;
    v85 = v52;
    v89 = v76;
    v90 = v75;
    *&v91 = v74;
    *(&v91 + 1) = v73;
    *&v92 = v72;
    sub_217A61B90(&v89, v83);
    sub_217A57EE4();
    v55 = v77;
    sub_217D880EC();
    sub_217A520D0(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v56 = sub_217D882DC();
    v57 = *(v56 - 8);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_217D8D8F0;
    (*(v57 + 104))(v59 + v58, *MEMORY[0x277CEAD10], v56);
    sub_217D8854C();

    return (*(v78 + 8))(v55, v79);
  }

  return result;
}

uint64_t sub_217ADE808(uint64_t a1, uint64_t a2)
{
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217ADE89C(uint64_t a1, uint64_t a2)
{
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217ADE930(uint64_t a1)
{
  sub_217A520D0(0, &qword_27CB9EBD8, type metadata accessor for SessionData, MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 71) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];

  return sub_217ADDD0C(a1, v1 + v5, (v1 + v6), v10, v11, v12, v13, (v1 + v8));
}

Swift::Void __swiftcall NotificationReceiptReporter.report(status:notificationData:)(NewsAnalytics::NotificationStatus status, NewsAnalytics::NotificationData *notificationData)
{
  v3 = *status;
  v4 = *&notificationData->sourceChannelID.value._object;
  v17 = *&notificationData->senderChannelID.value._object;
  v18 = v4;
  algoId = notificationData->algoId;
  v19 = *&notificationData->notificationArticleID.value._object;
  v20 = algoId;
  v6 = *&notificationData->viewFromNotification;
  notificationID = notificationData->notificationID;
  v16 = v6;
  sub_217ADEB70(v2, &notificationID, v21);
  sub_217ADEEC8(v2, &notificationID, v14);
  v7 = v14[0];
  sub_217D883AC();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = v18;
  *(v9 + 56) = v17;
  *(v9 + 72) = v10;
  v11 = v20;
  *(v9 + 88) = v19;
  *(v9 + 104) = v11;
  v12 = v16;
  *(v9 + 24) = notificationID;
  *(v9 + 40) = v12;
  *(v9 + 120) = v3;
  *(v9 + 160) = v22;
  v13 = v21[1];
  *(v9 + 128) = v21[0];
  *(v9 + 144) = v13;
  *(v9 + 168) = v7;

  sub_217ADF510(&notificationID, v14);
  sub_217D888EC();
}

uint64_t sub_217ADEB70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 40);
  v7 = sub_217D8951C();
  v8 = [v6 dictionaryForKey_];

  if (!v8)
  {
    v13 = *(a1 + 24);
    v14 = sub_217D897DC();
    result = sub_217D88E5C("Could not find channelDataDictionary in defaults", 48, 2, &dword_217A45000, v13, v14, MEMORY[0x277D84F90]);
LABEL_14:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v9 = sub_217D8948C();

  v10 = a2[4];
  if (v10)
  {
    v11 = a2[3];
    v12 = v10;
  }

  else
  {
    v12 = a2[6];
    if (!v12)
    {

      v24 = *(a1 + 24);
      v25 = sub_217D897DC();
      result = sub_217D88E5C("Unable to create key for channel", 32, 2, &dword_217A45000, v24, v25, MEMORY[0x277D84F90]);
      goto LABEL_14;
    }

    v11 = a2[5];
  }

  v16 = *(v9 + 16);

  if (!v16)
  {

    goto LABEL_12;
  }

  v17 = sub_217C2E9BC(v11, v12);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_217AE02B0(*(v9 + 56) + 32 * v17, v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v22 = *(a1 + 24);
    v23 = sub_217D897DC();
    result = sub_217D88E5C("Unable to find channelDataRaw in dictionary", 43, 2, &dword_217A45000, v22, v23, MEMORY[0x277D84F90]);
    goto LABEL_14;
  }

  v20 = v36;
  v21 = v37;
  sub_217AD07F8();
  sub_217D88A1C();
  result = sub_217AE010C(v20, v21);
  v26 = v31[1];
  v27 = v34;
  v28 = v35;
  v29 = 256;
  if (!v33)
  {
    v29 = 0;
  }

  v30 = v29 | v32;
  *a3 = v31[0];
  *(a3 + 8) = v26;
  *(a3 + 16) = v30;
  *(a3 + 24) = v27;
  *(a3 + 32) = v28;
  return result;
}

uint64_t sub_217ADEEC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X8>)
{
  v6 = *(a1 + 40);
  v7 = sub_217D8951C();
  v8 = [v6 dictionaryForKey_];

  if (!v8)
  {
    v13 = *(a1 + 24);
    v14 = sub_217D897DC();
    v15 = 2;
    result = sub_217D88E5C("Could not find userChannelDataDictionary in defaults", 52, 2, &dword_217A45000, v13, v14, MEMORY[0x277D84F90]);
    goto LABEL_14;
  }

  v9 = sub_217D8948C();

  v10 = a2[4];
  if (v10)
  {
    v11 = a2[3];
    v12 = v10;
  }

  else
  {
    v12 = a2[6];
    if (!v12)
    {

      v23 = *(a1 + 24);
      v24 = sub_217D897DC();
      v15 = 2;
      result = sub_217D88E5C("Unable to create key for channel", 32, 2, &dword_217A45000, v23, v24, MEMORY[0x277D84F90]);
      goto LABEL_14;
    }

    v11 = a2[5];
  }

  v17 = *(v9 + 16);

  if (!v17)
  {

    goto LABEL_12;
  }

  v18 = sub_217C2E9BC(v11, v12);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_217AE02B0(*(v9 + 56) + 32 * v18, v28);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v21 = *(a1 + 24);
    v22 = sub_217D897DC();
    v15 = 2;
    result = sub_217D88E5C("Unable to find userChannelDataRaw in dictionary", 47, 2, &dword_217A45000, v21, v22, MEMORY[0x277D84F90]);
    goto LABEL_14;
  }

  sub_217ACFB38();
  sub_217D88A1C();
  result = sub_217AE010C(v26, v27);
  if (v28[1])
  {
    v25 = 256;
  }

  else
  {
    v25 = 0;
  }

  v15 = v25 | v28[0] | (v28[2] << 16) | (v28[3] << 24);
LABEL_14:
  *a3 = v15;
  return result;
}

uint64_t sub_217ADF224(uint64_t a1, uint64_t a2, __int128 *a3, char a4, uint64_t *a5, int a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = a3[3];
    v22 = a3[2];
    v23 = v11;
    v12 = a3[5];
    v24 = a3[4];
    v25 = v12;
    v13 = a3[1];
    v20 = *a3;
    v21 = v13;
    sub_217AE0160();
    sub_217D8820C();
    LOBYTE(v20) = a4;
    sub_217AE01B4();
    sub_217D8820C();
    sub_217ADF56C(&v16);
    sub_217A4DD9C();
    sub_217D8820C();
    v20 = v16;
    v21 = v17;
    v22 = v18;
    LOBYTE(v23) = v19;
    sub_217ACC69C(&v20);
    v14 = a5[1];
    if (v14)
    {
      v15 = *a5;
      v17 = *(a5 + 1);
      *&v18 = a5[4];
      *&v16 = v15;
      *(&v16 + 1) = v14;
      sub_217AE025C();
      sub_217D8820C();
    }

    if (a6 != 2)
    {
      LOWORD(v16) = a6 & 0x101;
      BYTE2(v16) = BYTE2(a6);
      BYTE3(v16) = HIBYTE(a6);
      sub_217AE0208();
      sub_217D8820C();
    }

    type metadata accessor for NotificationReceivedEvent(0);
    sub_217A52088(&qword_27CB9EC00, type metadata accessor for NotificationReceivedEvent, &protocol conformance descriptor for NotificationReceivedEvent);
    v16 = 0u;
    v17 = 0u;
    sub_217D8822C();

    return sub_217AE0580(&v16, &qword_2811BC3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_217A55E90);
  }

  return result;
}

double sub_217ADF56C@<D0>(uint64_t a2@<X8>)
{
  v3 = NewsCoreUserDefaults();
  v4 = sub_217D8951C();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_217D8996C();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v8 = v14;
  v9 = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_217D8796C();
      swift_allocObject();
      sub_217D8795C();
      sub_217A54D08();
      sub_217D8794C();

      sub_217AE010C(v12, v13);

      v6 = v9;
      *a2 = v8;
      *(a2 + 16) = v6;
      result = *&v10;
      *(a2 + 32) = v10;
      *(a2 + 48) = v11;
      return result;
    }
  }

  else
  {

    sub_217AE0580(&v8, &qword_2811BC3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_217A55E90);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

Swift::Void __swiftcall NotificationReceiptReporter.reportBadge(origin:)(NewsAnalytics::BadgeOriginationData origin)
{
  v1 = *origin.badgeOriginationType;
  sub_217D883AC();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_217D888EC();
}

uint64_t sub_217ADF824(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LOBYTE(v9[0]) = a3;
    sub_217AE00B8();
    sub_217D8820C();
    sub_217ADF56C(&v5);
    sub_217A4DD9C();
    sub_217D8820C();
    v9[0] = v5;
    v9[1] = v6;
    v9[2] = v7;
    v10 = v8;
    sub_217ACC69C(v9);
    type metadata accessor for AppBadgeEvent(0);
    sub_217A52088(&qword_27CB9EBE8, type metadata accessor for AppBadgeEvent, &protocol conformance descriptor for AppBadgeEvent);
    v5 = 0u;
    v6 = 0u;
    sub_217D8822C();

    return sub_217AE0580(&v5, &qword_2811BC3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_217A55E90);
  }

  return result;
}

uint64_t NotificationReceiptReporter.endSession(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_217D87C9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  v10 = sub_217D897FC();
  sub_217D88E5C("NotificationReceiptReporter ending session", 42, 2, &dword_217A45000, v9, v10, MEMORY[0x277D84F90]);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;

  sub_217D87C8C();
  sub_217D8834C();

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_217ADFB88(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 24);
    v5 = sub_217D897FC();
    sub_217D88E5C("NotificationReceiptReporter session ended", 41, 2, &dword_217A45000, v4, v5, MEMORY[0x277D84F90]);

    a2();
  }

  return result;
}

uint64_t NotificationReceiptReporter.deinit()
{

  return v0;
}

uint64_t NotificationReceiptReporter.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_217ADFFDC()
{

  v1 = OBJC_IVAR____TtC13NewsAnalyticsP33_73410A717757B42F2A6F1BC37191285735NotificationReceiptReporterEndpoint_defaultURL;
  v2 = sub_217D87BAC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13NewsAnalyticsP33_73410A717757B42F2A6F1BC37191285735NotificationReceiptReporterEndpoint_notificationReceiptURL, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

unint64_t sub_217AE00B8()
{
  result = qword_27CB9EBE0;
  if (!qword_27CB9EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBE0);
  }

  return result;
}

uint64_t sub_217AE010C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_217AE0160()
{
  result = qword_27CB9EBF0;
  if (!qword_27CB9EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBF0);
  }

  return result;
}

unint64_t sub_217AE01B4()
{
  result = qword_27CB9EBF8;
  if (!qword_27CB9EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EBF8);
  }

  return result;
}

unint64_t sub_217AE0208()
{
  result = qword_27CB9EC08;
  if (!qword_27CB9EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC08);
  }

  return result;
}

unint64_t sub_217AE025C()
{
  result = qword_27CB9EC10;
  if (!qword_27CB9EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC10);
  }

  return result;
}

uint64_t sub_217AE02B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_217AE030C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_217AE0368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_217D880FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_217AE03C8(uint64_t a1)
{
  if (!qword_2811C8938)
  {
    type metadata accessor for SessionData(255);
    sub_217A52088(&qword_2811C7C60, type metadata accessor for SessionData, &protocol conformance descriptor for SessionData);
    v1 = sub_217D880FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8938);
    }
  }
}

uint64_t sub_217AE045C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE04C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE0524(uint64_t a1)
{
  v2 = type metadata accessor for SessionData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AE0580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t RecirculationData.dataProviderID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecirculationData.dataProviderID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217AE069C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x766F725061746164 && a2 == 0xEE00444972656469)
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

uint64_t sub_217AE072C(uint64_t a1)
{
  v2 = sub_217AE08F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AE0768(uint64_t a1)
{
  v2 = sub_217AE08F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecirculationData.encode(to:)(void *a1)
{
  sub_217AE0AC8(0, &qword_27CB9EC18, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE08F0();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217AE08F0()
{
  result = qword_27CB9EC20;
  if (!qword_27CB9EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC20);
  }

  return result;
}

uint64_t RecirculationData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217AE0AC8(0, &qword_27CB9EC28, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE08F0();
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

void sub_217AE0AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AE08F0();
    v7 = a3(a1, &type metadata for RecirculationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AE0B30()
{
  result = qword_2811C4358;
  if (!qword_2811C4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4358);
  }

  return result;
}

unint64_t sub_217AE0B88()
{
  result = qword_2811C4360;
  if (!qword_2811C4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4360);
  }

  return result;
}

uint64_t sub_217AE0BF4(void *a1)
{
  sub_217AE0AC8(0, &qword_27CB9EC18, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE08F0();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217AE0D64()
{
  result = qword_27CB9EC30;
  if (!qword_27CB9EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC30);
  }

  return result;
}

unint64_t sub_217AE0DBC()
{
  result = qword_27CB9EC38;
  if (!qword_27CB9EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC38);
  }

  return result;
}

unint64_t sub_217AE0E14()
{
  result = qword_27CB9EC40;
  if (!qword_27CB9EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC40);
  }

  return result;
}

NewsAnalytics::FeedbackType_optional __swiftcall FeedbackType.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedbackType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65736C6166;
  if (*v0 != 2)
  {
    v2 = 0x656279616DLL;
  }

  if (*v0)
  {
    v1 = 1702195828;
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

unint64_t sub_217AE0F40()
{
  result = qword_27CB9EC48;
  if (!qword_27CB9EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC48);
  }

  return result;
}

uint64_t sub_217AE0F94()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217AE1048(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217AE10E8(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217AE11A4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x65736C6166;
  if (*v1 != 2)
  {
    v4 = 0x656279616DLL;
  }

  if (*v1)
  {
    v3 = 1702195828;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_217AE12D4()
{
  result = qword_27CB9EC50;
  if (!qword_27CB9EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EC50);
  }

  return result;
}

uint64_t sub_217AE13F0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EC88);
  __swift_project_value_buffer(v0, qword_27CB9EC88);
  return sub_217D8866C();
}

uint64_t MediaEngageEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaEngageEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 20);
  sub_217AE2C2C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 20);
  sub_217AE2C2C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 24);
  sub_217AE2C2C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 24);
  sub_217AE2C2C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 28);
  sub_217AE2C2C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 28);
  sub_217AE2C2C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 32);
  sub_217AE2C2C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 32);
  sub_217AE2C2C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 36);
  sub_217AE2C2C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AE1CB4()
{
  result = qword_2811BD0D0;
  if (!qword_2811BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0D0);
  }

  return result;
}

unint64_t sub_217AE1D08()
{
  result = qword_2811BD0D8;
  if (!qword_2811BD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0D8);
  }

  return result;
}

uint64_t MediaEngageEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 36);
  sub_217AE2C2C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.mediaEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 40);
  sub_217AE2C2C(0, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60, &type metadata for MediaEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AE1F0C()
{
  result = qword_2811C29C8;
  if (!qword_2811C29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29C8);
  }

  return result;
}

unint64_t sub_217AE1F60()
{
  result = qword_2811C29D0;
  if (!qword_2811C29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29D0);
  }

  return result;
}

uint64_t MediaEngageEvent.mediaEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 40);
  sub_217AE2C2C(0, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60, &type metadata for MediaEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 44);
  sub_217AE2C2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 44);
  sub_217AE2C2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 48);
  sub_217AE2C2C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AE2314()
{
  result = qword_2811C5E48;
  if (!qword_2811C5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5E48);
  }

  return result;
}

unint64_t sub_217AE2368()
{
  result = qword_2811C5E50;
  if (!qword_2811C5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5E50);
  }

  return result;
}

uint64_t MediaEngageEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 48);
  sub_217AE2C2C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 52);
  sub_217AE2C2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 52);
  sub_217AE2C2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 56);
  sub_217AE2C2C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 56);
  sub_217AE2C2C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 60);
  sub_217AE2C2C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 60);
  sub_217AE2C2C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 64);
  sub_217AE2C2C(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 64);
  sub_217AE2C2C(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 68);
  sub_217AE2C2C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AE2C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

unint64_t sub_217AE2CA8()
{
  result = qword_2811BF128;
  if (!qword_2811BF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF128);
  }

  return result;
}

unint64_t sub_217AE2CFC()
{
  result = qword_2811BF130;
  if (!qword_2811BF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF130);
  }

  return result;
}

uint64_t MediaEngageEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 68);
  sub_217AE2C2C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaEngageEvent(0);
  v5 = v4[5];
  sub_217AE2C2C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AE2C2C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AE2C2C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217AE2C2C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217AE2C2C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217AE2C2C(0, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60, &type metadata for MediaEngagementData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AE2C2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AE2C2C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217AE2C2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217AE2C2C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217AE2C2C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_217AE2C2C(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v29 - 8) + 104))(a1 + v28, v10, v29);
  v30 = v4[17];
  sub_217AE2C2C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v32 = *(*(v31 - 8) + 104);

  return v32(a1 + v30, v10, v31);
}

uint64_t MediaEngageEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 20);
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

uint64_t MediaEngageEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 24);
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

uint64_t MediaEngageEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 28));
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

uint64_t MediaEngageEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t MediaEngageEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 36));
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

uint64_t MediaEngageEvent.Model.mediaEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for MediaEngageEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 3);
  v8 = *(v4 + 16);
  LOBYTE(v4) = *(v4 + 17);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 12) = v7;
  *(a1 + 16) = v8;
  *(a1 + 17) = v4;
  return result;
}

uint64_t MediaEngageEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaEngageEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 48));
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

uint64_t sub_217AE38AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_217A5E974(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t MediaEngageEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 52);
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

void MediaEngageEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 56));
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

void sub_217AE39D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t MediaEngageEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaEngageEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for MediaEngageEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

void MediaEngageEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 68));
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

void sub_217AE3AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
  }
}

__n128 MediaEngageEvent.Model.init(eventData:articleData:channelData:groupData:feedData:mediaData:mediaEngagementData:viewData:anfComponentData:userBundleSubscriptionContextData:issueData:issueViewData:orientationData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, __int128 *a12, uint64_t *a13, __int16 *a14, uint64_t a15)
{
  v19 = a3[1];
  v20 = *(a3 + 16);
  v57 = *(a3 + 17);
  v56 = a3[3];
  v55 = a3[4];
  v60 = *a5;
  v58 = *a3;
  v59 = *(a5 + 2);
  v64 = *(a6 + 1);
  v63 = *(a6 + 2);
  v62 = *(a6 + 6);
  v61 = a6[28];
  v70 = *a7;
  v69 = *(a7 + 8);
  v68 = *(a7 + 3);
  v67 = *(a7 + 16);
  v65 = *a6;
  v66 = *(a7 + 17);
  v72 = a8[1];
  v73 = *a8;
  v71 = *(a8 + 8);
  v78 = a13[1];
  v79 = *a13;
  v80 = *a14;
  v81 = *(a15 + 32);
  v21 = sub_217D8899C();
  v76 = *(a15 + 16);
  v77 = *a15;
  v74 = a12[1];
  v75 = *a12;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for MediaEngageEvent.Model(0);
  v23 = a9 + v22[5];
  *(v23 + 127) = *(a2 + 127);
  v24 = a2[3];
  v25 = *a2;
  v26 = a2[1];
  v28 = a2[6];
  v27 = a2[7];
  v29 = a2[4];
  v30 = a2[5];
  *(v23 + 32) = a2[2];
  *(v23 + 48) = v24;
  *v23 = v25;
  *(v23 + 16) = v26;
  *(v23 + 96) = v28;
  *(v23 + 112) = v27;
  *(v23 + 64) = v29;
  *(v23 + 80) = v30;
  v31 = a9 + v22[6];
  *v31 = v58;
  *(v31 + 8) = v19;
  *(v31 + 16) = v20;
  *(v31 + 17) = v57;
  *(v31 + 24) = v56;
  *(v31 + 32) = v55;
  v32 = a4[7];
  v33 = a4[8];
  v34 = a4[2];
  v35 = a4[3];
  v37 = a4[4];
  v36 = a4[5];
  v39 = *a4;
  v38 = a4[1];
  v40 = (a9 + v22[7]);
  v40[6] = a4[6];
  v40[7] = v32;
  v40[8] = v33;
  v40[2] = v34;
  v40[3] = v35;
  v40[4] = v37;
  v40[5] = v36;
  *v40 = v39;
  v40[1] = v38;
  v41 = a9 + v22[8];
  *(v41 + 16) = v59;
  *v41 = v60;
  v42 = a9 + v22[9];
  *v42 = v65;
  *(v42 + 8) = v64;
  *(v42 + 16) = v63;
  *(v42 + 24) = v62;
  *(v42 + 28) = v61;
  v43 = a9 + v22[10];
  *v43 = v70;
  *(v43 + 8) = v69;
  *(v43 + 12) = v68;
  *(v43 + 16) = v67;
  *(v43 + 17) = v66;
  v44 = a9 + v22[11];
  *v44 = v73;
  *(v44 + 8) = v72;
  *(v44 + 16) = v71;
  v45 = (a9 + v22[12]);
  v46 = a10[3];
  v45[2] = a10[2];
  v45[3] = v46;
  v47 = a10[1];
  *v45 = *a10;
  v45[1] = v47;
  v48 = a9 + v22[13];
  *(v48 + 48) = *(a11 + 48);
  v49 = a11[2];
  v50 = *a11;
  *(v48 + 16) = a11[1];
  *(v48 + 32) = v49;
  *v48 = v50;
  v51 = (a9 + v22[14]);
  *v51 = v75;
  v51[1] = v74;
  v52 = (a9 + v22[15]);
  *v52 = v79;
  v52[1] = v78;
  *(a9 + v22[16]) = v80;
  v53 = a9 + v22[17];
  *(v53 + 32) = v81;
  result = v77;
  *v53 = v77;
  *(v53 + 16) = v76;
  return result;
}

uint64_t sub_217AE3E10(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x446C656E6E616863;
      break;
    case 3:
      result = 0x74614470756F7267;
      break;
    case 4:
      v3 = 1684366694;
      goto LABEL_11;
    case 5:
      result = 0x746144616964656DLL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      v3 = 2003134838;
LABEL_11:
      result = v3 | 0x6174614400000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x7461446575737369;
      break;
    case 11:
      result = 0x6569566575737369;
      break;
    case 12:
      result = 0x7461746E6569726FLL;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217AE3FB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AE6778(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AE3FE0(uint64_t a1)
{
  v2 = sub_217AE49F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AE401C(uint64_t a1)
{
  v2 = sub_217AE49F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngageEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AE572C(0, &qword_27CB9ECA8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v73 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE49F0();
  sub_217D89E7C();
  v146[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for MediaEngageEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v144 = *(v11 + 96);
    *v145 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v140 = *(v11 + 32);
    v141 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v142 = *(v11 + 64);
    v143 = v17;
    v18 = *(v11 + 16);
    v139[0] = *v11;
    v139[1] = v18;
    v19 = *(v11 + 112);
    v137 = v144;
    v138[0] = v19;
    v133 = v140;
    v134 = v16;
    v136 = v12;
    v135 = v142;
    *&v145[15] = *(v11 + 127);
    *(v138 + 15) = *(v11 + 127);
    v132 = v14;
    v131 = v139[0];
    v130 = 1;
    sub_217AD1630(v139, v113);
    sub_217ACF52C();
    sub_217D89CAC();
    v128[6] = v137;
    *v129 = v138[0];
    *&v129[15] = *(v138 + 15);
    v128[2] = v133;
    v128[3] = v134;
    v128[5] = v136;
    v128[4] = v135;
    v128[0] = v131;
    v128[1] = v132;
    sub_217AD2864(v128);
    v20 = (v3 + v10[6]);
    v21 = v20[1];
    v22 = *(v20 + 16);
    v23 = *(v20 + 17);
    v24 = v20[3];
    v25 = v20[4];
    v122 = *v20;
    v123 = v21;
    v124 = v22;
    v125 = v23;
    v126 = v24;
    v127 = v25;
    v121 = 2;
    sub_217AD084C();

    sub_217D89CAC();

    v26 = (v3 + v10[7]);
    v27 = v26[5];
    v28 = v26[7];
    v118 = v26[6];
    v119 = v28;
    v29 = v26[7];
    v120 = v26[8];
    v30 = v26[1];
    v31 = v26[3];
    v114 = v26[2];
    v115 = v31;
    v32 = v26[3];
    v33 = v26[5];
    v116 = v26[4];
    v117 = v33;
    v34 = v26[1];
    v113[0] = *v26;
    v113[1] = v34;
    v110 = v118;
    v111 = v29;
    v112 = v26[8];
    v106 = v114;
    v107 = v32;
    v108 = v116;
    v109 = v27;
    v104 = v113[0];
    v105 = v30;
    v103 = 3;
    sub_217AE38AC(v113, v102, &qword_2811BD178, &type metadata for GroupData);
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
    v35 = (v3 + v10[8]);
    v36 = v35[1];
    v37 = v35[2];
    *&v94 = *v35;
    *(&v94 + 1) = v36;
    *&v95 = v37;
    LOBYTE(v90) = 4;
    sub_217AD1A68(v94, v36, v37);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v94, *(&v94 + 1), v95);
    v38 = (v3 + v10[9]);
    v39 = *v38;
    v40 = *(v38 + 1);
    v41 = *(v38 + 2);
    v42 = *(v38 + 6);
    LOBYTE(v38) = v38[28];
    LOBYTE(v94) = v39;
    *(&v94 + 1) = v40;
    *&v95 = v41;
    DWORD2(v95) = v42;
    BYTE12(v95) = v38;
    LOBYTE(v90) = 5;
    sub_217AE1D08();

    sub_217D89CAC();

    v43 = (v3 + v10[10]);
    v44 = *v43;
    v45 = *(v43 + 8);
    v46 = *(v43 + 3);
    v47 = *(v43 + 16);
    LOBYTE(v43) = *(v43 + 17);
    *&v94 = v44;
    BYTE8(v94) = v45;
    HIDWORD(v94) = v46;
    LOBYTE(v95) = v47;
    BYTE1(v95) = v43;
    LOBYTE(v90) = 6;
    sub_217AE1F60();
    sub_217D89CAC();
    v48 = (v3 + v10[11]);
    v49 = *v48;
    v50 = v48[1];
    LOWORD(v48) = *(v48 + 8);
    v99 = v49;
    v100 = v50;
    v101 = v48;
    v98 = 7;
    sub_217A5E790();

    sub_217D89CAC();

    v51 = (v3 + v10[12]);
    v52 = v51[1];
    v94 = *v51;
    v95 = v52;
    v53 = v51[3];
    v55 = *v51;
    v54 = v51[1];
    v96 = v51[2];
    v97 = v53;
    v90 = v55;
    v91 = v54;
    v56 = v51[3];
    v92 = v51[2];
    v93 = v56;
    v89 = 8;
    sub_217AE38AC(&v94, v88, &qword_27CB9ECA0, &type metadata for ANFComponentData);
    sub_217AE2368();
    sub_217D89C3C();
    v88[0] = v90;
    v88[1] = v91;
    v88[2] = v92;
    v88[3] = v93;
    sub_217AE4A44(v88, &qword_27CB9ECA0, &type metadata for ANFComponentData);
    v57 = (v3 + v10[13]);
    v58 = v57[1];
    v86[0] = *v57;
    v86[1] = v58;
    v60 = *v57;
    v59 = v57[1];
    v86[2] = v57[2];
    v87 = *(v57 + 48);
    v82 = v60;
    v83 = v59;
    v84 = v57[2];
    v85 = *(v57 + 48);
    v81 = 9;
    sub_217ACC004(v86, v79);
    sub_217A55B98();
    sub_217D89CAC();
    v79[0] = v82;
    v79[1] = v83;
    v79[2] = v84;
    v80 = v85;
    sub_217ACC69C(v79);
    v61 = (v3 + v10[14]);
    v62 = v61[1];
    v63 = v61[2];
    v64 = v61[3];
    v73 = *v61;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v78 = 10;
    sub_217AE39D0(v73, v62, v63, v64);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v73, v74, v75, v76);
    v65 = (v3 + v10[15]);
    v66 = v65[1];
    v73 = *v65;
    v74 = v66;
    v78 = 11;
    sub_217AD01EC();

    sub_217D89C3C();

    LOWORD(v73) = *(v3 + v10[16]);
    v78 = 12;
    sub_217A4CF88();
    sub_217D89C3C();
    v67 = (v3 + v10[17]);
    v68 = v67[1];
    v69 = v67[2];
    v70 = v67[3];
    v71 = v67[4];
    v73 = *v67;
    v74 = v68;
    v75 = v69;
    v76 = v70;
    v77 = v71;
    v78 = 13;
    sub_217AE3AE8(v73, v68, v69, v70, v71);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v73, v74, v75, v76, v77);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AE49F0()
{
  result = qword_27CB9ECB0;
  if (!qword_27CB9ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ECB0);
  }

  return result;
}

uint64_t sub_217AE4A44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_217A5E974(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_217AE4AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_217AE4AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
  }
}

void MediaEngageEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_217D8899C();
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AE572C(0, &qword_27CB9ECB8, MEMORY[0x277D844C8]);
  v66 = v5;
  v63 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v58 - v6;
  v8 = type metadata accessor for MediaEngageEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE49F0();
  v65 = v7;
  v11 = v100;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v63;
    v59 = v8;
    v60 = a1;
    v100 = v10;
    LOBYTE(v91) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v64;
    sub_217D89BCC();
    v14 = v100;
    (*(v62 + 32))(v100, v13, v3);
    v82 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v58[1] = v3;
    v64 = 0;
    v15 = v59;
    v16 = &v14[v59[5]];
    v17 = *v90;
    *(v16 + 6) = v89;
    *(v16 + 7) = v17;
    *(v16 + 127) = *&v90[15];
    v18 = v86;
    *(v16 + 2) = v85;
    *(v16 + 3) = v18;
    v19 = v88;
    *(v16 + 4) = v87;
    *(v16 + 5) = v19;
    v20 = v84;
    *v16 = v83;
    *(v16 + 1) = v20;
    LOBYTE(v77) = 2;
    sub_217AD07F8();
    sub_217D89BCC();
    v21 = *(&v91 + 1);
    v22 = v92;
    v23 = BYTE1(v92);
    v24 = *(&v92 + 1);
    v25 = v93;
    v26 = &v14[v15[6]];
    *v26 = v91;
    *(v26 + 1) = v21;
    v26[16] = v22;
    v26[17] = v23;
    *(v26 + 3) = v24;
    *(v26 + 4) = v25;
    v81 = 3;
    sub_217A5D308();
    sub_217D89B5C();
    v27 = &v14[v15[7]];
    v28 = v98;
    *(v27 + 6) = v97;
    *(v27 + 7) = v28;
    *(v27 + 8) = v99;
    v29 = v94;
    *(v27 + 2) = v93;
    *(v27 + 3) = v29;
    v30 = v96;
    *(v27 + 4) = v95;
    *(v27 + 5) = v30;
    v31 = v92;
    *v27 = v91;
    *(v27 + 1) = v31;
    LOBYTE(v72) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v32 = v78;
    v33 = &v14[v15[8]];
    *v33 = v77;
    *(v33 + 2) = v32;
    LOBYTE(v72) = 5;
    sub_217AE1CB4();
    sub_217D89BCC();
    v34 = *(&v77 + 1);
    v35 = v78;
    v36 = DWORD2(v78);
    v37 = BYTE12(v78);
    v38 = &v14[v15[9]];
    *v38 = v77;
    *(v38 + 1) = v34;
    *(v38 + 2) = v35;
    *(v38 + 6) = v36;
    v38[28] = v37;
    LOBYTE(v72) = 6;
    sub_217AE1F0C();
    sub_217D89BCC();
    v39 = BYTE8(v77);
    v40 = HIDWORD(v77);
    v41 = v78;
    v42 = BYTE1(v78);
    v43 = &v14[v15[10]];
    *v43 = v77;
    v43[8] = v39;
    *(v43 + 3) = v40;
    v43[16] = v41;
    v43[17] = v42;
    LOBYTE(v72) = 7;
    sub_217A5E738();
    sub_217D89BCC();
    v44 = *(&v77 + 1);
    v45 = v78;
    v46 = &v14[v15[11]];
    *v46 = v77;
    *(v46 + 1) = v44;
    *(v46 + 8) = v45;
    v76 = 8;
    sub_217AE2314();
    sub_217D89B5C();
    v47 = &v100[v15[12]];
    v48 = v78;
    *v47 = v77;
    *(v47 + 1) = v48;
    v49 = v80;
    *(v47 + 2) = v79;
    *(v47 + 3) = v49;
    v71 = 9;
    sub_217A54D08();
    sub_217D89BCC();
    v50 = &v100[v59[13]];
    v51 = v73;
    *v50 = v72;
    *(v50 + 1) = v51;
    *(v50 + 2) = v74;
    v50[48] = v75;
    v70 = 10;
    sub_217ACFF40();
    sub_217D89B5C();
    v52 = &v100[v59[14]];
    v53 = v68;
    *v52 = v67;
    *(v52 + 1) = v53;
    v70 = 11;
    sub_217AD0198();
    sub_217D89B5C();
    *&v100[v59[15]] = v67;
    v70 = 12;
    sub_217A4CF30();
    sub_217D89B5C();
    *&v100[v59[16]] = v67;
    v70 = 13;
    sub_217AE2CA8();
    sub_217D89B5C();
    (*(v12 + 8))(v65, v66);
    v54 = v69;
    v55 = v100;
    v56 = &v100[v59[17]];
    v57 = v68;
    *v56 = v67;
    *(v56 + 1) = v57;
    *(v56 + 4) = v54;
    sub_217AE5790(v55, v61);
    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_217AE57F4(v55);
  }
}

void sub_217AE572C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AE49F0();
    v7 = a3(a1, &type metadata for MediaEngageEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AE5790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE57F4(uint64_t a1)
{
  v2 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AE5928@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AE2C2C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AE2C2C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217AE2C2C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217AE2C2C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217AE2C2C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217AE2C2C(0, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60, &type metadata for MediaEngagementData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217AE2C2C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217AE2C2C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217AE2C2C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217AE2C2C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217AE2C2C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v28 - 8) + 104))(a2 + v27, v11, v28);
  v29 = a1[16];
  sub_217AE2C2C(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v30 - 8) + 104))(a2 + v29, v11, v30);
  v31 = a1[17];
  sub_217AE2C2C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v33 = *(*(v32 - 8) + 104);

  return v33(a2 + v31, v11, v32);
}

void sub_217AE5FFC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217AE2C2C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217AE2C2C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217AE2C2C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217AE2C2C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217AE2C2C(319, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
            if (v6 <= 0x3F)
            {
              sub_217AE2C2C(319, &qword_2811C8600, sub_217AE1F0C, sub_217AE1F60, &type metadata for MediaEngagementData);
              if (v7 <= 0x3F)
              {
                sub_217AE2C2C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_217AE2C2C(319, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
                  if (v9 <= 0x3F)
                  {
                    sub_217AE2C2C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217AE2C2C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                      if (v11 <= 0x3F)
                      {
                        sub_217AE2C2C(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                        if (v12 <= 0x3F)
                        {
                          sub_217AE2C2C(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
                          if (v13 <= 0x3F)
                          {
                            sub_217AE2C2C(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
                            if (v14 <= 0x3F)
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

void sub_217AE64A0(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9ECA0, &type metadata for ANFComponentData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_27CB9ECC0, &type metadata for OrientationData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811BF120, &type metadata for ArticleExposureContextData);
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

unint64_t sub_217AE6674()
{
  result = qword_27CB9ECC8;
  if (!qword_27CB9ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ECC8);
  }

  return result;
}

unint64_t sub_217AE66CC()
{
  result = qword_27CB9ECD0;
  if (!qword_27CB9ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ECD0);
  }

  return result;
}

unint64_t sub_217AE6724()
{
  result = qword_27CB9ECD8;
  if (!qword_27CB9ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ECD8);
  }

  return result;
}

uint64_t sub_217AE6778(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD5B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD5D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_217AE6BF8(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v35 = a1;
  v2 = sub_217D87A4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = sub_217D87AAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AE6FDC(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  sub_217D87A7C();
  sub_217AE7034(v18, v16);
  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    sub_217AE7098(v18);
    v19 = v16;
LABEL_13:
    sub_217AE7098(v19);
    return 0;
  }

  (*(v10 + 32))(v12, v16, v9);
  result = sub_217D87A5C();
  if (!result)
  {
    (*(v10 + 8))(v12, v9);
    v19 = v18;
    goto LABEL_13;
  }

  v21 = result;
  v30 = v18;
  v31 = v12;
  v32 = v10;
  v33 = v9;
  v29 = v8;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_11:

    (*(v32 + 8))(v31, v33);
    v19 = v30;
    goto LABEL_13;
  }

  v23 = 0;
  while (v23 < *(v21 + 16))
  {
    (*(v3 + 16))(v6, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v2);
    if (sub_217D87A2C() == v35 && v24 == v34)
    {

LABEL_16:

      v26 = v29;
      (*(v3 + 32))(v29, v6, v2);
      v27 = sub_217D87A3C();
      (*(v32 + 8))(v31, v33);
      sub_217AE7098(v30);
      (*(v3 + 8))(v26, v2);
      return v27;
    }

    v25 = sub_217D89D4C();

    if (v25)
    {
      goto LABEL_16;
    }

    ++v23;
    result = (*(v3 + 8))(v6, v2);
    if (v22 == v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_217AE6FDC(uint64_t a1)
{
  if (!qword_2811C8CB8[0])
  {
    sub_217D87AAC();
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, qword_2811C8CB8);
    }
  }
}

uint64_t sub_217AE7034(uint64_t a1, uint64_t a2)
{
  sub_217AE6FDC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE7098(uint64_t a1)
{
  sub_217AE6FDC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SportsSessionStartEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsSessionStartEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSessionStartEvent(0) + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSessionStartEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSessionStartEvent(0) + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSessionStartEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSessionStartEvent(0) + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSessionStartEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSessionStartEvent(0) + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  started = type metadata accessor for SportsSessionStartEvent(0);
  v5 = *(started + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(started + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsSessionStartEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsSessionStartEvent.Model(0) + 20));
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

uint64_t SportsSessionStartEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SportsSessionStartEvent.Model(0) + 24));
}

__n128 SportsSessionStartEvent.Model.init(eventData:userBundleSubscriptionContextData:sportsData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  started = type metadata accessor for SportsSessionStartEvent.Model(0);
  v10 = a4 + *(started + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(started + 24)) = v7;
  return result;
}

unint64_t sub_217AE7928()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0x61447374726F7073;
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

uint64_t sub_217AE7990@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AE8488(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AE79B8(uint64_t a1)
{
  v2 = sub_217AE7CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AE79F4(uint64_t a1)
{
  v2 = sub_217AE7CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsSessionStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AE8148(0, &qword_27CB9ED40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE7CF4();
  sub_217D89E7C();
  v29 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    started = type metadata accessor for SportsSessionStartEvent.Model(0);
    v11 = (v3 + *(started + 20));
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
    v17 = *(v3 + *(started + 24));
    v16[7] = 2;
    sub_217A61284();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AE7CF4()
{
  result = qword_27CB9ED48;
  if (!qword_27CB9ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ED48);
  }

  return result;
}

uint64_t SportsSessionStartEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_217D8899C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AE8148(0, &qword_27CB9ED50, MEMORY[0x277D844C8]);
  v26 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  started = type metadata accessor for SportsSessionStartEvent.Model(0);
  MEMORY[0x28223BE20](started);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE7CF4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v12 = v24;
  v20 = started;
  v21 = v11;
  LOBYTE(v28) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v25;
  v14 = v26;
  sub_217D89BCC();
  (*(v12 + 32))(v21, v15, v4);
  v33 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v16 = &v21[*(v20 + 20)];
  v17 = v29;
  *v16 = v28;
  *(v16 + 1) = v17;
  *(v16 + 2) = v30;
  v16[48] = v31;
  v32 = 2;
  sub_217A6120C();
  sub_217D89BCC();
  (*(v13 + 8))(v8, v14);
  v18 = v21;
  *&v21[*(v20 + 24)] = v27;
  sub_217AE81AC(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217AE8210(v18);
}

void sub_217AE8148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AE7CF4();
    v7 = a3(a1, &type metadata for SportsSessionStartEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AE81AC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SportsSessionStartEvent.Model(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_217AE8210(uint64_t a1)
{
  started = type metadata accessor for SportsSessionStartEvent.Model(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_217AE82EC(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217AE8384()
{
  result = qword_27CB9ED68;
  if (!qword_27CB9ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ED68);
  }

  return result;
}

unint64_t sub_217AE83DC()
{
  result = qword_27CB9ED70;
  if (!qword_27CB9ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ED70);
  }

  return result;
}

unint64_t sub_217AE8434()
{
  result = qword_27CB9ED78;
  if (!qword_27CB9ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9ED78);
  }

  return result;
}

uint64_t sub_217AE8488(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61447374726F7073 && a2 == 0xEA00000000006174)
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

uint64_t sub_217AE8680()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EDB0);
  __swift_project_value_buffer(v0, qword_27CB9EDB0);
  return sub_217D8866C();
}

uint64_t WebEmbedViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedViewEvent.webEmbedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 24);
  sub_217AE8BCC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AE8974()
{
  result = qword_2811C7898;
  if (!qword_2811C7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7898);
  }

  return result;
}

unint64_t sub_217AE89C8()
{
  result = qword_2811C78A0;
  if (!qword_2811C78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78A0);
  }

  return result;
}

uint64_t WebEmbedViewEvent.webEmbedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 24);
  sub_217AE8BCC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 28);
  sub_217AE8BCC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AE8BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t WebEmbedViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedViewEvent(0) + 28);
  sub_217AE8BCC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebEmbedViewEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AE8BCC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AE8BCC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217AE8F40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WebEmbedViewEvent.Model.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedViewEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebEmbedViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedViewEvent.Model(0) + 28));
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

__n128 WebEmbedViewEvent.Model.init(eventData:timedData:webEmbedData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = sub_217D8899C();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  v12 = type metadata accessor for WebEmbedViewEvent.Model(0);
  v13 = v12[5];
  v14 = sub_217D889CC();
  (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  v15 = (a5 + v12[6]);
  *v15 = v9;
  v15[1] = v10;
  v16 = a5 + v12[7];
  v17 = *(a4 + 16);
  *v16 = *a4;
  *(v16 + 16) = v17;
  result = *(a4 + 32);
  *(v16 + 32) = result;
  *(v16 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217AE9198()
{
  v1 = 0x746144746E657665;
  v2 = 0x6465626D45626577;
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

uint64_t sub_217AE9220@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AEA288(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AE9248(uint64_t a1)
{
  v2 = sub_217AE95EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AE9284(uint64_t a1)
{
  v2 = sub_217AE95EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AE9BB4(0, &qword_27CB9EDC8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE95EC();
  sub_217D89E7C();
  LOBYTE(v24[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for WebEmbedViewEvent.Model(0);
    LOBYTE(v24[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + *(v10 + 24));
    v12 = v11[1];
    v26 = *v11;
    v27 = v12;
    v29 = 2;
    sub_217AE89C8();

    sub_217D89CAC();

    v13 = (v3 + *(v10 + 28));
    v14 = v13[1];
    v24[0] = *v13;
    v24[1] = v14;
    v16 = *v13;
    v15 = v13[1];
    v24[2] = v13[2];
    v25 = *(v13 + 48);
    v20 = v16;
    v21 = v15;
    v22 = v13[2];
    v23 = *(v13 + 48);
    v28 = 3;
    sub_217ACC004(v24, v18);
    sub_217A55B98();
    sub_217D89CAC();
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v19 = v23;
    sub_217ACC69C(v18);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AE95EC()
{
  result = qword_27CB9EDD0;
  if (!qword_27CB9EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDD0);
  }

  return result;
}

uint64_t WebEmbedViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_217D889CC();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AE9BB4(0, &qword_27CB9EDD8, MEMORY[0x277D844C8]);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for WebEmbedViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AE95EC();
  v33 = v9;
  v13 = v34;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v10;
  v14 = v12;
  v15 = v28;
  v16 = v29;
  LOBYTE(v35) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v17 = *(v15 + 32);
  v18 = v32;
  v32 = v5;
  v17(v12, v18);
  LOBYTE(v35) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v27 + 32))(&v12[*(v34 + 20)], v4, v16);
  v39 = 2;
  sub_217AE8974();
  sub_217D89BCC();
  v19 = a1;
  v20 = *(&v35 + 1);
  v21 = v34;
  v22 = (v14 + *(v34 + 24));
  *v22 = v35;
  v22[1] = v20;
  v39 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v30 + 8))(v33, v31);
  v23 = v14 + *(v21 + 28);
  v24 = v36;
  *v23 = v35;
  *(v23 + 16) = v24;
  *(v23 + 32) = v37;
  *(v23 + 48) = v38;
  sub_217AE9C18(v14, v26);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_217AE9C7C(v14);
}

void sub_217AE9BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AE95EC();
    v7 = a3(a1, &type metadata for WebEmbedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AE9C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AE9C7C(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AE9DB0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AE8BCC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217AE8BCC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217AE9F88(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217AE8BCC(319, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
      if (v3 <= 0x3F)
      {
        sub_217AE8BCC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217AEA0D4(uint64_t a1)
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

unint64_t sub_217AEA184()
{
  result = qword_27CB9EDE0;
  if (!qword_27CB9EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDE0);
  }

  return result;
}

unint64_t sub_217AEA1DC()
{
  result = qword_27CB9EDE8;
  if (!qword_27CB9EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDE8);
  }

  return result;
}

unint64_t sub_217AEA234()
{
  result = qword_27CB9EDF0;
  if (!qword_27CB9EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDF0);
  }

  return result;
}

uint64_t sub_217AEA288(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

uint64_t MutedTagListData.tagIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217AEA46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x734449676174 && a2 == 0xE600000000000000)
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

uint64_t sub_217AEA4F0(uint64_t a1)
{
  v2 = sub_217A69418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AEA52C(uint64_t a1)
{
  v2 = sub_217A69418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MutedTagListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217A6939C(0, &qword_2811BCA70, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A69418();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217AEA730()
{
  result = qword_2811C5048;
  if (!qword_2811C5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5048);
  }

  return result;
}

uint64_t sub_217AEA7AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_217AEA7F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217AEA854()
{
  result = qword_27CB9EDF8;
  if (!qword_27CB9EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EDF8);
  }

  return result;
}

NewsAnalytics::ActionMethod_optional __swiftcall ActionMethod.init(rawValue:)(Swift::String rawValue)
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

uint64_t ActionMethod.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x4D747865746E6F63;
    if (v1 != 2)
    {
      v7 = 0x7463416570697773;
    }

    if (*v0)
    {
      v6 = 0x776F7272616873;
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
    v2 = 2003134838;
    v3 = 0x616D6D6F4379656BLL;
    if (v1 != 7)
    {
      v3 = 0x6E65746E49707061;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x7261626C6F6F74;
    if (v1 != 4)
    {
      v4 = 0x726162756E656DLL;
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

unint64_t sub_217AEAA40()
{
  result = qword_27CB9EE00;
  if (!qword_27CB9EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE00);
  }

  return result;
}

uint64_t sub_217AEAA94()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D837D4(v3, v1);
  return sub_217D89E3C();
}

uint64_t sub_217AEAAE4(uint64_t a1)
{
  v2 = *v1;
  sub_217D89E1C();
  sub_217D837D4(v4, v2);
  return sub_217D89E3C();
}

uint64_t sub_217AEAB34@<X0>(uint64_t *a1@<X8>)
{
  result = ActionMethod.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217AEAC1C()
{
  result = qword_27CB9EE08;
  if (!qword_27CB9EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE08);
  }

  return result;
}

uint64_t sub_217AEACD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570)
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

uint64_t sub_217AEAD68(uint64_t a1)
{
  v2 = sub_217AEAF3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AEADA4(uint64_t a1)
{
  v2 = sub_217AEAF3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionResultData.encode(to:)(void *a1)
{
  sub_217AEB17C(0, &qword_27CB9EE10, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEAF3C();
  sub_217D89E7C();
  v11 = v8;
  sub_217AEAF90();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217AEAF3C()
{
  result = qword_27CB9EE18;
  if (!qword_27CB9EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE18);
  }

  return result;
}

unint64_t sub_217AEAF90()
{
  result = qword_27CB9EE20;
  if (!qword_27CB9EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE20);
  }

  return result;
}

uint64_t SubscriptionResultData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217AEB17C(0, &qword_27CB9EE28, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEAF3C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217AEB1E0();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217AEB17C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AEAF3C();
    v7 = a3(a1, &type metadata for SubscriptionResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AEB1E0()
{
  result = qword_27CB9EE30;
  if (!qword_27CB9EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE30);
  }

  return result;
}

unint64_t sub_217AEB238()
{
  result = qword_2811C03B8;
  if (!qword_2811C03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C03B8);
  }

  return result;
}

unint64_t sub_217AEB290()
{
  result = qword_2811C03C0;
  if (!qword_2811C03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C03C0);
  }

  return result;
}

unint64_t sub_217AEB338()
{
  result = qword_27CB9EE38;
  if (!qword_27CB9EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE38);
  }

  return result;
}

unint64_t sub_217AEB390()
{
  result = qword_27CB9EE40;
  if (!qword_27CB9EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE40);
  }

  return result;
}

unint64_t sub_217AEB3E8()
{
  result = qword_27CB9EE48;
  if (!qword_27CB9EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE48);
  }

  return result;
}

NewsAnalytics::JourneyTriggerInactiveErrorReason_optional __swiftcall JourneyTriggerInactiveErrorReason.init(rawValue:)(Swift::String rawValue)
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

unint64_t JourneyTriggerInactiveErrorReason.rawValue.getter()
{
  v1 = 0x64657269707865;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
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

unint64_t sub_217AEB530()
{
  result = qword_27CB9EE50;
  if (!qword_27CB9EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE50);
  }

  return result;
}

uint64_t sub_217AEB584()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217AEB654(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217AEB710(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217AEB7E8(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x64657269707865;
  v4 = 0x8000000217DCA720;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000217DCA740;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x8000000217DCA700;
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

unint64_t sub_217AEB934()
{
  result = qword_27CB9EE58;
  if (!qword_27CB9EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE58);
  }

  return result;
}

uint64_t AudioEngagementData.engagementID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AudioEngagementData.engagementID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AudioEngagementData.init(timePlayed:deltaTimePlayed:userAction:position:engagementID:playMethod:listeningSource:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  v10 = *a7;
  v11 = *a8;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 20) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = v10;
  *(a9 + 41) = v11;
  return result;
}

uint64_t sub_217AEBB78()
{
  v1 = *v0;
  v2 = 0x79616C50656D6974;
  v3 = 0x6874654D79616C70;
  if (v1 != 5)
  {
    v3 = 0x6E696E657473696CLL;
  }

  v4 = 0x6E6F697469736F70;
  if (v1 != 3)
  {
    v4 = 0x656D656761676E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D695461746C6564;
  if (v1 != 1)
  {
    v5 = 0x6974634172657375;
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

uint64_t sub_217AEBC78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AECA5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AEBCAC(uint64_t a1)
{
  v2 = sub_217AEBFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AEBCE8(uint64_t a1)
{
  v2 = sub_217AEBFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementData.encode(to:)(void *a1)
{
  sub_217AEC4A4(0, &qword_27CB9EE60, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v20 = *(v1 + 8);
  v8 = *(v1 + 16);
  v18 = *(v1 + 20);
  v19 = v8;
  v9 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v9;
  v15 = *(v1 + 40);
  v10 = *(v1 + 41);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEBFD4();
  sub_217D89E7C();
  v31 = 0;
  v11 = v21;
  sub_217D89CCC();
  if (!v11)
  {
    v12 = v19;
    LODWORD(v21) = v10;
    v30 = 1;
    sub_217D89CCC();
    v29 = v12;
    v28 = 2;
    sub_217AEC028();
    sub_217D89CAC();
    v27 = 3;
    sub_217D89CBC();
    v26 = 4;
    sub_217D89C6C();
    v25 = v15;
    v24 = 5;
    sub_217AEC07C();
    sub_217D89C3C();
    v23 = v21;
    v22 = 6;
    sub_217AEC0D0();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217AEBFD4()
{
  result = qword_27CB9EE68;
  if (!qword_27CB9EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE68);
  }

  return result;
}

unint64_t sub_217AEC028()
{
  result = qword_27CB9EE70;
  if (!qword_27CB9EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE70);
  }

  return result;
}

unint64_t sub_217AEC07C()
{
  result = qword_27CB9EE78;
  if (!qword_27CB9EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE78);
  }

  return result;
}

unint64_t sub_217AEC0D0()
{
  result = qword_27CB9EE80;
  if (!qword_27CB9EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE80);
  }

  return result;
}

uint64_t AudioEngagementData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217AEC4A4(0, &qword_27CB9EE88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEBFD4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v10 = sub_217D89BEC();
  LOBYTE(v33[0]) = 1;
  v30 = sub_217D89BEC();
  LOBYTE(v31) = 2;
  sub_217AEC508();
  sub_217D89BCC();
  v11 = LOBYTE(v33[0]);
  LOBYTE(v33[0]) = 3;
  v12 = sub_217D89BDC();
  v28 = v11;
  v29 = v12;
  LOBYTE(v33[0]) = 4;
  v26 = sub_217D89B8C();
  v27 = v13;
  LOBYTE(v31) = 5;
  sub_217AEC55C();
  sub_217D89B5C();
  v14 = LOBYTE(v33[0]);
  v42 = 6;
  sub_217AEC5B0();
  sub_217D89BCC();
  (*(v7 + 8))(v9, v6);
  v24 = v14;
  v25 = v43;
  v15 = v14;
  v16 = v30;
  *&v31 = v10;
  *(&v31 + 1) = v30;
  v17 = v28;
  v18 = v29;
  v32[0] = v28;
  *&v32[1] = v44;
  v32[3] = v45;
  *&v32[4] = v29;
  v19 = v26;
  v20 = v27;
  *&v32[8] = v26;
  *&v32[16] = v27;
  v32[24] = v15;
  v32[25] = v43;
  v21 = *v32;
  *a2 = v31;
  a2[1] = v21;
  *(a2 + 26) = *&v32[10];
  sub_217AEC604(&v31, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v10;
  v33[1] = v16;
  v34 = v17;
  v35 = v44;
  v36 = v45;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v24;
  v41 = v25;
  return sub_217AEC63C(v33);
}

void sub_217AEC4A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AEBFD4();
    v7 = a3(a1, &type metadata for AudioEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217AEC508()
{
  result = qword_27CB9EE90;
  if (!qword_27CB9EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE90);
  }

  return result;
}

unint64_t sub_217AEC55C()
{
  result = qword_27CB9EE98;
  if (!qword_27CB9EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EE98);
  }

  return result;
}

unint64_t sub_217AEC5B0()
{
  result = qword_27CB9EEA0;
  if (!qword_27CB9EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EEA0);
  }

  return result;
}

unint64_t sub_217AEC670()
{
  result = qword_2811C2A80;
  if (!qword_2811C2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A80);
  }

  return result;
}

unint64_t sub_217AEC6C8()
{
  result = qword_2811C2A88;
  if (!qword_2811C2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A88);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217AEC760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217AEC7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlternateHeadlineTreatmentStateData(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlternateHeadlineTreatmentStateData(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217AEC958()
{
  result = qword_27CB9EEA8;
  if (!qword_27CB9EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EEA8);
  }

  return result;
}

unint64_t sub_217AEC9B0()
{
  result = qword_27CB9EEB0;
  if (!qword_27CB9EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EEB0);
  }

  return result;
}

unint64_t sub_217AECA08()
{
  result = qword_27CB9EEB8;
  if (!qword_27CB9EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EEB8);
  }

  return result;
}

uint64_t sub_217AECA5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D695461746C6564 && a2 == 0xEF646579616C5065 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEC0000004449746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6874654D79616C70 && a2 == 0xEA0000000000646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E696E657473696CLL && a2 == 0xEF656372756F5367)
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

uint64_t sub_217AECD88()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EEF0);
  __swift_project_value_buffer(v0, qword_27CB9EEF0);
  return sub_217D8866C();
}

uint64_t ArticleLikeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleLikeEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 20);
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 20);
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 24);
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AED13C()
{
  result = qword_2811C8048;
  if (!qword_2811C8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8048);
  }

  return result;
}

unint64_t sub_217AED190()
{
  result = qword_2811C8050;
  if (!qword_2811C8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8050);
  }

  return result;
}

uint64_t ArticleLikeEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 24);
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 28);
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 28);
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 32);
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 32);
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 36);
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 36);
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 40);
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 40);
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 44);
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 44);
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 48);
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 48);
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 52);
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLikeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 52);
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 56);
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AEDF64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ArticleLikeEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLikeEvent(0) + 56);
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLikeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleLikeEvent(0);
  v5 = v4[5];
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v12, v25);
}

uint64_t ArticleLikeEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 20);
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

uint64_t ArticleLikeEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleLikeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleLikeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 28);
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

uint64_t ArticleLikeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleLikeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 36));
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

uint64_t ArticleLikeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 40));
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

void ArticleLikeEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 44));
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

uint64_t ArticleLikeEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleLikeEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleLikeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

void ArticleLikeEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLikeEvent.Model(0) + 56));
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

__n128 ArticleLikeEvent.Model.init(eventData:articleData:actionData:channelData:feedData:groupData:userBundleSubscriptionContextData:issueData:userChannelContextData:viewData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t a12)
{
  v18 = *a3;
  v44 = a4[1];
  v45 = *a4;
  v19 = *(a4 + 16);
  v20 = *(a4 + 17);
  v42 = a4[4];
  v43 = a4[3];
  v47 = *a5;
  v46 = *(a5 + 2);
  v53 = a10[1];
  v54 = *a10;
  v52 = *(a10 + 1);
  v56 = a11[1];
  v57 = *a11;
  v55 = *(a11 + 8);
  v58 = *(a12 + 32);
  v21 = sub_217D8899C();
  v50 = *(a12 + 16);
  v51 = *a12;
  v48 = a8[1];
  v49 = *a8;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ArticleLikeEvent.Model(0);
  v23 = a9 + v22[5];
  v24 = *(a2 + 48);
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = v24;
  v25 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a2 + 127);
  v26 = *(a2 + 112);
  *(v23 + 96) = *(a2 + 96);
  *(v23 + 112) = v26;
  v27 = *(a2 + 80);
  *(v23 + 64) = *(a2 + 64);
  *(v23 + 80) = v27;
  *(a9 + v22[6]) = v18;
  v28 = a9 + v22[7];
  *v28 = v45;
  *(v28 + 8) = v44;
  *(v28 + 16) = v19;
  *(v28 + 17) = v20;
  *(v28 + 24) = v43;
  *(v28 + 32) = v42;
  v29 = a9 + v22[8];
  *v29 = v47;
  *(v29 + 16) = v46;
  v30 = (a9 + v22[9]);
  v31 = a6[3];
  v30[2] = a6[2];
  v30[3] = v31;
  v32 = a6[1];
  *v30 = *a6;
  v30[1] = v32;
  v33 = a6[8];
  v30[7] = a6[7];
  v30[8] = v33;
  v34 = a6[6];
  v30[5] = a6[5];
  v30[6] = v34;
  v30[4] = a6[4];
  v35 = a9 + v22[10];
  v36 = *(a7 + 16);
  *v35 = *a7;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a7 + 32);
  *(v35 + 48) = *(a7 + 48);
  v37 = (a9 + v22[11]);
  *v37 = v49;
  v37[1] = v48;
  v38 = a9 + v22[12];
  *v38 = v54;
  *(v38 + 1) = v53;
  *(v38 + 2) = v52;
  v39 = a9 + v22[13];
  *v39 = v57;
  *(v39 + 8) = v56;
  *(v39 + 16) = v55;
  v40 = a9 + v22[14];
  result = v51;
  *v40 = v51;
  *(v40 + 16) = v50;
  *(v40 + 32) = v58;
  return result;
}

unint64_t sub_217AEEC38(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x746144746E657665;
    v5 = 0x61446E6F69746361;
    v6 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v6 = 0x6174614464656566;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x44656C6369747261;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6174614477656976;
    if (a1 != 9)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000016;
    }

    v2 = 0xD000000000000021;
    if (a1 != 6)
    {
      v2 = 0x7461446575737369;
    }

    if (a1 == 5)
    {
      v2 = 0x74614470756F7267;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217AEEDB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AF0D04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AEEDE4(uint64_t a1)
{
  v2 = sub_217AEF5D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AEEE20(uint64_t a1)
{
  v2 = sub_217AEF5D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLikeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AEFF90(0, &qword_27CB9EF08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEF5D0();
  sub_217D89E7C();
  v114[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleLikeEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v112 = *(v11 + 96);
    *v113 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v108 = *(v11 + 32);
    v109 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v110 = *(v11 + 64);
    v111 = v17;
    v18 = *(v11 + 16);
    v107[0] = *v11;
    v107[1] = v18;
    v19 = *(v11 + 112);
    v105 = v112;
    v106[0] = v19;
    v101 = v108;
    v102 = v16;
    v103 = v110;
    v104 = v12;
    *&v113[15] = *(v11 + 127);
    *(v106 + 15) = *(v11 + 127);
    v99 = v107[0];
    v100 = v14;
    v98 = 1;
    sub_217AD1630(v107, &v83);
    sub_217ACF52C();
    sub_217D89CAC();
    v96[6] = v105;
    *v97 = v106[0];
    *&v97[15] = *(v106 + 15);
    v96[2] = v101;
    v96[3] = v102;
    v96[4] = v103;
    v96[5] = v104;
    v96[0] = v99;
    v96[1] = v100;
    sub_217AD2864(v96);
    LOBYTE(v83) = *(v3 + v10[6]);
    LOBYTE(v74) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v20 = v3 + v10[7];
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 17);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    *&v83 = *v20;
    *(&v83 + 1) = v21;
    LOBYTE(v84) = v22;
    BYTE1(v84) = v23;
    *(&v84 + 1) = v24;
    *&v85 = v25;
    LOBYTE(v74) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v26 = (v3 + v10[8]);
    v27 = v26[1];
    v28 = v26[2];
    v93 = *v26;
    v94 = v27;
    v95 = v28;
    v92 = 4;
    sub_217AD1A68(v93, v27, v28);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v93, v94, v95);
    v29 = (v3 + v10[9]);
    v30 = v29[5];
    v31 = v29[7];
    v89 = v29[6];
    v90 = v31;
    v32 = v29[7];
    v91 = v29[8];
    v33 = v29[1];
    v34 = v29[3];
    v85 = v29[2];
    v86 = v34;
    v35 = v29[3];
    v36 = v29[5];
    v87 = v29[4];
    v88 = v36;
    v37 = v29[1];
    v83 = *v29;
    v84 = v37;
    v80 = v89;
    v81 = v32;
    v82 = v29[8];
    v76 = v85;
    v77 = v35;
    v78 = v87;
    v79 = v30;
    v74 = v83;
    v75 = v33;
    v73 = 5;
    sub_217AD87FC(&v83, v72);
    sub_217A5D3B4();
    sub_217D89C3C();
    v72[6] = v80;
    v72[7] = v81;
    v72[8] = v82;
    v72[2] = v76;
    v72[3] = v77;
    v72[4] = v78;
    v72[5] = v79;
    v72[0] = v74;
    v72[1] = v75;
    sub_217AD96E8(v72);
    v38 = v3 + v10[10];
    v39 = *(v38 + 16);
    v40 = *(v38 + 32);
    v70[0] = *v38;
    v70[1] = v39;
    v70[2] = v40;
    v71 = *(v38 + 48);
    v66 = v70[0];
    v67 = v39;
    v68 = *(v38 + 32);
    v69 = *(v38 + 48);
    v65 = 6;
    sub_217ACC004(v70, v63);
    sub_217A55B98();
    sub_217D89CAC();
    v63[0] = v66;
    v63[1] = v67;
    v63[2] = v68;
    v64 = v69;
    sub_217ACC69C(v63);
    v41 = (v3 + v10[11]);
    v42 = v41[1];
    v43 = v41[2];
    v44 = v41[3];
    v57 = *v41;
    v58 = v42;
    v59 = v43;
    v60 = v44;
    v62 = 7;
    sub_217AE39D0(v57, v42, v43, v44);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v57, v58, v59, v60);
    v45 = (v3 + v10[12]);
    v46 = *v45;
    v47 = v45[1];
    LOWORD(v45) = *(v45 + 1);
    LOBYTE(v57) = v46;
    BYTE1(v57) = v47;
    WORD1(v57) = v45;
    v62 = 8;
    sub_217ACFB8C();
    sub_217D89CAC();
    v48 = v3 + v10[13];
    v49 = *v48;
    v50 = *(v48 + 8);
    LOWORD(v48) = *(v48 + 16);
    v57 = v49;
    v58 = v50;
    LOWORD(v59) = v48;
    v62 = 9;
    sub_217A5E790();

    sub_217D89C3C();

    v51 = (v3 + v10[14]);
    v52 = v51[1];
    v53 = v51[2];
    v54 = v51[3];
    v55 = v51[4];
    v57 = *v51;
    v58 = v52;
    v59 = v53;
    v60 = v54;
    v61 = v55;
    v62 = 10;
    sub_217AE3AE8(v57, v52, v53, v54, v55);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v57, v58, v59, v60, v61);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AEF5D0()
{
  result = qword_27CB9EF10;
  if (!qword_27CB9EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF10);
  }

  return result;
}

void ArticleLikeEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_217D8899C();
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AEFF90(0, &qword_27CB9EF18, MEMORY[0x277D844C8]);
  v55 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v49 - v6;
  v8 = type metadata accessor for ArticleLikeEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AEF5D0();
  v56 = v7;
  v11 = v85;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v53;
    v85 = v8;
    v50 = v10;
    LOBYTE(v76) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v54;
    sub_217D89BCC();
    v14 = v3;
    v15 = v50;
    (*(v52 + 32))(v50, v13, v14);
    v67 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v49[2] = v14;
    v54 = 0;
    v16 = v85;
    v17 = &v15[v85[5]];
    v18 = *v75;
    *(v17 + 6) = v74;
    *(v17 + 7) = v18;
    *(v17 + 127) = *&v75[15];
    v19 = v71;
    *(v17 + 2) = v70;
    *(v17 + 3) = v19;
    v20 = v73;
    *(v17 + 4) = v72;
    *(v17 + 5) = v20;
    v21 = v69;
    *v17 = v68;
    *(v17 + 1) = v21;
    LOBYTE(v62) = 2;
    sub_217AED13C();
    sub_217D89BCC();
    v49[1] = a1;
    v15[v16[6]] = v76;
    LOBYTE(v62) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v22 = *(&v76 + 1);
    v23 = v77;
    v24 = BYTE1(v77);
    v25 = *(&v77 + 1);
    v26 = v78;
    v27 = &v15[v16[7]];
    *v27 = v76;
    *(v27 + 1) = v22;
    v27[16] = v23;
    v27[17] = v24;
    *(v27 + 3) = v25;
    *(v27 + 4) = v26;
    LOBYTE(v62) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v28 = v77;
    v29 = &v15[v16[8]];
    *v29 = v76;
    *(v29 + 2) = v28;
    v66 = 5;
    sub_217A5D308();
    sub_217D89B5C();
    v30 = &v15[v16[9]];
    v31 = v83;
    *(v30 + 6) = v82;
    *(v30 + 7) = v31;
    *(v30 + 8) = v84;
    v32 = v79;
    *(v30 + 2) = v78;
    *(v30 + 3) = v32;
    v33 = v81;
    *(v30 + 4) = v80;
    *(v30 + 5) = v33;
    v34 = v77;
    *v30 = v76;
    *(v30 + 1) = v34;
    v61 = 6;
    sub_217A54D08();
    sub_217D89BCC();
    v35 = &v15[v16[10]];
    v36 = v63;
    *v35 = v62;
    *(v35 + 1) = v36;
    *(v35 + 2) = v64;
    v35[48] = v65;
    v60 = 7;
    sub_217ACFF40();
    sub_217D89B5C();
    v37 = &v50[v85[11]];
    v38 = v58;
    *v37 = v57;
    *(v37 + 1) = v38;
    v60 = 8;
    sub_217ACFB38();
    sub_217D89BCC();
    v39 = BYTE1(v57);
    v40 = WORD1(v57);
    v41 = &v50[v85[12]];
    *v41 = v57;
    v41[1] = v39;
    *(v41 + 1) = v40;
    v60 = 9;
    sub_217A5E738();
    sub_217D89B5C();
    v42 = v58;
    v43 = &v50[v85[13]];
    *v43 = v57;
    *(v43 + 8) = v42;
    v60 = 10;
    sub_217AE2CA8();
    sub_217D89B5C();
    (*(v12 + 8))(v56, v55);
    v44 = v59;
    v46 = v50;
    v45 = v51;
    v47 = &v50[v85[14]];
    v48 = v58;
    *v47 = v57;
    *(v47 + 1) = v48;
    *(v47 + 4) = v44;
    sub_217AEFFF4(v46, v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217AF0058(v46);
  }
}

void sub_217AEFF90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AEF5D0();
    v7 = a3(a1, &type metadata for ArticleLikeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AEFFF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleLikeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AF0058(uint64_t a1)
{
  v2 = type metadata accessor for ArticleLikeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AF018C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v13, v26);
}

void sub_217AF06F8(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217AEDF64(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217AEDF64(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        sub_217AEDF64(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217AEDF64(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217AEDF64(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217AEDF64(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
              if (v7 <= 0x3F)
              {
                sub_217AEDF64(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                if (v8 <= 0x3F)
                {
                  sub_217AEDF64(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217AEDF64(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                    if (v10 <= 0x3F)
                    {
                      sub_217AEDF64(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
                      if (v11 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for ArticleLikeEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleLikeEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217AF0C00()
{
  result = qword_27CB9EF20;
  if (!qword_27CB9EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF20);
  }

  return result;
}

unint64_t sub_217AF0C58()
{
  result = qword_27CB9EF28;
  if (!qword_27CB9EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF28);
  }

  return result;
}

unint64_t sub_217AF0CB0()
{
  result = qword_27CB9EF30;
  if (!qword_27CB9EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EF30);
  }

  return result;
}

uint64_t sub_217AF0D04(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t WidgetData.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WidgetData.webEmbedData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}