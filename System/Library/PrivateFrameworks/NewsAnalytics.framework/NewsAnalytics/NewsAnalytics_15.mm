uint64_t sub_217BFABB4(uint64_t a1)
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

unint64_t sub_217BFAC64()
{
  result = qword_27CBA1E08;
  if (!qword_27CBA1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E08);
  }

  return result;
}

unint64_t sub_217BFACBC()
{
  result = qword_27CBA1E10;
  if (!qword_27CBA1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E10);
  }

  return result;
}

unint64_t sub_217BFAD14()
{
  result = qword_27CBA1E18;
  if (!qword_27CBA1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E18);
  }

  return result;
}

uint64_t sub_217BFAD68(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6974634172657375 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
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

uint64_t ArticleScoreSummaryData.articleID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ArticleScoreSummaryData.articleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

double ArticleScoreSummaryData.baselineScoreData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

double ArticleScoreSummaryData.baselineScoreData.setter(double *a1)
{
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

void ArticleScoreSummaryData.experimentalScoreData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t ArticleScoreSummaryData.experimentalScoreData.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

void __swiftcall ArticleScoreSummaryData.init(isCandidateForNewsPlus:articleID:baselineScoreData:experimentalScoreData:)(NewsAnalytics::ArticleScoreSummaryData *__return_ptr retstr, Swift::Bool_optional isCandidateForNewsPlus, Swift::String articleID, NewsAnalytics::ScoreData baselineScoreData, NewsAnalytics::ScoreData_optional experimentalScoreData)
{
  v6 = *v5;
  v7 = *(v5 + 8);
  retstr->isCandidateForNewsPlus = isCandidateForNewsPlus;
  retstr->articleID = articleID;
  retstr->baselineScoreData = **&experimentalScoreData.is_nil;
  retstr->experimentalScoreData.value = v6;
  retstr->experimentalScoreData.is_nil = v7;
}

unint64_t sub_217BFB050()
{
  v1 = 0x49656C6369747261;
  v2 = 0xD000000000000015;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_217BFB0D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BFB984(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BFB0FC(uint64_t a1)
{
  v2 = sub_217BFB38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BFB138(uint64_t a1)
{
  v2 = sub_217BFB38C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleScoreSummaryData.encode(to:)(void *a1)
{
  sub_217BFB670(0, &qword_2811BC5D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *(v1 + 8);
  v14[1] = *(v1 + 16);
  v14[2] = v8;
  v9 = *(v1 + 24);
  v14[0] = *(v1 + 32);
  v10 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFB38C();
  sub_217D89E7C();
  LOBYTE(v15) = 0;
  v11 = v14[3];
  sub_217D89C1C();
  if (!v11)
  {
    v12 = v14[0];
    LOBYTE(v15) = 1;
    sub_217D89C6C();
    v15 = v9;
    v17 = 2;
    sub_217B86F3C();
    sub_217D89CAC();
    v15 = v12;
    v16 = v10;
    v17 = 3;
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217BFB38C()
{
  result = qword_2811C0120[0];
  if (!qword_2811C0120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C0120);
  }

  return result;
}

uint64_t ArticleScoreSummaryData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BFB670(0, &qword_27CBA1E20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFB38C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v18 = sub_217D89B3C();
  LOBYTE(v19) = 1;
  v10 = sub_217D89B8C();
  v12 = v11;
  v17 = v10;
  v21 = 2;
  sub_217B86EE4();
  sub_217D89BCC();
  v13 = v19;
  v21 = 3;
  sub_217D89B5C();
  (*(v7 + 8))(v9, v6);
  v15 = v19;
  v16 = v20;
  *a2 = v18;
  *(a2 + 8) = v17;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BFB670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BFB38C();
    v7 = a3(a1, &type metadata for ArticleScoreSummaryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BFB6D8()
{
  result = qword_27CBA1E28;
  if (!qword_27CBA1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E28);
  }

  return result;
}

unint64_t sub_217BFB730()
{
  result = qword_2811C0108;
  if (!qword_2811C0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0108);
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

uint64_t sub_217BFB7C8(uint64_t a1, int a2)
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

uint64_t sub_217BFB810(uint64_t result, int a2, int a3)
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

unint64_t sub_217BFB880()
{
  result = qword_27CBA1E30;
  if (!qword_27CBA1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E30);
  }

  return result;
}

unint64_t sub_217BFB8D8()
{
  result = qword_2811C0110;
  if (!qword_2811C0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0110);
  }

  return result;
}

unint64_t sub_217BFB930()
{
  result = qword_2811C0118;
  if (!qword_2811C0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0118);
  }

  return result;
}

uint64_t sub_217BFB984(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x8000000217DD04E0 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000044 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD0500 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0520 == a2)
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

uint64_t sub_217BFBBC0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1E68);
  __swift_project_value_buffer(v0, qword_27CBA1E68);
  return sub_217D8866C();
}

uint64_t ArticleFeedbackEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleFeedbackEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 24);
  sub_217BFC724(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 24);
  sub_217BFC724(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 28);
  sub_217BFC724(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 28);
  sub_217BFC724(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 32);
  sub_217BFC724(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 32);
  sub_217BFC724(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 36);
  sub_217BFC724(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 36);
  sub_217BFC724(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.feedbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 40);
  sub_217BFC724(0, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040, &type metadata for ArticleFeedbackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.feedbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 40);
  sub_217BFC724(0, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040, &type metadata for ArticleFeedbackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 44);
  sub_217BFC724(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BFC724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ArticleFeedbackEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 44);
  sub_217BFC724(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleFeedbackEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BFC724(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BFC724(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217BFC724(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217BFC724(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217BFC724(0, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040, &type metadata for ArticleFeedbackData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217BFC724(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t sub_217BFCC8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleFeedbackEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 24);
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

uint64_t ArticleFeedbackEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 28);
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

uint64_t ArticleFeedbackEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void ArticleFeedbackEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 36));
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

uint64_t ArticleFeedbackEvent.Model.feedbackData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleFeedbackEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ArticleFeedbackEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 44));
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

__n128 ArticleFeedbackEvent.Model.init(eventData:timedData:articleData:channelData:tagData:issueData:feedbackData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a4;
  v15 = a4[1];
  v17 = *(a4 + 16);
  v18 = *(a4 + 17);
  v36 = a4[4];
  v37 = a4[3];
  v38 = a5[1];
  v39 = *a5;
  v40 = *a7;
  v19 = sub_217D8899C();
  v34 = a6[1];
  v35 = *a6;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for ArticleFeedbackEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  v24 = *(a3 + 48);
  *(v23 + 32) = *(a3 + 32);
  *(v23 + 48) = v24;
  v25 = *(a3 + 16);
  *v23 = *a3;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a3 + 127);
  v26 = *(a3 + 112);
  *(v23 + 96) = *(a3 + 96);
  *(v23 + 112) = v26;
  v27 = *(a3 + 80);
  *(v23 + 64) = *(a3 + 64);
  *(v23 + 80) = v27;
  v28 = a9 + v20[7];
  *v28 = v16;
  *(v28 + 8) = v15;
  *(v28 + 16) = v17;
  *(v28 + 17) = v18;
  *(v28 + 24) = v37;
  *(v28 + 32) = v36;
  v29 = (a9 + v20[8]);
  *v29 = v39;
  v29[1] = v38;
  v30 = (a9 + v20[9]);
  *v30 = v35;
  v30[1] = v34;
  *(a9 + v20[10]) = v40;
  v31 = a9 + v20[11];
  v32 = *(a8 + 16);
  *v31 = *a8;
  *(v31 + 16) = v32;
  result = *(a8 + 32);
  *(v31 + 32) = result;
  *(v31 + 48) = *(a8 + 48);
  return result;
}

unint64_t sub_217BFD120()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6B63616264656566;
  if (v1 != 6)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0x61746144676174;
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

uint64_t sub_217BFD234@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BFECA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217BFD25C(uint64_t a1)
{
  v2 = sub_217BFD85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BFD298(uint64_t a1)
{
  v2 = sub_217BFD85C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleFeedbackEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BFE214(0, &qword_27CBA1E88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFD85C();
  sub_217D89E7C();
  LOBYTE(v61[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleFeedbackEvent.Model(0);
    v68[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = v3 + v10[6];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v66 = *(v11 + 96);
    *v67 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v62 = *(v11 + 32);
    v63 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v64 = *(v11 + 64);
    v65 = v17;
    v18 = *(v11 + 16);
    v61[0] = *v11;
    v61[1] = v18;
    v19 = *(v11 + 112);
    v59 = v66;
    v60[0] = v19;
    v55 = v62;
    v56 = v16;
    v57 = v64;
    v58 = v12;
    *&v67[15] = *(v11 + 127);
    *(v60 + 15) = *(v11 + 127);
    v53 = v61[0];
    v54 = v14;
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
    v20 = v3 + v10[7];
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 17);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    *&v44 = *v20;
    *(&v44 + 1) = v21;
    LOBYTE(v45) = v22;
    BYTE1(v45) = v23;
    *(&v45 + 1) = v24;
    *&v46 = v25;
    LOBYTE(v40) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v26 = (v3 + v10[8]);
    v27 = v26[1];
    *&v44 = *v26;
    *(&v44 + 1) = v27;
    LOBYTE(v40) = 4;
    sub_217AF6B14();

    sub_217D89CAC();

    v28 = (v3 + v10[9]);
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[3];
    *&v44 = *v28;
    *(&v44 + 1) = v29;
    *&v45 = v30;
    *(&v45 + 1) = v31;
    LOBYTE(v40) = 5;
    sub_217AE39D0(v44, v29, v30, v31);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v44, *(&v44 + 1), v45, *(&v45 + 1));
    v49 = *(v3 + v10[10]);
    v48 = 6;
    sub_217B88040();
    sub_217D89CAC();
    v32 = (v3 + v10[11]);
    v33 = v32[1];
    v44 = *v32;
    v45 = v33;
    v35 = *v32;
    v34 = v32[1];
    v46 = v32[2];
    v47 = *(v32 + 48);
    v40 = v35;
    v41 = v34;
    v42 = v32[2];
    v43 = *(v32 + 48);
    v39 = 7;
    sub_217ACC004(&v44, v37);
    sub_217A55B98();
    sub_217D89CAC();
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v38 = v43;
    sub_217ACC69C(v37);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217BFD85C()
{
  result = qword_27CBA1E90;
  if (!qword_27CBA1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E90);
  }

  return result;
}

void ArticleFeedbackEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = sub_217D889CC();
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BFE214(0, &qword_27CBA1E98, MEMORY[0x277D844C8]);
  v46 = v7;
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  v10 = type metadata accessor for ArticleFeedbackEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFD85C();
  v47 = v9;
  v13 = v62;
  sub_217D89E5C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = a1;
    v15 = v43;
    v62 = v12;
    LOBYTE(v54) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v16 = v44;
    v17 = v46;
    sub_217D89BCC();
    (*(v42 + 32))(v62, v16, v5);
    LOBYTE(v54) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v18 = v41;
    sub_217D89BCC();
    v39[1] = v5;
    v44 = 0;
    (*(v15 + 32))(&v62[v10[5]], v4, v18);
    v53 = 2;
    sub_217ACF4D8();
    sub_217D89BCC();
    v19 = &v62[v10[6]];
    v20 = *v61;
    *(v19 + 6) = v60;
    *(v19 + 7) = v20;
    *(v19 + 127) = *&v61[15];
    v21 = v57;
    *(v19 + 2) = v56;
    *(v19 + 3) = v21;
    v22 = v59;
    *(v19 + 4) = v58;
    *(v19 + 5) = v22;
    v23 = v55;
    *v19 = v54;
    *(v19 + 1) = v23;
    v52 = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v24 = v14;
    v25 = *(&v48 + 1);
    v26 = v49;
    v27 = BYTE1(v49);
    v28 = *(&v49 + 1);
    v29 = v50;
    v30 = &v62[v10[7]];
    *v30 = v48;
    *(v30 + 1) = v25;
    v30[16] = v26;
    v30[17] = v27;
    *(v30 + 3) = v28;
    *(v30 + 4) = v29;
    v52 = 4;
    sub_217AF6AC0();
    sub_217D89BCC();
    v31 = v45;
    v32 = *(&v48 + 1);
    v33 = &v62[v10[8]];
    *v33 = v48;
    *(v33 + 1) = v32;
    v52 = 5;
    sub_217ACFF40();
    sub_217D89B5C();
    v34 = &v62[v10[9]];
    v35 = v49;
    *v34 = v48;
    *(v34 + 1) = v35;
    v52 = 6;
    sub_217B87FE8();
    sub_217D89BCC();
    v62[v10[10]] = v48;
    v52 = 7;
    sub_217A54D08();
    sub_217D89BCC();
    (*(v31 + 8))(v47, v17);
    v36 = v62;
    v37 = &v62[v10[11]];
    v38 = v49;
    *v37 = v48;
    *(v37 + 1) = v38;
    *(v37 + 2) = v50;
    v37[48] = v51;
    sub_217BFE278(v36, v40);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_217BFE2DC(v36);
  }
}

void sub_217BFE214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BFD85C();
    v7 = a3(a1, &type metadata for ArticleFeedbackEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BFE278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleFeedbackEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BFE2DC(uint64_t a1)
{
  v2 = type metadata accessor for ArticleFeedbackEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BFE410@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BFC724(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BFC724(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217BFC724(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217BFC724(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217BFC724(0, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040, &type metadata for ArticleFeedbackData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217BFC724(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217BFE7DC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217BFC724(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217BFC724(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217BFC724(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
          if (v5 <= 0x3F)
          {
            sub_217BFC724(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
            if (v6 <= 0x3F)
            {
              sub_217BFC724(319, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040, &type metadata for ArticleFeedbackData);
              if (v7 <= 0x3F)
              {
                sub_217BFC724(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
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

void sub_217BFEA68(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217BFEB38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217BFEB38()
{
  if (!qword_2811BD110)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BD110);
    }
  }
}

unint64_t sub_217BFEB9C()
{
  result = qword_27CBA1EC0;
  if (!qword_27CBA1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1EC0);
  }

  return result;
}

unint64_t sub_217BFEBF4()
{
  result = qword_27CBA1EC8;
  if (!qword_27CBA1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1EC8);
  }

  return result;
}

unint64_t sub_217BFEC4C()
{
  result = qword_27CBA1ED0;
  if (!qword_27CBA1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1ED0);
  }

  return result;
}

uint64_t sub_217BFECA0(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

uint64_t sub_217BFF01C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1F08);
  __swift_project_value_buffer(v0, qword_27CBA1F08);
  return sub_217D8866C();
}

uint64_t SubscriptionWebAuthenticationEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscriptionWebAuthenticationEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 20);
  sub_217C009C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 20);
  sub_217C009C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 24);
  sub_217C009C0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 24);
  sub_217C009C0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 28);
  sub_217C009C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 28);
  sub_217C009C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 32);
  sub_217C009C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 32);
  sub_217C009C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.resultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 36);
  sub_217C009C0(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.resultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 36);
  sub_217C009C0(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 40);
  sub_217C009C0(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 40);
  sub_217C009C0(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 44);
  sub_217C009C0(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 44);
  sub_217C009C0(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 48);
  sub_217C009C0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 48);
  sub_217C009C0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 52);
  sub_217C009C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 52);
  sub_217C009C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 56);
  sub_217C009C0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 56);
  sub_217C009C0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 60);
  sub_217C009C0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 60);
  sub_217C009C0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 64);
  sub_217C009C0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 64);
  sub_217C009C0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 68);
  sub_217C009C0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 68);
  sub_217C009C0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 72);
  sub_217C009C0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 72);
  sub_217C009C0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 76);
  sub_217C009C0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C009C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t SubscriptionWebAuthenticationEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 76);
  sub_217C009C0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscriptionWebAuthenticationEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C009C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217C009C0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217C009C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217C009C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_217C009C0(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C009C0(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  sub_217C009C0(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  (*(*(v19 - 8) + 104))(a1 + v18, v6, v19);
  v20 = v4[12];
  sub_217C009C0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v21 - 8) + 104))(a1 + v20, v6, v21);
  v22 = v4[13];
  sub_217C009C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v23 - 8) + 104))(a1 + v22, v6, v23);
  v24 = v4[14];
  sub_217C009C0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v25 - 8) + 104))(a1 + v24, v6, v25);
  v26 = v4[15];
  sub_217C009C0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217C009C0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217C009C0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217C009C0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  (*(*(v33 - 8) + 104))(a1 + v32, v6, v33);
  v34 = v4[19];
  sub_217C009C0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v6, v35);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 20);
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
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8, &type metadata for ArticleData);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 24);
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

uint64_t SubscriptionWebAuthenticationEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 32));
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

uint64_t SubscriptionWebAuthenticationEvent.Model.resultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

void SubscriptionWebAuthenticationEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 40));
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

void SubscriptionWebAuthenticationEvent.Model.errorData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 44));
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

  sub_217BC060C(v4, v5, v6, v7, v8);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 48);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

void SubscriptionWebAuthenticationEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 68));
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

void SubscriptionWebAuthenticationEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 72));
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

void SubscriptionWebAuthenticationEvent.Model.recipeData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 76));
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

__n128 SubscriptionWebAuthenticationEvent.Model.init(eventData:articleData:channelData:feedData:groupData:resultData:campaignData:errorData:sectionData:viewData:purchaseData:purchaseSessionData:paywallData:issueData:articleExposureContextData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, __int16 *a14, __int128 *a15, __int128 *a16, uint64_t a17)
{
  v23 = a3[1];
  v54 = *a3;
  v52 = *(a3 + 17);
  v53 = *(a3 + 16);
  v50 = a3[4];
  v51 = a3[3];
  v57 = *a4;
  v56 = *(a4 + 2);
  v59 = *a6;
  v62 = *(a7 + 5);
  v63 = *(a7 + 4);
  v65 = *(a8 + 4);
  v69 = *a10;
  v68 = *(a10 + 2);
  v67 = *(a10 + 24);
  v71 = a11[1];
  v72 = *a11;
  v70 = *(a11 + 8);
  v76 = *a12;
  v75 = a12[1];
  v74 = *(a12 + 16);
  v78 = a13[1];
  v79 = *a13;
  v80 = *a14;
  v81 = *(a16 + 4);
  v82 = *(a17 + 32);
  v24 = sub_217D8899C();
  v77 = *a17;
  v73 = *(a17 + 16);
  v66 = *a16;
  v64 = a16[1];
  v60 = a15[1];
  v61 = *a15;
  v58 = *a8;
  v55 = a8[1];
  v48 = a7[1];
  v49 = *a7;
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  v26 = a9 + v25[5];
  v27 = *(a2 + 48);
  *(v26 + 32) = *(a2 + 32);
  *(v26 + 48) = v27;
  v28 = *(a2 + 16);
  *v26 = *a2;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a2 + 127);
  v29 = *(a2 + 112);
  *(v26 + 96) = *(a2 + 96);
  *(v26 + 112) = v29;
  v30 = *(a2 + 80);
  *(v26 + 64) = *(a2 + 64);
  *(v26 + 80) = v30;
  v31 = a9 + v25[6];
  *v31 = v54;
  *(v31 + 8) = v23;
  *(v31 + 16) = v53;
  *(v31 + 17) = v52;
  *(v31 + 24) = v51;
  *(v31 + 32) = v50;
  v32 = a9 + v25[7];
  *v32 = v57;
  *(v32 + 16) = v56;
  v33 = (a9 + v25[8]);
  v34 = a5[7];
  v33[6] = a5[6];
  v33[7] = v34;
  v33[8] = a5[8];
  v35 = a5[3];
  v33[2] = a5[2];
  v33[3] = v35;
  v36 = a5[5];
  v33[4] = a5[4];
  v33[5] = v36;
  v37 = a5[1];
  *v33 = *a5;
  v33[1] = v37;
  *(a9 + v25[9]) = v59;
  v38 = a9 + v25[10];
  *v38 = v49;
  *(v38 + 16) = v48;
  *(v38 + 32) = v63;
  *(v38 + 40) = v62;
  v39 = a9 + v25[11];
  *v39 = v58;
  *(v39 + 16) = v55;
  *(v39 + 32) = v65;
  v40 = a9 + v25[12];
  *v40 = v69;
  *(v40 + 16) = v68;
  *(v40 + 24) = v67;
  v41 = a9 + v25[13];
  *v41 = v72;
  *(v41 + 8) = v71;
  *(v41 + 16) = v70;
  v42 = a9 + v25[14];
  *v42 = v76;
  *(v42 + 8) = v75;
  *(v42 + 16) = v74;
  v43 = (a9 + v25[15]);
  *v43 = v79;
  v43[1] = v78;
  *(a9 + v25[16]) = v80;
  v44 = (a9 + v25[17]);
  *v44 = v61;
  v44[1] = v60;
  v45 = a9 + v25[18];
  *v45 = v66;
  *(v45 + 16) = v64;
  *(v45 + 32) = v81;
  v46 = a9 + v25[19];
  result = v77;
  *v46 = v77;
  *(v46 + 16) = v73;
  *(v46 + 32) = v82;
  return result;
}

uint64_t sub_217C01B90(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x44656C6369747261;
    case 2:
      v3 = 0x656E6E616863;
      goto LABEL_9;
    case 3:
      v4 = 1684366694;
      goto LABEL_12;
    case 4:
      return 0x74614470756F7267;
    case 5:
      v5 = 0x746C75736572;
      goto LABEL_15;
    case 6:
      return 0x6E676961706D6163;
    case 7:
      return 0x746144726F727265;
    case 8:
      return 0x446E6F6974636573;
    case 9:
      v4 = 2003134838;
LABEL_12:
      result = v4 | 0x6174614400000000;
      break;
    case 10:
      result = 0x6573616863727570;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      v3 = 0x6C6177796170;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 13:
      result = 0x7461446575737369;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      v5 = 0x657069636572;
LABEL_15:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C01D30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C04834(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C01D58(uint64_t a1)
{
  v2 = sub_217C027F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C01D94(uint64_t a1)
{
  v2 = sub_217C027F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C035CC(0, &qword_27CBA1F20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v75 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C027F0();
  sub_217D89E7C();
  v126[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v127 = v7;
  v76 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  v77 = v3;
  v11 = v3 + v76[5];
  v12 = *(v11 + 96);
  v13 = *(v11 + 64);
  v123 = *(v11 + 80);
  v124 = v12;
  v14 = *(v11 + 96);
  *v125 = *(v11 + 112);
  v15 = *(v11 + 16);
  v16 = *(v11 + 48);
  v120 = *(v11 + 32);
  v121 = v16;
  v17 = *(v11 + 48);
  v122 = *(v11 + 64);
  v18 = *(v11 + 16);
  v119[0] = *v11;
  v119[1] = v18;
  v116 = v123;
  v117 = v14;
  v118[0] = *(v11 + 112);
  v113 = v120;
  v114 = v17;
  v115 = v13;
  *&v125[15] = *(v11 + 127);
  *(v118 + 15) = *(v11 + 127);
  v111 = v119[0];
  v112 = v15;
  v110 = 1;
  sub_217AE38AC(v119, &v95, &qword_2811C7DB8, &type metadata for ArticleData);
  sub_217ACF52C();
  sub_217D89C3C();
  v108[5] = v116;
  v108[6] = v117;
  *v109 = v118[0];
  *&v109[15] = *(v118 + 15);
  v108[2] = v113;
  v108[3] = v114;
  v108[4] = v115;
  v108[0] = v111;
  v108[1] = v112;
  sub_217AE4A44(v108, &qword_2811C7DB8, &type metadata for ArticleData);
  v20 = v76;
  v19 = v77;
  v21 = v77 + v76[6];
  v22 = *(v21 + 8);
  v23 = *(v21 + 16);
  v24 = *(v21 + 17);
  v25 = *(v21 + 24);
  v26 = *(v21 + 32);
  *&v95 = *v21;
  *(&v95 + 1) = v22;
  LOBYTE(v96) = v23;
  BYTE1(v96) = v24;
  *(&v96 + 1) = v25;
  *&v97 = v26;
  LOBYTE(v86) = 2;
  sub_217AD084C();

  sub_217D89CAC();

  v27 = (v19 + v20[7]);
  v28 = v27[1];
  v29 = v27[2];
  v105 = *v27;
  v106 = v28;
  v107 = v29;
  v104 = 3;
  sub_217AD1A68(v105, v28, v29);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v105, v106, v107);
  v30 = (v19 + v20[8]);
  v31 = v30[6];
  v32 = v30[4];
  v100 = v30[5];
  v101 = v31;
  v33 = v30[6];
  v34 = v30[8];
  v102 = v30[7];
  v103 = v34;
  v35 = v30[2];
  v36 = *v30;
  v96 = v30[1];
  v97 = v35;
  v37 = v30[2];
  v38 = v30[4];
  v98 = v30[3];
  v99 = v38;
  v39 = *v30;
  v92 = v33;
  v93 = v102;
  v94 = v30[8];
  v95 = v39;
  v88 = v37;
  v89 = v98;
  v90 = v32;
  v91 = v100;
  v86 = v36;
  v87 = v96;
  v85 = 4;
  sub_217AE38AC(&v95, v84, &qword_2811BD178, &type metadata for GroupData);
  sub_217A5D3B4();
  sub_217D89C3C();
  v84[5] = v91;
  v84[6] = v92;
  v84[7] = v93;
  v84[8] = v94;
  v84[2] = v88;
  v84[3] = v89;
  v84[4] = v90;
  v84[0] = v86;
  v84[1] = v87;
  sub_217AE4A44(v84, &qword_2811BD178, &type metadata for GroupData);
  LOBYTE(v78) = *(v19 + v20[9]);
  v83 = 5;
  sub_217B247D8();
  sub_217D89CAC();
  v40 = (v19 + v20[10]);
  v41 = v40[1];
  v42 = v40[2];
  v43 = v40[3];
  v44 = v40[4];
  v45 = v40[5];
  v78 = *v40;
  *&v79 = v41;
  *(&v79 + 1) = v42;
  v80 = v43;
  v81 = v44;
  v82 = v45;
  v83 = 6;
  sub_217B1563C(v78, v41, v42, v43, v44, v45);
  sub_217A66ADC();
  sub_217D89C3C();
  sub_217B15D30(v78, v79, *(&v79 + 1), v80, v81, v82);
  v46 = (v19 + v20[11]);
  v47 = v46[1];
  v48 = v46[2];
  v49 = v46[3];
  v50 = v46[4];
  v78 = *v46;
  *&v79 = v47;
  *(&v79 + 1) = v48;
  v80 = v49;
  v81 = v50;
  v83 = 7;
  sub_217BC060C(v78, v47, v48, v49, v50);
  sub_217A60BE4();
  sub_217D89C3C();
  sub_217BC0DC0(v78, v79, *(&v79 + 1), v80, v81);
  v51 = v19 + v20[12];
  v52 = *(v51 + 24);
  v78 = *v51;
  v79 = *(v51 + 8);
  LOBYTE(v80) = v52;
  v83 = 8;
  sub_217B17644();

  sub_217D89C3C();

  v53 = v19 + v20[13];
  v54 = *v53;
  v55 = *(v53 + 8);
  LOWORD(v53) = *(v53 + 16);
  v78 = v54;
  *&v79 = v55;
  WORD4(v79) = v53;
  v83 = 9;
  sub_217A5E790();

  sub_217D89C3C();

  v56 = v19 + v20[14];
  v57 = *v56;
  v58 = *(v56 + 8);
  LOBYTE(v56) = *(v56 + 16);
  v78 = v57;
  *&v79 = v58;
  BYTE8(v79) = v56;
  v83 = 10;
  sub_217AFF378();

  sub_217D89C3C();

  v59 = (v77 + v76[15]);
  v60 = v59[1];
  v78 = *v59;
  *&v79 = v60;
  v83 = 11;
  sub_217B1E4A0();

  sub_217D89CAC();

  LOWORD(v78) = *(v77 + v76[16]);
  v83 = 12;
  sub_217B1DEE8();
  sub_217D89CAC();
  v61 = (v77 + v76[17]);
  v62 = v61[1];
  v63 = v61[2];
  v64 = v61[3];
  v78 = *v61;
  *&v79 = v62;
  *(&v79 + 1) = v63;
  v80 = v64;
  v83 = 13;
  sub_217AE39D0(v78, v62, v63, v64);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v78, v79, *(&v79 + 1), v80);
  v65 = (v77 + v76[18]);
  v66 = v65[1];
  v67 = v65[2];
  v68 = v65[3];
  v69 = v65[4];
  v78 = *v65;
  *&v79 = v66;
  *(&v79 + 1) = v67;
  v80 = v68;
  v81 = v69;
  v83 = 14;
  sub_217AE3AE8(v78, v66, v67, v68, v69);
  sub_217AE2CFC();
  sub_217D89C3C();
  sub_217AE4AE4(v78, v79, *(&v79 + 1), v80, v81);
  v70 = (v77 + v76[19]);
  v71 = v70[1];
  v72 = v70[2];
  v73 = v70[3];
  v74 = v70[4];
  v78 = *v70;
  *&v79 = v71;
  *(&v79 + 1) = v72;
  v80 = v73;
  v81 = v74;
  v83 = 15;
  sub_217AD86BC(v78, v71, v72, v73, v74);
  sub_217B1F08C();
  sub_217D89C3C();
  sub_217AD96A4(v78, v79, *(&v79 + 1), v80, v81);
  return (*(v127 + 8))(v9, v6);
}

unint64_t sub_217C027F0()
{
  result = qword_27CBA1F28;
  if (!qword_27CBA1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1F28);
  }

  return result;
}

void SubscriptionWebAuthenticationEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_217D8899C();
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v61 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C035CC(0, &qword_27CBA1F30, MEMORY[0x277D844C8]);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v56 - v6;
  v8 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C027F0();
  v64 = v7;
  v11 = v88;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v57 = v8;
    v58 = a1;
    v88 = v10;
    LOBYTE(v79) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v12 = v61;
    sub_217D89BCC();
    v13 = v88;
    (*(v60 + 32))(v88, v12, v3);
    v70 = 1;
    sub_217ACF4D8();
    sub_217D89B5C();
    v56[1] = v3;
    v61 = 0;
    v14 = v57;
    v15 = &v13[v57[5]];
    v16 = v76;
    v17 = *v78;
    *(v15 + 6) = v77;
    *(v15 + 7) = v17;
    *(v15 + 127) = *&v78[15];
    v18 = v74;
    *(v15 + 2) = v73;
    *(v15 + 3) = v18;
    *(v15 + 4) = v75;
    *(v15 + 5) = v16;
    v19 = v72;
    *v15 = v71;
    *(v15 + 1) = v19;
    LOBYTE(v65) = 2;
    sub_217AD07F8();
    sub_217D89BCC();
    v20 = *(&v79 + 1);
    v21 = v80;
    v22 = BYTE1(v80);
    v23 = *(&v80 + 1);
    v24 = v81;
    v25 = &v13[v14[6]];
    *v25 = v79;
    *(v25 + 1) = v20;
    v25[16] = v21;
    v25[17] = v22;
    *(v25 + 3) = v23;
    *(v25 + 4) = v24;
    LOBYTE(v65) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v26 = v80;
    v27 = &v13[v14[7]];
    *v27 = v79;
    *(v27 + 2) = v26;
    v69 = 4;
    sub_217A5D308();
    sub_217D89B5C();
    v28 = &v13[v14[8]];
    v29 = v86;
    *(v28 + 6) = v85;
    *(v28 + 7) = v29;
    *(v28 + 8) = v87;
    v30 = v82;
    *(v28 + 2) = v81;
    *(v28 + 3) = v30;
    v31 = v84;
    *(v28 + 4) = v83;
    *(v28 + 5) = v31;
    v32 = v80;
    *v28 = v79;
    *(v28 + 1) = v32;
    v68 = 5;
    sub_217B24784();
    sub_217D89BCC();
    v13[v14[9]] = v65;
    v68 = 6;
    sub_217A66A84();
    sub_217D89B5C();
    v33 = &v13[v14[10]];
    v34 = v66;
    *v33 = v65;
    *(v33 + 1) = v34;
    *(v33 + 2) = v67;
    v68 = 7;
    sub_217A60B90();
    sub_217D89B5C();
    v35 = v67;
    v36 = &v13[v14[11]];
    v37 = v66;
    *v36 = v65;
    *(v36 + 1) = v37;
    *(v36 + 4) = v35;
    v68 = 8;
    sub_217B175F0();
    sub_217D89B5C();
    v38 = v66;
    v39 = BYTE8(v66);
    v40 = &v88[v57[12]];
    *v40 = v65;
    *(v40 + 2) = v38;
    v40[24] = v39;
    v68 = 9;
    sub_217A5E738();
    sub_217D89B5C();
    v41 = v66;
    v42 = &v88[v57[13]];
    *v42 = v65;
    *(v42 + 8) = v41;
    v68 = 10;
    sub_217AFF324();
    sub_217D89B5C();
    v43 = v66;
    v44 = &v88[v57[14]];
    *v44 = v65;
    v44[16] = v43;
    v68 = 11;
    sub_217B1E44C();
    sub_217D89BCC();
    v45 = *(&v65 + 1);
    v46 = &v88[v57[15]];
    *v46 = v65;
    *(v46 + 1) = v45;
    v68 = 12;
    sub_217B1DE94();
    sub_217D89BCC();
    *&v88[v57[16]] = v65;
    v68 = 13;
    sub_217ACFF40();
    sub_217D89B5C();
    v47 = &v88[v57[17]];
    v48 = v66;
    *v47 = v65;
    *(v47 + 1) = v48;
    v68 = 14;
    sub_217AE2CA8();
    sub_217D89B5C();
    v49 = v67;
    v50 = &v88[v57[18]];
    v51 = v66;
    *v50 = v65;
    *(v50 + 1) = v51;
    *(v50 + 4) = v49;
    v68 = 15;
    sub_217B1F038();
    sub_217D89B5C();
    (*(v62 + 8))(v64, v63);
    v52 = v67;
    v53 = v88;
    v54 = &v88[v57[19]];
    v55 = v66;
    *v54 = v65;
    *(v54 + 1) = v55;
    *(v54 + 4) = v52;
    sub_217C03630(v53, v59);
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_217C03694(v53);
  }
}

