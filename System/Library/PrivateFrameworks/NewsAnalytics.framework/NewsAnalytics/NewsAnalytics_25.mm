unint64_t sub_217D12FF0()
{
  result = qword_2811BD2E0;
  if (!qword_2811BD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2E0);
  }

  return result;
}

uint64_t sub_217D1310C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4B60);
  __swift_project_value_buffer(v0, qword_27CBA4B60);
  return sub_217D8866C();
}

uint64_t WebAccessEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebAccessEvent.userActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 20);
  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.userActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 20);
  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.emailShareResultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 24);
  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680, &type metadata for EmailShareResultData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.emailShareResultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 24);
  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680, &type metadata for EmailShareResultData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 28);
  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 28);
  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 32);
  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 32);
  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 36);
  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 36);
  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 40);
  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 40);
  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 44);
  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 44);
  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 48);
  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D13EE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t WebAccessEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 48);
  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebAccessEvent(0);
  v5 = v4[5];
  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680, &type metadata for EmailShareResultData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t WebAccessEvent.Model.userActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WebAccessEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t WebAccessEvent.Model.emailShareResultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WebAccessEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WebAccessEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebAccessEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 32);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t WebAccessEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 36);
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

uint64_t WebAccessEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t WebAccessEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebAccessEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 48);
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

__n128 WebAccessEvent.Model.init(eventData:userActionData:emailShareResultData:tagData:sectionData:articleData:feedData:purchaseSessionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = *a2;
  v14 = *a3;
  v16 = *a4;
  v15 = a4[1];
  v33 = *a5;
  v17 = *(a5 + 2);
  v18 = *(a5 + 24);
  v35 = *a7;
  v34 = *(a7 + 2);
  v36 = a8[1];
  v37 = *a8;
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for WebAccessEvent.Model(0);
  *(a9 + v20[5]) = v13;
  *(a9 + v20[6]) = v14;
  v21 = (a9 + v20[7]);
  *v21 = v16;
  v21[1] = v15;
  v22 = a9 + v20[8];
  *v22 = v33;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  v23 = a9 + v20[9];
  v24 = *(a6 + 48);
  *(v23 + 32) = *(a6 + 32);
  *(v23 + 48) = v24;
  v25 = *(a6 + 16);
  *v23 = *a6;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a6 + 127);
  v26 = *(a6 + 112);
  *(v23 + 96) = *(a6 + 96);
  *(v23 + 112) = v26;
  v27 = *(a6 + 80);
  *(v23 + 64) = *(a6 + 64);
  *(v23 + 80) = v27;
  v28 = a9 + v20[10];
  *v28 = v35;
  *(v28 + 16) = v34;
  v29 = (a9 + v20[11]);
  *v29 = v37;
  v29[1] = v36;
  v30 = a9 + v20[12];
  v31 = *(a10 + 16);
  *v30 = *a10;
  *(v30 + 16) = v31;
  result = *(a10 + 32);
  *(v30 + 32) = result;
  *(v30 + 48) = *(a10 + 48);
  return result;
}

unint64_t sub_217D14914(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    if (a1 == 2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x61746144676174;
    }

    if (a1)
    {
      v5 = 0x6974634172657375;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6174614464656566;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0xD000000000000021;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x446E6F6974636573;
    if (a1 != 4)
    {
      v3 = 0x44656C6369747261;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217D14A60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D1653C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D14A88(uint64_t a1)
{
  v2 = sub_217D1508C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D14AC4(uint64_t a1)
{
  v2 = sub_217D1508C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebAccessEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D15944(0, &qword_27CBA4B88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1508C();
  sub_217D89E7C();
  LOBYTE(v59[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for WebAccessEvent.Model(0);
    LOBYTE(v59[0]) = *(v3 + v10[5]);
    LOBYTE(v51) = 1;
    sub_217C810B4();
    sub_217D89CAC();
    LOBYTE(v59[0]) = *(v3 + v10[6]);
    LOBYTE(v51) = 2;
    sub_217B40680();
    sub_217D89CAC();
    v11 = (v3 + v10[7]);
    v12 = v11[1];
    *&v59[0] = *v11;
    *(&v59[0] + 1) = v12;
    LOBYTE(v51) = 3;
    sub_217AF6B14();

    sub_217D89C3C();

    v13 = (v3 + v10[8]);
    v14 = *(v13 + 24);
    v67 = *v13;
    v68 = *(v13 + 1);
    v69 = v14;
    v66 = 4;
    sub_217B17644();

    sub_217D89C3C();

    v15 = v3 + v10[9];
    v16 = *(v15 + 80);
    v17 = *(v15 + 112);
    v64 = *(v15 + 96);
    *v65 = v17;
    v18 = *(v15 + 16);
    v19 = *(v15 + 48);
    v60 = *(v15 + 32);
    v61 = v19;
    v20 = *(v15 + 48);
    v21 = *(v15 + 80);
    v62 = *(v15 + 64);
    v63 = v21;
    v22 = *(v15 + 16);
    v59[0] = *v15;
    v59[1] = v22;
    v23 = *(v15 + 112);
    v57 = v64;
    v58[0] = v23;
    v53 = v60;
    v54 = v20;
    v55 = v62;
    v56 = v16;
    *&v65[15] = *(v15 + 127);
    *(v58 + 15) = *(v15 + 127);
    v51 = v59[0];
    v52 = v18;
    v50 = 5;
    sub_217AFFBC0(v59, v48);
    sub_217ACF52C();
    sub_217D89C3C();
    v48[6] = v57;
    *v49 = v58[0];
    *&v49[15] = *(v58 + 15);
    v48[2] = v53;
    v48[3] = v54;
    v48[4] = v55;
    v48[5] = v56;
    v48[0] = v51;
    v48[1] = v52;
    sub_217B009E0(v48);
    v24 = (v3 + v10[10]);
    v25 = v24[1];
    v26 = v24[2];
    *&v41 = *v24;
    *(&v41 + 1) = v25;
    *&v42 = v26;
    LOBYTE(v37) = 6;
    sub_217AD1A68(v41, v25, v26);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v41, *(&v41 + 1), v42);
    v27 = (v3 + v10[11]);
    v28 = v27[1];
    v46 = *v27;
    v47 = v28;
    v45 = 7;
    sub_217B1E4A0();

    sub_217D89C3C();

    v29 = (v3 + v10[12]);
    v30 = v29[1];
    v41 = *v29;
    v42 = v30;
    v32 = *v29;
    v31 = v29[1];
    v43 = v29[2];
    v44 = *(v29 + 48);
    v37 = v32;
    v38 = v31;
    v39 = v29[2];
    v40 = *(v29 + 48);
    v36 = 8;
    sub_217ACC004(&v41, v34);
    sub_217A55B98();
    sub_217D89CAC();
    v34[0] = v37;
    v34[1] = v38;
    v34[2] = v39;
    v35 = v40;
    sub_217ACC69C(v34);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D1508C()
{
  result = qword_27CBA4B90;
  if (!qword_27CBA4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B90);
  }

  return result;
}

uint64_t WebAccessEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_217D8899C();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D15944(0, &qword_27CBA4B98, MEMORY[0x277D844C8]);
  v34 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for WebAccessEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1508C();
  v50 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v33;
  v13 = v9;
  LOBYTE(v42) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v14 = v34;
  sub_217D89BCC();
  v15 = *(v32 + 32);
  v16 = v35;
  v35 = v4;
  v15(v11, v16);
  LOBYTE(v36) = 1;
  sub_217C8105C();
  sub_217D89BCC();
  v11[v13[5]] = v42;
  LOBYTE(v36) = 2;
  sub_217B40628();
  sub_217D89BCC();
  v11[v13[6]] = v42;
  LOBYTE(v36) = 3;
  sub_217AF6AC0();
  sub_217D89B5C();
  v30 = a1;
  *&v11[v13[7]] = v42;
  LOBYTE(v36) = 4;
  sub_217B175F0();
  sub_217D89B5C();
  v17 = v43;
  v18 = BYTE8(v43);
  v19 = &v11[v13[8]];
  *v19 = v42;
  *(v19 + 2) = v17;
  v19[24] = v18;
  v41 = 5;
  sub_217ACF4D8();
  sub_217D89B5C();
  v20 = &v11[v13[9]];
  v21 = v49[0];
  *(v20 + 6) = v48;
  *(v20 + 7) = v21;
  *(v20 + 127) = *(v49 + 15);
  v22 = v45;
  *(v20 + 2) = v44;
  *(v20 + 3) = v22;
  v23 = v47;
  *(v20 + 4) = v46;
  *(v20 + 5) = v23;
  v24 = v43;
  *v20 = v42;
  *(v20 + 1) = v24;
  v40 = 6;
  sub_217A5B978();
  sub_217D89B5C();
  v25 = v37;
  v26 = &v11[v13[10]];
  *v26 = v36;
  *(v26 + 2) = v25;
  v40 = 7;
  sub_217B1E44C();
  sub_217D89B5C();
  *&v11[v13[11]] = v36;
  v40 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v12 + 8))(v50, v14);
  v27 = &v11[v13[12]];
  v28 = v37;
  *v27 = v36;
  *(v27 + 1) = v28;
  *(v27 + 2) = v38;
  v27[48] = v39;
  sub_217D159A8(v11, v31);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_217D15A0C(v11);
}

void sub_217D15944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D1508C();
    v7 = a3(a1, &type metadata for WebAccessEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D159A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebAccessEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D15A0C(uint64_t a1)
{
  v2 = type metadata accessor for WebAccessEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D15B40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680, &type metadata for EmailShareResultData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

void sub_217D15FBC(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D13EE0(319, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
    if (v2 <= 0x3F)
    {
      sub_217D13EE0(319, &qword_27CBA4B80, sub_217B40628, sub_217B40680, &type metadata for EmailShareResultData);
      if (v3 <= 0x3F)
      {
        sub_217D13EE0(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
        if (v4 <= 0x3F)
        {
          sub_217D13EE0(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
          if (v5 <= 0x3F)
          {
            sub_217D13EE0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
            if (v6 <= 0x3F)
            {
              sub_217D13EE0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
              if (v7 <= 0x3F)
              {
                sub_217D13EE0(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
                if (v8 <= 0x3F)
                {
                  sub_217D13EE0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
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

void sub_217D162D0(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD360, &type metadata for TagData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7C80, &type metadata for SectionData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9F7C8, &type metadata for PurchaseSessionData);
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

unint64_t sub_217D16438()
{
  result = qword_27CBA4BC0;
  if (!qword_27CBA4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4BC0);
  }

  return result;
}

unint64_t sub_217D16490()
{
  result = qword_27CBA4BC8;
  if (!qword_27CBA4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4BC8);
  }

  return result;
}

unint64_t sub_217D164E8()
{
  result = qword_27CBA4BD0;
  if (!qword_27CBA4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4BD0);
  }

  return result;
}

uint64_t sub_217D1653C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2A90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void SessionObserver.subscriptionController(_:didAddTags:changeTags:moveTags:removeTags:subscriptionType:)(void *a1)
{
  if (a1)
  {
    v3 = [*(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext) shortcutList];
    sub_217A54D60(a1, v3);

    sub_217A4DFD8(a1);
    sub_217A4F918(a1);

    SessionObserver.pushNotificationSettingsData()();
  }

  else
  {
    __break(1u);
  }
}

void SessionObserver.shortcutList(_:didAdd:changedShortcuts:removedShortcuts:)(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext) subscriptionController];
  if (v3)
  {
    v4 = v3;
    sub_217A54D60(v3, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_217D16B58()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BE730);
  __swift_project_value_buffer(v0, qword_2811BE730);
  return sub_217D8866C();
}

uint64_t AppLaunchTakeoverTriggerEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppLaunchTakeoverTriggerEvent.altData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLaunchTakeoverTriggerEvent(0) + 20);
  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC, &type metadata for AppLaunchTakeoverTriggerData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppLaunchTakeoverTriggerEvent.altData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppLaunchTakeoverTriggerEvent(0) + 20);
  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC, &type metadata for AppLaunchTakeoverTriggerData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppLaunchTakeoverTriggerEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLaunchTakeoverTriggerEvent(0) + 24);
  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D16F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t AppLaunchTakeoverTriggerEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppLaunchTakeoverTriggerEvent(0) + 24);
  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppLaunchTakeoverTriggerEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppLaunchTakeoverTriggerEvent(0);
  v5 = *(v4 + 20);
  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC, &type metadata for AppLaunchTakeoverTriggerData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = *MEMORY[0x277CEACF0];
  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v7, v8, v9);
}

uint64_t AppLaunchTakeoverTriggerEvent.Model.altData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

void AppLaunchTakeoverTriggerEvent.Model.userBundleSubscriptionContextData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0) + 24);
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

  sub_217C50AA4(v4, v5, v6, v7, v8, v9);
}

__n128 AppLaunchTakeoverTriggerEvent.Model.init(eventData:altData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a3 + 32);
  v11 = *(a3 + 40);
  v12 = *(a3 + 48);
  v13 = sub_217D8899C();
  v18 = *(a3 + 16);
  v19 = *a3;
  (*(*(v13 - 8) + 32))(a4, a1, v13);
  v14 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
  v15 = a4 + *(v14 + 20);
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v9;
  v16 = a4 + *(v14 + 24);
  result = v19;
  *v16 = v19;
  *(v16 + 16) = v18;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(v16 + 48) = v12;
  return result;
}

unint64_t sub_217D173C4()
{
  v1 = 0x61746144746C61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
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

uint64_t sub_217D17428@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D1824C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D17450(uint64_t a1)
{
  v2 = sub_217D1773C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D1748C(uint64_t a1)
{
  v2 = sub_217D1773C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppLaunchTakeoverTriggerEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D17B84(0, &qword_27CBA4CA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1773C();
  sub_217D89E7C();
  LOBYTE(v23) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
    v11 = v3 + *(v10 + 20);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    LOBYTE(v23) = *v11;
    v24 = v12;
    v25 = v13;
    v30 = 1;
    sub_217CFD2EC();

    sub_217D89CAC();

    v14 = v3 + *(v10 + 24);
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    v19 = *(v14 + 40);
    v20 = *(v14 + 48);
    v23 = *v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = 2;
    sub_217C50AA4(v23, v15, v16, v17, v18, v19);
    sub_217A55B98();
    sub_217D89C3C();
    sub_217BC84CC(v23, v24, v25, v26, v27, v28);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D1773C()
{
  result = qword_27CBA4CA8;
  if (!qword_27CBA4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CA8);
  }

  return result;
}

uint64_t AppLaunchTakeoverTriggerEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_217D8899C();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D17B84(0, &qword_27CBA4CB0, MEMORY[0x277D844C8]);
  v29 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1773C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v9;
  v25 = v11;
  v12 = v27;
  v13 = v28;
  v31[0] = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v14 = v29;
  sub_217D89BCC();
  (*(v13 + 32))(v25, v5, v30);
  v34 = 1;
  sub_217CFD294();
  sub_217D89BCC();
  v15 = v24;
  v16 = &v25[*(v24 + 20)];
  *v16 = v31[0];
  *(v16 + 8) = *&v31[8];
  v34 = 2;
  sub_217A54D08();
  sub_217D89B5C();
  (*(v12 + 8))(v8, v14);
  v17 = v33;
  v19 = v25;
  v18 = v26;
  v20 = &v25[*(v15 + 24)];
  v21 = *&v31[16];
  *v20 = *v31;
  *(v20 + 1) = v21;
  *(v20 + 2) = v32;
  v20[48] = v17;
  sub_217D17BE8(v19, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D17C4C(v19);
}

void sub_217D17B84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D1773C();
    v7 = a3(a1, &type metadata for AppLaunchTakeoverTriggerEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D17BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D17C4C(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D17D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC, &type metadata for AppLaunchTakeoverTriggerData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = *MEMORY[0x277CEACF0];
  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v8, v9, v10);
}

void sub_217D17F24(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D16F0C(319, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC, &type metadata for AppLaunchTakeoverTriggerData);
    if (v2 <= 0x3F)
    {
      sub_217D16F0C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217D18058(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D180E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217D180E4()
{
  if (!qword_2811BDCD8)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BDCD8);
    }
  }
}

unint64_t sub_217D18148()
{
  result = qword_27CBA4CC8;
  if (!qword_27CBA4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CC8);
  }

  return result;
}

unint64_t sub_217D181A0()
{
  result = qword_27CBA4CD0;
  if (!qword_27CBA4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CD0);
  }

  return result;
}

unint64_t sub_217D181F8()
{
  result = qword_27CBA4CD8;
  if (!qword_27CBA4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CD8);
  }

  return result;
}

uint64_t sub_217D1824C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144746C61 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

NewsAnalytics::SubscriptionResultType_optional __swiftcall SubscriptionResultType.init(rawValue:)(Swift::String rawValue)
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

uint64_t SubscriptionResultType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6572756C696166;
  v4 = 0x6C65636E6163;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73736563637573;
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

unint64_t sub_217D1847C()
{
  result = qword_27CBA4CE0;
  if (!qword_27CBA4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CE0);
  }

  return result;
}

uint64_t sub_217D184D0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D185B4(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D18684(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D18770(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x6572756C696166;
  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000217DCC720;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73736563637573;
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

unint64_t sub_217D188D0()
{
  result = qword_27CBA4CE8;
  if (!qword_27CBA4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CE8);
  }

  return result;
}

uint64_t LiveActivityData.liveActivityID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LiveActivityData.liveActivityID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217D189E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697463416576696CLL && a2 == 0xEE00444979746976)
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

uint64_t sub_217D18A70(uint64_t a1)
{
  v2 = sub_217D18C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D18AAC(uint64_t a1)
{
  v2 = sub_217D18C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityData.encode(to:)(void *a1)
{
  sub_217D18E0C(0, &qword_27CBA4CF0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D18C34();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D18C34()
{
  result = qword_27CBA4CF8;
  if (!qword_27CBA4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CF8);
  }

  return result;
}

uint64_t LiveActivityData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217D18E0C(0, &qword_27CBA4D00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D18C34();
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

void sub_217D18E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D18C34();
    v7 = a3(a1, &type metadata for LiveActivityData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D18E90(void *a1)
{
  sub_217D18E0C(0, &qword_27CBA4CF0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D18C34();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D19000()
{
  result = qword_27CBA4D08;
  if (!qword_27CBA4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D08);
  }

  return result;
}

unint64_t sub_217D19058()
{
  result = qword_27CBA4D10;
  if (!qword_27CBA4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D10);
  }

  return result;
}

unint64_t sub_217D190B0()
{
  result = qword_27CBA4D18;
  if (!qword_27CBA4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D18);
  }

  return result;
}

uint64_t sub_217D191CC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4D20);
  __swift_project_value_buffer(v0, qword_27CBA4D20);
  return sub_217D8866C();
}

uint64_t WebEmbedLoadFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedLoadFailureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 24);
  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 24);
  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 28);
  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 28);
  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 32);
  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 32);
  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 36);
  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 36);
  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.webEmbedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 40);
  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.webEmbedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 40);
  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 44);
  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D19D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t WebEmbedLoadFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 44);
  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  FailureEvent = type metadata accessor for WebEmbedLoadFailureEvent(0);
  v5 = FailureEvent[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = FailureEvent[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = FailureEvent[7];
  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = FailureEvent[8];
  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = FailureEvent[9];
  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = FailureEvent[10];
  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = FailureEvent[11];
  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t sub_217D1A298@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WebEmbedLoadFailureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadFailureEvent.Model(0) + 24));
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

