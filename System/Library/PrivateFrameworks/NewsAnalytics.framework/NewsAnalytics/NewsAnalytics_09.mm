uint64_t NotificationUnsubscribeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationUnsubscribeEvent(0) + 40);
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationUnsubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationUnsubscribeEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v6, v17);
}

uint64_t NotificationUnsubscribeEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationUnsubscribeEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void NotificationUnsubscribeEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationUnsubscribeEvent.Model(0) + 24));
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

void NotificationUnsubscribeEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationUnsubscribeEvent.Model(0) + 28));
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

uint64_t NotificationUnsubscribeEvent.Model.notificationSubscribedData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t NotificationUnsubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationUnsubscribeEvent.Model(0) + 36));
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

uint64_t NotificationUnsubscribeEvent.Model.userChannelContextData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 NotificationUnsubscribeEvent.Model.init(eventData:tagData:channelData:campaignData:notificationSubscribedData:userBundleSubscriptionContextData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a3 + 4);
  v16 = *(a4 + 4);
  v17 = *(a4 + 5);
  v30 = *a5;
  v31 = *a7;
  v18 = sub_217D8899C();
  v28 = a4[1];
  v29 = *a4;
  v26 = a3[1];
  v27 = *a3;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v13;
  v20[1] = v14;
  v21 = a8 + v19[6];
  *v21 = v27;
  *(v21 + 16) = v26;
  *(v21 + 32) = v15;
  v22 = a8 + v19[7];
  *v22 = v29;
  *(v22 + 16) = v28;
  *(v22 + 32) = v16;
  *(v22 + 40) = v17;
  *(a8 + v19[8]) = v30;
  v23 = a8 + v19[9];
  v24 = *(a6 + 16);
  *v23 = *a6;
  *(v23 + 16) = v24;
  result = *(a6 + 32);
  *(v23 + 32) = result;
  *(v23 + 48) = *(a6 + 48);
  *(a8 + v19[10]) = v31;
  return result;
}

uint64_t sub_217B49350(uint64_t a1)
{
  v2 = sub_217B49820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4938C(uint64_t a1)
{
  v2 = sub_217B49820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationUnsubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B49E84(0, &qword_27CBA0030, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B49820();
  sub_217D89E7C();
  LOBYTE(v38) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v38 = *v11;
    *(&v38 + 1) = v12;
    LOBYTE(v34) = 1;
    sub_217AF6B14();

    sub_217D89C3C();

    v13 = (v3 + v10[6]);
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v17 = v13[4];
    *&v38 = *v13;
    *(&v38 + 1) = v14;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    *&v40 = v17;
    LOBYTE(v34) = 2;
    sub_217AD86BC(v38, v14, v15, v16, v17);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v38, *(&v38 + 1), v39, *(&v39 + 1), v40);
    v18 = (v3 + v10[7]);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];
    *&v38 = *v18;
    *(&v38 + 1) = v19;
    *&v39 = v20;
    *(&v39 + 1) = v21;
    *&v40 = v22;
    *(&v40 + 1) = v23;
    LOBYTE(v34) = 3;
    sub_217B1563C(v38, v19, v20, v21, v22, v23);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1));
    v43 = *(v3 + v10[8]);
    v42 = 4;
    sub_217B37F4C();
    sub_217D89CAC();
    v24 = (v3 + v10[9]);
    v25 = v24[1];
    v38 = *v24;
    v39 = v25;
    v27 = *v24;
    v26 = v24[1];
    v40 = v24[2];
    v41 = *(v24 + 48);
    v34 = v27;
    v35 = v26;
    v36 = v24[2];
    v37 = *(v24 + 48);
    v33 = 5;
    sub_217ACC004(&v38, v31);
    sub_217A55B98();
    sub_217D89CAC();
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v32 = v37;
    sub_217ACC69C(v31);
    v30 = *(v3 + v10[10]);
    v29[11] = 6;
    sub_217ACFB8C();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B49820()
{
  result = qword_27CBA0038;
  if (!qword_27CBA0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0038);
  }

  return result;
}

void NotificationUnsubscribeEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_217D8899C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B49E84(0, &qword_27CBA0040, MEMORY[0x277D844C8]);
  v25 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B49820();
  v26 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v23;
    LOBYTE(v27) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v24;
    sub_217D89BCC();
    (*(v22 + 32))(v11, v13, v4);
    LOBYTE(v31) = 1;
    sub_217AF6AC0();
    sub_217D89B5C();
    v24 = 0;
    *&v11[v9[5]] = v27;
    LOBYTE(v31) = 2;
    sub_217AD07F8();
    sub_217D89B5C();
    v14 = v29;
    v15 = &v11[v9[6]];
    v16 = v28;
    *v15 = v27;
    *(v15 + 1) = v16;
    *(v15 + 4) = v14;
    LOBYTE(v31) = 3;
    sub_217A66A84();
    sub_217D89B5C();
    v17 = &v11[v9[7]];
    v18 = v28;
    *v17 = v27;
    *(v17 + 1) = v18;
    *(v17 + 2) = v29;
    LOBYTE(v31) = 4;
    sub_217B37EF8();
    sub_217D89BCC();
    *&v11[v9[8]] = v27;
    v33 = 5;
    sub_217A54D08();
    sub_217D89BCC();
    v19 = &v11[v9[9]];
    v20 = v28;
    *v19 = v27;
    *(v19 + 1) = v20;
    *(v19 + 2) = v29;
    v19[48] = v30;
    v32 = 6;
    sub_217ACFB38();
    sub_217D89B5C();
    (*(v12 + 8))(v26, v25);
    *&v11[v9[10]] = v31;
    sub_217B49EE8(v11, v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217B49F4C(v11);
  }
}

void sub_217B49E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B49820();
    v7 = a3(a1, &type metadata for NotificationUnsubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B49EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B49F4C(uint64_t a1)
{
  v2 = type metadata accessor for NotificationUnsubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217B4A0E4()
{
  result = qword_27CBA0048;
  if (!qword_27CBA0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0048);
  }

  return result;
}

unint64_t sub_217B4A13C()
{
  result = qword_27CBA0050;
  if (!qword_27CBA0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0050);
  }

  return result;
}

unint64_t sub_217B4A194()
{
  result = qword_27CBA0058;
  if (!qword_27CBA0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0058);
  }

  return result;
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_217B4A360()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0098);
  __swift_project_value_buffer(v0, qword_27CBA0098);
  return sub_217D8866C();
}

uint64_t ArticleLoadFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleLoadFailureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 24);
  sub_217A60458(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLoadFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 24);
  sub_217A60458(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadFailureEvent.articleLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 28);
  sub_217A60458(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLoadFailureEvent.articleLoadData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 28);
  sub_217A60458(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 32);
  sub_217A60458(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLoadFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLoadFailureEvent(0) + 32);
  sub_217A60458(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLoadFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  FailureEvent = type metadata accessor for ArticleLoadFailureEvent(0);
  v5 = FailureEvent[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = FailureEvent[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217A60458(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = FailureEvent[7];
  sub_217A60458(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = FailureEvent[8];
  sub_217A60458(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t sub_217B4AD38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleLoadFailureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLoadFailureEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleLoadFailureEvent.Model.articleLoadData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLoadFailureEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleLoadFailureEvent.Model.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleLoadFailureEvent.Model(0) + 32);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 ArticleLoadFailureEvent.Model.init(eventData:timedData:feedData:articleLoadData:errorData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a3 + 2);
  v10 = *a4;
  v11 = a4[1];
  v23 = *a5;
  v21 = *a3;
  v22 = a5[1];
  v12 = *(a5 + 4);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a6, a1, v13);
  Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
  v15 = Failure[5];
  v16 = sub_217D889CC();
  (*(*(v16 - 8) + 32))(a6 + v15, a2, v16);
  v17 = a6 + Failure[6];
  *v17 = v21;
  *(v17 + 16) = v9;
  v18 = (a6 + Failure[7]);
  *v18 = v10;
  v18[1] = v11;
  v19 = a6 + Failure[8];
  result = v22;
  *v19 = v23;
  *(v19 + 16) = v22;
  *(v19 + 32) = v12;
  return result;
}

uint64_t sub_217B4B008()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614464656566;
  v4 = 0x4C656C6369747261;
  if (v1 != 3)
  {
    v4 = 0x746144726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
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

uint64_t sub_217B4B0AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B4C2DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B4B0D4(uint64_t a1)
{
  v2 = sub_217B4B4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4B110(uint64_t a1)
{
  v2 = sub_217B4B4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLoadFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B4BB14(0, &qword_27CBA00B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4B4C8();
  sub_217D89E7C();
  LOBYTE(v20) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
    LOBYTE(v20) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + Failure[6]);
    v12 = v11[1];
    v13 = v11[2];
    v20 = *v11;
    *&v21 = v12;
    *(&v21 + 1) = v13;
    v24 = 2;
    sub_217AD1A68(v20, v12, v13);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v20, v21, *(&v21 + 1));
    v14 = (v3 + Failure[7]);
    v15 = v14[1];
    v20 = *v14;
    *&v21 = v15;
    v24 = 3;
    sub_217AD5014();

    sub_217D89CAC();

    v16 = v3 + Failure[8];
    v17 = *(v16 + 24);
    v18 = *(v16 + 32);
    v20 = *v16;
    v21 = *(v16 + 8);
    v22 = v17;
    v23 = v18;
    v24 = 4;
    sub_217A60BE4();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B4B4C8()
{
  result = qword_27CBA00B8;
  if (!qword_27CBA00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00B8);
  }

  return result;
}

uint64_t ArticleLoadFailureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_217D889CC();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B4BB14(0, &qword_27CBA00C0, MEMORY[0x277D844C8]);
  v33 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
  MEMORY[0x28223BE20](Failure);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4B4C8();
  v32 = v9;
  v13 = v34;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v15 = v28;
  v16 = v30;
  LOBYTE(v35) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  (*(v27 + 32))(v12, v31, v5);
  LOBYTE(v35) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v15 + 32))(&v12[Failure[5]], v14, v16);
  v38 = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v34 = a1;
  v17 = v36;
  v18 = &v12[Failure[6]];
  *v18 = v35;
  *(v18 + 2) = v17;
  v38 = 3;
  sub_217AD4FC0();
  sub_217D89BCC();
  v19 = *(&v35 + 1);
  v20 = &v12[Failure[7]];
  *v20 = v35;
  *(v20 + 1) = v19;
  v38 = 4;
  sub_217A60B90();
  sub_217D89BCC();
  (*(v29 + 8))(v32, v33);
  v21 = v37;
  v22 = &v12[Failure[8]];
  v23 = v36;
  *v22 = v35;
  *(v22 + 1) = v23;
  *(v22 + 4) = v21;
  sub_217B4BB78(v12, v26);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_217B4BBDC(v12);
}

void sub_217B4BB14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4B4C8();
    v7 = a3(a1, &type metadata for ArticleLoadFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B4BB78(uint64_t a1, uint64_t a2)
{
  Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 16))(a2, a1, Failure);
  return a2;
}

uint64_t sub_217B4BBDC(uint64_t a1)
{
  Failure = type metadata accessor for ArticleLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 8))(a1, Failure);
  return a1;
}