void sub_217C035CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C027F0();
    v7 = a3(a1, &type metadata for SubscriptionWebAuthenticationEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C03630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C03694(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C037C8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217C009C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217C009C0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  sub_217C009C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217C009C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  sub_217C009C0(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C009C0(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v18 - 8) + 104))(a2 + v17, v7, v18);
  v19 = a1[11];
  sub_217C009C0(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  (*(*(v20 - 8) + 104))(a2 + v19, v7, v20);
  v21 = a1[12];
  sub_217C009C0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v22 - 8) + 104))(a2 + v21, v7, v22);
  v23 = a1[13];
  sub_217C009C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v24 - 8) + 104))(a2 + v23, v7, v24);
  v25 = a1[14];
  sub_217C009C0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v26 - 8) + 104))(a2 + v25, v7, v26);
  v27 = a1[15];
  sub_217C009C0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217C009C0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217C009C0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v32 - 8) + 104))(a2 + v31, v7, v32);
  v33 = a1[18];
  sub_217C009C0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  (*(*(v34 - 8) + 104))(a2 + v33, v7, v34);
  v35 = a1[19];
  sub_217C009C0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v7, v36);
}

void sub_217C03F8C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C009C0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217C009C0(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217C009C0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217C009C0(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217C009C0(319, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
            if (v6 <= 0x3F)
            {
              sub_217C009C0(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
              if (v7 <= 0x3F)
              {
                sub_217C009C0(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
                if (v8 <= 0x3F)
                {
                  sub_217C009C0(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217C009C0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                    if (v10 <= 0x3F)
                    {
                      sub_217C009C0(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
                      if (v11 <= 0x3F)
                      {
                        sub_217C009C0(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
                        if (v12 <= 0x3F)
                        {
                          sub_217C009C0(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
                          if (v13 <= 0x3F)
                          {
                            sub_217C009C0(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                            if (v14 <= 0x3F)
                            {
                              sub_217C009C0(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
                              if (v15 <= 0x3F)
                              {
                                sub_217C009C0(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
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

void sub_217C044D0(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7A98, &type metadata for CampaignData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CBA1430, &type metadata for ErrorData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C7C80, &type metadata for SectionData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_27CB9F108, &type metadata for PurchaseData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
                    if (v10 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811BF120, &type metadata for ArticleExposureContextData);
                      if (v11 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_2811C7EF8, &type metadata for RecipeData);
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

unint64_t sub_217C04730()
{
  result = qword_27CBA1F38;
  if (!qword_27CBA1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1F38);
  }

  return result;
}

unint64_t sub_217C04788()
{
  result = qword_27CBA1F40;
  if (!qword_27CBA1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1F40);
  }

  return result;
}

unint64_t sub_217C047E0()
{
  result = qword_27CBA1F48;
  if (!qword_27CBA1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1F48);
  }

  return result;
}

uint64_t sub_217C04834(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144746C75736572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
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

uint64_t sub_217C04E24()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1F80);
  __swift_project_value_buffer(v0, qword_27CBA1F80);
  return sub_217D8866C();
}

uint64_t AudioEngagementBeginEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEngagementBeginEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 20);
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 20);
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 24);
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 24);
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 28);
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 28);
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 32);
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 32);
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 36);
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C056E8()
{
  result = qword_2811BD080;
  if (!qword_2811BD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD080);
  }

  return result;
}

unint64_t sub_217C0573C()
{
  result = qword_2811BD088;
  if (!qword_2811BD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD088);
  }

  return result;
}

uint64_t AudioEngagementBeginEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 36);
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 40);
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 40);
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 44);
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 44);
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 48);
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 48);
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 52);
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 52);
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 56);
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 56);
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 60);
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 60);
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.playbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 64);
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C06360()
{
  result = qword_2811C7988;
  if (!qword_2811C7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7988);
  }

  return result;
}

unint64_t sub_217C063B4()
{
  result = qword_2811C7990[0];
  if (!qword_2811C7990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C7990);
  }

  return result;
}

uint64_t AudioEngagementBeginEvent.playbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 64);
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 68);
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C065B8()
{
  result = qword_2811BE1A8;
  if (!qword_2811BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1A8);
  }

  return result;
}

unint64_t sub_217C0660C()
{
  result = qword_2811BE1B0;
  if (!qword_2811BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1B0);
  }

  return result;
}

uint64_t AudioEngagementBeginEvent.audioEngagementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 68);
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 72);
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C06810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t AudioEngagementBeginEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 72);
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioEngagementBeginEvent(0);
  v5 = v4[5];
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v2, v33);
}

uint64_t AudioEngagementBeginEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 20);
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

uint64_t AudioEngagementBeginEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 24);
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

uint64_t AudioEngagementBeginEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 28));
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

uint64_t AudioEngagementBeginEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioEngagementBeginEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioEngagementBeginEvent.Model.audioEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 40));
  *&v9[10] = *(v3 + 26);
  v4 = *&v9[10];
  v5 = v3[1];
  v8 = *v3;
  *v9 = v5;
  *a1 = v8;
  a1[1] = v5;
  *(a1 + 26) = v4;
  return sub_217AEC604(&v8, &v7);
}

uint64_t AudioEngagementBeginEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioEngagementBeginEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 48);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t AudioEngagementBeginEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 52);
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

void AudioEngagementBeginEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 56));
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

uint64_t AudioEngagementBeginEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

float AudioEngagementBeginEvent.Model.playbackData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 64));
  *a1 = result;
  return result;
}

uint64_t AudioEngagementBeginEvent.Model.audioEngagementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t AudioEngagementBeginEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v4 = (v1 + *(result + 72));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

__n128 AudioEngagementBeginEvent.Model.init(eventData:articleData:channelData:groupData:feedData:trackData:audioEngagementData:viewData:articleScienceData:userBundleSubscriptionContextData:issueData:issueViewData:playbackData:audioEngagementOriginationData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, _OWORD *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, const void *a10, uint64_t a11, __n128 *a12, uint64_t *a13, int *a14, char *a15, char *a16)
{
  v21 = *a3;
  v22 = *(a3 + 16);
  v23 = *(a3 + 17);
  v50 = a3[3];
  v51 = a3[1];
  v49 = a3[4];
  v53 = *a5;
  v52 = *(a5 + 2);
  v54 = *(a6 + 4);
  v55 = *a6;
  v57 = a8[1];
  v58 = *a8;
  v56 = *(a8 + 8);
  v61 = a13[1];
  v62 = *a13;
  v24 = *a14;
  v66 = *a16;
  v65 = a16[1];
  v63 = *a15;
  v64 = *(a16 + 1);
  v25 = sub_217D8899C();
  v59 = a12[1];
  v60 = *a12;
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v26 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v27 = a9 + v26[5];
  v28 = *(a2 + 48);
  *(v27 + 32) = *(a2 + 32);
  *(v27 + 48) = v28;
  v29 = *(a2 + 16);
  *v27 = *a2;
  *(v27 + 16) = v29;
  *(v27 + 127) = *(a2 + 127);
  v30 = *(a2 + 112);
  *(v27 + 96) = *(a2 + 96);
  *(v27 + 112) = v30;
  v31 = *(a2 + 80);
  *(v27 + 64) = *(a2 + 64);
  *(v27 + 80) = v31;
  v32 = a9 + v26[6];
  *v32 = v21;
  *(v32 + 8) = v51;
  *(v32 + 16) = v22;
  *(v32 + 17) = v23;
  *(v32 + 24) = v50;
  *(v32 + 32) = v49;
  v33 = (a9 + v26[7]);
  v34 = a4[3];
  v33[2] = a4[2];
  v33[3] = v34;
  v35 = a4[1];
  *v33 = *a4;
  v33[1] = v35;
  v36 = a4[8];
  v33[7] = a4[7];
  v33[8] = v36;
  v37 = a4[6];
  v33[5] = a4[5];
  v33[6] = v37;
  v33[4] = a4[4];
  v38 = a9 + v26[8];
  *v38 = v53;
  *(v38 + 16) = v52;
  v39 = a9 + v26[9];
  *v39 = v55;
  *(v39 + 4) = v54;
  v40 = (a9 + v26[10]);
  v41 = a7[1];
  *v40 = *a7;
  v40[1] = v41;
  *(v40 + 26) = *(a7 + 26);
  v42 = a9 + v26[11];
  *v42 = v58;
  *(v42 + 8) = v57;
  *(v42 + 16) = v56;
  memcpy((a9 + v26[12]), a10, 0x111uLL);
  v43 = a9 + v26[13];
  v44 = *(a11 + 16);
  *v43 = *a11;
  *(v43 + 16) = v44;
  *(v43 + 32) = *(a11 + 32);
  *(v43 + 48) = *(a11 + 48);
  v45 = (a9 + v26[14]);
  result = v60;
  *v45 = v60;
  v45[1] = v59;
  v47 = (a9 + v26[15]);
  *v47 = v62;
  v47[1] = v61;
  *(a9 + v26[16]) = v24;
  *(a9 + v26[17]) = v63;
  v48 = a9 + v26[18];
  *v48 = v66;
  *(v48 + 1) = v65;
  *(v48 + 2) = v64;
  return result;
}

uint64_t sub_217C07874(char a1)
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
      goto LABEL_12;
    case 5:
      result = 0x7461446B63617274;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      v3 = 2003134838;