uint64_t WebEmbedLoadFailureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadFailureEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t WebEmbedLoadFailureEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WebEmbedLoadFailureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WebEmbedLoadFailureEvent.Model.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadFailureEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebEmbedLoadFailureEvent.Model.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebEmbedLoadFailureEvent.Model(0) + 44);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 WebEmbedLoadFailureEvent.Model.init(eventData:timedData:groupData:feedData:feedPositionData:inGroupPositionData:webEmbedData:errorData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, int *a5@<X4>, int *a6@<X5>, uint64_t *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v33 = *a4;
  v13 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 4);
  v16 = *a6;
  v17 = *(a6 + 4);
  v34 = a7[1];
  v35 = *a7;
  v37 = a8[1];
  v38 = *a8;
  v36 = *(a8 + 4);
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  v20 = Failure[5];
  v21 = sub_217D889CC();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + Failure[6]);
  v23 = a3[7];
  v22[6] = a3[6];
  v22[7] = v23;
  v22[8] = a3[8];
  v24 = a3[3];
  v22[2] = a3[2];
  v22[3] = v24;
  v25 = a3[5];
  v22[4] = a3[4];
  v22[5] = v25;
  v26 = a3[1];
  *v22 = *a3;
  v22[1] = v26;
  v27 = a9 + Failure[7];
  *v27 = v33;
  *(v27 + 16) = v13;
  v28 = a9 + Failure[8];
  *v28 = v14;
  *(v28 + 4) = v15;
  v29 = a9 + Failure[9];
  *v29 = v16;
  *(v29 + 4) = v17;
  v30 = (a9 + Failure[10]);
  *v30 = v35;
  v30[1] = v34;
  v31 = a9 + Failure[11];
  result = v37;
  *v31 = v38;
  *(v31 + 16) = v37;
  *(v31 + 32) = v36;
  return result;
}

uint64_t sub_217D1A6F8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6465626D45626577;
  if (v1 != 6)
  {
    v3 = 0x746144726F727265;
  }

  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 2)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_217D1A7F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D1C168(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D1A820(uint64_t a1)
{
  v2 = sub_217D1ADC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D1A85C(uint64_t a1)
{
  v2 = sub_217D1ADC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedLoadFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D1B6C0(0, &qword_27CBA4D38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1ADC0();
  sub_217D89E7C();
  LOBYTE(v48[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
    v58 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + Failure[6]);
    v12 = v11[5];
    v13 = v11[7];
    v53 = v11[6];
    v54 = v13;
    v14 = v11[7];
    v55 = v11[8];
    v15 = v11[1];
    v16 = v11[3];
    v49 = v11[2];
    v50 = v16;
    v17 = v11[3];
    v18 = v11[5];
    v51 = v11[4];
    v52 = v18;
    v19 = v11[1];
    v48[0] = *v11;
    v48[1] = v19;
    v45 = v53;
    v46 = v14;
    v47 = v11[8];
    v41 = v49;
    v42 = v17;
    v43 = v51;
    v44 = v12;
    v39 = v48[0];
    v40 = v15;
    v57 = 2;
    sub_217AD87FC(v48, v38);
    sub_217A5D3B4();
    sub_217D89C3C();
    v38[6] = v45;
    v38[7] = v46;
    v38[8] = v47;
    v38[2] = v41;
    v38[3] = v42;
    v38[4] = v43;
    v38[5] = v44;
    v38[0] = v39;
    v38[1] = v40;
    sub_217AD96E8(v38);
    v20 = (v3 + Failure[7]);
    v21 = v20[1];
    v22 = v20[2];
    v34 = *v20;
    *&v35 = v21;
    *(&v35 + 1) = v22;
    v56 = 3;
    sub_217AD1A68(v34, v21, v22);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v34, v35, *(&v35 + 1));
    v23 = (v3 + Failure[8]);
    v24 = *v23;
    LOBYTE(v23) = *(v23 + 4);
    LODWORD(v34) = v24;
    BYTE4(v34) = v23;
    v56 = 4;
    sub_217AD7710();
    sub_217D89C3C();
    v25 = (v3 + Failure[9]);
    v26 = *v25;
    LOBYTE(v25) = *(v25 + 4);
    LODWORD(v34) = v26;
    BYTE4(v34) = v25;
    v56 = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v27 = (v3 + Failure[10]);
    v28 = v27[1];
    v34 = *v27;
    *&v35 = v28;
    v56 = 6;
    sub_217AE89C8();

    sub_217D89CAC();

    v29 = v3 + Failure[11];
    v30 = *(v29 + 24);
    v31 = *(v29 + 32);
    v34 = *v29;
    v35 = *(v29 + 8);
    v36 = v30;
    v37 = v31;
    v56 = 7;
    sub_217A60BE4();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D1ADC0()
{
  result = qword_27CBA4D40;
  if (!qword_27CBA4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D40);
  }

  return result;
}

uint64_t WebEmbedLoadFailureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v41 = sub_217D889CC();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D1B6C0(0, &qword_27CBA4D48, MEMORY[0x277D844C8]);
  v45 = v7;
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  MEMORY[0x28223BE20](Failure);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1ADC0();
  v44 = v9;
  v13 = v46;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v15 = v40;
  v16 = v41;
  LOBYTE(v50) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v17 = *(v15 + 32);
  v46 = v5;
  v17(v12, v43);
  LOBYTE(v50) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  v43 = 0;
  (*(v39 + 32))(&v12[Failure[5]], v14, v16);
  v60 = 2;
  sub_217A5D308();
  sub_217D89B5C();
  v18 = a1;
  v19 = &v12[Failure[6]];
  v20 = v57;
  *(v19 + 6) = v56;
  *(v19 + 7) = v20;
  *(v19 + 8) = v58;
  v21 = v53;
  *(v19 + 2) = v52;
  *(v19 + 3) = v21;
  v22 = v55;
  *(v19 + 4) = v54;
  *(v19 + 5) = v22;
  v23 = v51;
  *v19 = v50;
  *(v19 + 1) = v23;
  v59 = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v24 = v42;
  v25 = v48;
  v26 = &v12[Failure[7]];
  *v26 = v47;
  *(v26 + 2) = v25;
  v59 = 4;
  sub_217AD76BC();
  sub_217D89B5C();
  v27 = BYTE4(v47);
  v28 = &v12[Failure[8]];
  *v28 = v47;
  v28[4] = v27;
  v59 = 5;
  sub_217B4FFA8();
  sub_217D89B5C();
  v29 = BYTE4(v47);
  v30 = &v12[Failure[9]];
  *v30 = v47;
  v30[4] = v29;
  v59 = 6;
  sub_217AE8974();
  sub_217D89BCC();
  v31 = *(&v47 + 1);
  v32 = &v12[Failure[10]];
  *v32 = v47;
  *(v32 + 1) = v31;
  v59 = 7;
  sub_217A60B90();
  sub_217D89BCC();
  (*(v24 + 8))(v44, v45);
  v33 = v49;
  v34 = &v12[Failure[11]];
  v35 = v48;
  *v34 = v47;
  *(v34 + 1) = v35;
  *(v34 + 4) = v33;
  sub_217D1B724(v12, v38);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_217D1B788(v12);
}

void sub_217D1B6C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D1ADC0();
    v7 = a3(a1, &type metadata for WebEmbedLoadFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D1B724(uint64_t a1, uint64_t a2)
{
  Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 16))(a2, a1, Failure);
  return a2;
}

uint64_t sub_217D1B788(uint64_t a1)
{
  Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 8))(a1, Failure);
  return a1;
}

uint64_t sub_217D1B8BC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217D1BC88(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217D19D30(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217D19D30(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217D19D30(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_217D19D30(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
            if (v6 <= 0x3F)
            {
              sub_217D19D30(319, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
              if (v7 <= 0x3F)
              {
                sub_217D19D30(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
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

void sub_217D1BF14(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C5238, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C29D8, &type metadata for InGroupPositionData);
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

unint64_t sub_217D1C064()
{
  result = qword_27CBA4D60;
  if (!qword_27CBA4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D60);
  }

  return result;
}

unint64_t sub_217D1C0BC()
{
  result = qword_27CBA4D68;
  if (!qword_27CBA4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D68);
  }

  return result;
}

unint64_t sub_217D1C114()
{
  result = qword_27CBA4D70;
  if (!qword_27CBA4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D70);
  }

  return result;
}

uint64_t sub_217D1C168(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061)
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

void __swiftcall DeviceData.init(deviceModel:devicePlatform:osInstallVariant:osVersion:osBundleVersion:)(NewsAnalytics::DeviceData *__return_ptr retstr, Swift::String deviceModel, NewsAnalytics::DevicePlatform devicePlatform, NewsAnalytics::OsInstallVariant osInstallVariant, Swift::String osVersion, Swift::String osBundleVersion)
{
  v6 = *devicePlatform;
  v7 = *osInstallVariant;
  retstr->deviceModel = deviceModel;
  retstr->devicePlatform = v6;
  retstr->osInstallVariant = v7;
  retstr->osVersion = osVersion;
  retstr->osBundleVersion = osBundleVersion;
}

uint64_t DeviceData.deviceModel.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceData.deviceModel.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceData.osVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DeviceData.osVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DeviceData.osBundleVersion.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t DeviceData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_217D1C644@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D1CC2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D1C66C(uint64_t a1)
{
  v2 = sub_217A623F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D1C6A8(uint64_t a1)
{
  v2 = sub_217A623F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217A6201C(0, &qword_2811BCB60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A623F4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v32 = v10;
  LOBYTE(v33) = 1;
  sub_217D1CA40();
  sub_217D89BCC();
  v13 = LOBYTE(v37[0]);
  LOBYTE(v33) = 2;
  sub_217D1CA94();
  sub_217D89BCC();
  v30 = v13;
  v14 = LOBYTE(v37[0]);
  LOBYTE(v37[0]) = 3;
  v15 = sub_217D89B8C();
  v31 = v16;
  v29 = v15;
  v46 = 4;
  v17 = sub_217D89B8C();
  v18 = v9;
  v20 = v19;
  (*(v7 + 8))(v18, v6);
  v21 = v14;
  v28 = v14;
  v22 = v32;
  *&v33 = v32;
  *(&v33 + 1) = v12;
  v23 = v30;
  LOBYTE(v34) = v30;
  BYTE1(v34) = v21;
  *(&v34 + 2) = v47;
  WORD3(v34) = v48;
  v24 = v29;
  *(&v34 + 1) = v29;
  *&v35 = v31;
  *(&v35 + 1) = v17;
  v36 = v20;
  *(a2 + 48) = v20;
  v25 = v35;
  *(a2 + 16) = v34;
  *(a2 + 32) = v25;
  *a2 = v33;
  sub_217A61B90(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v22;
  v37[1] = v12;
  v38 = v23;
  v39 = v28;
  v40 = v47;
  v41 = v48;
  v42 = v24;
  v43 = v31;
  v44 = v17;
  v45 = v20;
  return sub_217D1CAE8(v37);
}

unint64_t sub_217D1CA40()
{
  result = qword_2811C70C0;
  if (!qword_2811C70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70C0);
  }

  return result;
}

unint64_t sub_217D1CA94()
{
  result = qword_2811C4F18;
  if (!qword_2811C4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4F18);
  }

  return result;
}

uint64_t sub_217D1CB30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_217D1CB78(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_217D1CBD8()
{
  result = qword_27CBA4D78;
  if (!qword_27CBA4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D78);
  }

  return result;
}

uint64_t sub_217D1CC2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2BA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
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

uint64_t sub_217D1CEC8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BF450);
  __swift_project_value_buffer(v0, qword_2811BF450);
  return sub_217D8866C();
}

uint64_t ANFComponentExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ANFComponentExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 24);
  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 24);
  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 28);
  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 28);
  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 32);
  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 32);
  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 36);
  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 36);
  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 40);
  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 40);
  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 44);
  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 44);
  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 48);
  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 48);
  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 52);
  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D1DD8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ANFComponentExposureEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 52);
  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ANFComponentExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v16, v19);
  v20 = v4[12];
  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t sub_217D1E3E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ANFComponentExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 24);
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