uint64_t sub_217B4BD10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217A60458(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217A60458(0, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217A60458(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

void sub_217B4BF74(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217A60458(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A60458(319, &qword_2811C8708, sub_217AD4FC0, sub_217AD5014, &type metadata for ArticleLoadData);
        if (v4 <= 0x3F)
        {
          sub_217A60458(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217B4C110(uint64_t a1)
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

unint64_t sub_217B4C1D8()
{
  result = qword_27CBA00D8;
  if (!qword_27CBA00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00D8);
  }

  return result;
}

unint64_t sub_217B4C230()
{
  result = qword_27CBA00E0;
  if (!qword_27CBA00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00E0);
  }

  return result;
}

unint64_t sub_217B4C288()
{
  result = qword_27CBA00E8;
  if (!qword_27CBA00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00E8);
  }

  return result;
}

uint64_t sub_217B4C2DC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x4C656C6369747261 && a2 == 0xEF6174614464616FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061)
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

NewsAnalytics::NotificationSubscribedData __swiftcall NotificationSubscribedData.init(type:action:)(NewsAnalytics::NotificationSubscribedType type, NewsAnalytics::NotificationSubscribedAction action)
{
  v3 = *action;
  *v2 = *type;
  v2[1] = v3;
  result.type = type;
  return result;
}

uint64_t sub_217B4C530()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_217B4C560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_217B4C638(uint64_t a1)
{
  v2 = sub_217B4C85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4C674(uint64_t a1)
{
  v2 = sub_217B4C85C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationSubscribedData.encode(to:)(void *a1)
{
  sub_217B4CB3C(0, &qword_27CBA00F0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4C85C();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217B4C8B0();
  sub_217D89CAC();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217B4C904();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217B4C85C()
{
  result = qword_27CBA00F8;
  if (!qword_27CBA00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA00F8);
  }

  return result;
}

unint64_t sub_217B4C8B0()
{
  result = qword_27CBA0100;
  if (!qword_27CBA0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0100);
  }

  return result;
}

unint64_t sub_217B4C904()
{
  result = qword_27CBA0108;
  if (!qword_27CBA0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0108);
  }

  return result;
}

uint64_t NotificationSubscribedData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B4CB3C(0, &qword_27CBA0110, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4C85C();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217B4CBA0();
    sub_217D89BCC();
    v10 = v17;
    v14 = 1;
    sub_217B4CBF4();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B4CB3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4C85C();
    v7 = a3(a1, &type metadata for NotificationSubscribedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B4CBA0()
{
  result = qword_27CBA0118;
  if (!qword_27CBA0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0118);
  }

  return result;
}

unint64_t sub_217B4CBF4()
{
  result = qword_27CBA0120;
  if (!qword_27CBA0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationSubscribedData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationSubscribedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B4CDE8()
{
  result = qword_27CBA0128;
  if (!qword_27CBA0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0128);
  }

  return result;
}

unint64_t sub_217B4CE40()
{
  result = qword_27CBA0130;
  if (!qword_27CBA0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0130);
  }

  return result;
}

unint64_t sub_217B4CE98()
{
  result = qword_27CBA0138;
  if (!qword_27CBA0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0138);
  }

  return result;
}

uint64_t sub_217B4CEEC()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_2811C0D90);
  v1 = __swift_project_value_buffer(v0, qword_2811C0D90);
  *v1 = 0x726F70732E6D6F63;
  *(v1 + 8) = 0xEA00000000007374;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217B4CFDC()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_2811C0D68);
  v1 = __swift_project_value_buffer(v0, qword_2811C0D68);
  v2 = *MEMORY[0x277CEADB0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217B4D09C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C0D40);
  __swift_project_value_buffer(v0, qword_2811C0D40);
  return sub_217D8866C();
}

uint64_t SportsSessionEndEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsSessionEndEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSessionEndEvent(0) + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSessionEndEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSessionEndEvent(0) + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSessionEndEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsSessionEndEvent(0) + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsSessionEndEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsSessionEndEvent(0) + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SportsSessionEndEvent(0);
  v5 = *(v4 + 20);
  sub_217A62888(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62888(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsSessionEndEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsSessionEndEvent.Model(0) + 20));
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

uint64_t SportsSessionEndEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SportsSessionEndEvent.Model(0) + 24));
}

__n128 SportsSessionEndEvent.Model.init(eventData:userBundleSubscriptionContextData:sportsData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SportsSessionEndEvent.Model(0);
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

uint64_t sub_217B4D828(uint64_t a1)
{
  v2 = sub_217B4DB64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4D864(uint64_t a1)
{
  v2 = sub_217B4DB64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B4DFB8(0, &qword_27CBA0140, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4DB64();
  sub_217D89E7C();
  v29 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SportsSessionEndEvent.Model(0);
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
    v16[7] = 2;
    sub_217A61284();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B4DB64()
{
  result = qword_27CBA0148;
  if (!qword_27CBA0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0148);
  }

  return result;
}

uint64_t SportsSessionEndEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_217D8899C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B4DFB8(0, &qword_27CBA0150, MEMORY[0x277D844C8]);
  v26 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SportsSessionEndEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4DB64();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v12 = v24;
  v20 = v9;
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
  sub_217B4E01C(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B4E080(v18);
}

void sub_217B4DFB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4DB64();
    v7 = a3(a1, &type metadata for SportsSessionEndEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B4E01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B4E080(uint64_t a1)
{
  v2 = type metadata accessor for SportsSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217B4E218()
{
  result = qword_27CBA0158;
  if (!qword_27CBA0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0158);
  }

  return result;
}

unint64_t sub_217B4E270()
{
  result = qword_27CBA0160;
  if (!qword_27CBA0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0160);
  }

  return result;
}

unint64_t sub_217B4E2C8()
{
  result = qword_27CBA0168;
  if (!qword_27CBA0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0168);
  }

  return result;
}

void __swiftcall FeedLayoutFailure.errorData()(NewsAnalytics::ErrorData *__return_ptr retstr)
{
  v2 = sub_217D8907C();
  swift_getErrorValue();
  Error.errorData()(retstr);
}

NewsAnalytics::FeedGroupLayoutFailureDiagnosticsData __swiftcall FeedLayoutFailure.diagnosticsData()()
{
  v1 = v0;
  v2 = sub_217D8906C();
  *v1 = v2;
  v1[1] = v3;
  result.message._object = v3;
  result.message._countAndFlagsBits = v2;
  return result;
}

uint64_t AdUserData.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AdUserData.userID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B4E44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444972657375 && a2 == 0xE600000000000000)
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

uint64_t sub_217B4E4D0(uint64_t a1)
{
  v2 = sub_217B4E694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4E50C(uint64_t a1)
{
  v2 = sub_217B4E694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdUserData.encode(to:)(void *a1)
{
  sub_217B4E86C(0, &qword_2811BC8A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4E694();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B4E694()
{
  result = qword_2811C7FF0;
  if (!qword_2811C7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FF0);
  }

  return result;
}

uint64_t AdUserData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B4E86C(0, &qword_27CBA0170, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4E694();
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

void sub_217B4E86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4E694();
    v7 = a3(a1, &type metadata for AdUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B4E8E8(void *a1)
{
  sub_217B4E86C(0, &qword_2811BC8A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4E694();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B4EA58()
{
  result = qword_27CBA0178;
  if (!qword_27CBA0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0178);
  }

  return result;
}

unint64_t sub_217B4EAB0()
{
  result = qword_2811C7FE0;
  if (!qword_2811C7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FE0);
  }

  return result;
}

unint64_t sub_217B4EB08()
{
  result = qword_2811C7FE8;
  if (!qword_2811C7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FE8);
  }

  return result;
}

NewsAnalytics::ScienceExperimentData __swiftcall ScienceExperimentData.init(engagementCohortsExpField:conversionCohortsExpField:)(Swift::String_optional engagementCohortsExpField, Swift::String_optional conversionCohortsExpField)
{
  *v2 = engagementCohortsExpField;
  v2[1] = conversionCohortsExpField;
  result.conversionCohortsExpField = conversionCohortsExpField;
  result.engagementCohortsExpField = engagementCohortsExpField;
  return result;
}

uint64_t ScienceExperimentData.engagementCohortsExpField.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ScienceExperimentData.engagementCohortsExpField.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ScienceExperimentData.conversionCohortsExpField.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ScienceExperimentData.conversionCohortsExpField.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_217B4ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000217DCDE20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCDE40 == a2)
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

uint64_t sub_217B4ED98(uint64_t a1)
{
  v2 = sub_217A67694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B4EDD4(uint64_t a1)
{
  v2 = sub_217A67694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScienceExperimentData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217A67618(0, &qword_27CBA0180, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A67694();
  sub_217D89E5C();
  if (!v2)
  {
    v20 = 0;
    v10 = sub_217D89B2C();
    v12 = v11;
    v18 = v10;
    v19 = 1;
    v14 = sub_217D89B2C();
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    *a2 = v18;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217B4F038(uint64_t a1, unsigned int a2)
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

uint64_t sub_217B4F094(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217B4F10C()
{
  result = qword_27CBA0188;
  if (!qword_27CBA0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0188);
  }

  return result;
}

NewsAnalytics::SelectedResultType_optional __swiftcall SelectedResultType.init(rawValue:)(Swift::String rawValue)
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

uint64_t SelectedResultType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 6775156;
  if (*v0 != 2)
  {
    v2 = 0x657069636572;
  }

  if (*v0)
  {
    v1 = 0x656C6369747261;
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

unint64_t sub_217B4F23C()
{
  result = qword_27CBA0190;
  if (!qword_27CBA0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0190);
  }

  return result;
}

uint64_t sub_217B4F290()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B4F348(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B4F3EC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B4F4AC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE300000000000000;
  v5 = 6775156;
  if (*v1 != 2)
  {
    v5 = 0x657069636572;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C6369747261;
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

unint64_t sub_217B4F5E0()
{
  result = qword_27CBA0198;
  if (!qword_27CBA0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0198);
  }

  return result;
}

uint64_t sub_217B4F6FC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BFF78);
  __swift_project_value_buffer(v0, qword_2811BFF78);
  return sub_217D8866C();
}

uint64_t CustomItemExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CustomItemExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 24);
  sub_217B50710(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 24);
  sub_217B50710(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.customItemData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 28);
  sub_217B50710(0, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4, &type metadata for CustomItemData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B4FBA0()
{
  result = qword_2811C70D8;
  if (!qword_2811C70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70D8);
  }

  return result;
}

unint64_t sub_217B4FBF4()
{
  result = qword_2811C70E0;
  if (!qword_2811C70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70E0);
  }

  return result;
}

uint64_t CustomItemExposureEvent.customItemData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 28);
  sub_217B50710(0, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4, &type metadata for CustomItemData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 32);
  sub_217B50710(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 32);
  sub_217B50710(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 36);
  sub_217B50710(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B4FFA8()
{
  result = qword_2811C29E0;
  if (!qword_2811C29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29E0);
  }

  return result;
}

unint64_t sub_217B4FFFC()
{
  result = qword_2811C29E8;
  if (!qword_2811C29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29E8);
  }

  return result;
}

uint64_t CustomItemExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 36);
  sub_217B50710(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 40);
  sub_217B50710(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 40);
  sub_217B50710(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 44);
  sub_217B50710(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 44);
  sub_217B50710(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 48);
  sub_217B50710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 48);
  sub_217B50710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 52);
  sub_217B50710(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B50710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t CustomItemExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 52);
  sub_217B50710(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for CustomItemExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B50710(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B50710(0, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4, &type metadata for CustomItemData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B50710(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217B50710(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217B50710(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B50710(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  sub_217B50710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217B50710(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v14, v23);
}

uint64_t sub_217B50D68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t CustomItemExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t CustomItemExposureEvent.Model.customItemData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 28));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t CustomItemExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for CustomItemExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t CustomItemExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for CustomItemExposureEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t CustomItemExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 40);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t CustomItemExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 44));
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

uint64_t CustomItemExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 48);
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