LABEL_12:
      result = v3 | 0x6174614400000000;
      break;
    case 8:
      result = 0xD000000000000012;
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
      result = 0x6B63616279616C70;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C07A34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C0A264(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C07A5C(uint64_t a1)
{
  v2 = sub_217C08490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C07A98(uint64_t a1)
{
  v2 = sub_217C08490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementBeginEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C09178(0, &qword_27CBA1F98, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v62 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C08490();
  sub_217D89E7C();
  v141[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v142 = v7;
  v11 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v63 = v3;
  v64 = v11;
  v12 = v3 + *(v11 + 20);
  v13 = *(v12 + 96);
  v14 = *(v12 + 64);
  v138 = *(v12 + 80);
  v139 = v13;
  v15 = *(v12 + 96);
  *v140 = *(v12 + 112);
  v16 = *(v12 + 16);
  v17 = *(v12 + 48);
  v135 = *(v12 + 32);
  v136 = v17;
  v18 = *(v12 + 48);
  v137 = *(v12 + 64);
  v19 = *(v12 + 16);
  v134[0] = *v12;
  v134[1] = v19;
  v131 = v138;
  v132 = v15;
  v133[0] = *(v12 + 112);
  v128 = v135;
  v129 = v18;
  v130 = v14;
  *&v140[15] = *(v12 + 127);
  *(v133 + 15) = *(v12 + 127);
  v126 = v134[0];
  v127 = v16;
  v125 = 1;
  sub_217AD1630(v134, v81);
  sub_217ACF52C();
  sub_217D89CAC();
  v123[5] = v131;
  v123[6] = v132;
  *v124 = v133[0];
  *&v124[15] = *(v133 + 15);
  v123[2] = v128;
  v123[3] = v129;
  v123[4] = v130;
  v123[0] = v126;
  v123[1] = v127;
  sub_217AD2864(v123);
  v20 = v63;
  v21 = (v63 + v64[6]);
  v22 = v21[1];
  v23 = *(v21 + 16);
  v24 = *(v21 + 17);
  v25 = v21[3];
  v26 = v21[4];
  v117 = *v21;
  v118 = v22;
  v119 = v23;
  v120 = v24;
  v121 = v25;
  v122 = v26;
  v116 = 2;
  sub_217AD084C();

  sub_217D89CAC();

  v27 = (v20 + v64[7]);
  v28 = v27[6];
  v29 = v27[4];
  v112 = v27[5];
  v113 = v28;
  v30 = v27[6];
  v31 = v27[8];
  v114 = v27[7];
  v115 = v31;
  v32 = v27[2];
  v33 = *v27;
  v108 = v27[1];
  v109 = v32;
  v34 = v27[2];
  v35 = v27[4];
  v110 = v27[3];
  v111 = v35;
  v36 = *v27;
  v104 = v30;
  v105 = v114;
  v106 = v27[8];
  v107 = v36;
  v100 = v34;
  v101 = v110;
  v102 = v29;
  v103 = v112;
  v98 = v33;
  v99 = v108;
  v97 = 3;
  sub_217AD87FC(&v107, v81);
  sub_217A5D3B4();
  sub_217D89C3C();
  v96[6] = v104;
  v96[7] = v105;
  v96[8] = v106;
  v96[2] = v100;
  v96[3] = v101;
  v96[4] = v102;
  v96[5] = v103;
  v96[0] = v98;
  v96[1] = v99;
  sub_217AD96E8(v96);
  v37 = (v20 + v64[8]);
  v38 = v37[1];
  v39 = v37[2];
  *v81 = *v37;
  *&v81[8] = v38;
  *&v81[16] = v39;
  v80[0] = 4;
  sub_217AD1A68(*v81, v38, v39);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(*v81, *&v81[8], *&v81[16]);
  v40 = (v20 + v64[9]);
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 4);
  v94 = v41;
  v95 = v40;
  v93 = 5;
  sub_217C0573C();
  sub_217D89CAC();
  v42 = (v20 + v64[10]);
  v43 = v42[1];
  v91 = *v42;
  v92[0] = v43;
  *(v92 + 10) = *(v42 + 26);
  v44 = v42[1];
  v89 = *v42;
  v90[0] = v44;
  *(v90 + 10) = *(v42 + 26);
  v88 = 6;
  sub_217AEC604(&v91, v81);
  sub_217AEC6C8();
  sub_217D89CAC();
  v86 = v89;
  *v87 = v90[0];
  *&v87[10] = *(v90 + 10);
  sub_217AEC63C(&v86);
  v45 = (v20 + v64[11]);
  v46 = *v45;
  v47 = v45[1];
  LOWORD(v45) = *(v45 + 8);
  v83 = v46;
  v84 = v47;
  v85 = v45;
  v82 = 7;
  sub_217A5E790();

  sub_217D89C3C();

  v48 = v64[12];
  memcpy(v81, (v20 + v48), sizeof(v81));
  memcpy(v80, (v20 + v48), sizeof(v80));
  v79[279] = 8;
  sub_217AD1744(v81, v79);
  sub_217ACF934();
  sub_217D89CAC();
  memcpy(v79, v80, 0x111uLL);
  sub_217AD28B8(v79);
  v49 = (v20 + v64[13]);
  v50 = v49[1];
  v77[0] = *v49;
  v77[1] = v50;
  v52 = *v49;
  v51 = v49[1];
  v77[2] = v49[2];
  v78 = *(v49 + 48);
  v73 = v52;
  v74 = v51;
  v75 = v49[2];
  v76 = *(v49 + 48);
  v72 = 9;
  sub_217ACC004(v77, v70);
  sub_217A55B98();
  sub_217D89CAC();
  v70[0] = v73;
  v70[1] = v74;
  v70[2] = v75;
  v71 = v76;
  sub_217ACC69C(v70);
  v53 = (v20 + v64[14]);
  v54 = v53[1];
  v55 = v53[2];
  v56 = v53[3];
  v66 = *v53;
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v65 = 10;
  sub_217AE39D0(v66, v54, v55, v56);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v66, v67, v68, v69);
  v57 = (v63 + v64[15]);
  v58 = v57[1];
  v66 = *v57;
  v67 = v58;
  v65 = 11;
  sub_217AD01EC();

  sub_217D89C3C();

  LODWORD(v66) = *(v63 + v64[16]);
  v65 = 12;
  sub_217C063B4();
  sub_217D89CAC();
  LOBYTE(v66) = *(v63 + v64[17]);
  v65 = 13;
  sub_217C0660C();
  sub_217D89CAC();
  v59 = (v63 + v64[18]);
  v60 = *v59;
  v61 = v59[1];
  LOWORD(v59) = *(v59 + 1);
  LOBYTE(v66) = v60;
  BYTE1(v66) = v61;
  WORD1(v66) = v59;
  v65 = 14;
  sub_217ACFB8C();
  sub_217D89CAC();
  return (*(v142 + 8))(v9, v6);
}

unint64_t sub_217C08490()
{
  result = qword_27CBA1FA0;
  if (!qword_27CBA1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FA0);
  }

  return result;
}

void AudioEngagementBeginEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_217D8899C();
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C09178(0, &qword_27CBA1FA8, MEMORY[0x277D844C8]);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C08490();
  v56 = v7;
  v11 = v89;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v53;
    v49 = v8;
    v50 = a1;
    v89 = v10;
    LOBYTE(v88[0]) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    sub_217D89BCC();
    v13 = *(v52 + 32);
    v14 = v89;
    v15 = v55;
    v55 = v3;
    v13(v89, v15, v3);
    v79 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v48 = 0;
    v16 = &v14[v49[5]];
    v17 = v85;
    v18 = *v87;
    *(v16 + 6) = v86;
    *(v16 + 7) = v18;
    *(v16 + 127) = *&v87[15];
    v19 = v83;
    *(v16 + 2) = v82;
    *(v16 + 3) = v19;
    *(v16 + 4) = v84;
    *(v16 + 5) = v17;
    v20 = v81;
    *v16 = v80;
    *(v16 + 1) = v20;
    LOBYTE(v70) = 2;
    sub_217AD07F8();
    sub_217D89BCC();
    v21 = *(&v88[0] + 1);
    v22 = v88[1];
    v23 = BYTE1(v88[1]);
    v24 = *(&v88[1] + 1);
    v25 = *&v88[2];
    v26 = &v14[v49[6]];
    *v26 = *&v88[0];
    *(v26 + 1) = v21;
    v26[16] = v22;
    v26[17] = v23;
    *(v26 + 3) = v24;
    *(v26 + 4) = v25;
    v69 = 3;
    sub_217A5D308();
    sub_217D89B5C();
    v27 = &v14[v49[7]];
    v28 = v77;
    *(v27 + 6) = v76;
    *(v27 + 7) = v28;
    *(v27 + 8) = v78;
    v29 = v73;
    *(v27 + 2) = v72;
    *(v27 + 3) = v29;
    v30 = v75;
    *(v27 + 4) = v74;
    *(v27 + 5) = v30;
    v31 = v71;
    *v27 = v70;
    *(v27 + 1) = v31;
    LOBYTE(v61) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v32 = *&v88[1];
    v33 = &v14[v49[8]];
    *v33 = v88[0];
    *(v33 + 2) = v32;
    LOBYTE(v61) = 5;
    sub_217C056E8();
    sub_217D89BCC();
    v34 = BYTE4(v88[0]);
    v35 = &v14[v49[9]];
    *v35 = v88[0];
    v35[4] = v34;
    v66 = 6;
    sub_217AEC670();
    sub_217D89BCC();
    v36 = &v14[v49[10]];
    v37 = *v68;
    *v36 = v67;
    *(v36 + 1) = v37;
    *(v36 + 26) = *&v68[10];
    LOBYTE(v61) = 7;
    sub_217A5E738();
    sub_217D89B5C();
    v38 = v88[1];
    v39 = &v14[v49[11]];
    *v39 = v88[0];
    *(v39 + 8) = v38;
    v65 = 8;
    sub_217ACF8E0();
    sub_217D89BCC();
    memcpy(&v89[v49[12]], v88, 0x111uLL);
    v60 = 9;
    sub_217A54D08();
    sub_217D89BCC();
    v40 = &v89[v49[13]];
    v41 = v62;
    *v40 = v61;
    *(v40 + 1) = v41;
    *(v40 + 2) = v63;
    v40[48] = v64;
    v57 = 10;
    sub_217ACFF40();
    sub_217D89B5C();
    v42 = &v89[v49[14]];
    v43 = v59;
    *v42 = v58;
    *(v42 + 1) = v43;
    v57 = 11;
    sub_217AD0198();
    sub_217D89B5C();
    *&v89[v49[15]] = v58;
    v57 = 12;
    sub_217C06360();
    sub_217D89BCC();
    *&v89[v49[16]] = v58;
    v57 = 13;
    sub_217C065B8();
    sub_217D89BCC();
    v89[v49[17]] = v58;
    v57 = 14;
    sub_217ACFB38();
    sub_217D89BCC();
    (*(v12 + 8))(v56, v54);
    v44 = BYTE1(v58);
    v45 = WORD1(v58);
    v46 = v89;
    v47 = &v89[v49[18]];
    *v47 = v58;
    v47[1] = v44;
    *(v47 + 1) = v45;
    sub_217C091DC(v46, v51);
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_217C09240(v46);
  }
}

void sub_217C09178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C08490();
    v7 = a3(a1, &type metadata for AudioEngagementBeginEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C091DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C09240(uint64_t a1)
{
  v2 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C09374@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v28 - 8) + 104))(a2 + v27, v11, v28);
  v29 = a1[16];
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
  (*(*(v32 - 8) + 104))(a2 + v31, v4, v32);
  v33 = a1[18];
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v4, v34);
}