uint64_t ANFComponentExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 28);
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

uint64_t ANFComponentExposureEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 32));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_217C83BD4(v9, &v8);
}

uint64_t ANFComponentExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 36));
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

void ANFComponentExposureEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 40));
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

uint64_t ANFComponentExposureEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ANFComponentExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ANFComponentExposureEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 52);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

void *ANFComponentExposureEvent.Model.init(eventData:timedData:articleData:channelData:anfComponentData:userBundleSubscriptionContextData:issueData:issueViewData:viewData:articleScienceData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, const void *a11)
{
  v19 = *a4;
  v18 = a4[1];
  v20 = *(a4 + 16);
  v43 = *(a4 + 17);
  v41 = a4[4];
  v42 = a4[3];
  v46 = a8[1];
  v47 = *a8;
  v49 = a10[1];
  v50 = *a10;
  v48 = *(a10 + 8);
  v21 = sub_217D8899C();
  v44 = a7[1];
  v45 = *a7;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ANFComponentExposureEvent.Model(0);
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
  *(v30 + 8) = v18;
  *(v30 + 16) = v20;
  *(v30 + 17) = v43;
  *(v30 + 24) = v42;
  *(v30 + 32) = v41;
  v31 = (a9 + v22[8]);
  v32 = a5[1];
  *v31 = *a5;
  v31[1] = v32;
  v33 = a5[3];
  v31[2] = a5[2];
  v31[3] = v33;
  v34 = a9 + v22[9];
  v35 = *(a6 + 16);
  *v34 = *a6;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a6 + 32);
  *(v34 + 48) = *(a6 + 48);
  v36 = (a9 + v22[10]);
  *v36 = v45;
  v36[1] = v44;
  v37 = (a9 + v22[11]);
  *v37 = v47;
  v37[1] = v46;
  v38 = a9 + v22[12];
  *v38 = v50;
  *(v38 + 8) = v49;
  *(v38 + 16) = v48;
  v39 = (a9 + v22[13]);

  return memcpy(v39, a11, 0x111uLL);
}