uint64_t CustomItemExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 CustomItemExposureEvent.Model.init(eventData:timedData:viewData:customItemData:feedPositionData:inGroupPositionData:feedData:groupData:userBundleSubscriptionContextData:dismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, int *a5@<X4>, int *a6@<X5>, char *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v15 = *a3;
  v16 = a3[1];
  v17 = *(a3 + 8);
  v37 = *a4;
  v18 = *(a4 + 3);
  v36 = *(a4 + 2);
  v40 = *a6;
  v38 = *a5;
  v39 = *(a6 + 4);
  v41 = *(a7 + 2);
  v42 = *(a7 + 1);
  v45 = a11[1];
  v46 = *a11;
  v43 = *a7;
  v44 = *(a11 + 16);
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for CustomItemExposureEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  v24 = a9 + v20[7];
  *v24 = v37;
  *(v24 + 16) = v36;
  *(v24 + 24) = v18;
  *(a9 + v20[8]) = v38;
  v25 = a9 + v20[9];
  *v25 = v40;
  *(v25 + 4) = v39;
  v26 = a9 + v20[10];
  *v26 = v43;
  *(v26 + 8) = v42;
  *(v26 + 16) = v41;
  v27 = (a9 + v20[11]);
  v28 = a8[3];
  v27[2] = a8[2];
  v27[3] = v28;
  v29 = a8[1];
  *v27 = *a8;
  v27[1] = v29;
  v30 = a8[8];
  v27[7] = a8[7];
  v27[8] = v30;
  v31 = a8[6];
  v27[5] = a8[5];
  v27[6] = v31;
  v27[4] = a8[4];
  v32 = a9 + v20[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  result = *(a10 + 32);
  *(v32 + 32) = result;
  *(v32 + 48) = *(a10 + 48);
  v35 = a9 + v20[13];
  *v35 = v46;
  *(v35 + 8) = v45;
  *(v35 + 16) = v44;
  return result;
}

unint64_t sub_217B512BC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x74614470756F7267;
    v6 = 0xD000000000000021;
    if (a1 != 8)
    {
      v6 = 0x617373696D736964;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000013;
    if (a1 != 5)
    {
      v7 = 0x6174614464656566;
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
    v2 = 0x6174614477656976;
    v3 = 0x74496D6F74737563;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_217B51420@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B53210(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B51448(uint64_t a1)
{
  v2 = sub_217B51B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B51484(uint64_t a1)
{
  v2 = sub_217B51B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomItemExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B525EC(0, &qword_27CBA01A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v41[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B51B0C();
  sub_217D89E7C();
  LOBYTE(v65) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for CustomItemExposureEvent.Model(0);
    LOBYTE(v65) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    *&v65 = v12;
    *(&v65 + 1) = v13;
    LOWORD(v66) = v11;
    LOBYTE(v56) = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = (v3 + v10[7]);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    *&v65 = *v14;
    *(&v65 + 1) = v15;
    *&v66 = v16;
    *(&v66 + 1) = v17;
    LOBYTE(v56) = 3;
    sub_217B4FBF4();

    sub_217D89CAC();

    LODWORD(v65) = *(v3 + v10[8]);
    LOBYTE(v56) = 4;
    sub_217AD7710();
    sub_217D89CAC();
    v19 = (v3 + v10[9]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 4);
    LODWORD(v65) = v20;
    BYTE4(v65) = v19;
    LOBYTE(v56) = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v21 = v3 + v10[10];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v75[0] = *v21;
    v76 = v22;
    v77 = v23;
    v74 = 6;
    sub_217A5BA2C();

    sub_217D89CAC();

    v24 = (v3 + v10[11]);
    v25 = v24[6];
    v26 = v24[4];
    v70 = v24[5];
    v71 = v25;
    v27 = v24[6];
    v28 = v24[8];
    v72 = v24[7];
    v73 = v28;
    v29 = v24[2];
    v30 = *v24;
    v66 = v24[1];
    v67 = v29;
    v31 = v24[2];
    v32 = v24[4];
    v68 = v24[3];
    v69 = v32;
    v33 = *v24;
    v62 = v27;
    v63 = v72;
    v64 = v24[8];
    v65 = v33;
    v58 = v31;
    v59 = v68;
    v60 = v26;
    v61 = v70;
    v56 = v30;
    v57 = v66;
    v55 = 7;
    sub_217AD87FC(&v65, v54);
    sub_217A5D3B4();
    sub_217D89C3C();
    v54[6] = v62;
    v54[7] = v63;
    v54[8] = v64;
    v54[2] = v58;
    v54[3] = v59;
    v54[4] = v60;
    v54[5] = v61;
    v54[0] = v56;
    v54[1] = v57;
    sub_217AD96E8(v54);
    v34 = (v3 + v10[12]);
    v35 = v34[1];
    v52[0] = *v34;
    v52[1] = v35;
    v37 = *v34;
    v36 = v34[1];
    v52[2] = v34[2];
    v53 = *(v34 + 48);
    v48 = v37;
    v49 = v36;
    v50 = v34[2];
    v51 = *(v34 + 48);
    v47 = 8;
    sub_217ACC004(v52, v45);
    sub_217A55B98();
    sub_217D89CAC();
    v45[0] = v48;
    v45[1] = v49;
    v45[2] = v50;
    v46 = v51;
    sub_217ACC69C(v45);
    v38 = (v3 + v10[13]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v38) = *(v38 + 16);
    v42 = v39;
    v43 = v40;
    v44 = v38;
    v41[7] = 9;
    sub_217AD7DEC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B51B0C()
{
  result = qword_27CBA01A8;
  if (!qword_27CBA01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA01A8);
  }

  return result;
}

uint64_t CustomItemExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_217D889CC();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B525EC(0, &qword_27CBA01B0, MEMORY[0x277D844C8]);
  v54 = v8;
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for CustomItemExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217B51B0C();
  v55 = v10;
  v15 = v72;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v16 = v5;
  v17 = v52;
  v48 = v3;
  v47 = v11;
  v72 = v13;
  v64[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v18 = v53;
  sub_217D89BCC();
  v19 = *(v51 + 32);
  v20 = v72;
  v53 = v6;
  v19(v72, v18);
  v64[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v21 = v16;
  v22 = v48;
  sub_217D89BCC();
  v46 = 0;
  v23 = v21;
  v24 = v47;
  (*(v50 + 32))(&v20[v47[5]], v23, v22);
  LOBYTE(v61[0]) = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v25 = *&v64[8];
  v26 = *&v64[16];
  v27 = &v20[v24[6]];
  *v27 = *v64;
  *(v27 + 1) = v25;
  *(v27 + 8) = v26;
  LOBYTE(v61[0]) = 3;
  sub_217B4FBA0();
  sub_217D89BCC();
  v28 = *&v64[16];
  v29 = &v20[v24[7]];
  *v29 = *v64;
  *(v29 + 1) = v28;
  LOBYTE(v61[0]) = 4;
  sub_217AD76BC();
  sub_217D89BCC();
  *&v20[v24[8]] = *v64;
  LOBYTE(v61[0]) = 5;
  sub_217B4FFA8();
  sub_217D89B5C();
  v30 = v64[4];
  v31 = &v20[v24[9]];
  *v31 = *v64;
  v31[4] = v30;
  LOBYTE(v61[0]) = 6;
  sub_217A5B978();
  sub_217D89BCC();
  v32 = &v20[v24[10]];
  *v32 = v64[0];
  *(v32 + 8) = *&v64[8];
  v63 = 7;
  sub_217A5D308();
  sub_217D89B5C();
  v33 = &v72[v24[11]];
  v34 = v68;
  v35 = v70;
  v36 = v71;
  *(v33 + 6) = v69;
  *(v33 + 7) = v35;
  *(v33 + 8) = v36;
  v37 = v66;
  v38 = v67;
  *(v33 + 2) = v65;
  *(v33 + 3) = v37;
  *(v33 + 4) = v38;
  *(v33 + 5) = v34;
  v39 = *&v64[16];
  *v33 = *v64;
  *(v33 + 1) = v39;
  v60 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v40 = &v72[v24[12]];
  v41 = v61[1];
  *v40 = v61[0];
  *(v40 + 1) = v41;
  *(v40 + 2) = v61[2];
  v40[48] = v62;
  v57 = 9;
  sub_217AD7D98();
  sub_217D89B5C();
  (*(v17 + 8))(v55, v54);
  v42 = v59;
  v43 = v72;
  v44 = &v72[v47[13]];
  *v44 = v58;
  v44[16] = v42;
  sub_217B52650(v43, v49);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_217B526B4(v43);
}

void sub_217B525EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B51B0C();
    v7 = a3(a1, &type metadata for CustomItemExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B52650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomItemExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B526B4(uint64_t a1)
{
  v2 = type metadata accessor for CustomItemExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B527E8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B50710(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B50710(0, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4, &type metadata for CustomItemData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B50710(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217B50710(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217B50710(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B50710(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  sub_217B50710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217B50710(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v15, v24);
}

void sub_217B52CA4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B50710(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_217B50710(319, &qword_2811C8738, sub_217B4FBA0, sub_217B4FBF4, &type metadata for CustomItemData);
        if (v4 <= 0x3F)
        {
          sub_217B50710(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_217B50710(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
            if (v6 <= 0x3F)
            {
              sub_217B50710(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
              if (v7 <= 0x3F)
              {
                sub_217B50710(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
                if (v8 <= 0x3F)
                {
                  sub_217B50710(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217B50710(319, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
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

void sub_217B52FD0(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C29D8, &type metadata for InGroupPositionData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7628, &type metadata for DismissalData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217B5310C()
{
  result = qword_27CBA01C8;
  if (!qword_27CBA01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA01C8);
  }

  return result;
}

unint64_t sub_217B53164()
{
  result = qword_27CBA01D0;
  if (!qword_27CBA01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA01D0);
  }

  return result;
}

unint64_t sub_217B531BC()
{
  result = qword_27CBA01D8;
  if (!qword_27CBA01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA01D8);
  }

  return result;
}

uint64_t sub_217B53210(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74496D6F74737563 && a2 == 0xEE00617461446D65 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
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

uint64_t sub_217B5355C()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA01E0);
  v1 = __swift_project_value_buffer(v0, qword_27CBA01E0);
  *v1 = 0x726F70732E6D6F63;
  *(v1 + 8) = 0xEA00000000007374;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217B5364C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA01F8);
  v1 = __swift_project_value_buffer(v0, qword_27CBA01F8);
  v2 = *MEMORY[0x277CEADB0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217B5370C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0210);
  __swift_project_value_buffer(v0, qword_27CBA0210);
  return sub_217D8866C();
}

uint64_t UnfollowSportsTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnfollowSportsTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowSportsTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowSportsTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowSportsTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowSportsTagEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowSportsTagEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowSportsTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnfollowSportsTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnfollowSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnfollowSportsTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnfollowSportsTagEvent(0);
  v5 = v4[5];
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t UnfollowSportsTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowSportsTagEvent.Model(0) + 20));
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

uint64_t UnfollowSportsTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowSportsTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UnfollowSportsTagEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for UnfollowSportsTagEvent.Model(0) + 28));
}

uint64_t UnfollowSportsTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnfollowSportsTagEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 UnfollowSportsTagEvent.Model.init(eventData:userBundleSubscriptionContextData:tagData:sportsData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
  v17 = a6 + v16[5];
  v18 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v18;
  result = *(a2 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a2 + 48);
  v20 = (a6 + v16[6]);
  *v20 = v9;
  v20[1] = v10;
  *(a6 + v16[7]) = v11;
  v21 = a6 + v16[8];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  return result;
}

unint64_t sub_217B543E0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x61746144676174;
  v4 = 0x61447374726F7073;
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
    v2 = 0xD000000000000021;
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

uint64_t sub_217B54488@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B55648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B544B0(uint64_t a1)
{
  v2 = sub_217B548E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B544EC(uint64_t a1)
{
  v2 = sub_217B548E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnfollowSportsTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B54E40(0, &qword_27CBA0228, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B548E0();
  sub_217D89E7C();
  v37 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[2];
    v13 = *v11;
    v14 = *v11;
    v34 = v11[1];
    v35 = v12;
    v33 = v13;
    v36 = *(v11 + 48);
    v29 = v14;
    v30 = v34;
    v31 = v11[2];
    v32 = *(v11 + 48);
    v28 = 1;
    sub_217ACC004(&v33, v26);
    sub_217A55B98();
    sub_217D89CAC();
    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v27 = v32;
    sub_217ACC69C(v26);
    v15 = (v3 + v10[6]);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
    v25 = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v22 = *(v3 + v10[7]);
    v25 = 3;
    sub_217A61284();

    sub_217D89CAC();

    v18 = (v3 + v10[8]);
    v19 = *v18;
    v20 = v18[1];
    LOWORD(v18) = *(v18 + 8);
    v22 = v19;
    v23 = v20;
    v24 = v18;
    v25 = 4;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B548E0()
{
  result = qword_27CBA0230;
  if (!qword_27CBA0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0230);
  }

  return result;
}

uint64_t UnfollowSportsTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B54E40(0, &qword_27CBA0238, MEMORY[0x277D844C8]);
  v29 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B548E0();
  v28 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v25;
  LOBYTE(v33) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v26;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  v38 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v14 = &v11[v9[5]];
  v15 = v34;
  *v14 = v33;
  *(v14 + 1) = v15;
  *(v14 + 2) = v35;
  v14[48] = v36;
  v37 = 2;
  sub_217AF6AC0();
  v26 = 0;
  sub_217D89BCC();
  v16 = v27;
  v17 = v31;
  v18 = &v11[v9[6]];
  *v18 = v30;
  *(v18 + 1) = v17;
  v37 = 3;
  sub_217A6120C();
  sub_217D89BCC();
  *&v11[v9[7]] = v30;
  v37 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v16 + 8))(v28, v29);
  v19 = v31;
  v20 = v32;
  v21 = &v11[v9[8]];
  *v21 = v30;
  *(v21 + 1) = v19;
  *(v21 + 8) = v20;
  sub_217B54EA4(v11, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B54F08(v11);
}

void sub_217B54E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B548E0();
    v7 = a3(a1, &type metadata for UnfollowSportsTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B54EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B54F08(uint64_t a1)
{
  v2 = type metadata accessor for UnfollowSportsTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B5503C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217B552C4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A62980(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A62980(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
      if (v3 <= 0x3F)
      {
        sub_217A62980(319, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
        if (v4 <= 0x3F)
        {
          sub_217A62980(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217B55498(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B55544()
{
  result = qword_27CBA0260;
  if (!qword_27CBA0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0260);
  }

  return result;
}

unint64_t sub_217B5559C()
{
  result = qword_27CBA0268;
  if (!qword_27CBA0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0268);
  }

  return result;
}

unint64_t sub_217B555F4()
{
  result = qword_27CBA0270;
  if (!qword_27CBA0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0270);
  }

  return result;
}

uint64_t sub_217B55648(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61447374726F7073 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
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

NewsAnalytics::FeedJournalGroupResultOutput_optional __swiftcall FeedJournalGroupResultOutput.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedJournalGroupResultOutput.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1885956979;
  if (v1 != 5)
  {
    v3 = 1701736302;
  }

  v4 = 1819242352;
  if (v1 != 3)
  {
    v4 = 0x646570706F7264;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1954047342;
  if (v1 != 1)
  {
    v5 = 1953718636;
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

unint64_t sub_217B5592C()
{
  result = qword_27CBA0278;
  if (!qword_27CBA0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0278);
  }

  return result;
}

uint64_t sub_217B5598C(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217B55A84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1885956979;
  v7 = 0xE400000000000000;
  if (v2 != 5)
  {
    v6 = 1701736302;
    v5 = 0xE400000000000000;
  }

  v8 = 1819242352;
  if (v2 != 3)
  {
    v8 = 0x646570706F7264;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1954047342;
  if (v2 != 1)
  {
    v9 = 1953718636;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
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

unint64_t sub_217B55BF8()
{
  result = qword_2811BEB50;
  if (!qword_2811BEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB50);
  }

  return result;
}

__n128 sub_217B55C4C@<Q0>(uint64_t a1@<X8>)
{
  v3 = 0x6E776F6E6B6E75;
  v4 = [v1 widgetContentId];
  if (v4)
  {
    v5 = v4;
    v60 = sub_217D8954C();
    v61 = v6;
  }

  else
  {
    v60 = 0x6E776F6E6B6E75;
    v61 = 0xE700000000000000;
  }

  v7 = [v1 widgetEngagementType] - 1;
  if (v7 > 9)
  {
    v57 = 0;
  }

  else
  {
    v57 = byte_217D992EC[v7];
  }

  v8 = [v1 webEmbedId];
  if (v8)
  {
    v9 = v8;
    v10 = sub_217D8954C();
    v58 = v11;
    v59 = v10;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  sub_217B55FF8(v63);
  sub_217B560B0(v65);
  v12 = [v1 sourceChannelId];
  if (v12)
  {
    v13 = v12;
    v55 = sub_217D8954C();
    v56 = v14;
  }

  else
  {
    v55 = 0x6E776F6E6B6E75;
    v56 = 0xE700000000000000;
  }

  v54 = [v1 contentFetchDate];
  v15 = [v1 widgetDisplayMode];
  v16 = [v1 contentId];
  if (v16)
  {
    v17 = v16;
    v18 = sub_217D8954C();
    v52 = v19;
    v53 = v18;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v20 = [v1 widgetUserId];
  if (v20)
  {
    v21 = v20;
    v50 = sub_217D8954C();
    v51 = v22;
  }

  else
  {
    v50 = 0x6E776F6E6B6E75;
    v51 = 0xE700000000000000;
  }

  v23 = [v1 engagementTargetUrl];
  if (v23)
  {
    v24 = v23;
    v3 = sub_217D8954C();
    v48 = v25;
  }

  else
  {
    v48 = 0xE700000000000000;
  }

  v62 = v3;
  v26 = [v1 widgetType];
  v27 = [v1 widgetExposureStackLocation];
  v28 = [v1 storyType];
  if (v28)
  {
    v29 = v28;
    v30 = sub_217D8954C();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = [v1 entryId];
  if (v33)
  {
    v34 = v33;
    v35 = sub_217D8954C();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  if (v27 >= 6)
  {
    v38 = 0;
  }

  else
  {
    v38 = v27;
  }

  if (v26 >= 4)
  {
    LOBYTE(v26) = 0;
  }

  if (v15 >= 8)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0x504030201000000uLL >> (8 * v15);
  }

  *a1 = v60;
  *(a1 + 8) = v61;
  *(a1 + 16) = v57;

  v40 = v63[4];
  *(a1 + 120) = v63[5];
  v41 = *v64;
  *(a1 + 136) = v63[6];
  *(a1 + 152) = v41;
  v42 = v63[0];
  *(a1 + 56) = v63[1];
  v43 = v63[3];
  *(a1 + 72) = v63[2];
  *(a1 + 88) = v43;
  *(a1 + 24) = v59;
  *(a1 + 32) = v58;
  *(a1 + 167) = *&v64[15];
  *(a1 + 104) = v40;
  *(a1 + 40) = v42;
  v44 = v65[7];
  *(a1 + 272) = v65[6];
  *(a1 + 288) = v44;
  *(a1 + 304) = v65[8];
  v45 = v65[3];
  *(a1 + 208) = v65[2];
  *(a1 + 224) = v45;
  v46 = v65[5];
  *(a1 + 240) = v65[4];
  *(a1 + 256) = v46;
  result = v65[1];
  *(a1 + 176) = v65[0];
  *(a1 + 192) = result;
  *(a1 + 320) = v55;
  *(a1 + 328) = v56;
  *(a1 + 336) = v54;
  *(a1 + 344) = v39;
  *(a1 + 352) = v53;
  *(a1 + 360) = v52;
  *(a1 + 368) = v50;
  *(a1 + 376) = v51;
  *(a1 + 384) = v62;
  *(a1 + 392) = v49;
  *(a1 + 400) = v26;
  *(a1 + 401) = v38;
  *(a1 + 408) = v30;
  *(a1 + 416) = v32;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0xE000000000000000;
  *(a1 + 440) = v35;
  *(a1 + 448) = v37;
  return result;
}

void sub_217B55FF8(uint64_t a1@<X8>)
{
  v3 = [v1 articleId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_217D8954C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = MEMORY[0x277D84F90];
  *(a1 + 131) = 0;
  *(a1 + 128) = 0;
}

uint64_t sub_217B560B0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 widgetSectionId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_217D8954C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v8 = [v1 widgetArticleCountInSection];
  v9 = [v1 widgetSectionDisplayRank];
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 28) = v9;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 1;

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_217B561F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000217DCDE80 == a2)
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

uint64_t sub_217B56288(uint64_t a1)
{
  v2 = sub_217B5645C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B562C4(uint64_t a1)
{
  v2 = sub_217B5645C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppConfigPaywallData.encode(to:)(void *a1)
{
  sub_217B5669C(0, &qword_27CBA0280, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5645C();
  sub_217D89E7C();
  v11 = v8;
  sub_217B564B0();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B5645C()
{
  result = qword_27CBA0288;
  if (!qword_27CBA0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0288);
  }

  return result;
}

unint64_t sub_217B564B0()
{
  result = qword_27CBA0290;
  if (!qword_27CBA0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0290);
  }

  return result;
}

uint64_t AppConfigPaywallData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B5669C(0, &qword_27CBA0298, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5645C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B56700();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B5669C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5645C();
    v7 = a3(a1, &type metadata for AppConfigPaywallData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B56700()
{
  result = qword_27CBA02A0;
  if (!qword_27CBA02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02A0);
  }

  return result;
}

unint64_t sub_217B56758()
{
  result = qword_27CBA02A8;
  if (!qword_27CBA02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02A8);
  }

  return result;
}

unint64_t sub_217B567B0()
{
  result = qword_27CBA02B0;
  if (!qword_27CBA02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02B0);
  }

  return result;
}

unint64_t sub_217B56858()
{
  result = qword_27CBA02B8;
  if (!qword_27CBA02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02B8);
  }

  return result;
}

unint64_t sub_217B568B0()
{
  result = qword_27CBA02C0;
  if (!qword_27CBA02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02C0);
  }

  return result;
}

unint64_t sub_217B56908()
{
  result = qword_27CBA02C8;
  if (!qword_27CBA02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02C8);
  }

  return result;
}

double static TabiData.unknown.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x6E776F6E6B6E75;
  *(a1 + 8) = 0xE700000000000000;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  memset(v4, 0, sizeof(v4));
  sub_217B569E0(v4);
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0x6E776F6E6B6E75;
  *(a1 + 112) = 0xE700000000000000;
  return result;
}

uint64_t sub_217B569E0(uint64_t a1)
{
  sub_217B56A3C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217B56A3C()
{
  if (!qword_2811C2DE0)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C2DE0);
    }
  }
}

uint64_t sub_217B56B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F73616552646E65 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_217B56B98(uint64_t a1)
{
  v2 = sub_217B56D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B56BD4(uint64_t a1)
{
  v2 = sub_217B56D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewEndData.encode(to:)(void *a1)
{
  sub_217B56FAC(0, &qword_2811BC828, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B56D6C();
  sub_217D89E7C();
  v11 = v8;
  sub_217B56DC0();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B56D6C()
{
  result = qword_2811C7B78;
  if (!qword_2811C7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B78);
  }

  return result;
}

unint64_t sub_217B56DC0()
{
  result = qword_2811BD1C8;
  if (!qword_2811BD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1C8);
  }

  return result;
}

uint64_t ViewEndData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B56FAC(0, &qword_2811BCB20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B56D6C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B57010();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B56FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B56D6C();
    v7 = a3(a1, &type metadata for ViewEndData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B57010()
{
  result = qword_2811BD1B8;
  if (!qword_2811BD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1B8);
  }

  return result;
}

unint64_t sub_217B57068()
{
  result = qword_2811C7B50;
  if (!qword_2811C7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B50);
  }

  return result;
}

unint64_t sub_217B570C0()
{
  result = qword_2811C7B58;
  if (!qword_2811C7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B58);
  }

  return result;
}

unint64_t sub_217B57168()
{
  result = qword_27CBA02D0;
  if (!qword_27CBA02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02D0);
  }

  return result;
}

unint64_t sub_217B571C0()
{
  result = qword_2811C7B68;
  if (!qword_2811C7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B68);
  }

  return result;
}

unint64_t sub_217B57218()
{
  result = qword_2811C7B70;
  if (!qword_2811C7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B70);
  }

  return result;
}

uint64_t AdGroupData.init(groupData:)@<X0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[7];
  v8[6] = a1[6];
  v8[7] = v3;
  v8[8] = a1[8];
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v5 = a1[5];
  v8[4] = a1[4];
  v8[5] = v5;
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  result = sub_217AF8104(v8);
  *a2 = BYTE1(v8[0]);
  return result;
}

void FeedJournalEntry.analyticsData.getter(void *a1@<X8>)
{
  v3 = sub_217D8917C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = v41 - v8;
  v57 = sub_217D8915C();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_217D8904C();
  v12 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_217D8901C();
  v15 = *(v14 + 16);
  if (v15)
  {
    v41[1] = v1;
    v42 = a1;
    v67 = MEMORY[0x277D84F90];
    v16 = v14;
    sub_217B2C764(0, v15, 0);
    v64 = v67;
    v18 = *(v12 + 16);
    v17 = v12 + 16;
    v56 = v18;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v41[0] = v16;
    v20 = v16 + v19;
    v51 = *(v17 + 56);
    v59 = (v4 + 8);
    v55 = (v4 + 88);
    v54 = *MEMORY[0x277D32AE8];
    v47 = *MEMORY[0x277D32AE0];
    v46 = *MEMORY[0x277D32AF8];
    v45 = *MEMORY[0x277D32B08];
    v44 = *MEMORY[0x277D32B00];
    v48 = (v4 + 96);
    v50 = (v9 + 8);
    v49 = (v17 - 8);
    v43 = *MEMORY[0x277D32AF0];
    v52 = v17;
    v53 = v3;
    while (1)
    {
      v56(v62, v20, v63);
      sub_217D8903C();
      v21 = v58;
      sub_217D8913C();
      v22 = sub_217D8916C();
      v60 = v23;
      v61 = v22;
      v24 = *v59;
      (*v59)(v21, v3);
      sub_217D8914C();
      v25 = v66;
      if (v66)
      {
        __swift_project_boxed_opaque_existential_1(v65, v66);
        v25 = sub_217D8900C();
        v27 = v26;
        __swift_destroy_boxed_opaque_existential_1(v65);
      }

      else
      {
        sub_217B57E68(v65);
        v27 = 0;
      }

      sub_217D8913C();
      v28 = (*v55)(v7, v3);
      if (v28 == v54)
      {
        (*v48)(v7, v3);
        __swift_destroy_boxed_opaque_existential_1(v7);
        v29 = 1;
      }

      else if (v28 == v47)
      {
        (*v48)(v7, v3);
        __swift_destroy_boxed_opaque_existential_1(v7);
        v29 = 2;
      }

      else if (v28 == v46)
      {
        (*v48)(v7, v3);
        __swift_destroy_boxed_opaque_existential_1(v7);
        v29 = 3;
      }

      else if (v28 == v45)
      {
        (*v48)(v7, v3);

        __swift_destroy_boxed_opaque_existential_1(v7);
        v29 = 4;
      }

      else if (v28 == v44)
      {
        v24(v7, v3);
        v29 = 5;
      }

      else
      {
        v30 = v28;
        v24(v7, v3);
        v29 = v30 == v43 ? 6 : 0;
      }

      sub_217D8912C();
      v32 = v31;
      if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v31 <= -9.22337204e18)
      {
        goto LABEL_32;
      }

      if (v31 >= 9.22337204e18)
      {
        goto LABEL_33;
      }

      v33 = v27;
      v34 = v25;
      (*v50)(v11, v57);
      (*v49)(v62, v63);
      v35 = v64;
      v67 = v64;
      v37 = *(v64 + 16);
      v36 = *(v64 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_217B2C764((v36 > 1), v37 + 1, 1);
        v35 = v67;
      }

      *(v35 + 16) = v37 + 1;
      v64 = v35;
      v38 = v35 + 48 * v37;
      v39 = v60;
      *(v38 + 32) = v61;
      *(v38 + 40) = v39;
      *(v38 + 48) = v34;
      *(v38 + 56) = v33;
      *(v38 + 64) = v29;
      *(v38 + 72) = v32;
      v20 += v51;
      --v15;
      v3 = v53;
      if (!v15)
      {

        a1 = v42;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_27:
  sub_217D8902C();
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v40 < 9.22337204e18)
  {
    *a1 = v64;
    a1[1] = v40;
    return;
  }

LABEL_36:
  __break(1u);
}

uint64_t FeedJournalGroup.analyticsData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217D8915C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D8903C();
  FeedJournalGroupResult.analyticsData.getter(a1);
  return (*(v3 + 8))(v5, v2);
}

void FeedJournalGroupResult.analyticsData.getter(uint64_t a1@<X8>)
{
  v2 = sub_217D8917C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D8913C();
  v6 = sub_217D8916C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  sub_217D8914C();
  v9 = v16;
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = sub_217D8900C();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_217B57E68(v15);
    v11 = 0;
  }

  sub_217B57C24(v15);
  v12 = v15[0];
  sub_217D8912C();
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v13 < 9.22337204e18)
  {
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v11;
    *(a1 + 32) = v12;
    *(a1 + 40) = v13;
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_217B57C24@<X0>(char *a1@<X8>)
{
  v2 = sub_217D8917C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217D8913C();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D32AE8])
  {
    (*(v3 + 96))(v5, v2);
    v7 = 1;
LABEL_9:
    *a1 = v7;
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (v6 == *MEMORY[0x277D32AE0])
  {
    (*(v3 + 96))(v5, v2);
    v7 = 2;
    goto LABEL_9;
  }

  if (v6 == *MEMORY[0x277D32AF8])
  {
    (*(v3 + 96))(v5, v2);
    v7 = 3;
    goto LABEL_9;
  }

  if (v6 == *MEMORY[0x277D32B08])
  {
    (*(v3 + 96))(v5, v2);

    v7 = 4;
    goto LABEL_9;
  }

  if (v6 == *MEMORY[0x277D32B00])
  {
    result = (*(v3 + 8))(v5, v2);
    *a1 = 5;
  }

  else if (v6 == *MEMORY[0x277D32AF0])
  {
    result = (*(v3 + 8))(v5, v2);
    *a1 = 6;
  }

  else
  {
    *a1 = 0;
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_217B57E68(uint64_t a1)
{
  sub_217B57EC4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217B57EC4(uint64_t a1)
{
  if (!qword_2811BCEF0)
  {
    sub_217B57F1C();
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811BCEF0);
    }
  }
}

unint64_t sub_217B57F1C()
{
  result = qword_2811BCEF8;
  if (!qword_2811BCEF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BCEF8);
  }

  return result;
}

uint64_t sub_217B58048()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BF098);
  __swift_project_value_buffer(v0, qword_2811BF098);
  return sub_217D8866C();
}

uint64_t JourneyMessageFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageFailureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 20);
  sub_217A629FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageFailureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 20);
  sub_217A629FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 24);
  sub_217A629FC(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageFailureEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 24);
  sub_217A629FC(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 28);
  sub_217A629FC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageFailureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 28);
  sub_217A629FC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 32);
  sub_217A629FC(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageFailureEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 32);
  sub_217A629FC(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.journeyMessageFailureReasonData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 36);
  sub_217A629FC(0, &qword_2811C8518, sub_217B5890C, sub_217B58960, &type metadata for JourneyMessageFailureReasonData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B5890C()
{
  result = qword_2811BDF50;
  if (!qword_2811BDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDF50);
  }

  return result;
}

unint64_t sub_217B58960()
{
  result = qword_2811BDF58;
  if (!qword_2811BDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDF58);
  }

  return result;
}

uint64_t JourneyMessageFailureEvent.journeyMessageFailureReasonData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageFailureEvent(0) + 36);
  sub_217A629FC(0, &qword_2811C8518, sub_217B5890C, sub_217B58960, &type metadata for JourneyMessageFailureReasonData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageFailureEvent(0);
  v5 = v4[5];
  sub_217A629FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A629FC(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217A629FC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217A629FC(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217A629FC(0, &qword_2811C8518, sub_217B5890C, sub_217B58960, &type metadata for JourneyMessageFailureReasonData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t JourneyMessageFailureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageFailureEvent.Model(0) + 20));
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

uint64_t JourneyMessageFailureEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageFailureEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t JourneyMessageFailureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageFailureEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t JourneyMessageFailureEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageFailureEvent.Model(0) + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageFailureEvent.Model.journeyMessageFailureReasonData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageFailureEvent.Model(0) + 36);
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
}

__n128 JourneyMessageFailureEvent.Model.init(eventData:userBundleSubscriptionContextData:dialogStyleData:purchaseData:placementData:journeyMessageFailureReasonData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 16);
  v15 = *a5;
  v16 = a5[1];
  v28 = *a6;
  v27 = *(a6 + 1);
  v17 = sub_217D8899C();
  v25 = *(a5 + 2);
  v26 = *(a5 + 1);
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
  v19 = a7 + v18[5];
  v20 = *(a2 + 16);
  *v19 = *a2;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(a2 + 32);
  *(v19 + 48) = *(a2 + 48);
  *(a7 + v18[6]) = v11;
  v21 = a7 + v18[7];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  v22 = a7 + v18[8];
  *v22 = v15;
  *(v22 + 8) = v16;
  result = v26;
  *(v22 + 16) = v26;
  *(v22 + 32) = v25;
  v24 = a7 + v18[9];
  *v24 = v28;
  *(v24 + 8) = v27;
  return result;
}

uint64_t sub_217B590B0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6573616863727570;
  v4 = 0x6E656D6563616C70;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 1)
  {
    v5 = 0x7453676F6C616964;
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

uint64_t sub_217B59194@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B5A62C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B591BC(uint64_t a1)
{
  v2 = sub_217B596D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B591F8(uint64_t a1)
{
  v2 = sub_217B596D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B59CDC(0, &qword_27CBA02D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B596D4();
  sub_217D89E7C();
  v44[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[2];
    v13 = *v11;
    v14 = *v11;
    v41 = v11[1];
    v42 = v12;
    v40 = v13;
    v43 = *(v11 + 48);
    v36 = v14;
    v15 = v11[2];
    v37 = v41;
    v38 = v15;
    v39 = *(v11 + 48);
    v35 = 1;
    sub_217ACC004(&v40, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v34 = v39;
    sub_217ACC69C(v33);
    LOBYTE(v27) = *(v3 + v10[6]);
    v32 = 2;
    sub_217AFEA44();
    sub_217D89CAC();
    v16 = (v3 + v10[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v16) = *(v16 + 16);
    v27 = v17;
    v28 = v18;
    LOBYTE(v29) = v16;
    v32 = 3;
    sub_217AFF378();

    sub_217D89C3C();

    v19 = (v3 + v10[8]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[5];
    v27 = *v19;
    v28 = v20;
    v29 = v21;
    v30 = *(v19 + 3);
    v31 = v22;
    v32 = 4;
    sub_217AFEC9C();

    sub_217D89CAC();

    v24 = v3 + v10[9];
    v25 = *(v24 + 8);
    LOBYTE(v27) = *v24;
    v28 = v25;
    v32 = 5;
    sub_217B58960();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B596D4()
{
  result = qword_27CBA02E0;
  if (!qword_27CBA02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA02E0);
  }

  return result;
}

uint64_t JourneyMessageFailureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B59CDC(0, &qword_27CBA02E8, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217B596D4();
  v32 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v15 = v29;
  LOBYTE(v37) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v16 = v30;
  sub_217D89BCC();
  (*(v15 + 32))(v13, v6, v4);
  v42 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v17 = &v13[v11[5]];
  v18 = v38;
  *v17 = v37;
  *(v17 + 1) = v18;
  *(v17 + 2) = v39;
  v17[48] = v40;
  v41 = 2;
  sub_217AFE9F0();
  sub_217D89BCC();
  v19 = v31;
  v13[v11[6]] = v34;
  v41 = 3;
  sub_217AFF324();
  sub_217D89B5C();
  v20 = v35;
  v21 = &v13[v11[7]];
  *v21 = v34;
  v21[16] = v20;
  v41 = 4;
  sub_217AFEC48();
  sub_217D89BCC();
  v22 = *(&v34 + 1);
  v23 = &v13[v11[8]];
  *v23 = v34;
  *(v23 + 1) = v22;
  v24 = v36;
  *(v23 + 1) = v35;
  *(v23 + 2) = v24;
  v41 = 5;
  sub_217B5890C();
  sub_217D89BCC();
  (*(v19 + 8))(v32, v16);
  v25 = *(&v34 + 1);
  v26 = &v13[v11[9]];
  *v26 = v34;
  *(v26 + 1) = v25;
  sub_217B59D40(v13, v28);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_217B59DA4(v13);
}

void sub_217B59CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B596D4();
    v7 = a3(a1, &type metadata for JourneyMessageFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B59D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B59DA4(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageFailureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B59ED8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A629FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A629FC(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217A629FC(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217A629FC(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217A629FC(0, &qword_2811C8518, sub_217B5890C, sub_217B58960, &type metadata for JourneyMessageFailureReasonData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217B5A1EC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A629FC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A629FC(319, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
      if (v3 <= 0x3F)
      {
        sub_217A629FC(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
        if (v4 <= 0x3F)
        {
          sub_217A629FC(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
          if (v5 <= 0x3F)
          {
            sub_217A629FC(319, &qword_2811C8518, sub_217B5890C, sub_217B58960, &type metadata for JourneyMessageFailureReasonData);
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

void sub_217B5A410(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217B5A4C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217B5A4C4()
{
  if (!qword_27CB9F108)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9F108);
    }
  }
}

unint64_t sub_217B5A528()
{
  result = qword_27CBA0300;
  if (!qword_27CBA0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0300);
  }

  return result;
}

unint64_t sub_217B5A580()
{
  result = qword_27CBA0308;
  if (!qword_27CBA0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0308);
  }

  return result;
}

unint64_t sub_217B5A5D8()
{
  result = qword_27CBA0310;
  if (!qword_27CBA0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0310);
  }

  return result;
}

uint64_t sub_217B5A62C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x7453676F6C616964 && a2 == 0xEF61746144656C79 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217DCDEA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_217B5A878()
{
  if (qword_27CB9DB70 != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 sportsPrivacyConfiguration];
    swift_unknownObjectRelease();
    [v2 isHeadlineExposureTrackingDisabled];
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_217A635A8();

  return sub_217D87DEC();
}

void sub_217B5A9A4()
{
  if (qword_2811C8C10 != -1)
  {
    swift_once();
  }

  sub_217A635A8();
  sub_217D87DCC();
  if (v3 <= 1u && !v3)
  {
    v1 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
    if ([v1 respondsToSelector_])
    {
      v2 = [v1 sportsPrivacyConfiguration];
      swift_unknownObjectRelease();
      [v2 headlineExposureNoiseRate];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_217B5AB04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_217B5AC1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &qword_27CBA0338, &type metadata for PurchaseSource);
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

char *sub_217B5AD14(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &qword_2811BC428, MEMORY[0x277D837D0]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B5AE24(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &qword_27CBA0318, &type metadata for SportsTagData);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217B5AF48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B5B6C4(0, &qword_2811BC468, sub_217B5B080);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_217B5B080();
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_217B5B080()
{
  result = qword_2811C8460;
  if (!qword_2811C8460)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811C8460);
  }

  return result;
}

char *sub_217B5B0E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &qword_27CBA0330, &type metadata for FormatPackageReferenceData);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217B5B224(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_217B5B6C4(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_217B5B404(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B2D054(0, &qword_27CBA0340, &type metadata for ErrorDetails);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B5B528(char *result, int64_t a2, char a3, char *a4)
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
    sub_217B5B6C4(0, &qword_27CBA0320, sub_217B5B718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_217B5B63C(uint64_t a1, uint64_t a2)
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

  sub_217B2D054(0, &qword_2811BC428, MEMORY[0x277D837D0]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_217B5B6C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217B5B718()
{
  if (!qword_27CBA0328)
  {
    v0 = sub_217D897AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA0328);
    }
  }
}

uint64_t MobileData.carrier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileData.carrier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MobileData.countryCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobileData.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MobileData.networkCode.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MobileData.networkCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall MobileData.init(carrier:countryCode:networkCode:)(NewsAnalytics::MobileData *__return_ptr retstr, Swift::String carrier, Swift::String countryCode, Swift::String networkCode)
{
  retstr->carrier = carrier;
  retstr->countryCode = countryCode;
  retstr->networkCode = networkCode;
}

uint64_t sub_217B5B920()
{
  v1 = 0x437972746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x436B726F7774656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656972726163;
  }
}

uint64_t sub_217B5B98C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B5C124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B5B9B4(uint64_t a1)
{
  v2 = sub_217B5BBDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B5B9F0(uint64_t a1)
{
  v2 = sub_217B5BBDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileData.encode(to:)(void *a1)
{
  sub_217B5BEB8(0, &qword_2811BC898, MEMORY[0x277D84538]);
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
  sub_217B5BBDC();
  sub_217D89E7C();
  v15 = 0;
  v10 = v12[5];
  sub_217D89C6C();
  if (!v10)
  {
    v14 = 1;
    sub_217D89C6C();
    v13 = 2;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B5BBDC()
{
  result = qword_2811C7F70;
  if (!qword_2811C7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F70);
  }

  return result;
}

uint64_t MobileData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B5BEB8(0, &qword_27CBA0348, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5BBDC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v23 = v10;
  v25 = 1;
  v21 = sub_217D89B8C();
  v22 = v13;
  v24 = 2;
  v14 = sub_217D89B8C();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v9, v6);
  v18 = v22;
  *a2 = v23;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B5BEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5BBDC();
    v7 = a3(a1, &type metadata for MobileData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B5BF20()
{
  result = qword_2811C7F50;
  if (!qword_2811C7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F50);
  }

  return result;
}

unint64_t sub_217B5BF78()
{
  result = qword_2811C7F58;
  if (!qword_2811C7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F58);
  }

  return result;
}

unint64_t sub_217B5C020()
{
  result = qword_27CBA0350;
  if (!qword_27CBA0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0350);
  }

  return result;
}

unint64_t sub_217B5C078()
{
  result = qword_2811C7F60;
  if (!qword_2811C7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F60);
  }

  return result;
}

unint64_t sub_217B5C0D0()
{
  result = qword_2811C7F68;
  if (!qword_2811C7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F68);
  }

  return result;
}

uint64_t sub_217B5C124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656972726163 && a2 == 0xE700000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436B726F7774656ELL && a2 == 0xEB0000000065646FLL)
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

uint64_t sub_217B5C310()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1FD0);
  __swift_project_value_buffer(v0, qword_2811C1FD0);
  return sub_217D8866C();
}

uint64_t HeadlineScoringEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeadlineScoringEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeadlineScoringEvent.scoringData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineScoringEvent(0) + 20);
  sub_217B5C52C(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B5C52C(uint64_t a1)
{
  if (!qword_2811C8610)
  {
    sub_217B5C594();
    sub_217B5C5E8();
    v1 = sub_217D8829C();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8610);
    }
  }
}

unint64_t sub_217B5C594()
{
  result = qword_2811C2A08;
  if (!qword_2811C2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A08);
  }

  return result;
}

unint64_t sub_217B5C5E8()
{
  result = qword_2811C2A10;
  if (!qword_2811C2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A10);
  }

  return result;
}

uint64_t HeadlineScoringEvent.scoringData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineScoringEvent(0) + 20);
  sub_217B5C52C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineScoringEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineScoringEvent(0) + 24);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineScoringEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF0];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for HeadlineScoringEvent(0);
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x277CEACF8];
  sub_217B5C52C(0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  sub_217A608E0(0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v6, v9);
}

void sub_217B5C938(uint64_t a1)
{
  if (!qword_2811C8400)
  {
    sub_217D8899C();
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8400);
    }
  }
}

void *HeadlineScoringEvent.Model.scoringData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineScoringEvent.Model(0) + 20));

  return memcpy(a1, v3, 0x190uLL);
}

uint64_t sub_217B5CA24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t HeadlineScoringEvent.Model.init(eventData:scoringData:timedData:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_217B5CB54(a1, a4);
  v7 = type metadata accessor for HeadlineScoringEvent.Model(0);
  memcpy((a4 + *(v7 + 20)), a2, 0x190uLL);
  v8 = *(v7 + 24);
  v9 = sub_217D889CC();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t sub_217B5CB54(uint64_t a1, uint64_t a2)
{
  sub_217B5C938(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B5CBB8()
{
  v1 = 0x44676E69726F6373;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_217B5CC1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B5D964(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B5CC44(uint64_t a1)
{
  v2 = sub_217B5CF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B5CC80(uint64_t a1)
{
  v2 = sub_217B5CF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeadlineScoringEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B5D3C4(0, &qword_27CBA0358, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5CF28();
  sub_217D89E7C();
  v13[423] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89C3C();
  if (!v2)
  {
    v10 = type metadata accessor for HeadlineScoringEvent.Model(0);
    memcpy(v13, (v3 + *(v10 + 20)), 0x190uLL);
    v13[422] = 1;
    sub_217B5C5E8();
    sub_217D89CAC();
    v13[0] = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B5CF28()
{
  result = qword_27CBA0360;
  if (!qword_27CBA0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0360);
  }

  return result;
}

uint64_t HeadlineScoringEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = sub_217D889CC();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B5C938(0);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B5D3C4(0, &qword_27CBA0368, MEMORY[0x277D844C8]);
  v27 = v7;
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for HeadlineScoringEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5CF28();
  v26 = v9;
  v13 = v28;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v24;
  v15 = v12;
  v16 = v4;
  sub_217D8899C();
  v29[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v17 = v25;
  sub_217D89B5C();
  sub_217B5CB54(v17, v15);
  v29[423] = 1;
  sub_217B5C594();
  sub_217D89BCC();
  memcpy((v15 + *(v10 + 20)), v29, 0x190uLL);
  v29[422] = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v28 = v16;
  v18 = v23;
  sub_217D89BCC();
  (*(v14 + 8))(v26, v27);
  (*(v21 + 32))(v15 + *(v10 + 24), v28, v18);
  sub_217B5D428(v15, v22, type metadata accessor for HeadlineScoringEvent.Model);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B5D490(v15, type metadata accessor for HeadlineScoringEvent.Model);
}

void sub_217B5D3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5CF28();
    v7 = a3(a1, &type metadata for HeadlineScoringEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B5D428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_217B5D490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217B5D5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF0];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = *MEMORY[0x277CEACF8];
  sub_217B5C52C(0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  sub_217A608E0(0);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v7, v10);
}

void sub_217B5D6FC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B5C52C(319);
    if (v2 <= 0x3F)
    {
      sub_217A608E0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217B5D7C0(uint64_t a1)
{
  sub_217B5C938(319);
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_217B5D860()
{
  result = qword_27CBA0380;
  if (!qword_27CBA0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0380);
  }

  return result;
}

unint64_t sub_217B5D8B8()
{
  result = qword_27CBA0388;
  if (!qword_27CBA0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0388);
  }

  return result;
}

unint64_t sub_217B5D910()
{
  result = qword_27CBA0390;
  if (!qword_27CBA0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0390);
  }

  return result;
}

uint64_t sub_217B5D964(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44676E69726F6373 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
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

uint64_t PuzzleRevealData.revealType.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

NewsAnalytics::PuzzleRevealData __swiftcall PuzzleRevealData.init(revealType:)(Swift::OpaquePointer_optional revealType)
{
  rawValue = revealType.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.revealType.value._rawValue = v4;
  result.revealType.is_nil = v5;
  return result;
}

uint64_t sub_217B5DB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79546C6165766572 && a2 == 0xEA00000000006570)
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

uint64_t sub_217B5DBC8(uint64_t a1)
{
  v2 = sub_217B5DDE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B5DC04(uint64_t a1)
{
  v2 = sub_217B5DDE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleRevealData.encode(to:)(void *a1)
{
  sub_217B5E0B0(0, &qword_27CBA0398, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5DDE8();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217B5DE3C();
  sub_217B5E114(&qword_27CBA03B0, sub_217B5DE8C, MEMORY[0x277D83948]);
  sub_217D89C3C();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B5DDE8()
{
  result = qword_27CBA03A0;
  if (!qword_27CBA03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03A0);
  }

  return result;
}

void sub_217B5DE3C()
{
  if (!qword_27CBA03A8)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA03A8);
    }
  }
}

unint64_t sub_217B5DE8C()
{
  result = qword_27CBA03B8;
  if (!qword_27CBA03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03B8);
  }

  return result;
}

uint64_t PuzzleRevealData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217B5E0B0(0, &qword_27CBA03C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5DDE8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B5DE3C();
    sub_217B5E114(&qword_27CBA03C8, sub_217B5E180, MEMORY[0x277D83978]);
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B5E0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5DDE8();
    v7 = a3(a1, &type metadata for PuzzleRevealData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B5E114(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217B5DE3C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B5E180()
{
  result = qword_27CBA03D0;
  if (!qword_27CBA03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03D0);
  }

  return result;
}

unint64_t sub_217B5E1D8()
{
  result = qword_2811C4D68;
  if (!qword_2811C4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D68);
  }

  return result;
}

unint64_t sub_217B5E230()
{
  result = qword_2811C4D70;
  if (!qword_2811C4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D70);
  }

  return result;
}

uint64_t sub_217B5E2B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_217B5E310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_217B5E384()
{
  result = qword_27CBA03D8;
  if (!qword_27CBA03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03D8);
  }

  return result;
}

unint64_t sub_217B5E3DC()
{
  result = qword_27CBA03E0;
  if (!qword_27CBA03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03E0);
  }

  return result;
}

unint64_t sub_217B5E434()
{
  result = qword_27CBA03E8;
  if (!qword_27CBA03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03E8);
  }

  return result;
}

uint64_t FeedGroupLayoutFailureDiagnosticsData.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedGroupLayoutFailureDiagnosticsData.message.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B5E538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

uint64_t sub_217B5E5C0(uint64_t a1)
{
  v2 = sub_217B5E784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B5E5FC(uint64_t a1)
{
  v2 = sub_217B5E784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutFailureDiagnosticsData.encode(to:)(void *a1)
{
  sub_217B5E95C(0, &qword_27CBA03F0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5E784();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B5E784()
{
  result = qword_27CBA03F8;
  if (!qword_27CBA03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA03F8);
  }

  return result;
}

uint64_t FeedGroupLayoutFailureDiagnosticsData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B5E95C(0, &qword_27CBA0400, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5E784();
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

void sub_217B5E95C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B5E784();
    v7 = a3(a1, &type metadata for FeedGroupLayoutFailureDiagnosticsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B5E9C4()
{
  result = qword_27CBA0408;
  if (!qword_27CBA0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0408);
  }

  return result;
}

unint64_t sub_217B5EA1C()
{
  result = qword_27CBA0410;
  if (!qword_27CBA0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0410);
  }

  return result;
}

uint64_t sub_217B5EA88(void *a1)
{
  sub_217B5E95C(0, &qword_27CBA03F0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B5E784();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B5EBF8()
{
  result = qword_27CBA0418;
  if (!qword_27CBA0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0418);
  }

  return result;
}

unint64_t sub_217B5EC50()
{
  result = qword_27CBA0420;
  if (!qword_27CBA0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0420);
  }

  return result;
}

unint64_t sub_217B5ECA8()
{
  result = qword_27CBA0428;
  if (!qword_27CBA0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0428);
  }

  return result;
}

uint64_t sub_217B5EDC4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0460);
  __swift_project_value_buffer(v0, qword_27CBA0460);
  return sub_217D8866C();
}

uint64_t PuzzleViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PuzzleViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 20);
  sub_217B60198(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 20);
  sub_217B60198(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 24);
  sub_217B60198(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 24);
  sub_217B60198(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 28);
  sub_217B60198(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 28);
  sub_217B60198(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 32);
  sub_217B60198(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 32);
  sub_217B60198(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 36);
  sub_217B60198(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 36);
  sub_217B60198(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 40);
  sub_217B60198(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 40);
  sub_217B60198(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 44);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 48);
  sub_217B60198(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 48);
  sub_217B60198(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 52);
  sub_217B60198(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 52);
  sub_217B60198(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 56);
  sub_217B60198(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 56);
  sub_217B60198(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.puzzleRevealData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 60);
  sub_217B60198(0, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230, &type metadata for PuzzleRevealData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleViewEvent.puzzleRevealData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 60);
  sub_217B60198(0, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230, &type metadata for PuzzleRevealData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.puzzleStatsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 64);
  sub_217B60198(0, &qword_2811C86E0, sub_217B2D930, sub_217B2D988, &type metadata for PuzzleStatsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B60198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t PuzzleViewEvent.puzzleStatsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleViewEvent(0) + 64);
  sub_217B60198(0, &qword_2811C86E0, sub_217B2D930, sub_217B2D988, &type metadata for PuzzleStatsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PuzzleViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PuzzleViewEvent(0);
  v5 = v4[5];
  sub_217B60198(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B60198(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217B60198(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217B60198(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217B60198(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217B60198(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_217A608E0(0);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217B60198(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217B60198(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217B60198(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217B60198(0, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230, &type metadata for PuzzleRevealData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217B60198(0, &qword_2811C86E0, sub_217B2D930, sub_217B2D988, &type metadata for PuzzleStatsData);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v10, v29);
}

uint64_t PuzzleViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PuzzleViewEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 24));
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

void PuzzleViewEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 28));
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

uint64_t PuzzleViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PuzzleViewEvent.Model.userChannelContextData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for PuzzleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t PuzzleViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 40));
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

uint64_t sub_217B60B80@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 44);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PuzzleViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PuzzleViewEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t PuzzleViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 52);
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

uint64_t PuzzleViewEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for PuzzleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t PuzzleViewEvent.Model.puzzleRevealData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 60));
}

uint64_t PuzzleViewEvent.Model.puzzleStatsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleViewEvent.Model(0) + 64);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  return sub_217B60D8C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_217B60D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

__n128 PuzzleViewEvent.Model.init(eventData:viewData:puzzleData:channelData:feedData:userChannelContextData:groupData:timedData:feedPositionData:userBundleSubscriptionContextData:paywallData:puzzleRevealData:puzzleStatsData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int *a10, uint64_t a11, __int16 *a12, uint64_t *a13, uint64_t a14)
{
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 8);
  v44 = *(a4 + 4);
  v46 = *a5;
  v45 = *(a5 + 2);
  v47 = *a6;
  v49 = *(a10 + 4);
  v50 = *a10;
  v52 = *a12;
  v53 = *a13;
  v56 = *(a14 + 40);
  v57 = *(a14 + 32);
  v55 = *(a14 + 48);
  v22 = sub_217D8899C();
  v51 = *a14;
  v48 = *(a14 + 16);
  v42 = a4[1];
  v43 = *a4;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for PuzzleViewEvent.Model(0);
  v24 = a9 + v23[5];
  *v24 = v19;
  *(v24 + 8) = v20;
  *(v24 + 16) = v21;
  v25 = (a9 + v23[6]);
  v26 = a3[3];
  v25[2] = a3[2];
  v25[3] = v26;
  v25[4] = a3[4];
  v27 = a3[1];
  *v25 = *a3;
  v25[1] = v27;
  v28 = a9 + v23[7];
  *v28 = v43;
  *(v28 + 16) = v42;
  *(v28 + 32) = v44;
  v29 = a9 + v23[8];
  *v29 = v46;
  *(v29 + 16) = v45;
  *(a9 + v23[9]) = v47;
  v30 = (a9 + v23[10]);
  v31 = a7[7];
  v30[6] = a7[6];
  v30[7] = v31;
  v30[8] = a7[8];
  v32 = a7[3];
  v30[2] = a7[2];
  v30[3] = v32;
  v33 = a7[5];
  v30[4] = a7[4];
  v30[5] = v33;
  v34 = a7[1];
  *v30 = *a7;
  v30[1] = v34;
  v35 = v23[11];
  v36 = sub_217D889CC();
  (*(*(v36 - 8) + 32))(a9 + v35, a8, v36);
  v37 = a9 + v23[12];
  *v37 = v50;
  *(v37 + 4) = v49;
  v38 = a9 + v23[13];
  v39 = *(a11 + 16);
  *v38 = *a11;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a11 + 32);
  *(v38 + 48) = *(a11 + 48);
  *(a9 + v23[14]) = v52;
  *(a9 + v23[15]) = v53;
  v40 = a9 + v23[16];
  result = v51;
  *v40 = v51;
  *(v40 + 16) = v48;
  *(v40 + 32) = v57;
  *(v40 + 40) = v56;
  *(v40 + 48) = v55;
  return result;
}

uint64_t sub_217B61000(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 2003134838;
      return v3 | 0x6174614400000000;
    case 2:
      return 0x6144656C7A7A7570;
    case 3:
      v4 = 0x656E6E616863;
      goto LABEL_14;
    case 4:
      v3 = 1684366694;
      return v3 | 0x6174614400000000;
    case 5:
      return 0xD000000000000016;
    case 6:
      return 0x74614470756F7267;
    case 7:
      return 0x74614464656D6974;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0xD000000000000021;
    case 10:
      v4 = 0x6C6177796170;
LABEL_14:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x7453656C7A7A7570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B61178@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B63300(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B611A0(uint64_t a1)
{
  v2 = sub_217B619F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B611DC(uint64_t a1)
{
  v2 = sub_217B619F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B625AC(0, &qword_27CBA0478, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B619F4();
  sub_217D89E7C();
  LOBYTE(v85) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for PuzzleViewEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v109 = v12;
    v110 = v13;
    v111 = v11;
    v108 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[2];
    v16 = *v14;
    v104 = v14[1];
    v105 = v15;
    v17 = v14[2];
    v18 = v14[4];
    v106 = v14[3];
    v107 = v18;
    v19 = *v14;
    v100 = v17;
    v101 = v106;
    v102 = v14[4];
    v103 = v19;
    v98 = v16;
    v99 = v104;
    v97 = 2;
    sub_217AD85B8(&v103, &v85);
    sub_217AD6D08();
    sub_217D89CAC();
    v96[2] = v100;
    v96[3] = v101;
    v96[4] = v102;
    v96[0] = v98;
    v96[1] = v99;
    sub_217AD9650(v96);
    v20 = (v3 + v10[7]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    *&v85 = *v20;
    *(&v85 + 1) = v21;
    *&v86 = v22;
    *(&v86 + 1) = v23;
    *&v87 = v24;
    LOBYTE(v76) = 3;
    sub_217AD86BC(v85, v21, v22, v23, v24);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v85, *(&v85 + 1), v86, *(&v86 + 1), v87);
    v25 = (v3 + v10[8]);
    v26 = v25[1];
    v27 = v25[2];
    *&v85 = *v25;
    *(&v85 + 1) = v26;
    *&v86 = v27;
    LOBYTE(v76) = 4;
    sub_217AD1A68(v85, v26, v27);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v85, *(&v85 + 1), v86);
    v95 = *(v3 + v10[9]);
    v94 = 5;
    sub_217ACFB8C();
    sub_217D89C3C();
    v28 = (v3 + v10[10]);
    v29 = v28[6];
    v30 = v28[4];
    v90 = v28[5];
    v91 = v29;
    v31 = v28[6];
    v32 = v28[8];
    v92 = v28[7];
    v93 = v32;
    v33 = v28[2];
    v34 = *v28;
    v86 = v28[1];
    v87 = v33;
    v35 = v28[2];
    v36 = v28[4];
    v88 = v28[3];
    v89 = v36;
    v37 = *v28;
    v82 = v31;
    v83 = v92;
    v84 = v28[8];
    v85 = v37;
    v78 = v35;
    v79 = v88;
    v80 = v30;
    v81 = v90;
    v76 = v34;
    v77 = v86;
    v75 = 6;
    sub_217AD87FC(&v85, v74);
    sub_217A5D3B4();
    sub_217D89C3C();
    v74[6] = v82;
    v74[7] = v83;
    v74[8] = v84;
    v74[2] = v78;
    v74[3] = v79;
    v74[4] = v80;
    v74[5] = v81;
    v74[0] = v76;
    v74[1] = v77;
    sub_217AD96E8(v74);
    v112 = v10[11];
    LOBYTE(v69[0]) = 7;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v38 = (v3 + v10[12]);
    v39 = *v38;
    LOBYTE(v38) = *(v38 + 4);
    v72 = v39;
    v73 = v38;
    v71 = 8;
    sub_217AD7710();
    sub_217D89C3C();
    v40 = (v3 + v10[13]);
    v41 = v40[1];
    v69[0] = *v40;
    v69[1] = v41;
    v43 = *v40;
    v42 = v40[1];
    v69[2] = v40[2];
    v70 = *(v40 + 48);
    v65 = v43;
    v44 = v40[2];
    v66 = v42;
    v67 = v44;
    v68 = *(v40 + 48);
    v64 = 9;
    sub_217ACC004(v69, v62);
    sub_217A55B98();
    sub_217D89CAC();
    v62[0] = v65;
    v62[1] = v66;
    v62[2] = v67;
    v63 = v68;
    sub_217ACC69C(v62);
    LOWORD(v54) = *(v3 + v10[14]);
    v61 = 10;
    sub_217B1DEE8();
    sub_217D89C3C();
    v54 = *(v3 + v10[15]);
    v61 = 11;
    sub_217B5E230();

    sub_217D89CAC();

    v45 = v3 + v10[16];
    v46 = *(v45 + 8);
    v47 = *(v45 + 16);
    v48 = *(v45 + 24);
    v49 = *(v45 + 32);
    v50 = *(v45 + 40);
    v51 = *(v45 + 48);
    v54 = *v45;
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v61 = 12;
    sub_217B60D8C(v54, v46, v47, v48, v49, v50);
    sub_217B2D988();
    sub_217D89C3C();
    sub_217B61A48(v54, v55, v56, v57, v58, v59);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B619F4()
{
  result = qword_27CBA0480;
  if (!qword_27CBA0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0480);
  }

  return result;
}

uint64_t sub_217B61A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

void PuzzleViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_217D889CC();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B625AC(0, &qword_27CBA0488, MEMORY[0x277D844C8]);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for PuzzleViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B619F4();
  v54 = v9;
  v13 = v55;
  sub_217D89E5C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v55 = v10;
    v45 = v12;
    LOBYTE(v69) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v14 = v51;
    sub_217D89BCC();
    v15 = *(v50 + 32);
    v16 = v45;
    v51 = v5;
    v15(v45, v14, v5);
    LOBYTE(v64) = 1;
    sub_217A5E738();
    sub_217D89BCC();
    v44 = 0;
    v17 = *(&v69 + 1);
    v18 = v70;
    v19 = v55;
    v20 = &v16[v55[5]];
    *v20 = v69;
    *(v20 + 1) = v17;
    *(v20 + 8) = v18;
    v81 = 2;
    sub_217AD6CB4();
    sub_217D89BCC();
    v21 = &v16[v19[6]];
    v22 = v67;
    *(v21 + 2) = v66;
    *(v21 + 3) = v22;
    *(v21 + 4) = v68;
    v23 = v65;
    *v21 = v64;
    *(v21 + 1) = v23;
    LOBYTE(v60) = 3;
    sub_217AD07F8();
    sub_217D89B5C();
    v24 = v71;
    v25 = &v16[v19[7]];
    v26 = v70;
    *v25 = v69;
    *(v25 + 1) = v26;
    *(v25 + 4) = v24;
    LOBYTE(v60) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v27 = v70;
    v28 = &v16[v19[8]];
    *v28 = v69;
    *(v28 + 2) = v27;
    LOBYTE(v60) = 5;
    sub_217ACFB38();
    sub_217D89B5C();
    *&v16[v19[9]] = v69;
    v80 = 6;
    sub_217A5D308();
    sub_217D89B5C();
    v29 = &v16[v19[10]];
    v30 = v76;
    *(v29 + 6) = v75;
    *(v29 + 7) = v30;
    *(v29 + 8) = v77;
    v31 = v72;
    *(v29 + 2) = v71;
    *(v29 + 3) = v31;
    v32 = v74;
    *(v29 + 4) = v73;
    *(v29 + 5) = v32;
    v33 = v70;
    *v29 = v69;
    *(v29 + 1) = v33;
    LOBYTE(v60) = 7;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v34 = v49;
    sub_217D89BCC();
    (*(v48 + 32))(&v16[v19[11]], v47, v34);
    LOBYTE(v56) = 8;
    sub_217AD76BC();
    sub_217D89B5C();
    v35 = BYTE4(v60);
    v36 = &v16[v55[12]];
    *v36 = v60;
    v36[4] = v35;
    v79 = 9;
    sub_217A54D08();
    sub_217D89BCC();
    v37 = &v45[v55[13]];
    v38 = v61;
    *v37 = v60;
    *(v37 + 1) = v38;
    *(v37 + 2) = v62;
    v37[48] = v63;
    v78 = 10;
    sub_217B1DE94();
    sub_217D89B5C();
    *&v45[v55[14]] = v56;
    v78 = 11;
    sub_217B5E1D8();
    sub_217D89BCC();
    *&v45[v55[15]] = v56;
    v78 = 12;
    sub_217B2D930();
    sub_217D89B5C();
    (*(v52 + 8))(v54, v53);
    v39 = v59;
    v41 = v45;
    v40 = v46;
    v42 = &v45[v55[16]];
    v43 = v57;
    *v42 = v56;
    *(v42 + 1) = v43;
    *(v42 + 2) = v58;
    v42[48] = v39;
    sub_217B62610(v41, v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217B62674(v41);
  }
}

void sub_217B625AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B619F4();
    v7 = a3(a1, &type metadata for PuzzleViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B62610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B62674(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B627A8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B60198(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B60198(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217B60198(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217B60198(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217B60198(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217B60198(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_217A608E0(0);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217B60198(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217B60198(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217B60198(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217B60198(0, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230, &type metadata for PuzzleRevealData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217B60198(0, &qword_2811C86E0, sub_217B2D930, sub_217B2D988, &type metadata for PuzzleStatsData);
  v31 = *(*(v30 - 8) + 104);

  return v31(a2 + v29, v11, v30);
}

void sub_217B62DCC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B60198(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217B60198(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
      if (v3 <= 0x3F)
      {
        sub_217B60198(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217B60198(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217B60198(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
            if (v6 <= 0x3F)
            {
              sub_217B60198(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_217A608E0(319);
                if (v8 <= 0x3F)
                {
                  sub_217B60198(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217B60198(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217B60198(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
                      if (v11 <= 0x3F)
                      {
                        sub_217B60198(319, &qword_2811C86A8, sub_217B5E1D8, sub_217B5E230, &type metadata for PuzzleRevealData);
                        if (v12 <= 0x3F)
                        {
                          sub_217B60198(319, &qword_2811C86E0, sub_217B2D930, sub_217B2D988, &type metadata for PuzzleStatsData);
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

unint64_t sub_217B631FC()
{
  result = qword_27CBA0490;
  if (!qword_27CBA0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0490);
  }

  return result;
}

unint64_t sub_217B63254()
{
  result = qword_27CBA0498;
  if (!qword_27CBA0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0498);
  }

  return result;
}

unint64_t sub_217B632AC()
{
  result = qword_27CBA04A0;
  if (!qword_27CBA04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04A0);
  }

  return result;
}

uint64_t sub_217B63300(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCDEF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7453656C7A7A7570 && a2 == 0xEF61746144737461)
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

NewsAnalytics::SearchResultsSource_optional __swiftcall SearchResultsSource.init(rawValue:)(Swift::String rawValue)
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

unint64_t SearchResultsSource.rawValue.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x73757361676570;
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

uint64_t sub_217B637FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000217DCAC40;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000217DCAC40;
  }

  else
  {
    v3 = 0x73757361676570;
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
    v8 = 0x73757361676570;
    v4 = 0xE700000000000000;
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

unint64_t sub_217B638FC()
{
  result = qword_27CBA04A8;
  if (!qword_27CBA04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04A8);
  }

  return result;
}

uint64_t sub_217B63950()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B639F8(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B63A8C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B63B3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000217DCAC40;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x73757361676570;
    v4 = 0xE700000000000000;
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

unint64_t sub_217B63C50()
{
  result = qword_27CBA04B0;
  if (!qword_27CBA04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04B0);
  }

  return result;
}

uint64_t sub_217B63CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
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

uint64_t sub_217B63D84(uint64_t a1)
{
  v2 = sub_217B63F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B63DC0(uint64_t a1)
{
  v2 = sub_217B63F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InGroupPositionData.encode(to:)(void *a1)
{
  sub_217B64118(0, &qword_2811BC678, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B63F44();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B63F44()
{
  result = qword_2811C2A00;
  if (!qword_2811C2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A00);
  }

  return result;
}

uint64_t InGroupPositionData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B64118(0, &qword_2811BC9F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B63F44();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B64118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B63F44();
    v7 = a3(a1, &type metadata for InGroupPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B6419C(void *a1)
{
  sub_217B64118(0, &qword_2811BC678, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B63F44();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B64308()
{
  result = qword_27CBA04B8;
  if (!qword_27CBA04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04B8);
  }

  return result;
}

unint64_t sub_217B64360()
{
  result = qword_2811C29F0;
  if (!qword_2811C29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29F0);
  }

  return result;
}

unint64_t sub_217B643B8()
{
  result = qword_2811C29F8;
  if (!qword_2811C29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29F8);
  }

  return result;
}

uint64_t sub_217B644D4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA04C0);
  __swift_project_value_buffer(v0, qword_27CBA04C0);
  return sub_217D8866C();
}

uint64_t WebEmbedLoadEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedLoadEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 24);
  sub_217B64E88(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 24);
  sub_217B64E88(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 28);
  sub_217B64E88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 28);
  sub_217B64E88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 32);
  sub_217B64E88(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 32);
  sub_217B64E88(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 36);
  sub_217B64E88(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 36);
  sub_217B64E88(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.webEmbedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 40);
  sub_217B64E88(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B64E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t WebEmbedLoadEvent.webEmbedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadEvent(0) + 40);
  sub_217B64E88(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for WebEmbedLoadEvent(0);
  v5 = Event[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217B64E88(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = Event[7];
  sub_217B64E88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = Event[8];
  sub_217B64E88(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = Event[9];
  sub_217B64E88(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = Event[10];
  sub_217B64E88(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t sub_217B65378@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WebEmbedLoadEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadEvent.Model(0) + 24));
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

uint64_t WebEmbedLoadEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t WebEmbedLoadEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WebEmbedLoadEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WebEmbedLoadEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WebEmbedLoadEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WebEmbedLoadEvent.Model.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 WebEmbedLoadEvent.Model.init(eventData:timedData:groupData:feedData:feedPositionData:inGroupPositionData:webEmbedData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, int *a5@<X4>, int *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v31 = *a4;
  v12 = a4[1].n128_u64[0];
  v13 = *a5;
  v14 = *(a5 + 4);
  v15 = *a6;
  v16 = *(a6 + 4);
  v32 = a7[1];
  v33 = *a7;
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a8, a1, v17);
  v18 = type metadata accessor for WebEmbedLoadEvent.Model(0);
  v19 = v18[5];
  v20 = sub_217D889CC();
  (*(*(v20 - 8) + 32))(a8 + v19, a2, v20);
  v21 = (a8 + v18[6]);
  v22 = a3[7];
  v21[6] = a3[6];
  v21[7] = v22;
  v21[8] = a3[8];
  v23 = a3[3];
  v21[2] = a3[2];
  v21[3] = v23;
  v24 = a3[5];
  v21[4] = a3[4];
  v21[5] = v24;
  v25 = a3[1];
  *v21 = *a3;
  v21[1] = v25;
  v26 = (a8 + v18[7]);
  result = v31;
  *v26 = v31;
  v26[1].n128_u64[0] = v12;
  v28 = a8 + v18[8];
  *v28 = v13;
  *(v28 + 4) = v14;
  v29 = a8 + v18[9];
  *v29 = v15;
  *(v29 + 4) = v16;
  v30 = (a8 + v18[10]);
  *v30 = v33;
  v30[1] = v32;
  return result;
}

unint64_t sub_217B65744()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x6465626D45626577;
  }

  v4 = 0x6174614464656566;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 1)
  {
    v5 = 0x74614470756F7267;
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

uint64_t sub_217B6582C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B66FA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B65854(uint64_t a1)
{
  v2 = sub_217B65D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B65890(uint64_t a1)
{
  v2 = sub_217B65D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B665D0(0, &qword_27CBA04D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B65D58();
  sub_217D89E7C();
  LOBYTE(v46) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for WebEmbedLoadEvent.Model(0);
    v55[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[6];
    v13 = v11[4];
    v51 = v11[5];
    v52 = v12;
    v14 = v11[6];
    v15 = v11[8];
    v53 = v11[7];
    v54 = v15;
    v16 = v11[2];
    v17 = *v11;
    v47 = v11[1];
    v48 = v16;
    v18 = v11[2];
    v19 = v11[4];
    v49 = v11[3];
    v50 = v19;
    v20 = *v11;
    v43 = v14;
    v44 = v53;
    v45 = v11[8];
    v46 = v20;
    v39 = v18;
    v40 = v49;
    v41 = v13;
    v42 = v51;
    v37 = v17;
    v38 = v47;
    v36 = 2;
    sub_217AD87FC(&v46, v35);
    sub_217A5D3B4();
    sub_217D89C3C();
    v35[7] = v44;
    v35[8] = v45;
    v35[2] = v39;
    v35[3] = v40;
    v35[5] = v42;
    v35[6] = v43;
    v35[4] = v41;
    v35[0] = v37;
    v35[1] = v38;
    sub_217AD96E8(v35);
    v21 = (v3 + v10[7]);
    v22 = v21[1];
    v23 = v21[2];
    v32 = *v21;
    v33 = v22;
    v34 = v23;
    HIBYTE(v31) = 3;
    sub_217AD1A68(v32, v22, v23);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v32, v33, v34);
    v24 = (v3 + v10[8]);
    v25 = *v24;
    LOBYTE(v24) = *(v24 + 4);
    LODWORD(v32) = v25;
    BYTE4(v32) = v24;
    HIBYTE(v31) = 4;
    sub_217AD7710();
    sub_217D89C3C();
    v26 = (v3 + v10[9]);
    v27 = *v26;
    LOBYTE(v26) = *(v26 + 4);
    LODWORD(v32) = v27;
    BYTE4(v32) = v26;
    HIBYTE(v31) = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v28 = (v3 + v10[10]);
    v29 = v28[1];
    v32 = *v28;
    v33 = v29;
    HIBYTE(v31) = 6;
    sub_217AE89C8();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B65D58()
{
  result = qword_27CBA04E0;
  if (!qword_27CBA04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA04E0);
  }

  return result;
}

uint64_t WebEmbedLoadEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v38 = sub_217D889CC();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B665D0(0, &qword_27CBA04E8, MEMORY[0x277D844C8]);
  v40 = v7;
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for WebEmbedLoadEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B65D58();
  v42 = v9;
  v13 = v56;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v12;
  v15 = v38;
  LOBYTE(v47) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v16 = *(v37 + 32);
  v56 = v5;
  v16(v14, v41, v5);
  LOBYTE(v47) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  v41 = 0;
  (*(v36 + 32))(&v14[v10[5]], v4, v15);
  v46 = 2;
  sub_217A5D308();
  sub_217D89B5C();
  v17 = v14;
  v18 = &v14[v10[6]];
  v19 = v54;
  *(v18 + 6) = v53;
  *(v18 + 7) = v19;
  *(v18 + 8) = v55;
  v20 = v50;
  *(v18 + 2) = v49;
  *(v18 + 3) = v20;
  v21 = v52;
  *(v18 + 4) = v51;
  *(v18 + 5) = v21;
  v22 = v48;
  *v18 = v47;
  *(v18 + 1) = v22;
  v43 = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v23 = v10;
  v24 = v45;
  v25 = v17 + v10[7];
  *v25 = v44;
  *(v25 + 16) = v24;
  v43 = 4;
  sub_217AD76BC();
  sub_217D89B5C();
  v26 = v39;
  v27 = BYTE4(v44);
  v28 = v17 + v23[8];
  *v28 = v44;
  *(v28 + 4) = v27;
  v43 = 5;
  sub_217B4FFA8();
  sub_217D89B5C();
  v29 = BYTE4(v44);
  v30 = v17 + v23[9];
  *v30 = v44;
  *(v30 + 4) = v29;
  v43 = 6;
  sub_217AE8974();
  sub_217D89BCC();
  (*(v26 + 8))(v42, v40);
  v31 = *(&v44 + 1);
  v32 = (v17 + v23[10]);
  *v32 = v44;
  v32[1] = v31;
  sub_217B66634(v17, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B66698(v17);
}