void sub_217C09AC0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C06810(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217C06810(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217C06810(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217C06810(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217C06810(319, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
            if (v6 <= 0x3F)
            {
              sub_217C06810(319, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
              if (v7 <= 0x3F)
              {
                sub_217C06810(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_217C06810(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
                  if (v9 <= 0x3F)
                  {
                    sub_217C06810(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217C06810(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                      if (v11 <= 0x3F)
                      {
                        sub_217C06810(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                        if (v12 <= 0x3F)
                        {
                          sub_217C06810(319, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
                          if (v13 <= 0x3F)
                          {
                            sub_217C06810(319, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
                            if (v14 <= 0x3F)
                            {
                              sub_217C06810(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
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

void sub_217C09FB4(uint64_t a1)
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
        sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
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

unint64_t sub_217C0A160()
{
  result = qword_27CBA1FD0;
  if (!qword_27CBA1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FD0);
  }

  return result;
}

unint64_t sub_217C0A1B8()
{
  result = qword_27CBA1FD8;
  if (!qword_27CBA1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FD8);
  }

  return result;
}

unint64_t sub_217C0A210()
{
  result = qword_27CBA1FE0;
  if (!qword_27CBA1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FE0);
  }

  return result;
}

uint64_t sub_217C0A264(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD0540 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD0560 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
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

uint64_t sub_217C0A790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70795470756F7267 && a2 == 0xE900000000000065)
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

uint64_t sub_217C0A820(uint64_t a1)
{
  v2 = sub_217C0A9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0A85C(uint64_t a1)
{
  v2 = sub_217C0A9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdGroupData.encode(to:)(void *a1)
{
  sub_217C0AC34(0, &qword_2811BC870, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0A9F4();
  sub_217D89E7C();
  v11 = v8;
  sub_217C0AA48();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C0A9F4()
{
  result = qword_2811C7E30;
  if (!qword_2811C7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E30);
  }

  return result;
}

unint64_t sub_217C0AA48()
{
  result = qword_2811BD158;
  if (!qword_2811BD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD158);
  }

  return result;
}

uint64_t AdGroupData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C0AC34(0, &qword_27CBA1FE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0A9F4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C0AC98();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C0AC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0A9F4();
    v7 = a3(a1, &type metadata for AdGroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C0AC98()
{
  result = qword_2811BD140;
  if (!qword_2811BD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD140);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA4)
  {
    goto LABEL_17;
  }

  if (a2 + 92 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 92) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 92;
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

      return (*a1 | (v4 << 8)) - 92;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 92;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5D;
  v8 = v6 - 93;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 92 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 92) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA4)
  {
    v4 = 0;
  }

  if (a2 > 0xA3)
  {
    v5 = ((a2 - 164) >> 8) + 1;
    *result = a2 + 92;
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
    *result = a2 + 92;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C0AE88()
{
  result = qword_27CBA1FF0;
  if (!qword_27CBA1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FF0);
  }

  return result;
}

unint64_t sub_217C0AEE0()
{
  result = qword_2811C7E20;
  if (!qword_2811C7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E20);
  }

  return result;
}

unint64_t sub_217C0AF38()
{
  result = qword_2811C7E28;
  if (!qword_2811C7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E28);
  }

  return result;
}

uint64_t sub_217C0B054()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2028);
  __swift_project_value_buffer(v0, qword_27CBA2028);
  return sub_217D8866C();
}

uint64_t SportsAddFavoritesSyncEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsAddFavoritesSyncEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsAddFavoritesSyncEvent(0) + 20);
  sub_217A62C68(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsAddFavoritesSyncEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsAddFavoritesSyncEvent(0) + 20);
  sub_217A62C68(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsAddFavoritesSyncEvent.addFavoritesSyncData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsAddFavoritesSyncEvent(0) + 24);
  sub_217A62C68(0, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C, &type metadata for SportsAddFavoritesSyncData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C0B408()
{
  result = qword_27CBA2048;
  if (!qword_27CBA2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2048);
  }

  return result;
}

unint64_t sub_217C0B45C()
{
  result = qword_27CBA2050;
  if (!qword_27CBA2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2050);
  }

  return result;
}

uint64_t SportsAddFavoritesSyncEvent.addFavoritesSyncData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsAddFavoritesSyncEvent(0) + 24);
  sub_217A62C68(0, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C, &type metadata for SportsAddFavoritesSyncData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsAddFavoritesSyncEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SportsAddFavoritesSyncEvent(0);
  v5 = *(v4 + 20);
  sub_217A62C68(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62C68(0, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C, &type metadata for SportsAddFavoritesSyncData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsAddFavoritesSyncEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsAddFavoritesSyncEvent.Model(0) + 20));
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

uint64_t SportsAddFavoritesSyncEvent.Model.addFavoritesSyncData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 SportsAddFavoritesSyncEvent.Model.init(eventData:userBundleSubscriptionContextData:addFavoritesSyncData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

unint64_t sub_217C0B898()
{
  v1 = 0xD000000000000021;
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
    return 0x746144746E657665;
  }
}

uint64_t sub_217C0B904@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C0C708(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C0B92C(uint64_t a1)
{
  v2 = sub_217C0BC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0B968(uint64_t a1)
{
  v2 = sub_217C0BC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsAddFavoritesSyncEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C0C0A4(0, &qword_27CBA2058, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0BC50();
  sub_217D89E7C();
  v29 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
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
    v17 = *(v3 + *(v10 + 24));
    v16[11] = 2;
    sub_217C0B45C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C0BC50()
{
  result = qword_27CBA2060;
  if (!qword_27CBA2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2060);
  }

  return result;
}

uint64_t SportsAddFavoritesSyncEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C0C0A4(0, &qword_27CBA2068, MEMORY[0x277D844C8]);
  v27 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0BC50();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v24;
  v12 = v25;
  v21 = v9;
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
  sub_217C0B408();
  sub_217D89BCC();
  (*(v13 + 8))(v8, v14);
  v18 = v22;
  *&v22[*(v21 + 24)] = v32;
  sub_217C0C108(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C0C16C(v18);
}

void sub_217C0C0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0BC50();
    v7 = a3(a1, &type metadata for SportsAddFavoritesSyncEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C0C108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C0C16C(uint64_t a1)
{
  v2 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C0C2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62C68(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62C68(0, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C, &type metadata for SportsAddFavoritesSyncData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217C0C438(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A62C68(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A62C68(319, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C, &type metadata for SportsAddFavoritesSyncData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217C0C56C(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C0C604()
{
  result = qword_27CBA2090;
  if (!qword_27CBA2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2090);
  }

  return result;
}

unint64_t sub_217C0C65C()
{
  result = qword_27CBA2098;
  if (!qword_27CBA2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2098);
  }

  return result;
}

unint64_t sub_217C0C6B4()
{
  result = qword_27CBA20A0;
  if (!qword_27CBA20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20A0);
  }

  return result;
}

uint64_t sub_217C0C708(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000014 && 0x8000000217DD0580 == a2)
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

uint64_t SportsTagData.sportTagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsTagData.sportTagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SportsTagData.leagueTagIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

NewsAnalytics::SportsTagData __swiftcall SportsTagData.init(sportTagID:leagueTagIDs:)(NewsAnalytics::SportsTagData sportTagID, Swift::OpaquePointer_optional leagueTagIDs)
{
  *v2 = sportTagID.sportTagID;
  v2[1]._countAndFlagsBits = leagueTagIDs.value._rawValue;
  sportTagID.leagueTagIDs = leagueTagIDs;
  return sportTagID;
}

uint64_t sub_217C0C924()
{
  if (*v0)
  {
    return 0x615465756761656CLL;
  }

  else
  {
    return 0x67615474726F7073;
  }
}

uint64_t sub_217C0C96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x67615474726F7073 && a2 == 0xEA00000000004449;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x615465756761656CLL && a2 == 0xEC00000073444967)
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

uint64_t sub_217C0CA54(uint64_t a1)
{
  v2 = sub_217C0CC9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0CA90(uint64_t a1)
{
  v2 = sub_217C0CC9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsTagData.encode(to:)(void *a1)
{
  sub_217C0CF3C(0, &qword_27CBA20A8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v13[0] = *(v1 + 16);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_217C0CC9C();
  sub_217D89E7C();
  v15 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v7, v11);
}

unint64_t sub_217C0CC9C()
{
  result = qword_27CBA20B0;
  if (!qword_27CBA20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20B0);
  }

  return result;
}

uint64_t SportsTagData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C0CF3C(0, &qword_27CBA20B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0CC9C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  sub_217A55F8C();
  v17 = 1;
  sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_217D89B5C();
  (*(v7 + 8))(v9, v6);
  v14 = v16[1];
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C0CF3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0CC9C();
    v7 = a3(a1, &type metadata for SportsTagData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C0CFFC()
{
  result = qword_27CBA20C0;
  if (!qword_27CBA20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20C0);
  }

  return result;
}

unint64_t sub_217C0D054()
{
  result = qword_27CBA20C8;
  if (!qword_27CBA20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20C8);
  }

  return result;
}

unint64_t sub_217C0D0AC()
{
  result = qword_27CBA20D0;
  if (!qword_27CBA20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20D0);
  }

  return result;
}

uint64_t sub_217C0D100()
{
  v0 = sub_217D88E7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = sub_217C0D358;
  v3[1] = 0;
  v4 = *MEMORY[0x277D6D278];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_217D88E9C();
  v6 = *(v1 + 8);
  v6(v3, v0);
  *v3 = sub_217C0D36C;
  v3[1] = 0;
  v5(v3, v4, v0);
  sub_217D88E9C();
  v6(v3, v0);
  *v3 = sub_217C0D378;
  v3[1] = 0;
  v5(v3, v4, v0);
  sub_217D88E9C();
  v6(v3, v0);
  *v3 = sub_217C0D384;
  v3[1] = 0;
  v5(v3, v4, v0);
  sub_217D88E9C();
  return (v6)(v3, v0);
}

void sub_217C0D390(SEL *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D6D028]) init];
  [v2 *a1];
}

uint64_t NewspaperData.sectionIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

NewsAnalytics::NewspaperData __swiftcall NewspaperData.init(sectionIDs:)(Swift::OpaquePointer_optional sectionIDs)
{
  rawValue = sectionIDs.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.sectionIDs.value._rawValue = v4;
  result.sectionIDs.is_nil = v5;
  return result;
}

uint64_t sub_217C0D47C(uint64_t a1)
{
  v2 = sub_217C0D690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0D4B8(uint64_t a1)
{
  v2 = sub_217C0D690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewspaperData.encode(to:)(void *a1)
{
  sub_217C0D8A8(0, &qword_27CBA20D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0D690();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_217D89C3C();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C0D690()
{
  result = qword_27CBA20E0;
  if (!qword_27CBA20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20E0);
  }

  return result;
}

uint64_t NewspaperData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217C0D8A8(0, &qword_27CBA20E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0D690();
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

void sub_217C0D8A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0D690();
    v7 = a3(a1, &type metadata for NewspaperData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C0D910()
{
  result = qword_27CBA20F0;
  if (!qword_27CBA20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20F0);
  }

  return result;
}

unint64_t sub_217C0D968()
{
  result = qword_27CBA20F8;
  if (!qword_27CBA20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20F8);
  }

  return result;
}

unint64_t sub_217C0DA10()
{
  result = qword_27CBA2100;
  if (!qword_27CBA2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2100);
  }

  return result;
}

unint64_t sub_217C0DA68()
{
  result = qword_27CBA2108;
  if (!qword_27CBA2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2108);
  }

  return result;
}

unint64_t sub_217C0DAC0()
{
  result = qword_27CBA2110;
  if (!qword_27CBA2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2110);
  }

  return result;
}

uint64_t sub_217C0DBDC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1878);
  __swift_project_value_buffer(v0, qword_2811C1878);
  return sub_217D8866C();
}

uint64_t AppSessionResumeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionResumeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResumeEvent(0) + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionResumeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResumeEvent(0) + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResumeEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResumeEvent(0) + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionResumeEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResumeEvent(0) + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResumeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionResumeEvent(0);
  v5 = *(v4 + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AppSessionResumeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionResumeEvent.Model(0) + 20));
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

uint64_t AppSessionResumeEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionResumeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 AppSessionResumeEvent.Model.init(eventData:userBundleSubscriptionContextData:orientationData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AppSessionResumeEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

unint64_t sub_217C0E358()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0x7461746E6569726FLL;
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

uint64_t sub_217C0E3C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C0F0C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C0E3F0(uint64_t a1)
{
  v2 = sub_217C0E714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0E42C(uint64_t a1)
{
  v2 = sub_217C0E714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionResumeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C0EB68(0, &qword_27CBA2118, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0E714();
  sub_217D89E7C();
  v29 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for AppSessionResumeEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
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
    v17 = *(v3 + *(v10 + 24));
    v16[13] = 2;
    sub_217A4CF88();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C0E714()
{
  result = qword_27CBA2120;
  if (!qword_27CBA2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2120);
  }

  return result;
}

uint64_t AppSessionResumeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C0EB68(0, &qword_27CBA2128, MEMORY[0x277D844C8]);
  v27 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AppSessionResumeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0E714();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v24;
  v12 = v25;
  v21 = v9;
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
  v32 = 2;
  sub_217A4CF30();
  sub_217D89BCC();
  (*(v13 + 8))(v8, v14);
  v18 = v22;
  *&v22[*(v21 + 24)] = v33;
  sub_217C0EBCC(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C0EC30(v18);
}

void sub_217C0EB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0E714();
    v7 = a3(a1, &type metadata for AppSessionResumeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C0EBCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionResumeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C0EC30(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionResumeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C0ED64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_217C0EF24(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C0EFBC()
{
  result = qword_27CBA2140;
  if (!qword_27CBA2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2140);
  }

  return result;
}

unint64_t sub_217C0F014()
{
  result = qword_27CBA2148;
  if (!qword_27CBA2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2148);
  }

  return result;
}

unint64_t sub_217C0F06C()
{
  result = qword_27CBA2150;
  if (!qword_27CBA2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2150);
  }

  return result;
}

uint64_t sub_217C0F0C0(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69)
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

uint64_t sub_217C0F2B8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BE140);
  __swift_project_value_buffer(v0, qword_2811BE140);
  return sub_217D8866C();
}

uint64_t JourneyMessageAMSExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageAMSExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 24);
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 24);
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 28);
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 28);
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 32);
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 32);
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 36);
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 36);
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 40);
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 40);
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 44);
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 44);
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 48);
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 48);
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.engagementPlacementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 52);
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.engagementPlacementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 52);
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 56);
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 56);
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageAMSExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t sub_217C10980@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t JourneyMessageAMSExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t JourneyMessageAMSExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 28);
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

uint64_t JourneyMessageAMSExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t JourneyMessageAMSExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t JourneyMessageAMSExposureEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t JourneyMessageAMSExposureEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageAMSExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 48);
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

uint64_t JourneyMessageAMSExposureEvent.Model.engagementPlacementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t JourneyMessageAMSExposureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 JourneyMessageAMSExposureEvent.Model.init(eventData:timedData:viewData:articleData:tagData:feedData:dialogStyleData:placementData:userBundleSubscriptionContextData:engagementPlacementOriginationData:purchaseData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t *a12)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = *(a3 + 8);
  v20 = a5[1];
  v42 = *a6;
  v40 = *a5;
  v41 = *(a6 + 2);
  v43 = *a7;
  v44 = a8[1];
  v45 = *a8;
  v46 = *a11;
  v49 = *a12;
  v48 = a12[1];
  v47 = *(a12 + 16);
  v21 = sub_217D8899C();
  v38 = *(a8 + 2);
  v39 = *(a8 + 1);
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  v23 = v22[5];
  v24 = sub_217D889CC();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  *v25 = v17;
  *(v25 + 8) = v18;
  *(v25 + 16) = v19;
  v26 = a9 + v22[7];
  v27 = *(a4 + 48);
  *(v26 + 32) = *(a4 + 32);
  *(v26 + 48) = v27;
  v28 = *(a4 + 16);
  *v26 = *a4;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a4 + 127);
  v29 = *(a4 + 112);
  *(v26 + 96) = *(a4 + 96);
  *(v26 + 112) = v29;
  v30 = *(a4 + 80);
  *(v26 + 64) = *(a4 + 64);
  *(v26 + 80) = v30;
  v31 = (a9 + v22[8]);
  *v31 = v40;
  v31[1] = v20;
  v32 = a9 + v22[9];
  *v32 = v42;
  *(v32 + 16) = v41;
  *(a9 + v22[10]) = v43;
  v33 = a9 + v22[11];
  *v33 = v45;
  *(v33 + 8) = v44;
  *(v33 + 16) = v39;
  *(v33 + 32) = v38;
  v34 = a9 + v22[12];
  v35 = *(a10 + 16);
  *v34 = *a10;
  *(v34 + 16) = v35;
  result = *(a10 + 32);
  *(v34 + 32) = result;
  *(v34 + 48) = *(a10 + 48);
  *(a9 + v22[13]) = v46;
  v37 = a9 + v22[14];
  *v37 = v49;
  *(v37 + 8) = v48;
  *(v37 + 16) = v47;
  return result;
}