unint64_t sub_217D1E9B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6569566575737369;
    v6 = 0x6174614477656976;
    if (a1 != 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000021;
    if (a1 != 5)
    {
      v7 = 0x7461446575737369;
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
    v2 = 0x44656C6369747261;
    v3 = 0x446C656E6E616863;
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

uint64_t sub_217D1EB20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D209C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D1EB48(uint64_t a1)
{
  v2 = sub_217D1F348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D1EB84(uint64_t a1)
{
  v2 = sub_217D1F348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ANFComponentExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D1FDB4(0, &qword_27CBA4D80, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v46[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1F348();
  sub_217D89E7C();
  v48[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ANFComponentExposureEvent.Model(0);
    v94[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = v3 + v10[6];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v92 = *(v11 + 96);
    *v93 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v88 = *(v11 + 32);
    v89 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v90 = *(v11 + 64);
    v91 = v17;
    v18 = *(v11 + 16);
    v87[0] = *v11;
    v87[1] = v18;
    v19 = *(v11 + 112);
    v85 = v92;
    v86[0] = v19;
    v81 = v88;
    v82 = v16;
    v84 = v12;
    v83 = v90;
    *&v93[15] = *(v11 + 127);
    *(v86 + 15) = *(v11 + 127);
    v80 = v14;
    v79 = v87[0];
    v78 = 2;
    sub_217AD1630(v87, v48);
    sub_217ACF52C();
    sub_217D89CAC();
    v76[6] = v85;
    *v77 = v86[0];
    *&v77[15] = *(v86 + 15);
    v76[2] = v81;
    v76[3] = v82;
    v76[5] = v84;
    v76[4] = v83;
    v76[1] = v80;
    v76[0] = v79;
    sub_217AD2864(v76);
    v20 = (v3 + v10[7]);
    v21 = v20[1];
    v22 = *(v20 + 16);
    v23 = *(v20 + 17);
    v24 = v20[3];
    v25 = v20[4];
    v70 = *v20;
    v71 = v21;
    v72 = v22;
    v73 = v23;
    v74 = v24;
    v75 = v25;
    v69 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v26 = (v3 + v10[8]);
    v27 = v26[1];
    v68[0] = *v26;
    v68[1] = v27;
    v28 = v26[3];
    v30 = *v26;
    v29 = v26[1];
    v68[2] = v26[2];
    v68[3] = v28;
    v64 = v30;
    v65 = v29;
    v31 = v26[3];
    v66 = v26[2];
    v67 = v31;
    v63 = 4;
    sub_217C83BD4(v68, v48);
    sub_217AE2368();
    sub_217D89CAC();
    v60[0] = v64;
    v60[1] = v65;
    v60[2] = v66;
    v60[3] = v67;
    sub_217C83C0C(v60);
    v32 = v3 + v10[9];
    v33 = *(v32 + 16);
    v61[2] = *(v32 + 32);
    v34 = *(v32 + 16);
    v61[0] = *v32;
    v61[1] = v34;
    v62 = *(v32 + 48);
    v56 = v61[0];
    v57 = v33;
    v58 = *(v32 + 32);
    v59 = *(v32 + 48);
    v55 = 5;
    sub_217ACC004(v61, v48);
    sub_217A55B98();
    sub_217D89CAC();
    v53[0] = v56;
    v53[1] = v57;
    v53[2] = v58;
    v54 = v59;
    sub_217ACC69C(v53);
    v35 = (v3 + v10[10]);
    v36 = v35[1];
    v37 = v35[2];
    v38 = v35[3];
    *v48 = *v35;
    *&v48[8] = v36;
    *&v48[16] = v37;
    *&v48[24] = v38;
    v47[0] = 6;
    sub_217AE39D0(*v48, v36, v37, v38);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(*v48, *&v48[8], *&v48[16], *&v48[24]);
    v39 = (v3 + v10[11]);
    v40 = v39[1];
    *v48 = *v39;
    *&v48[8] = v40;
    v47[0] = 7;
    sub_217AD01EC();

    sub_217D89C3C();

    v41 = (v3 + v10[12]);
    v42 = *v41;
    v43 = v41[1];
    LOWORD(v41) = *(v41 + 8);
    v50 = v42;
    v51 = v43;
    v52 = v41;
    v49 = 8;
    sub_217A5E790();

    sub_217D89CAC();

    v44 = v10[13];
    memcpy(v48, (v3 + v44), sizeof(v48));
    memcpy(v47, (v3 + v44), sizeof(v47));
    v46[279] = 9;
    sub_217AD1744(v48, v46);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v46, v47, 0x111uLL);
    sub_217AD28B8(v46);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D1F348()
{
  result = qword_27CBA4D88;
  if (!qword_27CBA4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D88);
  }

  return result;
}

void ANFComponentExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_217D889CC();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D1FDB4(0, &qword_27CBA4D90, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1F348();
  v52 = v10;
  v14 = v74;
  sub_217D89E5C();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v48;
    v42 = v11;
    v43 = a1;
    v74 = v13;
    v53[0] = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    sub_217D89BCC();
    v16 = v74;
    (*(v47 + 32))();
    v53[0] = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v17 = v46;
    sub_217D89BCC();
    v41 = v5;
    v49 = 0;
    v18 = v42;
    (*(v45 + 32))(&v16[v42[5]], v15, v17);
    v65 = 2;
    sub_217ACF4D8();
    sub_217D89BCC();
    v19 = &v16[v18[6]];
    v20 = v73[0];
    *(v19 + 6) = v72;
    *(v19 + 7) = v20;
    *(v19 + 127) = *(v73 + 15);
    v21 = v69;
    *(v19 + 2) = v68;
    *(v19 + 3) = v21;
    v22 = v71;
    *(v19 + 4) = v70;
    *(v19 + 5) = v22;
    v23 = v67;
    *v19 = v66;
    *(v19 + 1) = v23;
    LOBYTE(v61) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v24 = *&v53[8];
    v25 = v53[16];
    v26 = v53[17];
    v27 = *&v53[24];
    v28 = *&v53[32];
    v29 = &v16[v18[7]];
    *v29 = *v53;
    *(v29 + 1) = v24;
    v29[16] = v25;
    v29[17] = v26;
    *(v29 + 3) = v27;
    *(v29 + 4) = v28;
    v60 = 4;
    sub_217AE2314();
    sub_217D89BCC();
    v30 = &v16[v18[8]];
    v31 = v62;
    *v30 = v61;
    *(v30 + 1) = v31;
    v32 = v64;
    *(v30 + 2) = v63;
    *(v30 + 3) = v32;
    v55 = 5;
    sub_217A54D08();
    sub_217D89BCC();
    v33 = &v16[v18[9]];
    v34 = v57;
    *v33 = v56;
    *(v33 + 1) = v34;
    *(v33 + 2) = v58;
    v33[48] = v59;
    v54 = 6;
    sub_217ACFF40();
    sub_217D89B5C();
    v35 = &v16[v18[10]];
    v36 = *&v53[16];
    *v35 = *v53;
    *(v35 + 1) = v36;
    v54 = 7;
    sub_217AD0198();
    sub_217D89B5C();
    *&v16[v18[11]] = *v53;
    v54 = 8;
    sub_217A5E738();
    sub_217D89BCC();
    v37 = *&v53[8];
    v38 = *&v53[16];
    v39 = &v74[v42[12]];
    *v39 = *v53;
    *(v39 + 1) = v37;
    *(v39 + 8) = v38;
    v54 = 9;
    sub_217ACF8E0();
    sub_217D89BCC();
    (*(v51 + 8))(v52, v50);
    v40 = v74;
    memcpy(&v74[v42[13]], v53, 0x111uLL);
    sub_217D1FE18(v40, v44);
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_217D1FE7C(v40);
  }
}

void sub_217D1FDB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D1F348();
    v7 = a3(a1, &type metadata for ANFComponentExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D1FE18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D1FE7C(uint64_t a1)
{
  v2 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D1FFB0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v20 - 8) + 104))(a2 + v19, v17, v20);
  v21 = a1[12];
  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

void sub_217D2046C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217D1DD8C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217D1DD8C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217D1DD8C(319, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
          if (v5 <= 0x3F)
          {
            sub_217D1DD8C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
            if (v6 <= 0x3F)
            {
              sub_217D1DD8C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
              if (v7 <= 0x3F)
              {
                sub_217D1DD8C(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                if (v8 <= 0x3F)
                {
                  sub_217D1DD8C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                  if (v9 <= 0x3F)
                  {
                    sub_217D1DD8C(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
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

void sub_217D20798(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217D208C4()
{
  result = qword_27CBA4D98;
  if (!qword_27CBA4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D98);
  }

  return result;
}

unint64_t sub_217D2091C()
{
  result = qword_27CBA4DA0;
  if (!qword_27CBA4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DA0);
  }

  return result;
}

unint64_t sub_217D20974()
{
  result = qword_27CBA4DA8;
  if (!qword_27CBA4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DA8);
  }

  return result;
}

uint64_t sub_217D209C8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD5D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2)
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

NewsAnalytics::AudioEngagementOrigin_optional __swiftcall AudioEngagementOrigin.init(rawValue:)(Swift::String rawValue)
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

unint64_t AudioEngagementOrigin.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000010;
    v7 = 0xD000000000000016;
    if (v1 != 8)
    {
      v7 = 0x6E65746E49707061;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1869768040;
    if (v1 != 5)
    {
      v8 = 1769105779;
    }

    if (*v0 <= 6u)
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
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x776F4E79616C70;
    v4 = 0x636172547478656ELL;
    if (v1 != 3)
    {
      v4 = 0x697242796C696164;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7473696C79616C70;
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

unint64_t sub_217D20EC4()
{
  result = qword_27CBA4DB0;
  if (!qword_27CBA4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DB0);
  }

  return result;
}

uint64_t sub_217D20F18()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D83230(v3, v1);
  return sub_217D89E3C();
}

uint64_t sub_217D20F68(uint64_t a1)
{
  v2 = *v1;
  sub_217D89E1C();
  sub_217D83230(v4, v2);
  return sub_217D89E3C();
}

unint64_t sub_217D20FB8@<X0>(unint64_t *a1@<X8>)
{
  result = AudioEngagementOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217D210A0()
{
  result = qword_27CBA4DB8;
  if (!qword_27CBA4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DB8);
  }

  return result;
}

uint64_t SubscriptionData.subscribedTagList.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t SubscriptionData.autoSubscribedTagList.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t SubscriptionData.paidSubscribedTagList.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t SubscriptionData.webAccessTagList.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

uint64_t SubscriptionData.mutedTagList.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}

uint64_t SubscriptionData.init(channelCount:topicCount:subscribedTagList:autoSubscribedTagList:paidSubscribedTagList:webAccessTagList:mutedTagList:favoritesSportsTopicCount:favoritesTagsTopicCount:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, int a10)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = v12;
  *(a9 + 16) = v13;
  *(a9 + 24) = v14;
  *(a9 + 32) = v15;

  *(a9 + 40) = v16;
  *(a9 + 48) = a8;
  *(a9 + 52) = a10;
  return result;
}

uint64_t sub_217D213D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D21A38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D213FC(uint64_t a1)
{
  v2 = sub_217A68198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D21438(uint64_t a1)
{
  v2 = sub_217A68198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217A6811C(0, &qword_2811BCA68, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A68198();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v31[0]) = 0;
    v10 = sub_217D89BDC();
    LOBYTE(v31[0]) = 1;
    v11 = sub_217D89BDC();
    LOBYTE(v27) = 2;
    sub_217B7D2A0();
    sub_217D89BCC();
    v26 = v31[0];
    LOBYTE(v27) = 3;
    sub_217C90C74();
    sub_217D89BCC();
    v25 = v31[0];
    LOBYTE(v27) = 4;
    sub_217CE9EFC();
    v24 = 0;
    sub_217D89BCC();
    v23 = v31[0];
    LOBYTE(v27) = 5;
    sub_217CE6A4C();
    sub_217D89BCC();
    v22 = v31[0];
    LOBYTE(v27) = 6;
    sub_217AEA730();
    sub_217D89B5C();
    v21 = a2;
    v12 = v31[0];

    LOBYTE(v31[0]) = 7;
    LODWORD(v24) = sub_217D89BDC();
    v34 = 8;
    v13 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *&v27 = __PAIR64__(v11, v10);
    v15 = v25;
    v14 = v26;
    *(&v27 + 1) = v26;
    *&v28 = v25;
    v16 = v23;
    *(&v28 + 1) = v23;
    *&v29 = v22;
    *(&v29 + 1) = v12;
    v30 = __PAIR64__(v13, v24);
    v17 = v28;
    v18 = v21;
    *v21 = v27;
    v18[1] = v17;
    v18[2] = v29;
    *(v18 + 6) = v30;
    sub_217B9E08C(&v27, v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31[0] = __PAIR64__(v11, v10);
    v31[1] = v14;
    v31[2] = v15;
    v31[3] = v16;
    v31[4] = v22;
    v31[5] = v12;
    v32 = v24;
    v33 = v13;
    return sub_217B9F26C(v31);
  }
}

unint64_t sub_217D219E4()
{
  result = qword_27CBA4DC0;
  if (!qword_27CBA4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DC0);
  }

  return result;
}

uint64_t sub_217D21A38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436C656E6E616863 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F436369706F74 && a2 == 0xEA0000000000746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2BC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD2BE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD2C00 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2C20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676154646574756DLL && a2 == 0xEC0000007473694CLL || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DD2C40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DD2C60 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

NewsAnalytics::MediaType_optional __swiftcall MediaType.init(rawValue:)(Swift::String rawValue)
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

uint64_t MediaType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7972656C6C6167;
  v4 = 0x6F69647561;
  if (v1 != 4)
  {
    v4 = 7364973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F65646976;
  if (v1 != 1)
  {
    v5 = 0x6567616D69;
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

unint64_t sub_217D21E3C()
{
  result = qword_27CBA4DC8;
  if (!qword_27CBA4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DC8);
  }

  return result;
}

uint64_t sub_217D21E98(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217D21F88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x7972656C6C6167;
  v7 = 0xE500000000000000;
  v8 = 0x6F69647561;
  if (v2 != 4)
  {
    v8 = 7364973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6F65646976;
  if (v2 != 1)
  {
    v9 = 0x6567616D69;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
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

unint64_t sub_217D220F4()
{
  result = qword_2811BD0C0;
  if (!qword_2811BD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0C0);
  }

  return result;
}

uint64_t sub_217D22210()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BD018);
  __swift_project_value_buffer(v0, qword_2811BD018);
  return sub_217D8866C();
}

uint64_t ViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217D22308(0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_217D22308(uint64_t a1)
{
  if (!qword_2811C84D8)
  {
    sub_217A5E738();
    sub_217A5E790();
    v1 = sub_217D8829C();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C84D8);
    }
  }
}

uint64_t ViewEvent.viewData.setter(uint64_t a1)
{
  sub_217D22308(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217D22308(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

NewsAnalytics::ViewEvent::Model __swiftcall ViewEvent.Model.init(viewData:)(NewsAnalytics::ViewEvent::Model viewData)
{
  v2 = *(viewData.viewData.viewSessionID._countAndFlagsBits + 8);
  v3 = *(viewData.viewData.viewSessionID._countAndFlagsBits + 16);
  *v1 = *viewData.viewData.viewSessionID._countAndFlagsBits;
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return viewData;
}

uint64_t sub_217D224AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
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

uint64_t sub_217D22534(uint64_t a1)
{
  v2 = sub_217D2272C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D22570(uint64_t a1)
{
  v2 = sub_217D2272C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewEvent.Model.encode(to:)(void *a1)
{
  sub_217D22924(0, &qword_27CBA4DD0, MEMORY[0x277D84538]);
  v4 = v3;
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D2272C();

  sub_217D89E7C();
  v11[1] = v7;
  v11[2] = v8;
  v12 = v9;
  sub_217A5E790();
  sub_217D89CAC();

  return (*(v13 + 8))(v6, v4);
}

unint64_t sub_217D2272C()
{
  result = qword_27CBA4DD8;
  if (!qword_27CBA4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DD8);
  }

  return result;
}

uint64_t ViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D22924(0, &qword_27CBA4DE0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D2272C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A5E738();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v10 = v13[2];
    v11 = v14;
    *a2 = v13[1];
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D22924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D2272C();
    v7 = a3(a1, &type metadata for ViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D22A60@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217D22308(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ViewEvent(uint64_t a1)
{
  result = qword_2811BCFD8;
  if (!qword_2811BCFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217D22B48(uint64_t a1)
{
  sub_217D22308(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_217D22BD8()
{
  result = qword_27CBA4DE8;
  if (!qword_27CBA4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DE8);
  }

  return result;
}

unint64_t sub_217D22C30()
{
  result = qword_27CBA4DF0;
  if (!qword_27CBA4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DF0);
  }

  return result;
}

unint64_t sub_217D22C88()
{
  result = qword_27CBA4DF8;
  if (!qword_27CBA4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DF8);
  }

  return result;
}

NewsAnalytics::TextSize_optional __swiftcall TextSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_217D22D38()
{
  v0 = TextSize.rawValue.getter();
  v2 = v1;
  if (v0 == TextSize.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217D22DD8()
{
  result = qword_27CBA4E00;
  if (!qword_27CBA4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E00);
  }

  return result;
}

uint64_t sub_217D22E2C()
{
  sub_217D89E1C();
  TextSize.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D22E94(uint64_t a1)
{
  TextSize.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217D22EF8(uint64_t a1)
{
  sub_217D89E1C();
  TextSize.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D22FD8()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D87EBC();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  sub_217D23BBC(0);
  v8[0] = 0;
  v8[1] = 0;
  swift_allocObject();
  result = sub_217D87F2C();
  qword_2811C8AA8 = result;
  return result;
}

uint64_t sub_217D231F8()
{
  v0 = sub_217D87F3C();
  __swift_allocate_value_buffer(v0, qword_2811C8B10);
  v1 = __swift_project_value_buffer(v0, qword_2811C8B10);
  v2 = *MEMORY[0x277D6D0C8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Settings.AppIconBadge.AppIconBadgeSource.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v2 = sub_217D87F3C();
  v3 = __swift_project_value_buffer(v2, qword_2811C8B10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Settings.AppIconBadge.AppIconBadgeSource.dataType.setter(uint64_t a1)
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v2 = sub_217D87F3C();
  v3 = __swift_project_value_buffer(v2, qword_2811C8B10);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Settings.AppIconBadge.AppIconBadgeSource.dataType.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v1 = sub_217D87F3C();
  __swift_project_value_buffer(v1, qword_2811C8B10);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_217D234C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v2 = sub_217D87F3C();
  v3 = __swift_project_value_buffer(v2, qword_2811C8B10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_217D23588(uint64_t a1)
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v2 = sub_217D87F3C();
  v3 = __swift_project_value_buffer(v2, qword_2811C8B10);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static Settings.AppIconBadge.AppIconBadgeSource.convert(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_217AE02B0(a1, v18);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v16 == 1937204590 && v17 == 0xE400000000000000;
    if (v4 || (sub_217D89D4C() & 1) != 0)
    {

      *a2 = xmmword_217DA3B00;
      return result;
    }

    v18[0] = v16;
    v18[1] = v17;
    sub_217D237C0();
    sub_217D23814();
    if (sub_217D894CC())
    {
      v5 = sub_217D895DC();
      v6 = sub_217D23AE8(v5, v16, v17);
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = MEMORY[0x21CEACC20](v6, v8, v10, v12);
      v15 = v14;

      *a2 = v13;
      *(a2 + 8) = v15;
      return result;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_217D237C0()
{
  result = qword_27CBA4E08;
  if (!qword_27CBA4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E08);
  }

  return result;
}

unint64_t sub_217D23814()
{
  result = qword_27CBA4E10;
  if (!qword_27CBA4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E10);
  }

  return result;
}

uint64_t Settings.AppIconBadge.AppIconBadgeSource.toData()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE400000000000000;
      v4 = 1937204590;
    }

    else
    {
      v5 = a1;
      result = MEMORY[0x21CEACC70](*v1);
      a1 = v5;
      v4 = 0x7972756372656DLL;
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v4;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall Settings.AppIconBadge.AppIconBadgeSource.toString()()
{
  v1 = v0[1];
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0xE400000000000000;
      v3 = 1937204590;
    }

    else
    {
      MEMORY[0x21CEACC70](*v0);
      v3 = 0x7972756372656DLL;
      v2 = 0xE700000000000000;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t _s11TeaSettings0B0C13NewsAnalyticsE12AppIconBadgeV0efG6SourceO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_217CB24AC(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_217CB24AC(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_217D89D4C();
      sub_217D23BA8(v4, v5);
      sub_217D23BA8(v2, v3);
      sub_217CB24AC(v2, v3);
      sub_217CB24AC(v4, v5);
      return v11 & 1;
    }

    sub_217D23BA8(v9, v3);
    sub_217D23BA8(v2, v3);
    sub_217CB24AC(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_217D23BA8(*a2, a2[1]);
    sub_217D23BA8(v2, v3);
    sub_217CB24AC(v2, v3);
    sub_217CB24AC(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_217CB24AC(*a1, 1uLL);
  sub_217CB24AC(v4, 1uLL);
  return v6;
}

unint64_t sub_217D23AE8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_217D895EC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_217D8966C();
}

uint64_t sub_217D23BA8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_217D23BBC(uint64_t a1)
{
  if (!qword_2811C8A68)
  {
    sub_217A5D360();
    v1 = sub_217D87F1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8A68);
    }
  }
}

uint64_t ArticleLoadData.articleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArticleLoadData.articleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217D23CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000044)
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

uint64_t sub_217D23D5C(uint64_t a1)
{
  v2 = sub_217D23F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D23D98(uint64_t a1)
{
  v2 = sub_217D23F20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLoadData.encode(to:)(void *a1)
{
  sub_217D240F8(0, &qword_2811BC770, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D23F20();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D23F20()
{
  result = qword_2811C6960;
  if (!qword_2811C6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6960);
  }

  return result;
}

uint64_t ArticleLoadData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217D240F8(0, &qword_27CBA4E18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D23F20();
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

void sub_217D240F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D23F20();
    v7 = a3(a1, &type metadata for ArticleLoadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D2417C(void *a1)
{
  sub_217D240F8(0, &qword_2811BC770, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D23F20();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D242EC()
{
  result = qword_27CBA4E20;
  if (!qword_27CBA4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E20);
  }

  return result;
}

unint64_t sub_217D24344()
{
  result = qword_2811C6950;
  if (!qword_2811C6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6950);
  }

  return result;
}

unint64_t sub_217D2439C()
{
  result = qword_2811C6958;
  if (!qword_2811C6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6958);
  }

  return result;
}

NewsAnalytics::EmailShareResultType_optional __swiftcall EmailShareResultType.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_217D24464(char *a1, char *a2)
{
  if (*&aUnknown_99[8 * *a1] == *&aUnknown_99[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_217D89D4C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

unint64_t sub_217D244D0()
{
  result = qword_27CBA4E28;
  if (!qword_27CBA4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E28);
  }

  return result;
}

uint64_t sub_217D24524()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D24580(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D245C0(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217D24700()
{
  result = qword_27CBA4E30;
  if (!qword_27CBA4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E30);
  }

  return result;
}

uint64_t TabiRequestData.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217D889CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TabiRequestData.timedData.setter(uint64_t a1)
{
  v3 = sub_217D889CC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for TabiRequestData(uint64_t a1)
{
  result = qword_2811C8D40;
  if (!qword_2811C8D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TabiRequestData.successful.setter(char a1)
{
  result = type metadata accessor for TabiRequestData(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t TabiRequestData.init(timedData:successful:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_217D889CC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TabiRequestData(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_217D249B0()
{
  if (*v0)
  {
    return 0x6673736563637573;
  }

  else
  {
    return 0x74614464656D6974;
  }
}

uint64_t sub_217D249F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6673736563637573 && a2 == 0xEA00000000006C75)
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

uint64_t sub_217D24AE0(uint64_t a1)
{
  v2 = sub_217D24D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D24B1C(uint64_t a1)
{
  v2 = sub_217D24D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabiRequestData.encode(to:)(void *a1)
{
  sub_217D250C4(0, &qword_2811BC730, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D24D20();
  sub_217D89E7C();
  v9[15] = 0;
  sub_217D889CC();
  sub_217D25278(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
  sub_217D89CAC();
  if (!v1)
  {
    type metadata accessor for TabiRequestData(0);
    v9[14] = 1;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D24D20()
{
  result = qword_2811C6090;
  if (!qword_2811C6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6090);
  }

  return result;
}

uint64_t TabiRequestData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = sub_217D889CC();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D250C4(0, &qword_2811BCA98, MEMORY[0x277D844C8]);
  v22 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TabiRequestData(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D24D20();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v11;
  v12 = v19;
  v24 = 0;
  sub_217D25278(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v13 = v21;
  sub_217D89BCC();
  v14 = v17;
  (*(v12 + 32))(v17, v5, v13);
  v23 = 1;
  v15 = sub_217D89B9C();
  (*(v20 + 8))(v8, v22);
  *(v14 + *(v9 + 20)) = v15 & 1;
  sub_217D25128(v14, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D2518C(v14);
}

void sub_217D250C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D24D20();
    v7 = a3(a1, &type metadata for TabiRequestData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D25128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabiRequestData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D2518C(uint64_t a1)
{
  v2 = type metadata accessor for TabiRequestData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D25278(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217D25318(uint64_t a1)
{
  result = sub_217D889CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217D253A0()
{
  result = qword_27CBA4E38;
  if (!qword_27CBA4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E38);
  }

  return result;
}

unint64_t sub_217D253F8()
{
  result = qword_2811C6080;
  if (!qword_2811C6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6080);
  }

  return result;
}

unint64_t sub_217D25450()
{
  result = qword_2811C6088;
  if (!qword_2811C6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6088);
  }

  return result;
}

uint64_t sub_217D2556C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BE018);
  __swift_project_value_buffer(v0, qword_2811BE018);
  return sub_217D8866C();
}

uint64_t FeedLoadingSpinnerExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedLoadingSpinnerExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadingSpinnerExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadingSpinnerExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadingSpinnerExposureEvent(0) + 24);
  sub_217D25828(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D25828(uint64_t a1)
{
  if (!qword_2811C84E8)
  {
    sub_217A5B978();
    sub_217A5BA2C();
    v1 = sub_217D8829C();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C84E8);
    }
  }
}

uint64_t FeedLoadingSpinnerExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadingSpinnerExposureEvent(0) + 24);
  sub_217D25828(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadingSpinnerExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedLoadingSpinnerExposureEvent(0);
  v5 = *(v4 + 20);
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217D25828(0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t sub_217D25AA0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedLoadingSpinnerExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedLoadingSpinnerExposureEvent.Model.init(eventData:timedData:feedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  v10 = sub_217D8899C();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
  v12 = *(v11 + 20);
  v13 = sub_217D889CC();
  result = (*(*(v13 - 8) + 32))(a4 + v12, a2, v13);
  v15 = a4 + *(v11 + 24);
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v9;
  return result;
}

uint64_t sub_217D25C7C()
{
  v1 = 0x74614464656D6974;
  if (*v0 != 1)
  {
    v1 = 0x6174614464656566;
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

uint64_t sub_217D25CD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D26AA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D25D00(uint64_t a1)
{
  v2 = sub_217D25FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D25D3C(uint64_t a1)
{
  v2 = sub_217D25FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedLoadingSpinnerExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D2651C(0, &qword_27CBA4E40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D25FF0();
  sub_217D89E7C();
  v16[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
    v16[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = v3 + *(v10 + 24);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v16[0] = *v11;
    v17 = v12;
    v18 = v13;
    v15[7] = 2;
    sub_217A5BA2C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D25FF0()
{
  result = qword_27CBA4E48;
  if (!qword_27CBA4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E48);
  }

  return result;
}

uint64_t FeedLoadingSpinnerExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_217D889CC();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_217D8899C();
  v25 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D2651C(0, &qword_27CBA4E50, MEMORY[0x277D844C8]);
  v30 = v8;
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D25FF0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v23 = a1;
  v14 = v13;
  v16 = v26;
  v15 = v27;
  v17 = v28;
  v32[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  (*(v25 + 32))(v14, v29, v31);
  v32[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v15 + 32))(v14 + *(v22 + 20), v6, v17);
  v34 = 2;
  sub_217A5B978();
  sub_217D89BCC();
  v18 = v23;
  (*(v16 + 8))(v10, v30);
  v19 = v14 + *(v22 + 24);
  *v19 = v32[0];
  *(v19 + 8) = v33;
  sub_217D26580(v14, v24);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_217D265E4(v14);
}

void sub_217D2651C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D25FF0();
    v7 = a3(a1, &type metadata for FeedLoadingSpinnerExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D26580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D265E4(uint64_t a1)
{
  v2 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D26718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217D25828(0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217D26840(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217D25828(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217D26904(uint64_t a1)
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

unint64_t sub_217D269A4()
{
  result = qword_27CBA4E68;
  if (!qword_27CBA4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E68);
  }

  return result;
}

unint64_t sub_217D269FC()
{
  result = qword_27CBA4E70;
  if (!qword_27CBA4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E70);
  }

  return result;
}

unint64_t sub_217D26A54()
{
  result = qword_27CBA4E78;
  if (!qword_27CBA4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E78);
  }

  return result;
}

uint64_t sub_217D26AA8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
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

uint64_t sub_217D26C98()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4E80);
  __swift_project_value_buffer(v0, qword_27CBA4E80);
  return sub_217D8866C();
}

uint64_t FeedGroupLayoutEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedGroupLayoutEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 20);
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 20);
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 24);
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 24);
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.feedGroupLayoutData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 28);
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994, &type metadata for FeedGroupLayoutData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent.feedGroupLayoutData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 28);
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994, &type metadata for FeedGroupLayoutData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 32);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 36);
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 36);
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedGroupLayoutEvent(0);
  v5 = v4[5];
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994, &type metadata for FeedGroupLayoutData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217A608E0(0);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t FeedGroupLayoutEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGroupLayoutEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedGroupLayoutEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutEvent.Model(0) + 24));
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
  return sub_217AF7618(v17, &v16);
}

uint64_t FeedGroupLayoutEvent.Model.feedGroupLayoutData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_217D279D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 32);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedGroupLayoutEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedGroupLayoutEvent.Model.init(eventData:feedData:groupData:feedGroupLayoutData:timedData:viewData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *a4;
  v14 = *a6;
  v15 = a6[1];
  v16 = *(a6 + 8);
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v11;
  v20 = (a7 + v18[6]);
  v21 = a3[7];
  v20[6] = a3[6];
  v20[7] = v21;
  v20[8] = a3[8];
  v22 = a3[3];
  v20[2] = a3[2];
  v20[3] = v22;
  v23 = a3[5];
  v20[4] = a3[4];
  v20[5] = v23;
  v24 = a3[1];
  *v20 = *a3;
  v20[1] = v24;
  *(a7 + v18[7]) = v13;
  v25 = v18[8];
  v26 = sub_217D889CC();
  result = (*(*(v26 - 8) + 32))(a7 + v25, a5, v26);
  v28 = a7 + v18[9];
  *v28 = v14;
  *(v28 + 8) = v15;
  *(v28 + 16) = v16;
  return result;
}

uint64_t sub_217D27BF4(uint64_t a1)
{
  v2 = sub_217D280A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D27C30(uint64_t a1)
{
  v2 = sub_217D280A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D288CC(0, &qword_27CBA4E98, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D280A4();
  sub_217D89E7C();
  LOBYTE(v44) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v54[0] = *v11;
    v55 = v12;
    v56 = v13;
    v53 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[6];
    v16 = v14[4];
    v49 = v14[5];
    v50 = v15;
    v17 = v14[6];
    v18 = v14[8];
    v51 = v14[7];
    v52 = v18;
    v19 = v14[2];
    v20 = *v14;
    v45 = v14[1];
    v46 = v19;
    v21 = v14[2];
    v22 = v14[4];
    v47 = v14[3];
    v48 = v22;
    v23 = *v14;
    v41 = v17;
    v42 = v51;
    v43 = v14[8];
    v44 = v23;
    v37 = v21;
    v38 = v47;
    v39 = v16;
    v40 = v49;
    v35 = v20;
    v36 = v45;
    v34 = 2;
    sub_217AF7618(&v44, v33);
    sub_217A5D3B4();
    sub_217D89CAC();
    v33[7] = v42;
    v33[8] = v43;
    v33[2] = v37;
    v33[3] = v38;
    v33[5] = v40;
    v33[6] = v41;
    v33[4] = v39;
    v33[0] = v35;
    v33[1] = v36;
    sub_217AF8104(v33);
    LOBYTE(v29) = *(v3 + v10[7]);
    v32 = 3;
    sub_217A63994();
    sub_217D89C3C();
    LOBYTE(v29) = 4;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v25 = (v3 + v10[9]);
    v26 = *v25;
    v27 = v25[1];
    LOWORD(v25) = *(v25 + 8);
    v29 = v26;
    v30 = v27;
    v31 = v25;
    v32 = 5;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D280A4()
{
  result = qword_27CBA4EA0;
  if (!qword_27CBA4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4EA0);
  }

  return result;
}

uint64_t FeedGroupLayoutEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = sub_217D889CC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D288CC(0, &qword_27CBA4EA8, MEMORY[0x277D844C8]);
  v39 = v7;
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D280A4();
  v38 = v9;
  v13 = v53;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v31 = a1;
  v15 = v12;
  v16 = v35;
  v45[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  (*(v34 + 32))(v15, v37, v5);
  LOBYTE(v40) = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v17 = v15 + *(v10 + 20);
  *v17 = v45[0];
  *(v17 + 8) = *&v45[8];
  v44 = 2;
  sub_217A5D308();
  v53 = 0;
  sub_217D89BCC();
  v18 = (v15 + *(v10 + 24));
  v19 = v51;
  v20 = v52;
  v18[6] = v50;
  v18[7] = v19;
  v18[8] = v20;
  v21 = v47;
  v18[2] = v46;
  v18[3] = v21;
  v22 = v49;
  v18[4] = v48;
  v18[5] = v22;
  v23 = *&v45[16];
  *v18 = *v45;
  v18[1] = v23;
  v43 = 3;
  sub_217A63908();
  sub_217D89B5C();
  v24 = v10;
  v25 = v36;
  *(v15 + v24[7]) = v40;
  LOBYTE(v40) = 4;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v26 = v33;
  sub_217D89BCC();
  (*(v16 + 32))(v15 + v24[8], v14, v26);
  v43 = 5;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v25 + 8))(v38, v39);
  v27 = v41;
  v28 = v42;
  v29 = v15 + v24[9];
  *v29 = v40;
  *(v29 + 8) = v27;
  *(v29 + 16) = v28;
  sub_217D28930(v15, v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_217D28994(v15);
}

void sub_217D288CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D280A4();
    v7 = a3(a1, &type metadata for FeedGroupLayoutEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D28930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D28994(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupLayoutEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217D28B2C()
{
  result = qword_27CBA4EC0;
  if (!qword_27CBA4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4EC0);
  }

  return result;
}

unint64_t sub_217D28B84()
{
  result = qword_27CBA4EC8;
  if (!qword_27CBA4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4EC8);
  }

  return result;
}

unint64_t sub_217D28BDC()
{
  result = qword_27CBA4ED0;
  if (!qword_27CBA4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4ED0);
  }

  return result;
}

__n128 FormatSubgroupData.init(layoutIdentifier:layoutReferences:themeIdentifiers:themeReferences:formatVersion:parentGroupName:contentIdentifier:contentSubgroupIdentifier:contentPublishDate:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t FormatSubgroupData.layoutIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatSubgroupData.layoutIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FormatSubgroupData.layoutReferences.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t FormatSubgroupData.themeIdentifiers.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t FormatSubgroupData.themeReferences.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t FormatSubgroupData.formatVersion.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FormatSubgroupData.formatVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t FormatSubgroupData.parentGroupName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FormatSubgroupData.parentGroupName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t FormatSubgroupData.contentIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t FormatSubgroupData.contentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t FormatSubgroupData.contentSubgroupIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t FormatSubgroupData.contentSubgroupIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t sub_217D29030(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x666552656D656874;
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    if (a1 == 7)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0x655674616D726F66;
    if (a1 != 4)
    {
      v2 = 0x7247746E65726170;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217D29188@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D2A064(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D291B0(uint64_t a1)
{
  v2 = sub_217D295BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D291EC(uint64_t a1)
{
  v2 = sub_217D295BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FormatSubgroupData.encode(to:)(void *a1)
{
  sub_217D29D5C(0, &qword_27CBA4ED8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = v1[2];
  v23 = v1[3];
  v24 = v8;
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[7];
  v21[8] = v1[6];
  v22 = v9;
  v21[5] = v11;
  v12 = v1[9];
  v21[6] = v1[8];
  v21[7] = v10;
  v13 = v1[10];
  v14 = v1[11];
  v21[3] = v12;
  v21[4] = v13;
  v16 = v1[12];
  v15 = v1[13];
  v21[1] = v14;
  v21[2] = v16;
  v21[0] = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D295BC();
  sub_217D89E7C();
  LOBYTE(v27) = 0;
  v17 = v25;
  sub_217D89C6C();
  if (!v17)
  {
    v18 = v22;
    v19 = v23;
    v27 = v24;
    v26 = 1;
    sub_217D01FD8(0, &qword_27CBA4EE8, &type metadata for FormatPackageReferenceData);
    sub_217D29DC0(&qword_27CBA4EF0, sub_217BF6130, MEMORY[0x277D83948]);
    sub_217D89CAC();
    v27 = v19;
    v26 = 2;
    sub_217D01FD8(0, &qword_2811BCD50, MEMORY[0x277D837D0]);
    sub_217A560C0(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_217D89CAC();
    v27 = v18;
    v26 = 3;
    sub_217D89CAC();
    LOBYTE(v27) = 4;
    sub_217D89C6C();
    LOBYTE(v27) = 5;
    sub_217D89C6C();
    LOBYTE(v27) = 6;
    sub_217D89C6C();
    LOBYTE(v27) = 7;
    sub_217D89C6C();
    LOBYTE(v27) = 8;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D295BC()
{
  result = qword_27CBA4EE0;
  if (!qword_27CBA4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4EE0);
  }

  return result;
}

uint64_t FormatSubgroupData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217D29D5C(0, &qword_27CBA4EF8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D295BC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v50[0]) = 0;
  v40 = sub_217D89B8C();
  v41 = a2;
  v42 = v10;
  sub_217D01FD8(0, &qword_27CBA4EE8, &type metadata for FormatPackageReferenceData);
  LOBYTE(v43) = 1;
  sub_217D29DC0(&qword_27CBA4F00, sub_217BF60D8, MEMORY[0x277D83978]);
  sub_217D89BCC();
  v39 = v50[0];
  sub_217D01FD8(0, &qword_2811BCD50, MEMORY[0x277D837D0]);
  LOBYTE(v43) = 2;
  sub_217A560C0(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_217D89BCC();
  v38 = v50[0];
  LOBYTE(v43) = 3;
  sub_217D89BCC();
  v11 = v50[0];
  LOBYTE(v50[0]) = 4;
  v12 = sub_217D89B8C();
  v37 = v13;
  LOBYTE(v50[0]) = 5;
  v14 = sub_217D89B8C();
  v36 = v15;
  v33 = v14;
  LOBYTE(v50[0]) = 6;
  v32 = sub_217D89B8C();
  v35 = v16;
  LOBYTE(v50[0]) = 7;
  v17 = sub_217D89B8C();
  v34 = v18;
  v31 = v17;
  v51 = 8;
  v19 = sub_217D89BEC();
  (*(v7 + 8))(v9, v6);
  v20 = v40;
  *&v43 = v40;
  v21 = v42;
  *(&v43 + 1) = v42;
  v22 = v39;
  *&v44 = v39;
  v23 = v38;
  *(&v44 + 1) = v38;
  *&v45 = v11;
  v30 = v12;
  *(&v45 + 1) = v12;
  *&v46 = v37;
  *(&v46 + 1) = v33;
  *&v47 = v36;
  *(&v47 + 1) = v32;
  *&v48 = v35;
  v24 = v31;
  *(&v48 + 1) = v31;
  *&v49 = v34;
  *(&v49 + 1) = v19;
  v25 = v48;
  v26 = v41;
  v41[4] = v47;
  v26[5] = v25;
  v26[6] = v49;
  v27 = v44;
  *v26 = v43;
  v26[1] = v27;
  v28 = v46;
  v26[2] = v45;
  v26[3] = v28;
  sub_217BC0508(&v43, v50);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v50[0] = v20;
  v50[1] = v21;
  v50[2] = v22;
  v50[3] = v23;
  v50[4] = v11;
  v50[5] = v30;
  v50[6] = v37;
  v50[7] = v33;
  v50[8] = v36;
  v50[9] = v32;
  v50[10] = v35;
  v50[11] = v24;
  v50[12] = v34;
  v50[13] = v19;
  return sub_217B93D54(v50);
}

void sub_217D29D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D295BC();
    v7 = a3(a1, &type metadata for FormatSubgroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D29DC0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217D01FD8(255, &qword_27CBA4EE8, &type metadata for FormatPackageReferenceData);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t sub_217D29E98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_217D29EE0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_217D29F60()
{
  result = qword_27CBA4F08;
  if (!qword_27CBA4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F08);
  }

  return result;
}

unint64_t sub_217D29FB8()
{
  result = qword_27CBA4F10;
  if (!qword_27CBA4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F10);
  }

  return result;
}

unint64_t sub_217D2A010()
{
  result = qword_27CBA4F18;
  if (!qword_27CBA4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F18);
  }

  return result;
}

uint64_t sub_217D2A064(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000217DD2D00 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2D20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2D40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666552656D656874 && a2 == 0xEF7365636E657265 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7247746E65726170 && a2 == 0xEF656D614E70756FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2D60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DD2D80 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD2DA0 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_217D2A42C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1E48);
  __swift_project_value_buffer(v0, qword_2811C1E48);
  return sub_217D8866C();
}

uint64_t PaywallExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PaywallExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 24);
  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 24);
  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 28);
  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 28);
  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 32);
  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 32);
  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 36);
  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 36);
  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 40);
  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 40);
  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 44);
  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 44);
  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 48);
  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 48);
  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 52);
  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 52);
  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 56);
  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 56);
  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 60);
  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 60);
  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 64);
  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 64);
  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 68);
  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 68);
  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.exposedPaywallContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 72);
  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC, &type metadata for ExposedPaywallContentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.exposedPaywallContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 72);
  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC, &type metadata for ExposedPaywallContentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.purchaseOffersData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 76);
  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.purchaseOffersData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 76);
  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 80);
  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D2BEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t PaywallExposureEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 80);
  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PaywallExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v25 - 8) + 104))(a1 + v24, v8, v25);
  v26 = v4[15];
  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v31 - 8) + 104))(a1 + v30, v8, v31);
  v32 = v4[18];
  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC, &type metadata for ExposedPaywallContentData);
  (*(*(v33 - 8) + 104))(a1 + v32, v8, v33);
  v34 = v4[19];
  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  (*(*(v35 - 8) + 104))(a1 + v34, v8, v35);
  v36 = v4[20];
  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v38 = *(*(v37 - 8) + 104);

  return v38(a1 + v36, v8, v37);
}