uint64_t sub_217C10F54(uint64_t a1)
{
  v2 = sub_217C116C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C10F90(uint64_t a1)
{
  v2 = sub_217C116C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageAMSExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C12294(0, &qword_27CBA2158, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v40 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C116C4();
  sub_217D89E7C();
  LOBYTE(v74[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
    LOBYTE(v74[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + *(v10 + 24));
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v82 = v12;
    v83 = v13;
    v84 = v11;
    v81 = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v85 = v10;
    v14 = v3 + *(v10 + 28);
    v15 = *(v14 + 96);
    v16 = *(v14 + 64);
    v78 = *(v14 + 80);
    v79 = v15;
    v17 = *(v14 + 96);
    *v80 = *(v14 + 112);
    v18 = *(v14 + 16);
    v19 = *(v14 + 48);
    v75 = *(v14 + 32);
    v76 = v19;
    v20 = *(v14 + 48);
    v77 = *(v14 + 64);
    v21 = *(v14 + 16);
    v74[0] = *v14;
    v74[1] = v21;
    v71 = v78;
    v72 = v17;
    v73[0] = *(v14 + 112);
    v68 = v75;
    v69 = v20;
    v70 = v16;
    *&v80[15] = *(v14 + 127);
    *(v73 + 15) = *(v14 + 127);
    v66 = v74[0];
    v67 = v18;
    v65 = 3;
    sub_217AFFBC0(v74, v63);
    sub_217ACF52C();
    sub_217D89C3C();
    v63[6] = v72;
    *v64 = v73[0];
    *&v64[15] = *(v73 + 15);
    v63[2] = v68;
    v63[3] = v69;
    v63[4] = v70;
    v63[5] = v71;
    v63[0] = v66;
    v63[1] = v67;
    sub_217B009E0(v63);
    v23 = v85;
    v24 = (v3 + v85[8]);
    v25 = v24[1];
    *&v53 = *v24;
    *(&v53 + 1) = v25;
    LOBYTE(v49) = 4;
    sub_217AF6B14();

    sub_217D89C3C();

    v26 = (v3 + v23[9]);
    v27 = v26[1];
    v28 = v26[2];
    *&v53 = *v26;
    *(&v53 + 1) = v27;
    *&v54 = v28;
    LOBYTE(v49) = 5;
    sub_217AD1A68(v53, v27, v28);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v53, *(&v53 + 1), v54);
    LOBYTE(v53) = *(v3 + v23[10]);
    LOBYTE(v49) = 6;
    sub_217AFEA44();
    sub_217D89CAC();
    v29 = (v3 + v23[11]);
    v30 = v29[1];
    v31 = v29[2];
    v32 = v29[5];
    v58 = *v29;
    v59 = v30;
    v61 = *(v29 + 3);
    v60 = v31;
    v62 = v32;
    v57 = 7;
    v40[1] = v61;
    v41 = v32;
    sub_217AFEC9C();

    sub_217D89CAC();
    v41 = v62;

    v33 = (v3 + v23[12]);
    v34 = v33[1];
    v53 = *v33;
    v54 = v34;
    v36 = *v33;
    v35 = v33[1];
    v55 = v33[2];
    v56 = *(v33 + 48);
    v49 = v36;
    v50 = v35;
    v51 = v33[2];
    v52 = *(v33 + 48);
    v48 = 8;
    sub_217ACC004(&v53, v46);
    sub_217A55B98();
    sub_217D89CAC();
    v46[0] = v49;
    v46[1] = v50;
    v46[2] = v51;
    v47 = v52;
    sub_217ACC69C(v46);
    LOBYTE(v42) = *(v3 + v23[13]);
    v45 = 9;
    sub_217AFF0A4();
    sub_217D89C3C();
    v37 = (v3 + v23[14]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v37) = *(v37 + 16);
    v42 = v38;
    v43 = v39;
    v44 = v37;
    v45 = 10;
    sub_217AFF378();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C116C4()
{
  result = qword_27CBA2160;
  if (!qword_27CBA2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2160);
  }

  return result;
}

uint64_t JourneyMessageAMSExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_217D889CC();
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C12294(0, &qword_27CBA2168, MEMORY[0x277D844C8]);
  v48 = v8;
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - v9;
  v11 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217C116C4();
  v49 = v10;
  v15 = v50;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v16 = v46;
  v41 = v3;
  v42 = v11;
  v50 = v13;
  LOBYTE(v60) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v17 = v47;
  sub_217D89BCC();
  v18 = v50;
  (*(v45 + 32))(v50, v17, v6);
  LOBYTE(v60) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v19 = v41;
  sub_217D89BCC();
  v40[1] = v6;
  v47 = 0;
  v20 = v42;
  (*(v44 + 32))(&v18[v42[5]], v5, v19);
  LOBYTE(v55) = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v21 = *(&v60 + 1);
  v22 = v61;
  v23 = &v18[v20[6]];
  *v23 = v60;
  *(v23 + 1) = v21;
  *(v23 + 8) = v22;
  v59 = 3;
  sub_217ACF4D8();
  sub_217D89B5C();
  v24 = &v18[v20[7]];
  v25 = *v67;
  *(v24 + 6) = v66;
  *(v24 + 7) = v25;
  *(v24 + 127) = *&v67[15];
  v26 = v63;
  *(v24 + 2) = v62;
  *(v24 + 3) = v26;
  v27 = v65;
  *(v24 + 4) = v64;
  *(v24 + 5) = v27;
  v28 = v61;
  *v24 = v60;
  *(v24 + 1) = v28;
  LOBYTE(v51) = 4;
  sub_217AF6AC0();
  sub_217D89B5C();
  *&v18[v20[8]] = v55;
  LOBYTE(v51) = 5;
  sub_217A5B978();
  sub_217D89B5C();
  v29 = v56;
  v30 = &v18[v20[9]];
  *v30 = v55;
  *(v30 + 2) = v29;
  LOBYTE(v51) = 6;
  sub_217AFE9F0();
  sub_217D89BCC();
  v18[v20[10]] = v55;
  LOBYTE(v51) = 7;
  sub_217AFEC48();
  sub_217D89BCC();
  v31 = *(&v55 + 1);
  v32 = &v50[v42[11]];
  *v32 = v55;
  *(v32 + 1) = v31;
  v33 = v57;
  *(v32 + 1) = v56;
  *(v32 + 2) = v33;
  v54 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v34 = &v50[v42[12]];
  v35 = v56;
  *v34 = v55;
  *(v34 + 1) = v35;
  *(v34 + 2) = v57;
  v34[48] = v58;
  v53 = 9;
  sub_217AFF050();
  sub_217D89B5C();
  v50[v42[13]] = v51;
  v53 = 10;
  sub_217AFF324();
  sub_217D89B5C();
  (*(v16 + 8))(v49, v48);
  v36 = v52;
  v37 = v50;
  v38 = &v50[v42[14]];
  *v38 = v51;
  v38[16] = v36;
  sub_217C122F8(v37, v43);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return sub_217C1235C(v37);
}

void sub_217C12294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C116C4();
    v7 = a3(a1, &type metadata for JourneyMessageAMSExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C122F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C1235C(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217C124F4()
{
  result = qword_27CBA2180;
  if (!qword_27CBA2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2180);
  }

  return result;
}

unint64_t sub_217C1254C()
{
  result = qword_27CBA2188;
  if (!qword_27CBA2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2188);
  }

  return result;
}

unint64_t sub_217C125A4()
{
  result = qword_27CBA2190;
  if (!qword_27CBA2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2190);
  }

  return result;
}

void __swiftcall ReferralData.with(referringUrl:)(NewsAnalytics::ReferralData *__return_ptr retstr, Swift::String referringUrl)
{
  v3 = v2[1];
  v5 = v2[4];
  v4 = v2[5];
  retstr->referringApplication._countAndFlagsBits = *v2;
  retstr->referringApplication._object = v3;
  retstr->referringUrl = referringUrl;
  retstr->userActivityType.value._countAndFlagsBits = v5;
  retstr->userActivityType.value._object = v4;
}

NewsAnalytics::Milestone_optional __swiftcall Milestone.init(rawValue:)(Swift::String rawValue)
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

uint64_t Milestone.rawValue.getter()
{
  v1 = *v0;
  v2 = 1869768058;
  v3 = 0x7974666966;
  v4 = 0x4679746E65766573;
  if (v1 != 4)
  {
    v4 = 0x72646E7548656E6FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7234932;
  if (v1 != 1)
  {
    v5 = 0x694679746E657774;
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

unint64_t sub_217C12778()
{
  result = qword_27CBA2198;
  if (!qword_27CBA2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2198);
  }

  return result;
}

uint64_t sub_217C127D4(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217C128D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1869768058;
  v5 = 0xE500000000000000;
  v6 = 0x7974666966;
  v7 = 0xEB00000000657669;
  v8 = 0x4679746E65766573;
  if (v2 != 4)
  {
    v8 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7234932;
  if (v2 != 1)
  {
    v10 = 0x694679746E657774;
    v9 = 0xEA00000000006576;
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
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217C12A48()
{
  result = qword_27CBA21A0;
  if (!qword_27CBA21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21A0);
  }

  return result;
}

uint64_t WidgetExposureData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WidgetExposureData.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetExposureData.init(identifier:articleCount:articleExposureCount:appearanceType:contentFetchDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 40) = a6;
  return result;
}

unint64_t sub_217C12C1C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000014;
  v4 = 0x6E61726165707061;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x43656C6369747261;
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

uint64_t sub_217C12CDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C134E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C12D04(uint64_t a1)
{
  v2 = sub_217C12F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C12D40(uint64_t a1)
{
  v2 = sub_217C12F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetExposureData.encode(to:)(void *a1)
{
  sub_217C132D0(0, &qword_27CBA21A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v8;
  v13 = *(v1 + 32);
  v12[1] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C12F94();
  sub_217D89E7C();
  v22 = 0;
  v9 = v16;
  sub_217D89C6C();
  if (!v9)
  {
    v10 = v13;
    v21 = 1;
    sub_217D89CCC();
    v20 = 2;
    sub_217D89CCC();
    v19 = v10;
    v18 = 3;
    sub_217C12FE8();
    sub_217D89CAC();
    v17 = 4;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C12F94()
{
  result = qword_27CBA21B0;
  if (!qword_27CBA21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21B0);
  }

  return result;
}

unint64_t sub_217C12FE8()
{
  result = qword_27CBA21B8;
  if (!qword_27CBA21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21B8);
  }

  return result;
}

uint64_t WidgetExposureData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C132D0(0, &qword_27CBA21C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C12F94();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v25 = 1;
  v20 = sub_217D89BEC();
  v24 = 2;
  v19 = sub_217D89BEC();
  v22 = 3;
  sub_217C13334();
  sub_217D89BCC();
  v18 = v23;
  v21 = 4;
  v15 = sub_217D89BEC();
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  *(a2 + 8) = v12;
  v16 = v19;
  *(a2 + 16) = v20;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C132D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C12F94();
    v7 = a3(a1, &type metadata for WidgetExposureData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C13334()
{
  result = qword_27CBA21C8;
  if (!qword_27CBA21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21C8);
  }

  return result;
}

unint64_t sub_217C133E4()
{
  result = qword_27CBA21D0;
  if (!qword_27CBA21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21D0);
  }

  return result;
}

unint64_t sub_217C1343C()
{
  result = qword_27CBA21D8;
  if (!qword_27CBA21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21D8);
  }

  return result;
}

unint64_t sub_217C13494()
{
  result = qword_27CBA21E0;
  if (!qword_27CBA21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21E0);
  }

  return result;
}

uint64_t sub_217C134E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43656C6369747261 && a2 == 0xEC000000746E756FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD0630 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEE00657079546563 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEF10 == a2)
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

uint64_t sub_217C13784()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2218);
  __swift_project_value_buffer(v0, qword_27CBA2218);
  return sub_217D8866C();
}

uint64_t PDFPageViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PDFPageViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 20);
  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 20);
  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 24);
  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 24);
  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 28);
  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 28);
  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 32);
  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 32);
  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 36);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 40);
  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 40);
  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 44);
  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 44);
  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.pdfPageContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 48);
  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4, &type metadata for PDFPageContext);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.pdfPageContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 48);
  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4, &type metadata for PDFPageContext);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 52);
  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 52);
  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 56);
  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 56);
  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 60);
  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 60);
  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.referralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 64);
  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.referralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 64);
  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 68);
  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 68);
  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 72);
  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C14EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t PDFPageViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 72);
  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PDFPageViewEvent(0);
  v5 = v4[5];
  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217A608E0(0);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v19 - 8) + 104))(a1 + v18, v16, v19);
  v20 = v4[12];
  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4, &type metadata for PDFPageContext);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v23 - 8) + 104))(a1 + v22, v16, v23);
  v24 = v4[14];
  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  (*(*(v25 - 8) + 104))(a1 + v24, v16, v25);
  v26 = v4[15];
  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  (*(*(v29 - 8) + 104))(a1 + v28, v16, v29);
  v30 = v4[17];
  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v31 - 8) + 104))(a1 + v30, v16, v31);
  v32 = v4[18];
  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v16, v33);
}

uint64_t PDFPageViewEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 20);
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

uint64_t PDFPageViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t PDFPageViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 28);
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

uint64_t PDFPageViewEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PDFPageViewEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t sub_217C158E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 36);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PDFPageViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PDFPageViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 44));
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

uint64_t PDFPageViewEvent.Model.pdfPageContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 48));
  v4 = *v3;
  LODWORD(v3) = *(v3 + 2);
  *a1 = v4;
  *(a1 + 8) = v3;
}

void PDFPageViewEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 52));
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

uint64_t PDFPageViewEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 56));
  v5 = v3[5];
  v14 = v3[4];
  v4 = v14;
  v15 = v5;
  v6 = v3[3];
  v12 = v3[2];
  v13 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v6;
  a1[4] = v4;
  a1[5] = v5;
  *a1 = v7;
  a1[1] = v8;
  return sub_217AE38AC(v11, &v10, &qword_2811C4F30, &type metadata for NotificationData);
}

uint64_t PDFPageViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 60);
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

void PDFPageViewEvent.Model.referralData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 64));
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