uint64_t sub_217D2C860@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PaywallExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 24);
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

void PaywallExposureEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 28));
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

uint64_t PaywallExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PaywallExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 36));
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

uint64_t PaywallExposureEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for PaywallExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

void PaywallExposureEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 44));
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

uint64_t PaywallExposureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PaywallExposureEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t PaywallExposureEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 56);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t PaywallExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 60));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PaywallExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 64);
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

uint64_t PaywallExposureEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 68));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_217AE38AC(&v11, &v10, &qword_27CB9F6A0, &type metadata for PuzzleData);
}

uint64_t PaywallExposureEvent.Model.exposedPaywallContentData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 72));
  *a1 = v3;

  return sub_217AF77A0(v3);
}

uint64_t PaywallExposureEvent.Model.purchaseOffersData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 76));
}

void PaywallExposureEvent.Model.recipeData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 80));
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

__n128 PaywallExposureEvent.Model.init(eventData:timedData:articleData:channelData:feedData:groupData:paywallData:issueData:purchaseData:purchaseSessionData:sectionData:viewData:userBundleSubscriptionContextData:puzzleData:exposedPaywallContentData:purchaseOffersData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, __int16 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, __int128 *a12, uint64_t *a13, uint64_t a14, _OWORD *a15, uint64_t *a16, uint64_t *a17, uint64_t a18)
{
  v57 = *a5;
  v55 = *(a4 + 4);
  v56 = *(a5 + 2);
  v63 = *a10;
  v62 = a10[1];
  v60 = *a7;
  v61 = *(a10 + 16);
  v64 = a11[1];
  v65 = *a11;
  v68 = *a12;
  v67 = *(a12 + 2);
  v66 = *(a12 + 24);
  v71 = *a13;
  v70 = a13[1];
  v69 = *(a13 + 8);
  v74 = *a16;
  v75 = *a17;
  v76 = *(a18 + 32);
  v25 = sub_217D8899C();
  v72 = *(a18 + 16);
  v73 = *a18;
  v58 = a8[1];
  v59 = *a8;
  v53 = a4[1];
  v54 = *a4;
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v26 = type metadata accessor for PaywallExposureEvent.Model(0);
  v27 = v26[5];
  v28 = sub_217D889CC();
  (*(*(v28 - 8) + 32))(a9 + v27, a2, v28);
  v29 = a9 + v26[6];
  v30 = *(a3 + 48);
  *(v29 + 32) = *(a3 + 32);
  *(v29 + 48) = v30;
  v31 = *(a3 + 16);
  *v29 = *a3;
  *(v29 + 16) = v31;
  *(v29 + 127) = *(a3 + 127);
  v32 = *(a3 + 112);
  *(v29 + 96) = *(a3 + 96);
  *(v29 + 112) = v32;
  v33 = *(a3 + 80);
  *(v29 + 64) = *(a3 + 64);
  *(v29 + 80) = v33;
  v34 = a9 + v26[7];
  *v34 = v54;
  *(v34 + 16) = v53;
  *(v34 + 32) = v55;
  v35 = a9 + v26[8];
  *v35 = v57;
  *(v35 + 16) = v56;
  v36 = (a9 + v26[9]);
  v37 = a6[7];
  v36[6] = a6[6];
  v36[7] = v37;
  v36[8] = a6[8];
  v38 = a6[3];
  v36[2] = a6[2];
  v36[3] = v38;
  v39 = a6[5];
  v36[4] = a6[4];
  v36[5] = v39;
  v40 = a6[1];
  *v36 = *a6;
  v36[1] = v40;
  *(a9 + v26[10]) = v60;
  v41 = (a9 + v26[11]);
  *v41 = v59;
  v41[1] = v58;
  v42 = a9 + v26[12];
  *v42 = v63;
  *(v42 + 8) = v62;
  *(v42 + 16) = v61;
  v43 = (a9 + v26[13]);
  *v43 = v65;
  v43[1] = v64;
  v44 = a9 + v26[14];
  *v44 = v68;
  *(v44 + 16) = v67;
  *(v44 + 24) = v66;
  v45 = a9 + v26[15];
  *v45 = v71;
  *(v45 + 8) = v70;
  *(v45 + 16) = v69;
  v46 = a9 + v26[16];
  *(v46 + 48) = *(a14 + 48);
  v47 = *(a14 + 32);
  *(v46 + 16) = *(a14 + 16);
  *(v46 + 32) = v47;
  *v46 = *a14;
  v48 = (a9 + v26[17]);
  v49 = a15[4];
  v48[3] = a15[3];
  v48[4] = v49;
  v50 = a15[2];
  v48[1] = a15[1];
  v48[2] = v50;
  *v48 = *a15;
  *(a9 + v26[18]) = v74;
  *(a9 + v26[19]) = v75;
  v51 = a9 + v26[20];
  result = v73;
  *v51 = v73;
  *(v51 + 16) = v72;
  *(v51 + 32) = v76;
  return result;
}

uint64_t sub_217D2D180(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x74614464656D6974;
    case 2:
      return 0x44656C6369747261;
    case 3:
      v5 = 0x656E6E616863;
      return v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 4:
      v4 = 1684366694;
      return v4 | 0x6174614400000000;
    case 5:
      return 0x74614470756F7267;
    case 6:
      v5 = 0x6C6177796170;
      return v5 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 7:
      return 0x7461446575737369;
    case 8:
      return 0x6573616863727570;
    case 9:
      return 0xD000000000000013;
    case 10:
      return 0x446E6F6974636573;
    case 11:
      v4 = 2003134838;
      return v4 | 0x6174614400000000;
    case 12:
      return 0xD000000000000021;
    case 13:
      v3 = 0x656C7A7A7570;
      goto LABEL_16;
    case 14:
      return 0xD000000000000019;
    case 15:
      return 0xD000000000000012;
    case 16:
      v3 = 0x657069636572;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D2D34C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D30340(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D2D380(uint64_t a1)
{
  v2 = sub_217D2DF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D2D3BC(uint64_t a1)
{
  v2 = sub_217D2DF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaywallExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D2EF38(0, &qword_27CBA4F20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v67 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D2DF0C();
  sub_217D89E7C();
  LOBYTE(v107) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for PaywallExposureEvent.Model(0);
    v138[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = v3 + v10[6];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v136 = *(v11 + 96);
    *v137 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v132 = *(v11 + 32);
    v133 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v134 = *(v11 + 64);
    v135 = v17;
    v18 = *(v11 + 16);
    v131[0] = *v11;
    v131[1] = v18;
    v19 = *(v11 + 112);
    v129 = v136;
    v130[0] = v19;
    v125 = v132;
    v126 = v16;
    v128 = v12;
    v127 = v134;
    *&v137[15] = *(v11 + 127);
    *(v130 + 15) = *(v11 + 127);
    v124 = v14;
    v123 = v131[0];
    v122 = 2;
    sub_217AE38AC(v131, &v107, &qword_2811C7DB8, &type metadata for ArticleData);
    sub_217ACF52C();
    sub_217D89C3C();
    v120[6] = v129;
    *v121 = v130[0];
    *&v121[15] = *(v130 + 15);
    v120[2] = v125;
    v120[3] = v126;
    v120[5] = v128;
    v120[4] = v127;
    v120[0] = v123;
    v120[1] = v124;
    sub_217AE4A44(v120, &qword_2811C7DB8, &type metadata for ArticleData);
    v20 = (v3 + v10[7]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    *&v107 = *v20;
    *(&v107 + 1) = v21;
    *&v108 = v22;
    *(&v108 + 1) = v23;
    *&v109 = v24;
    LOBYTE(v98) = 3;
    sub_217AD86BC(v107, v21, v22, v23, v24);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v107, *(&v107 + 1), v108, *(&v108 + 1), v109);
    v25 = (v3 + v10[8]);
    v26 = v25[1];
    v27 = v25[2];
    v117 = *v25;
    v118 = v26;
    v119 = v27;
    v116 = 4;
    sub_217AD1A68(v117, v26, v27);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v117, v118, v119);
    v28 = (v3 + v10[9]);
    v29 = v28[5];
    v30 = v28[7];
    v113 = v28[6];
    v114 = v30;
    v31 = v28[7];
    v115 = v28[8];
    v32 = v28[1];
    v33 = v28[3];
    v109 = v28[2];
    v110 = v33;
    v34 = v28[3];
    v35 = v28[5];
    v111 = v28[4];
    v112 = v35;
    v36 = v28[1];
    v107 = *v28;
    v108 = v36;
    v104 = v113;
    v105 = v31;
    v106 = v28[8];
    v100 = v109;
    v101 = v34;
    v102 = v111;
    v103 = v29;
    v98 = v107;
    v99 = v32;
    v97 = 5;
    sub_217AE38AC(&v107, v96, &qword_2811BD178, &type metadata for GroupData);
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
    sub_217AE4A44(v96, &qword_2811BD178, &type metadata for GroupData);
    LOWORD(v82[0]) = *(v3 + v10[10]);
    LOBYTE(v75) = 6;
    sub_217B1DEE8();
    sub_217D89CAC();
    v37 = (v3 + v10[11]);
    v38 = v37[1];
    v39 = v37[2];
    v40 = v37[3];
    *&v82[0] = *v37;
    *(&v82[0] + 1) = v38;
    *&v82[1] = v39;
    *(&v82[1] + 1) = v40;
    LOBYTE(v75) = 7;
    sub_217AE39D0(*&v82[0], v38, v39, v40);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(*&v82[0], *(&v82[0] + 1), *&v82[1], *(&v82[1] + 1));
    v41 = (v3 + v10[12]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v41) = *(v41 + 16);
    *&v82[0] = v42;
    *(&v82[0] + 1) = v43;
    LOBYTE(v82[1]) = v41;
    LOBYTE(v75) = 8;
    sub_217AFF378();

    sub_217D89CAC();

    v44 = (v3 + v10[13]);
    v45 = v44[1];
    *&v82[0] = *v44;
    *(&v82[0] + 1) = v45;
    LOBYTE(v75) = 9;
    sub_217B1E4A0();

    sub_217D89CAC();

    v46 = v3 + v10[14];
    v47 = *(v46 + 24);
    *&v82[0] = *v46;
    *(v82 + 8) = *(v46 + 8);
    BYTE8(v82[1]) = v47;
    LOBYTE(v75) = 10;
    sub_217B17644();

    sub_217D89C3C();

    v49 = (v3 + v10[15]);
    v50 = *v49;
    v51 = v49[1];
    LOWORD(v49) = *(v49 + 8);
    v93 = v50;
    v94 = v51;
    v95 = v49;
    v92 = 11;
    sub_217A5E790();

    sub_217D89CAC();

    v52 = (v3 + v10[16]);
    v53 = v52[1];
    v90[0] = *v52;
    v90[1] = v53;
    v55 = *v52;
    v54 = v52[1];
    v90[2] = v52[2];
    v91 = *(v52 + 48);
    v86 = v55;
    v87 = v54;
    v88 = v52[2];
    v89 = *(v52 + 48);
    v85 = 12;
    sub_217ACC004(v90, v82);
    sub_217A55B98();
    sub_217D89CAC();
    v80[0] = v86;
    v80[1] = v87;
    v80[2] = v88;
    v81 = v89;
    sub_217ACC69C(v80);
    v56 = (v3 + v10[17]);
    v57 = v56[4];
    v58 = v56[1];
    v59 = v56[2];
    v83 = v56[3];
    v84 = v57;
    v60 = *v56;
    v61 = *v56;
    v82[1] = v56[1];
    v82[2] = v59;
    v82[0] = v60;
    v77 = v59;
    v78 = v83;
    v79 = v56[4];
    v75 = v61;
    v76 = v58;
    v74 = 13;
    sub_217AE38AC(v82, v73, &qword_27CB9F6A0, &type metadata for PuzzleData);
    sub_217AD6D08();
    sub_217D89C3C();
    v73[2] = v77;
    v73[3] = v78;
    v73[4] = v79;
    v73[0] = v75;
    v73[1] = v76;
    sub_217AE4A44(v73, &qword_27CB9F6A0, &type metadata for PuzzleData);
    v67 = *(v3 + v10[18]);
    v72 = 14;
    sub_217AF77A0(v67);
    sub_217CB56FC();
    sub_217D89C3C();
    sub_217AF8158(v67);
    v67 = *(v3 + v10[19]);
    v72 = 15;
    sub_217BDDE84();

    sub_217D89C3C();

    v62 = (v3 + v10[20]);
    v63 = v62[1];
    v64 = v62[2];
    v65 = v62[3];
    v66 = v62[4];
    v67 = *v62;
    v68 = v63;
    v69 = v64;
    v70 = v65;
    v71 = v66;
    v72 = 16;
    sub_217AD86BC(v67, v63, v64, v65, v66);
    sub_217B1F08C();
    sub_217D89C3C();
    sub_217AD96A4(v67, v68, v69, v70, v71);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D2DF0C()
{
  result = qword_27CBA4F28;
  if (!qword_27CBA4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F28);
  }

  return result;
}

void PaywallExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v64 = sub_217D889CC();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D8899C();
  v63 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v66 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D2EF38(0, &qword_27CBA4F30, MEMORY[0x277D844C8]);
  v69 = v6;
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v58 - v7;
  v9 = type metadata accessor for PaywallExposureEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D2DF0C();
  v68 = v8;
  v12 = v104;
  sub_217D89E5C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v65;
    v59 = v9;
    v60 = a1;
    v104 = v11;
    LOBYTE(v95) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v14 = v66;
    sub_217D89BCC();
    v15 = v4;
    v16 = *(v63 + 32);
    v17 = v104;
    v66 = v15;
    v16(v104, v14);
    LOBYTE(v95) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v18 = v13;
    v19 = v64;
    sub_217D89BCC();
    v58[2] = 0;
    v20 = v59;
    (*(v62 + 32))(&v17[v59[5]], v18, v19);
    v86 = 2;
    sub_217ACF4D8();
    sub_217D89B5C();
    v21 = &v17[v20[6]];
    v22 = *v94;
    *(v21 + 6) = v93;
    *(v21 + 7) = v22;
    *(v21 + 127) = *&v94[15];
    v23 = v90;
    *(v21 + 2) = v89;
    *(v21 + 3) = v23;
    v24 = v92;
    *(v21 + 4) = v91;
    *(v21 + 5) = v24;
    v25 = v88;
    *v21 = v87;
    *(v21 + 1) = v25;
    LOBYTE(v75) = 3;
    sub_217AD07F8();
    sub_217D89B5C();
    v26 = v97;
    v27 = &v17[v20[7]];
    v28 = v96;
    *v27 = v95;
    *(v27 + 1) = v28;
    *(v27 + 4) = v26;
    LOBYTE(v75) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v29 = v96;
    v30 = &v17[v20[8]];
    *v30 = v95;
    *(v30 + 2) = v29;
    v85 = 5;
    sub_217A5D308();
    sub_217D89B5C();
    v31 = &v17[v20[9]];
    v32 = v102;
    *(v31 + 6) = v101;
    *(v31 + 7) = v32;
    *(v31 + 8) = v103;
    v33 = v98;
    *(v31 + 2) = v97;
    *(v31 + 3) = v33;
    v34 = v100;
    *(v31 + 4) = v99;
    *(v31 + 5) = v34;
    v35 = v96;
    *v31 = v95;
    *(v31 + 1) = v35;
    LOBYTE(v81) = 6;
    sub_217B1DE94();
    sub_217D89BCC();
    *&v17[v20[10]] = v75;
    LOBYTE(v81) = 7;
    sub_217ACFF40();
    sub_217D89B5C();
    v36 = &v17[v20[11]];
    v37 = v76;
    *v36 = v75;
    *(v36 + 1) = v37;
    LOBYTE(v81) = 8;
    sub_217AFF324();
    sub_217D89BCC();
    v38 = *(&v75 + 1);
    v39 = v76;
    v40 = &v104[v20[12]];
    *v40 = v75;
    *(v40 + 1) = v38;
    v40[16] = v39;
    LOBYTE(v81) = 9;
    sub_217B1E44C();
    sub_217D89BCC();
    v41 = *(&v75 + 1);
    v42 = &v104[v59[13]];
    *v42 = v75;
    *(v42 + 1) = v41;
    LOBYTE(v81) = 10;
    sub_217B175F0();
    sub_217D89B5C();
    v43 = v76;
    v44 = BYTE8(v76);
    v45 = &v104[v59[14]];
    *v45 = v75;
    *(v45 + 2) = v43;
    v45[24] = v44;
    LOBYTE(v81) = 11;
    sub_217A5E738();
    sub_217D89BCC();
    v46 = *(&v75 + 1);
    v47 = v76;
    v48 = &v104[v59[15]];
    *v48 = v75;
    *(v48 + 1) = v46;
    *(v48 + 8) = v47;
    v80 = 12;
    sub_217A54D08();
    sub_217D89BCC();
    v49 = &v104[v59[16]];
    v50 = v82;
    *v49 = v81;
    *(v49 + 1) = v50;
    *(v49 + 2) = v83;
    v49[48] = v84;
    v74 = 13;
    sub_217AD6CB4();
    sub_217D89B5C();
    v51 = &v104[v59[17]];
    v52 = v78;
    *(v51 + 2) = v77;
    *(v51 + 3) = v52;
    *(v51 + 4) = v79;
    v53 = v76;
    *v51 = v75;
    *(v51 + 1) = v53;
    v73 = 14;
    sub_217CB56A4();
    sub_217D89B5C();
    *&v104[v59[18]] = v70;
    v73 = 15;
    sub_217BDDE2C();
    sub_217D89B5C();
    *&v104[v59[19]] = v70;
    v73 = 16;
    sub_217B1F038();
    sub_217D89B5C();
    (*(v67 + 8))(v68, v69);
    v54 = v72;
    v55 = v104;
    v56 = &v104[v59[20]];
    v57 = v71;
    *v56 = v70;
    *(v56 + 1) = v57;
    *(v56 + 4) = v54;
    sub_217D2EF9C(v55, v61);
    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_217D2F000(v55);
  }
}

void sub_217D2EF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D2DF0C();
    v7 = a3(a1, &type metadata for PaywallExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D2EF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D2F000(uint64_t a1)
{
  v2 = type metadata accessor for PaywallExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D2F134@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v26 - 8) + 104))(a2 + v25, v9, v26);
  v27 = a1[15];
  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v32 - 8) + 104))(a2 + v31, v9, v32);
  v33 = a1[18];
  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC, &type metadata for ExposedPaywallContentData);
  (*(*(v34 - 8) + 104))(a2 + v33, v9, v34);
  v35 = a1[19];
  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  (*(*(v36 - 8) + 104))(a2 + v35, v9, v36);
  v37 = a1[20];
  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v39 = *(*(v38 - 8) + 104);

  return v39(a2 + v37, v9, v38);
}