uint64_t PDFPageViewEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for PDFPageViewEvent.Model(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t PDFPageViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PDFPageViewEvent.Model(0) + 72));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 PDFPageViewEvent.Model.init(eventData:issueData:issueViewData:channelData:userChannelContextData:timedData:feedData:groupData:pdfPageContext:campaignData:notificationData:userBundleSubscriptionContextData:referralData:paywallData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __int128 *a11, _OWORD *a12, uint64_t a13, uint64_t a14, __int16 *a15, uint64_t *a16)
{
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 16);
  v48 = *(a2 + 17);
  v47 = a2[3];
  v50 = *a3;
  v49 = a3[1];
  v56 = *a4;
  v55 = a4[1];
  v54 = *(a4 + 16);
  v53 = *(a4 + 17);
  v52 = a4[3];
  v51 = a4[4];
  v59 = *a5;
  v58 = a5[1];
  v57 = *(a5 + 1);
  v61 = *a7;
  v60 = *(a7 + 2);
  v68 = *a10;
  v67 = *(a10 + 2);
  v75 = a16[1];
  v76 = *a16;
  v73 = *a15;
  v74 = *(a16 + 8);
  v64 = *(a11 + 5);
  v65 = *(a11 + 4);
  v71 = *(a14 + 40);
  v72 = *(a14 + 32);
  v22 = sub_217D8899C();
  v69 = *(a14 + 16);
  v70 = *a14;
  v62 = a11[1];
  v63 = *a11;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for PDFPageViewEvent.Model(0);
  v24 = a9 + v23[5];
  *v24 = v19;
  *(v24 + 8) = v20;
  *(v24 + 16) = v21;
  *(v24 + 17) = v48;
  *(v24 + 24) = v47;
  v25 = (a9 + v23[6]);
  *v25 = v50;
  v25[1] = v49;
  v26 = a9 + v23[7];
  *v26 = v56;
  *(v26 + 8) = v55;
  *(v26 + 16) = v54;
  *(v26 + 17) = v53;
  *(v26 + 24) = v52;
  *(v26 + 32) = v51;
  v27 = a9 + v23[8];
  *v27 = v59;
  *(v27 + 1) = v58;
  *(v27 + 2) = v57;
  v28 = v23[9];
  v29 = sub_217D889CC();
  (*(*(v29 - 8) + 32))(a9 + v28, a6, v29);
  v30 = a9 + v23[10];
  *v30 = v61;
  *(v30 + 16) = v60;
  v31 = (a9 + v23[11]);
  v32 = a8[3];
  v31[2] = a8[2];
  v31[3] = v32;
  v33 = a8[1];
  *v31 = *a8;
  v31[1] = v33;
  v34 = a8[8];
  v31[7] = a8[7];
  v31[8] = v34;
  v35 = a8[6];
  v31[5] = a8[5];
  v31[6] = v35;
  v31[4] = a8[4];
  v36 = a9 + v23[12];
  *v36 = v68;
  *(v36 + 8) = v67;
  v37 = a9 + v23[13];
  *v37 = v63;
  *(v37 + 16) = v62;
  *(v37 + 32) = v65;
  *(v37 + 40) = v64;
  v38 = (a9 + v23[14]);
  v39 = a12[3];
  v38[2] = a12[2];
  v38[3] = v39;
  v40 = a12[5];
  v38[4] = a12[4];
  v38[5] = v40;
  v41 = a12[1];
  *v38 = *a12;
  v38[1] = v41;
  v42 = a9 + v23[15];
  *(v42 + 48) = *(a13 + 48);
  v43 = *(a13 + 32);
  *(v42 + 16) = *(a13 + 16);
  *(v42 + 32) = v43;
  *v42 = *a13;
  v44 = a9 + v23[16];
  result = v70;
  *v44 = v70;
  *(v44 + 16) = v69;
  *(v44 + 32) = v72;
  *(v44 + 40) = v71;
  *(a9 + v23[17]) = v73;
  v46 = a9 + v23[18];
  *v46 = v76;
  *(v46 + 8) = v75;
  *(v46 + 16) = v74;
  return result;
}

uint64_t sub_217C15FC8(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7461446575737369;
      break;
    case 2:
      result = 0x6569566575737369;
      break;
    case 3:
      v3 = 0x656E6E616863;
      goto LABEL_14;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x74614464656D6974;
      break;
    case 6:
      result = 0x6174614464656566;
      break;
    case 7:
      result = 0x74614470756F7267;
      break;
    case 8:
      result = 0x4365676150666470;
      break;
    case 9:
      result = 0x6E676961706D6163;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0x6C61727265666572;
      break;
    case 13:
      v3 = 0x6C6177796170;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 14:
      result = 0x6174614477656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C16184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C18AAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C161AC(uint64_t a1)
{
  v2 = sub_217C16BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C161E8(uint64_t a1)
{
  v2 = sub_217C16BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PDFPageViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C179F0(0, &qword_27CBA2230, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v71 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C16BD0();
  sub_217D89E7C();
  LOBYTE(v119) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v132 = type metadata accessor for PDFPageViewEvent.Model(0);
    v10 = v3 + v132[5];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 17);
    v14 = *(v10 + 24);
    *&v119 = *v10;
    *(&v119 + 1) = v11;
    LOBYTE(v120) = v12;
    BYTE1(v120) = v13;
    *(&v120 + 1) = v14;
    LOBYTE(v110) = 1;
    sub_217ACFF94();

    sub_217D89CAC();

    v15 = v132;
    v16 = (v3 + v132[6]);
    v17 = v16[1];
    *&v119 = *v16;
    *(&v119 + 1) = v17;
    LOBYTE(v110) = 2;
    sub_217AD01EC();

    sub_217D89CAC();

    v19 = v3 + v15[7];
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    v22 = *(v19 + 17);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    *&v119 = *v19;
    *(&v119 + 1) = v20;
    LOBYTE(v120) = v21;
    BYTE1(v120) = v22;
    *(&v120 + 1) = v23;
    *&v121 = v24;
    LOBYTE(v110) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v25 = (v3 + v132[8]);
    v26 = *v25;
    v27 = v25[1];
    LOWORD(v25) = *(v25 + 1);
    LOBYTE(v119) = v26;
    BYTE1(v119) = v27;
    WORD1(v119) = v25;
    LOBYTE(v110) = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
    LOBYTE(v119) = 5;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v28 = v132;
    v29 = (v3 + v132[10]);
    v30 = v29[1];
    v31 = v29[2];
    v129 = *v29;
    v130 = v30;
    v131 = v31;
    v128 = 6;
    sub_217AD1A68(v129, v30, v31);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v129, v130, v131);
    v32 = (v3 + v28[11]);
    v33 = v32[6];
    v34 = v32[4];
    v124 = v32[5];
    v125 = v33;
    v35 = v32[6];
    v36 = v32[8];
    v126 = v32[7];
    v127 = v36;
    v37 = v32[2];
    v38 = *v32;
    v120 = v32[1];
    v121 = v37;
    v39 = v32[2];
    v40 = v32[4];
    v122 = v32[3];
    v123 = v40;
    v41 = *v32;
    v116 = v35;
    v117 = v126;
    v118 = v32[8];
    v119 = v41;
    v112 = v39;
    v113 = v122;
    v114 = v34;
    v115 = v124;
    v110 = v38;
    v111 = v120;
    v109 = 7;
    sub_217AE38AC(&v119, v108, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v108[6] = v116;
    v108[7] = v117;
    v108[8] = v118;
    v108[2] = v112;
    v108[3] = v113;
    v108[4] = v114;
    v108[5] = v115;
    v108[0] = v110;
    v108[1] = v111;
    sub_217AE4A44(v108, &qword_2811BD178, &type metadata for GroupData);
    v42 = (v3 + v28[12]);
    v43 = *v42;
    LODWORD(v42) = *(v42 + 2);
    *&v96[0] = v43;
    DWORD2(v96[0]) = v42;
    LOBYTE(v90) = 8;
    sub_217BB0CD4();

    sub_217D89CAC();

    v44 = (v3 + v28[13]);
    v45 = v44[1];
    v46 = v44[2];
    v47 = v44[3];
    v48 = v44[4];
    v49 = v44[5];
    v102 = *v44;
    v103 = v45;
    v104 = v46;
    v105 = v47;
    v106 = v48;
    v107 = v49;
    v101 = 9;
    sub_217B1563C(v102, v45, v46, v47, v48, v49);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v102, v103, v104, v105, v106, v107);
    v50 = (v3 + v28[14]);
    v51 = v50[3];
    v52 = v50[1];
    v97 = v50[2];
    v98 = v51;
    v53 = v50[3];
    v54 = v50[5];
    v99 = v50[4];
    v100 = v54;
    v55 = v50[1];
    v96[0] = *v50;
    v96[1] = v55;
    v92 = v97;
    v93 = v53;
    v56 = v50[5];
    v94 = v99;
    v95 = v56;
    v90 = v96[0];
    v91 = v52;
    v89 = 10;
    sub_217AE38AC(v96, v88, &qword_2811C4F30, &type metadata for NotificationData);
    sub_217B9C280();
    sub_217D89C3C();
    v88[2] = v92;
    v88[3] = v93;
    v88[4] = v94;
    v88[5] = v95;
    v88[0] = v90;
    v88[1] = v91;
    sub_217AE4A44(v88, &qword_2811C4F30, &type metadata for NotificationData);
    v57 = (v3 + v132[15]);
    v58 = v57[1];
    v86[0] = *v57;
    v86[1] = v58;
    v60 = *v57;
    v59 = v57[1];
    v86[2] = v57[2];
    v87 = *(v57 + 48);
    v82 = v60;
    v61 = v57[2];
    v83 = v59;
    v84 = v61;
    v85 = *(v57 + 48);
    v81 = 11;
    sub_217ACC004(v86, v79);
    sub_217A55B98();
    sub_217D89CAC();
    v79[0] = v82;
    v79[1] = v83;
    v79[2] = v84;
    v80 = v85;
    sub_217ACC69C(v79);
    v62 = (v3 + v132[16]);
    v63 = v62[1];
    v64 = v62[2];
    v65 = v62[3];
    v66 = v62[4];
    v67 = v62[5];
    v73 = *v62;
    v74 = v63;
    v75 = v64;
    v76 = v65;
    v77 = v66;
    v78 = v67;
    v72 = 12;
    sub_217B1563C(v73, v63, v64, v65, v66, v67);
    sub_217ACDCB0();
    sub_217D89C3C();
    sub_217B15D30(v73, v74, v75, v76, v77, v78);
    LOWORD(v73) = *(v3 + v132[17]);
    v72 = 13;
    sub_217B1DEE8();
    sub_217D89C3C();
    v68 = v3 + v132[18];
    v69 = *v68;
    v70 = *(v68 + 8);
    LOWORD(v68) = *(v68 + 16);
    v73 = v69;
    v74 = v70;
    LOWORD(v75) = v68;
    v72 = 14;
    sub_217A5E790();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C16BD0()
{
  result = qword_27CBA2238;
  if (!qword_27CBA2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2238);
  }

  return result;
}

void PDFPageViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_217D889CC();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v68 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C179F0(0, &qword_27CBA2240, MEMORY[0x277D844C8]);
  v9 = *(v8 - 8);
  v69 = v8;
  v70 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for PDFPageViewEvent.Model(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217C16BD0();
  v71 = v11;
  v16 = v72;
  sub_217D89E5C();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  else
  {
    v63 = v12;
    v72 = v14;
    LOBYTE(v90) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v17 = v68;
    sub_217D89BCC();
    v18 = v72;
    (*(v67 + 32))(v72, v17, v6);
    LOBYTE(v83) = 1;
    sub_217ACFF40();
    sub_217D89BCC();
    v62 = v6;
    v68 = 0;
    v19 = *(&v90 + 1);
    v20 = v91;
    v21 = BYTE1(v91);
    v22 = *(&v91 + 1);
    v23 = v63;
    v24 = &v18[v63[5]];
    *v24 = v90;
    *(v24 + 1) = v19;
    v24[16] = v20;
    v24[17] = v21;
    *(v24 + 3) = v22;
    LOBYTE(v83) = 2;
    sub_217AD0198();
    sub_217D89BCC();
    v25 = *(&v90 + 1);
    v26 = &v18[v23[6]];
    *v26 = v90;
    *(v26 + 1) = v25;
    LOBYTE(v83) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v27 = *(&v90 + 1);
    v28 = v91;
    v29 = BYTE1(v91);
    v30 = *(&v91 + 1);
    v31 = v92;
    v32 = &v18[v23[7]];
    *v32 = v90;
    *(v32 + 1) = v27;
    v32[16] = v28;
    v32[17] = v29;
    *(v32 + 3) = v30;
    *(v32 + 4) = v31;
    LOBYTE(v83) = 4;
    sub_217ACFB38();
    sub_217D89BCC();
    v33 = BYTE1(v90);
    v34 = WORD1(v90);
    v35 = &v18[v23[8]];
    *v35 = v90;
    v35[1] = v33;
    *(v35 + 1) = v34;
    LOBYTE(v90) = 5;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v36 = v66;
    sub_217D89BCC();
    (*(v65 + 32))(&v18[v23[9]], v5, v36);
    LOBYTE(v83) = 6;
    sub_217A5B978();
    sub_217D89B5C();
    v37 = v91;
    v38 = &v18[v23[10]];
    *v38 = v90;
    *(v38 + 2) = v37;
    v89 = 7;
    sub_217A5D308();
    sub_217D89B5C();
    v39 = &v72[v23[11]];
    v40 = v97;
    *(v39 + 6) = v96;
    *(v39 + 7) = v40;
    *(v39 + 8) = v98;
    v41 = v93;
    *(v39 + 2) = v92;
    *(v39 + 3) = v41;
    v42 = v95;
    *(v39 + 4) = v94;
    *(v39 + 5) = v42;
    v43 = v91;
    *v39 = v90;
    *(v39 + 1) = v43;
    LOBYTE(v78) = 8;
    sub_217BB0C7C();
    sub_217D89BCC();
    v44 = DWORD2(v83);
    v45 = &v72[v63[12]];
    *v45 = v83;
    *(v45 + 2) = v44;
    LOBYTE(v78) = 9;
    sub_217A66A84();
    sub_217D89B5C();
    v46 = &v72[v63[13]];
    v47 = v84;
    v48 = v85;
    *v46 = v83;
    *(v46 + 1) = v47;
    *(v46 + 2) = v48;
    v82 = 10;
    sub_217B9C22C();
    sub_217D89B5C();
    v49 = &v72[v63[14]];
    v50 = v86;
    v51 = v87;
    v52 = v84;
    *(v49 + 2) = v85;
    *(v49 + 3) = v50;
    v53 = v88;
    *(v49 + 4) = v51;
    *(v49 + 5) = v53;
    *v49 = v83;
    *(v49 + 1) = v52;
    v77 = 11;
    sub_217A54D08();
    sub_217D89BCC();
    v54 = &v72[v63[15]];
    v55 = v79;
    *v54 = v78;
    *(v54 + 1) = v55;
    *(v54 + 2) = v80;
    v54[48] = v81;
    v73 = 12;
    sub_217ACDC58();
    sub_217D89B5C();
    v56 = &v72[v63[16]];
    v57 = v75;
    *v56 = v74;
    *(v56 + 1) = v57;
    *(v56 + 2) = v76;
    v73 = 13;
    sub_217B1DE94();
    sub_217D89B5C();
    *&v72[v63[17]] = v74;
    v73 = 14;
    sub_217A5E738();
    sub_217D89B5C();
    (*(v70 + 8))(v71, v69);
    v58 = v75;
    v59 = v64;
    v60 = v72;
    v61 = &v72[v63[18]];
    *v61 = v74;
    *(v61 + 8) = v58;
    sub_217C17A54(v60, v59);
    __swift_destroy_boxed_opaque_existential_1(v99);
    sub_217C17AB8(v60);
  }
}

void sub_217C179F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C16BD0();
    v7 = a3(a1, &type metadata for PDFPageViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C17A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFPageViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C17AB8(uint64_t a1)
{
  v2 = type metadata accessor for PDFPageViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C17BEC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217A608E0(0);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v20 - 8) + 104))(a2 + v19, v17, v20);
  v21 = a1[12];
  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4, &type metadata for PDFPageContext);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v24 - 8) + 104))(a2 + v23, v17, v24);
  v25 = a1[14];
  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  (*(*(v26 - 8) + 104))(a2 + v25, v17, v26);
  v27 = a1[15];
  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  (*(*(v30 - 8) + 104))(a2 + v29, v17, v30);
  v31 = a1[17];
  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v32 - 8) + 104))(a2 + v31, v17, v32);
  v33 = a1[18];
  sub_217C14EB8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v17, v34);
}