void sub_217D2F938(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217D2BEC0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217D2BEC0(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217D2BEC0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217D2BEC0(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217D2BEC0(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
              if (v7 <= 0x3F)
              {
                sub_217D2BEC0(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                if (v8 <= 0x3F)
                {
                  sub_217D2BEC0(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
                  if (v9 <= 0x3F)
                  {
                    sub_217D2BEC0(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
                    if (v10 <= 0x3F)
                    {
                      sub_217D2BEC0(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
                      if (v11 <= 0x3F)
                      {
                        sub_217D2BEC0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                        if (v12 <= 0x3F)
                        {
                          sub_217D2BEC0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                          if (v13 <= 0x3F)
                          {
                            sub_217D2BEC0(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
                            if (v14 <= 0x3F)
                            {
                              sub_217D2BEC0(319, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC, &type metadata for ExposedPaywallContentData);
                              if (v15 <= 0x3F)
                              {
                                sub_217D2BEC0(319, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
                                if (v16 <= 0x3F)
                                {
                                  sub_217D2BEC0(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
                                  if (v17 <= 0x3F)
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

void sub_217D2FE98(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C7C80, &type metadata for SectionData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_27CB9F6A0, &type metadata for PuzzleData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_27CBA4F38, &type metadata for ExposedPaywallContentData);
                    if (v10 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811C2F08, &type metadata for PurchaseOffersData);
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

uint64_t getEnumTagSinglePayload for PaywallExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaywallExposureEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217D3023C()
{
  result = qword_27CBA4F40;
  if (!qword_27CBA4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F40);
  }

  return result;
}

unint64_t sub_217D30294()
{
  result = qword_27CBA4F48;
  if (!qword_27CBA4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F48);
  }

  return result;
}

unint64_t sub_217D302EC()
{
  result = qword_27CBA4F50;
  if (!qword_27CBA4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F50);
  }

  return result;
}

uint64_t sub_217D30340(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DD2DC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1600 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
  {

    return 16;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_217D308F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x436465766F6D6572 && a2 == 0xEC000000746E756FLL)
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

uint64_t sub_217D30984(uint64_t a1)
{
  v2 = sub_217D30B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D309C0(uint64_t a1)
{
  v2 = sub_217D30B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsRemoveFavoritesSyncData.encode(to:)(void *a1)
{
  sub_217D30D18(0, &qword_27CBA4F58, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D30B44();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D30B44()
{
  result = qword_27CBA4F60;
  if (!qword_27CBA4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F60);
  }

  return result;
}

uint64_t SportsRemoveFavoritesSyncData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217D30D18(0, &qword_27CBA4F68, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D30B44();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D30D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D30B44();
    v7 = a3(a1, &type metadata for SportsRemoveFavoritesSyncData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D30D9C(void *a1)
{
  sub_217D30D18(0, &qword_27CBA4F58, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D30B44();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D30F08()
{
  result = qword_27CBA4F70;
  if (!qword_27CBA4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F70);
  }

  return result;
}

unint64_t sub_217D30F60()
{
  result = qword_27CBA4F78;
  if (!qword_27CBA4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F78);
  }

  return result;
}

unint64_t sub_217D30FB8()
{
  result = qword_27CBA4F80;
  if (!qword_27CBA4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F80);
  }

  return result;
}

NewsAnalytics::AuxiliaryData_optional __swiftcall FormatContent.Resolved.auxiliaryData(itemIdentifier:)(Swift::String itemIdentifier)
{
  v138 = itemIdentifier;
  v118 = v1;
  v127 = sub_217D8939C();
  v2 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_217D8937C();
  v4 = *(v135 - 8);
  v5 = MEMORY[0x28223BE20](v135);
  v134 = (&v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v132 = (&v104 - v7);
  v137 = sub_217D893DC();
  v112 = *(v137 - 8);
  v8 = MEMORY[0x28223BE20](v137);
  v133 = (&v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v131 = (&v104 - v10);
  v11 = sub_217D893BC();
  v121 = *(v11 - 8);
  v122 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v113 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v104 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v104 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v104 - v18;
  v20 = sub_217D8924C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v136 = &v104 - v25;
  v129 = sub_217D892DC();
  v26 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_217D891FC();
  v31 = v29[2];
  if (v31)
  {
    v108 = v4;
    v109 = v19;
    v32 = 0;
    v33 = v29 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v139 = v21 + 16;
    v124 = v2 + 16;
    v123 = v2 + 8;
    v115 = (v26 + 8);
    v130 = v28;
    v125 = v2;
    v107 = v26;
    v114 = v29;
    v106 = v31;
    v105 = v33;
    v104 = v26 + 16;
    while (1)
    {
      if (v32 >= v29[2])
      {
        goto LABEL_56;
      }

      v34 = *(v26 + 72);
      v110 = v32;
      (*(v26 + 16))(v28, &v33[v34 * v32], v129);
      v29 = sub_217D892BC();
      v35 = v29;
      v36 = v29[2];
      if (v36)
      {
        break;
      }

LABEL_11:

      v28 = v130;
      v29 = sub_217D892CC();
      v117 = v29[2];
      if (v117)
      {
        v43 = 0;
        v44 = v125;
        v120 = v29 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
        v119 = v29;
        while (v43 < v29[2])
        {
          v45 = *(v44 + 72);
          v128 = v43;
          v46 = &v120[v45 * v43];
          v47 = v126;
          v48 = v127;
          (*(v44 + 16))(v126, v46, v127);
          v49 = sub_217D8938C();
          v29 = (*(v44 + 8))(v47, v48);
          v50 = *(v49 + 16);
          if (v50)
          {
            v51 = 0;
            v52 = v49 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
            while (1)
            {
              if (v51 >= *(v49 + 16))
              {
                __break(1u);
                goto LABEL_54;
              }

              (*(v21 + 16))(v24, v52 + *(v21 + 72) * v51, v20);
              v53 = sub_217D8923C();
              (*(v21 + 8))(v24, v20);
              if (*(v53 + 16))
              {
                v54 = sub_217C2E9BC(v138._countAndFlagsBits, v138._object);
                if (v55)
                {
                  break;
                }
              }

              ++v51;

              if (v50 == v51)
              {
                goto LABEL_13;
              }
            }

            v58 = v54;

            v60 = v121;
            v59 = v122;
            v61 = v113;
            (*(v121 + 16))(v113, *(v53 + 56) + *(v121 + 72) * v58, v122);

            (*(v60 + 32))(v116, v61, v59);
            v62 = sub_217D893AC();
            v63 = *(v62 + 16);
            if (v63)
            {
              v64 = *(v112 + 16);
              v65 = (*(v112 + 80) + 32) & ~*(v112 + 80);
              v128 = v62;
              v66 = v62 + v65;
              v139 = *(v112 + 72);
              v138._object = v108 + 88;
              LODWORD(v138._countAndFlagsBits) = *MEMORY[0x277D34128];
              v67 = (v112 + 8);
              v131 = (v108 + 96);
              v132 = (v108 + 8);
              v57 = MEMORY[0x277D84F90];
              v69 = v134;
              v68 = v135;
              v70 = v137;
              v71 = v133;
              v136 = v64;
              (v64)(v133, v62 + v65, v137);
              while (1)
              {
                sub_217D893CC();
                v72 = (*v138._object)(v69, v68);
                if (v72 == LODWORD(v138._countAndFlagsBits))
                {
                  (*v131)(v69, v68);
                  v73 = [*v69 identifier];
                  v74 = sub_217D8954C();
                  v76 = v75;
                  swift_unknownObjectRelease();

                  (*v67)(v71, v137);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v57 = sub_217B5AD14(0, *(v57 + 2) + 1, 1, v57);
                  }

                  v78 = *(v57 + 2);
                  v77 = *(v57 + 3);
                  if (v78 >= v77 >> 1)
                  {
                    v57 = sub_217B5AD14((v77 > 1), v78 + 1, 1, v57);
                  }

                  *(v57 + 2) = v78 + 1;
                  v79 = &v57[16 * v78];
                  *(v79 + 4) = v74;
                  *(v79 + 5) = v76;
                  v69 = v134;
                  v68 = v135;
                  v64 = v136;
                  v70 = v137;
                  v71 = v133;
                }

                else
                {
                  (*v67)(v71, v70);
                  (*v132)(v69, v68);
                }

                v66 += v139;
                if (!--v63)
                {
                  break;
                }

                (v64)(v71, v66, v70);
              }
            }

            else
            {

              v57 = MEMORY[0x277D84F90];
            }

            (*(v121 + 8))(v116, v122);
            v29 = (*v115)(v130, v129);
            goto LABEL_52;
          }

LABEL_13:
          v43 = v128 + 1;

          v28 = v130;
          v44 = v125;
          v29 = v119;
          if (v43 == v117)
          {
            goto LABEL_22;
          }
        }

LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_22:

      v26 = v107;
      v56 = v110 + 1;
      (*v115)(v28, v129);
      v32 = v56;
      v29 = v114;
      v33 = v105;
      if (v56 == v106)
      {
        goto LABEL_23;
      }
    }

    v37 = 0;
    v38 = v29 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    while (1)
    {
      if (v37 >= v35[2])
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v39 = v136;
      (*(v21 + 16))(v136, &v38[*(v21 + 72) * v37], v20);
      v40 = sub_217D8923C();
      (*(v21 + 8))(v39, v20);
      if (*(v40 + 16))
      {
        v41 = sub_217C2E9BC(v138._countAndFlagsBits, v138._object);
        if (v42)
        {
          break;
        }
      }

      ++v37;

      if (v36 == v37)
      {
        goto LABEL_11;
      }
    }

    v80 = v41;

    v81 = v121;
    v82 = *(v40 + 56) + *(v121 + 72) * v80;
    v83 = v111;
    v84 = v122;
    (*(v121 + 16))(v111, v82, v122);

    (*(v81 + 32))(v109, v83, v84);
    v85 = sub_217D893AC();
    v86 = *(v85 + 16);
    if (v86)
    {
      v87 = *(v112 + 16);
      v88 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v128 = v85;
      v89 = v85 + v88;
      v139 = *(v112 + 72);
      v138._object = v108 + 88;
      LODWORD(v138._countAndFlagsBits) = *MEMORY[0x277D34128];
      v90 = (v112 + 8);
      v133 = (v108 + 96);
      v134 = (v108 + 8);
      v57 = MEMORY[0x277D84F90];
      v91 = v135;
      v92 = v137;
      v93 = v131;
      v94 = v132;
      v136 = v87;
      (v87)(v131, v85 + v88, v137);
      while (1)
      {
        sub_217D893CC();
        v95 = (*v138._object)(v94, v91);
        if (v95 == LODWORD(v138._countAndFlagsBits))
        {
          (*v133)(v94, v91);
          v96 = [*v94 identifier];
          v97 = sub_217D8954C();
          v99 = v98;
          swift_unknownObjectRelease();

          (*v90)(v93, v137);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_217B5AD14(0, *(v57 + 2) + 1, 1, v57);
          }

          v101 = *(v57 + 2);
          v100 = *(v57 + 3);
          if (v101 >= v100 >> 1)
          {
            v57 = sub_217B5AD14((v100 > 1), v101 + 1, 1, v57);
          }

          *(v57 + 2) = v101 + 1;
          v102 = &v57[16 * v101];
          *(v102 + 4) = v97;
          *(v102 + 5) = v99;
          v91 = v135;
          v87 = v136;
          v92 = v137;
          v93 = v131;
          v94 = v132;
        }

        else
        {
          (*v90)(v93, v92);
          (*v134)(v94, v91);
        }

        v89 += v139;
        if (!--v86)
        {
          break;
        }

        (v87)(v93, v89, v92);
      }
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    v103 = v130;
    (*(v121 + 8))(v109, v122);
    v29 = (*v115)(v103, v129);
  }

  else
  {
LABEL_23:

    v57 = 0;
  }

LABEL_52:
  *v118 = v57;
LABEL_57:
  result.value.articleIDs._rawValue = v29;
  result.is_nil = v30;
  return result;
}

char *FormatContent.Resolved.groupedAuxiliaryData.getter@<X0>(char **a1@<X8>)
{
  v152 = a1;
  v154 = sub_217D8939C();
  v156 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = &v138 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_217D8937C();
  v198 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v138 - v6);
  v197 = sub_217D893DC();
  v8 = *(v197 - 8);
  v9 = MEMORY[0x28223BE20](v197);
  v186 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v192 = &v138 - v11;
  v12 = sub_217D893BC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v178 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v183 = &v138 - v17;
  MEMORY[0x28223BE20](v16);
  v180 = &v138 - v18;
  sub_217D32F44(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v170 = (&v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v138 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v168 = &v138 - v26;
  MEMORY[0x28223BE20](v25);
  v174 = &v138 - v27;
  v166 = sub_217D8924C();
  v28 = *(v166 - 8);
  v29 = MEMORY[0x28223BE20](v166);
  v158 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v162 = &v138 - v31;
  v155 = sub_217D892DC();
  v32 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v157 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_217D891FC();
  v35 = *(result + 2);
  if (v35)
  {
    v36 = 0;
    v37 = &result[(*(v32 + 80) + 32) & ~*(v32 + 80)];
    v164 = v28 + 16;
    v165 = v28;
    v163 = v28 + 8;
    v179 = v13 + 16;
    v185 = (v13 + 32);
    v196 = v8 + 16;
    v195 = (v8 + 8);
    v194 = v198 + 88;
    v193 = *MEMORY[0x277D34128];
    v188 = v198 + 8;
    v187 = v198 + 96;
    v181 = (v13 + 8);
    v151 = v156 + 16;
    v150 = v156 + 8;
    v142 = (v32 + 8);
    v198 = MEMORY[0x277D84F90];
    v190 = v5;
    v191 = v2;
    v189 = v7;
    v175 = v12;
    v182 = v13;
    v169 = v24;
    v38 = v168;
    v176 = v8;
    v147 = v32;
    v146 = result;
    v145 = v35;
    v144 = v37;
    v143 = v32 + 16;
    while (1)
    {
      if (v36 >= *(result + 2))
      {
        goto LABEL_88;
      }

      v39 = *(v32 + 72);
      v149 = v36;
      (*(v32 + 16))(v157, &v37[v39 * v36], v155);
      result = sub_217D892BC();
      v160 = *(result + 2);
      if (v160)
      {
        v40 = 0;
        v41 = v165;
        v161 = &result[(*(v41 + 80) + 32) & ~*(v41 + 80)];
        v159 = result;
        while (2)
        {
          if (v40 >= *(result + 2))
          {
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v42 = v162;
          v43 = v166;
          (*(v41 + 16))(v162, &v161[*(v41 + 72) * v40], v166);
          v167 = v40 + 1;
          v44 = sub_217D8923C();
          result = (*(v41 + 8))(v42, v43);
          v45 = 0;
          v47 = v44 + 64;
          v46 = *(v44 + 64);
          v171 = v44;
          v48 = 1 << *(v44 + 32);
          v49 = v48 < 64 ? ~(-1 << v48) : -1;
          v50 = v49 & v46;
          v51 = (v48 + 63) >> 6;
          v52 = v182;
          v173 = v44 + 64;
          v172 = v51;
          while (1)
          {
            if (!v50)
            {
              if (v51 <= v45 + 1)
              {
                v54 = v45 + 1;
              }

              else
              {
                v54 = v51;
              }

              v55 = v54 - 1;
              while (1)
              {
                v53 = v45 + 1;
                if (__OFADD__(v45, 1))
                {
                  break;
                }

                if (v53 >= v51)
                {
                  sub_217D32F9C(0);
                  v63 = v84;
                  (*(*(v84 - 8) + 56))(v38, 1, 1, v84);
                  v184 = 0;
                  v45 = v55;
                  goto LABEL_25;
                }

                v50 = *(v47 + 8 * v53);
                ++v45;
                if (v50)
                {
                  v45 = v53;
                  goto LABEL_24;
                }
              }

              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v53 = v45;
LABEL_24:
            v184 = (v50 - 1) & v50;
            v56 = __clz(__rbit64(v50)) | (v53 << 6);
            v57 = (*(v171 + 48) + 16 * v56);
            v59 = *v57;
            v58 = v57[1];
            v60 = v180;
            (*(v52 + 16))(v180, *(v171 + 56) + *(v52 + 72) * v56, v12);
            sub_217D32F9C(0);
            v61 = v52;
            v63 = v62;
            v64 = *(v62 + 48);
            *v38 = v59;
            *(v38 + 1) = v58;
            (*(v61 + 32))(&v38[v64], v60, v12);
            (*(*(v63 - 8) + 56))(v38, 0, 1, v63);

LABEL_25:
            v65 = v174;
            sub_217D33008(v38, v174);
            sub_217D32F9C(0);
            if ((*(*(v63 - 8) + 48))(v65, 1, v63) == 1)
            {
              break;
            }

            (*v185)(v183, v65 + *(v63 + 48), v12);
            v66 = sub_217D893AC();
            v67 = *(v66 + 16);
            if (v67)
            {
              v68 = (*(v176 + 80) + 32) & ~*(v176 + 80);
              v177 = v66;
              v69 = v66 + v68;
              v70 = *(v176 + 72);
              v71 = *(v176 + 16);
              do
              {
                v72 = v192;
                v73 = v197;
                v71(v192, v69, v197);
                sub_217D893CC();
                (*v195)(v72, v73);
                v74 = (*v194)(v7, v2);
                if (v74 == v193)
                {
                  (*v187)(v7, v2);
                  v75 = [*v7 identifier];
                  v76 = sub_217D8954C();
                  v78 = v77;

                  v79 = v198;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v79 = sub_217B5AD14(0, *(v79 + 2) + 1, 1, v79);
                  }

                  v81 = *(v79 + 2);
                  v80 = *(v79 + 3);
                  v198 = v79;
                  if (v81 >= v80 >> 1)
                  {
                    v198 = sub_217B5AD14((v80 > 1), v81 + 1, 1, v198);
                  }

                  swift_unknownObjectRelease();
                  v82 = v198;
                  *(v198 + 2) = v81 + 1;
                  v83 = &v82[16 * v81];
                  *(v83 + 4) = v76;
                  *(v83 + 5) = v78;
                  v5 = v190;
                  v2 = v191;
                  v7 = v189;
                }

                else
                {
                  (*v188)(v7, v2);
                }

                v69 += v70;
                --v67;
              }

              while (v67);

              v12 = v175;
              v52 = v182;
              v38 = v168;
            }

            else
            {

              v52 = v182;
            }

            result = (*v181)(v183, v12);
            v47 = v173;
            v51 = v172;
            v50 = v184;
          }

          v40 = v167;
          v41 = v165;
          result = v159;
          if (v167 != v160)
          {
            continue;
          }

          break;
        }
      }

      else
      {

        v41 = v165;
      }

      result = sub_217D892CC();
      v140 = *(result + 2);
      if (v140)
      {
        break;
      }

LABEL_78:

      v137 = v149 + 1;
      (*v142)(v157, v155);
      v36 = v137;
      v32 = v147;
      result = v146;
      v37 = v144;
      if (v137 == v145)
      {

        result = v198;
        goto LABEL_81;
      }
    }

    v85 = 0;
    v86 = v156;
    v141 = &result[(*(v86 + 80) + 32) & ~*(v86 + 80)];
    v139 = result;
    while (v85 < *(result + 2))
    {
      v87 = *(v86 + 72);
      v148 = v85;
      v88 = v153;
      v89 = v154;
      v90 = v86;
      (*(v86 + 16))(v153, &v141[v87 * v85], v154);
      v91 = sub_217D8938C();
      result = (*(v90 + 8))(v88, v89);
      v160 = *(v91 + 16);
      if (v160)
      {
        v92 = 0;
        v161 = (v91 + ((*(v41 + 80) + 32) & ~*(v41 + 80)));
        v159 = v91;
        while (v92 < *(v91 + 16))
        {
          v93 = v158;
          v94 = v166;
          (*(v41 + 16))(v158, &v161[*(v41 + 72) * v92], v166);
          v167 = v92 + 1;
          v95 = sub_217D8923C();
          result = (*(v41 + 8))(v93, v94);
          v96 = 0;
          v98 = v95 + 64;
          v97 = *(v95 + 64);
          v171 = v95;
          v99 = 1 << *(v95 + 32);
          if (v99 < 64)
          {
            v100 = ~(-1 << v99);
          }

          else
          {
            v100 = -1;
          }

          v101 = v100 & v97;
          v102 = (v99 + 63) >> 6;
          v103 = v182;
          v173 = v95 + 64;
          v172 = v102;
          while (1)
          {
            if (!v101)
            {
              if (v102 <= v96 + 1)
              {
                v105 = v96 + 1;
              }

              else
              {
                v105 = v102;
              }

              v106 = v105 - 1;
              while (1)
              {
                v104 = v96 + 1;
                if (__OFADD__(v96, 1))
                {
                  goto LABEL_85;
                }

                if (v104 >= v102)
                {
                  sub_217D32F9C(0);
                  v114 = v136;
                  v116 = v170;
                  (*(*(v136 - 8) + 56))(v170, 1, 1, v136);
                  v184 = 0;
                  v96 = v106;
                  goto LABEL_65;
                }

                v101 = *(v98 + 8 * v104);
                ++v96;
                if (v101)
                {
                  v96 = v104;
                  goto LABEL_64;
                }
              }
            }

            v104 = v96;
LABEL_64:
            v184 = (v101 - 1) & v101;
            v107 = __clz(__rbit64(v101)) | (v104 << 6);
            v108 = (*(v171 + 48) + 16 * v107);
            v110 = *v108;
            v109 = v108[1];
            v111 = v180;
            (*(v103 + 16))(v180, *(v171 + 56) + *(v103 + 72) * v107, v12);
            sub_217D32F9C(0);
            v112 = v103;
            v114 = v113;
            v115 = *(v113 + 48);
            v116 = v170;
            *v170 = v110;
            *(v116 + 8) = v109;
            (*(v112 + 32))(v116 + v115, v111, v12);
            (*(*(v114 - 8) + 56))(v116, 0, 1, v114);

LABEL_65:
            v117 = v169;
            sub_217D33008(v116, v169);
            sub_217D32F9C(0);
            if ((*(*(v114 - 8) + 48))(v117, 1, v114) == 1)
            {
              break;
            }

            (*v185)(v178, v117 + *(v114 + 48), v12);
            v118 = sub_217D893AC();
            v119 = *(v118 + 16);
            if (v119)
            {
              v120 = (*(v176 + 80) + 32) & ~*(v176 + 80);
              v177 = v118;
              v121 = v118 + v120;
              v122 = *(v176 + 72);
              v123 = *(v176 + 16);
              do
              {
                v124 = v186;
                v125 = v197;
                v123(v186, v121, v197);
                sub_217D893CC();
                (*v195)(v124, v125);
                v126 = (*v194)(v5, v2);
                if (v126 == v193)
                {
                  (*v187)(v5, v2);
                  v127 = [*v5 identifier];
                  v128 = sub_217D8954C();
                  v130 = v129;

                  v131 = v198;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v131 = sub_217B5AD14(0, *(v131 + 2) + 1, 1, v131);
                  }

                  v133 = *(v131 + 2);
                  v132 = *(v131 + 3);
                  v198 = v131;
                  if (v133 >= v132 >> 1)
                  {
                    v198 = sub_217B5AD14((v132 > 1), v133 + 1, 1, v198);
                  }

                  swift_unknownObjectRelease();
                  v134 = v198;
                  *(v198 + 2) = v133 + 1;
                  v135 = &v134[16 * v133];
                  *(v135 + 4) = v128;
                  *(v135 + 5) = v130;
                  v5 = v190;
                  v2 = v191;
                  v7 = v189;
                }

                else
                {
                  (*v188)(v5, v2);
                }

                v121 += v122;
                --v119;
              }

              while (v119);

              v12 = v175;
            }

            else
            {
            }

            v103 = v182;
            result = (*v181)(v178, v12);
            v98 = v173;
            v102 = v172;
            v101 = v184;
          }

          v92 = v167;
          v38 = v168;
          v41 = v165;
          v91 = v159;
          if (v167 == v160)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_87;
      }

LABEL_42:

      v85 = v148 + 1;
      v86 = v156;
      result = v139;
      if (v148 + 1 == v140)
      {
        goto LABEL_78;
      }
    }

LABEL_89:
    __break(1u);
  }

  else
  {

    result = MEMORY[0x277D84F90];
LABEL_81:
    if (!*(result + 2))
    {

      result = 0;
    }

    *v152 = result;
  }

  return result;
}