void sub_217C18300(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C14EB8(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
    if (v2 <= 0x3F)
    {
      sub_217C14EB8(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
      if (v3 <= 0x3F)
      {
        sub_217C14EB8(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217C14EB8(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
          if (v5 <= 0x3F)
          {
            sub_217A608E0(319);
            if (v6 <= 0x3F)
            {
              sub_217C14EB8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
              if (v7 <= 0x3F)
              {
                sub_217C14EB8(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
                if (v8 <= 0x3F)
                {
                  sub_217C14EB8(319, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4, &type metadata for PDFPageContext);
                  if (v9 <= 0x3F)
                  {
                    sub_217C14EB8(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
                    if (v10 <= 0x3F)
                    {
                      sub_217C14EB8(319, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
                      if (v11 <= 0x3F)
                      {
                        sub_217C14EB8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                        if (v12 <= 0x3F)
                        {
                          sub_217C14EB8(319, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
                          if (v13 <= 0x3F)
                          {
                            sub_217C14EB8(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
                            if (v14 <= 0x3F)
                            {
                              sub_217C14EB8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
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

void sub_217C187BC(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7A98, &type metadata for CampaignData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C4F30, &type metadata for NotificationData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C78F0, &type metadata for ReferralData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C7CF8, &type metadata for PaywallData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
                  if (v9 <= 0x3F)
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

unint64_t sub_217C189A8()
{
  result = qword_27CBA2248;
  if (!qword_27CBA2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2248);
  }

  return result;
}

unint64_t sub_217C18A00()
{
  result = qword_27CBA2250;
  if (!qword_27CBA2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2250);
  }

  return result;
}

unint64_t sub_217C18A58()
{
  result = qword_27CBA2258;
  if (!qword_27CBA2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2258);
  }

  return result;
}

uint64_t sub_217C18AAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x4365676150666470 && a2 == 0xEE00747865746E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
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

uint64_t GroupingInventoryItem.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GroupingInventoryItem.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GroupingInventoryItem.init(tagID:headlineCount:hardPaywallBundleArticleCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 20) = a4;
  return result;
}

unint64_t sub_217C1908C()
{
  v1 = 0x656E696C64616568;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449676174;
  }
}

uint64_t sub_217C190F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C19814(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C1911C(uint64_t a1)
{
  v2 = sub_217C1933C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C19158(uint64_t a1)
{
  v2 = sub_217C1933C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupingInventoryItem.encode(to:)(void *a1)
{
  sub_217C195A8(0, &qword_2811BC610, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  LODWORD(v6) = *(v1 + 20);
  v12 = *(v1 + 16);
  v10[1] = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1933C();
  sub_217D89E7C();
  v15 = 0;
  v8 = v11;
  sub_217D89C6C();
  if (!v8)
  {
    v14 = 1;
    sub_217D89CBC();
    v13 = 2;
    sub_217D89CBC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C1933C()
{
  result = qword_2811C1268;
  if (!qword_2811C1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1268);
  }

  return result;
}

uint64_t GroupingInventoryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C195A8(0, &qword_27CBA2260, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1933C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v19 = 1;
  v17 = sub_217D89BDC();
  v18 = 2;
  v15 = sub_217D89BDC();
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 20) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C195A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C1933C();
    v7 = a3(a1, &type metadata for GroupingInventoryItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C19610()
{
  result = qword_27CBA2268;
  if (!qword_27CBA2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2268);
  }

  return result;
}

unint64_t sub_217C19668()
{
  result = qword_2811C1250;
  if (!qword_2811C1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1250);
  }

  return result;
}

unint64_t sub_217C19710()
{
  result = qword_27CBA2270;
  if (!qword_27CBA2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2270);
  }

  return result;
}

unint64_t sub_217C19768()
{
  result = qword_2811C1258;
  if (!qword_2811C1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1258);
  }

  return result;
}

unint64_t sub_217C197C0()
{
  result = qword_2811C1260;
  if (!qword_2811C1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1260);
  }

  return result;
}

uint64_t sub_217C19814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449676174 && a2 == 0xE500000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xED0000746E756F43 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DD0650 == a2)
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

uint64_t sub_217C19A00()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C0990);
  __swift_project_value_buffer(v0, qword_2811C0990);
  return sub_217D8866C();
}

uint64_t ArticleEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleEngagementEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 20);
  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 20);
  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 24);
  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 24);
  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 28);
  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 28);
  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 32);
  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 32);
  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 36);
  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 36);
  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 40);
  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 40);
  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 44);
  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C1A624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ArticleEngagementEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 44);
  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleEngagementEvent(0);
  v5 = v4[5];
  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v17 - 8) + 104))(a1 + v16, v14, v17);
  v18 = v4[11];
  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v14, v19);
}

uint64_t ArticleEngagementEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleEngagementEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 24);
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

uint64_t ArticleEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 28);
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

uint64_t ArticleEngagementEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleEngagementEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

void ArticleEngagementEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 36));
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

uint64_t ArticleEngagementEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleEngagementEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 44));
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

__n128 ArticleEngagementEvent.Model.init(eventData:viewData:articleData:channelData:userChannelContextData:issueData:issueViewData:groupData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 8);
  v40 = a4[1];
  v41 = *a4;
  v39 = *(a4 + 16);
  v17 = *(a4 + 17);
  v18 = a4[3];
  v38 = a4[4];
  v43 = a5[1];
  v44 = *a5;
  v42 = *(a5 + 1);
  v45 = a7[1];
  v46 = *a7;
  v19 = sub_217D8899C();
  v36 = a6[1];
  v37 = *a6;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for ArticleEngagementEvent.Model(0);
  v21 = a9 + v20[5];
  *v21 = v14;
  *(v21 + 8) = v15;
  *(v21 + 16) = v16;
  v22 = a9 + v20[6];
  v23 = *(a3 + 48);
  *(v22 + 32) = *(a3 + 32);
  *(v22 + 48) = v23;
  v24 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a3 + 127);
  v25 = *(a3 + 112);
  *(v22 + 96) = *(a3 + 96);
  *(v22 + 112) = v25;
  v26 = *(a3 + 80);
  *(v22 + 64) = *(a3 + 64);
  *(v22 + 80) = v26;
  v27 = a9 + v20[7];
  *v27 = v41;
  *(v27 + 8) = v40;
  *(v27 + 16) = v39;
  *(v27 + 17) = v17;
  *(v27 + 24) = v18;
  *(v27 + 32) = v38;
  v28 = a9 + v20[8];
  *v28 = v44;
  *(v28 + 1) = v43;
  *(v28 + 2) = v42;
  v29 = (a9 + v20[9]);
  *v29 = v37;
  v29[1] = v36;
  v30 = (a9 + v20[10]);
  *v30 = v46;
  v30[1] = v45;
  v31 = a9 + v20[11];
  v32 = *(a8 + 112);
  *(v31 + 96) = *(a8 + 96);
  *(v31 + 112) = v32;
  *(v31 + 128) = *(a8 + 128);
  v33 = *(a8 + 48);
  *(v31 + 32) = *(a8 + 32);
  *(v31 + 48) = v33;
  v34 = *(a8 + 80);
  *(v31 + 64) = *(a8 + 64);
  *(v31 + 80) = v34;
  result = *(a8 + 16);
  *v31 = *a8;
  *(v31 + 16) = result;
  return result;
}

uint64_t sub_217C1B034()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6569566575737369;
  if (v1 != 6)
  {
    v3 = 0x74614470756F7267;
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

uint64_t sub_217C1B14C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C1CA50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C1B174(uint64_t a1)
{
  v2 = sub_217C1B7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C1B1B0(uint64_t a1)
{
  v2 = sub_217C1B7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C1BF6C(0, &qword_27CBA2278, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v48 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1B7A0();
  sub_217D89E7C();
  LOBYTE(v59) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleEngagementEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v90 = v12;
    v91 = v13;
    v92 = v11;
    v89 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = v3 + v10[6];
    v15 = *(v14 + 80);
    v16 = *(v14 + 112);
    v87 = *(v14 + 96);
    *v88 = v16;
    v17 = *(v14 + 16);
    v18 = *(v14 + 48);
    v83 = *(v14 + 32);
    v84 = v18;
    v19 = *(v14 + 48);
    v20 = *(v14 + 80);
    v85 = *(v14 + 64);
    v86 = v20;
    v21 = *(v14 + 16);
    v82[0] = *v14;
    v82[1] = v21;
    v22 = *(v14 + 112);
    v80 = v87;
    v81[0] = v22;
    v76 = v83;
    v77 = v19;
    v78 = v85;
    v79 = v15;
    *&v88[15] = *(v14 + 127);
    *(v81 + 15) = *(v14 + 127);
    v74 = v82[0];
    v75 = v17;
    v73 = 2;
    sub_217AD1630(v82, &v59);
    sub_217ACF52C();
    sub_217D89CAC();
    v71[6] = v80;
    *v72 = v81[0];
    *&v72[15] = *(v81 + 15);
    v71[2] = v76;
    v71[3] = v77;
    v71[4] = v78;
    v71[5] = v79;
    v71[0] = v74;
    v71[1] = v75;
    sub_217AD2864(v71);
    v23 = v3 + v10[7];
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    v26 = *(v23 + 17);
    v27 = *(v23 + 24);
    v28 = *(v23 + 32);
    *&v59 = *v23;
    *(&v59 + 1) = v24;
    LOBYTE(v60) = v25;
    BYTE1(v60) = v26;
    *(&v60 + 1) = v27;
    *&v61 = v28;
    LOBYTE(v50) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v29 = (v3 + v10[8]);
    v30 = *v29;
    v31 = v29[1];
    LOWORD(v29) = *(v29 + 1);
    LOBYTE(v59) = v30;
    BYTE1(v59) = v31;
    WORD1(v59) = v29;
    LOBYTE(v50) = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
    v32 = (v3 + v10[9]);
    v33 = v32[1];
    v34 = v32[2];
    v35 = v32[3];
    *&v59 = *v32;
    *(&v59 + 1) = v33;
    *&v60 = v34;
    *(&v60 + 1) = v35;
    LOBYTE(v50) = 5;
    sub_217AE39D0(v59, v33, v34, v35);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v59, *(&v59 + 1), v60, *(&v60 + 1));
    v36 = (v3 + v10[10]);
    v37 = v36[1];
    v69 = *v36;
    v70 = v37;
    v68 = 6;
    sub_217AD01EC();

    sub_217D89C3C();

    v38 = (v3 + v10[11]);
    v39 = v38[5];
    v40 = v38[7];
    v65 = v38[6];
    v66 = v40;
    v41 = v38[7];
    v67 = v38[8];
    v42 = v38[1];
    v43 = v38[3];
    v61 = v38[2];
    v62 = v43;
    v44 = v38[3];
    v45 = v38[5];
    v63 = v38[4];
    v64 = v45;
    v46 = v38[1];
    v59 = *v38;
    v60 = v46;
    v56 = v65;
    v57 = v41;
    v58 = v38[8];
    v52 = v61;
    v53 = v44;
    v54 = v63;
    v55 = v39;
    v50 = v59;
    v51 = v42;
    v49 = 7;
    sub_217AD87FC(&v59, v48);
    sub_217A5D3B4();
    sub_217D89C3C();
    v48[6] = v56;
    v48[7] = v57;
    v48[8] = v58;
    v48[2] = v52;
    v48[3] = v53;
    v48[4] = v54;
    v48[5] = v55;
    v48[0] = v50;
    v48[1] = v51;
    sub_217AD96E8(v48);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C1B7A0()
{
  result = qword_2811C0980;
  if (!qword_2811C0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0980);
  }

  return result;
}

void ArticleEngagementEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_217D8899C();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1BF6C(0, &qword_2811BC990, MEMORY[0x277D844C8]);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v41 - v6;
  v8 = type metadata accessor for ArticleEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1B7A0();
  v47 = v7;
  v11 = v67;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v43;
    v67 = v10;
    LOBYTE(v48) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v45;
    sub_217D89BCC();
    v14 = *(v12 + 32);
    v15 = v67;
    v14(v67, v46, v3);
    LOBYTE(v59) = 1;
    sub_217A5E738();
    sub_217D89BCC();
    v41[1] = v3;
    v46 = 0;
    v16 = *(&v48 + 1);
    v17 = v49;
    v18 = &v15[v8[5]];
    *v18 = v48;
    *(v18 + 1) = v16;
    *(v18 + 8) = v17;
    v58 = 2;
    sub_217ACF4D8();
    sub_217D89BCC();
    v19 = &v15[v8[6]];
    v20 = v66[0];
    *(v19 + 6) = v65;
    *(v19 + 7) = v20;
    *(v19 + 127) = *(v66 + 15);
    v21 = v62;
    *(v19 + 2) = v61;
    *(v19 + 3) = v21;
    v22 = v64;
    *(v19 + 4) = v63;
    *(v19 + 5) = v22;
    v23 = v60;
    *v19 = v59;
    *(v19 + 1) = v23;
    v57 = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v24 = *(&v48 + 1);
    v25 = v49;
    v26 = BYTE1(v49);
    v27 = *(&v49 + 1);
    v28 = v50;
    v29 = &v15[v8[7]];
    *v29 = v48;
    *(v29 + 1) = v24;
    v29[16] = v25;
    v29[17] = v26;
    *(v29 + 3) = v27;
    *(v29 + 4) = v28;
    v57 = 4;
    sub_217ACFB38();
    sub_217D89BCC();
    v30 = BYTE1(v48);
    v31 = WORD1(v48);
    v32 = &v15[v8[8]];
    *v32 = v48;
    v32[1] = v30;
    *(v32 + 1) = v31;
    v57 = 5;
    sub_217ACFF40();
    sub_217D89B5C();
    v33 = &v15[v8[9]];
    v34 = v49;
    *v33 = v48;
    *(v33 + 1) = v34;
    v57 = 6;
    sub_217AD0198();
    sub_217D89B5C();
    *&v15[v8[10]] = v48;
    v57 = 7;
    sub_217A5D308();
    sub_217D89B5C();
    (*(v44 + 8))(v47, v13);
    v35 = v67;
    v36 = &v67[v8[11]];
    v37 = v55;
    *(v36 + 6) = v54;
    *(v36 + 7) = v37;
    *(v36 + 8) = v56;
    v38 = v51;
    *(v36 + 2) = v50;
    *(v36 + 3) = v38;
    v39 = v53;
    *(v36 + 4) = v52;
    *(v36 + 5) = v39;
    v40 = v49;
    *v36 = v48;
    *(v36 + 1) = v40;
    sub_217C1BFD0(v35, v42);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217C1C034(v35);
  }
}